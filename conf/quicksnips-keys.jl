(define quicksnips-keymap (make-keymap))
(bind-keys global-keymap
	   "M-S-s" (lambda () (system "~/quicksnips/bin/quicksnips -e rhel &"))
	   "M-S-d" (lambda () (system "~/quicksnips/bin/quicksnips -e debian &"))
	   "C-z" quicksnips-keymap)

(bind-keys quicksnips-keymap "o" (lambda () (system "~/quicksnips/bin/quicksnips rhel server-overview")))
(bind-keys quicksnips-keymap "u" (lambda () (system "~/quicksnips/bin/quicksnips rhel get-public-ip")))
(bind-keys quicksnips-keymap "z" '(synthesize-event "C-z" (input-focus)))

(define quicksnips-f-keymap (make-keymap))
(bind-keys quicksnips-keymap "f" quicksnips-f-keymap)
(bind-keys quicksnips-f-keymap "b" (lambda () (system "~/quicksnips/bin/quicksnips rhel file-backup")))

(define quicksnips-a-keymap (make-keymap))
(bind-keys quicksnips-keymap "a" quicksnips-a-keymap)
(bind-keys quicksnips-a-keymap "b" (lambda () (system "~/quicksnips/bin/quicksnips rhel apache-buddy")))
(bind-keys quicksnips-a-keymap "g" (lambda () (system "~/quicksnips/bin/quicksnips rhel apache-log-growers")))
