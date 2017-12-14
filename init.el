;; Set Loadpath
(add-to-list 'load-path "~/.emacs.d/lisp/")

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
 '(custom-enabled-themes (quote (nightforest)))
 '(custom-safe-themes
   (quote
    ("ded46420eaf95b374713249a503cec464b5d7f672e3a9efe01a0bf27b2086b66" "417128f71670e83fca0a9f87bbcfa38dd532ca78bd6524cafe1ea0ea21c87ab4" "07815c676b7d8a1d0c041b71d89f7f1d7d80209c44e3570d4bec2d524318b5ac" "4e68b9eb3b87f830c80596ffd599d39d77d06c2be408a4ea4c0d06cfa9b8753c" "d7ec73258cea32275faf9745b8bfd48498242ee862bf3895fefa972e0710602d" "2d6c158387e53bcb00fc262c6d046b5402dd37e89dae8ca05cff24326b6afa04" "af2d66af959d1a357f49463147a46cf7b770e557c0f84b0991e2936b7b759dd9" "22e976d099f53dabc4534f080c8c4a36e7c7c223edc2bdac8d7537611eaae321" "a82bd6ba32612663f33b8d7a7027ec28ca66f36abc6fb98d69deebb5ca4a4504" "3e2fd2a175d4e5df50cc09948260c620167124d9fc11c0bf71849d523efcf375" default)))
 '(package-selected-packages
   (quote
    (auctex-latexmk color-theme-x color-theme-xe markdown-mode markdown-mode+mode rainbow-mode flyspell-lazy all-the-icons neotree markdown-preview-eww ac-haskell-process ac-math auto-complete auto-complete-auctex auto-complete-c-headers auto-complete-clang auto-complete-clang-async php-mode paradox mmm-mode magit auctex))))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)
;; Unstalls all uninstalled, but selected packages
(package-install-selected-packages)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Multimode
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'html-mode "\\.php\\'" 'html-php)

(setq split-width-threshold 1 )
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(global-auto-revert-mode 1)
;;(desktop-save-mode 1)

(setq c-default-style "linux"
      c-basic-offset 4)

;;Auto complete
(require 'auto-complete)
(global-auto-complete-mode t)

;; Start server, so that emacsclient can open in emacs
(server-start)

;; Disable menu and toolbar
(tool-bar-mode 0)
(menu-bar-mode 0)

;; Start neotree
(require 'all-the-icons)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; abbrevs - see https://www.emacswiki.org/emacs/AbbrevMode
(setq abbrev-file-name             ;; tell emacs where to read abbrev
      "~/.emacs.d/abbrev_defs")    ;; definitions from...
(setq save-abbrevs t)              ;; save abbrevs when files are
;; saved you will be asked before the abbreviations are saved
;; Turn on abbrev mode
(setq-default abbrev-mode t)


;;FlySpell+FlySpell-babel for Spellchecks using aspell
(autoload 'flyspell-babel-setup "flyspell-babel")
(setq-default ispell-program-name "aspell") 

;; Enable Linenumbers
(add-hook 'find-file-hook (lambda () (linum-mode 1)))

;; Disable scrolbar
(scroll-bar-mode -1)

;; Transperency!
;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;(set-frame-parameter (selected-frame) 'alpha <both>)
(set-frame-parameter (selected-frame) 'alpha '(75 . 75))
(add-to-list 'default-frame-alist '(alpha . (75 . 75)))

(if (eq system-type 'windows-nt)
    (progn      (set-frame-parameter (selected-frame) 'alpha '(100 . 100))
		(add-to-list 'default-frame-alist '(alpha . (100 . 100))))
    (progn      (set-frame-parameter (selected-frame) 'alpha '(75 . 75))
		(add-to-list 'default-frame-alist '(alpha . (75 . 75))))
)
;; Tweaks for Auctex
;; Inserts \( \) in LaTeX and $ $ in Tex when writing $
(add-hook 'plain-TeX-mode-hook
	  (lambda () (set (make-variable-buffer-local 'TeX-electric-math)
			  (cons "$" "$"))))
(add-hook 'LaTeX-mode-hook
	  (lambda () (set (make-variable-buffer-local 'TeX-electric-math)
			  (cons "\\(" "\\)"))))
(setq LaTeX-electric-left-right-brace t)
