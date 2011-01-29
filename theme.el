(defun os-x-theme ()
  (menu-bar-mode 1)

  ;; window
  (setq default-frame-alist
	'((left . 22) (top . 44)
          (width . 80) (height . 50)))

  ;; font
  (setq mac-allow-anti-aliasing t)
  (set-face-font
   'default
   "-apple-DejaVu_Sans_Mono-medium-normal-normal-*-12-*-*-*-m-0-iso10646-"))

(when window-system
  (os-x-theme))

(when (getenv "BACKGROUND")
  (setq frame-background-mode (intern (getenv "BACKGROUND"))))

(when (>= (display-color-cells) 256)
  (if (string-equal (getenv "BACKGROUND") "dark")
      (color-theme-charcoal-black)
    (color-theme-gtk-ide)))

(provide 'theme)
