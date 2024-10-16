(import :std/misc/string)
(export #t)
(def current-slime-client (make-parameter #f))
(def current-slime-writer (make-parameter #f))
(def current-slime-package (make-parameter #f))
(def current-slime-thread (make-parameter #f))
(def current-slime-id (make-parameter #f))
(def current-swank-exit-emacs-rex (make-parameter #f))
(def (swank-machine:version)
  (with ([cpu os kern] ##os-system-type-saved)
    (if (eq? os 'apple)
      (string-trim-eol
       (cdr (##shell-command "sysctl -n machdep.cpu.brand_string" #t)))
      "Dunno")))
(def (swank-machine:type)
  (##string-upcase (string-trim-eol
   (cdr (##shell-command "uname -m" #t)))))

(def (swank-lisp-implementation:program)
  (path-expand (string-append "bin/" (##command-name)) (gerbil-home)))

(def (swank-modules)
  '("SWANK-ARGLISTS" "SWANK-REPL" "SWANK-PRESENTATIONS"))
