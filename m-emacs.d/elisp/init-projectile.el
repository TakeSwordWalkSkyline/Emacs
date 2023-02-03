;;; init-projectile.el --- -*- lexical-binding: t -*-
;;
;; Filename: init-projectile.el
;; Description: Initialize Projectile
;; Author: Mingde (Matthew) Zeng
;; Copyright (C) 2019 Mingde (Matthew) Zeng
;; Created: Fri Mar 15 09:10:23 2019 (-0400)
;; Version: 3.0
;; URL: https://github.com/MatthewZMD/.emacs.d
;; Keywords: M-EMACS .emacs.d projectile
;; Compatibility: emacs-version >= 26.1
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;; This initializes projectile
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(eval-when-compile
  (require 'init-const))

;; ProjPac
;; (use-package projectile
;;   ;:bind
;;   ;("C-c p" . projectile-command-map)
;;   :custom
;;   (projectile-completion-system 'ivy)
;;   :config
;;   (projectile-mode 1)
;;   (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;;   (when (and *sys/win32*
;;              (executable-find "tr"))
;;     (setq projectile-indexing-method 'alien))
;;   (add-to-list 'projectile-globally-ignored-directories "node_modules"))
;; -ProjPac

;; counsel提供对项目管理的支持
(use-package counsel-projectile
  :ensure t
  :hook ((counsel-mode . counsel-projectile-mode))
  :init (setq counsel-projectile-grep-initial-input '(ivy-thing-at-point)))
  ;:bind (:map leader-key
              ;("p" . #'projectile-command-map)))
(counsel-mode 1)

;; 项目管理
(use-package projectile
  :ensure t
  :init
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(provide 'init-projectile)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-projectile.el ends here