using CSV
using DataFrames
include("crabs.jl")

v = CSV.read("part1_input.csv", header=false, transpose=true, DataFrame)[:,1]

costs = []
for i in 0:maximum(v)
  c = Crabs.cost(v, i)
  println(c)
  push!(costs,c)
end

inds = findall(x->x==minimum(costs),costs)
