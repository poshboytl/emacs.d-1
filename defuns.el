(defun large-font ()
  (interactive)
  (set-face-font
   'default
   "-apple-DejaVu_Sans_Mono-medium-normal-normal-*-20-*-*-*-m-0-iso10646-"))

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

(defun esk-ident-on-return ()
  (local-set-key (kbd "RET") 'newline-and-indent))

(defun esk-paredit-nonlisp ()
  (set (make-local-variable 'paredit-space-for-delimiter-predicates)
       '((lambda (endp delimiter) nil)))
  (paredit-mode 1))

(provide 'defuns)
