;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;; my name
(setq user-full-name "Daniel Douglas")
(setq user-mail-address "daniel.douglas@drexel.edu")

;; some defaults
(menu-bar-mode -1)
(show-paren-mode t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq make-backup-files nil)

;; load hide-show minor mode when writing in Python
(add-hook 'python-mode-hook (lambda () (hs-minor-mode 1)
			               (hs-hide-all) 
			               (global-set-key (kbd "C-c o") 'hs-hide-block) 
			               (global-set-key (kbd "C-c i") 'hs-show-block)))

(add-hook 'c-mode-common-hook (lambda ()
				(hs-minor-mode t)
				(hs-hide-all)
				(global-set-key (kdb "C-c o") `hs-hide-block) 
				(global-set-key (kbd "C-c i") `hs-show-block)))


;; set some aliases
(global-set-key (kbd "C-h") `previous-line)
(global-set-key (kbd "C-k") `left-char)
(global-set-key (kbd "M-k") `left-word)
(global-set-key (kbd "C-l") `right-char)
(global-set-key (kbd "M-l") `right-word)
(global-set-key (kbd "M-h") `scroll-down-command)
(global-set-key (kbd "M-n") `scroll-up-command)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "physics.drexel.edu")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (add-to-list 'load-path "~/emacs.d")
;; (require 'edit-server)
;; (edit-server-start)
