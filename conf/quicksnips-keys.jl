;; To use this configuration, add the following to ~/.sawfishrc
;;
;; (load-file "~/quicksnips/conf/quicksnips-keys.jl")


(define quicksnips-keymap (make-keymap))
(bind-keys global-keymap
	   "M-S-s" (lambda () (system "quicksnips -e linux rhel &"))
	   "M-S-d" (lambda () (system "quicksnips -e linux debian &"))
	   "C-z" quicksnips-keymap)

(bind-keys quicksnips-keymap "o" (lambda () (system "quicksnips -s server-overview rhel")))
(bind-keys quicksnips-keymap "u" (lambda () (system "quicksnips -s get-public-ip linux")))
(bind-keys quicksnips-keymap "z" '(synthesize-event "C-z" (input-focus)))

(define quicksnips-f-keymap (make-keymap))
(bind-keys quicksnips-keymap "f" quicksnips-f-keymap)
(bind-keys quicksnips-f-keymap "b" (lambda () (system "quicksnips -s file-backup linux")))

(define quicksnips-a-keymap (make-keymap))
(bind-keys quicksnips-keymap "a" quicksnips-a-keymap)
(bind-keys quicksnips-a-keymap "b" (lambda () (system "quicksnips -s apache-buddy rhel")))
(bind-keys quicksnips-a-keymap "g" (lambda () (system "quicksnips -s apache-log-growers rhel")))
