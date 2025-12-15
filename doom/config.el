;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; ---------- elpa source ----------
(setq package-archives
      '(("tuna-gnu"   . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/ ")
        ("tuna-melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/ ")
        ("gnu"        . "https://elpa.gnu.org/packages/ ")
        ("melpa"      . "https://melpa.org/packages/ ")))

;; ---------- git config ----------
;; restore magit stash old behaviour
(setq magit-stash-read-message-function
      #'magit-stash-read-message-traditional)
;; git-gutter-fring
(use-package! git-gutter
  :init
  (global-git-gutter-mode t))
(use-package! git-gutter-fringe
  :hook (prog-mode . git-gutter-mode)
  :config
  (setq git-gutter-fr:side 'left-fringe)
  (set-face-background 'git-gutter-fr:modified "yellow")
  (set-face-background 'git-gutter-fr:added    "green")
  (set-face-background 'git-gutter-fr:removed  "red"))
;; disable diff-hl
(remove-hook 'prog-mode-hook #'diff-hl-mode)

;; ---------- which funcion mode ----------
;; move whici-funcion-mode to top
;; 1. disable funciont display in botton mode-line
(setq mode-line-misc-info
      (assq-delete-all 'which-function-mode mode-line-misc-info))
;; 2. ceate customize header-line format
(defun my/header-line-format ()
  (let ((current-func (which-function)))
    (when current-func
      (propertize
       (concat "[" current-func "]")
       'face '(:height 0.9 :weight bold :foreground "#51afef")))))
;; 3. set header-line
(setq-default header-line-format
              '((:eval (my/header-line-format))))
;; 4. enable which-funcion-mode
(which-function-mode 1)

;; ---------- switch proxy ----------
(defun toggle-proxy ()
  "Toggle proxy on/off."
  (interactive)
  (if (eq url-proxy-services nil)
      (progn
        (setq url-proxy-services '(("https" . "127.0.0.1:7890") ("http" . "127.0.0.1:7890")))
        (message "Proxy enabled."))
    (setq url-proxy-services nil)
    (message "Proxy disabled.")))

;; ---------- symbol overlay ----------
(use-package! symbol-overlay
  :bind
  (("M-i" . 'symbol-overlay-put)
   ("M-n" . 'symbol-overlay-switch-forward)
   ("M-p" . 'symbol-overlay-switch-backward)))


;; ---------- auto revert buffer ----------
(global-auto-revert-mode 1)
(setq auto-revert-check-visited-files t) ;;olny revert buffer in current window
