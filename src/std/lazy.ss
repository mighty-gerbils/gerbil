;;; -*- Gerbil -*-
;;; © vyzo
;;; Lazy evaluation
package: std

(export
  (rename: delay-lazy lazy)
  (rename: delay-eager delay)
  (rename: force* force)
  lazy? eager)

(defstruct lazy (e)
  final: #t unchecked: #t)

(defrules delay-lazy ()
  ((_ expr)
   (@lazy lazy (lambda () expr))))

(defrules delay-eager ()
  ((_ expr)
   (delay-lazy (@lazy eager expr))))

(defrules @lazy ()
  ((_ t expr)
   (make-lazy (cons 't expr))))

(def (eager expr)
  (@lazy eager expr))

(def (force* obj)
  (if (lazy? obj)
    (force-lazy obj)
    (force obj)))

(def (force-lazy p)
  (declare (not safe))
  (let (content (&lazy-e p))
    (case (car content)
      ((resolved)
       (cdr content))
      ((eager)
       (let (val (force* (cdr content)))
         (if (eq? (car content) 'eager) ; reentrance test
           (begin
             (set! (car content) 'resolved)
             (set! (cdr content) val)
             val)
           (cdr content))))
      ((lazy)
       (let* ((p* ((cdr content)))
              (content (&lazy-e p)))
         (when (eq? (car content) 'lazy) ; reentrance test
           (if (lazy? p*)
             (let (content* (&lazy-e p*))
               (set! (car content) (car content*))
               (set! (cdr content) (cdr content*))
               (set! (&lazy-e p*) content))
             (begin
               (set! (car content) 'eager)
               (set! (cdr content) p*))))
         (force-lazy p))))))
