;  
;    db         db                    .dP"Yb         .dP'
; db    db   db    db                dP'   d'       dP'
; 
;   'Yb   `Y888888888b. `Y8888888b.   'Yb    `Yb d88b d88b    
;    88      .dP'          .dP'        88     88P   88   8b   
;    88      Y8          ,dP           88     88    8P   88   
;   .8P      `Y888d,     88            88     88  .dP  .dP    
;                  8b    Y8     .      88    .888888888888b.
;           'Yb....dP    `Yb...dP      88
;             `""""'       `"""'      .8P
;
;;========================================================;;
;; File:             aldalome-theme.el                    ;;
;; Author:           Drew Herron                          ;;
;; Email:            dherron@pdx.edu                      ;;
;; Source:           github.com/drewherron/aldalome       ;;
;; License:          MIT                                  ;;
;;========================================================;;
;;

(deftheme aldalome "A mostly green theme based on old monitors.")

(defgroup aldalome-theme nil
  "Aldalome theme."
  :group 'faces
  :prefix "aldalome-"
  :link '(url-link :tag "GitHub" "http://github.com/drewherron/aldalome")
  :tag "Aldalome theme")

;; Color Palette

(defvar aldalome-colors-alist
  '(("alda-bg"       . "#000000")
    ("alda-fg"       . "#4aff00")
    ("alda-amber"    . "#ffb700")
    ("alda-blue"     . "#0000aa")
    ("alda-lgray"    . "#aaaaaa")
    ("alda-dgray"    . "#555555")
    ("alda-cyan"     . "#55ffff")
    ("alda-magenta"  . "#ff55ff")
    ("alda-red"      . "#aa0000")
    ("alda-white"    . "#ffffff")
    ("alda-yellow"   . "#ffff55"))
  "List of colors.")

(defmacro aldalome-with-color-variables (&rest body)
  "`let' bind all colors defined in `aldalome-colors-alist' around BODY.
    Also bind `class' to ((class color) (min-colors 89))."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   aldalome-colors-alist))
     ,@body))

;; Theme Faces
(aldalome-with-color-variables
  (custom-theme-set-faces
   'aldalome
   ;; Colors
   '(button ((t (:underline t))))
   `(default ((t (:foreground ,alda-fg :background ,alda-bg))))
   `(cursor ((t (:foreground ,alda-fg :background ,alda-fg))))
   `(highlight ((t (:background ,alda-dgray))))
   `(link ((t (:foreground ,alda-cyan :underline t :weight bold))))
   `(link-visited ((t (:foreground ,alda-magenta :underline t :weight normal))))
   `(fringe ((t (:foreground ,alda-fg :background ,alda-bg))))
   `(success ((t (:foreground ,alda-blue :weight bold))))
   `(tooltip ((t (:foreground ,alda-fg :background ,alda-bg))))
   `(tty-menu-enabled-face ((t (:foreground ,alda-fg :background ,alda-bg))))
   `(tty-menu-disabled-face ((t (:foreground ,alda-dgray :background ,alda-bg))))
   `(tty-menu-selected-face ((t (:foreground ,alda-bg :background ,alda-fg))))
   `(warning ((t (:foreground ,alda-red))))
   `(error ((t (:foreground ,alda-red :weight bold))))   
   `(tutorial-warning-face ((t (:foreground ,alda-amber))))
   `(region ((,class (:background ,alda-dgray :extend t))
             (t :inverse-video t)))
   `(escape-glyph ((t (:foreground ,alda-amber :weight bold))))
   `(widget-field ((t (:foreground ,alda-fg :background ,alda-bg))))
   `(vertical-border ((t (:foreground ,alda-fg :background ,alda-bg))))
   `(window-divider ((t (:foreground ,alda-fg :background ,alda-bg))))
   ;; Mode Line
   `(mode-line
     ((,class (:foreground ,alda-fg
                           :background ,alda-bg
                           :box (:line-width -1 :style released-button)))
      (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:foreground ,alda-amber :weight bold))))
   `(mode-line-inactive
     ((t (:foreground ,alda-fg
                      :background ,alda-bg
                      :box (:line-width -1 :style released-button)))))
   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,alda-fg :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,alda-lgray))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,alda-lgray))))
   `(font-lock-constant-face ((t (:foreground ,alda-fg))))
   `(font-lock-doc-face ((t (:foreground ,alda-fg))))
   `(font-lock-function-name-face ((t (:foreground ,alda-fg))))
   `(font-lock-keyword-face ((t (:foreground ,alda-amber :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,alda-red :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,alda-cyan))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,alda-amber :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,alda-yellow :weight bold))))
   `(font-lock-string-face ((t (:foreground ,alda-magenta))))
   `(font-lock-type-face ((t (:foreground ,alda-amber))))
   `(font-lock-variable-name-face ((t (:foreground ,alda-fg))))
   `(font-lock-warning-face ((t (:foreground ,alda-red :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,alda-yellow :weight bold))))
   `(c-annotation-face ((t (:inherit font-lock-constant-face))))
   ;; Line Numbers
   `(line-number ((t (:inherit default :foreground ,alda-dgray :background ,alda-bg))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,alda-lgray))))
   ;; Org
   `(org-level-1 ((t (:foreground ,alda-fg))))
   `(org-level-2 ((t (:foreground ,alda-fg))))
   `(org-level-3 ((t (:foreground ,alda-fg))))
   `(org-level-4 ((t (:foreground ,alda-fg))))
   `(org-agenda-structure ((t (:foreground ,alda-lgray))))
   `(org-agenda-date ((t (:foreground ,alda-lgray))))
   `(org-agenda-date-weekend ((t (:foreground ,alda-lgray))))
   `(org-agenda-date-today ((t (:foreground ,alda-white))))
   ;;`(org-agenda-date-today ((t (:foreground ,alda-bg :background ,alda-fg))))
   `(org-agenda-done ((t (:foreground ,alda-dgray))))
   `(org-todo ((t (:foreground ,alda-magenta))))
   `(org-date ((t (:foreground ,alda-cyan))))
   `(org-done ((t (:foreground ,alda-cyan))))
   `(org-drawer ((t (:foreground ,alda-lgray))))
   `(org-warning ((t (:foreground ,alda-fg))))
   `(org-scheduled ((t (:foreground ,alda-fg))))
   `(org-scheduled-today ((t (:foreground ,alda-cyan))))
   `(org-scheduled-previously ((t (:foreground ,alda-amber))))
   `(org-special-keyword ((t (:foreground ,alda-amber))))
   `(org-upcoming-deadline ((t (:foreground ,alda-fg))))
   `(org-upcoming-distant-deadline ((t (:foreground ,alda-lgray))))
   `(org-journal-calendar-entry-face ((t (:foreground ,alda-amber))))
   ;; Dired
   `(dired-directory ((t (:foreground ,alda-amber))))
   ;; Helm
   `(helm-candidate-number ((t (:foreground ,alda-bg :background ,alda-fg))))
   `(helm-header ((t (:foreground ,alda-fg :background ,alda-dgray))))
   `(helm-match ((t (:foreground ,alda-cyan))))
   `(helm-selection ((t (:background ,alda-dgray))))
   `(helm-separator ((t (:foreground ,alda-lgray))))
   `(helm-ff-directory ((t (:foreground ,alda-amber :weight bold))))
   `(helm-ff-dotted-directory ((t (:foreground ,alda-amber :weight bold))))
   `(helm-ff-executable ((t (:foreground ,alda-red :weight bold))))
   `(helm-ff-file ((t (:foreground ,alda-fg))))
   `(helm-ff-file-extension ((t (:foreground ,alda-fg))))
   `(helm-ff-symlink ((t (:foreground ,alda-cyan))))
   `(helm-ff-invalid-symlink ((t (:foreground ,alda-red))))
   `(helm-buffer-directory ((t (:foreground ,alda-fg))))
   `(helm-buffer-modified ((t (:foreground ,alda-amber))))
   `(helm-buffer-not-saved ((t (:foreground ,alda-red))))
   `(helm-buffer-process ((t (:foreground ,alda-fg))))
   `(helm-buffer-saved-out ((t (:foreground ,alda-fg))))
   `(helm-buffer-size ((t (:foreground ,alda-fg))))
   `(helm-source-header ((t (:foreground ,alda-lgray))))
   ;; Ido
   `(ido-subdir ((t (:foreground ,alda-amber))))
   `(ido-first-match ((t (:foreground ,alda-cyan))))
   `(ido-only-match ((t (:foreground ,alda-magenta))))
   `(ido-indicator ((t (:foreground ,alda-lgray))))
   `(ido-incomplete-regexp ((t (:foreground ,alda-red))))
   ;; Magit
   `(magit-branch-local ((t (:foreground ,alda-cyan))))
   `(magit-branch-remote ((t (:foreground ,alda-cyan))))
   `(magit-section-heading ((t (:foreground ,alda-amber))))
   `(magit-hash ((t (:foreground ,alda-lgray))))
   `(magit-diff-added-highlight ((t (:foreground ,alda-white :background ,alda-blue))))
   `(magit-diff-removed-highlight ((t (:foreground ,alda-white :background ,alda-red))))
   `(magit-diff-whitespace-warning ((t (:foreground ,alda-white :background ,alda-red))))
   ;; eww
   `(shr-link ((t (:foreground ,alda-amber))))
   ;; elfeed
   `(elfeed-search-title-face ((t (:foreground ,alda-fg))))
   `(elfeed-search-feed-face ((t (:foreground ,alda-cyan))))
   `(elfeed-search-date-face ((t (:foreground ,alda-lgray))))
   `(elfeed-search-tag-face ((t (:foreground ,alda-fg))))
   ;; messages
   `(message-header-subject ((t (:foreground ,alda-magenta))))
   `(message-header-to ((t (:foreground ,alda-cyan))))
   `(message-header-other ((t (:foreground ,alda-fg))))
))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'aldalome)

;;; aldalome-theme.el ends here
