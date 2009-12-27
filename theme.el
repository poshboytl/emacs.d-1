(defun term-theme ()
  ; disable menu bar
  (menu-bar-mode -1)
)

(defun os-x-theme ()
  (require 'color-theme)
  (require 'color-theme-twilight)
  (color-theme-twilight)

  ; window
  (setq default-frame-alist
	'((left . 0) (top . 0)
	  (width . 80) (height . 40)))

  ; font
  (setq mac-allow-anti-aliasing t)
  (set-face-font 'default
		 "-apple-DejaVu_Sans_Mono-medium-normal-normal-*-12-*-*-*-m-0-iso10646-"))

(if window-system (os-x-theme)
  (term-theme))

(provide 'theme)
