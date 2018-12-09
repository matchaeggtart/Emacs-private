(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("melpa" . "https://melpa.org/packages/"))))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar donald/packages '(
			  ;; --- Auto-completion ---
			  dracula-theme
			  spacemacs-theme
			  solarized-theme
			  company
			  ) "Default packages")

(setq package-selected-packages donald/packages)

(defun donald/packages-installed-p ()
  (loop for pkg in donald/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (donald/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg donald/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; theme
(load-theme 'spacemacs-dark t)
;; (load-theme 'dracula t)
;; (load-theme 'solarized-dark t)

(global-company-mode 1)
(setq-default company-idle-delay 0.1)
(setq-default company-minimum-prefix-length 1)

(provide 'init-packages)
