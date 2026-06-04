using Pkg
Pkg.add("Integrals")

using Integrals

my_sin(x) = solve(IntegralProblem((x, p) -> cos(x), (0.0, x)), QuadGKJL()).u
x = 0:0.1:(2 * pi)

all(@. my_sin(x) ≈ sin(x))
