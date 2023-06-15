using Buttondown 
using Documenter

makedocs(;
    modules = [Buttondown],
    authors = "Jacob Zelko (aka TheCedarPrince) <jacobszelko@gmail.com> and contributors",
    repo = "https://github.com/TheCedarPrince/NoteMate/blob/{commit}{path}#L{line}",
    sitename = "Buttondown.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        assets = String[],
        edit_link = "dev",
	footer = "Created by [Jacob Zelko](https://jacobzelko.com). [License](https://github.com/TheCedarPrince/Buttondown/blob/main/LICENSE)"
    ),
    pages = [
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo = "github.com/TheCedarPrince/Buttondown.jl",
    push_preview = true,
    devbranch = "main",
)

