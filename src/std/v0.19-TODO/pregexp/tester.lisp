;Dec 16, 2000
;last change 2008-04-12


(set-dispatch-macro-character
  #\# #\F
  #'(lambda (p ig ig2)
      (declare (ignore p ig ig2))
      nil))

(defmacro define (x v)
  `(defvar ,x ,v))

(defmacro set! (x v)
  `(setq ,x ,v))

(defun string-append (&rest z)
  (apply #'concatenate 'string z))

;

(defvar *failed* 0)

(defmacro test (&rest ee)
  `(progn
     ,@(let ((ee ee) (r '()))
         (loop
           (if (null ee) (return (nreverse r)))
           (setq r (cons `(test-each ,(car ee) ,(cadr ee)) r))
           (setq ee (cddr ee))))))

(defmacro test-each (expr expected-answer)
  `(progn
     (princ "Trying ")
     (prin1 ',expr)
     (terpri)
     (princ "  --> ")
     (let ((__actual-answer ,expr))
       (prin1 __actual-answer)
       (princ " ... ")
       (if (equalp __actual-answer ',expected-answer)
           (princ "OK")
           (progn (setq *failed* (+ *failed* 1))
             (princ "FAILED!!!")))
       (terpri))))

(defun bottomline ()
  (terpri)
  (if (= *failed* 0)
      (princ "All tests succeeded! :-) :-) :-)")
      (progn (princ *failed*)
        (princ " test")
        (if (> *failed* 1) (princ "s"))
        (princ " failed! :-( :-( :-(")))
  (terpri))
