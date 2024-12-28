; C/C++
; requires you to sudo apt install ccls
(require 'ccls)
(setq ccls-executable "/usr/bin/ccls")
(setq flycheck-gcc-args '("-Wall" "-Wextra"))
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'c-mode-hook #'tree-sitter-hl-mode)
(add-hook 'c++-mode-hook #'tree-sitter-hl-mode)

; bash
(setq lsp-bash-explainshell-endpoint t)
(setq lsp-bash-glob-pattern t)
(setq lsp-bash-highlight-parsing-errors t)
(add-hook 'sh-mode-hook 'lsp)
(add-hook 'sh-mode-hook #'tree-sitter-hl-mode)

;python
(require 'lsp-pyright)
(add-hook 'python-mode-hook 'lsp)
(add-hook 'python-mode-hook #'tree-sitter-hl-mode)

;rust
(with-eval-after-load 'rust-mode
(add-hook 'flycheck-rust-setup))
(add-hook 'rust-mode-hook 'lsp-deferred)
(add-hook 'rust-mode-hook #'tree-sitter-hl-mode)
