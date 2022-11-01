;;Emacs basic config

;; yes-or-no-p to y-or-n-p
(fset 'yes-or-no-p 'y-or-n-p)

;;设置缓存文件存放路径
(setq user-emacs-directory "~/.emacs.d/var")
(setq desktop-dirname "~/.emacs.d/var/desktop-save")
;;设置Emacs源码位置
;;(setq source-directory "~/Documents/repoes/emacs-src/src/")
;;设置自动保存路径前缀
;;(setq auto-save-list-file-prefix "~/.emacs.d/var/auto-save-list/#saves-")
;;设置eshell历史记录
(setq eshell-history-file-name "~/.emacs.d/var/eshell/history")
(setq recentf-save-file "~/.emacs.d/var/recentf")
(setq recentf-max-menu-items 20)
(setq x-select-enable-clipboard t)
(set-default 'truncate-lines t)

;;emacs 回收站
(setq delete-by-moving-to-trash t)
(setq trash-directory "~/.Trash")

;; 关闭滚动条
(scroll-bar-mode -1)

;; 关闭工具栏
;;(tool-bar-mode -1)

;; 关闭菜单栏
;;(menu-bar-mode -1)

;; 自动刷新被修改过的文件
(global-auto-revert-mode 1)

;; 开启行号
(global-display-line-numbers-mode 1)

;; 选中文本后输入会覆盖
(delete-selection-mode 1)

;; 关闭GUI功能
;; (setq use-file-dialog nil
;;       use-dialog-box nil
;;       inhibit-startup-screen t
;;       inhibit-startup-message t)

;; A GNU Emacs library to ensure environment variables inside Emacs look the same as in the user's shell.
(use-package exec-path-from-shell
	     :ensure t)

;; 回到关闭文件前光标的位置
;; (use-package saveplace
;;   :ensure t
;;   :hook (after-init . (lambda () (save-place-mode t))))

;; 关闭备份
(setq make-backup-files nil auto-save-default nil)

;; 关闭多编辑器同时编辑同一文件时锁文件操作
(setq create-lockfiles nil)

;; 随时重新加载发生修改过的文件
(setq load-prefer-newer t)

;; 关闭字体缓存gc
(setq inhibit-compacting-font-caches nil)

;; 关闭烦人的提示
(setq ring-bell-function 'ignore blink-cursor-mode nil)

;; 任何地方都使用UTF-8
(set-charset-priority 'unicode) 
(setq locale-coding-system   'utf-8)    ; pretty
(set-terminal-coding-system  'utf-8)    ; pretty
(set-keyboard-coding-system  'utf-8)    ; pretty
(set-selection-coding-system 'utf-8)    ; please
(prefer-coding-system        'utf-8)    ; with sugar on top
(setq default-process-coding-system '(utf-8 . utf-8))

;; 更友好及平滑的滚动
(setq scroll-step 2
      scroll-margin 6
      hscroll-step 2
      hscroll-margin 2
      scroll-conservatively 101
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01
      scroll-preserve-screen-position 'always)
;; smooth-scrolling
;; (use-package smooth-scrolling
;;   :ensure t
;;   :config
;;   (smooth-scrolling-mode 1)
;;   (smooth-scrolling-margin 5))


;; 关闭自动调节行高
;; (setq auto-window-vscroll nil)
;; 关闭自动换行的功能
;; (setq truncate-partial-width-windows nil)

;; 让光标无法离开视线
(setq mouse-yank-at-point nil)

;; 最大单行字符数量
(setq-default fill-column 80)

;; 让'_'被视为单词的一部分
(add-hook 'after-change-major-mode-hook (lambda () 
                                          (modify-syntax-entry ?_ "w")))
;; "-" 同上)
(add-hook 'after-change-major-mode-hook (lambda () 
                                          (modify-syntax-entry ?- "w")))

;; 自动缩进的宽度为 4 
(setq c-basic-offset 4)
;; 插入制表符以空格代替
(setq-default indent-tabs-mode nil)
;; 制表符宽度
(setq-default tab-width 4)

;; 高亮对应的括号
(show-paren-mode 1)

;;自动补全括号
;;(electric-pair-mode 1)

;;关闭该死的回车自动缩进
(electric-indent-mode -1)

;; 键位提示
(use-package which-key
  :ensure t
  ;;:custom
  ;; 弹出方式，底部弹出
  ;;(which-key-popup-type 'side-window)
  :config
  ;;弹出方式，右侧弹出
  (which-key-setup-side-window-right)
  (which-key-mode 1))

;; 跳转窗口
(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
	;; 设置标记
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0 :foreground "magenta")))))))

;; 增强了搜索功能, 使用swiper代替原生搜索功能
(use-package swiper
  :ensure t
  :bind
  (("C-s" . swiper)
   ("C-r" . swiper)
   ("C-c C-r" . ivy-resume)
   ;;("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file))
  :config
  (setq counsel-describe-function-function #'helpful-callable)
  (setq counsel-describe-variable-function #'helpful-variable)
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)))

;; symbol-overlay 辅助搜索功能
(use-package symbol-overlay
  :ensure t
  :bind
  (("M-i" . 'symbol-overlay-put)
   ("M-n" . 'symbol-overlay-switch-forward)
   ("M-p" . 'symbol-overlay-switch-backward)))

;;amx remap M-x
(use-package amx
  :ensure t
  :config
  ;; 设置amx保存文件的路径
  (amx-mode 1)
  (setq amx-save-file "~/.emacs.d/var/amx-items"))

(use-package counsel
  :ensure t
  :bind
  (("C-x C-r" . 'counsel-recentf) 
   ("C-x d" . 'counsel-dired))
  :config
  ;; 默认的 rg 配置
  ;; (setq counsel-rg-base-command "rg -M 240 --with-filename --no-heading --line-number --color never %s")
  (setq counsel-rg-base-command (list "rg"
									  "-M" "240"
									  "--with-filename" "--no-heading" "--line-number" "--color"
									  "never" "%s"
									  "-g" "!package-config.org"
									  "-g" "!site-lisp"
									  "-g" "!doc"
									  "-g" "!themes"
                                      "-g" "!quelpa"
                                      "-g" "!etc-cache"))
  (setq counsel-fzf-cmd "fd -I --exclude={site-lisp,etc/snippets,themes,/eln-cache,/var,/elpa,quelpa/,/url,/auto-save-list,.cache,doc/} --type f | fzf -f \"%s\" --algo=v1")
  ;; Integration with `projectile'
  (with-eval-after-load 'projectile
    (setq projectile-completion-system 'ivy)))

;; 字符跳转工具
;; (use-package avy
;;   :defer 0
;;   :ensure t
;;   :bind (("M-g :" . 'avy-goto-char)
;;          ("M-g '" . 'avy-goto-char-2)
;;          ("M-g \"" . 'avy-goto-char-timer)
;;          ("M-g f" . 'avy-goto-line)
;;          ("M-g w" . 'avy-goto-word-1)
;;          ("M-g e" . 'avy-goto-word-0)))


;; 饥饿删除（一次性删除多个连续的空白符）
(use-package hungry-delete
  :disabled
  :ensure t
  :hook ('prog-mode . 'global-hungry-delete-mode))

;; 利用avy跳转链接
(use-package link-hint
  :ensure t
  :bind (("M-g l" . link-hint-open-link)))

;; 自动保存
;; (use-package auto-save
;;   :quelpa ((auto-save :fetcher github :repo "manateelazycat/auto-save"))
;;   :config
;;   (setq auto-save-slient t)
;;   (auto-save-enable))

;; xorg剪贴板工具
(use-package xclip
  :ensure t
  :hook (after-init . xclip-mode))

;; so-long
(use-package so-long
  :config
  (push '(read-only-mode ) so-long-variable-overrides))

;; 增强*help* buffer的功能
(use-package helpful
  :ensure t
  :bind
  (("C-h f" . helpful-callable)
   ("C-h v" . helpful-variable)
   ("C-h k" . helpful-key)))

;; 显示时间
(display-time-mode 1);; 常显
(setq display-time-24hr-format t) ;;24小时制
(setq display-time-day-and-date t) ;;显示时间、星期、日期

;;emms-mode, mode-line滚动插件, 防止分屏后有些信息看不到
;;(use-package )

;; 默认目录为~/.emacs.d/
(cd "~/.emacs.d/")

(provide 'init-basic)
