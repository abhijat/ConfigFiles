(package-initialize)

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")))


(tool-bar-mode -1)
(menu-bar-mode -1)

(show-paren-mode 1)
(setq show-paren-style 'expression)

(global-company-mode)
(global-linum-mode)
(global-eldoc-mode)

(ido-mode t)

(add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)
(add-hook 'cider-mode-hook 'paredit-mode)
(add-hook 'cider-mode-hook 'rainbow-delimiters-mode)

(add-hook 'clojure-mode-hook #'cider-company-enable-fuzzy-completion)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 2)

(setq make-backup-files nil)
(setq auto-save-default nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit company cider paredit rainbow-delimiters))))
