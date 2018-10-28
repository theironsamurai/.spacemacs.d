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
(setq deft-directory "~/Dropbox/awiki")
(setq deft-extensions '("md" "txt" "tex" "asciidoc" "adoc" "markdown" "org"))
(global-set-key [f8] 'deft)
(setq deft-use-filename-as-title t)
(setq deft-org-mode-title-prefix t)
(setq deft-file-naming-rules
      '((noslash . "-")
        (nospace . "-")))

;; Autocomplete filenames
;; NOTE: ac-sources is for the sources of
;; auto-complete

;; (add-to-list 'ac-sources 'ac-source-filename)
;; (add-to-list 'ac-sources 'ac-source-files-in-current-dir)

;; Text Modes

(add-hook 'text-mode-hook 'turn-on-smartparens-mode)
(global-visual-line-mode t)

;; Asciidoc Mode 
(add-to-list 'auto-mode-alist (cons "\\.asciidoc\\'" 'adoc-mode))


;; Org-Mode

(with-eval-after-load 'org
  ;; here goes your Org config
  (add-hook 'org-mode-hook 'org-toggle-link-display)
  (add-hook 'org-mode-hook 'my/org-olivetti)
  (setq org-wikinodes-scope 'directory)
  )


;; Markdown

(with-eval-after-load 'markdown-mode
  (setq markdown-enable-wiki-links t)
  (add-hook 'markdown-mode-hook 'turn-on-olivetti-mode)
  (add-hook 'markdown-mode-hook 'markdown-toggle-url-hiding)
  )

;;;;;;;;;;;;;;;;;; EVIL ;;;;;;;;;;;;;;;;;;


;;; config.el ends here
