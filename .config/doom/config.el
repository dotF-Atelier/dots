;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Npchitman"
      user-mail-address "npchitman@outlook.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Fantasque Sans Mono" :size 22 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "arial" :size 19))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-ayu-mirage)
(setq doom-theme 'doom-horizon)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq org-directory "~/workspace/notes/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; (setq display-line-numbers t)
(setq doom-line-numbers-style 'relative)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;

;; key binding
(define-key evil-insert-state-map (kbd "C-h") 'delete-backward-char)

;; disable snipe mode
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)
(setq lsp-headerline-breadcrumb-enable t)

;; lsp
;; clangd
(setq company-idle-delay 0.01)
(setq lsp-clients-clangd-args '("-j=12"
                                "--background-index"
                                "--clang-tidy"
                                "--clang-tidy-checks=performance-*,bugprone-*"
                                "--completion-style=detailed"
                                "--header-insertion=never"
                                "--header-insertion-decorators=0"))
(after! lsp-clangd (set-lsp-priority! 'clangd 2))
(use-package-hook! lsp-mode
  :post-config
  (setq lsp-enable-on-type-formatting nil))

;; ccls
;; (after! ccls
;;   (setq ccls-initialization-options '(:index (:threads 6 :comments 2)
;;                                      :completion (:detailedLabel nil)

;;                                       ))
;;   (set-lsp-priority! 'ccls 1)) ; optional as ccls is the default in Doom


;; prevent load project from home directory
(after! projectile (setq projectile-project-root-files-bottom-up (remove ".git" projectile-project-root-files-bottom-up)))
(add-hook 'prog-mode-hook #'yas-minor-mode)
(setq vterm-module-cmake-args "-DUSE_SYSTEM_LIBVTERM=yes")

;; icons scale
(setq inhibit-compacting-font-caches t
      all-the-icons-scale-factor 1.0)

;; tabbar fonts
(after! centaur-tabs (centaur-tabs-change-fonts "arial" 120))



;; tabs
