;;; -*- Gerbil -*-
;;; (C) vyzo
;;; coroutines
package: std

(import :std/sugar)
(export coroutine (rename: cort? coroutine?) continue yield)

(def current-coroutine
  (make-parameter #f))

(defstruct cort (k end?)
  final: #t)

(def (coroutine proc . args)
  (let/cc k
    (start k (if (null? args) proc (cut apply proc args)))))

(def (start k thunk)
  (let (c (make-cort #f #f))
    (parameterize ((current-coroutine c))
      (let/cc kk
        (set! (cort-k c) kk)
        (k c))
      (call/values
        thunk
        (lambda res
          (set! (cort-end? c) #t)
          (apply yield res))))))

(def (continue c . args)
  (with ((cort k end?) c)
    (when end?
      (error "coroutine has ended"))
    (let/cc kk
      (set! (cort-k c) kk)
      (apply k args))))

(def (yield . args)
  (cond
   ((current-coroutine)
    => (lambda (c)
         (with ((cort k) c)
           (let/cc kk
             (set! (cort-k c) kk)
             (apply k args)))))
   (else
    (error "Not in a coroutine continuation"))))
