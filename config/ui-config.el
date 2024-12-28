; https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Iosevka.zip
(set-frame-font "Iosevka NFM 13" nil t)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)
(dolist (mode '(org-mode-hook
		dired-mode-hook
		eshell-mode-hook
		shell-mode-hook
		term-mode-hook
		vterm-mode-hook))
  (add-hook mode (lambda ()
		   (display-line-numbers(global-display-line-numbers-mode t)-mode 0))))

(global-visual-line-mode 1)
