;;; english-teacher-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "english-teacher-backend-baidu" "english-teacher-backend-baidu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from english-teacher-backend-baidu.el

(autoload 'english-teacher-backend-baidu-request "english-teacher-backend-baidu" "\


\(fn FROM TO TEXT)" nil nil)

(cl-defmethod english-teacher-translate ((text t) (backend (eql english-teacher-backend-baidu))) (english-teacher-backend-baidu-request "en" "zh" text))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "english-teacher-backend-baidu" '("english-teacher-backend-baidu-" "et-baidu-on-request-completed")))

;;;***

;;;### (autoloads nil "english-teacher-backend-bing" "english-teacher-backend-bing.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from english-teacher-backend-bing.el

(autoload 'english-teacher-backend-bing-request "english-teacher-backend-bing" "\


\(fn FROM TO TEXT)" nil nil)

(cl-defmethod english-teacher-translate ((text t) (backend (eql english-teacher-backend-bing))) (english-teacher-backend-bing-request "auto-detect" "zh-Hans" text))

;;;***

;;;### (autoloads nil "english-teacher-backend-google" "english-teacher-backend-google.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from english-teacher-backend-google.el

(autoload 'english-teacher-backend-google-request "english-teacher-backend-google" "\


\(fn FROM TO TEXT)" nil nil)

(cl-defmethod english-teacher-translate ((text t) (backend (eql english-teacher-backend-google))) (english-teacher-backend-google-request "en" "zh-cn" text))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "english-teacher-backend-google" '("english-teacher-backend-google-")))

;;;***

;;;### (autoloads nil "english-teacher-backend-tencent" "english-teacher-backend-tencent.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from english-teacher-backend-tencent.el

(autoload 'english-teacher-backend-tencent-request "english-teacher-backend-tencent" "\


\(fn FROM TO TEXT)" nil nil)

(cl-defmethod english-teacher-translate ((text t) (backend (eql english-teacher-backend-tencent))) (english-teacher-backend-tencent-request "auto" "zh" text))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "english-teacher-backend-tencent" '("english-teacher-backend-")))

;;;***

;;;### (autoloads nil "english-teacher-backend-youdao" "english-teacher-backend-youdao.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from english-teacher-backend-youdao.el

(autoload 'english-teacher-backend-youdao-request "english-teacher-backend-youdao" "\


\(fn FROM TO TEXT)" nil nil)

(cl-defmethod english-teacher-translate ((text t) (backend (eql english-teacher-backend-youdao))) (english-teacher-backend-youdao-request "en" "zh-CHS" text))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "english-teacher-backend-youdao" '("english-teacher-backend-youdao-")))

;;;***

;;;### (autoloads nil "english-teacher-core" "english-teacher-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from english-teacher-core.el

(autoload 'english-teacher-translate "english-teacher-core" "\
return cons ceil whose car is origin and cdr is translation

\(fn TEXT BACKEND)" nil nil)

(autoload 'et-translate "english-teacher-core" "\


\(fn TEXT BACKEND &optional ON-TRANSLATION-COMPLETED)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "english-teacher-core" '("eng" "et-")))

;;;***

;;;### (autoloads nil "english-teacher-ui" "english-teacher-ui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from english-teacher-ui.el

(defface english-teacher-backend-face '((t (:inherit font-lock-keyword-face))) "\
Face of Display the name of the backend.")

(autoload 'english-teacher-default-show-result-function "english-teacher-ui" "\


\(fn ORIGIN TRANSLATION)" nil nil)

(autoload 'english-teacher-eldoc-show-result-function "english-teacher-ui" "\


\(fn ORIGIN TRANSLATION)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "english-teacher-ui" '("english-teacher--backend-name")))

;;;***

;;;### (autoloads nil nil ("english-teacher-pkg.el" "english-teacher.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; english-teacher-autoloads.el ends here
