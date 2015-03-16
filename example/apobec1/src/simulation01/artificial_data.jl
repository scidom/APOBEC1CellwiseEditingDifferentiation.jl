simulationid = :simulation01

OUTDIR = joinpath("../../output", string(simulationid))

nsites = 1

data = Dict{Symbol, Any}(:m=>0.5,
                         :coverage=>Float64[10 20 30 40],
                         :edited=>Float64[5 10 15 20])
data[:rate] = float(data[:edited]./data[:coverage])

cells = Dict{Int, Vector{Int}}(1=>[1, 2, 3, 4])
ncells = Dict{Int, Int}(1=>4)