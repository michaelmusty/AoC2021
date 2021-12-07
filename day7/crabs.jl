module Crabs

function cost(v::Array{Int64}, i::Int64)
  sum([abs(x-i) for x in v])
end

function triangle(k::Int64)
  Int(k*(k+1)/2)
end

function triangular_cost(v::Array{Int64}, i::Int64)
  sum([triangle(abs(x-i)) for x in v])
end

end
