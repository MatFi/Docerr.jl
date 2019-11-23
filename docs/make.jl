using Pkg
Pkg.build()
Pkg.instantiate()
Pkg.develop(PackageSpec(path=pwd()))

using Documenter
using Docerr

makedocs(
         sitename = "Docerr, a Documenter bug",
         modules = [Docerr],
         doctest = true,
         strict = true,
         checkdocs = :exports,
         pages = Any[
             "Home" => "index.md",
             ],
         )
