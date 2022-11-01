;;simple benchmark. It can be used to keep track of where time is being spent during Emacs startup in order to optimize startup times.
(use-package benchmark-init
  :ensure t
  :config
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

;; 括号匹配
(use-package smartparens
  :ensure t 
  :hook (prog-mode . smartparens-global-mode))

;; Emacs下telegram的客户端，默认不开启
;; (use-package telega
;;   :ensure t
;;   :commands (telega) 
;;   :init (setq telega-proxies 
;;               '((:server "localhost"
;;                          :port "1088"
;;                          :enable t 
;;                          :type (:@type "proxyTypeSocks5")))
;;               telega-chat-show-avatars nil) 
;;   (setq telega-chat-fill-column 65) 
;;   (setq telega-emoji-use-images t)
;;   :config
;;   (set-face-attribute 'telega-entity-type-code nil :font (font-spec :name evan/en-font-name
;; 										                            :style evan/en-font-style
;; 										                            :size evan/en-font-size))
;;   (set-fontset-font t 'unicode (font-spec :family "Symbola") nil 'prepend) 
;;   (with-eval-after-load 'company (add-hook 'telega-chat-mode-hook (lambda () 
;;                                                                     (make-local-variable 'company-backends) 
;;                                                                     (dolist (it '(telega-company-botcmd telega-company-emoji)) 
;;                                                                       (push it company-backends))))) 
;;   (with-eval-after-load 'all-the-icons (add-to-list 'all-the-icons-mode-icon-alist '(telega-root-mode all-the-icons-fileicon "telegram" 
;;                                                                                                       :heigt 1.0 
;;                                                                                                       :v-adjust -0.2 
;;                                                                                                       :face all-the-icons-yellow)) 
;;                         (add-to-list 'all-the-icons-mode-icon-alist '(telega-chat-mode all-the-icons-fileicon "telegram" 
;;                                                                                        :heigt 1.0 
;;                                                                                        :v-adjust -0.2 
;;                                                                                        :face all-the-icons-blue))) 
;;   (telega-notifications-mode t)
;;   (telega-mode-line-mode 1)
;;   (add-hook 'telega-chat-mode-hook
;;             (lambda ()
;;               (toggle-truncate-lines +1)
;;               (display-line-numbers-mode -1)))
;;   (add-hook 'telega-root-mode-hook
;;             (lambda ()
;;               (toggle-truncate-lines +1)
;;               (display-line-numbers-mode -1)
;;               (toggle-truncate-lines -1)))
;;   (define-key telega-msg-button-map "k" nil))

;; Emacs下的终端仿真器
(use-package vterm
  :commands (vterm)
  :ensure t
  :bind (:map leader-key
              ("o t" . 'vterm)))

;; 有道词典
(use-package youdao-dictionary
  :commands (youdao-dictionary-search-at-point-posframe)
  :ensure t 
  :config (setq url-automatic-caching t) 
  (which-key-add-key-based-replacements "C-c y" "有道翻译") 
  :bind (("C-c y t" . 'youdao-dictionary-search-at-point) 
         ("C-c y g" . 'youdao-dictionary-search-at-point+) 
         ("C-c y p" . 'youdao-dictionary-play-voice-at-point) 
         ("C-c y r" . 'youdao-dictionary-search-and-replace) 
         ("C-c y i" . 'youdao-dictionary-search-from-input)))

;; Emacs下的pdf查看工具，默认非图形化不开启
(use-package pdf-tools 
  :ensure t 
  :hook ('doc-view-mode 'pdf-view-mode)
  :bind (:map pdf-view-mode-map
			  ("j" . #'pdf-view-next-line-or-next-page)
			  ("k" . #'pdf-view-previous-line-or-previous-page)
			  ("l" . #'image-forward-hscroll)
			  ("h" . #'image-backward-hscroll)))

;; 窗口管理器
(use-package windmove
  :defer 0
  :ensure t 
  :init (windmove-default-keybindings) 
  :config 
  :bind (:map leader-key
              ("w f" . #'windmove-right) 
              ("w b" . #'windmove-left) 
              ("w p" . #'windmove-up) 
              ("w n" . #'windmove-down) 
              ("w F" . #'window-move-right) 
              ("w B" . #'window-move-left) 
              ("w P" . #'window-move-up) 
              ("w N" . #'window-move-down)
              ("w h" . #'enlarge-window-horizontally)
              ("w l" . #'shrink-window-horizontally)
              ("w j" . #'enlarge-window)
              ("w k" . #'shriqnk-window)))

;; 折叠和收缩代码
(use-package hideshow 
  :ensure t 
  :diminish hs-minor-mode
  :bind (:map prog-mode-map
              ("C-c -" . hs-toggle-hiding) 
              ("C-c p +" . hs-show-all)
              ("C-c +" . hs-show-block)) 
  :hook (prog-mode . hs-minor-mode))


;; 一个可以临时安装使用插件的插件
(use-package try
  :commands (try)
  :ensure t)

;; 工作区
(use-package perspeen
  :ensure t 
  :init
  ;; (setq perspeen-use-tab t)
  (setq perspeen-keymap-prefix [C-tab]) 
  :config (perspeen-mode)
  :custom-face (perspeen-selected-face ((t (:foreground "#68217A" :bold t)))))

;; 撤销树
(use-package undo-tree 
  :ensure t 
  :hook (after-init . global-undo-tree-mode) 
  :init (setq undo-tree-visualizer-timestamps t undo-tree-enable-undo-in-region nil undo-tree-auto-save-history nil)

  ;; HACK: keep the diff window
  (with-no-warnings (make-variable-buffer-local 'undo-tree-visualizer-diff) 
                    (setq-default undo-tree-visualizer-diff t)))

;; 项目管理
(use-package projectile 
  :ensure t
  :init
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

;; counsel-projectile的配置移动到 .emacs.d/etc/extensions/init-ivy.el下
;; (use-package counsel-projectile
;;   :ensure t
;;   :init
;;   (counsel-projectile-mode 1))

;; 快速查询你的问题
(use-package howdoyou
  :ensure t
  :commands (howdoyou))

;; emacs内置网页浏览器
(use-package eww
  :ensure t 
  :custom (eww-search-prefix "https://google.com/search?q="))

;; 查看英语文档工具
(use-package english-teacher
  :quelpa ((english-teacher :fetcher github :repo "loyalpartner/english-teacher.el"))
  :custom
  (english-teacher-backend 'baidu)
  (english-teacher-show-result-function 'english-teacher-eldoc-show-result-function)
  :hook ((Info-mode
		  Man-mode
		  Woman-mode
		  ;; help-mode
		  ) . english-teacher-follow-mode))
;; google翻译工具
(use-package go-translate
  :ensure t
  :config
  (setq go-translate-base-url "https://translate.google.cn")
  (setq go-translate-local-language "zh-CN")
  (setq go-translate-token-current (cons 430675 2721866130)))

;; 用posframe在dired模式下显示文件内容
(use-package dired-posframe
  :ensure t
  :custom
  (dired-posframe-size-limit (* 100 1024 102400))
  :bind((:map dired-mode-map)
		("C-*" . dired-posframe-mode)))

;; 更改窗格布局
(use-package rotate
  :ensure t)

;; 窗口布局恢复
(use-package winner-mode
  :hook (after-init . winner-mode)
  :bind (:map winner-mode-map
              ("C-c H" . 'winner-undo)
              ("C-c L" . 'winner-redo)))

;; 命令日志
(use-package command-log-mode
  :ensure t)

;; 写作模式，让你专注与写作状态
(use-package writeroom-mode
  :ensure t
  :hook (writeroom-mode . (lambda () (progn
									   (nlinum-mode -1)
									   (git-gutter-mode -1)
									   (toggle-truncate-lines -1)))))

;; 禁用鼠标功能
(use-package disable-mouse
  :ensure t
  :hook (after-init . (lambda ()
						(global-disable-mouse-mode 1))))

 ;;; tool for minify a JSON
 ;;; https://www.accidentalrebel.com/posts/minifying-buffer-contents-in-emacs.html
 (defun minify-json()
   "Minifies the buffer contents by removing whitespaces."
   (interactive)
   (delete-whitespace-rectangle (point-min) (point-max))
   (mark-whole-buffer)
   (goto-char (point-min))
   (while (search-forward "\n" nil t) (replace-match "" nil t)))

(provide 'init-tools)
