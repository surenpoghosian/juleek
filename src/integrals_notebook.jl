### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ eb902f04-5fee-11f1-9ae5-2551349a191f
begin
	using Pkg
	Pkg.add("Integrals")
end

# ╔═╡ 4aa9b74b-c023-414b-900f-b6e8e1735a31
begin
	using Integrals
	
	my_sin(x) = solve(IntegralProblem((x, p) -> cos(x), (0.0, x)), QuadGKJL()).u
	x = 0:0.1:(2 * pi)
	
	all(@. my_sin(x) ≈ sin(x))
end

# ╔═╡ Cell order:
# ╠═eb902f04-5fee-11f1-9ae5-2551349a191f
# ╠═4aa9b74b-c023-414b-900f-b6e8e1735a31
