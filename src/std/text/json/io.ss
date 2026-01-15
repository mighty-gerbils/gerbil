;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio json output
(import :std/error
        :std/interface
        :std/io
        :std/io/bio
        :std/format/io
        :std/format/object
        ./env)
(export #t)

(defrule (raise-invalid-token where input char)
  (if (eof-object? char)
    (raise-premature-end-of-input where "Incomplete JSON object; EOF reached" input)
    (raise-io-error where "Invalid JSON token" input char)))

(interface JSONWriter
  (write-json (writer : BufferedWriter) (env : JSONEnv)) => :fixnum)

(defwriter-ext (write-object-json writer obj (env : JSONEnv))
  ;; JSON does not support cyclic data structure encoding so the scanner
  ;; (if present) will simply verify that the object is acyclic
  (when env.scan
    (scan-object! obj senv))
  (let (method (get-object-writer obj))
    (method (@object obj) writer env)))

(def (get-object-json-writer obj) => :procedure
  (get-interface-method-by-index JSONWriter::interface
                                 obj
                                 (@interface-method-index JSONWriter write-json)))
