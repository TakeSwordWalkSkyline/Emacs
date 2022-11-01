(require 'package)
(package-initialize)
;; (setq package-archives '(("gnu"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
;;                          ("melpa" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
;;                          ("melpa-stable" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa-stable/")
;;                          ("org" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/")))
(defconst package-elpa-sources
  '((standard-dev . (("gnu"   . "http://elpa.gnu.org/packages/")
                     ("melpa" . "http://melpa.org/packages/")))
    (standard-statble . (("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://stable.melpa.org/packages/")))
    (tsinghua . (("gnu"          . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                 ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                 ("emacswiki"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/emacswiki/")))))
(defun package-available-elpa-sources ()
  (defun get-all-keys (alst)
    (if (null alst)
        '()
      (cons (caar alst)
            (get-all-keys (cdr alst)))))
  (get-all-keys package-elpa-sources))
(defun package-switch-elps-sources (elpa)
  "Switch between different `ELPA' sources."
  (interactive
   (list
    (intern (completing-read
             "Select from available sources: "
             (mapcar 'symbol-name
                     (package-available-elpa-sources))))))
  (setq package-archives (alist-get elpa package-elpa-sources)))
(package-switch-elps-sources 'tsinghua)

;; 安装use-package包管理器
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; 安装quelpa包管理器（用于安装github上的插件）
(unless (package-installed-p 'quelpa)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
    (eval-buffer)
    (quelpa-self-upgrade))
  (quelpa
   '(quelpa-use-package
     :fetcher git
     :url "https://github.com/quelpa/quelpa-use-package.git")))
(require 'quelpa-use-package)

(setq quelpa-upgrade-interval 7
      quelpa-update-melpa-p nil)

(use-package paradox
  :ensure t
  :config
  (paradox-enable))

(provide 'init-package)
