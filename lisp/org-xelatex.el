;; 'djcb-org-article' for export org documents to the LaTex 'article', using
;; XeTeX and some fancy fonts; requires XeTeX (see org-latex-to-pdf-process)
(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
	       '("xe-org-article"
		 "\\documentclass[11pt,a4paper]{scrartcl}
\\usepackage[T1]{fontenc}
\\usepackage{fontspec}
\\usepackage{graphicx} 
\\usepackage{hyperref}
\\usepackage{longtable}
\\usepackage[normalem]{ulem}
\\defaultfontfeatures{Mapping=tex-text}
\\setromanfont{Gentium}
\\setsansfont{Gillius ADF}
\\setromanfont [BoldFont={Gentium Basic Bold},
                ItalicFont={Gentium Basic Italic}]{Gentium Basic}
%\\setmonofont[Scale=0.8]{DejaVu Sans Mono}
\\usepackage{geometry}
\\geometry{a4paper, textwidth=6.5in, textheight=10in,
            marginparsep=7pt, marginparwidth=.6in}
\\pagestyle{empty}
%\\title{}
      [NO-DEFAULT-PACKAGES]
      [NO-PACKAGES]"
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
		 ("\\paragraph{%s}" . "\\paragraph*{%s}")
		 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (add-to-list 'org-latex-classes
	       '("xe-book"
		 "\\documentclass[11pt,a4paper]{scrbook}
\\usepackage[T1]{fontenc}
\\usepackage{fontspec}
\\usepackage{graphicx} 
\\usepackage{hyperref}
\\usepackage{longtable}
\\usepackage[normalem]{ulem}
\\defaultfontfeatures{Mapping=tex-text}
\\setromanfont{Gentium}
\\setsansfont{Gillius ADF}
\\setromanfont [BoldFont={Gentium Basic Bold},
                ItalicFont={Gentium Basic Italic}]{Gentium Basic}
%\\setmonofont[Scale=0.8]{DejaVu Sans Mono}
\\usepackage{geometry}
\\geometry{a4paper, textwidth=6.5in, textheight=10in,
            marginparsep=7pt, marginparwidth=.6in}
\\pagestyle{empty}
\\let\\oldsection\\section
\\renewcommand\\section{\\clearpage\\oldsection}
%\\title{}
      [NO-DEFAULT-PACKAGES]
      [NO-PACKAGES]"
		 ("\\chapter{%s}" . "\\chapter*{%s}")
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
		 ("\\paragraph{%s}" . "\\paragraph*{%s}")
		 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (setq org-latex-to-pdf-process 
	'("xelatex -interaction nonstopmode %f"
	  "xelatex -interaction nonstopmode %f")) ;; for multiple passes
)
