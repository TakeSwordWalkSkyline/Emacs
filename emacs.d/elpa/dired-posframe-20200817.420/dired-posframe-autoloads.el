;;; dired-posframe-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dired-posframe" "dired-posframe.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from dired-posframe.el

(autoload 'dired-posframe-show "dired-posframe" "\
Show dired-posframe manually without enabling `dired-posframe-mode'.
To hide, please invoke `keyboard-quit'." t nil)

(autoload 'dired-posframe-mode "dired-posframe" "\
Enable dired-posframe-mode.

If called interactively, enable Dired-Posframe mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dired-posframe" '("dired-posframe-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dired-posframe-autoloads.el ends here
