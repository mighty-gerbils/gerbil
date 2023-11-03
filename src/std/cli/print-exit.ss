;; -*- Gerbil -*-
;;;; Support for building main functions that handle exiting nicely

(export #t)

(import
  :gerbil/gambit
  :std/error
  :std/misc/list
  :std/misc/ports
  :std/misc/repr
  :std/sugar)

(def value-printer (make-parameter prn))

(def (print-values . vs)
  (unless (equal? vs [(void)])
    (for-each (value-printer) vs))
  (ignore-errors (force-current-outputs))
  (void))

;; Print resulting values, and exit with an according value.
(def (print-exit . vs)
  (apply print-values vs)
  (exit (if (or (null? vs) (and (length=n? vs 1) (not (car vs)))) 1 0)))

;; Return a magic value that will be not be printed but will return an error code.
;; (void) is silent success, because it's what successful side-effecting functions return.
;; (values) is failure, because it's the other naturally silent return thing, and it's abnormal enough.
(def (silent-exit (bool #t))
  (if bool (void) (values)))

;; Execute a function, print the result (if applicable), and exit with an according value.
;;
;; (void) prints nothing and counts as false. #f is printed and counts as false.
;; (values) prints nothing and counts as true. All other values are printed and count as true.
;; If you want to print #f and return true, then print it then return (values).
;;
;; True is returned as exit code 0, false as exit code 1.
;; Any uncaught exception will be printed then trigger an exit with code 2.
(def (call-print-exit fun)
  (with-exit-on-error (call/values fun print-exit)))

;; Evaluate the body ... as in an anonymous function called by `call-print-exit`
;; This macro is named in a way reminiscent of REPL (Read-Eval-Print-Loop),
;; except instead of Read-Eval it evaluates forms like `begin`, and
;; after the Print part it Exits rather than Loops.
(defrule (begin-print-exit body ...) (call-print-exit (lambda () body ...)))
