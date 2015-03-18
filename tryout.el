;; use F8 for ace-window 
(global-set-key [f1] 'ace-window)

(require 'hydra)
(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))


(add-to-list 'golden-ratio-extra-commands 'aw--callback)

;change default browser for 'browse-url'  to w3m
(setq browse-url-browser-function 'w3m-goto-url-new-session)
 ;;change w3m user-agent to android
(setq w3m-user-agent "Mozilla/5.0 (Linux; U; Android 2.3.3; zh-tw; HTC_Pyramid Build/GRI40) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.")
;; (setq w3m-user-agent "Emacs-w3m/1.4.540 w3m/0.5.3+debian-15")

(defun my/voca-search (voca)
  (interactive (list
		(read-string "Enter the vocabulary: " )))
  (setq address (concat "http://www.vocabulary.com/dictionary/" voca))
  (w3m-browse-url address))



(require 'purpose)
(purpose-mode)
(defun my/reset-window ()
  (interactive)
  (purpose-load-window-layout "~/git/.emacs.d/style/4_window_layout.purpose"))





(setq popup (popup-create (point) 10 10)) ;; where's the popup ?
(popup-set-list popup '("Foo" "Bar" "Baz")) ;; what's the content of the opoup? 
(popup-draw popup)
;; do something here
(popup-delete popup)
(popup-tip "Hello, World!")

(defun xx ()
  "print current word."
  (interactive)
  (message "%s" (thing-at-point 'sentence)))





(defun my/voca-lookup (word)
  (setq url (concat "www.vocabulary.com/dictionary/" word))
  (setq meaningRegx (shell-quote-argument "<p class=\"long\">"))
  (w3m-pipe-source url (concat "grep " meaningRegx))
  (setq meaning (with-current-buffer "*Shell Command Output*"
		  (buffer-string )))
  
  (setq orgRegx (shell-quote-argument "<p class=\"short\">"))
  (w3m-pipe-source url (concat "grep " orgRegx))
  (setq origin (with-current-buffer "*Shell Command Output*"
		 (buffer-string )))
  (cons meaning origin)
  )

(my/voca-lookup "father")
(my/voca-lookup "mother")
(setq test (my/voca-lookup "father"))

(popup-tip (car test))


