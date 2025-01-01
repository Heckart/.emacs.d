(require 'evil)
(evil-mode 1)
(evil-set-leader 'normal " ")
(evil-define-key 'normal 'global (kbd "SPC d") 'lsp-ui-peek-find-definitions)
(evil-define-key 'normal 'global (kbd "SPC r") 'lsp-ui-peek-find-references)
(evil-define-key 'normal 'global (kbd "SPC t") 'treemacs-display-current-project-exclusively)
(evil-define-key 'normal 'global (kbd "SPC f") 'find-file)
(evil-define-key 'normal 'global (kbd "SPC b") 'switch-to-buffer)
(evil-define-key 'normal 'global (kbd "SPC j") 'previous-buffer)
(evil-define-key 'normal 'global (kbd "SPC k") 'next-buffer)



(require 'treemacs-evil)
