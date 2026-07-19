;;; -*- Gerbil -*-
;;; © vyzo
;;; json io environment
(import :std/serde/scan :std/error)
(export #t)

;;; Reader options: control JSON → Scheme decoding
(defstruct JSONReadOptions
  ((key-as-symbol   :- :boolean)   ; read JSON keys as symbols; default: #f (strings)
   (array-as-vector :- :boolean)   ; read JSON arrays as vectors; default: #f (lists)
   (object-as-hash  :- :boolean))  ; read JSON objects as hash-tables; default: #f (walist)
  final: #t)

(def (json-read-options
      key-as-symbol:   (key-as-symbol   #f)
      array-as-vector: (array-as-vector #f)
      object-as-hash:  (object-as-hash  #f))
  => JSONReadOptions
  (JSONReadOptions key-as-symbol array-as-vector object-as-hash))

(def default-json-read-options
  (JSONReadOptions #f #f #f))

(def current-json-read-options
  (make-parameter default-json-read-options))

;;; Writer options: control Scheme → JSON encoding
(defstruct JSONWriteOptions
  ((sort-keys :- :boolean)   ; sort keys when writing; default: #f
   (pretty    :? :symbol)    ; pretty-print style: #f | 'standard | 'lisp
   (indent    :- :fixnum))   ; spaces per indent level when pretty-printing; default: 2
  final: #t)

(def (json-write-options
      sort-keys: (sort-keys #f)
      pretty:    (pretty    #f)
      indent:    (indent    2))
  => JSONWriteOptions
  (JSONWriteOptions sort-keys pretty indent))

(def default-json-write-options
  (JSONWriteOptions #f #f 2))

(def current-json-write-options
  (make-parameter default-json-write-options))

;;; Write context: bundles writer options + optional cycle detection + mutable indent level
(defclass JSONWriteContext
  ((opt  :- JSONWriteOptions)
   (scan :? ScanContext)     ; optional ScanContext for cycle detection; #f = no detection
   (ind  :- :fixnum))        ; current indentation level for pretty-printing (mutable)
  constructor: :init!
  final: #t)

(defmethod {:init! JSONWriteContext}
  (lambda (self (opt :- JSONWriteOptions) (scan #f))
    (set! self.opt  opt)
    (set! self.scan scan)
    ;; lisp-style starts at -1 so first-level indent = (-1 + indent) = typically 1 space
    (set! self.ind  (if (eq? opt.pretty 'lisp) -1 0))))

(def (json-write-context
      (opt (current-json-write-options))
      scan: (scan #f))
  => JSONWriteContext
  (JSONWriteContext opt
                    (cond
                     ((ScanContext? scan) scan)
                     ((eq? scan #t) (ScanContext #f #f #f))
                     ((not scan) #f)
                     (else (raise-bad-argument json-write-context "invalid scan" scan)))))

(def (make-json-write-context
      scan:      (scan #f)
      sort-keys: (sort-keys #f)
      pretty:    (pretty    #f)
      indent:    (indent    2))
  (json-write-context
   (json-write-options sort-keys: sort-keys pretty: pretty indent: indent)
   scan: scan))
