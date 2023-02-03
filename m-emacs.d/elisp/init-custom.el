;;; init-custom.el ---
;;
;; Filename: init-custom.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

;;; tool for minify a JSON
 ;;; https://www.accidentalrebel.com/posts/minifying-buffer-contents-in-emacs.html
 (defun minify-json()
   "Minifies the buffer contents by removing whitespaces."
   (interactive)
   (delete-whitespace-rectangle (point-min) (point-max))
   (mark-whole-buffer)
   (goto-char (point-min))
   (while (search-forward "\n" nil t) (replace-match "" nil t)))

;; 切换代理
(defun +custom/toggle-proxy ()
  (interactive)
  (if (null url-proxy-services)
      (progn
        (setq url-proxy-services
              '(("http" . "127.0.0.1:7890")
                ("https" . "127.0.0.1:7890")))
        (message "代理已开启."))
    (setq url-proxy-services nil)
    (message "代理已关闭.")))

;; 禁用鼠标功能
(use-package disable-mouse
  :ensure t
  :hook (after-init . (lambda ()
						(global-disable-mouse-mode 1))))

(provide 'init-custom)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-custom.el ends here