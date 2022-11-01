;;; yaml-pro-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "yaml-pro" "yaml-pro.el" (0 0 0 0))
;;; Generated autoloads from yaml-pro.el

(autoload 'yaml-pro-mode "yaml-pro" "\
Binds additional functions to aid in editing YAML files.

This is a minor mode.  If called interactively, toggle the
`Yaml-Pro mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `yaml-pro-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\\{yaml-pro-mode-map}

\(fn &optional ARG)" t nil)

(register-definition-prefixes "yaml-pro" '("yaml-pro-"))

;;;***

;;;### (autoloads nil "yaml-pro-edit" "yaml-pro-edit.el" (0 0 0 0))
;;; Generated autoloads from yaml-pro-edit.el

(autoload 'yaml-pro-edit-scalar "yaml-pro-edit" "\
Edit the scalar value at the point in a separate buffer.
If prefix argument P is provided, prompt user for initialization command.

\(fn P)" t nil)

(register-definition-prefixes "yaml-pro-edit" '("yaml-pro-edit-"))

;;;***

;;;### (autoloads nil nil ("yaml-pro-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; yaml-pro-autoloads.el ends here
