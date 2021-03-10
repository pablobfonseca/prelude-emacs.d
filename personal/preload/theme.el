(setq prelude-theme 'distinguished)

;; Remove scrollbar
(when (display-graphic-p)
  (scroll-bar-mode -1)
  )

;; Remove menu bar
(menu-bar-mode -1)

(evil-mode 1)
