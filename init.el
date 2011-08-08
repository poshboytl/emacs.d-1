;; load paths
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

(setq custom-file (concat dotfiles-dir "custom.el"))

(setq recentf-save-file "~/.emacs.d/recentf")

(require 'cl)
(require 'elpa)
(require 'global)
(require 'defuns)
(require 'bindings)
(require 'modes)
(require 'theme)

(load custom-file 'noerror)

(provide 'init)
