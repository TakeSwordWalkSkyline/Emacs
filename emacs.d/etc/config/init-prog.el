;;MODULE: PROGRAMMING

;; 大量可用的代码片段
(use-package 
  yasnippet-snippets 
  :ensure t
  :after yasnippet)

;; 编译运行当前文件
(use-package 
  quickrun 
  :ensure t 
  :commands(quickrun) 
  :bind (:map leader-key
              ("c r" . #'quickrun)) 
  :init (setq quickrun-timeout-seconds nil) 
  (setq quickrun-focus-p nil) 
  (setq quickrun-input-file-extension nil) 
  :config
  (quickrun-add-command "python" 
    '((:command .
                "python3") 
      (:exec .
             "%c %s") 
      (:tempfile . 
                 nil))
    :default "python")
  (quickrun-add-command "c++/c1z"
	'((:command . "g++")
      (:exec    . ("%c -std=c++1z %o -o %e %s"
				   "%e %a"))
      (:remove  . ("%e")))
	:default "c++"))

;; 将文档插入代码中
(use-package docstr
  :ensure t
  :hook (prog-mode . docstr-mode))

(provide 'init-prog)
