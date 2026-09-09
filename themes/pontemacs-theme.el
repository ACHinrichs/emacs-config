(deftheme pontemacs "Minimal light theme using custom palette")

;; Palette
(let* ((S-yellow  "#d1d126")
       (S-orange  "#d18c26")
       (S-red     "#dc322f")
       (S-magenta "#d541e8")
       (S-violet  "#6741e8")
       (S-blue    "#268bd2")
       (S-cyan    "#26d1a9")
       (S-green   "#5ad126")

       (S-base03  "#1f262a")
       (S-base02  "#38454c")
       (S-base01  "#51636e")
       (S-base00  "#6a8290")
       (S-base0   "#8b9ea9")
       (S-base1   "#adbbc2")
       (S-base2   "#cfd7db")
       (S-base3   "#f1f3f4")

	   (S-foreground S-base03)
	   (S-background S-base3)
	   )

  (custom-theme-set-faces
   'pontemacs
   ;; Base UI
   `(default ((t (:foreground ,S-foreground :background ,S-background))))
   `(fringe ((t (:background ,S-base3))))
   `(region ((t (:background ,S-base2))))
   `(highlight ((t (:background ,S-base2))))
   `(cursor ((t (:background ,S-blue))))
   `(mode-line ((t (:foreground ,S-foreground :background ,S-base1 :box nil))))
   `(mode-line-inactive ((t (:foreground ,S-foreground :background ,S-base2 :box nil))))
   `(minibuffer-prompt ((t (:foreground ,S-blue :weight bold))))
   ;; Syntax
   `(font-lock-comment-face ((t (:foreground ,S-base00))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,S-base00))))
   `(font-lock-string-face ((t (:foreground ,S-green))))
   `(font-lock-keyword-face ((t (:foreground ,S-foreground :weight semi-bold))))
   `(font-lock-function-name-face ((t (:foreground ,S-foreground))))
   `(font-lock-variable-name-face ((t (:foreground ,S-foreground))))
   `(font-lock-type-name-face ((t (:foreground ,S-blue))))
   `(font-lock-constant-face ((t (:foreground ,S-cyan))))
   `(font-lock-builtin-face ((t (:foreground ,S-blue))))
   `(font-lock-warning-face ((t (:foreground ,S-red :weight bold))))

   ;; Links
   `(link ((t (:foreground ,S-blue :underline t))))
   `(link-visited ((t (:foreground ,S-blue :underline t, :italict))))

   ;; Search
   `(isearch ((t (:background ,S-yellow :foreground ,S-foreground))))
   `(lazy-highlight ((t (:background ,S-base2 :foreground ,S-foreground))))

   ;; Line numbers
   `(line-number ((t (:foreground ,S-base1 :background ,S-base3))))
   `(line-number-current-line ((t (:foreground ,S-base03 :background ,S-base3))))

   ;; Org mode (minimal)
   `(org-level-1 ((t (:foreground ,S-foreground :weight bold :height 1.2))))
   `(org-level-2 ((t (:foreground ,S-foreground :weight bold :height 1.1))))
   `(org-level-3 ((t (:foreground ,S-foreground :weight bold))))
   `(org-level-4 ((t (:foreground ,S-foreground :weight bold))))
   `(org-level-5 ((t (:foreground ,S-foreground :weight bold))))
   `(org-level-6 ((t (:foreground ,S-foreground :weight bold))))
   `(org-level-7 ((t (:foreground ,S-foreground :weight bold))))
   `(org-level-8 ((t (:foreground ,S-foreground :weight bold))))
   `(org-special-keyword ((t (:foreground ,S-base01 :weight bold :family "Fira Code"))))
   `(org-property-value ((t (:inherit default :family "Fira Code"))))
   `(org-code ((t (:foreground ,S-base02))))
   `(org-block ((t (:background ,S-base2 :foreground ,S-base02))))
   `(org-block-begin-line ((t (:foreground ,S-base00 :background ,S-base2))))
   `(org-block-end-line   ((t (:foreground ,S-base00 :background ,S-base2))))
   `(org-drawer ((t (:foreground ,S-base00 :family "Fira Mono"))))
   `(org-quote ((t (:slant italic :foreground ,S-base01 :background ,S-base2))))

   ;; Copilot
   `(copilot-overlay-face((t (:background ,S-base00 :foreground ,S-base2))))

   ;; Additional customizations can go here
   ))


;;;###autoload
(when load-file-name
  ;; Let Emacs find this theme when using `load-theme`
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'pontemacs)
