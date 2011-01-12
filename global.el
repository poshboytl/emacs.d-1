;; disable auto-save files (#foo#)
(setq auto-save-default nil)

;; disable backup files (foo~)
(setq backup-inhibited t)

;; disable auto-save-list/.saves
(setq auto-save-list-file-prefix nil)

;; always open in the same window
(setq ns-pop-up-frames nil)

;; show extra whitespace
(setq show-trailing-whitespace t)

;; delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; hide empty line fringe
(set-default 'indicate-empty-lines nil)

(provide 'global)
