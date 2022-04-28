;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("org-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ))

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Kingstom"
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
;; (setq doom-font (font-spec :family "Fantasque Sans Mono" :size 22 :weight 'semi-light)
(setq doom-font (font-spec :family "Fantasque Sans Mono" :size 22 :weight 'normal)
      doom-variable-pitch-font (font-spec :family "arial" :size 19))
;; Set font for chinese characters
;; Font should be twice the width of asci chars so that org tables align
;; This will break if run in terminal mode, so use conditional to only run for GUI.
(defun chinese-font-reload()
  "reload chinese fonts"
  (interactive)
  (if (display-graphic-p)
      (dolist (charset '(kana han cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font)
        ;; charset (font-spec :family "Hiragino Sans GB" :size 18))))
        charset (font-spec :family "WenQuanYi Micro Hei Mono" :size 18)))))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-ayu-mirage)
(setq doom-theme 'doom-horizon)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/workspace/notes/")

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
;;

(setq which-key-idle-delay 1.0
      which-key-idle-secondary-delay 0
      which-key-use-C-h-commands nil
      which-key-side-window-max-height 1.0)

;; key binding
(define-key evil-insert-state-map (kbd "C-h") 'delete-backward-char)
(set-evil-initial-state! 'mu4e-main-mode 'insert)

;; disable snipe mode
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)

;; lsp
;; clangd
(setq company-idle-delay 0.01)
(setq lsp-headerline-breadcrumb-enable t)
(setq lsp-log-io t)
(setq lsp-clients-clangd-args '("-j=16"
                                "--all-scopes-completion"
                                "--clang-tidy"
                                "--enable-config"
                                "--background-index"
                                "--completion-style=detailed"
                                "--header-insertion=never"
                                "--log=verbose"
                                "--pch-storage=memory"
                                ;; "--query-driver=/usr/bin/g++"
                                "--header-insertion-decorators"))
(after! lsp-clangd (set-lsp-priority! 'clangd 2))

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

;; icons scale
(setq inhibit-compacting-font-caches t
      all-the-icons-scale-factor 0.9)

;; (setq +mu4e-gmail-accounts '(("kingstom.chen@gmail.com" . "/kingstom")))

;; (setq mu4e-get-mail-command "mbsync --all"
;;       ;; get emails and index every 5 minutes
;;       mu4e-update-interval 300
;;       ;; send emails with format=flowed
;;       mu4e-compose-format-flowed t
;;       ;; no need to run cleanup after indexing for gmail
;;       mu4e-index-cleanup nil
;;       mu4e-index-lazy-check t
;;       ;; more sensible date format
;;       mu4e -headers-date-format "%d.%m.%y"
;;       )
