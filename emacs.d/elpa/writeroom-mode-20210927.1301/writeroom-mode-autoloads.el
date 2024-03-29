;;; writeroom-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "writeroom-mode" "writeroom-mode.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from writeroom-mode.el

(autoload 'writeroom-mode "writeroom-mode" "\
Minor mode for distraction-free writing.

If called interactively, enable Writeroom mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'global-writeroom-mode 'globalized-minor-mode t)

(defvar global-writeroom-mode nil "\
Non-nil if Global writeroom mode is enabled.
See the `global-writeroom-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-writeroom-mode'.")

(custom-autoload 'global-writeroom-mode "writeroom-mode" nil)

(autoload 'global-writeroom-mode "writeroom-mode" "\
Toggle Writeroom mode in all buffers.
With prefix ARG, enable Global writeroom mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Writeroom mode is enabled in all buffers where
`turn-on-writeroom-mode' would do it.
See `writeroom-mode' for more information on Writeroom mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "writeroom-mode" '("alpha" "bottom-divider-width" "define-writeroom-global-effect" "fullscreen" "internal-border-width" "menu-bar-lines" "sticky" "tool-bar-lines" "turn-on-writeroom-mode" "vertical-scroll-bars" "writeroom-")))

;;;***

;;;### (autoloads nil nil ("writeroom-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; writeroom-mode-autoloads.el ends here
