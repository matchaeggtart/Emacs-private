(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar donald/packages '(
			  ;; --- Auto-completion ---
			  spacemacs-theme
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

(global-company-mode 1)

(provide 'init-packages)
