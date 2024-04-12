;;; -*- Gerbil -*-
;;; © vyzo
;;; json io environment
(import :std/error
        :std/sugar)
(export #t)

;; Should decoded JSON "objects" have symbols as keys rather than strings?
(def read-json-key-as-symbol?
  (make-parameter #f))

;; What should JSON "objects" be decoded to walist instead of hash?
(def read-json-object-as-walist?
  (make-parameter #f))

;; What should JSON "arrays" be decoded to Scheme vectors rather than Scheme list?
(def read-json-array-as-vector?
  (make-parameter #f))

;; Should object keys be sorted when writing json?
;; Checking for duplicate keys only reliably works when this is true.
(def write-json-sort-keys?
  (make-parameter #f))

;; Old names, to be removed in v0.19.
(def json-symbolic-keys read-json-key-as-symbol?)
(def json-sort-keys write-json-sort-keys?)
(def json-list-wrapper (make-parameter identity)) ;; not used anymore, only there for soft migration

(defstruct env (read-json-key-as-symbol?
                read-json-object-as-walist?
                read-json-array-as-vector?
                write-json-sort-keys?)
  constructor: :init!
  transparent: #t final: #t)

(defmethod {:init! env}
  (lambda (self)
    (using (self :- env)
      (set! self.read-json-key-as-symbol? (read-json-key-as-symbol?))
      (set! self.read-json-object-as-walist? (read-json-object-as-walist?))
      (set! self.read-json-array-as-vector? (read-json-array-as-vector?))
      (set! self.write-json-sort-keys? (write-json-sort-keys?)))))

(defrule (raise-invalid-token where input char)
  (if (eof-object? char)
    (raise-io-error where "Incomplete JSON object; EOF reached" input)
    (raise-io-error where "Invalid JSON token" input char)))
