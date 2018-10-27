;;; Config.el --- for ScribEmacs
;;

;;; Code:

;; Basic
(blink-cursor-mode)

;; Navigation: Ranger
(setq ranger-cleanup-on-disable t)
(setq ranger-show-dotfiles t)
(setq ranger-ignored-extensions '("mkv" "iso" "mp4"))

;; Deft
(setq deft-directory "~/Dropbox/orgwiki")
(setq deft-extensions '("org" "txt" "tex" "asciidoc" "adoc" "markdown" "md"))
(global-set-key [f8] 'deft)
(setq deft-use-filename-as-title t)
(setq deft-org-mode-title-prefix t)
(setq deft-file-naming-rules
      '((noslash . "-")
        (nospace . "-")
        (case-fn . downcase)))

;; Text Modes

(add-hook 'text-mode-hook 'turn-on-smartparens-mode)
(global-visual-line-mode t)

;; Asciidoc Mode 
(add-to-list 'auto-mode-alist (cons "\\.asciidoc\\'" 'adoc-mode))
;(add-hook 'adoc-mode-hook 'turn-on-orgtbl)

;; Markdown

;(add-hook 'markdown-mode-hook 'turn-on-orgtbl)
(add-hook 'markdown-mode-hook 'markdown-toggle-wiki-links)

;; Org-Mode

(with-eval-after-load 'org
  ;; here goes your Org config
  (add-hook 'org-mode-hook 'org-toggle-link-display)
  (add-hook 'org-mode-hook 'my/org-olivetti)
  )

;; Olivetti

(with-eval-after-load 'olivetti
  (setq olivetti-body-width 90)
  (add-hook 'text-mode-hook 'turn-on-olivetti-mode)
  )

;;;;;;;;;;;;;;;;;; EVIL ;;;;;;;;;;;;;;;;;;


;;; config.el ends here
