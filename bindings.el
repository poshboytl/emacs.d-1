; general
(global-set-key "\C-xg" 'magit-status)

; completion
(global-set-key (kbd "M-ESC") 'hippie-expand)

; fuzzy matching
(global-set-key "\C-t" 'fuzzy-find-in-project)
(add-hook 'fuzzy-find-in-project-setup-hook
	  '(lambda ()
	     (fuzzy-find-project-root (textmate-project-root))))

; switch buffers like tabs in most OS X apps
(global-set-key "\M-{" 'previous-buffer)
(global-set-key "\M-}" 'next-buffer)

; unbind upcase
(global-unset-key "\C-x\C-u")

; no printing!
(global-unset-key (kbd "s-p"))

; no mailing!
(global-unset-key (kbd "C-x m"))

; don't minimize
(global-unset-key "\C-z")

(provide 'bindings)
