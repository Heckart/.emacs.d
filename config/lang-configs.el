; C/C++
; requires you to "sudo apt install clangd" and use bear to generate compile commands 
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

;C#
;https://learn.microsoft.com/en-us/dotnet/core/install/linux-debian?tabs=dotnet9
(add-hook 'csharp-mode-hook 'lsp)
(add-hook 'csharp-mode-hook #'tree-sitter-hl-mode)

