(require 'evil)
(evil-mode 1)
(evil-set-leader 'normal " ")
(evil-define-key 'normal 'global (kbd "SPC d") 'lsp-ui-peek-find-definitions)
(evil-define-key 'normal 'global (kbd "SPC r") 'lsp-ui-peek-find-references)
(evil-define-key 'normal 'global (kbd "SPC t") 'treemacs-display-current-project-exclusively)
(evil-define-key 'normal 'global (kbd "SPC T") 'treemacs)

(require 'treemacs-evil)
