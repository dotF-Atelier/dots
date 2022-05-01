;;; +text.el -*- lexical-binding: t; -*-


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/workspace/notes/")

;; latex fomular scale
(after! org-mode
        (setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))
  )
