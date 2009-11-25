(setq load-path (cons "~/.emacs.d/vendor/color-theme-6.6.0" load-path))
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

(load "~/.emacs.d/vendor/color-theme-ir-black")

(if window-system
    (color-theme-gtk-ide)
  nil)

(setq mac-allow-anti-aliasing t)

; window
(setq initial-frame-alist
      '((left . 0) (top . 0)
	(width . 237) (height . 65)))

; font
(setq default-frame-alist
      '((font . "-apple-Menlo-medium-r-normal-*-13-*-*-*-m-0-iso10646-1")))

(provide 'theme)
