;;; -*- Gerbil -*-
;;; © vyzo
;;; json reader
(import :std/interface
        :std/io
        :std/io/bio/api
        :std/format/ioutil
        :std/format/reader
        ./env)
(export #t)

(interface JSONReader
  (read-json! (reader : BufferedReader) (env : JSONEnv)) => :void)

(defsyntax (defjson-reader stx)
  (syntax-case stx ()
    ((_ klass (read-it reader obj env)
        body ...)
     (with-syntax ((reader.read-it
                    (stx-identifier #'read-it #'reader "." #'read-it)))
       #'(begin
           (defreader-ext (read-it reader (obj : klass) (env : JSONEnv))
             body ...)
           (defmethod {read-json! klass}
             (lambda (self reader env)
               (reader.read-it self env))
             interface: JSONReader))))))



(defrule (raise-invalid-token where input char)
  (if (eof-object? char)
    (raise-premature-end-of-input where "Incomplete JSON object; EOF reached" input)
    (raise-io-error where "Invalid JSON token" input char)))

(defreader-ext (parse-json reader (env : JSONEnv))
  XXX
  )

(defreader-ext (read-json! reader obj (env : JSONEnv)) => :void
  (apply-object-json-reader obj reader env))

;;; method dispatch
(def (apply-object-json-reader obj (reader : BufferedReader) (env : JSONEnv)) => :void
  (__object-read-json! obj reader env))

(defcall-interface-method JSONReader read-json!
  (__object-read-json! obj reader env))


;;; base
