;;; -*- Gerbil -*-
;;; © vyzo
;;; json io environment
(import :std/serde/scan
        :std/format/env)
(export #t)

(defclass JSONOpt
  ((format                      : FormatOpt)
   ;; read/write objects without considering the class
   (untyped-object              : :boolean)
   ;; read untyped objects as hashes; default is wraped alist
   (read-untyped-object-as-hash : :boolean)
   ;; read object keys as symbols; default is string
   (read-key-as-symbol          : :boolean)
   ;; read arrays as vectors; default is list
   (read-array-as-vector        : :boolean)
   ;; whether to sort output keys for alists and untyped objects
   (write-sort-keys              : :boolean))
  transparent: #t
  final: #t)

(defclass JSONEnv
  ((format :- FormatEnv)
   (opt    :- JSONOpt))
  constructor: :init!
  final: #t)

(def current-json-opt
  (make-parameter #f))

(def __default-json-opt
  (delay-atomic
   (JSONOpt
    XXX)))

(def (json-environment (opt (current-json-ropt))) => JSONEnv
  (JSONEnv (or opt (force __default-json-opt))))

(def (json-environment-with)
  XXX
  )

(defmethod {:init! JSONEnv}
  XXX)
