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
(setq doom-font (font-spec :family "Fantasque Sans Mono Nerd Font" :size 22 :weight 'normal)
      doom-variable-pitch-font (font-spec :family "sans" :size 19))
;; Set font for chinese characters
;; Font should be twice the width of asci chars so that org tables align
;; This will break if run in terminal mode, so use conditional to only run for GUI.

(defun init-cjk-fonts()
  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
      charset (font-spec :family "WenQuanYi Micro Hei Mono" :size 19))))
(add-hook 'doom-init-ui-hook 'init-cjk-fonts)

(defun max/set-font (FONT-NAME CN-FONT-NAME &optional INITIAL-SIZE CN-FONT-RESCALE-RATIO)
  "Set different font-family for Latin and Chinese charactors."
  (let* ((size (or INITIAL-SIZE 14))
         (ratio (or CN-FONT-RESCALE-RATIO 0.0))
         (main (font-spec :name FONT-NAME :size size))
         (cn (font-spec :name CN-FONT-NAME)))
    (set-face-attribute 'default nil :font main)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font t charset cn))
    (setq face-font-rescale-alist (if (/= ratio 0.0) `((,CN-FONT-NAME . ,ratio)) nil))))

(setq display-line-numbers-type 'relative)

;; icons scale
(after! :all-the-icons-nerd-fonts
  :config
  (all-the-icons-nerd-fonts-prefer)
  )

(setq inhibit-compacting-font-caches t
      all-the-icons-scale-factor 0.9)
