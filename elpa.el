(setq package-user-dir (concat dotfiles-dir "elpa"))
(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq vendor-dir (concat dotfiles-dir "elpa-to-submit"))

(add-to-list 'load-path vendor-dir)

(defvar packages (list
                  'coffee-mode
                  'color-theme
                  'full-ack
                  'inf-ruby
                  'js2-mode
                  'magit
                  'mustache-mode
                  'peepopen
                  'ruby-mode
                  'ruby-test-mode
                  'starter-kit
                  'starter-kit-js
                  'starter-kit-lisp
                  'starter-kit-ruby
                  'textmate)
  "Libraries that should be installed by default.")

(defun elpa-install ()
  "Install all starter-kit packages that aren't installed."
  (interactive)
  (package-refresh-contents)
  (dolist (package packages)
    (unless (or (member package package-activated-list)
		(functionp package))
      (message "Installing %s" (symbol-name package))
      (package-install package))))

(defun regen-autoloads (&optional force-regen)
  "Regenerate the autoload definitions file if necessary and load it."
  (interactive "P")
  (let ((autoload-dir vendor-dir)
	(generated-autoload-file autoload-file))
    (when (or force-regen
              (not (file-exists-p autoload-file))
              (some (lambda (f) (file-newer-than-file-p f autoload-file))
                    (directory-files autoload-dir t "\\.el$")))
      (message "Updating autoloads...")
      (let (emacs-lisp-mode-hook)
	(update-directory-autoloads autoload-dir))))
  (load autoload-file))

(require 'package)
(dolist (source '(("josh" . "http://josh.github.com/elpa/")
                  ("technomancy" . "http://repo.technomancy.us/emacs/")
                  ("elpa" . "http://tromey.com/elpa/")))
  (add-to-list 'package-archives source t))
(package-initialize)
(regen-autoloads)

(provide 'elpa)
