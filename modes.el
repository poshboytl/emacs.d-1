(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'prog-mode-hook 'esk-pretty-lambdas)

(add-hook 'prog-mode-hook 'esk-turn-on-whitespace)
(add-hook 'prog-mode-hook 'esk-cleanup-on-save)
(add-hook 'prog-mode-hook 'esk-ident-on-return)

;; ido
(setq ido-use-filename-at-point nil)

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

(add-hook 'c-mode-hook 'esk-paredit-nonlisp)

;; CSS
(add-hook 'css-mode-hook
          '(lambda ()
             (setq css-indent-offset 2)))

(add-hook 'css-mode-hook 'esk-paredit-nonlisp)

;; Diff
(add-hook 'diff-mode-hook 'turn-on-auto-fill)
(add-hook 'diff-mode-hook '(lambda ()
                             (setq fill-column 72)
                             (flyspell-mode 1)))

;; HTML
(add-hook 'html-mode-hook
          '(lambda()
             (setq tab-width 2)))

(add-hook 'html-mode-hook 'esk-paredit-nonlisp)

;; js
(add-hook 'js-mode-hook
          '(lambda ()
             (setq js-indent-level 2)))

(add-hook 'js-mode-hook 'esk-paredit-nonlisp)

;; coffee
(add-hook 'coffee-mode-hook
          '(lambda()
             (setq tab-width 2)
             (local-set-key (kbd "RET") 'newline)))

(add-hook 'coffee-mode-hook 'esk-paredit-nonlisp)

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

(provide 'modes)
