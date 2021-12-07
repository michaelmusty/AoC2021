using CSV
using DataFrames
include("crabs.jl")

v = CSV.read("part1_input.csv", header=false, transpose=true, DataFrame)[:,1]

triangular_costs = []
for i in 0:maximum(v)
  c = Crabs.triangular_cost(v, i)
  println(c)
  push!(triangular_costs,c)
end

inds = findall(x->x==minimum(triangular_costs),triangular_costs)
