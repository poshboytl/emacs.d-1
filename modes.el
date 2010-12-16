;; TextMate mode
(textmate-mode 1)

;; C
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "k&r")
             (setq c-basic-offset 8)
             (setq tab-width 8)
             (setq indent-tabs-mode t)
             (add-hook 'before-save-hook 'tabify-buffer)))

;; CSS
(add-hook 'css-mode-hook
          '(lambda ()
             (setq css-indent-offset 2)
             (add-hook 'before-save-hook 'untabify-buffer)))

;; Diff
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(setq-default fill-column 72)
(add-hook 'diff-mode-hook 'turn-on-auto-fill)

(add-hook 'diff-mode-hook '(lambda () (flyspell-mode 1)))

;; HTML
(add-hook 'html-mode-hook
          '(lambda()
             (setq tab-width 2)
             (add-hook 'before-save-hook 'untabify-buffer)))

;; js2
(add-hook 'js2-mode-hook
          '(lambda ()
             (require 'espresso)
             (setq espresso-indent-level 2)
             (set (make-local-variable 'indent-line-function)
                  'espresso-indent-line)
             (define-key js2-mode-map (kbd "RET") 'newline-and-indent)
             (add-hook 'before-save-hook 'delete-trailing-whitespace)
             (setq js2-use-font-lock-faces t)))

;; coffee
(add-hook 'coffee-mode-hook
  '(lambda()
     (setq tab-width 2)))

;; Ruby
(add-hook 'ruby-mode-hook '(lambda ()
                             (local-set-key (kbd "RET") 'newline-and-indent)))

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; Ignore Rubinius bytecode
(add-to-list 'completion-ignored-extensions ".rbc")

(font-lock-add-keywords
 'ruby-mode
 '(("\\<\\(attr_accessor\\|attr_reader\\|attr_writer\\|extend\\|include\\|require\\)\\>" 1 font-lock-keyword-face)))

;; eshell
(setq eshell-cmpl-cycle-completions nil
      eshell-save-history-on-exit t
      eshell-cmpl-dir-ignore "\\`\\(\\.\\.?\\|CVS\\|\\.svn\\|\\.git\\)/\\'")

(eval-after-load 'esh-opt
  '(progn
     (require 'em-prompt)
     (require 'em-term)
     (require 'em-cmpl)

     (setenv "PAGER" "cat")

     (set-face-attribute 'eshell-prompt nil :foreground "turquoise1")
     (add-hook 'eshell-mode-hook
	       '(lambda ()
		  (define-key eshell-mode-map "\C-a" 'eshell-bol)))
     (add-to-list 'eshell-output-filter-functions 'eshell-handle-ansi-color)

     (setq eshell-prompt-regexp "^$ ")
     (setq eshell-prompt-function (lambda () "$ "))
     (setq eshell-history-file-name "~/.history")

     (add-to-list 'eshell-visual-commands "ssh")
     (add-to-list 'eshell-visual-commands "tail")
     (add-to-list 'eshell-command-completions-alist
                  '("gunzip" "gz\\'"))
     (add-to-list 'eshell-command-completions-alist
                  '("tar" "\\(\\.tar|\\.tgz\\|\\.tar\\.gz\\)\\'"))))



;; text
(add-hook 'text-mode-hook '(lambda () (flyspell-mode 1)))

;; whitespace
(setq whitespace-style
      '(trailing
        space-before-tab
        space-after-tab))

(global-whitespace-mode 1)

(provide 'modes)
