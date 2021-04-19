;;插件
(require 'package)
(package-initialize)

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

;;(load-theme 'ample-flat t)
;;(load-theme 'dracula t)
;;(require 'clang-format)
(electric-pair-mode 1)
;;设置背景颜色
;(set-background-color "black")
;(set-foreground-color "white")
;;(set-face-foreground 'region "green");;区域前景色设为绿色
;;(set-face-background 'region "blue");;区域背景色设为蓝色
;;显示匹配括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;设置滚动页面不整页滚动
;;(setq
;;scrool-step 1
;;scrool-margin 3
;;scrool-conservatively 10000)

;;语法高亮
(global-font-lock-mode t)

;;显示时间
(display-time-mode t)
;;启动Emacs Server
;;(server-start)

;;高亮当前行
(require 'hl-line)
(global-hl-line-mode t)
;;设置高亮行颜色param#+begin_example

;;(set-face-background 'hl-line "#0000FF");;蓝色
;;(set-face-background 'hl-line "#3e4446")
;;(set-face-foreground 'hl-line nil)
;;保持当前行语法高亮
(set-face-foreground 'highlight nil)

;;在buffer左侧显示行号
;;(dolist (hook (list
;;'c-mode-hook
;;'c++-mode-hook
;;'emacs-lisp-mode-hook
;;'lisp-interaction-mode-hook
;;'lisp-mode-hook
;;'emms-playlist-mode-hook
;;'java-mode-hook
;;'asm-mode-hook
;;'haskell-mode-hook
;;'rcirc-mode-hook
;;'emms-lyrics-mode-hook
;;'erc-mode-hook
;;'sh-mode-hook
;;'makefile-gmake-mode-hook))
;;(add-hook hook (lambda () (linum-mode 1))))

(global-display-line-numbers-mode 1) ; always show line numbers
;;(global-linum-mode 1) ; always show line numbers
;;(setq linum-format "%d|");set line numbers format


;;不产生#filename#临时文件
;;(etq auto-save-default nil)
(make-directory "~/.emacs.d/autosave/" t)
(make-directory "~/.emacs.d/backups/" t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2f2f2e" "#ffb4ac" "#8ac6f2" "#e5c06d" "#a4b5e6" "#e5786d" "#7ec98f" "#74736f"])
 '(auto-save-name-transforms (quote ((".*" . "~/.emacs.d/autosave/"))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#7ec98f")
 '(cua-normal-cursor-color "#8d8b86")
 '(cua-overwrite-cursor-color "#e5c06d")
 '(cua-read-only-cursor-color "#8ac6f2")
 '(custom-safe-themes
   (quote
    ("51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "d1af5ef9b24d25f50f00d455bd51c1d586ede1949c5d2863bef763c60ddf703a" "37ba833442e0c5155a46df21446cadbe623440ccb6bbd61382eb869a2b9e9bf9" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "83ae405e25a0a81f2840bfe5daf481f74df0ddb687f317b5e005aa61261126e9" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "63df625509cec7b2b7deba1d48ef07ffbee99c735a95d130ad9d1fc3df8b9a34" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "174502267725776b47bdd2d220f035cae2c00c818765b138fea376b2cdc15eb6" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" default)))
 '(fci-rule-color "#2f2f2e")
 '(highlight-changes-colors (quote ("#e5786d" "#834c98")))
 '(highlight-symbol-colors
   (quote
    ("#55204c0039fc" "#3f0a4e4240dc" "#5a2849c746fd" "#3fd2334a42f4" "#426a4d5455d9" "#537247613a13" "#46c549b0535c")))
 '(highlight-symbol-foreground-color "#999891")
 '(highlight-tail-colors
   (quote
    (("#2f2f2e" . 0)
     ("#3d464c" . 20)
     ("#3b473c" . 30)
     ("#41434a" . 50)
     ("#4c4536" . 60)
     ("#4b4136" . 70)
     ("#4d3936" . 85)
     ("#2f2f2e" . 100))))
 '(hl-bg-colors
   (quote
    ("#4c4536" "#4b4136" "#504341" "#4d3936" "#3b313d" "#41434a" "#3b473c" "#3d464c")))
 '(hl-fg-colors
   (quote
    ("#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29" "#2a2a29")))
 '(hl-paren-colors (quote ("#7ec98f" "#e5c06d" "#a4b5e6" "#834c98" "#8ac6f2")))
 '(ivy-mode t)
 '(lsp-ui-doc-border "#999891")
 '(nrepl-message-colors
   (quote
    ("#ffb4ac" "#ddaa6f" "#e5c06d" "#3d464c" "#e3eaea" "#41434a" "#7ec98f" "#e5786d" "#834c98")))
 '(package-selected-packages
   (quote
    (solarized-theme indent-guide dracula-theme darkokai-theme company-tabnine clang-format racket-mode geiser counsel-projectile projectile ivy badwolf-theme atom-one-dark-theme ample-theme magit smooth-scrolling symbol-overlay company-ebdb company)))
 '(paradox-github-token t)
 '(pos-tip-background-color "#2f2f2e")
 '(pos-tip-foreground-color "#999891")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#8ac6f2" "#2f2f2e" 0.2))
 '(term-default-bg-color "#2a2a29")
 '(term-default-fg-color "#8d8b86")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#ffb4ac")
     (40 . "#f3a0bb068dbb")
     (60 . "#ecf0bdf57dd8")
     (80 . "#e5c06d")
     (100 . "#d1fcc2679b35")
     (120 . "#c551c35ab143")
     (140 . "#b610c464c727")
     (160 . "#a327c588dd05")
     (180 . "#8ac6f2")
     (200 . "#89fec7dad1d0")
     (220 . "#8863c85ec150")
     (240 . "#85eec8dcb0cf")
     (260 . "#82a3c956a041")
     (280 . "#7ec98f")
     (300 . "#9131c244b2d6")
     (320 . "#98acbe43c439")
     (340 . "#9f20ba15d58f")
     (360 . "#a4b5e6"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#2a2a29" "#2f2f2e" "#504341" "#ffb4ac" "#3d464c" "#8ac6f2" "#4c4536" "#e5c06d" "#41434a" "#a4b5e6" "#4d3936" "#e5786d" "#3b473c" "#7ec98f" "#8d8b86" "#74736f")))
 '(xterm-color-names
   ["#2f2f2e" "#ffb4ac" "#8ac6f2" "#e5c06d" "#a4b5e6" "#e5786d" "#7ec98f" "#e8e5db"])
 '(xterm-color-names-bright
   ["#2a2a29" "#ddaa6f" "#6a6a65" "#74736f" "#8d8b86" "#834c98" "#999891" "#f6f3e8"]))

;;自动缩进的宽度为4
(setq c-basic-offset 4)
;;空格代替tab
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
;;(setq default-tab-style "linux")
;;(setq indent-line-function 'insert-tab)
 
;;关闭该死的回车缩进
(electric-indent-mode -1)

;;在模式栏中显示当前光标所在函数
(which-function-mode)

;;按键绑定
(global-set-key (kbd "<select>") 'end-of-line)

;;window move
(global-set-key (kbd "C-M-j") 'windmove-up)
(global-set-key (kbd "C-M-k") 'windmove-down)
(global-set-key (kbd "C-x h") 'windmove-left)
(global-set-key (kbd "C-x l") 'windmove-right)
(provide 'init-keybindings)

;;颜色配置
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;'(font-lock-comment-face ((t (:foreground "green"))))
 ;'(font-lock-function-name-face ((t (:foreground "lightblue"))))
 ;'(font-lock-keyword-face ((t (:foreground "yellow"))))
 ;'(font-lock-string-face ((t (:foreground "red"))))
 ;'(font-lock-type-face ((t (:foreground "green"))))
;; ''(linum ((t (:inherit (shadow default) :foreground "yellow")))))

;; ;;auto-complete
;; (add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20170125.245/")
;; (require 'auto-complete)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20170125.245/dict/")
;; (require 'auto-complete-config)
;; (add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-clang-20140409.752/")
;; (require 'auto-complete-clang)

;;company
(global-company-mode t)
(add-hook 'after-init-hook 'global-company-mode)
;;tab-nine
(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)
;;设置company-mode 响应时间 0.1
(setq company-idle-delay 0.1)
;;设置序号
(setq company-show-numbers t)
;;设置auto complete 响应时间 0.1
;;(setq ac-quick-help-delay 0.1)#auto complete

;(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;(add-hook 'css-mode-hook 'ac-css-mode-setup)
;(add-hook 'auto-complete-mode-hook 'ac-common-setup)
;(add-hook 'c-mode-hook '(lambda () (company-mode)))
;(add-hook 'c++-mode-hook '(lambda () (company-mode)))

;;symbol-overlay
(require 'symbol-overlay)
(global-set-key (kbd "M-i") 'symbol-overlay-put)
(global-set-key (kbd "M-n") 'symbol-overlay-switch-forward)
(global-set-key (kbd "M-p") 'symbol-overlay-switch-backward)
(global-set-key (kbd "<f7>") 'symbol-overlay-mode)
(global-set-key (kbd "<f8>") 'symbol-overlay-remove-all)

;;smooth-scrolling
(require 'smooth-scrolling)
(smooth-scrolling-mode 1)
(setq smooth-scroll-margin 5)


;;projectile
(projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;;(setq projectile-completion-system 'ivy)


;;(counsel-projectile)
(counsel-projectile-mode 1)

(custom-set-faces

;; custom-set-faces was added by Custom.

;; If you edit it by hand, you could mess it up, so be careful.

;; Your init file should contain only one such instance.

;; If there is more than one, they won't work right.

'(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

;; Setting Chinese Font

(dolist (charset '(kana han symbol cjk-misc bopomofo))

(set-fontset-font (frame-parameter nil 'font)

charset

(font-spec :family "Microsoft Yahei" :size 16)))

(require 'indent-guide)


(global-font-lock-mode t) ;; fontify all buffers
(setq font-lock-maximum-size 5000000) ;; set 5MB file size limit for fontification


