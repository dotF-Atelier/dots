;;; +key.el -*- lexical-binding: t; -*-

;; key binding
(define-key evil-insert-state-map (kbd "C-h") 'delete-backward-char)
(define-key org-mode-map (kbd "C-c ]") 'org-ref-insert-link)
