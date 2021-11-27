var documenterSearchIndex = {"docs":
[{"location":"#Indexes.jl-1","page":"Home","title":"Indexes.jl","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"(Image: Project Status: Active – The project has reached a stable, usable state and is being actively developed.) (Image: Latest Release) (Image: MIT license) (Image: Stable documentation) (Image: Latest documentation)","category":"page"},{"location":"#","page":"Home","title":"Home","text":"This project follows the semver pro forma and uses the git-flow branching model.","category":"page"},{"location":"#Description-1","page":"Home","title":"Description","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"Handles indexes required to iterate through various IO streams. For example:","category":"page"},{"location":"#","page":"Home","title":"Home","text":"Generic index for tab-delimited files.\nAn index type for BGZFStream.","category":"page"},{"location":"#Installation-1","page":"Home","title":"Installation","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"The Indexes package is bundled into packages like BED, GFF3, and XAM to assist them with IO streams, so you may not need to install this package explicitly. However, if you do, Indexes is made available to install through the https://github.com/juliaregistries/General.","category":"page"},{"location":"#","page":"Home","title":"Home","text":"You can install Indexes from the Julia REPL. Press ] to enter pkg mode, then enter the following command:","category":"page"},{"location":"#","page":"Home","title":"Home","text":"add Indexes","category":"page"},{"location":"#","page":"Home","title":"Home","text":"If you are interested in the cutting edge of the development, please check out the develop branch to try new features before release.","category":"page"},{"location":"#Testing-1","page":"Home","title":"Testing","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"Indexes is tested against Julia 1.X on Linux, OS X, and Windows.","category":"page"},{"location":"#","page":"Home","title":"Home","text":"Latest build status:","category":"page"},{"location":"#","page":"Home","title":"Home","text":"(Image: Unit Tests) (Image: Documentation) (Image: Build Documentation) (Image: codecov)","category":"page"},{"location":"#Contributing-1","page":"Home","title":"Contributing","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"We appreciate contributions from users including reporting bugs, fixing issues, improving performance and adding new features.","category":"page"},{"location":"#","page":"Home","title":"Home","text":"Take a look at the contributing files detailed contributor and maintainer guidelines, and code of conduct.","category":"page"},{"location":"#Financial-contributions-1","page":"Home","title":"Financial contributions","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"We also welcome financial contributions in full transparency on our open collective. Anyone can file an expense. If the expense makes sense for the development the core contributors and the person who filed the expense will be reimbursed.","category":"page"},{"location":"#Backers-and-Sponsors-1","page":"Home","title":"Backers & Sponsors","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"Thank you to all our backers and sponsors!","category":"page"},{"location":"#","page":"Home","title":"Home","text":"Love our work and community? Become a backer.","category":"page"},{"location":"#","page":"Home","title":"Home","text":"(Image: backers)","category":"page"},{"location":"#","page":"Home","title":"Home","text":"Does your company use BioJulia? Help keep BioJulia feature rich and healthy by sponsoring the project. Your logo will show up here with a link to your website.","category":"page"},{"location":"#","page":"Home","title":"Home","text":"(Image: ) (Image: ) (Image: ) (Image: ) (Image: ) (Image: ) (Image: ) (Image: ) (Image: ) (Image: )","category":"page"},{"location":"#Questions?-1","page":"Home","title":"Questions?","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"If you have a question about contributing or using BioJulia software, come on over and chat to us on the Julia Slack workspace, or you can try the Bio category of the Julia discourse site.","category":"page"},{"location":"man/api/#API-Reference-1","page":"API Reference","title":"API Reference","text":"","category":"section"},{"location":"man/api/#Public-1","page":"API Reference","title":"Public","text":"","category":"section"},{"location":"man/api/#","page":"API Reference","title":"API Reference","text":"Modules = [Indexes]\nprivate = false","category":"page"},{"location":"man/api/#Indexes.Tabix-Tuple{AbstractString}","page":"API Reference","title":"Indexes.Tabix","text":"Tabix(filename::AbstractString)\nTabix(input::IO)\n\nLoad a Tabix index from filename or input.\n\n\n\n\n\n","category":"method"},{"location":"man/api/#Indexes.overlapchunks-Tuple{Indexes.Tabix, GenomicFeatures.Interval}","page":"API Reference","title":"Indexes.overlapchunks","text":"overlapchunks(tabix::Tabix, interval::Interval)\n\nReturn chunks possibly overlapping with the range specified by interval.\n\nNote that records within the returned chunks are not guaranteed to actually overlap the query interval.\n\n\n\n\n\n","category":"method"},{"location":"man/api/#Internal-1","page":"API Reference","title":"Internal","text":"","category":"section"},{"location":"man/api/#","page":"API Reference","title":"API Reference","text":"Modules = [Indexes]\npublic = false","category":"page"}]
}
