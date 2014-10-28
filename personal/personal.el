;; Vim mode for editing
;; (require 'evil-matchit)
;;(global-evil-matchit-mode 1)
;;(require 'evil-surround)
;;(global-evil-surround-mode 1)

;; Save all temp files to /tmp/
(setq backup-directory-alist
                `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
                `((".*" ,temporary-file-directory t)))
;; SMLNJ setup
(autoload 'sml-mode "sml-mode" "Major mode for editing SML." t)
(autoload 'run-sml "sml-proc" "Run an inferior SML process." t)
;; Auto do sml-mode
(add-to-list 'auto-mode-alist '("\\.\\(sml\\|sig\\)\\'" . sml-mode))
(setq sml-program-name "sml")

;; Smartscan <https://github.com/mickeynp/smart-scan> setup
(package-install 'smartscan)
(smartscan-mode 1)

;; Clang Format
(setq clang-format-executable "clang-format-3.5")

;; Start server
;; (server-start)

;; eshell
(require 'em-smart)
(setq eshell-where-to-jump 'begin)
(setq eshell-review-quick-commands nil)
(setq eshell-smart-space-goes-to-end t)

(provide 'personal)
