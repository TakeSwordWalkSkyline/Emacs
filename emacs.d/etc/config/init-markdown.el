;; MARKDOWN MODULE

(use-package markdown-mode
  :defer t
  :ensure t
  :hook (markdown-mode . (lambda () (require 'markdown-mode)))
  :config)

(provide 'init-markdown)
