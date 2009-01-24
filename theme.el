(require 'color-theme)
(setq color-theme-is-global t)

(if window-system
    (color-theme-gtk-ide)
  (color-theme-dark-laptop))

(setq mac-allow-anti-aliasing nil)

; window
(setq initial-frame-alist
      '((left . 0) (top . 0)
	(width . 237) (height . 65)))

; font
(if system-macbook-pro
    (setq default-frame-alist '((font . "-apple-Bitstream_Vera_Sans_Mono-medium-normal-normal-Roman-18-*-*-*-*-*-fontset-auto7"))))

(if system-macbook-air
  (setq default-frame-alist '((font . "-apple-Bitstream_Vera_Sans_Mono-medium-normal-normal-Roman-12-*-*-*-*-*-fontset-auto7"))))

(provide 'theme)
