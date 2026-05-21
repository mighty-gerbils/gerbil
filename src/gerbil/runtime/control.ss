;;; -*- Gerbil -*-
;;; © vyzo
;;; Gambit control primitives
prelude: "../core"
package: gerbil/runtime
namespace: #f

(import "gambit" "util" "table")
(export #t)

(def (make-promise (thunk : :procedure))
  => :promise
  (:- (##make-delay-promise thunk) :promise))

;; A regular promise is not thread-safe, and there is a race condition in who will force the computation,
;; wherein multiple threads might simultaneously do it, causing side-effects to happen multiple times,
;; with different results, and the second to terminate to overwrite the first results.
;; An atomic promise, by contrast, ensures that the thunk will be computed once and only once.
;;
;; This implementation offers the same API as a regular promise, with the same force primitive,
;; oblivious that more work is done, at the cost of a bit extra overhead in this atomic case.
;; If you care more about performance than about easy expression of safe computation,
;; use lower-level primitives, or go deeper implement this functionality deeper into Gambit.
;; Note that there is indeed a race condition for who will force the inner promise,
;; but all racing workers except the first one will then wait for the mutex,
;; grab the completed inner promise result, and idempotently all set the result of the outer promise
;; to the same result of the inner promise, which is safe.
(def (make-atomic-promise (thunk : :procedure))
  => :promise
  (let ((inner (make-promise thunk)) ;; inner thread-unsafe promise
        (mx (make-mutex 'promise))) ;; mutex ensuring only one worker may force the inner promise
    (make-promise ;; outer promise allowing the usual force primitive to work
     (lambda ()
       (let (once (vector 0)) ;; per-worker atomic marker that ensures there is no reentry in code
         (dynamic-wind ;; ensure that escaping continuation may not cause reentry into the forcing frame
             (lambda ()
               (declare (not interrupts-enabled))
               (unless (##fx= (##vector-cas! once 0 1 0) 0) ;; if you try hard to break atomicity, you lose
                 (error "Cannot reenter atomic block"))
               (mutex-lock! mx)) ;; now get the mutex so you're the only one to compute the inner promise
             (cut ##force-out-of-line inner)
             (cut mutex-unlock! mx))))))) ;; release the mutex

(def* call-with-parameters
  (((thunk : :procedure)) (thunk))
  (((thunk : :procedure) param val)
   (##parameterize1 param val thunk))
  (((thunk : :procedure) param val . rest)
   (call-with-parameters
    (cut apply call-with-parameters thunk rest)
    param val)))

(def (with-unwind-protect (K : :procedure) (fini : :procedure))
  (let (once (vector 0))
    (dynamic-wind
        (lambda ()
          (declare (not interrupts-enabled))
          (unless (##fx= (##vector-cas! once 0 1 0) 0)
            (error "Cannot re-enter unwind protected block")))
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
                (let ((pos (##fxmodulo (##keyword-hash hd) (##vector-length kwt))))
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
