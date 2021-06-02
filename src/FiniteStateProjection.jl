module FiniteStateProjection

using Reexport
@reexport using Catalyst

using ModelingToolkit
using MacroTools
using SparseArrays

import Base: LinearIndices, vec

using RuntimeGeneratedFunctions
RuntimeGeneratedFunctions.init(@__MODULE__)

export FSPSystem, NaiveIndexHandler, DefaultIndexHandler,
       conservedquantities, conservationlaws,
       reducedspecies, elidedspecies

include("fspsystem.jl")
include("indexhandlers.jl")
include("build_rhs.jl")
include("matrix.jl")

end