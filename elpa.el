(require 'package)

(setq package-archives '(("josh" . "http://josh.github.com/elpa/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar packages '(coffee-mode
                   color-theme
                   color-theme-solarized
                   color-theme-twilight
                   full-ack
                   inf-ruby
                   magit
                   mustache-mode
                   rhtml
                   rinari
                   ruby-mode
                   starter-kit
                   starter-kit-bindings
                   starter-kit-lisp
                   starter-kit-ruby
                   textmate)
  "Libraries that should be installed by default.")

(dolist (package packages)
  (when (not (package-installed-p package))
    (package-install package)))

(provide 'elpa)
