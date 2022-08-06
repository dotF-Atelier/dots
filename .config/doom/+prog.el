;;; +prog.el -*- lexical-binding: t; -*-
;;;

;; disable snipe mode
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)

(after! company
  (setq company-idle-delay 0.1)
  (setq company-format-margin-function #'company-detect-icons-margin))

(after! realgud (advice-remove #'realgud:terminate #'+debugger--cleanup-after-realgud-a))

(defvar gud-overlay
  (let* ((ov (make-overlay (point-min) (point-min))))
    (overlay-put ov 'face '(:background "#2D2F37")) ;; colors for Leuven theme
    ov)
  "Overlay variable for GUD highlighting.")
(defadvice gud-display-line (after my-gud-highlight act)
 "Highlight current line."
 (let* ((ov gud-overlay)
        (bf (gud-find-file true-file)))
   (save-excursion
     (with-selected-window (get-buffer-window bf)
       (save-restriction
         (goto-line (ad-get-arg 1))
         (recenter)))
     (set-buffer bf)
     (move-overlay ov (line-beginning-position) (line-end-position)
                   (current-buffer)))))

(add-to-list 'auto-mode-alist '("\\.inl\\'" . +cc-c-c++-objc-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . +cc-c-c++-objc-mode))

;; lsp
(setq +format-with-lsp nil)
(after! lsp-mode
  (setq lsp-headerline-breadcrumb-enable t
        lsp-file-watch-threshold 4000
        lsp-log-io nil
        lsp-headerline-breadcrumb-segments '(file symbols)
        lsp-imenu-index-symbol-kinds '(File Module Namespace Package Class Method Enum Interface
                                            Function Variable Constant Struct Event Operator TypeParameter)
        )
  (dolist (dir '("[/\\\\]\\.ccls-cache\\'"
                 "[/\\\\]\\.mypy_cache\\'"
                 "[/\\\\]\\.pytest_cache\\'"
                 "[/\\\\]\\.cache\\'"
                 "[/\\\\]\\.clwb\\'"
                 "[/\\\\]__pycache__\\'"
                 "[/\\\\]bazel-bin\\'"
                 "[/\\\\]bazel-code\\'"
                 "[/\\\\]bazel-genfiles\\'"
                 "[/\\\\]bazel-out\\'"
                 "[/\\\\]bazel-testlogs\\'"
                 "[/\\\\]third_party\\'"
                 "[/\\\\]third-party\\'"
                 "[/\\\\]buildtools\\'"
                 "[/\\\\]out\\'"
                 ))
    (push dir lsp-file-watch-ignored-directories))
  (setq lsp-clients-clangd-args '("-j=8"
                                  "--all-scopes-completion"
                                  "--clang-tidy"
                                  "--enable-config"
                                  "--background-index"
                                  "--completion-style=bundled"
                                  "--pch-storage=memory"
                                  "--header-insertion=never"
                                  "--log=verbose"
                                  "--header-insertion-decorators=0"
                                  ))
)

(after! lsp-ui
  (setq lsp-ui-doc-enable nil
        lsp-lens-enable nil
        lsp-ui-sideline-enable nil
        lsp-ui-doc-include-signature t
        lsp-ui-doc-max-height 15
        lsp-ui-doc-max-width 100))


(after! lsp-clangd (set-lsp-priority! 'clangd 2))

(add-hook 'prog-mode-hook #'yas-minor-mode)

;; projectile
;; prevent load project from home directory

(c-set-offset 'inline-open '0)
(defun vlad-cc-style()
  (c-set-style "linux")
  (c-set-offset 'innamespace '0)
  (c-set-offset 'inextern-lang '0)
  (c-set-offset 'inline-open '0)
  (c-set-offset 'label '*)
  (c-set-offset 'case-label '*)
  (c-set-offset 'access-label '/)
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
)

(add-hook 'c++-mode-hook 'vlad-cc-style)
