(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

; This should automatically install every needed package. On a specific system, if there are unneeded ones, remove
; them from here before launching emacs
(setq package-selected-packages '(lsp-mode lsp-ui yasnippet lsp-treemacs helm-lsp
					   projectile hydra flycheck company avy which-key helm-xref dap-mode ccls
					   doom-modeline evil flycheck-rust good-scroll lsp-pyright modus-themes
					   tree-sitter tree-sitter-langs))

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
   '("01a9797244146bbae39b18ef37e6f2ca5bebded90d9fe3a2f342a9e863aaa4fd" "8d146df8bd640320d5ca94d2913392bc6f763d5bc2bb47bed8e14975017eea91" "e410458d3e769c33e0865971deb6e8422457fad02bf51f7862fa180ccc42c032" default))
 '(global-word-wrap-whitespace-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(tree-sitter-langs tree-sitter gruber-darker-theme treemacs-evil treemacs-all-the-icons flycheck-rust lsp-pyright ghub doom-modeline modus-themes evil good-scroll yasnippet-snippets ccls lsp-mode lsp-ui yasnippet lsp-treemacs helm-lsp projectile hydra flycheck company avy which-key helm-xref dap-mode))
 '(word-wrap t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
