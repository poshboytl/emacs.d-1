(remove-hook 'esk-coding-hook 'esk-pretty-lambdas)

;; TextMate mode
(when (functionp 'textmate-mode)
  (textmate-mode 1))

;; C
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "k&r")
             (setq c-basic-offset 8)
             (setq tab-width 8)
             (setq indent-tabs-mode t)
             (add-hook 'before-save-hook 'esk-tabify-buffer)))

;; CSS
(add-hook 'css-mode-hook
          '(lambda ()
             (setq css-indent-offset 2)
             (add-hook 'before-save-hook 'esk-untabify-buffer)))

;; Diff
(setq-default fill-column 72)
(add-hook 'diff-mode-hook 'turn-on-auto-fill)

(add-hook 'diff-mode-hook '(lambda () (flyspell-mode 1)))

;; HTML
(add-hook 'html-mode-hook
          '(lambda()
             (setq tab-width 2)
             (add-hook 'before-save-hook 'esk-untabify-buffer)))

(add-hook 'html-mode-hook 'esk-run-coding-hook)

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

(add-hook 'coffee-mode-hook 'esk-run-coding-hook)

;; Ruby
(add-hook 'ruby-mode-hook '(lambda ()
                             (local-set-key (kbd "RET") 'newline-and-indent)))

(font-lock-add-keywords
 'ruby-mode
 '(("\\<\\(attr_accessor\\|attr_reader\\|attr_writer\\|extend\\|include\\|require\\)\\>" 1 font-lock-keyword-face)))

;; eshell
(eval-after-load 'esh-opt
  '(progn
     (setq eshell-prompt-regexp "^$ ")
     (setq eshell-prompt-function (lambda () "$ "))
     (setq eshell-history-file-name "~/.history")
     (setq eshell-history-size 10000)))

;; text
(add-hook 'text-mode-hook '(lambda () (flyspell-mode 1)))

;; whitespace
(setq whitespace-style
      '(trailing
        space-before-tab
        space-after-tab))

(global-whitespace-mode 1)

(provide 'modes)
