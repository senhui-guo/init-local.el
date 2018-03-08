(provide 'init-local)

;;settings for R
(setenv "LC_ALL" "en_US.UTF-8")

;;add XeLaTeX to the TeX command list
;;(add-hook 'LaTeX-mode-hook 
;;          (lambda()
;;             (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
;;             (setq TeX-command-default "XeLaTeX")
;;             (setq TeX-save-query nil)
;;             (setq TeX-show-compilation t)))

;;set up python interpreter
(setq python-shell-interpreter "ipython3")
(setenv "IPY_TEST_SIMPLE_PROMPT" "1")

;;set up ein mode
(require 'ein)
;;set delete cell key
;;(define-key ein:notebook-mode-map "\C-c\C-d" 'ein:worksheet-delete-cell)
