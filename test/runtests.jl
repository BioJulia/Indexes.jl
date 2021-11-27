using Test
using Documenter

using Indexes

@testset "Indexes" begin
    # TODO
    # @test GenomicFeatures.Indexes.Tabix === GenomicFeatures.Indexes.Tabix


# Include doctests.
DocMeta.setdocmeta!(Indexes, :DocTestSetup, :(using Indexes); recursive=true)
doctest(Indexes; manual = false)

end