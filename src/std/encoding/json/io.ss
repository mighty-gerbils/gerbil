;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio json output
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/api
        :std/format/io
        ./env)
(export #t)

(interface JSONWriter
  (write-json (writer : BufferedWriter) (env : JSONEnv)) => :fixnum)

(interface JSONReader
  (read-json (reader : BufferedReader) (env : JSONEnv)) => :void)

(defsyntax (defjson-writer stx)
  (syntax-case stx ()
    ((_ klass (write-it writer obj env)
        body ...)
     (with-syntax ((writer.write-it
                    (stx-identifier #'write-it #'writer "." #'write-it)))
       #'(begin
           (defwriter-ext (write-it writer (obj : klass) (env : JSONEnv))
             body ...)
           (defmethod {write-json klass}
             (lambda (self writer env)
               (writer.write-it self env))
             interface: JSONWriter))))))

(defsyntax (defjson-reader stx)
  (syntax-case stx ()
    ((_ klass (read-it reader obj env)
        body ...)
     (with-syntax ((reader.read-it
                    (stx-identifier #'read-it #'reader "." #'read-it)))
       #'(begin
           (defreader-ext (read-it reader (obj : klass) (env : JSONEnv))
             body ...)
           (defmethod {read-json klass}
             (lambda (self reader env)
               (reader.read-it self env))
             interface: JSONReader))))))

(defwriter-ext (write-json writer obj (env : JSONEnv))
  ;; JSON does not support cyclic data structure encoding so the scanner
  ;; (if present) will simply verify that the object is acyclic
  (when env.scan
    (scan-object! obj senv))
  (apply-object-json-writer obj env))


(defrule (raise-invalid-token where input char)
  (if (eof-object? char)
    (raise-premature-end-of-input where "Incomplete JSON object; EOF reached" input)
    (raise-io-error where "Invalid JSON token" input char)))

(defreader-ext (parse-json reader (env : JSONEnv))
  XXX
  )

(defreader-ext (read-json reader obj (env : JSONEnv))
  (apply-object-json-reader obj env)
  obj)

;; method dispatch
(def (apply-object-json-writer obj (env : JSONEnv)) => :fixnum
  (:- (__object-write-json obj env)
      :fixnum))

(defcall-interface-method JSONWriter write-json
  (__object-write-json obj env))

(def (apply-object-json-reader obj (env : JSONEnv)) => :void
  (__object-read-json obj env))

(defcall-interface-method JSONReader read-json
  (__object-read-json obj env))
