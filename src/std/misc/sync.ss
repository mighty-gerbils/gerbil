;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; synchronous data structures
;;; this module is *deprecated*, gerbil hash tables now natively support locks
(export make-sync-hash sync-hash?
        sync-hash-get sync-hash-ref sync-hash-key? sync-hash-put! sync-hash-remove!
        sync-hash-do)

(defstruct sync-hash (ht mx)
  constructor: :init!
  final: #t)

(defmethod {:init! sync-hash}
  (lambda (self ht)
    (struct-instance-init! self ht (make-mutex 'sync-hash))))

(def (sync-hash-get sht key)
  (sync-hash-ref sht key #f))

(def (sync-hash-ref sht key default)
  (using (sht : sync-hash)
    (mutex-lock! sht.mx)
    (let (val (hash-ref sht.ht key default))
      (mutex-unlock! sht.mx)
      val)))

(def (sync-hash-key? sht key)
  (using (sht : sync-hash)
    (mutex-lock! sht.mx)
    (let (res (hash-key? sht.ht key))
      (mutex-unlock! sht.mx)
      res)))

(def (sync-hash-put! sht key val)
  (using (sht : sync-hash)
    (mutex-lock! sht.mx)
    (hash-put! sht.ht key val)
    (mutex-unlock! sht.mx)))

(def (sync-hash-remove! sht key)
  (using (sht : sync-hash)
    (mutex-lock! sht.mx)
    (hash-remove! sht.ht key)
    (mutex-unlock! sht.mx)))

(def (sync-hash-do sht fun)
  (using (sht : sync-hash)
    (with-lock sht.mx
      (cut fun sht.ht))))
