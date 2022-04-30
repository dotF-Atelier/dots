;;; +prog.el -*- lexical-binding: t; -*-
;;;
;; disable snipe mode
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)

;; lsp
;; clangd
(setq company-idle-delay 0.01)
(setq lsp-headerline-breadcrumb-enable t)
(setq lsp-log-io t)
(setq lsp-clients-clangd-args '("-j=16"
                                ;; "--all-scopes-completion"
                                ;; "--clang-tidy"
                                "--enable-config"
                                "--background-index"
                                "--completion-style=bundled"
                                "--pch-storage=memory"
                                "--header-insertion=never"
                                "--log=verbose"
                                "--header-insertion-decorators=0"
                                ;; "--clang-tidy-checks='-*,clang-analyzer-*,readability-*,modernize-*,-clang-analyzer-osx*,-readability-identifier-length,-readability-braces-around-statements'"
                                ))
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
