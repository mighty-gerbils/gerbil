;;; -*- Gerbil -*-
;;; © vyzo
;;; json io environment
(import :std/serde/scan
        :std/format/env)
(export #t)

(defclass JSONOpt
  ((format                 : FormatOpt)
   ;; whether to read/write objects without serializing the class
   (untyped                : :boolean)
   ;; whether to read untyped objects as hashes; default is wraped alist
   (untyped-object-as-hash : :boolean)
   ;; whether to read object keys as symbols; default is string
   (key-as-symbol          : :boolean)
   ;; whether to read arrays as vectors; default is list
   (array-as-vector        : :boolean)
   ;; whether to sort field keys for alists, hashes, and objects
   (sort-keys              : :boolean))
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
