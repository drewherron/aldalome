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
   `(warning ((t (:foreground ,alda-red :weight bold))))
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
   `(font-lock-function-name-face ((t (:foreground ,alda-cyan))))
   `(font-lock-keyword-face ((t (:foreground ,alda-amber :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,alda-red :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,alda-cyan))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,alda-amber :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,alda-yellow :weight bold))))
   `(font-lock-string-face ((t (:foreground ,alda-magenta))))
   `(font-lock-type-face ((t (:foreground ,alda-amber))))
   `(font-lock-variable-name-face ((t (:foreground ,alda-amber))))
   `(font-lock-warning-face ((t (:foreground ,alda-red :weight bold))))
   `(c-annotation-face ((t (:inherit font-lock-constant-face))))
;; Line Numbers
   `(line-number ((t (:inherit default :foreground ,alda-dgray :background ,alda-bg))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,alda-lgray))))
   `(dired-directory ((t (:foreground ,alda-amber))))
;; Org
   `(org-level-1 ((t (:foreground ,alda-fg))))
   `(org-level-2 ((t (:foreground ,alda-fg))))
   `(org-level-3 ((t (:foreground ,alda-fg))))
   `(org-level-4 ((t (:foreground ,alda-fg))))
   `(org-agenda-structure ((t (:foreground ,alda-lgray))))
   `(org-agenda-date ((t (:foreground ,alda-fg))))
   `(org-todo ((t (:foreground ,alda-magenta))))
   `(org-warning ((t (:foreground ,alda-amber))))
   `(org-scheduled ((t (:foreground ,alda-amber))))
   `(org-scheduled-today ((t (:foreground ,alda-cyan))))
   `(org-upcoming-deadline ((t (:foreground ,alda-amber))))
))


;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'aldalome)

;;; aldalome-theme.el ends here
