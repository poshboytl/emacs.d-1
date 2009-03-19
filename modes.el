; C
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "k&r")
             (setq c-basic-offset 8)
             (setq tab-width 8)
             (setq indent-tabs-mode t)
             (add-hook 'before-save-hook 'tabify-buffer)))

; CSS
(autoload 'css-mode "css-mode" "Mode for editing CSS file" t)
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))

(add-hook 'css-mode-hook
	  '(lambda ()
	     (setq tab-width 2)
	     (setq css-indent-offset 2)
	     (add-hook 'before-save-hook 'untabify-buffer)))

; Diff
(setq auto-mode-alist (cons '("COMMIT_EDITMSG$" . diff-mode) auto-mode-alist))

; Dired
(require 'dired)

; remap 'o' in dired mode to open a file
(defun dired-open-mac ()
  (interactive)
  (let ((file-name (dired-get-file-for-visit)))
    (if (file-exists-p file-name)
        (call-process "/usr/bin/open" nil 0 nil file-name))))
(define-key dired-mode-map "o" 'dired-open-mac)

; prefer dired over dumping dir list to buffer
(global-set-key "\C-x\C-d" 'dired)

; erlang
(setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.6.2/emacs" load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(require 'erlang-start)

; HTML
(add-hook 'html-mode-hook
	  '(lambda()
	     (setq tab-width 2)
	     (add-hook 'before-save-hook 'untabify-buffer)))

; js2
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook
	  '(lambda ()
	     (setq js2-basic-offset 2)
	     (setq js2-use-font-lock-faces t)))

; Ruby
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))

(font-lock-add-keywords
      'ruby-mode
      '(("\\<\\(attr_accessor\\|attr_reader\\|attr_writer\\|extend\\|include\\|require\\)\\>" 1 font-lock-keyword-face)))

(vendor 'rinari)

; shell

; shortcut for shell
(global-set-key "\C-x\C-z" 'shell)

(eval-after-load 'shell
  '(progn
     (define-key shell-mode-map [up] 'comint-previous-input)
     (define-key shell-mode-map [down] 'comint-next-input)
     (define-key shell-mode-map "\C-p" 'comint-previous-input)
     (define-key shell-mode-map "\C-n" 'comint-next-input)))

(provide 'modes)
