
(setq-default indent-tabs-mode nil)

(require 'package)

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")))

(let ((my-pkgs '(material-theme)))
  (when (seq-remove 'package-installed-p my-pkgs)
    (package-refresh-contents)
    (mapc (lambda (pkg) (package-install pkg t)) my-pkgs)))

(load-theme 'material t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("db86c52e18460fe10e750759b9077333f9414ed456dc94473f9cf188b197bc74" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
