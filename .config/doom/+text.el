;;; +text.el -*- lexical-binding: t; -*-


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/workspace/notes/"
      org-preview-latex-default-process 'dvisvgm)

;; ;; org-roam-bibtex stuff
;; (use-package! org-roam-bibtex
;;   :hook (org-roam-mode . org-roam-bibtex-mode))
;; (setq orb-preformat-keywords
;;       '("citekey" "title" "url" "author-or-editor" "keywords" "file")
;;       orb-process-file-keyword t
;;       orb-attached-file-extensions '("pdf"))
;; (setq orb-templates
;;       '(("r" "ref" plain(function org-roam-capture--get-point)
;;          ""
;;          :file-name "${citekey}"
;;          :head "#+TITLE: ${citekey}: ${title}\n#+ROAM_KEY: ${ref}
;; - tags ::
;; - keywords :: ${keywords}

;; ;; org-roam related things
;; (after! org-roam
;;   (setq org-roam-directory "~/workspace/notes/org-roam")

;;   (add-hook 'after-init-hook 'org-roam-mode)

;;   ;; Let's set up some org-roam capture templates
;;   (setq org-roam-capture-templates
;;         (quote (("d" "default" plain (function org-roam--capture-get-point)
;;                  "%?"
;;                  :file-name "%<%Y-%m-%d-%H%M%S>-${slug}"
;;                  :head "#+title: ${title}\n"
;;                  :unnarrowed t)
;;                 )))

;;   ;; And now we set necessary variables for org-roam-dailies
;;   (setq org-roam-dailies-capture-templates
;;         '(("d" "default" entry
;;            #'org-roam-capture--get-point
;;            "* %?"
;;            :file-name "daily/%<%Y-%m-%d>"
;;            :head "#+title: %<%Y-%m-%d>\n\n"))))
