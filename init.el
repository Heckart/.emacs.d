; This line needs to be below line 17 until gcmh is installed 
(gcmh-mode 1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

; This should automatically install every needed package. On a specific system, if there are unneeded ones, remove
; them from here before launching emacs
(setq package-selected-packages '(lsp-mode lsp-ui yasnippet lsp-treemacs helm-lsp
					   projectile hydra flycheck company avy which-key helm-xref dap-mode 
					   doom-modeline evil flycheck-rust lsp-pyright tree-sitter tree-sitter-langs
					   gcmh gruber-darker-theme treemacs-evil yasnippet-snippets))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

; load config files
(let ((config-dir (expand-file-name "config" user-emacs-directory)))
  (add-to-list 'load-path config-dir)
  (dolist (file (directory-files config-dir t "\\.el$"))
    (load file)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("01a9797244146bbae39b18ef37e6f2ca5bebded90d9fe3a2f342a9e863aaa4fd"
     default))
 '(global-word-wrap-whitespace-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(all-the-icons-completion all-the-icons-dired all-the-icons-gnus
			      all-the-icons-ibuffer
			      all-the-icons-nerd-fonts avy company
			      dap-mode doom-modeline evil flycheck
			      flycheck-rust gcmh ghub
			      gruber-darker-theme helm-lsp helm-xref
			      hydra lsp-mode lsp-pyright lsp-treemacs
			      lsp-ui modus-themes projectile
			      tree-sitter tree-sitter-langs
			      treemacs-all-the-icons treemacs-evil
			      which-key yasnippet))
 '(word-wrap t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
