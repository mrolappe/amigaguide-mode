;; TODO bookmark handler
;; TODO imenu support

(defvar amigaguide-mode-hook nil
  "List of hook functions to call when entering AmigaGuide mode")

(defvar amigaguide-mode-map nil
  "Keymap for amigaguide major mode")

(if amigaguide-mode-map
    nil
  (setq amigaguide-mode-map (make-sparse-keymap))
  (define-key amigaguide-mode-map "i" 'amigaguide-index))

(defun amigaguide-mode ()
  "Major mode for browsing and editing AmigaGuide files"
  (interactive)
  (kill-all-local-variables)
  (setq major-mode 'amigaguide-mode)
  (setq mode-name "AmigaGuide")
  (run-hooks 'amigaguide-mode-hook))

(provide 'amigaguide)
