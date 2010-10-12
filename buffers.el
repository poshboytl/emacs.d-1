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

;; speedbar
(require 'sr-speedbar)

(setq speedbar-frame-parameters
      '((minibuffer)
	(width . 40)
	(border-width . 0)
	(menu-bar-lines . 0)
	(tool-bar-lines . 0)
	(unsplittable . t)
	(left-fringe . 0)))
(setq speedbar-hide-button-brackets-flag t)
(setq speedbar-show-unknown-files t)
(setq speedbar-smart-directory-expand-flag t)
(setq speedbar-use-images nil)
(setq sr-speedbar-auto-refresh nil)
(setq sr-speedbar-max-width 70)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width-console 40)

(provide 'buffers)
