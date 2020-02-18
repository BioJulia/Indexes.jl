var documenterSearchIndex = {"docs":
[{"location":"#Indexes.jl-1","page":"Home","title":"Indexes.jl","text":"","category":"section"},{"location":"#Installation-1","page":"Home","title":"Installation","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"You can install Indexes from the Julia REPL:","category":"page"},{"location":"#","page":"Home","title":"Home","text":"julia> Pkg.add(\"Indexes\")","category":"page"},{"location":"#","page":"Home","title":"Home","text":"If you are interested in the cutting edge of the development, please check out the master branch to try new features before release.","category":"page"},{"location":"lib/public/#API-Reference-1","page":"API Reference","title":"API Reference","text":"","category":"section"},{"location":"lib/public/#","page":"API Reference","title":"API Reference","text":"Pages = [\"public.md\"]","category":"page"},{"location":"lib/public/#","page":"API Reference","title":"API Reference","text":"Modules = [Indexes]\nprivate = false","category":"page"},{"location":"lib/public/#Indexes.Tabix-Tuple{AbstractString}","page":"API Reference","title":"Indexes.Tabix","text":"Tabix(filename::AbstractString)\nTabix(input::IO)\n\nLoad a Tabix index from filename or input.\n\n\n\n\n\n","category":"method"},{"location":"lib/public/#Indexes.overlapchunks-Tuple{Indexes.Tabix,GenomicFeatures.Interval}","page":"API Reference","title":"Indexes.overlapchunks","text":"overlapchunks(tabix::Tabix, interval::Interval)\n\nReturn chunks possibly overlapping with the range specified by interval.\n\nNote that records within the returned chunks are not guaranteed to actually overlap the query interval.\n\n\n\n\n\n","category":"method"}]
}