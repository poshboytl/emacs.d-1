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

(defvar *config-root* "~/.emacs.d")

(defun ido-find-config ()
  (interactive)
  (find-file
   (concat *config-root*
	   (ido-completing-read "Config file: "
				(directory-files *config-root* nil "^[^.]")))))

(defvar *37s-root* "/Volumes/37signals")

(defun ido-find-37s-app ()
  (interactive)
  (find-file *37s-root*
	     (ido-completing-read "Apps: "
				  (directory-files *37s-root* nil "^[^.]"))))

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
