(require 'package)
(package-initialize)

(defvar packages (list
		  'css-mode
		  'gist
		  'inf-ruby
		  'js2-mode
		  'nxml-mode
		  'ruby-mode)
  "Libraries that should be installed by default.")

(defun elpa-install ()
  "Install all starter-kit packages that aren't installed."
  (interactive)
  (dolist (package packages)
    (unless (functionp package)
      (package-install package))))

;; On your first run, this should pull in all the base packages.
;; But you might not be online, so ignore errors.
(ignore-errors
  (message "Checking base list of packages...")
  (elpa-install))

(provide 'elpa)
