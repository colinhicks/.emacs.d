;; shorthand for interactive lambdas
(defmacro λ (&rest body)
  `(lambda ()
     (interactive)
     ,@body))

(global-set-key (kbd "s-l") (λ (insert "\u03bb")))

(require 'auto-complete)
;;(global-auto-complete-mode 1)

(require 'company)
(global-company-mode)
(global-set-key (kbd "TAB") #'company-indent-or-complete-common)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . js-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))


(require 'flycheck)
(add-hook 'web-mode-hook
          (lambda () (flycheck-mode t)))

(require 'fsharp-mode)
(require 'csharp-mode)
(add-hook 'csharp-mode-hook 'omnisharp-mode)

(provide 'mode-mappings)
