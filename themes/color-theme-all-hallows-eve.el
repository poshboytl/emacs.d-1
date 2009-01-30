(eval-when-compile
  (require 'color-theme))

(defun color-theme-all-hallows-eve ()
  "Color theme based on the TextMate All Hallow's Eve theme."
  (interactive)
  (color-theme-install
   '(color-theme-all-hallows-eve
					; Text base
					;     ((foreground-color . "white")
					;      (background-color . "#434242")
					;      (background-mode . dark))

					; Source
     ((foreground-color . "white")
      (background-color . "black")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "white")
					;      (list-matching-lines-face . bold)
					;      (view-highlight-face . highlight)
      )

     (default ((t (nil))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (italic ((t (:italic t))))
     (underline ((t (:underline t))))

     (fringe ((t (:background "#121212"))))
     (modeline ((t (:background "#eeeeee" :foreground "black"))))

     (highlight ((t (:background "#72597e"))))
     (region ((t (:foreground "#888888" :background "#72597e"))))

     (font-lock-builtin-face ((t (:foreground "red"))))
     (font-lock-comment-face ((t (:foreground "#9933cc"))))
     (font-lock-comment-delimiter-face ((t (:foreground "#9933cc"))))
     (font-lock-constant-face ((t (:foreground "#3387cc"))))
     (font-lock-doc-face ((t (:foreground "red"))))
     (font-lock-function-name-face ((t (:foreground "white"))))
     (font-lock-keyword-face ((t (:foreground "#cc7833"))))
     (font-lock-preprocessor-face ((t (:foreground "#d0d0ff"))))
     (font-lock-reference-face ((t (:foreground "#808bed"))))
     (font-lock-string-face ((t (:foreground "#66cc33"))))
     (font-lock-type-face ((t (:foreground "white"))))
     (font-lock-variable-name-face ((t nil)))
     (font-lock-warning-face ((t (:foreground "red"))))
     (font-lock-syntactic-keywords ((t (:foreground "#cc7833"))))
     )))
