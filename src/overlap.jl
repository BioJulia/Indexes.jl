# Tabix Overlap Iterator
# ======================

struct TabixOverlapIterator{T}
    reader::T
    interval::Interval
end

function Base.eltype(::Type{TabixOverlapIterator{T}}) where T
    return eltype(T)
end

function Base.IteratorSize(::Type{TabixOverlapIterator{T}}) where T
    return Base.SizeUnknown()
end

mutable struct TabixOverlapIteratorState{T}
    chunks::Vector{Indexes.Chunk}
    chunkid::Int
    done::Bool
    record::T
end

function Base.iterate(iter::TabixOverlapIterator)
    @assert iter.reader.index !== nothing
    # TODO: Use a method that resets the reading position.
    buffer = BioGenerics.IO.stream(iter.reader)
    iter.reader.state = BioGenerics.Automa.State(TranscodingStreams.NoopStream(buffer.stream), 1, 1, false)
    state = TabixOverlapIteratorState(Indexes.overlapchunks(iter.reader.index, iter.interval), 0, false, eltype(iter)())

    return iterate(iter, state)
end

function done(iter::TabixOverlapIterator, state)
    buffer = BioGenerics.IO.stream(iter.reader)
    source = buffer.stream
    if state.chunkid == 0
        if isempty(state.chunks)
            return true
        end
        state.chunkid += 1
        seek(source, state.chunks[state.chunkid].start)
    end
    while state.chunkid ≤ lastindex(state.chunks)
        chunk = state.chunks[state.chunkid]
        #=
        The `virtualoffset(source)` is not synchronized with the current reading position because data are buffered in `buffer` for parsing text.
        So we need to check not only `virtualoffset` but also `nb_available`, which returns the current buffered data size.
        =#
        while bytesavailable(buffer) > 0 || CodecBGZF.VirtualOffset(source) < chunk.stop
            read!(iter.reader, state.record)
            c = icmp(state.record, iter.interval)
            if c == 0  # overlapping
                return false
            end
            if c > 0
                # no more overlapping records in this chunk
                break
            end
        end
        state.chunkid += 1
        if state.chunkid ≤ lastindex(state.chunks)
            seek(source, state.chunks[state.chunkid].start)
        end
    end
    # no more overlapping records
    return true
end

function Base.iterate(iter::TabixOverlapIterator, state)
    if done(iter, state)
        return nothing
    end

    return copy(state.record), state
end

function icmp(record, interval)
    c = cmp(BioGenerics.seqname(record), BioGenerics.seqname(interval))

    if c < 0 || (c == 0 && BioGenerics.rightposition(record) < BioGenerics.leftposition(interval))
        return -1
    end

    if c > 0 || (c == 0 && BioGenerics.leftposition(record) > BioGenerics.rightposition(interval))
        return +1
    end

    return 0
end
