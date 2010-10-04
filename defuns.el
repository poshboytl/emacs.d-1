(defun recompile-init ()
  "Byte-compile all your dotfiles again."
  (interactive)
  (byte-recompile-directory dotfiles-dir 0)
  (byte-recompile-directory (concat dotfiles-dir "elpa-to-submit/" 0)))

(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

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

(defun tabify-buffer ()
  (interactive)
  (tabify (point-min) (point-max)))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))

(provide 'defuns)
