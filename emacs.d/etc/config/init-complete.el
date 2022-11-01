;; MODULE: CODE COMPLETE
;; Emacs company
(use-package company 
  :hook ((prog-mode sly-mrepl-mode) . company-mode)
  :init (setq ;;global-company-mode t
              company-tooltip-align-annotations t
              company-idle-delay 0.1
              company-echo-delay 0
              company-minimum-prefix-length 2
              company-require-match nil
              company-dabbrev-ignore-case nil
              company-dabbrev-downcase nil
              company-show-numbers t) 
  :config 
  :bind (:map company-active-map
              ("M-n" . nil) 
              ("M-p" . nil) 
              ("C-n" . #'company-select-next) 
              ("C-p" . #'company-select-previous)) 
  (:map leader-key
        ("c s" . #'company-yasnippet)))


;;TabNine
(use-package company-tabnine
  :ensure t
  :config (add-to-list 'company-backends #'company-tabnine))



;; ;; 美化company
;; (use-package company-box
;;   :hook (company-mode . company-box-mode))

;;代码片段
(use-package yasnippet 
  :ensure t
  :defer 2
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/etc/snippets")))

(provide 'init-complete)
