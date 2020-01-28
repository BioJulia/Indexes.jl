# Indexes.jl

[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Latest Release](https://img.shields.io/github/release/BioJulia/Indexes.jl.svg)](https://github.com/BioJulia/Indexes.jl/releases/latest)
[![MIT license](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/BioJulia/Indexes.jl/blob/master/LICENSE)
[![Stable documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://biojulia.github.io/Indexes.jl/stable)
[![Latest documentation](https://img.shields.io/badge/docs-latest-blue.svg)](https://biojulia.github.io/Indexes.jl/dev/)
[![Join the chat at https://gitter.im/BioJulia/Indexes.jl](https://badges.gitter.im/BioJulia/Indexes.jl.svg)](https://gitter.im/BioJulia/Indexes.jl?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

> This project follows the [semver](http://semver.org) pro forma and uses the [git-flow branching model](https://nvie.com/posts/a-successful-git-branching-model/ "original
blog post").

## Description
Handles indexes required to iterate through various IO streams.
For example:
- Generic index for tab-delimited files.
- An index type for BGZFStream.

## Installation
`Indexes` is bundled into packages like [BED](https://github.com/BioJulia/BED.jl), [GFF3](https://github.com/BioJulia/GFF3.jl), and [XAM](https://github.com/BioJulia/XAM.jl) to assist them with IO streams, so you may not need to install this package explicitly.
However, if you do, `Indexes` is made available to install through BioJulia's package registry.
By default, Julia's package manager only uses the "General" package registry.
Your Julia configuration needs to include the BioJulia registry to be able to install the latest version of `Indexes`.

To add the BioJulia registry from the [Julia REPL](https://docs.julialang.org/en/v1/manual/getting-started/), press `]` to enter [pkg mode](https://docs.julialang.org/en/v1/stdlib/Pkg/), then enter the following command:
```julia
registry add https://github.com/BioJulia/BioJuliaRegistry.git
```

After adding the registry to your configuration, you can install `Indexes` while in [pkg mode](https://docs.julialang.org/en/v1/stdlib/Pkg/) with the following:
```julia
add Indexes
```

If you are interested in the cutting edge of the development, please check out the [develop branch](https://github.com/BioJulia/Indexes.jl/tree/develop) to try new features before release.
