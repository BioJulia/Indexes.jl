using Test
using Indexes
using FormatSpecimens


@testset "Indexes" begin

@testset "Tabix" begin

    # BAI
    path = joinpath(path_of_format("BAM"), "GSE25840_GSM424320_GM06985_gencode_spliced.head.bam.bai")
    path = joinpath(path_of_format("BAM"), "R_12h_D06.uniq.q40.bam.bai")
    path = joinpath(path_of_format("BAM"), "cigar-64k.bam.bai")

    # TBI
    path = joinpath(path_of_format("BED"), "ws245Genes.WBGene.bed.bgz.tbi")
    path = joinpath(path_of_format("GFF3"), "TAIR10.part.gff.bgz.tbi")

    @info path

    open(path) do io

        input = Indexes.CodecBGZF.BGZFDecompressorStream(io)
        @info input

        seekstart(input)

        # check magic bytes
        T = read(input, UInt8)
        @info T

        B = read(input, UInt8)
        @info B

        I = read(input, UInt8)
        @info I

        x = read(input, UInt8)
        @info x

    end

    index = Indexes.Tabix(path)

end

@testset "BGZF" begin

# #
# Indexes.reg2bin(-1, 0)
#
# # The BAI index format for BAM files
#
# goodfiles = filter(entry-> hastag(entry, "bai"), list_valid_specimens("BAM"))
#
# entry = goodfiles[1]
#
# # Get the full path of a file in the entry:
# path_bam = joinpath(path_of_format("BAM"), filename(entry))
# path_bai = path_bam * ".bai"
#
# stream = open(path_bai)
#
# # Read magic bytes
# str = read(stream, 4)
#
# # read contents
# n_refs = read(stream, Int32)
#
#
# indexes = Indexes.read_bgzfindex(stream, n_refs)

end

end
