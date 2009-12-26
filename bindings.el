; magit
(global-set-key "\C-xg" 'magit-status)

; completion
(global-set-key (kbd "M-ESC") 'hippie-expand)

; fuzzy matching
(global-set-key "\C-t" 'fuzzy-find-in-project)
(add-hook 'fuzzy-find-in-project-setup-hook
	  '(lambda ()
	     (fuzzy-find-project-root (textmate-project-root))))

; open file
(global-set-key (kbd "s-o") 'find-file)

; buffer switching
(global-set-key (kbd "s-{") 'previous-buffer)
(global-set-key (kbd "s-}") 'next-buffer)
(global-set-key (kbd "M-s-<left>") 'previous-buffer)
(global-set-key (kbd "M-s-<right>") 'next-buffer)

; close window
(global-set-key (kbd "s-w") 'close-buffer)

; window switching
(global-set-key (kbd "s-`") 'other-window)

; prefer dired over dumping dir list to buffer
(global-set-key "\C-x\C-d" 'dired)

; unbind upcase
(global-unset-key "\C-x\C-u")

; no printing!
(global-unset-key (kbd "s-p"))

; no mailing!
(global-unset-key (kbd "C-x m"))

; don't minimize
(global-unset-key "\C-z")

(provide 'bindings)
