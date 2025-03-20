(import :std/misc/string
	:std/sugar)
(export #t)

(def current-slime-client (make-parameter #f))
(def current-slime-writer (make-parameter #f))
(def current-slime-package (make-parameter #f))
(def current-slime-thread (make-parameter #f))
(def current-slime-id (make-parameter #f))
(def current-swank-exit-emacs-rex (make-parameter #f))


(def (swank-machine:version)
;; This is based on CL:MACHINE-VERSION

;; On Mac:

;; % echo '(print (machine-version))' | sbcl --script
;; "Apple M3 Pro"

;; Linux
;; $ echo '(print (machine-version))' | sbcl --script

;; "Intel(R) Xeon(R) CPU E5-2673 v4 @ 2.30GHz"

  (with ([cpu os kern] ##os-system-type-saved)
    (let (cmd (case os
		 ((apple) "sysctl -n machdep.cpu.brand_string")
		 ((pc) "lscpu | sed -nr '/Model name/ s/.*:\\s*(.*) @ .*/\\1/p'")))
       (or (ignore-errors (string-trim-eol
			   (cdr (shell-command cmd #t))))
	   ""))))

(def (swank-machine:type)
  (with ([cpu os kern] ##os-system-type-saved)
    (or (ignore-errors
	 (string-upcase
	  (string-trim-eol
	   (cdr (shell-command "uname -m" #t)))))
	cpu)))

(def (swank-lisp-implementation:program)
  (path-expand (string-append "bin/" (command-name)) (gerbil-home)))

(def (swank-modules)
  '("SWANK-ARGLISTS" "SWANK-REPL" "SWANK-PRESENTATIONS"))
