(setq-default indent-tabs-mode nil)

(require 'package)

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")))

(let ((my-pkgs '(magit)))
  (when (seq-remove 'package-installed-p my-pkgs)
    (package-refresh-contents)
    (mapc (lambda (pkg) (package-install pkg t)) my-pkgs)))
