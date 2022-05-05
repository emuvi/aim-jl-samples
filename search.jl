using Pkg
Pkg.add("HTTP")
Pkg.add("Gumbo")

using HTTP, Gumbo
req = HTTP.get("https://emuvi.github.io/")
doc = parsehtml(String(req.body))
println(doc)
