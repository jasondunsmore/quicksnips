(define snippets-keymap (make-keymap))
(bind-keys global-keymap
	   "M-S-s" (lambda () (system "~/quicksnips/bin/snippets -e rhel &"))
	   "C-z" snippets-keymap)

(bind-keys snippets-keymap "o" (lambda () (system "~/quicksnips/bin/snippets -e rhel server-overview")))
(bind-keys snippets-keymap "u" (lambda () (system "~/quicksnips/bin/snippets -e rhel get-public-ip")))
(bind-keys snippets-keymap "z" '(synthesize-event "C-z" (input-focus)))

(define snippets-f-keymap (make-keymap))
(bind-keys snippets-keymap "f" snippets-f-keymap)
(bind-keys snippets-f-keymap "b" (lambda () (system "~/quicksnips/bin/snippets -e rhel file-backup")))

(define snippets-a-keymap (make-keymap))
(bind-keys snippets-keymap "a" snippets-a-keymap)
(bind-keys snippets-a-keymap "b" (lambda () (system "~/quicksnips/bin/snippets -e rhel apache-buddy")))
(bind-keys snippets-a-keymap "g" (lambda () (system "~/quicksnips/bin/snippets -e rhel apache-log-growers")))
