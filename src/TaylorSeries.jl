# This file is part of the TaylorSeries.jl Julia package, MIT license
#
# Luis Benet & David P. Sanders
# UNAM
#
# Handles Taylor series of arbitrary but finite order

__precompile__(true)

"""
    TaylorSeries

A Julia package for Taylor expansions in one or more independent variables.

The basic constructors are [`Taylor1`](@ref) and [`TaylorN`](@ref);
see also [`HomogeneousPolynomial`](@ref).

"""
module TaylorSeries

using Compat

if !isdefined(Base, :iszero)
    import Compat: iszero
    export iszero
else
    import Base: iszero
end

import Base: ==, +, -, *, /, ^

import Base: zero, one, zeros, ones, isinf, isnan,
    convert, promote_rule, promote, eltype, length, show,
    real, imag, conj, ctranspose,
    rem, mod, mod2pi, abs, gradient,
    sqrt, exp, log, sin, cos, tan,
    asin, acos, atan, sinh, cosh, tanh,
    A_mul_B!, power_by_squaring,
    getindex, setindex!, endof

export Taylor1, TaylorN, HomogeneousPolynomial, AbstractSeries

export get_coeff, derivative, integrate,
    evaluate, evaluate!, inverse,
    show_params_TaylorN,
    get_order, get_numvars,
    set_variables, get_variables,
    ∇, jacobian, jacobian!, hessian, hessian!

include("parameters.jl")
include("hash_tables.jl")
include("constructors.jl")
include("conversion.jl")
include("auxiliary.jl")
include("arithmetic.jl")
include("power.jl")
include("functions.jl")
include("other_functions.jl")
include("evaluate.jl")
include("calculus.jl")
include("printing.jl")

end # module
