;; Set Loadpath
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Import deepest-blue
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deepest-blue)))
 '(custom-safe-themes
   (quote
    ("127e9eb02699a58d44385c455911dfa0a620fe00954411600dee89a09d0fa359" "3e2fd2a175d4e5df50cc09948260c620167124d9fc11c0bf71849d523efcf375" default)))
 '(package-selected-packages
   (quote
    (flyspell-lazy all-the-icons neotree markdown-preview-eww ac-haskell-process ac-math auto-complete auto-complete-auctex auto-complete-c-headers auto-complete-clang auto-complete-clang-async php-mode paradox mmm-mode magit auctex))))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))


;; Unstalls all uninstalled, but selected packages
(package-install-selected-packages)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "outline" :slant normal :weight normal :height 102 :width normal)))))


;; Multimode
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'html-mode "\\.php\\'" 'html-php)

(setq split-width-threshold 1 )
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(global-auto-revert-mode 1)
(desktop-save-mode 1)

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
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))
(add-hook 'TeX-mode-hook 'flyspell-babel-setup)
(add-hook 'TeX-mode-hook 'flyspell-buffer)

;; Enable Linenumbers
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
