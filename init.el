; load paths
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit"))

(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq package-user-dir (concat dotfiles-dir "elpa"))
(setq custom-file (concat dotfiles-dir "custom.el"))

(require 'cl)
(require 'elpa)
(require 'global)
(require 'defuns)
(require 'bindings)
(require 'modes)
(require 'theme)

(regen-autoloads)
(load custom-file 'noerror)

(provide 'init)
