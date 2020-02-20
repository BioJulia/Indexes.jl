using Pkg
using Documenter, Indexes

makedocs(
    format = Documenter.HTML(
        edit_link = "develop"
    ),
    modules = [Indexes],
    sitename = "Indexes.jl",
    pages = [
        "Home" => "index.md",
        "API Reference" => "man/api.md"
    ],
    authors = replace(join(Pkg.TOML.parsefile("Project.toml")["authors"], ", "), r" <.*?>" => "" ) * ", The BioJulia Organisation, and other contributors."
)
deploydocs(
    repo = "github.com/BioJulia/Indexes.jl.git",
    devbranch = "develop",
    push_preview = true
)
