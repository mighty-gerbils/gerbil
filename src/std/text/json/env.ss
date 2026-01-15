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
(def write-json-sort-keys?
  (make-parameter #f))

(defclass JSONReadEnv
  ((key-as-symbol    :-  :boolean := #t)
   (object-as-walist :-  :boolean := #t)
   (array-as-vector  :-  :boolean := #f))
  final: #t
  transparent: #t
  acyclic: #t)

(defclass JSONWriteEnv
  ((sort-keys       :-  :boolean := #f))
  final: #t
  transparent: #t
  acyclic: #t)

(defclass JSONEnv
  ((scan  :- ScanEnv)
   (read  :- JSONInputParams)
   (write :- JSONOuputParams))
  final: #t
  print: (input output)
  acyclic: #t)

(def (JSON-read-env) => JSONEnv
  XXX
  )

(def (JSON-output-env (scan? #f)) => JSONEnv
  XXX
  )
