(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))

(font-lock-add-keywords
      'ruby-mode
      '(("\\(attr_accessor\\|attr_reader\\|attr_writer\\|extend\\|include\\|require\\)" 1 font-lock-keyword-face)))

(vendor 'rinari)
