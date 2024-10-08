;; 图形界面插件的设置
(setq graphic-only-plugins-setting ()) 

(setq gp-count 0)
(push '(setq gp-count (1+ gp-count)) graphic-only-plugins-setting)

;; 递归遍历加载路径
(defun add-subdirs-to-load-path(dir)
  "Recursive add directories to `load-path`."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))

(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))
  ;;将配置文件添加进load-path
  (add-subdirs-to-load-path "~/.emacs.d/etc/")
   ;;(unless (file-exists-p "~/.config/.evan-emacs.d/")
   ;;  (mkdir "~/.config/.evan-emacs.d"))
  
  ;;(add-subdirs-to-load-path "~/.config/.evan-emacs.d/")
)
;; 全屏
;; (toggle-frame-fullscreen)

;; 所有配置自带的模块
(require 'init-config)

;;(put 'dired-find-alternate-file 'disabled nil)


;; ;;关闭滚动条
;; (scroll-bar-mode -1)


;; ;; 键位提示
;; (use-package which-key
;;   :ensure t
;;   ;;:custom
;;   ;; 弹出方式，底部弹出
;;   ;;(which-key-popup-type 'side-window)
;;   :config
;;   ;;弹出方式，右侧弹出
;;   (which-key-setup-side-window-right)
;;   (which-key-mode 1))

;; ;; 跳转窗口
;; (use-package ace-window
;;   :ensure t
;;   :init
;;   (progn
;;     (global-set-key [remap other-window] 'ace-window)
;; 	;; 设置标记
;;     (custom-set-faces
;;      '(aw-leading-char-face
;;        ((t (:inherit ace-jump-face-foreground :height 3.0 :foreground "magenta")))))))
















;; ;;插件
;; (require 'package)
;; (package-initialize)

;; (defconst package-elpa-sources
;;   '((standard-dev . (("gnu"   . "http://elpa.gnu.org/packages/")
;;                      ("melpa" . "http://melpa.org/packages/")))
;;     (standard-statble . (("gnu"   . "http://elpa.gnu.org/packages/")
;;                          ("melpa" . "https://stable.melpa.org/packages/")))
;;     (tsinghua . (("gnu"          . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                  ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;                  ("emacswiki"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/emacswiki/")))))
;; (defun package-available-elpa-sources ()
;;   (defun get-all-keys (alst)
;;     (if (null alst)
;;         '()
;;       (cons (caar alst)
;;             (get-all-keys (cdr alst)))))
;;   (get-all-keys package-elpa-sources))
;; (defun package-switch-elps-sources (elpa)
;;   "Switch between different `ELPA' sources."
;;   (interactive
;;    (list
;;     (intern (completing-read
;;              "Select from available sources: "
;;              (mapcar 'symbol-name
;;                      (package-available-elpa-sources))))))
;;   (setq package-archives (alist-get elpa package-elpa-sources)))
;; (package-switch-elps-sources 'tsinghua)

;; (load-theme 'atom-one-dark t)
;; ;;(load-theme 'solarized-dark t)
;; ;;(load-theme 'dracula t)
;; ;;(require 'clang-format)
;; ;;自动补全括号
;; (electric-pair-mode 1)
;; ;;设置背景颜色
;; ;(set-background-color "black")
;; ;(set-foreground-color "white")
;; ;;(set-face-foreground 'region "green");;区域前景色设为绿色
;; ;;(set-face-background 'region "blue");;区域背景色设为蓝色
;; ;;显示匹配括号
;; (show-paren-mode t)
;; (setq show-paren-style 'parentheses)

;; ;;设置字体
;; ;;(add-to-list 'default-frame-alist
;; ;;             '(font . "DejaVu Sans Mono-10"))
;; ;;设置框架显示大小，会影响字体大小
;; (set-face-attribute 'default (selected-frame) :height 130)

;; ;;设置滚动页面不整页滚动
;; ;;(setq
;; ;;scrool-step 1
;; ;;scrool-margin 3
;; ;;scrool-conservatively 10000)

;; ;;语法高亮
;; (global-font-lock-mode t)

;; ;;显示时间
;; (display-time-mode t)
;; (setq display-time-24hr-format t)
;; (setq display-time-day-and-date t)
;; ;;启动Emacs Server
;; ;;(server-start)

;; ;;高亮当前行
;; (require 'hl-line)
;; (global-hl-line-mode t)
;; ;;设置高亮行颜色
;; ;;(set-face-background 'hl-line "#0000FF");;蓝色
;; ;;(set-face-background 'hl-line "#3e4446")
;; ;;(set-face-background 'hl-line "#FBFFD8")
;; ;;(set-face-foreground 'hl-line nil)
;; ;;保持当前行语法高亮
;; (set-face-foreground 'highlight nil)

;; ;;在buffer左侧显示行号
;; ;;(dolist (hook (list
;; ;;'c-mode-hook
;; ;;'c++-mode-hook
;; ;;'emacs-lisp-mode-hook
;; ;;'lisp-interaction-mode-hook
;; ;;'lisp-mode-hook
;; ;;'emms-playlist-mode-hook
;; ;;'java-mode-hook
;; ;;'asm-mode-hook
;; ;;'haskell-mode-hook
;; ;;'rcirc-mode-hook
;; ;;'emms-lyrics-mode-hook
;; ;;'erc-mode-hook
;; ;;'sh-mode-hook
;; ;;'makefile-gmake-mode-hook))
;; ;;(add-hook hook (lambda () (linum-mode 1))))

;; (global-display-line-numbers-mode 1) ; always show line numbers
;; ;;(global-linum-mode 1) ; always show line numbers
;; ;;(setq linum-format "%d|");set line numbers format

;; ;;不产生#filename#临时文件
;; ;;(etq auto-save-default nil)
;; (make-directory "~/.emacs.d/autosave/" t)
;; (make-directory "~/.emacs.d/backups/" t)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-faces-vector
;;    [default default default italic underline success warning error])
;;  '(ansi-color-names-vector
;;    ["#21252B" "#E06C75" "#98C379" "#E5C07B" "#61AFEF" "#C678DD" "#56B6C2" "#ABB2BF"])
;;  '(auto-save-name-transforms '((".*" . "~/.emacs.d/autosave/")))
;;  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/")))
;;  '(compilation-message-face 'default)
;;  '(cua-global-mark-cursor-color "#3cafa5")
;;  '(cua-normal-cursor-color "#8d9fa1")
;;  '(cua-overwrite-cursor-color "#c49619")
;;  '(cua-read-only-cursor-color "#93a61a")
;;  '(custom-safe-themes
;;    '("830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "a41b81af6336bd822137d4341f7e16495a49b06c180d6a6417bf9fd1001b6d2b" "37ba833442e0c5155a46df21446cadbe623440ccb6bbd61382eb869a2b9e9bf9" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "83ae405e25a0a81f2840bfe5daf481f74df0ddb687f317b5e005aa61261126e9" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "63df625509cec7b2b7deba1d48ef07ffbee99c735a95d130ad9d1fc3df8b9a34" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "174502267725776b47bdd2d220f035cae2c00c818765b138fea376b2cdc15eb6" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" default))
;;  '(dired-dwim-target t)
;;  '(fci-rule-color "#3E4451")
;;  '(highlight-changes-colors '("#e2468f" "#7a7ed2"))
;;  '(highlight-symbol-colors
;;    '("#3c6f408d329d" "#0c4a45f64ce3" "#486e33913532" "#1fac3bea568d" "#2ec943ac3324" "#449935a7314d" "#0b04411b5986"))
;;  '(highlight-symbol-foreground-color "#9eacac")
;;  '(highlight-tail-colors
;;    '(("#01323d" . 0)
;;      ("#687f00" . 20)
;;      ("#008981" . 30)
;;      ("#0069b0" . 50)
;;      ("#936d00" . 60)
;;      ("#a72e01" . 70)
;;      ("#a81761" . 85)
;;      ("#01323d" . 100)))
;;  '(hl-bg-colors
;;    '("#936d00" "#a72e01" "#ae1212" "#a81761" "#3548a2" "#0069b0" "#008981" "#687f00"))
;;  '(hl-fg-colors
;;    '("#002732" "#002732" "#002732" "#002732" "#002732" "#002732" "#002732" "#002732"))
;;  '(hl-paren-colors '("#3cafa5" "#c49619" "#3c98e0" "#7a7ed2" "#93a61a"))
;;  '(ivy-mode t)
;;  '(lsp-ui-doc-border "#9eacac")
;;  '(nrepl-message-colors
;;    '("#ec423a" "#db5823" "#c49619" "#687f00" "#c3d255" "#0069b0" "#3cafa5" "#e2468f" "#7a7ed2"))
;;  '(nyan-mode t)
;;  '(package-selected-packages
;;    '(smartparens benchmark-init valign highlight-indent-guides info-colors page-break-lines posframe emojify all-the-icons-dired dashboard circadian lab-themes modus-operandi-theme modus-vivendi-theme doom-themes beacon quelpa-use-package git quelpa which-key ace-window all-the-icons go-mode iedit anzu comment-dwim-2 ws-butler dtrt-indent clean-aindent-mode undo-tree volatile-highlights zygospore nyan-mode golden-ratio 2048-game youdao-dictionary visual-fill use-package birds-of-paradise-plus-theme nov markdown-mode solarized-theme doom-modeline cmake-mode trashed elpy indent-guide dracula-theme darkokai-theme clang-format racket-mode geiser counsel-projectile projectile ivy badwolf-theme atom-one-dark-theme ample-theme magit smooth-scrolling symbol-overlay company-ebdb company))
;;  '(paradox-github-token t)
;;  '(pos-tip-background-color "#01323d")
;;  '(pos-tip-foreground-color "#9eacac")
;;  '(smartrep-mode-line-active-bg (solarized-color-blend "#93a61a" "#01323d" 0.2))
;;  '(term-default-bg-color "#002732")
;;  '(term-default-fg-color "#8d9fa1")
;;  '(tetris-x-colors
;;    [[229 192 123]
;;     [97 175 239]
;;     [209 154 102]
;;     [224 108 117]
;;     [152 195 121]
;;     [198 120 221]
;;     [86 182 194]])
;;  '(vc-annotate-background nil)
;;  '(vc-annotate-background-mode nil)
;;  '(vc-annotate-color-map
;;    '((20 . "#ec423a")
;;      (40 . "#dace73be2daa")
;;      (60 . "#d060861a2512")
;;      (80 . "#c49619")
;;      (100 . "#b55b9c82193e")
;;      (120 . "#ad589f3e1963")
;;      (140 . "#a513a1d61994")
;;      (160 . "#9c81a44d19d1")
;;      (180 . "#93a61a")
;;      (200 . "#84b7a96352b1")
;;      (220 . "#7a4daad96863")
;;      (240 . "#6cbbac617d20")
;;      (260 . "#5a04adfd9175")
;;      (280 . "#3cafa5")
;;      (300 . "#41c4a690bd74")
;;      (320 . "#41d4a1f2c946")
;;      (340 . "#40129d4ad514")
;;      (360 . "#3c98e0")))
;;  '(vc-annotate-very-old-color nil)
;;  '(weechat-color-list
;;    '(unspecified "#002732" "#01323d" "#ae1212" "#ec423a" "#687f00" "#93a61a" "#936d00" "#c49619" "#0069b0" "#3c98e0" "#a81761" "#e2468f" "#008981" "#3cafa5" "#8d9fa1" "#60767e"))
;;  '(xterm-color-names
;;    ["#01323d" "#ec423a" "#93a61a" "#c49619" "#3c98e0" "#e2468f" "#3cafa5" "#faf3e0"])
;;  '(xterm-color-names-bright
;;    ["#002732" "#db5823" "#62787f" "#60767e" "#8d9fa1" "#7a7ed2" "#9eacac" "#ffffee"]))

;; ;;自动缩进的宽度为4
;; (setq c-basic-offset 4)
;; ;;空格代替tab
;; (setq-default indent-tabs-mode nil)
;; (setq default-tab-width 4)
;; ;;(setq default-tab-style "linux")
;; ;;(setq indent-line-function 'insert-tab)

;; ;;关闭该死的回车缩进
;; (electric-indent-mode -1)

;; ;;在模式栏中显示当前光标所在函数
;; (which-function-mode)

;; ;;按键绑定
;; (global-set-key (kbd "<select>") 'end-of-line)

;; ;;window move
;; (global-set-key (kbd "C-M-j") 'windmove-up)
;; (global-set-key (kbd "C-M-k") 'windmove-down)
;; (global-set-key (kbd "C-x h") 'windmove-left)
;; (global-set-key (kbd "C-x l") 'windmove-right)
;; (provide 'init-keybindings)

;; ;;禁用 ctrl + z
;; (global-set-key (kbd "C-z") 'nil)

;; ;;颜色配置
;; ;;(custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  ;'(font-lock-comment-face ((t (:foreground "green"))))
;;  ;'(font-lock-function-name-face ((t (:foreground "lightblue"))))
;;  ;'(font-lock-keyword-face ((t (:foreground "yellow"))))
;;  ;'(font-lock-string-face ((t (:foreground "red"))))
;;  ;'(font-lock-type-face ((t (:foreground "green"))))
;; ;; ''(linum ((t (:inherit (shadow default) :foreground "yellow")))))

;; ;; ;;auto-complete
;; ;; (add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20170125.245/")
;; ;; (require 'auto-complete)
;; ;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20170125.245/dict/")
;; ;; (require 'auto-complete-config)
;; ;; (add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-clang-20140409.752/")
;; ;; (require 'auto-complete-clang)

;; ;;company
;; (add-hook 'after-init-hook 'global-company-mode)
;; (use-package company-tabnine :ensure t)
;; ;;tab-nine
;; (require 'company-tabnine)
;; (add-to-list 'company-backends #'company-tabnine)

;; ;;设置company-mode 响应时间 0.1
;; (setq company-idle-delay 0.1)
;; ;;Number the candidates
;; (setq company-show-numbers t)
;; ;;设置auto complete 响应时间 0.1
;; ;;(setq ac-quick-help-delay 0.1)#auto complete

;; ;(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;; ;(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;; ;(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;; ;(add-hook 'css-mode-hook 'ac-css-mode-setup)
;; ;(add-hook 'auto-complete-mode-hook 'ac-common-setup)
;; ;(add-hook 'c-mode-hook '(lambda () (company-mode)))
;; ;(add-hook 'c++-mode-hook '(lambda () (company-mode)))

;; ;;symbol-overlay
;; (require 'symbol-overlay)
;; (global-set-key (kbd "M-i") 'symbol-overlay-put)
;; (global-set-key (kbd "M-n") 'symbol-overlay-switch-forward)
;; (global-set-key (kbd "M-p") 'symbol-overlay-switch-backward)
;; (global-set-key (kbd "<f7>") 'symbol-overlay-mode)
;; (global-set-key (kbd "<f8>") 'symbol-overlay-remove-all)

;; ;;smooth-scrolling
;; (require 'smooth-scrolling)
;; (smooth-scrolling-mode 1)
;; (setq smooth-scroll-margin 5)


;; ;;projectile
;; (projectile-mode 1)
;; (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;; ;;(setq projectile-completion-system 'ivy)

;; ;;Swiper
;; (require 'swiper)
;; (define-key swiper-map (kbd "C-r") 'swiper-query-replace)


;; ;;(counsel-projectile)
;; (counsel-projectile-mode 1)

;;  ;;(custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  ;;)
;;  ;;(custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  ;;)
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0 :foreground "magenta")))))

;; (require 'indent-guide)
;; (elpy-enable)
;; ;;awesome-tab
;; ;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
;; ;; (require 'awesome-tab)
;; ;; (awesome-tab-mode t)
;; ;; (global-set-key (kbd "C-c <right>") 'awesome-tab-forward-tab)
;; ;; (global-set-key (kbd "C-c <left>") 'awesome-tab-backward-tab)
;; ;; (global-set-key (kbd "C-c <up>") 'awesome-tab-forward-group)
;; ;; (global-set-key (kbd "C-c <down>") 'awesome-tab-backward-group)
;; ;; (global-set-key (kbd "C-c h") 'awesome-tab-move-current-tab-to-left)
;; ;; (global-set-key (kbd "C-c l") 'awesome-tab-move-current-tab-to-right)
;; ;; (global-set-key (kbd "C-c j") 'awesome-tab-ace-jump)
;; ;; (global-set-key (kbd "C-c b") 'awesome-tab-select-beg-tab)
;; ;; (global-set-key (kbd "C-c e") 'awesome-tab-select-end-tab)
;; ;; (global-set-key (kbd "<f1> 1") 'awesome-tab-select-visible-tab)
;; ;; (global-set-key (kbd "<f1> 2") 'awesome-tab-select-visible-tab)
;; ;; (global-set-key (kbd "<f1> 3") 'awesome-tab-select-visible-tab)
;; ;; (global-set-key (kbd "<f1> 4") 'awesome-tab-select-visible-tab)
;; ;; (global-set-key (kbd "<f1> 5") 'awesome-tab-select-visible-tab)
;; ;; (global-set-key (kbd "<f1> 6") 'awesome-tab-select-visible-tab)
;; ;; (global-set-key (kbd "<f1> 7") 'awesome-tab-select-visible-tab)
;; ;; (global-set-key (kbd "<f1> 8") 'awesome-tab-select-visible-tab)
;; ;; (global-set-key (kbd "<f1> 9") 'awesome-tab-select-visible-tab)
;; ;; (global-set-key (kbd "<f1> 0") 'awesome-tab-select-visible-tab)
;; ;; (setq awesome-tab-show-tab-index t)

;; ;;emacs 回收站
;; (setq delete-by-moving-to-trash t)

;; (setq trash-directory "~/.Trash")

;; ;;cmake-mode
;; (setq load-path (cons (expand-file-name "/home/wangxin/.emacs.d/elpa/cmake-mode-20210104.1831") load-path))
;; (require 'cmake-mode)
;; (setq auto-mode-alist
;;       (append '(("CMakeLists\\.txt\\'" . cmake-mode)
;;                 ("\\.cmake\\'" . cmake-mode))
;;               auto-mode-alist))

;;  ;;; tool for minify a JSON
;;  ;;; https://www.accidentalrebel.com/posts/minifying-buffer-contents-in-emacs.html
;;  (defun minify-json()
;;    "Minifies the buffer contents by removing whitespaces."
;;    (interactive)
;;    (delete-whitespace-rectangle (point-min) (point-max))
;;    (mark-whole-buffer)
;;    (goto-char (point-min))
;;    (while (search-forward "\n" nil t) (replace-match "" nil t)))

;; (define-minor-mode disable-mouse-mode
;;   "A minor-mode that disables all mouse keybinds."
;;   :global t
;;   :lighter " 🐭"
;;   :keymap (make-sparse-keymap))

;; (dolist (type '(mouse down-mouse drag-mouse
;;                       double-mouse triple-mouse))
;;   (dolist (prefix '("" C- M- S- M-S- C-M- C-S- C-M-S-))
;;     ;; Yes, I actually HAD to go up to 7 here.
;;     (dotimes (n 7)
;;       (let ((k (format "%s%s-%s" prefix type n)))
;;         (define-key disable-mouse-mode-map
;;           (vector (intern k)) #'ignore)))))

;; ;;禁用光标闪烁
;; (blink-cursor-mode 0)

;; (use-package nov
;;   :after
;;   (visual-fill-column)
;;   :init
;;   (setq nov-text-width 80)
;;   (setq nov-text-width t)
;;   (defun my-nov-mode-hook ()
;;     (setq buffer-display-table (make-display-table))
;;     (set-display-table-slot buffer-display-table 'wrap ?\ ))
;;   (add-hook 'nov-mode-hook 'visual-line-mode)
;;   (add-hook 'nov-mode-hook 'visual-fill-column-mode)
;;   (add-hook 'nov-mode-hook 'my-nov-mode-hook)
;;   (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode)))

;; ;; (global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)

;; ;;C/C++ completion
;; ;;添加emacs可执行文件的环境变量
;; ;;主要是为了在mac上让magit能先找到我自己编的git而不是用xcode commend line tools自带的git
;; (add-to-list 'exec-path "/usr/local/bin/")
;; ;;racket 路径
;; (add-to-list 'exec-path "/Applications/Racket v8.1/bin/")
;; ;;clang-format 路径
;; (add-to-list 'exec-path "/opt/homebrew/Cellar/clang-format/12.0.1/bin/")
;; ;;cmake 路径
;; (add-to-list 'exec-path "/opt/homebrew/Cellar/cmake/3.20.2/bin/")
;; ;;rg 路径
;; (add-to-list 'exec-path "/opt/homebrew/Cellar/ripgrep/13.0.0/bin/")
;; ;;fzf 路径
;; (add-to-list 'exec-path "/Users/wongyen/.fzf/bin/")
;; ;;彩虹猫
;; (nyan-mode t)
;; (nyan-start-animation);开始舞动吧(会消耗cpu资源)

;; ;;semantic
;; ;; (require 'semantic)
;; ;; (global-semanticdb-minor-mode 1)
;; ;; (global-semantic-idle-scheduler-mode 1)
;; ;; (semantic-mode 1)
;; ;;(semantic-enable)

;; ;;disable semantic for html and python
;; ;; (setq semantic-new-buffer-setup-functions
;; ;;       (remove-if (lambda (buffer-setup-function)
;; ;;                    (member (car buffer-setup-function)
;; ;;                            '(python-mode html-mode)))
;; ;;                  semantic-new-buffer-setup-functions))

;; ;; (remove-hook 'python-mode-hook 'wisent-python-default-setup)

;; ;; ;;semantic company-mode config
;; ;; (defun company-semantic-setup ()
;; ;;   "Configure company-backends for company-semantic and company-yasnippet."
;; ;;   (delete 'company-irony company-backends)
;; ;;   (push '(company-semantic :with company-yasnippet) company-backends))

;; ;; (global-ede-mode t)

;; ;; (setq ede-custom-file (expand-file-name "cc-mode-projects.el" user-emacs-directory))
;; ;; (when (file-exists-p ede-custom-file)
;; ;;   (load ede-custom-file))

;; ;; ;;company-c-headers
;; ;; (defun company-c-headers-setup()
;; ;;   (add-to-list 'company-backends 'company-c-headers))
;; ;; ;;ede return system header file path for company-c-header files and local header files
;; ;; (defun ede-object-system-include-path ()
;; ;;   (when ede-object
;; ;;     (ede-system-include-path ede-object)))
;; ;; (setq company-c-headers-path-system 'ede-object-system-include-path)
;; ;; ;; define local header files
;; ;; (setq header-custom-file (expand-file-name "cc-mode-header-custom.el" user-emacs-directory))
;; ;; (when (file-exists-p header-custom-file)
;; ;;   (load header-custom-file))
;; ;; ;; loading setup founctions for C/C++ mode
;; ;; (add-hook 'c++-mode-hook 'company-c-headers-setup)
;; ;; (add-hook 'c-mode-hook 'company-c-headers-setup)
;; ;; (add-hook 'c++-mode-hook 'company-semantic-setup)
;; ;; (add-hook 'c-mode-hook 'company-semantic-setup)

;; ;; ;; RTags
;; ;; (rtags-enable-standard-keybindings)
;; ;; (setq rtags-autostart-diagnostics t)
;; ;; (rtags-diagnostics)

;; ;; ;; company-rtags
;; ;; (defun company-rtags-setup ()
;; ;;   "Configure company-backends for company-rtags."
;; ;;   (delete 'company-semantic company-backends)
;; ;;   (setq rtags-completions-enabled t)
;; ;;   (push '(company-rtags :with company-yasnippet) company-backends))

;; ;; ;; loading RTags by adding hooks
;; ;; (rtags-start-process-unless-running)
;; ;; (add-hook 'c++-mode-hook 'company-rtags-setup)
;; ;; (add-hook 'c-mode-hook 'company-rtags-setup)


;; ;; syntax checking and formatting
;; (require 'flycheck-rtags)
;; (defun flycheck-rtags-setup ()
;;   "Configure flycheck-rtags."
;;   (flycheck-select-checker 'rtags)
;;   (setq-local flycheck-highlighting-mode nil)
;;   (setq-local flycheck-check-syntax-automatically nil))

;; (add-hook 'c++-mode-hook 'flycheck-rtags-setup)
;; (add-hook 'c-mode-hook 'flycheck-rtags-setup)

;; ;;clang-format
;; (defun clang-format-on-save ()
;;   (add-hook 'before-save-hook #'clang-format-buffer nil 'local))
;; (add-hook 'c++-mode-hook 'clang-format-on-save)
;; (add-hook 'c-mode-hook 'clang-format-on-save)

;; ;;company-cmake
;; (defun company-cmake-setup ()
;;   (add-to-list 'company-backends 'company-cmake))
;; (add-hook 'cmake-mode-hook 'company-cmake-setup)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "78c4238956c3000f977300c8a079a3a8a8d4d9fee2e68bad91123b58a4aa8588" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" default))
 '(package-selected-packages
   '(emms-mode-line-cycle paradox gruvbox-theme typescript-mode atom-one-dark zygospore youdao-dictionary xclip ws-butler which-key vterm volatile-highlights visual-fill valign undo-tree try symbol-overlay solarized-theme smooth-scrolling smartparens racket-mode quelpa-use-package posframe perspeen pdf-tools page-break-lines nyan-mode nov modus-vivendi-theme modus-operandi-theme markdown-mode magit link-hint lazycat-theme lab-themes json-mode info-colors indent-guide iedit hungry-delete highlight-indent-guides golden-ratio go-mode git flycheck-rtags exec-path-from-shell emojify elpy dtrt-indent doom-themes dashboard counsel-projectile company-tabnine company-rtags company-c-headers comment-dwim-2 cmake-mode clean-aindent-mode clang-format circadian birds-of-paradise-plus-theme benchmark-init beacon atom-one-dark-theme async anzu amx all-the-icons-dired ace-window 2048-game)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0 :foreground "magenta"))))
 '(perspeen-selected-face ((t (:foreground "#68217A" :bold t)))))
