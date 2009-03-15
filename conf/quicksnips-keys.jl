(define quicksnips-keymap (make-keymap))
(bind-keys global-keymap
	   "M-S-s" (lambda () (system "quicksnips -e &"))
	   "M-S-d" (lambda () (system "quicksnips -e debian &"))
	   "C-z" quicksnips-keymap)

(bind-keys quicksnips-keymap "o" (lambda () (system "quicksnips -s server-overview rhel")))
(bind-keys quicksnips-keymap "u" (lambda () (system "quicksnips -s get-public-ip rhel")))
(bind-keys quicksnips-keymap "z" '(synthesize-event "C-z" (input-focus)))

(define quicksnips-f-keymap (make-keymap))
(bind-keys quicksnips-keymap "f" quicksnips-f-keymap)
(bind-keys quicksnips-f-keymap "b" (lambda () (system "quicksnips -s file-backup rhel")))

(define quicksnips-a-keymap (make-keymap))
(bind-keys quicksnips-keymap "a" quicksnips-a-keymap)
(bind-keys quicksnips-a-keymap "b" (lambda () (system "quicksnips -s apache-buddy rhel")))
(bind-keys quicksnips-a-keymap "g" (lambda () (system "quicksnips -s apache-log-growers rhel")))
