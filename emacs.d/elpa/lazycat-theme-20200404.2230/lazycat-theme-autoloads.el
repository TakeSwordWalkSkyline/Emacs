;;; lazycat-theme-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "lazycat-dark-theme" "lazycat-dark-theme.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lazycat-dark-theme.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lazycat-dark-theme" '("lazycat-dark")))

;;;***

;;;### (autoloads nil "lazycat-light-theme" "lazycat-light-theme.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lazycat-light-theme.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lazycat-light-theme" '("lazycat-light")))

;;;***

;;;### (autoloads nil "lazycat-theme" "lazycat-theme.el" (0 0 0 0))
;;; Generated autoloads from lazycat-theme.el

(autoload 'lazycat-name-to-rgb "lazycat-theme" "\
Retrieves the hexidecimal string repesented the named COLOR (e.g. \"red\")
for FRAME (defaults to the current frame).

\(fn COLOR)" nil nil)

(autoload 'lazycat-blend "lazycat-theme" "\
Blend two colors (hexidecimal strings) together by a coefficient ALPHA (a
float between 0 and 1)

\(fn COLOR1 COLOR2 ALPHA)" nil nil)

(autoload 'lazycat-darken "lazycat-theme" "\
Darken a COLOR (a hexidecimal string) by a coefficient ALPHA (a float between
0 and 1).

\(fn COLOR ALPHA)" nil nil)

(autoload 'lazycat-lighten "lazycat-theme" "\
Brighten a COLOR (a hexidecimal string) by a coefficient ALPHA (a float
between 0 and 1).

\(fn COLOR ALPHA)" nil nil)

(autoload 'lazycat-color "lazycat-theme" "\
Retrieve a specific color named NAME (a symbol) from the current theme.

\(fn NAME &optional TYPE)" nil nil)

(autoload 'lazycat-ref "lazycat-theme" "\
TODO

\(fn FACE PROP &optional CLASS)" nil nil)

(autoload 'lazycat-themes-set-faces "lazycat-theme" "\
Customize THEME (a symbol) with FACES.

If THEME is nil, it applies to all themes you load. FACES is a list of Lazycat
theme face specs. These is a simplified spec. For example:

  (lazycat-themes-set-faces 'user
    '(default :background red :foreground blue)
    '(lazycat-modeline-bar :background (if -modeline-bright modeline-bg highlight))
    '(lazycat-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
    '(lazycat-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
    '(lazycat-modeline-buffer-project-root :foreground green :weight 'bold))

\(fn THEME &rest FACES)" nil nil)

(function-put 'lazycat-themes-set-faces 'lisp-indent-function 'defun)

(when (and (boundp 'custom-theme-load-path) load-file-name) (let* ((base (file-name-directory load-file-name)) (dir (expand-file-name "themes/" base))) (add-to-list 'custom-theme-load-path (or (and (file-directory-p dir) dir) base))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lazycat-theme" '("def-lazycat-theme" "lazycat-")))

;;;***

;;;### (autoloads nil nil ("lazycat-theme-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lazycat-theme-autoloads.el ends here
