(require 'org)
(add-to-list 'org-structure-template-alist
             '("J" "#+LaTeX_CLASS: xe-org-article
#+LATEX_HEADER: \\usepackage[ngerman]{babel}
#+LATEX_HEADER: \\usepackage{color, colortbl}
#+LATEX_HEADER: \\definecolor{headClr}{rgb}{.9,.9,.9}
#+LATEX_HEADER: \\definecolor{ferienClr}{rgb}{1,1,.75}
#+TITLE:     
#+AUTHOR:    
#+LANGUAGE:  de
#+OPTIONS:   toc:nil

*@@latex:\\textsf{Gruppe:}@@*  "))
