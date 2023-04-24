;; for export to a .tex file using he (hopefully) local classfile.cls (for one-of papers and such)
(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
	       '("local-class"
			 "\\documentclass{classfile}
\\usepackage{hyperref}
[NO-DEFAULT-PACKAGES]
[NO-PACKAGES]"
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
		 ("\\paragraph{%s}" . "\\paragraph*{%s}")
		 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;;  (setq org-latex-to-pdf-process 
;;	'("xelatex -interaction nonstopmode %f"
;;	  "xelatex -interaction nonstopmode %f")) ;; for multiple passes
)
