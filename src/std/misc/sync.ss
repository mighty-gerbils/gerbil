;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; synchronous data structures
package: std/misc

(import :gerbil/gambit/threads)
(export make-sync-hash sync-hash?
        sync-hash-get sync-hash-key? sync-hash-put! sync-hash-remove!
        sync-hash-do)

(defstruct sync-hash (ht mx)
  constructor: :init!
  final: #t)

(defmethod {:init! sync-hash}
  (lambda (self ht)
    (struct-instance-init! self ht (make-mutex 'sync-hash))))

(def (sync-hash-get sht key)
  (with ((sync-hash ht mx) sht)
    (mutex-lock! mx)
    (let (val (hash-get ht key))
      (mutex-unlock! mx)
      val)))

(def (sync-hash-key? sht key)
  (with ((sync-hash ht mx) sht)
    (mutex-lock! mx)
    (let (res (hash-key? ht key))
      (mutex-unlock! mx)
      res)))

(def (sync-hash-put! sht key val)
  (with ((sync-hash ht mx) sht)
    (mutex-lock! mx)
    (hash-put! ht key val)
    (mutex-unlock! mx)))

(def (sync-hash-remove! sht key)
  (with ((sync-hash ht mx) sht)
    (mutex-lock! mx)
    (hash-remove! ht key)
    (mutex-unlock! mx)))

(def (sync-hash-do sht fun)
  (with ((sync-hash ht mx) sht)
    (with-lock mx
      (cut fun ht))))
