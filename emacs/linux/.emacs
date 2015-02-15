(set-default-font "Monaco-11") ;; font
(setq resize-mini-windows nil)
(setq make-backup-files nil)

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

(add-to-list 'load-path "/home/shixin/emacs/lisps")
(add-to-list 'load-path "/home/shixin/emacs/lisps/emacs-color-theme-6.6.0")

;;(hl-line-mode t)
(global-linum-mode);; Show line number

;;color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-comidia)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote (only . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
