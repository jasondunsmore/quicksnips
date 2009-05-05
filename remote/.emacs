(global-set-key [delete] 'delete-char)
(global-set-key (kbd "<f3>") 'iswitchb-buffer)
(global-set-key (kbd "<f4>") 'save-buffer)
(global-set-key (kbd "S-<f4>") 'save-some-buffers)
(global-set-key (kbd "<f5>") 'other-window)
(global-set-key (kbd "S-<f5>") 'browse-kill-ring)
(global-set-key (kbd "<f6>") (lambda ()
			       (interactive)
			       (switch-to-buffer (other-buffer))))
(global-set-key (kbd "S-<f8>") (lambda ()
				 (interactive)
				 (switch-to-buffer "*scratch*")))
(global-set-key (kbd "S-<f9>") 'calendar)
(global-set-key (kbd "<f10>") 'delete-other-windows)
(define-key global-map (kbd "C-x C-j") 'dired-jump)
(global-set-key (kbd "M-n") (lambda ()
			      (interactive)
			      (scroll-up (/ (window-height) 3))))
(global-set-key (kbd "M-p") (lambda ()
			      (interactive)
			      (scroll-down (/ (window-height) 3))))
(global-set-key "\C-x\M-r" 'move-to-top)
(global-set-key "\C-x\M-c" 'move-to-bottom)

(defun move-to-top ()
  (interactive)
  (move-to-window-line 0))

(defun move-to-bottom ()
  (interactive)
  (move-to-window-line -1))

;; enables font highlighting
(global-font-lock-mode t)

;; inserts a final new line if missing
(setq require-final-newline t)

;; disable menubar
(menu-bar-mode -1)

;; show column numbers
(column-number-mode t)

;; removes gnu startup screen
(setq inhibit-startup-message t)

;; replaces all "answer yes or no" prompts with "answer y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;; interactive buffer switching (lists buffers, selects while typing)
(iswitchb-mode 1)

;; highlights matching parenthesis
(show-paren-mode t)

;; omit files from dired listing
(add-hook 'dired-load-hook
	  (lambda ()
	    (require 'dired-x)
	    (setq dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^.*~$\\|\\.git")))

;; turn off default prompts
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; undo and redo to changes in window configurations, useful for when
;; special buffers resize window configuration
(winner-mode t)

;; disable system beep and enable visible bell
(setq visible-bell t)

;; enable highlighting of current light globally
;; (global-hl-line-mode t)

;; put autosave files in a central hidden directory
(defvar autosave-dir "~/.autosave/")
(make-directory autosave-dir t)
(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))
(defun make-auto-save-file-name ()
  (concat autosave-dir
	  (if buffer-file-name
	      (concat "#" (file-name-nondirectory buffer-file-name) "#")
	    (expand-file-name
	     (concat "#%" (buffer-name) "#")))))

(tool-bar-mode -1)

;; numbered backups
;; (setq version-control t)

;; path to downloaded packages
(setq load-path (append '("~/.emacs.d") load-path))

;; show system time & load
(display-time)

;; interprete bash escape sequences (colors)
(setq ansi-color-for-comint-mode-on t)

;; show indicator for empty lines
(setq-default indicate-empty-lines t)

;; user ibuffer instead of the default buffer menu
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(add-hook 'term-mode-hook
	  '(lambda ()
	     (term-line-mode)))

;; autosave every minute
(setq auto-save-interval 60)

;; disable highlighting of the current region
(setq transient-mark-mode nil)
