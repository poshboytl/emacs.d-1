(remove-hook 'esk-coding-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'esk-coding-hook 'esk-pretty-lambdas)
(remove-hook 'esk-coding-hook 'esk-turn-on-paredit)

(add-hook 'esk-coding-hook 'esk-cleanup-on-save)

;; TextMate mode
(when (functionp 'textmate-mode)
  (textmate-mode 1))

;; C
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "k&r")
             (setq c-basic-offset 8)
             (setq tab-width 8)
             (setq indent-tabs-mode t)))

;; CSS
(add-hook 'css-mode-hook
          '(lambda ()
             (setq css-indent-offset 2)))

;; Diff
(add-hook 'diff-mode-hook 'turn-on-auto-fill)
(add-hook 'diff-mode-hook '(lambda ()
                             (setq fill-column 72)
                             (flyspell-mode 1)))

;; HTML
(add-hook 'html-mode-hook
          '(lambda()
             (setq tab-width 2)))

(add-hook 'html-mode-hook 'esk-run-coding-hook)

;; js2
(add-hook 'js2-mode-hook
          '(lambda ()
             (require 'espresso)
             (setq espresso-indent-level 2)
             (set (make-local-variable 'indent-line-function)
                  'espresso-indent-line)
             (define-key js2-mode-map (kbd "RET") 'newline-and-indent)
             (setq js2-use-font-lock-faces t)))

;; coffee
(add-hook 'coffee-mode-hook
          '(lambda()
             (setq tab-width 2)))

(add-hook 'coffee-mode-hook 'esk-run-coding-hook)

;; Ruby
(add-hook 'ruby-mode-hook '(lambda ()
                             (local-set-key (kbd "RET") 'newline-and-indent)))

;; eshell
(eval-after-load 'esh-opt
  '(progn
     (setq eshell-prompt-regexp "^$ ")
     (setq eshell-prompt-function (lambda () "$ "))
     (setq eshell-history-file-name "~/.history")
     (setq eshell-history-size 10000)))

;; text
(add-hook 'text-mode-hook '(lambda () (flyspell-mode 1)))
(remove-hook 'text-mode-hook 'turn-on-auto-fill)

;; whitespace
(setq whitespace-style
      '(trailing
        space-before-tab
        space-after-tab))

(global-whitespace-mode 1)

(provide 'modes)
