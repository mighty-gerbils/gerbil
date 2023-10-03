;;; -*- Gerbil -*-
;;; © vyzo
;;; Lazy evaluation

(import :std/contract)
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
   (delay-lazy (eager expr))))

(defrules @lazy ()
  ((_ t expr)
   (make-lazy (cons 't expr))))

(def (eager expr)
  (cond
   ((lazy? expr)
    expr)
   ((promise? expr)
    (@lazy eager expr))
   (else
    (@lazy resolved expr))))

(def (force* obj)
  (let (res (force obj))
    (if (lazy? res)
      (force-lazy res)
      res)))

(def (force-lazy p)
  (using (p : lazy)
    (declare (not safe))
    (let (content p.e)
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
         (let ((p* ((cdr content)))
               (content p.e))
           (when (eq? (car content) 'lazy) ; reentrance test
             (if (lazy? p*)
               (using (p* :- lazy)
                 (let (content* p*.e)
                   (set! (car content) (car content*))
                   (set! (cdr content) (cdr content*))
                   (set! p.e content*)))
               (begin
                 (set! (car content) 'eager)
                 (set! (cdr content) p*))))
           (force-lazy p)))))))
