# Index
# =====
#
# Index types for genomic intervals.
#
# This file is a part of BioJulia.
# License is MIT: https://github.com/BioJulia/Bio.jl/blob/master/LICENSE.md

module Indexes

using TranscodingStreams

import BGZFStreams
import BioGenerics
import GenomicFeatures: Interval

function Base.bytesavailable(stream::BGZFStreams.BGZFStream{IOStream})

    block_index = BGZFStreams.ensure_buffered_data(stream)
    if block_index == 0
        return 0
    end
    block = stream.blocks[block_index]

    return length(block.position:block.size)

end

include("chunk.jl")
include("bgzfindex.jl")
include("tabix.jl")
include("overlap.jl")

end # module
