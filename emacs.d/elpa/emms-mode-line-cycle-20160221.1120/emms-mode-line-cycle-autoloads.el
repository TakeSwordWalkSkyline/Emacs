;;; emms-mode-line-cycle-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "emms-mode-line-cycle" "emms-mode-line-cycle.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from emms-mode-line-cycle.el

(autoload 'emms-mode-line-cycle-get-title "emms-mode-line-cycle" "\
Retrun title or title cache rotated N times.
If N is nil, title cache is not rotated.

\(fn &optional N)" nil nil)

(autoload 'emms-mode-line-cycle-mode-line-function "emms-mode-line-cycle" "\
This is used as `emms-mode-line-mode-line-function'.
If TITLE is no-nil, it is set to emms-mode-line-cycle's global variables.

\(fn &optional TITLE)" nil nil)

(autoload 'emms-mode-line-cycle-update-mode-line-string "emms-mode-line-cycle" "\
Update `emms-mode-line-string', if `emms-mode-line-cycle' is non-nil.
This can be used as a before/after advice.

\(fn &rest _)" nil nil)

(defvar emms-mode-line-cycle nil "\
Non-nil if Emms-mode-line-cycle mode is enabled.
See the `emms-mode-line-cycle' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `emms-mode-line-cycle'.")

(custom-autoload 'emms-mode-line-cycle "emms-mode-line-cycle" nil)

(autoload 'emms-mode-line-cycle "emms-mode-line-cycle" "\
Update `emms-mode-line-string' cyclically with `emms-playing-time-display'.

This is a minor mode.  If called interactively, toggle the
`Emms-mode-line-cycle mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='emms-mode-line-cycle)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "emms-mode-line-cycle" '("emms-mode-line-cycle-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; emms-mode-line-cycle-autoloads.el ends here
