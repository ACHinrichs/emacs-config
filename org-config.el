;;(format "%s"
;;        (replace-regexp-in-string
;;         (rx line-start
;;             (+ (| alphanumeric blank "." "|" ">")))
;;         "" (format "%s" strr)))

(require 'oc-biblatex)
 (setq org-cite-export-processors
	  '((latex biblatex)
		(t ata)))

(require 'org-ref)
(add-hook 'org-export-before-parsing-hook 'org-ref-acronyms-before-parsing)
(add-hook 'org-export-before-parsing-hook 'org-ref-glossary-before-parsing)
