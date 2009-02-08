(setq load-path (cons "~/.emacs.d/vendor/color-theme-6.6.0" load-path))
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

(load "~/.emacs.d/vendor/color-theme-all-hallows-eve/color-theme-all-hallows-eve")

(if window-system
    (color-theme-all-hallows-eve)
  (color-theme-dark-laptop))

(setq mac-allow-anti-aliasing nil)

; window
(setq initial-frame-alist
      '((left . 0) (top . 0)
	(width . 237) (height . 65)))

; font
(setq default-frame-alist '((font . "-apple-Monaco-medium-normal-normal--18-*-*-*-*-*-fontset-auto1")))

(provide 'theme)
