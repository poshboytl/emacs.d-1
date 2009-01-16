(load "~/.emacs.d/themes/all_hallows_eve")
(load "~/.emacs.d/themes/railscasts")

(require 'color-theme)
(setq color-theme-is-global t)

(if window-system
    (color-theme-all-hallows-eve)
  (color-theme-dark-laptop))

(setq mac-allow-anti-aliasing nil)

; font
(if system-macbook-pro
    (setq default-frame-alist '((font . "-apple-Bitstream_Vera_Sans_Mono-medium-normal-normal-Roman-18-*-*-*-*-*-fontset-auto7"))))

(if system-macbook-air
  (setq default-frame-alist '((font . "-apple-Bitstream_Vera_Sans_Mono-medium-normal-normal-Roman-12-*-*-*-*-*-fontset-auto7"))))

(provide 'theme)
