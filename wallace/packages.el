;;; packages.el --- wallace layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:  <zcheng3@Arch>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `wallace-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `wallace/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `wallace/pre-init-PACKAGE' and/or
;;   `wallace/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

;; (defconst %LAYER_NAME%-packages
;;   '()
;;   "The list of Lisp packages required by the %LAYER_NAME% layer.

;; Each entry is either:

;; 1. A symbol, which is interpreted as a package to be installed, or

;; 2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
;;     name of the package to be installed or loaded, and KEYS are
;;     any number of keyword-value-pairs.

;;     The following keys are accepted:

;;     - :excluded (t or nil): Prevent the package from being loaded
;;       if value is non-nil

;;     - :location: Specify a custom installation location.
;;       The following values are legal:

;;       - The symbol `elpa' (default) means PACKAGE will be
;;         installed using the Emacs package manager.

;;       - The symbol `local' directs Spacemacs to load the file at
;;         `./local/PACKAGE/PACKAGE.el'

;;       - A list beginning with the symbol `recipe' is a melpa
;;        recipe.  See: https://github.com/milkypostman/melpa#recipe-format") 

(defvar wallace-packages '(cdlatex
                          sr-speedbar))
(defvar wallace-excluded-packages '())
(defun wallace/init-cdlatex () (use-package cdlatex))
;; (defun wallace/init-sr-speedbar () (use-package sr-speedbar)
;;        (setq
;;         sr-speedbar-right-side nil
;;         sr-speedbar-width 40
;;         sr-speedbar-width-console 40
;;         sr-speedbar-max-width 40
;;         sr-speedbar-delete-windows t
;;         speedbar-use-images nil)

;;        (setq speedbar-show-unknown-files t)
;;        (setq sr-speedbar-auto-refresh t)
;;        ;; (setq speedbar-smart-directory-expand-flag t)
;;        (setq speedbar-indentation-width 2)
;;        (setq speedbar-hide-button-brackets-flag t)
;;        ;; Start Sr-Speedbar in buffer mode by default
;;        (add-hook 'speedbar-mode-hook
;;                  (lambda ()
;;                    (speedbar-change-initial-expansion-list "quick buffers")))
;;        )

;; ;;; packages.el ends here
