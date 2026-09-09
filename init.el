;; disable native compilation, to work around a bug in org-noter
;; See related issue: https://github.com/org-noter/org-noter/issues/66
(setq native-comp-speed -1)

;; Set Loadpath
(add-to-list 'load-path "/home/ahi/.emacs.d/lisp/")
;; (load "~/.emacs.d/lisp/firacode.el")
(load "~/.emacs.d/lisp/org-xelatex.el")
(load "~/.emacs.d/lisp/org-tex-local-class.el")
(load "~/.emacs.d/lisp/org-templates.el")
(load "~/.emacs.d/lisp/insert-date.el")

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'pontemacs t)

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
	 "8c9396ede052b20dc3dc4f20254c081f7359c0eaebf886ccfd99dcdee13ee1df" default))
 '(ein:output-area-inlined-images t)
 '(org-list-allow-alphabetical t)
 '(package-selected-packages
   '(## ac-haskell-process ac-math adaptive-wrap all-the-icons auctex
		auctex-latexmk auto-complete auto-complete-auctex
		auto-complete-c-headers auto-complete-clang auto-complete-clang-async
		chatgpt-shell citar-org-roam color-theme-x color-theme-xe company
		company-box company-flyspell company-jedi company-posframe company-spell
		companyflyspell copilot dash diminish dockerfile-mode ebib editorconfig
		ein epresent fill-column-indicator flyspell-Lazy flyspell-popup
		format-all go-complete go-mode highlight-indentation ini-mode
		jinja2-mode jsonrpc jupyter lsp-mode magit markdown-mode
		markdown-mode+mode markdown-preview-eww mixed-pitch mmm-mode multi-line
		multiple-cursors neotree ob-prolog org-download org-noter
		org-noter-pdftools org-pdftools org-present org-ref org-roam-dailies
		ox-ipynb ox-latex-subfigure ox-tufte-latex paradox pdf-tools php-mode
		pinentry pylint pyvenv quelpa quelpa-use-package rainbow-mode rustic s
		shell-maker tufte tufte-org-mode use-package yaml-mode)))
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; Installs all uninstalled, but selected packages
(package-install-selected-packages)



(require 'use-package)

;; Multimode
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'html-mode "\\.php\\'" 'html-php)

										;(setq split-width-threshold 1 )
(add-hook 'text-mode-hook 'turn-off-auto-fill)


;; load rust-stuff
(load "~/.emacs.d/lisp/rust_stuff.el")

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/emacs-init.org"))

(setq org-return-follows-link t)
;; stuff for org-present
(add-to-list 'load-path "~/.emacs.d/lisp/org-present")
(autoload 'org-present "org-present" nil t)
(eval-after-load "org-present"
  '(progn
     (add-hook 'org-present-mode-hook
               (lambda ()
                 (org-present-big)
                 (org-display-inline-images)
                 ;;(org-present-hide-cursor)
                 ;;(org-present-read-only)
				 ))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-present-small)
                 (org-remove-inline-images)
                 (org-present-show-cursor)
                 (org-present-read-write)))))

;; Code-execution
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t) (prolog . t) (haskell . t)))
(set 'org-confirm-babel-evaluate nil)
(setq prolog-program-name "/usr/bin/swipl")

(add-hook 'org-mode-hook (lambda () (display-fill-column-indicator-mode -1)))

;;LaTeX-Export
;;-------------
(setq org-latex-compiler "xelatex")
(setq org-latex-pdf-process
      (list (concat "latexmk -"
                    org-latex-compiler
                    " -recorder -synctex=1 -bibtex-cond %b")))
(setq org-latex-listings t)

(setq org-latex-default-packages-alist
      '(("" "graphicx" t)
        ("" "grffile" t)
        ("" "longtable" t)
        ("" "wrapfig" nil)
        ("" "rotating" nil)
        ("normalem" "ulem" t)
        ("" "amsmath" t)
        ("" "textcomp" t)
        ("" "amssymb" t)
        ("" "capt-of" nil)
        ("" "hyperref" nil)))

(load "~/.emacs.d/lisp/org-latex-classes.el")
(load "~/.emacs.d/lisp/org-tex-local-class.el")


(global-auto-revert-mode 1)


;;(desktop-save-mode 1)

;; Use non-stupid indentation style
(setq c-default-style "linux"
      c-basic-offset 4)

(setq-default indent-tabs-mode t)
(setq-default tab-width 4) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)


;; Disable menu and tool- and scrolbar, because shell-like emacs > shell-emacs > gui-emacs >> vim
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; Start neotree
(require 'all-the-icons)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme 'icons)

;; abbrevs - see https://www.emacswiki.org/emacs/AbbrevMode
(setq abbrev-file-name             ;; tell emacs where to read abbrev
      "~/.emacs.d/abbrev_defs")    ;; definitions from...
(setq save-abbrevs t)              ;; save abbrevs when files are
;; saved you will be asked before the abbreviations are saved
;; Turn on abbrev mode
(setq-default abbrev-mode t)


;; Increase size of LaTeX fragment previews
(plist-put org-format-latex-options :scale 2)

;; Transperency!
;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;(set-frame-parameter (selected-frame) 'alpha <both>)

										;(if (eq system-type 'windows-nt)
										;    (progn      (set-frame-parameter (selected-frame) 'alpha '(100 . 100))
										;		(add-to-list 'default-frame-alist '(alpha . (100 . 100))))
										;    (progn      (set-frame-parameter (selected-frame) 'alpha '(75 . 75))
										;		(add-to-list 'default-frame-alist '(alpha . (75 . 75))))
										;)
;; Tweaks for Auctex
;; Inserts \( \) in LaTeX and $ $ in Tex when writing $
(add-hook 'plain-TeX-mode-hook
		  (lambda () (set (make-variable-buffer-local 'TeX-electric-math)
						  (cons "$" "$"))))
(add-hook 'LaTeX-mode-hook
		  (lambda () (set (make-variable-buffer-local 'TeX-electric-math)
						  (cons "\\(" "\\)"))))
(add-hook 'org-mode-hook
		  (lambda () (set (make-variable-buffer-local 'TeX-electric-math)
						  (cons "\\(" "\\)"))))
(setq LaTeX-electric-left-right-brace t)

;; Change bell from annoying piezo-beep to modline-flash
(setq ring-bell-function
      (lambda ()
        (let ((orig-fg (face-foreground 'mode-line)))
          (set-face-foreground 'mode-line "#F2804F")
          (run-with-idle-timer 0.1 nil
                               (lambda (fg) (set-face-foreground 'mode-line fg))
                               orig-fg))))

;; Set font to firacode
;;(set-default-font "Fira Code")

;; Set my (Linux) python-shell to python3
(if (eq system-type 'windows-nt)
    (progn      ())
  (progn      (setq python-shell-interpreter "/usr/bin/python3"))
  )

(org-babel-do-load-languages
 'org-babel-load-languages '((python . t)))

(setq password-cache-expiry nil)

;; If there is a server, connect to it, otherwise start it
(require 'server)
(unless (server-running-p)
  (server-start))


;; Colored text in org-mode, taken from https://emacs.stackexchange.com/a/41472
(load "~/.emacs.d/lisp/org-colored-text.el")
(require 'org-colored-text)
;; Taken and adapted from org-colored-text
(org-add-link-type
 "color"
 (lambda (path)
   "No follow action.")
 (lambda (color description backend)
   (cond
    ((eq backend 'latex)                  ; added by TL
     (format "{\\color{%s}%s}" color description)) ; added by TL
    ((eq backend 'html)
     (let ((rgb (assoc color color-name-rgb-alist))
           r g b)
       (if rgb
           (progn
             (setq r (* 255 (/ (nth 1 rgb) 65535.0))
                   g (* 255 (/ (nth 2 rgb) 65535.0))
                   b (* 255 (/ (nth 3 rgb) 65535.0)))
             (format "<span style=\"color: rgb(%s,%s,%s)\">%s</span>"
                     (truncate r) (truncate g) (truncate b)
                     (or description color)))
         (format "No Color RGB for %s" color)))))))

(add-hook 'python-major-mode-hook
          (lambda ()
            (setq auto-composition-mode nil)))
(add-hook 'helm-major-mode-hook
          (lambda ()
            (setq auto-composition-mode nil)))

(setq exec-path (append exec-path '("/home/ahi/.local/bin")))
(setq exec-path (append exec-path '("/usr/bin")))


(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
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
