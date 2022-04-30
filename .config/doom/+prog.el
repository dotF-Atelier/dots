;;; +prog.el -*- lexical-binding: t; -*-
;;;

;; disable snipe mode
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)

(after! company
  (setq company-idle-delay 0.2)
  (setq company-format-margin-function #'company-detect-icons-margin))

(after! realgud (advice-remove #'realgud:terminate #'+debugger--cleanup-after-realgud-a))

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
                                  ;; "--all-scopes-completion"
                                  "--clang-tidy"
                                  "--enable-config"
                                  "--background-index"
                                  "--completion-style=detailed"
                                  "--pch-storage=memory"
                                  "--header-insertion=never"
                                  ;; "--log=verbose"
                                  "--header-insertion-decorators=0"
                                  ;; "--clang-tidy-checks='-*,clang-analyzer-*,readability-*,modernize-*,-clang-analyzer-osx*,-readability-identifier-length,-readability-braces-around-statements'"
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

;; eglot
;; (set-eglot-client! 'cc-mode '("-j=16"
;;                                 "--all-scopes-completion"
;;                                 "--clang-tidy"
;;                                 "--enable-config"
;;                                 "--background-index"
;;                                 "--completion-style=bundled"
;;                                 "--pch-storage=memory"
;;                                 "--header-insertion=never"
;;                                 "--log=verbose"
;;                                 "--header-insertion-decorators=0"
;;                                 "--clang-tidy-checks='-*,clang-analyzer-*,readability-*,modernize-*,-clang-analyzer-osx*,-readability-identifier-length,-readability-braces-around-statements'"))

;; projectile
;; prevent load project from home directory
(after! projectile (setq projectile-project-root-files-bottom-up (remove ".git" projectile-project-root-files-bottom-up)))
(add-hook 'prog-mode-hook #'yas-minor-mode)
(setq projectile-project-root-functions '(projectile-root-local
                                          projectile-root-top-down
                                          projectile-root-top-down-recurring
                                          projectile-root-bottom-up))
(after! projectile
  (nconc projectile-globally-ignored-directories
         '(".stack-work" "node_modules" ".local" "3rdparty")))

(setq vterm-module-cmake-args "-DUSE_SYSTEM_LIBVTERM=yes")
