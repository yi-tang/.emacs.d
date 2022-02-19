;; (set-frame-font "Source Code Pro-11" nil t)
;; (set-face-attribute 'default nil :height 140)

(add-to-list 'default-frame-alist '(font . "Source Code Pro-11"))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; (load-theme 'zenburn t) 
;; (load-theme 'leuven t)

(setq sml/no-confirm-load-theme t)
(require 'smart-mode-line)
(setq powerline-arrow-shape 'curve)
(setq powerline-default-separator-dir '(right . left))
(setq sml/theme 'powerline)
(sml/setup)

(rich-minority-mode 1)
(setf rm-blacklist "")

(setq sml/mode-width 0)
(setq sml/name-width 20)

(display-time-mode)

(add-hook 'suspend-hook
	  (lambda () (or (y-or-n-p "Really suspend? ")
			 (error "Suspend canceled"))))
(add-hook 'suspend-resume-hook (lambda () (message "Resumed!")
				 (sit-for 2)))