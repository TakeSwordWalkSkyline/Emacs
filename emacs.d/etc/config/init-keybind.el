(define-prefix-command 'leader-key)
(global-set-key (kbd "M-SPC") 'leader-key)
(which-key-add-key-based-replacements
  "M-SPC b" "音乐"
  "M-SPC o" "开启"
  "M-SPC t" "切换"
  "M-SPC w" "窗口"
  "M-SPC c" "代码"
  "M-SPC p" "项目"
  "M-SPC w P" "交换窗口-上"
  "M-SPC w N" "交换窗口-下"
  "M-SPC w F" "交换窗口-右"
  "M-SPC w B" "交换窗口-左"
  "M-SPC w p" "切换窗口-上"
  "M-SPC w n" "切换窗口-下"
  "M-SPC w f" "切换窗口-右"
  "M-SPC w b" "切换窗口-左")

(provide 'init-keybind)
