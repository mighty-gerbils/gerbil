;;; -*- Gerbil -*-
;;; © vyzo
;;; json io interface
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/api
        :std/format/io
        ./env)
(export #t)

;;; writer
(interface JSONWriter
  (write-json (writer : BufferedWriter) (env : JSONEnv)) => :fixnum)

(defsyntax (defjson-writer stx)
  (syntax-case stx ()
    ((_ klass (write-it writer obj env)
        body ...)
     (with-syntax ((write-json (syntax-local-introduce 'write-json))
                   (writer.write-it
                    (stx-identifier #'write-it #'writer "." #'write-it)))
       #'(begin
           (defwriter-ext (write-it writer (obj : klass) (env : JSONEnv))
             body ...)
           (defmethod {write-json klass}
             (lambda (self writer env)
               (writer.write-it self env))
             interface: JSONWriter))))))

(defwriter-ext (write-json writer obj (env : JSONEnv))
  (defrule (do-object obj)
    (writer.write-json-raw obj env))
  (defrule (do-anchor obj id)
    (writer.write-jso-anchor obj id env))
  (defrule (do-reference id)
    (writer.write-json-reference id env))

  (@serialize obj env.format.scan do-object do-anchor do-reference))

(defwriter-ext (write-json-raw writer obj (env : JSONEnv))
  (apply-object-json-writer obj writer env))

(defwriter-ext (write-json-anchor writer obj (id : :fixnum) (env : JSONENV))
  XXX)

(defwriter-ext (write-json-reference write (id : :fixnum) (env : JSONEnv))
  XXX)

(def (apply-object-json-writer obj (env : JSONEnv)) => :fixnum
  (__object-write-json obj env))

(defcall-interface-method JSONWriter write-json
  (__object-write-json obj env)
  :- :fixnum)

;;; Reader
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
