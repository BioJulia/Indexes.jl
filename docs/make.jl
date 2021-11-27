using Pkg
using Documenter, Indexes

DocMeta.setdocmeta!(Indexes, :DocTestSetup, :(using Indexes); recursive=true)

makedocs(
    format = Documenter.HTML(
        edit_link = "develop"
    ),
    modules = [Indexes],
    checkdocs = :all,
    linkcheck = true,
    sitename = "Indexes.jl",
    authors = replace(join(Pkg.TOML.parsefile("Project.toml")["authors"], ", "), r" <.*?>" => "" ) * ", The BioJulia Organisation, and other contributors.",
    pages = [
        "Home" => "index.md",
        "API Reference" => "man/api.md"
    ],
)
deploydocs(
    repo = "github.com/BioJulia/Indexes.jl.git",
    devbranch = "develop",
    push_preview = true
)
