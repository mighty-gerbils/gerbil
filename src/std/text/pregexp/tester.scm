;last change 2005-04-24

(require (lib "defmacro.ss"))

(define *failed* 0)

(define-macro test
  (lambda ee
    `(begin
       ,@(let loop ((ee ee) (r '()))
           (if (null? ee) (reverse r)
               (loop (cddr ee)
                 (cons `(test-each ,(car ee) ,(cadr ee))
                   r)))))))

(define-macro test-each
  (lambda (expr expected-answer)
    `(begin
      (display "Trying ")
      (write ',expr)
      (newline)
      (display "   --> ")
      (let ((__actual-answer ,expr))
        (write __actual-answer)
        (display " ... ")
        (if  (equal? __actual-answer ',expected-answer)
            (display "OK")
            (begin
             (set! *failed* (+ *failed* 1))
             (display "FAILED!!!")
             (newline)
             (display "   ;;; expected ")
             (write ',expected-answer))))
      (newline))))

(define bottomline
  (lambda ()
    (newline)
    (if (= *failed* 0)
        (display "All tests succeeded! :-) :-) :-)")
        (begin (display *failed*)
          (display " test")
          (if (> *failed* 1) (display "s"))
          (display " failed! :-( :-( :-(")))
    (newline)))
