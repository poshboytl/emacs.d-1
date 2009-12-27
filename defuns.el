(defun recompile-init ()
  "Byte-compile all your dotfiles again."
  (interactive)
  (byte-recompile-directory dotfiles-dir 0)
  (byte-recompile-directory (concat dotfiles-dir "elpa-to-submit/" 0)))

(defun regen-autoloads (&optional force-regen)
  "Regenerate the autoload definitions file if necessary and load it."
  (interactive "P")
  (let ((autoload-dir (concat dotfiles-dir "/elpa-to-submit"))
        (generated-autoload-file autoload-file))
    (when (or force-regen
              (not (file-exists-p autoload-file))
              (some (lambda (f) (file-newer-than-file-p f autoload-file))
                    (directory-files autoload-dir t "\\.el$")))
      (message "Updating autoloads...")
      (let (emacs-lisp-mode-hook)
        (update-directory-autoloads autoload-dir))))
  (load autoload-file))

(defun restore-frame ()
  (interactive)
  (set-frame-size (selected-frame)
		  (cdr (assoc 'width initial-frame-alist))
		  (cdr (assoc 'height initial-frame-alist)))
  (set-frame-position (selected-frame)
		      (cdr (assoc 'left initial-frame-alist))
		      (cdr (assoc 'top initial-frame-alist))))

(defun maximize-frame ()
  (interactive)
  (set-frame-size (selected-frame) 1000 1000)
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
