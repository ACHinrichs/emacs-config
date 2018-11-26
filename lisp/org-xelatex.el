;; 'djcb-org-article' for export org documents to the LaTex 'article', using
;; XeTeX and some fancy fonts; requires XeTeX (see org-latex-to-pdf-process)
(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
	       '("xe-org-article"
		 "\\documentclass[11pt,a4paper]{scrartcl}
%\\usepackage[T1]{fontenc}
\\usepackage{fontspec}
\\usepackage{graphicx} 
\\usepackage{hyperref}
\\usepackage{longtable}
\\usepackage[normalem]{ulem}
\\defaultfontfeatures{Mapping=tex-text}
%\\setromanfont{Gentium}
\\setsansfont{Gillius ADF}
%\\setromanfont [BoldFont={Gentium Basic Bold},
%                ItalicFont={Gentium Basic Italic}]{Gentium Basic}
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
	       '("xe-trainingsplan"
		 "\\documentclass[10pt,a4paper,landscape]{scrartcl}
\\usepackage[T1]{fontenc}
\\usepackage{fontspec}
\\usepackage{graphicx} 
\\usepackage{hyperref}
\\usepackage{longtable}
\\usepackage{tabularx}
\\newcolumntype{L}[1]{>{\\raggedright\\arraybackslash}p{#1}}
\\newcolumntype{C}[1]{>{\\centering\\arraybackslash}p{#1}}
\\newcolumntype{R}[1]{>{\\raggedleft\\arraybackslash}p{#1}}
\\usepackage[normalem]{ulem}
\\defaultfontfeatures{Mapping=tex-text}
%\\setromanfont{Gentium}
\\setsansfont{Gillius ADF}
%\\setromanfont [BoldFont={Gentium Basic Bold},
%                ItalicFont={Gentium Basic Italic}]{Gentium Basic}
%\\setmonofont[Scale=0.8]{DejaVu Sans Mono}
\\usepackage{geometry}
\\geometry{a4paper,landscape, textheight=6.5in, textwidth=10in,
            marginparsep=7pt, marginparwidth=.6in}
\\pagestyle{empty}
\\makeatletter
\\newcommand\\@goal{}
\\newcommand\\goal[1]{\\def\\@goal{#1}}
\\newcommand\\@class{}
\\newcommand\\class[1]{\\def\\@class{#1}}
\\renewcommand\\maketitle{
  \\noindent
  {\\centering
  \\begin{tabular}{L{.3\\linewidth}C{.3\\linewidth}R{.3\\linewidth}}
    \\textsf{\\textbf{Gruppe: }}\\@class&\\textbf{\\textsf{\\Large\\@title}}&\\textsf{\\@date}\\\\
    \\textsf{\\textbf{Reihenziel: }}\\@goal   &\\textsf{\\@author}
  \\end{tabular}}\\linebreak
  \\let\\theAuthor\\@author
  \\let\\theTitle\\@title
  \\let\\theDate\\@date
  \\let\\theClass\\@class
  \\let\\theGoal\\@goal
}
\\makeatother
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
%\\usepackage[T1]{fontenc}
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
\\setmonofont[Scale=0.8]{DejaVu Sans Mono}
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
