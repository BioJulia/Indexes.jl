# <img src="./docs/src/assets/logo.svg" width="30%" align="right" /> Indexes.jl

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Latest Release](https://img.shields.io/github/release/BioJulia/Indexes.jl.svg)](https://github.com/BioJulia/Indexes.jl/releases/latest)
[![MIT license](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/BioJulia/Indexes.jl/blob/master/LICENSE)
[![Stable documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://biojulia.github.io/Indexes.jl/stable)
[![Latest documentation](https://img.shields.io/badge/docs-dev-blue.svg)](https://biojulia.github.io/Indexes.jl/dev/)

> This project follows the [semver](http://semver.org) pro forma and uses the [git-flow branching model](https://nvie.com/posts/a-successful-git-branching-model/ "original
blog post").

## Description
Handles indexes required to iterate through various IO streams.
For example:
- Generic index for tab-delimited files.
- An index type for BGZFStream.

## Installation
The Indexes package is bundled into packages like [BED](https://github.com/BioJulia/BED.jl), [GFF3](https://github.com/BioJulia/GFF3.jl), and [XAM](https://github.com/BioJulia/XAM.jl) to assist them with IO streams, so you may not need to install this package explicitly.
  However, if you do, Indexes is made available to install through the [General package registry](https://github.com/juliaregistries/General).

You can install Indexes from the [Julia REPL](https://docs.julialang.org/en/v1/manual/getting-started/).
Press `]` to enter [pkg mode](https://docs.julialang.org/en/v1/stdlib/Pkg/), then enter the following command:
```julia
add Indexes
```

If you are interested in the cutting edge of the development, please check out the [develop branch](https://github.com/BioJulia/Indexes.jl/tree/develop) to try new features before release.


## Testing
Indexes is tested against Julia `1.X` on Linux, OS X, and Windows.

**Latest build status:**

[![Unit Tests](https://github.com/BioJulia/Indexes.jl/actions/workflows/UnitTests.yml/badge.svg)](https://github.com/BioJulia/Indexes.jl/actions/workflows/UnitTests.yml)
[![Downstream](https://github.com/BioJulia/Indexes.jl/actions/workflows/Downstream.yml/badge.svg)](https://github.com/BioJulia/Indexes.jl/actions/workflows/Downstream.yml)
[![Build Documentation](https://github.com/BioJulia/Indexes.jl/actions/workflows/Documentation.yml/badge.svg)](https://github.com/BioJulia/Indexes.jl/actions/workflows/Documentation.yml)
[![codecov](https://codecov.io/gh/BioJulia/Indexes.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/BioJulia/Indexes.jl)

## Contributing
We appreciate [contributions](https://github.com/BioJulia/Indexes.jl/graphs/contributors) from users including reporting bugs, fixing issues, improving performance and adding new features.

Take a look at the [contributing files](https://github.com/BioJulia/Contributing) detailed contributor and maintainer guidelines, and code of conduct.

### Financial contributions
We also welcome financial contributions in full transparency on our [open collective](https://opencollective.com/biojulia).
Anyone can file an expense.
If the expense makes sense for the development the core contributors and the person who filed the expense will be reimbursed.


## Backers & Sponsors
Thank you to all our backers and sponsors!

Love our work and community? [Become a backer](https://opencollective.com/biojulia#backer).

[![backers](https://opencollective.com/biojulia/backers.svg?width=890)](https://opencollective.com/biojulia#backers)

Does your company use BioJulia?
Help keep BioJulia feature rich and healthy by [sponsoring the project](https://opencollective.com/biojulia#sponsor).
Your logo will show up here with a link to your website.

[![](https://opencollective.com/biojulia/sponsor/0/avatar.svg)](https://opencollective.com/biojulia/sponsor/0/website)
[![](https://opencollective.com/biojulia/sponsor/1/avatar.svg)](https://opencollective.com/biojulia/sponsor/1/website)
[![](https://opencollective.com/biojulia/sponsor/2/avatar.svg)](https://opencollective.com/biojulia/sponsor/2/website)
[![](https://opencollective.com/biojulia/sponsor/3/avatar.svg)](https://opencollective.com/biojulia/sponsor/3/website)
[![](https://opencollective.com/biojulia/sponsor/4/avatar.svg)](https://opencollective.com/biojulia/sponsor/4/website)
[![](https://opencollective.com/biojulia/sponsor/5/avatar.svg)](https://opencollective.com/biojulia/sponsor/5/website)
[![](https://opencollective.com/biojulia/sponsor/6/avatar.svg)](https://opencollective.com/biojulia/sponsor/6/website)
[![](https://opencollective.com/biojulia/sponsor/7/avatar.svg)](https://opencollective.com/biojulia/sponsor/7/website)
[![](https://opencollective.com/biojulia/sponsor/8/avatar.svg)](https://opencollective.com/biojulia/sponsor/8/website)
[![](https://opencollective.com/biojulia/sponsor/9/avatar.svg)](https://opencollective.com/biojulia/sponsor/9/website)


## Questions?
If you have a question about contributing or using BioJulia software, come on over and chat to us on [the Julia Slack workspace](https://julialang.org/slack/), or you can try the [Bio category of the Julia discourse site](https://discourse.julialang.org/c/domain/bio).
