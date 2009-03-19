;;; init.el

; load paths
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)
(setq custom-file (concat dotfiles-dir "custom.el"))
(setq vendor-dir (concat dotfiles-dir "vendor"))
(add-to-list 'load-path vendor-dir)

(require 'cl)
(require 'elpa)
(require 'global)
(require 'defuns)
(require 'bindings)
(require 'modes)
(require 'theme)
(require 'snippets)

(vendor 'cheat)
(vendor 'fuzzy-find-in-project)
(vendor 'textmate)
(textmate-mode)
(vendor 'whitespace)

(load custom-file 'noerror)

(provide 'init)
