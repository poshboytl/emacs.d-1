; no splash screen
(setq inhibit-startup-screen t)

; show column number
(column-number-mode 1)

; disable auto-save files (#foo#)
(setq auto-save-default nil)

; disable backup files (foo~)
(setq backup-inhibited t)

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

; set computer
(defun system-hostname ()
  (interactive)
  (shell-command-to-string "hostname"))

(if (equal (system-hostname) "Joshs-MacBook-Pro.local\n")
    (setq system-macbook-pro 't)
  (setq system-macbook-pro nil))

(if (equal (system-hostname) "Joshs-MacBook-Air.local\n")
    (setq system-macbook-air 't)
  (setq system-macbook-air nil))
