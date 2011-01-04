;; buffer menu
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; speedbar
(global-set-key (kbd "C-c s") 'sr-speedbar-toggle)

(if (boundp 'osx-key-mode-map)
    (progn
      (define-key osx-key-mode-map (kbd "A-w") 'close-buffer)
      (define-key osx-key-mode-map (kbd "A-k") 'kill-this-buffer)))

;; font size
(global-set-key (kbd "s-+") 'text-scale-adjust)
(global-set-key (kbd "s--") 'text-scale-adjust)
(global-set-key (kbd "s-0") 'text-scale-adjust)
(global-set-key (kbd "s-=") 'text-scale-adjust)

;; prefer dired over dumping dir list to buffer
(global-set-key "\C-x\C-d" 'dired)

;; M-x without meta
(global-set-key (kbd "C-x C-m") 'execute-extended-command)

(provide 'bindings)
