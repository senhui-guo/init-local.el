;;; Commentary:

;; My personal settings:

;;; Code:

;; My preferred packages
(require 'nav)
(require 'undo-tree)
(require 'jedi)
(require 'google-c-style)

(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)


;; better experience
(setq ns-pop-up-frames nil)
                                        ; double click to open emacs in the existing process
(ido-mode t)
                                        ; better command buffer
(set-default-font "Source Code Pro")
                                        ; font


;; python flycheck
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook (lambda () (setq display-line-numbers 'relative))) 
(require 'python-environment)
(setq jedi:environment-root "jedi")
; (setq jedi:environment-virtualenv
;     (append python-environment-virtualenv
;         '("--python" "python3")))
; (setq jedi:server-args
;     '("--sys-path" "/usr/local/lib/python3.7/site-packages"))
(setq jedi:complete-on-dot t)

(setq multi-term-program-switches "--login")

(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "C-y") 'term-paste)
                            (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
                            (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))
                            (setq term-buffer-maximum-size 0)))



;; editor settings
;;(global-linum-mode t)

;;keybinding settings
;;(global-set-key (kbd "M-h") 'mark-paragraph)
(global-set-key (kbd "M-`") 'next-multiframe-window)

;; (global-set-key (kbd "M-[") 'previous-buffer)
;; (global-set-key (kbd "M-]") 'next-buffer)
;; use C-x left/right to navigate through buffers instead

(provide 'init-local)
