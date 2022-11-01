;;添加emacs可执行文件的环境变量
;;主要是为了在mac上让magit能先找到我自己编的git而不是用xcode commend line tools自带的git
(add-to-list 'exec-path "/usr/local/bin/")
;;racket 路径
(add-to-list 'exec-path "/Applications/Racket v8.1/bin/")
;;clang-format 路径
(add-to-list 'exec-path "/opt/homebrew/Cellar/clang-format/12.0.1/bin/")
;;cmake 路径
(add-to-list 'exec-path "/opt/homebrew/Cellar/cmake/3.20.2/bin/")
;;rg 路径
(add-to-list 'exec-path "/opt/homebrew/Cellar/ripgrep/13.0.0/bin/")
;;fzf 路径
(add-to-list 'exec-path "/Users/wongyen/.fzf/bin/")

(provide 'init-exec-path)
