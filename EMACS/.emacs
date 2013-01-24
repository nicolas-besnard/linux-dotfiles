;; BOCAL STAFF 2010-2011
;; FEDORA DUMP

(load "~/.emacs.d/std.el")
(load "~/.emacs.d/std_comment.el")
(load "~/.emacs.d/php-mode.el")
(load "~/.emacs.d/custom-tuareg.el")

(if (file-exists-p "~/.myemacs") 
    (load-file "~/.myemacs")
)

(setq frame-title-format '(buffer-name "%f" ("%b")))

(custom-set-faces
 '(font-lock-builtin-face ((((class color) (min-colors 8)) (:foreground "red"))))
 '(font-lock-function-name-face ((((class color) (min-colors 8)) (:foreground "blue" :weight ultra-bold))))
 '(hl-line ((t (:weight bold))))
 '(linum ((t (:inherit (shadow default) :background "#DEDEDE" :foreground "black"))))
)

