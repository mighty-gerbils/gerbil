(##namespace (""))

(define file-list ".build.stage0")

(define (displayln . args)
  (for-each display args)
  (newline))

(define (compile modf)
  (displayln "... compile " modf)
  (let ((proc (open-process
               (list path: (getenv "GERBIL_GSC" "gsc")
                     arguments: (list "-cc-options" "--param max-gcse-memory=300000000" modf)
                     stdout-redirection: #f))))
    (if (not (zero? (process-status proc)))
      (error "Compilation error; gsc exit with nonzero status" modf))))

(let ((files (open-input-file file-list)))
  (let lp ()
    (let ((next (read-line files)))
      (if (not (eof-object? next))
        (begin (compile next) (lp))))))
