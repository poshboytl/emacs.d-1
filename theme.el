(defun term-theme ()
  ;; disable menu bar
  (menu-bar-mode -1))

(defun os-x-theme ()
  ;; window
  (setq default-frame-alist
	'((left . 22) (top . 44)
	  (width . 80) (height . 50)))

  ;; font
  (setq mac-allow-anti-aliasing t)
  (set-face-font
   'default
   "-apple-DejaVu_Sans_Mono-medium-normal-normal-*-12-*-*-*-m-0-iso10646-"))

(if window-system (os-x-theme)
  (term-theme))

(setq frame-background-mode (intern (getenv "BACKGROUND")))

(when (>= (display-color-cells) 256)
  (require 'color-theme)
  (if (string-equal (getenv "BACKGROUND") "dark")
      (color-theme-charcoal-black)
    (color-theme-gtk-ide)))

(provide 'theme)
