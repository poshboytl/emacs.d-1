;; readline kill backward
(global-set-key (kbd "C-M-h") 'backward-kill-word)

;; buffer menu
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; magit
(global-set-key "\C-xg" 'magit-status)

;; start a new shell
(global-set-key (kbd "C-x C-z") 'shell)

;; completion
(global-set-key (kbd "<escape>") 'hippie-expand)

;; open file
(global-set-key (kbd "s-o") 'find-file)

;; buffer switching
(global-set-key (kbd "s-{") 'previous-buffer)
(global-set-key (kbd "s-}") 'next-buffer)
(global-set-key (kbd "M-s-<left>") 'previous-buffer)
(global-set-key (kbd "M-s-<right>") 'next-buffer)

;; save
(global-set-key (kbd "M-s") 'save-buffer)

;; undo
(global-set-key (kbd "M-z") 'undo)

;; close window
(global-set-key (kbd "s-w") 'close-buffer)

(if (boundp 'osx-key-mode-map)
    (progn
      (define-key osx-key-mode-map (kbd "A-w") 'close-buffer)
      (define-key osx-key-mode-map (kbd "A-k") 'kill-this-buffer)))

;; window switching
(global-set-key (kbd "s-`") 'other-window)

;; prefer dired over dumping dir list to buffer
(global-set-key "\C-x\C-d" 'dired)

;; M-x without meta
(global-set-key (kbd "C-x C-m") 'execute-extended-command)

;; no printing!
(global-unset-key (kbd "s-p"))

;; no mailing!
(global-unset-key (kbd "C-x m"))

;; don't minimize
(global-unset-key "\C-z")

(provide 'bindings)
