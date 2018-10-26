;;; Config.el --- for ScribEmacs
;;

;;; Code:

;; Navigation: Ranger
(setq ranger-cleanup-on-disable t)
(setq ranger-show-dotfiles t)
(setq ranger-parent-depth 1)
(setq ranger-width-parents 0.25)
(setq ranger-max-parent-width 0.40)
(setq ranger-width-preview 0.35)
(setq ranger-ignored-extensions '("mkv" "iso" "mp4"))
(setq ranger-max-preview-size 10)

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
(add-hook 'adoc-mode-hook 'turn-on-orgtbl)

;; Markdown

(add-hook 'markdown-mode-hook 'turn-on-orgtbl)

;; Org-Mode

(with-eval-after-load 'org
  ;; here goes your Org config
  (add-hook 'org-mode-hook 'org-toggle-link-display)
  )




;;; config.el ends here
