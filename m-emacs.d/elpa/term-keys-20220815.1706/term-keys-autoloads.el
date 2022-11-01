;;; term-keys-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "term-keys" "term-keys.el" (0 0 0 0))
;;; Generated autoloads from term-keys.el

(autoload 'term-keys/init "term-keys" "\
Set up configured key sequences for the current terminal." t nil)

(defvar term-keys-mode nil "\
Non-nil if Term-Keys mode is enabled.
See the `term-keys-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `term-keys-mode'.")

(custom-autoload 'term-keys-mode "term-keys" nil)

(autoload 'term-keys-mode "term-keys" "\
`term-keys' global minor mode.

This is a minor mode.  If called interactively, toggle the
`Term-Keys mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='term-keys-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

When enabled, automatically set up configured keys for new frames
on TTY terminals.  If the current frame is on a TTY, set it up as
well.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "term-keys" '("term-keys/"))

;;;***

;;;### (autoloads nil "term-keys-alacritty" "term-keys-alacritty.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from term-keys-alacritty.el

(register-definition-prefixes "term-keys-alacritty" '("term-keys/alacritty-"))

;;;***

;;;### (autoloads nil "term-keys-glfw-mods" "term-keys-glfw-mods.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from term-keys-glfw-mods.el

(register-definition-prefixes "term-keys-glfw-mods" '("term-keys/glfw-mod"))

;;;***

;;;### (autoloads nil "term-keys-kitty" "term-keys-kitty.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from term-keys-kitty.el

(register-definition-prefixes "term-keys-kitty" '("term-keys/kitty-"))

;;;***

;;;### (autoloads nil "term-keys-konsole" "term-keys-konsole.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from term-keys-konsole.el

(register-definition-prefixes "term-keys-konsole" '("term-keys/konsole-"))

;;;***

;;;### (autoloads nil "term-keys-linux" "term-keys-linux.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from term-keys-linux.el

(register-definition-prefixes "term-keys-linux" '("term-keys/linux-"))

;;;***

;;;### (autoloads nil "term-keys-st" "term-keys-st.el" (0 0 0 0))
;;; Generated autoloads from term-keys-st.el

(register-definition-prefixes "term-keys-st" '("term-keys/st-config-"))

;;;***

;;;### (autoloads nil "term-keys-terminal-app" "term-keys-terminal-app.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from term-keys-terminal-app.el

(register-definition-prefixes "term-keys-terminal-app" '("term-keys/terminal-app-"))

;;;***

;;;### (autoloads nil "term-keys-urxvt" "term-keys-urxvt.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from term-keys-urxvt.el

(register-definition-prefixes "term-keys-urxvt" '("term-keys/urxvt-"))

;;;***

;;;### (autoloads nil "term-keys-wezterm" "term-keys-wezterm.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from term-keys-wezterm.el

(register-definition-prefixes "term-keys-wezterm" '("term-keys/wezterm-"))

;;;***

;;;### (autoloads nil "term-keys-x11" "term-keys-x11.el" (0 0 0 0))
;;; Generated autoloads from term-keys-x11.el

(register-definition-prefixes "term-keys-x11" '("term-keys/x11-"))

;;;***

;;;### (autoloads nil "term-keys-xterm" "term-keys-xterm.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from term-keys-xterm.el

(register-definition-prefixes "term-keys-xterm" '("term-keys/xterm-"))

;;;***

;;;### (autoloads nil nil ("term-keys-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; term-keys-autoloads.el ends here
