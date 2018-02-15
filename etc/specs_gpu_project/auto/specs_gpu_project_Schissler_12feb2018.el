(TeX-add-style-hook
 "specs_gpu_project_Schissler_12feb2018"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "letterpaper" "margin=0.5in")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "graphicx"
    "algorithm2e"
    "geometry"
    "amsmath"))
 :latex)

