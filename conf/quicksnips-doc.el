;;; quicksnips-doc.el --- Displays documentation when quicksnips is called

;; Copyright (C) 2009  Jason Dunsmore

;; Author: Jason Dunsmore <jason.dunsmore@rackspace.com>
;; Keywords: tools, unix, processes

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; 

;;; Code:

(defun quicksnips-doc (doc)
  (let ((buf "*quicksnips-doc*"))
    (get-buffer-create buf)
    (set-buffer buf)
    (erase-buffer)
    (setq header-line-format "quicksnips documentation")
    (insert "\n" doc)
    (display-buffer buf)))

;;(provide 'quicksnips-doc)
;;; quicksnips-doc.el ends here
