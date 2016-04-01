(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq mac-right-control-modifier 'hyper)

;; Move to trash when deleting stuff
(setq delete-by-moving-to-trash t
      trash-directory "~/.Trash/emacs")

;; Ignore .DS_Store files with ido mode
(add-to-list 'ido-ignore-files "\\.DS_Store")

;; Don't open files from the workspace in a new frame
(setq ns-pop-up-frames nil)

(provide 'mac)
