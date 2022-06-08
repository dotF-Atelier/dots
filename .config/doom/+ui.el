;;; +ui.el -*- lexical-binding: t; -*-

;; doom variable
(setq doom-theme 'doom-horizon)
(setq doom-modeline-enable-word-count t)
(setq doom-font (font-spec :family "Fantasque Sans Mono Nerd Font" :size 22 :weight 'normal)
      doom-variable-pitch-font (font-spec :family "sans" :size 19))

;; chinese fonts
(defun init-cjk-fonts()
  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
      charset (font-spec :family "WenQuanYi Micro Hei Mono" :size 19))))
(add-hook 'doom-init-ui-hook 'init-cjk-fonts)

(setq display-line-numbers-type 'relative)

;; icons scale
(after! :all-the-icons-nerd-fonts
  :config
  (all-the-icons-nerd-fonts-prefer))

(setq inhibit-compacting-font-caches t
      all-the-icons-scale-factor 0.9)
