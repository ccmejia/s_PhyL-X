### A Pluto.jl notebook ###
# v0.14.3

using Markdown
using InteractiveUtils

# ╔═╡ 57ef6467-b5b5-4c6c-86a0-fe4bec623daa
using LinearAlgebra

# ╔═╡ e1d8a9cc-1ab1-400c-8fae-30ff24cba865
using Plots; 

# ╔═╡ 99c276b1-c493-4b39-92dc-38d7f2482807
md"**Preliminares de Julia**"

# ╔═╡ 7d7e5d53-83aa-4eba-a970-66b7e604dc41
md"*Creamos una matriz aleatoria $\hat{A}$ de dimensión $10\times 10$*"

# ╔═╡ 36ad0302-a41c-11eb-1206-f1862e5fef41
A = rand(10, 10)

# ╔═╡ 15112b63-0878-46ff-b51f-19ee949507de
B = diagm(A[:])

# ╔═╡ f6f69a78-7147-4cad-a95d-cfe6b401c7ac
C = diag(B)

# ╔═╡ 89d5341c-ab17-45f5-8286-c8c1f51ae5e7
C[4:4:end]

# ╔═╡ e9781156-e70f-45d7-8314-002705ba486b
C[1:4:end]

# ╔═╡ d6904aaf-8bc3-4a28-ac99-97b9bf231580
C[2:]

# ╔═╡ 68686380-9432-4128-84fb-1352d4feacdc
plot(A)

# ╔═╡ c480bb10-47a6-446b-a014-bfbd0bf63ab6
a = rand(10)

# ╔═╡ 3c18d323-05d7-4d76-89f5-18ed7f414fd4
fft(A)

# ╔═╡ Cell order:
# ╟─99c276b1-c493-4b39-92dc-38d7f2482807
# ╟─7d7e5d53-83aa-4eba-a970-66b7e604dc41
# ╠═36ad0302-a41c-11eb-1206-f1862e5fef41
# ╠═57ef6467-b5b5-4c6c-86a0-fe4bec623daa
# ╠═15112b63-0878-46ff-b51f-19ee949507de
# ╠═f6f69a78-7147-4cad-a95d-cfe6b401c7ac
# ╠═89d5341c-ab17-45f5-8286-c8c1f51ae5e7
# ╠═e9781156-e70f-45d7-8314-002705ba486b
# ╠═d6904aaf-8bc3-4a28-ac99-97b9bf231580
# ╠═e1d8a9cc-1ab1-400c-8fae-30ff24cba865
# ╠═68686380-9432-4128-84fb-1352d4feacdc
# ╠═c480bb10-47a6-446b-a014-bfbd0bf63ab6
# ╠═3c18d323-05d7-4d76-89f5-18ed7f414fd4
