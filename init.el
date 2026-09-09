;;; init.el --- Bootstrap the documented Org configuration -*- lexical-binding: t; -*-
;;
;; This file deliberately contains no user preferences.  It only starts Emacs'
;; package system and loads the documented configuration notebooks in order.

(require 'package)
(package-initialize)

(unless (require 'use-package nil 'noerror)
  (package-refresh-contents)
  (package-install 'use-package)
  (require 'use-package))

(require 'org)
(require 'ob-tangle)

(let ((modules (expand-file-name "config/modules/" user-emacs-directory)))
  (dolist (module '("00-packages.org"
                    "70-tools.org"
                    "10-core.org"
                    "20-interface.org"
                    "30-editing.org"
                    "40-org.org"
                    "50-writing.org"
                    "latex/ajcclasses.org"
                    "latex/bkclasses.org"
                    "latex/ox-tufte.org"
                    "latex/ox-scrbook-chapter.org"
                    "60-programming.org"))
    (org-babel-load-file (expand-file-name module modules))))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b9a79b7c82cfbe95d376b9958e34d95a17b72eac068bfc82403df12229b49df9"
	 "d7689bccf43c07dea8af1e47d13c45ad81b727a65c7db625edd67f1a395482b8"
	 "0620b0e3416eac155be1571786c95b227332c60495dd1c33da6df119c1d5561d"
	 "b2aba8dcd3d48b13b14c1360a581999d50431ad0c40a23dbf0397aa3a3ac4223"
	 "21875d7e0ca402ce472d760a33f2c30456cca819c7b4234adbab4f8eb97a5c26"
	 "8c9396ede052b20dc3dc4f20254c081f7359c0eaebf886ccfd99dcdee13ee1df"
	 default))
 '(ein:output-area-inlined-images t)
 '(org-list-allow-alphabetical t)
 '(package-selected-packages
   '(ac-haskell-process ac-math adaptive-wrap aio all-the-icons
						auctex-latexmk auto-complete-auctex
						auto-complete-c-headers auto-complete-clang
						auto-complete-clang-async chatgpt-shell
						citar-org-roam color-theme-x company-box
						company-jedi company-posframe company-spell
						copilot diminish dockerfile-mode ebib ein
						epresent fill-column-indicator flycheck
						flyspell-popup format-all git-commit
						go-complete highlight-indentation ini-mode
						ivy-bibtex jinja2-mode jupyter lsp-mode magit
						markdown-preview-eww mcp mixed-pitch mmm-mode
						multi-line multiple-cursors neotree ob-prolog
						org-download org-inline-pdf org-noter-pdftools
						org-present org-ref org-roam-bibtex
						org-roam-dailies org-roam-ui ov ox-ipynb
						ox-latex-subfigure paradox php-mode phscroll
						pinentry pylint pyvenv quelpa-use-package
						rainbow-mode rustic visual-fill-column
						yaml-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 110 :family "Fira Code"))))
 '(copilot-overlay-face ((t (:background "#38454c"))))
 '(org-drawer ((t (:foreground "#26d1a9" :family "Fira Mono"))))
 '(org-property-value ((t (:inherit default :family "Fira Code"))))
 '(org-special-keyword ((t (:foreground "#51636e" :weight bold :family "Fira Code")))))
