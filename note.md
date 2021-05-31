###MacOS下Emacs无法访问home下的文件以及文件夹解决方法###
- 系统偏好设置->安全性与隐私->隐私
- 选择 "完全磁盘访问权限",点击 "+" 将Emacs添加进去
- 还需要将ruby的权限也添加到 "完全磁盘访问权限中"
  ruby位于/usr/bin/目录下，此目录为隐藏目录，点击 "+" 后需要按下 shift + commend + . 将隐藏目录显示出来
  然后找到ruby添加进去
- 然后Emacs就可以访问home下的目录了


###M-x ielm ###
- ielm(Interactive Emacs Lisp Mode) is a mode that gives you an interactive Emacs Lisp shell

###tab-nine binary 安装路径###
Getting current version...
Contacting host: update.tabnine.com:443
Wrote /Users/wongyen/.TabNine/version
Current version is 3.3.126
Installing at ~/.TabNine/3.3.126/aarch64-apple-darwin/TabNine. Downloading https://update.tabnine.com/bundles/3.3.126/aarch64-apple-darwin/TabNine.zip ...
Contacting host: update.tabnine.com:443
Wrote /Users/wongyen/.TabNine/3.3.126/aarch64-apple-darwin.zip
Archive:  /Users/wongyen/.TabNine/3.3.126/aarch64-apple-darwin.zip
  inflating: /Users/wongyen/.TabNine/3.3.126/aarch64-apple-darwin/TabNine
  inflating: /Users/wongyen/.TabNine/3.3.126/aarch64-apple-darwin/TabNine-deep-cloud
  inflating: /Users/wongyen/.TabNine/3.3.126/aarch64-apple-darwin/TabNine-deep-local
  inflating: /Users/wongyen/.TabNine/3.3.126/aarch64-apple-darwin/WD-TabNine
TabNine installation complete.
You can run the command ‘company-tabnine-install-binary’ with M-x c-bi RET
TabNine installation complete.

###查看emacs的exec-path###
- M-x ielm
- exec-path

###添加emacs exec-path###
- 在配置文件init.el中: (add-to-list 'exec-path "/usr/local/bin/")
