;;; keybindings.el --- for ScribeEmacs
;;

;;; Code:

;; My Functions

;; (global-set-key [(meta up)]  'move-line-up)
;; (global-set-key [(meta down)]  'move-line-down)

;; Multiple Cursors: depends upon Multiple-Cursors mode
(global-set-key (kbd "<f5>") 'mc/edit-lines)
(global-set-key (kbd "<f6>") 'mc/mark-next-like-this)
(global-set-key (kbd "<f7>") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-<f5>") 'mc/mark-all-like-this)

;; Windows
(global-set-key (kbd "C-9") 'windmove-left)
(global-set-key (kbd "C-0") 'windmove-right)
(global-set-key (kbd "<f3>") 'split-window-vertically)
(global-set-key (kbd "<f2>") 'split-window-horizontally)
(global-set-key (kbd "<f1>") 'delete-other-windows)
(global-set-key (kbd "<f4>") 'delete-window)

;; CUA-like
(cua-mode 1)
(global-set-key (kbd "C-p") 'helm-projectile-find-file-dwim)
(global-set-key (kbd "C-'") (lambda () (interactive) (next-buffer)))
(global-set-key (kbd "C-w") (lambda () (interactive) (kill-this-buffer)))
(global-set-key (kbd "C-M-w") (lambda () (interactive) (delete-window)))
(global-set-key (kbd "C-n") (lambda () (interactive) (spacemacs/new-empty-buffer)))
;; (global-set-key (kbd "C-d")   'mc/mark-next-like-this)
(global-set-key (kbd "C-S-p") 'helm-M-x)
;; (global-set-key (kbd "C-S-<up>")   'drag-stuff-up)
;; (global-set-key (kbd "C-S-<down>")   'drag-stuff-down)
(global-set-key (kbd "C-M-<up>") 'other-window)
(global-set-key (kbd "C-M-/") 'split-window-right-and-focus)
(global-set-key (kbd "C-M--") 'split-window-below-and-focus)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-S-s") 'write-file)
(global-set-key (kbd "M-f") 'helm-swoop)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C-a") 'mark-whole-buffer)

;; Navigation
(global-set-key [home] 'move-beginning-of-line)
(global-set-key [end] 'move-end-of-line)


;; Text Mode

;; Org Mode

(with-eval-after-load 'org
  ;; here goes your Org config
  (spacemacs/declare-prefix "oo" "my-org-menu")
  (spacemacs/set-leader-keys "ood" 'org-toggle-link-display)
  (spacemacs/set-leader-keys "ool" 'org-insert-link)
  (spacemacs/set-leader-keys "oos" 'org-store-link)
  (define-key evil-normal-state-map [tab] 'org-cycle)
  )

;;;;;;;;;;; Evil ;;;;;;;;;;;;;;;

;; Go Back!!
(define-key evil-hybrid-state-map (kbd "C-;") 'evil-force-normal-state)
(define-key evil-emacs-state-map (kbd "C-;") 'evil-force-normal-state)
(define-key evil-insert-state-map (kbd "C-;") 'evil-force-normal-state)
(define-key evil-visual-state-map (kbd "C-;") 'evil-force-normal-state)

;; Give me my UNDO!
(define-key evil-emacs-state-map (kbd "C-z") nil)
(define-key evil-insert-state-map (kbd "C-z") 'undo)
(define-key evil-normal-state-map (kbd "C-z") 'undo)
(define-key evil-hybrid-state-map (kbd "C-z") 'undo)
(define-key evil-visual-state-map (kbd "C-z") 'undo)




;;;;;;;;;;;;;;
;; Spacemacs;;
;;;;;;;;;;;;;;

;; Base
(spacemacs/declare-prefix "o" "own-menu")
(spacemacs/set-leader-keys "os" 'ispell-buffer)

;; Writing Modes
(spacemacs/declare-prefix "ow" "writing menu")
(spacemacs/set-leader-keys "owo" 'olivetti-mode)

;;; keybindings.el ends here
