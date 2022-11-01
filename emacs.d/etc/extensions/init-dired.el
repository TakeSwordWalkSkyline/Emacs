;; dired 相关配置

;; 在Emacs中使用终端程序ranger
(use-package ranger
  :disabled
  :ensure t
  :config
  (ranger-override-dired-mode 1))

;; (use-package dired
;;   :disabled
;;   :hook (dired-mode . dired-hide-details-mode))

;; if the option dired-dwim-target is non nil, and if there is another Dired buffer displayed in some window, that other
;; buffer's directory is the target directory.
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Operating-on-Files.html
(setq dired-dwim-target 1)


(provide 'init-dired)
