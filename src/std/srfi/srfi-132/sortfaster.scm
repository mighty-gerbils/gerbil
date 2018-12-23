;;; SRFI 132 specifies these eight procedures.
;;;
;;; Benchmarking has shown that the (rnrs sorting) procedures
;;; are faster than the sorting procedures defined by SRFI 132's
;;; reference implementation, so the R6RS procedures are used here.
;;;
;;; This file is a plug-and-play alternative to sort.scm in the
;;; same directory.

(define list-sort         r6rs-list-sort)
(define list-sort!        r6rs-list-sort)
(define list-stable-sort  r6rs-list-sort)
(define list-stable-sort! r6rs-list-sort)

(define (vector-sort < v . rest)
  (cond ((null? rest)
         (r6rs-vector-sort < v))
        ((null? (cdr rest))
         (r6rs-vector-sort < (r7rs-vector-copy v (car rest))))
        ((null? (cddr rest))
         (r6rs-vector-sort < (r7rs-vector-copy v (car rest) (cadr rest))))
        (else
         (error 'vector-sort
                "too many arguments"
                (cons < (cons v rest))))))

(define vector-stable-sort vector-sort)

(define (vector-sort! < v . rest)
  (cond ((null? rest)
         (r6rs-vector-sort! < v))
        ((null? (cdr rest))
         (let* ((start (car rest))
                (v2 (r7rs-vector-copy v start)))
           (r6rs-vector-sort! < v2)
           (r7rs-vector-copy! v start v2 0)))
        ((null? (cddr rest))
         (let* ((start (car rest))
                (end (cadr rest))
                (v2 (r7rs-vector-copy v start end)))
           (r6rs-vector-sort! < v2)
           (r7rs-vector-copy! v start v2 0)))
        (else
         (error 'vector-sort!
                "too many arguments"
                (cons < (cons v rest))))))

(define vector-stable-sort! vector-sort!)

