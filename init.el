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

;;(load-theme 'atom-one-dark t)
(load-theme 'solarized-dark t)
;;(load-theme 'dracula t)
;;(require 'clang-format)
;;自动补全括号
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
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;;启动Emacs Server
;;(server-start)

;;高亮当前行
(require 'hl-line)
(global-hl-line-mode t)
;;设置高亮行颜色
;;(set-face-background 'hl-line "#0000FF");;蓝色
;;(set-face-background 'hl-line "#3e4446")
;;(set-face-background 'hl-line "#FBFFD8")
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
   ["#21252B" "#E06C75" "#98C379" "#E5C07B" "#61AFEF" "#C678DD" "#56B6C2" "#ABB2BF"])
 '(auto-save-name-transforms (quote ((".*" . "~/.emacs.d/autosave/"))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(custom-safe-themes
   (quote
    ("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "a41b81af6336bd822137d4341f7e16495a49b06c180d6a6417bf9fd1001b6d2b" "37ba833442e0c5155a46df21446cadbe623440ccb6bbd61382eb869a2b9e9bf9" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "83ae405e25a0a81f2840bfe5daf481f74df0ddb687f317b5e005aa61261126e9" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "63df625509cec7b2b7deba1d48ef07ffbee99c735a95d130ad9d1fc3df8b9a34" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "174502267725776b47bdd2d220f035cae2c00c818765b138fea376b2cdc15eb6" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" default)))
 '(dired-dwim-target t)
 '(fci-rule-color "#3E4451")
 '(ivy-mode t)
 '(package-selected-packages
   (quote
    (solarized-theme doom-modeline cmake-mode trashed elpy indent-guide dracula-theme darkokai-theme company-tabnine clang-format racket-mode geiser counsel-projectile projectile ivy badwolf-theme atom-one-dark-theme ample-theme magit smooth-scrolling symbol-overlay company-ebdb company)))
 '(paradox-github-token t)
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]]))

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

;;禁用 ctrl + z
(global-set-key (kbd "C-z") 'nil)

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
(add-hook 'after-init-hook 'global-company-mode)
;;tab-nine
(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)
;;设置company-mode 响应时间 0.1
(setq company-idle-delay 0.1)
;;Number the candidates
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

;;Swiper
(require 'swiper)
(define-key swiper-map (kbd "C-r") 'swiper-query-replace)


;;(counsel-projectile)
(counsel-projectile-mode 1)

 ;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;)
 ;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'indent-guide)
(elpy-enable)
;;awesome-tab
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
;; (require 'awesome-tab)
;; (awesome-tab-mode t)
;; (global-set-key (kbd "C-c <right>") 'awesome-tab-forward-tab)
;; (global-set-key (kbd "C-c <left>") 'awesome-tab-backward-tab)
;; (global-set-key (kbd "C-c <up>") 'awesome-tab-forward-group)
;; (global-set-key (kbd "C-c <down>") 'awesome-tab-backward-group)
;; (global-set-key (kbd "C-c h") 'awesome-tab-move-current-tab-to-left)
;; (global-set-key (kbd "C-c l") 'awesome-tab-move-current-tab-to-right)
;; (global-set-key (kbd "C-c j") 'awesome-tab-ace-jump)
;; (global-set-key (kbd "C-c b") 'awesome-tab-select-beg-tab)
;; (global-set-key (kbd "C-c e") 'awesome-tab-select-end-tab)
;; (global-set-key (kbd "<f1> 1") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "<f1> 2") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "<f1> 3") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "<f1> 4") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "<f1> 5") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "<f1> 6") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "<f1> 7") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "<f1> 8") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "<f1> 9") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "<f1> 0") 'awesome-tab-select-visible-tab)
;; (setq awesome-tab-show-tab-index t)

;;emacs 回收站
(setq delete-by-moving-to-trash t)

;;cmake-mode
(setq load-path (cons (expand-file-name "/home/wangxin/.emacs.d/elpa/cmake-mode-20210104.1831") load-path))
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))

 ;;; tool for minify a JSON
 ;;; https://www.accidentalrebel.com/posts/minifying-buffer-contents-in-emacs.html
 (defun minify-json()
   "Minifies the buffer contents by removing whitespaces."
   (interactive)
   (delete-whitespace-rectangle (point-min) (point-max))
   (mark-whole-buffer)
   (goto-char (point-min))
   (while (search-forward "\n" nil t) (replace-match "" nil t)))

(define-minor-mode disable-mouse-mode
  "A minor-mode that disables all mouse keybinds."
  :global t
  :lighter " 🐭"
  :keymap (make-sparse-keymap))

(dolist (type '(mouse down-mouse drag-mouse
                      double-mouse triple-mouse))
  (dolist (prefix '("" C- M- S- M-S- C-M- C-S- C-M-S-))
    ;; Yes, I actually HAD to go up to 7 here.
    (dotimes (n 7)
      (let ((k (format "%s%s-%s" prefix type n)))
        (define-key disable-mouse-mode-map
          (vector (intern k)) #'ignore)))))
