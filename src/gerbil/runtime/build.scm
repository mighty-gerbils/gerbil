#!/usr/bin/env gsi-script

(##namespace (""))
(define *gx-modules*
  '("gx-gambc"
    "gx-gambc0"
    "gx-gambc1"
    "gx-gambc2"))

(define *libdir* #f)

(define (displayln . args)
  (for-each display args)
  (newline))

(define (compile modf)
  (displayln "... compile " modf)
  (let ((proc (open-process 
               (list path: "gsc"
                     arguments: (list "-o" *libdir*
                                      "-e" "(include \"gx-gambc#.scm\")"
                                      (string-append modf ".scm"))
                     stdout-redirection: #f))))
    (if (not (zero? (process-status proc)))
      (error "Compilation error; gsc exit with nonzero status" modf))))

(define (main libdir)
  (displayln "building gerbil/runtime in " libdir)
  (set! *libdir* libdir)
  (for-each compile *gx-modules*))
