;; don't accidentally close emacs all the time-add
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x d f") 'delete-frame)

;; disable mail command
(global-set-key (kbd "C-x m") nil)

;; Smart M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Use C-x C-m to do M-x per Steve Yegge's advice
(global-set-key (kbd "C-x C-m") 'smex)
(global-set-key (kbd "C-c C-m") 'smex)

(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;; Set anchor to start rectangular-region-mode
(global-set-key (kbd "C-s-SPC") 'set-rectangular-region-anchor)

(global-set-key (kbd "s->") 'mc/mark-next-like-this)
(global-set-key (kbd "s-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c s-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c s-l") 'mc/edit-lines)

;; Replace rectangle-text with inline-string-rectangle
(global-set-key (kbd "C-x r t") 'inline-string-rectangle)

;; expand semantic region
(global-set-key (kbd "C-`") 'er/expand-region)
(global-set-key (kbd "s-m") 'er/expand-region)

(global-set-key (kbd "s-SPC") 'ace-jump-mode)

;; Magit
(global-set-key (kbd "C-x C-g") 'magit-status)
(global-set-key (kbd "C-c C-g") 'magit-status)
(autoload 'magit-status "magit")

;; Clever newlines
(global-set-key (kbd "C-o") 'open-line-and-indent)
(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)
(global-set-key (kbd "<M-return>") 'new-line-dwim)


;; Line movement
(global-set-key (kbd "<M-s-down>") 'move-text-down)
(global-set-key (kbd "<M-s-up>") 'move-text-up)

;; Move windows
(global-set-key (kbd "<s-right>") 'windmove-right)
(global-set-key (kbd "<s-left>") 'windmove-left)
(global-set-key (kbd "<s-up>") 'windmove-up)
(global-set-key (kbd "<s-down>") 'windmove-down)

(global-set-key (kbd "M-`") 'other-frame)

(provide 'keybindings)
