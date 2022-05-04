;;; +text.el -*- lexical-binding: t; -*-


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/workspace/notes/")
(setq org-noter-notes-search-path '("~/workspace/notes/noter/"))

;; latex fomular scale
(setq org-preview-latex-default-process 'dvisvgm)

;; Set up org-mode export stuff
(after! org
  (add-to-list 'org-latex-classes
               '("apa6"
                 "\\documentclass{apa6}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

  (add-to-list 'org-latex-classes
               '("report"
                 "\\documentclass{report}"
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

  (add-to-list 'org-latex-classes
               '("koma-article"
                 "\\documentclass{scrartcl}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

  (add-to-list 'org-latex-classes
               '("memoir"
                 "\\documentclass{memoir}"
                 ("\\book{%s}" . "\\book*{%s}")
                 ("\\part{%s}" . "\\part*{%s}")
                 ("\\chapter{%s} .\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (add-to-list 'org-latex-classes
               '("paper"
                 "\\documentclass{paper}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (after! org-noter
    (setq
     org-noter-notes-search-path "~/org/org-roam/references/"
     org-noter-hide-other nil
     org-noter-separate-notes-from-heading t
     org-noter-always-create-frame nil)
    (map!
     :map org-noter-doc-mode-map
     :leader
     :desc "Insert note"
     "m i" #'org-noter-insert-note
     :desc "Insert precise note"
     "m p" #'org-noter-insert-precise-note
     :desc "Go to previous note"
     "m k" #'org-noter-sync-prev-note
     :desc "Go to next note"
     "m j" #'org-noter-sync-next-note
     :desc "Create skeleton"
     "m s" #'org-noter-create-skeleton
     :desc "Kill session"
     "m q" #'org-noter-kill-session
     )
    )
  )

;; helm-bibtex related stuff
;; (after! helm
;;   (use-package! helm-bibtex
;;     :custom
;;     ;; In the lines below I point helm-bibtex to my default library file.
;;     (bibtex-completion-bibliography '("~/Zotero/bibtex/library.bib"))
;;     (reftex-default-bibliography '("~/Zotero/bibtex/library.bib"))
;;     ;; The line below tells helm-bibtex to find the path to the pdf
;;     ;; in the "file" field in the .bib file.
;;     (bibtex-completion-pdf-field "file")
;;     :hook (Tex . (lambda () (define-key Tex-mode-map "\C-ch" 'helm-bibtex))))
;;   ;; I also like to be able to view my library from anywhere in emacs, for example if I want to read a paper.
;;   ;; I added the keybind below for that.
;;   (map! :leader
;;         :desc "Open literature database"
;;         "o l" #'helm-bibtex)
;;   ;; And I added the keybinds below to make the helm-menu behave a bit like the other menus in emacs behave with evil-mode.
;;   ;; Basically, the keybinds below make sure I can scroll through my list of references with C-j and C-k.
;;   (map! :map helm-map
;;         "C-j" #'helm-next-line
;;         "C-k" #'helm-previous-line)
;;   )

;; ;; Set up org-ref stuff
;; (use-package! org-ref
;;   :custom
;;   ;; Again, we can set the default library
;;   (org-ref-default-bibliography "~/Zotero/bibtex/library.bib")
;;   ;; The default citation type of org-ref is cite:, but I use citep: much more often
;;   ;; I therefore changed the default type to the latter.
;;   (org-ref-default-citation-link "citep")
;;   ;; The function below allows me to consult the pdf of the citation I currently have my cursor on.
;;   (defun my/org-ref-open-pdf-at-point ()
;;     "Open the pdf for bibtex key under point if it exists."
;;     (interactive)
;;     (let* ((results (org-ref-get-bibtex-key-and-file))
;;            (key (car results))
;;            (pdf-file (funcall org-ref-get-pdf-filename-function key)))
;;       (if (file-exists-p pdf-file)
;;           (find-file pdf-file)
;;         (message "No PDF found for %s" key))))

;;   (setq org-ref-completion-library 'org-ref-ivy-cite
;;         org-export-latex-format-toc-function 'org-export-latex-no-toc
;;         org-ref-get-pdf-filename-function
;;         (lambda (key) (car (bibtex-completion-find-pdf key)))
;;         ;; See the function I defined above.
;;         org-ref-open-pdf-function 'my/org-ref-open-pdf-at-point
;;         ;; For pdf export engines.
;;         org-latex-pdf-process (list "latexmk -pdflatex='%latex -shell-escape -interaction nonstopmode' -pdf -bibtex -f -output-directory=%o %f")
;;         ;; I use orb to link org-ref, helm-bibtex and org-noter together (see below for more on org-noter and orb).
;;         org-ref-notes-function 'orb-edit-notes)

;;   )

;; This is to use pdf-tools instead of doc-viewer
(use-package! pdf-tools
  :config
  (pdf-tools-install)
  ;; This means that pdfs are fitted to width by default when you open them
  (setq-default pdf-view-display-size 'fit-width)
  :custom
  (pdf-annot-activate-created-annotations t "automatically annotate highlights"))

;; ;; org-noter stuff
;; (after! org-noter
;;   (setq
;;    org-noter-notes-search-path '("~/workspace/note/org-roam/")
;;    org-noter-hide-other nil
;;    org-noter-separate-notes-from-heading t
;;    org-noter-always-create-frame nil)
;;   (map!
;;    :map org-noter-doc-mode-map
;;    :leader
;;    :desc "Insert note"
;;    "m i" #'org-noter-insert-note
;;    :desc "Insert precise note"
;;    "m p" #'org-noter-insert-precise-note
;;    :desc "Go to previous note"
;;    "m k" #'org-noter-sync-prev-note
;;    :desc "Go to next note"
;;    "m j" #'org-noter-sync-next-note
;;    :desc "Create skeleton"
;;    "m s" #'org-noter-create-skeleton
;;    :desc "Kill session"
;;    "m q" #'org-noter-kill-session
;;    )
;;   )
;; ;; org-roam-bibtex stuff
;; (use-package! org-roam-bibtex
;;   :hook (org-roam-mode . org-roam-bibtex-mode))

;; (setq orb-preformat-keywords
;;       '("citekey" "title" "url" "author-or-editor" "keywords" "file")
;;       orb-process-file-keyword t
;;       orb-file-field-extensions '("pdf"))

;; (setq orb-templates
;;       '(("r" "ref" plain(function org-roam-capture--get-point)
;;          ""
;;          :file-name "${citekey}"
;;          :head "#+TITLE: ${citekey}: ${title}\n#+ROAM_KEY: ${ref}
;; - tags ::
;; - keywords :: ${keywords}

;; * Notes
;; :PROPERTIES:
;; :Custom_ID: ${citekey}
;; :URL: ${url}
;; :AUTHOR: ${author-or-editor}
;; :NOTER_DOCUMENT: ${file}
;; :NOTER_PAGE:
;; :END:")))
;; ;; org-roam related things
;; (after! org-roam
;;   (setq org-roam-directory "~/workspace/note/org-roam")

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
