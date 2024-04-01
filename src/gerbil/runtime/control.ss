;;; -*- Gerbil -*-
;;; © vyzo
;;; Gambit control primitives
prelude: "../core"
package: gerbil/runtime
namespace: #f

(import "gambit" "util" "table")
(export #t)

(defapi (make-promise (thunk : :procedure))
  :- :promise
  (##make-delay-promise thunk))

(defapi (call-with-parameters (thunk : :procedure) . rest)
  (match rest
    ([param val . rest]
     (##parameterize1 param val
       (if (null? rest) thunk
           (lambda () (apply call-with-parameters thunk rest)))))
    ([] (thunk))))

(defapi (with-unwind-protect (K : :procedure) (fini : :procedure))
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
      (error "keyword-dispatch: expected vector" kwt)))
  (unless (procedure? K)
    (error "keyword-dispatch: expected procedure" K))
  (let (keys (make-symbolic-table #f 0))
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
              (unless (eq? (symbolic-table-ref keys hd absent-value)
                           absent-value)
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
     kwt
     (lambda (k v)
       (unless (memq k drop)
         (set! rest (cons* k v rest)))))
    rest))
