(TeX-add-style-hook "main"
 (lambda ()
    (LaTeX-add-bibliographies
     "all")
    (TeX-run-style-hooks
     "xcolor"
     "usenames"
     "dvipsnames"
     "svgnames"
     "table"
     "verbatim"
     "uiosloforside"
     "textcomp"
     "subcaption"
     "relsize"
     "multirow"
     "longtable"
     "listings"
     "inputenc"
     "latin1"
     "hyperref"
     "hidelinks"
     "graphicx"
     "fontenc"
     "T1"
     "fancyhdr"
     "times"
     "epsfig"
     "emptypage"
     "courier"
     "color"
     "cite"
     "caption"
     "bf}"
     "babel"
     "norsk"
     "english"
     "amsmath"
     "afterpage"
     "latex2e"
     "rep12"
     "report"
     "twoside"
     "openright"
     "a4paper"
     "12pt"
     "intro"
     "design"
     "rw"
     "arch"
     "impl"
     "eval"
     "concl"
     "appA")))

