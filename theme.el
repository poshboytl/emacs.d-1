(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

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
