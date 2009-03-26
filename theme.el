(setq load-path (cons "~/.emacs.d/vendor/color-theme-6.6.0" load-path))
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

(color-theme-dark-laptop)

(setq mac-allow-anti-aliasing t)

; window
(setq initial-frame-alist
      '((left . 0) (top . 0)
	(width . 237) (height . 65)))

; font
(setq default-frame-alist '((font . "-apple-Monaco-medium-normal-normal--18-*-*-*-*-*-fontset-auto1")))

(provide 'theme)
