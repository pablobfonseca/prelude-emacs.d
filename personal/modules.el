;; custom modules config

;; ripgrep
(prelude-require-package 'ripgrep)

;; evil-surround
(global-evil-surround-mode 1)

;; fzf
(prelude-require-package 'fzf)

;; evil-matchit
(prelude-require-package 'evil-matchit)
(global-evil-matchit-mode 1)

;; magithub
(prelude-require-package 'magithub)
(magithub-feature-autoinject t)
(setq magit-refresh-status-buffer nil)

;; Company
(prelude-require-package 'company-quickhelp)
(company-quickhelp-mode)
(setq company-idle-delay 0.1)
(setq company-quickhelp-delay nil)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-t") 'company-show-doc-buffer)
(define-key company-active-map (kbd "TAB") 'company-complete-selection)
(define-key company-active-map (kbd "<tab>") 'company-complete-selection)
(define-key company-active-map [return] 'company-complete-selection)
(define-key company-active-map (kbd "RET") 'company-complete-selection)
(add-to-list 'company-backends 'company-capf)
(setq company-tooltip-align-annotations t)
(eval-after-load 'company
  '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin))

;; ivy
(setq ivy-initial-inputs-alist nil)
(setq ivy-re-builders-alist
      '((swiper . ivy--regex-plus)
        (swiper-isearch . ivy--regex-plus)
        (counsel-ag . ivy--regex-plus)
        (counsel-rg . ivy--regex-plus)
        (t . ivy--regex-fuzzy))) ;; enable fuzzy searching everywhere except for swiper and rg/ag

;; web mode
(defun my-web-mode-hook ()
  "Hooks for web mode"
  (setq web-mode-markup-indent-offset 2))
(add-hook 'web-mode-hook 'my-web-mode-hook)

;; lsp
(setq exec-path (append exec-path '("~/.nvm/versions/node/v15.8.0/bin")))
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(add-hook 'js2-mode-hook #'lsp)
(add-hook 'typescript-mode-hook #'lsp)
(add-hook 'css-mode-hook #'lsp)
(add-hook 'web-mode-hook #'lsp)
(add-hook 'python-mode-hook #'lsp)
(add-hook 'elm-mode-hook #'lsp)
