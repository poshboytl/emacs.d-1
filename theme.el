(defun os-x-theme ()
  (require 'color-theme)
  (require 'color-theme-gtk-ide)
  (color-theme-gtk-ide)

  ; window
  (setq initial-frame-alist
	'((left . 0) (top . 0)
	  (width . 237) (height . 65)))

  ; font
  (setq mac-allow-anti-aliasing t)
  (setq default-frame-alist
	'((font . "-apple-Menlo-medium-r-normal-*-13-*-*-*-m-0-iso10646-1"))))

(if window-system (os-x-theme) nil)

(provide 'theme)
