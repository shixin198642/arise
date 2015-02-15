;;快捷键设定
;;Key
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\C-c\C-b" 'list-buffers)

(global-set-key "\C-t" 'set-mark-command)
(global-set-key "\C-o" 'other-window)
(global-set-key "\C-j" 'switch-to-buffer)

(global-set-key [(control \1)] 'delete-other-windows)
(global-set-key [(control \2)] 'split-window-below)
(global-set-key [(control \3)] 'split-window-right)

;;Start up
(setq resize-mini-windows nil)
(setq make-backup-files nil)
(setq-default cursor-type 'bar)
(set-default-font "Monaco-13")

(global-linum-mode t) ;; Show line number
;;(hl-line-mode t) ;; Highlight current line

(add-to-list 'load-path "/Users/ishikin/emacs/lisps/emacs-color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-comidia)

;;个性化设定
(setq mac-command-modifier 'meta);mac的command键
