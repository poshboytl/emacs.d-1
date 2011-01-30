(defun esk-turn-on-paredit ())
(defun esk-paredit-nonlisp ())

(defun large-font ()
  (interactive)
  (set-face-font
   'default
   "-apple-DejaVu_Sans_Mono-medium-normal-normal-*-20-*-*-*-m-0-iso10646-"))

(defun restore-frame ()
  (interactive)
  (set-frame-size (selected-frame)
                  (cdr (assoc 'width default-frame-alist))
                  (cdr (assoc 'height default-frame-alist)))
  (set-frame-position (selected-frame)
                      (cdr (assoc 'left default-frame-alist))
                      (cdr (assoc 'top default-frame-alist))))

(defun maximize-frame ()
  (interactive)
  (set-frame-size (selected-frame)
                  (display-pixel-width)
                  (display-pixel-height))
  (set-frame-position (selected-frame) 0 0))

(defun close-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))

(defun esk-tabify-buffer ()
  (interactive)
  (tabify (point-min) (point-max)))

(defun esk-cleanup-on-save ()
  (add-hook 'before-save-hook 'esk-cleanup-buffer))

(defun esk-cleanup-buffer ()
  (interactive)
  (if indent-tabs-mode
      (esk-tabify-buffer)
    (esk-untabify-buffer))
  (delete-trailing-whitespace))

(provide 'defuns)
