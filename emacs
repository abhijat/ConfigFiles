;; UI customization
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)

(show-paren-mode 1)
(setq show-paren-style 'expression)
;; UI customization -- end

(global-linum-mode)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Package initialization
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(global-eldoc-mode)
(ido-mode t)

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 2))

(global-company-mode)

(use-package company-lsp
  :ensure t
  :defer t)

(use-package lsp-ui
  :ensure t
  :defer t)

(use-package lsp-mode
  :ensure t
  :defer t
  :hook (nim-mode . lsp))

(use-package nim-mode
  :ensure t
  :defer t)

(use-package exec-path-from-shell
  :ensure t
  :if (memq window-system '(mac ns x))
  :config
  (setq exec-path-from-shell-variables '("PATH"))
  (exec-path-from-shell-initialize)
  :init
  (setq exec-path-from-shell-check-startup-files nil))

(use-package rustic
  :ensure t
  :defer t)

(use-package slime
  :ensure t
  :defer t
  :config
  (setq inferior-lisp-program "/usr/bin/sbcl")
  (setq slime-contribs '(slime-fancy))
  (slime-setup '(slime-fancy slime-company)))

(use-package slime-company
  :ensure t
  :defer t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "a7051d761a713aaf5b893c90eaba27463c791cd75d7257d3a8e66b0c8c346e77" default)))
 '(package-selected-packages
   (quote
    (lsp-ui company-lsp rustic exec-path-from-shell nim-mode lsp-mode bind-key diminish use-package slime-company slime tuareg yasnippet-snippets yasnippet dracula-theme monokai-theme magit company paredit rainbow-delimiters))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; OCaml
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
