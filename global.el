; no splash screen
(setq inhibit-startup-screen t)

; show column number
(column-number-mode 1)

; no bell
(setq ring-bell-function 'ignore)

; show extra whitespace
(setq show-trailing-whitespace t)

; delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; ensure last line is a return
(setq require-final-newline t)

; set encoding
(prefer-coding-system 'utf-8)

; move files to the trash instead of rm
(setq delete-by-moving-to-trash t)

; use clipboard
(setq x-select-enable-clipboard t)

; store backup and autosave files in tmp
(defvar user-temporary-file-directory
  (concat temporary-file-directory user-login-name "/"))
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))

(provide 'global)
