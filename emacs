(setq inhibit-splash-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)



(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;;(load-theme 'leuven t)
(load-theme 'wombat t)

(setq c-basic-offset 4) ; indents 4 chars                                               
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)

(turn-on-font-lock)
(global-set-key [f9] 'compile)

(set-face-attribute 'default nil :font "Source Code Pro")
(set-face-attribute 'default nil :height 110)
(setq backup-inhibited t)
(setq auto-save-default nil)

(require 'auto-indent-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-ede-mode 1)
(semantic-mode 1)
