;;;;;;;;;;;;;
;; 基础模块 ;;
;;;;;;;;;;;;;
(require '+autoload)
(require '+config)
(require 'init-package)
(require 'init-exec-path)

;;;;;;;;;;;;;;
;; 基础配置  ;;
;;;;;;;;;;;;;;
(require 'init-basic)

;;;;;;;;;;;;;
;; keybind ;;
;;;;;;;;;;;;;
;;(require '+mini-keybind)
(require 'init-keybind)

;;;;;;;;;;;;;
;; 用户界面 ;;
;;;;;;;;;;;;;
(require 'init-ui)

;;;;;;;;;;;;;
;; 实用工具 ;;
;;;;;;;;;;;;;
(require 'init-tools)

;;;;;;;;;;;;;
;; 代码补全 ;;
;;;;;;;;;;;;;
(require 'init-complete)
(require 'init-prog)

;;;;;;;;;;;;;
;; OrgMode ;;
;;;;;;;;;;;;;
(require 'init-org)

;;;;;;;;;;;;;
;; Dired!! ;;
;;;;;;;;;;;;;
(require 'init-dired)

;;;;;;;;;;;;;;
;; MarkDown ;;
;;;;;;;;;;;;;;
(require 'init-markdown)

;;;;;;;;;;;;;;;
;; git tools ;;
;;;;;;;;;;;;;;;
(require 'init-git-tools)

;;;;;;;;;;;;;;;;
;; ivy config ;;
;;;;;;;;;;;;;;;;
(require 'init-ivy)

(provide 'init-config)
