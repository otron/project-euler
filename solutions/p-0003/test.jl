using FactCheck
include("factor.jl")

facts("testing firstfactor()") do
    @fact firstfactor(8, 2) => (2, 4)

    @fact firstfactor(15, 2) => (3, 5)

    @fact firstfactor(13, 2) => (13, 1)
end

facts("testing fact()") do
    res = fact(15)
    @fact res[3] => 1
    @fact res[5] => 1

    res2 = fact(13195)
    @fact length(res2) => 4
    @fact res2[13] => 1
    @fact res2[5] => 1
    @fact res2[7] => 1
end

facts("testing fact_pls()") do
    res = fact_pls(13195)
    @fact length(res) => 4
    @fact res[13] => 1
    @fact res[5] => 1
    @fact res[7] => 1
end
