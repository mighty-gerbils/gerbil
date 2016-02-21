;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Iterations and comprehensions
package: std

(import :gerbil/gambit/ports
        :std/generic
        :std/coroutine
        )
(export
  iterator iterator? make-iterator
  iterator-e iterator-e-set!
  iterator-start iterator-value iterator-next
  :iter :iter::t :iter::apply
  iter-end
  for for* for/collect for/fold
  in-range in-naturals in-hash-keys in-hash-values
  in-input-lines
  )

(defstruct iterator (e start value next))

(def iter-end '#(iter-end))

(defgeneric :iter
  (lambda (obj) (call-method obj ':iter)))
(defmethod (:iter (iter iterator))
  iter)
(defmethod (:iter (obj <list>))
  (iter-list obj))
(defmethod (:iter (obj <vector>))
  (iter-vector obj))
(defmethod (:iter (obj <string>))
  (iter-string obj))
(defmethod (:iter (obj <hash-table>))
  (iter-hash-table obj))
(defmethod (:iter (obj <procedure>))
  (iter-coroutine obj))
(defmethod (:iter (obj <input-port>))
  (iter-input-port obj))

(def (iter-list lst)
  (def (value-e iter)
    (with ((iterator e) iter)
      (match e
        ([hd . rest] hd)
        (else iter-end))))
  (def (next-e iter)
    (set! (iterator-e iter)
      (cdr (iterator-e iter))))
  (make-iterator lst void value-e next-e))

(def (iter-vector vec (length-e vector-length) (ref-e vector-ref))
  (def (value-e iter)
    (with ((iterator [vec . index]) iter)
      (if (fx< index (length-e vec))
        (ref-e vec index)
        iter-end)))
  (def (next-e iter)
    (with ((iterator e) iter)
      (set! (cdr e)
        (fx1+ (cdr e)))))
  (make-iterator (cons vec 0) void value-e next-e))

(def (iter-string obj)
  (iter-vector obj string-length string-ref))

(def (iter-hash-table obj)
  (def (value-e iter)
    (with ((iterator lst) iter)
      (match lst
        ([[key . value] . rest]
         (values key value))
        (else iter-end))))
  (def (next-e iter)
    (set! (iterator-e iter)
      (cdr (iterator-e iter))))
  (make-iterator (hash->list obj) void value-e next-e))

(def (iter-coroutine proc)
  (def (start-e iter)
    (with ((iterator proc) iter)
      (let (cort (coroutine (lambda () (proc) iter-end)))
        (set! (iterator-e iter)
          cort))))
  (def (value-e iter)
    (with ((iterator cort) iter)
      (continue cort)))
  (make-iterator proc start-e value-e void))

(def (iter-input-port port (read-e read))
  (def (value-e iter)
    (with ((iterator port) iter)
      (let (e (read-e port))
        (if (eof-object? e)
          iter-end
          e))))
  (make-iterator port void value-e void))

(def (iter-in-range start count step)
  (def (value-e iter)
    (with ((iterator [value . count]) iter)
      (if (positive? count)
        value
        iter-end)))
  (def (next-e iter)
    (with ((iterator e) iter)
      (set! (cdr e)
        (+ (cdr e) step))))
  (make-iterator (cons start count) void value-e next-e))

(def* in-range
  ((count) (iter-in-range count 0 1))
  ((start count) (iter-in-range count start 1))
  ((start count step) (iter-in-range count start step)))

(def (in-naturals (start 1) (step 1))
  (def (next-e iter)
    (set! (iterator-e iter)
      (+ (iterator-e iter) start)))
  (make-iterator start void iterator-e next-e))

(def (in-hash-keys ht)
  (iter-list (hash-keys ht)))

(def (in-hash-values ht)
  (iter-list (hash-values ht)))

(def (in-input-lines obj)
  (iter-input-port obj read-line))

(defrules for ())

(defrules for* ()
  ((recur (bind . rest) body ...)
   (for (bind) (recur rest body ...)))
  ((_ () body ...)
   (begin body ...)))

(defrules for/collect ())

(defrules for/fold ())



