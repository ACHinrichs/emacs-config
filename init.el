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

(setq solarized-use-variable-pitch t
      solarized-scale-org-headlines t)
(load "~/.emacs.d/lisp/solarized.el")

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(solarized-dark))
 '(custom-safe-themes
   '("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4"
	 "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879"
	 "ded46420eaf95b374713249a503cec464b5d7f672e3a9efe01a0bf27b2086b66"
	 "417128f71670e83fca0a9f87bbcfa38dd532ca78bd6524cafe1ea0ea21c87ab4"
	 "07815c676b7d8a1d0c041b71d89f7f1d7d80209c44e3570d4bec2d524318b5ac"
	 "4e68b9eb3b87f830c80596ffd599d39d77d06c2be408a4ea4c0d06cfa9b8753c"
	 "d7ec73258cea32275faf9745b8bfd48498242ee862bf3895fefa972e0710602d"
	 "2d6c158387e53bcb00fc262c6d046b5402dd37e89dae8ca05cff24326b6afa04"
	 "af2d66af959d1a357f49463147a46cf7b770e557c0f84b0991e2936b7b759dd9"
	 "22e976d099f53dabc4534f080c8c4a36e7c7c223edc2bdac8d7537611eaae321"
	 "a82bd6ba32612663f33b8d7a7027ec28ca66f36abc6fb98d69deebb5ca4a4504"
	 "3e2fd2a175d4e5df50cc09948260c620167124d9fc11c0bf71849d523efcf375"
	 default))
 '(ein:output-area-inlined-images t)
 '(org-list-allow-alphabetical t)
 '(package-selected-packages
   '(jinja2-mode ox-tufte-latex tufte-org-mode tufte copilot-chat
				 chatgpt-shell shell-maker format-all pylint ox-ipynb
				 org-roam-dailies copilot quelpa-use-package quelpa
				 org-noter-pdftools org-pdftools pdf-tools org-noter
				 ebib multi-line pyvenv diminish company-spell
				 company-flyspell companyflyspell company-box
				 company-posframe jsonrpc editorconfig dash s
				 company-jedi epresent citar-org-roam org-download
				 ox-latex-subfigure org-ref jupyter
				 multiple-cursors ob-prolog lsp-mode rustic
				 mixed-pitch use-package flyspell-popup adaptive-wrap
				 go-complete go-mode ein ini-mode pinentry
				 dockerfile-mode yaml-mode fill-column-indicator ##
				 company highlight-indentation auctex-latexmk
				 color-theme-x color-theme-xe markdown-mode
				 markdown-mode+mode rainbow-mode flyspell-Lazy
				 all-the-icons neotree markdown-preview-eww
				 ac-haskell-process ac-math auto-complete
				 auto-complete-auctex auto-complete-c-headers
				 auto-complete-clang auto-complete-clang-async
				 php-mode paradox mmm-mode magit auctex)))
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; Installs all uninstalled, but selected packages
(package-install-selected-packages)

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
										;'(ein:cell-input-area ((t (:background "#2a3439")))))
										;'(org-level-1 ((t (:inherit variable-pitch :extend nil :weight bold :height 113 :width normal :foundry "CTDB" :family "Fira Code"))))
										;'(org-level-2 ((t (:inherit variable-pitch :extend nil :weight bold :height 113 :width normal :foundry "CTDB" :family "Fira Code"))))
										;'(org-level-3 ((t (:inherit variable-pitch :extend nil :weight bold :height 113 :width normal :foundry "CTDB" :family "Fira Code"))))
										;'(org-level-4 ((t (:inherit variable-pitch :extend nil :weight bold :height 113 :width normal :foundry "CTDB" :family "Fira Code"))))
										;'(org-level-5 ((t (:inherit variable-pitch :extend nil :weight bold :height 113 :width normal :foundry "CTDB" :family "Fira Code"))))
										;'(org-level-6 ((t (:inherit variable-pitch :extend nil :weight bold :height 113 :width normal :foundry "CTDB" :family "Fira Code"))))
										;'(org-level-7 ((t (:inherit variable-pitch :extend nil :weight bold :height 113 :width normal :foundry "CTDB" :family "Fira Code"))))
										;'(org-level-8 ((t (:inherit variable-pitch :extend nil :weight bold :height 113 :width normal :foundry "CTDB" :family "Fira Code")))))


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
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))

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
