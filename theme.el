(setq load-path (cons "~/.emacs.d/vendor/color-theme-6.6.0" load-path))
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

(load "~/.emacs.d/themes/color-theme-all-hallows-eve")

(if window-system
    (color-theme-all-hallows-eve)
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
  (setq default-frame-alist '((font . "-apple-Bitstream_Vera_Sans_Mono-medium-normal-normal-Roman-14-*-*-*-*-*-fontset-auto7"))))

(provide 'theme)
