;; ido
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-max-prospects 10)

;; nicer buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; nav
(setq nav-resize-frame-p t)

(provide 'buffers)
