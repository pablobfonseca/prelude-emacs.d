;; custom UI

;; Remove scrollbar
(scroll-bar-mode -1)

;; Disable clipboard
(setq select-enable-clipboard nil)

;; whitespace
(setq prelude-whitespace nil)

;; Indentation
(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)

;; Typography
(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 145
                    :weight 'normal
                    :width 'normal)
