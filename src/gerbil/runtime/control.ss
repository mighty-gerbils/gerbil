;;; -*- Gerbil -*-
;;; © vyzo
;;; Gambit control primitives
prelude: "../prelude/core"
package: gerbil/runtime
namespace: #f

(import "gambit" "util" "table")
(export #t)

(def (make-promise thunk)
  (##make-delay-promise thunk))

(def (call-with-parameters thunk . rest)
  (match rest
    ([param val . rest]
     (##parameterize1 param val
       (if (null? rest) thunk
           (lambda () (apply call-with-parameters thunk rest)))))
    ([] (thunk))))

(def (with-unwind-protect K fini)
  (let ((once #f))
    (dynamic-wind
        (lambda ()
          (declare (not interrupts-enabled))
          (if once
            (error "Cannot re-enter unwind protected block")
            (set! once #t)))
        K fini)))

;; kwt: #f or a vector as a perfect hash-table for expected keywords
(def (keyword-dispatch kwt K . all-args)
  (when kwt
    (unless (vector? kwt)
      (error "expected vector" kwt)))
  (unless (procedure? K)
    (error "expected procedure" K))
  (let (keys (make-symblic-table #f))
    (let lp ((rest all-args) (args #f) (tail #f))
      (match rest
        ([hd . hd-rest]
         (cond
          ((keyword? hd)
           (match hd-rest
             ([val . rest]
              (when kwt
                (let ((pos (##fxmodulo (keyword-hash hd) (##vector-length kwt))))
                  (unless (eq? hd (##vector-ref kwt pos))
                    (error "Unexpected keyword argument" K hd))))
              (when (eq? (symbolic-table-ref keys hd (macro-absent-obj))
                         (macro-absent-obj))
                (error "Duplicate keyword argument" K hd))
              (symbolic-table-set! keys hd val)
              (lp rest args tail))))
          ((eq? hd #!key)               ; keyword escape
           (match hd-rest
             ([val . rest]
              (if args
                (begin
                  (##set-cdr! tail hd-rest)
                  (lp rest args hd-rest))
                (lp rest hd-rest hd-rest)))))
          ((eq? hd #!rest)              ; end keyword processing
           (if args
             (begin
               (##set-cdr! tail hd-rest)
               (##apply K (cons keys args)))
             (##apply K (cons keys hd-rest))))
          (else                         ; plain argument
           (if args
             (begin
               (##set-cdr! tail rest)
               (lp hd-rest args rest))
             (lp hd-rest rest rest)))))
        (else
         (if args
           (begin
             (##set-cdr! tail [])
             (##apply K (cons keys args)))
           (K keys)))))))

(def (keyword-rest kwt . drop)
  (let (rest [])
    (raw-table-for-each
     (lambda (k v)
       (unless (memq k drop)
         (set! rest (cons* k v rest))))
     kwt)
    rest))
