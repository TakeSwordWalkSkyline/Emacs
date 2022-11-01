;;; init-youdao-dictionary.el ---
;;
;; Filename: init-youdao-dictionary.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

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

(provide 'init-youdao-dictionary)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-youdao-dictionary.el ends here
