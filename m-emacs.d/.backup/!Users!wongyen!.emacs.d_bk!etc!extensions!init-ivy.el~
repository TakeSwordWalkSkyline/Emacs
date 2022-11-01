;; counsel提供对项目管理的支持
(use-package 
  counsel-projectile 
  :ensure t 
  :hook ((counsel-mode . counsel-projectile-mode)) 
  :init (setq counsel-projectile-grep-initial-input '(ivy-thing-at-point))
  :bind (:map leader-key
              ("p" . #'projectile-command-map)))

(counsel-mode 1)

(use-package ivy-fuz
  ;;:disabled
  :ensure t)

(use-package ivy-rich
  ;;:disabled
  :ensure t
  :hook (after-init . ivy-rich-mode))

(use-package all-the-icons-ivy-rich
  ;;:disabled
  :ensure t
  :after ivy-rich
  :config
  (all-the-icons-ivy-rich-mode 1))


(provide 'init-ivy)
