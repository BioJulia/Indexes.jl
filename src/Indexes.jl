# Index
# =====
#
# Index types for genomic intervals.
#
# This file is a part of BioJulia.
# License is MIT: https://github.com/BioJulia/Bio.jl/blob/master/LICENSE.md

module Indexes

using TranscodingStreams

import CodecBGZF
import BioGenerics
import GenomicFeatures: Interval

include("chunk.jl")
include("bgzfindex.jl")
include("tabix.jl")
include("overlap.jl")

end # module
