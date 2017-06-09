
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages
   (quote
    (ac-haskell-process ac-math auto-complete auto-complete-auctex auto-complete-c-headers auto-complete-clang auto-complete-clang-async php-mode paradox mmm-mode magit auctex))))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

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
(setq-default auto-fill-function 'do-auto-fill)
(global-auto-revert-mode 1)
(desktop-save-mode 1)

(setq c-default-style "linux"
      c-basic-offset 4)

;; Start server, so that emacsclient can open in emacs
(server-start)
