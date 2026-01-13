;;; -*- Gerbil -*-
;;; © vyzo
;;; json io environment
(import :std/format/io)
(export #t)

;; Should decoded JSON "objects" have symbols as keys rather than strings?
(def read-json-key-as-symbol?
  (make-parameter #f))

;; What should JSON "objects" be decoded to walist instead of hash?
(def read-json-object-as-walist?
  (make-parameter #t))

;; What should JSON "arrays" be decoded to Scheme vectors rather than Scheme list?
(def read-json-array-as-vector?
  (make-parameter #f))

;; Should object keys be sorted when writing json?
;; Checking for duplicate keys only reliably works when this is true.
(def write-json-sort-keys?
  (make-parameter #f))

(defstruct (JSONEnv WriteEnv)
  (read-json-key-as-symbol?
   read-json-object-as-walist?
   read-json-array-as-vector?
   write-json-sort-keys?)
  constructor: :init!)

(defmethod {:init! JSONEnv}
  (lambda (self (wenv : WriteEnv := (default-write-environment)))
    (let (len (##vector-length (&class-type-slot-vector WriteEnv::t)))
      (let loop ((i 1))
        (when (fx< i len)
          (##unchecked-structure-set! self
            (##unchecked-structure-ref wenv i #f 'JSONEnv:::init!)
            i #f 'JSONEnv:::init!))))
    (set! self.read-json-key-as-symbol? (read-json-key-as-symbol?))
    (set! self.read-json-object-as-walist? (read-json-object-as-walist?))
    (set! self.read-json-array-as-vector? (read-json-array-as-vector?))
    (set! self.write-json-sort-keys? (write-json-sort-keys?))))
