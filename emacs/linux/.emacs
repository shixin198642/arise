;;Key
(global-set-key "\C-t" 'set-mark-command)
(global-set-key "\C-o" 'other-window)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;;Start up
(setq resize-mini-windows nil)
(setq make-backup-files nil)
(setq-default cursor-type 'bar)
(set-default-font "Monaco-11")

(global-linum-mode t) ;; Show line number
(hl-line-mode t) ;; Highlight current line

(add-to-list 'load-path "/home/shixin/emacs/lisps/emacs-color-theme-6.6.0")
(require 'color-theme)
