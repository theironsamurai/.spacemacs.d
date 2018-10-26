;;; keybindings.el --- for ScribeEmacs
;;

;;; Code:

;; My Functions

;; (global-set-key [(meta up)]  'move-line-up)
;; (global-set-key [(meta down)]  'move-line-down)

;; Navigation
(global-set-key [home] 'move-beginning-of-line)
(global-set-key [end] 'move-end-of-line)


;; Text Mode

;; Org Mode

(with-eval-after-load 'org
  ;; here goes your Org config
  (spacemacs/declare-prefix "oo" "my-org-menu")
  (spacemacs/set-leader-keys "ool" 'org-toggle-link-display)
  )

;; Evil
(define-key evil-hybrid-state-map (kbd "C-;") 'evil-force-normal-state)

;; Spacemacs

(spacemacs/declare-prefix "o" "own-menu")
(spacemacs/set-leader-keys "os" 'ispell-buffer)

;;; keybindings.el ends here
