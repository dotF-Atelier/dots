;;; +ui.el -*- lexical-binding: t; -*-

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-ayu-mirage)
(setq doom-theme 'doom-horizon)
;; doom-mode-line stuff
(setq doom-modeline-enable-word-count t)
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
(setq doom-font (font-spec :family "Fantasque Sans Mono Nerd Font" :size 22 :weight 'normal)
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

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; (setq display-line-numbers t)
;; (setq doom-line-numbers-style 'relative)
(setq display-line-numbers-type 'relative)

;; icons scale
(after! :all-the-icons-nerd-fonts
  :config
  (all-the-icons-nerd-fonts-prefer)
  )

(setq inhibit-compacting-font-caches t
      all-the-icons-scale-factor 0.9)
