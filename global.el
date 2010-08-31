;; no splash screen
(setq inhibit-startup-screen t)

;; disable auto-save files (#foo#)
(setq auto-save-default nil)

;; disable backup files (foo~)
(setq backup-inhibited t)

;; disable auto-save-list/.saves
(setq auto-save-list-file-prefix nil)

;; always open in the same window
(setq ns-pop-up-frames nil)

;; show column number
(column-number-mode 1)

;; no bell
(setq ring-bell-function 'ignore)

;; show extra whitespace
(setq show-trailing-whitespace t)

;; delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; ensure last line is a return
(setq require-final-newline t)

;; set encoding
(prefer-coding-system 'utf-8)

;; use clipboard
(setq x-select-enable-clipboard t)

;; fix mini-buffer resizing like crazy aquamacs bug
(setq resize-mini-windows 'grow-only)

(provide 'global)
