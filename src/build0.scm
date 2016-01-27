#!/usr/bin/env gsi-script

(##namespace (""))

(define (displayln . args)
  (for-each display args)
  (newline))

(define (compile modf)
  (displayln "... compile " modf)
  (let ((proc (open-process 
               (list path: "gsc"
                     arguments: (list modf)
                     stdout-redirection: #f))))
    (if (not (zero? (process-status proc)))
      (error "Compilation error; gsc exit with nonzero status" modf))))

(define (main file-list)
  (let ((files (open-input-file file-list)))
    (let lp ()
      (let ((next (read-line files)))
        (if (not (eof-object? next))
          (begin (compile next) (lp)))))))
