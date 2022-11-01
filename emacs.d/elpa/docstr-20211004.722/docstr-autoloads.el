;;; docstr-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "docstr" "docstr.el" (0 0 0 0))
;;; Generated autoloads from docstr.el

(autoload 'docstr-mode "docstr" "\
Minor mode 'docstr-mode'.

If called interactively, enable Docstr mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'global-docstr-mode 'globalized-minor-mode t)

(defvar global-docstr-mode nil "\
Non-nil if Global docstr mode is enabled.
See the `global-docstr-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-docstr-mode'.")

(custom-autoload 'global-docstr-mode "docstr" nil)

(autoload 'global-docstr-mode "docstr" "\
Toggle Docstr mode in all buffers.
With prefix ARG, enable Global docstr mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Docstr mode is enabled in all buffers where
`docstr--turn-on-docstr-mode' would do it.
See `docstr-mode' for more information on Docstr mode.

\(fn &optional ARG)" t nil)

(autoload 'docstr-supports-p "docstr" "\
Return non-nil if current `major-mode' supports by `docstr'." nil nil)

(autoload 'docstr-major-modes "docstr" "\
List of `major-mode' that supports document string." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-actionscript" "docstr-actionscript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docstr-actionscript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-actionscript" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-c" "docstr-c.el" (0 0 0 0))
;;; Generated autoloads from docstr-c.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-c" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-c++" "docstr-c++.el" (0 0 0 0))
;;; Generated autoloads from docstr-c++.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-c++" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-csharp" "docstr-csharp.el" (0 0 0 0))
;;; Generated autoloads from docstr-csharp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-csharp" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-faces" "docstr-faces.el" (0 0 0 0))
;;; Generated autoloads from docstr-faces.el

(autoload 'docstr-faces-apply "docstr-faces" "\
Apply standard document string faces." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-faces" '("docstr-faces-")))

;;;***

;;;### (autoloads nil "docstr-go" "docstr-go.el" (0 0 0 0))
;;; Generated autoloads from docstr-go.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-go" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-groovy" "docstr-groovy.el" (0 0 0 0))
;;; Generated autoloads from docstr-groovy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-groovy" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-java" "docstr-java.el" (0 0 0 0))
;;; Generated autoloads from docstr-java.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-java" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-js" "docstr-js.el" (0 0 0 0))
;;; Generated autoloads from docstr-js.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-js" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-key" "docstr-key.el" (0 0 0 0))
;;; Generated autoloads from docstr-key.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-key" '("docstr-key-")))

;;;***

;;;### (autoloads nil "docstr-lua" "docstr-lua.el" (0 0 0 0))
;;; Generated autoloads from docstr-lua.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-lua" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-objc" "docstr-objc.el" (0 0 0 0))
;;; Generated autoloads from docstr-objc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-objc" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-php" "docstr-php.el" (0 0 0 0))
;;; Generated autoloads from docstr-php.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-php" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-python" "docstr-python.el" (0 0 0 0))
;;; Generated autoloads from docstr-python.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-python" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-ruby" "docstr-ruby.el" (0 0 0 0))
;;; Generated autoloads from docstr-ruby.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-ruby" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-rust" "docstr-rust.el" (0 0 0 0))
;;; Generated autoloads from docstr-rust.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-rust" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-scala" "docstr-scala.el" (0 0 0 0))
;;; Generated autoloads from docstr-scala.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-scala" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-swift" "docstr-swift.el" (0 0 0 0))
;;; Generated autoloads from docstr-swift.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-swift" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-typescript" "docstr-typescript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from docstr-typescript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-typescript" '("docstr-")))

;;;***

;;;### (autoloads nil "docstr-util" "docstr-util.el" (0 0 0 0))
;;; Generated autoloads from docstr-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-util" '("docstr-util-")))

;;;***

;;;### (autoloads nil "docstr-writers" "docstr-writers.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from docstr-writers.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "docstr-writers" '("docstr-writers-")))

;;;***

;;;### (autoloads nil nil ("docstr-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; docstr-autoloads.el ends here
