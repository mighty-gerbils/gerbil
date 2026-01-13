;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio json output
(import :std/error
        :std/interface
        :std/io
        :std/io/bio
        ./env)
(export #t)

(defrule (raise-invalid-token where input char)
  (if (eof-object? char)
    (raise-premature-end-of-input where "Incomplete JSON object; EOF reached" input)
    (raise-io-error where "Invalid JSON token" input char)))

(interface JSONWriter
  (write-json (writer : BufferedWriter) (env : JSONEnv)) => :fixnum)

(defwriter-ext (write-object-json writer obj env) => :fixnum
  (let (method (get-object-writer obj))
    (method obj writer env)))

(def (get-object-json-writer obj) => :procedure
  (get-interface-method-by-index JSONWriter::interface
                                 obj
                                 (@interface-method-index JSONWriter write-json)))
