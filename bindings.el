;; buffer menu
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; window
(global-set-key (kbd "s-w") 'close-buffer)
(global-set-key (kbd "s-k") 'kill-this-buffer)

;; font size
(global-set-key (kbd "s-+") 'text-scale-adjust)
(global-set-key (kbd "s--") 'text-scale-adjust)
(global-set-key (kbd "s-0") 'text-scale-adjust)
(global-set-key (kbd "s-=") 'text-scale-adjust)

(provide 'bindings)
