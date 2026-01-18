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

(defrule (raise-invalid-token where input char)
  (if (eof-object? char)
    (raise-premature-end-of-input where "Incomplete JSON object; EOF reached" input)
    (raise-io-error where "Invalid JSON token" input char)))

(interface JSONWriter
  (write-json (writer : BufferedWriter) (env : JSONEnv)) => :fixnum)

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
               (writer.format-it self env))
             interface: JSONWriter))))))

(defwriter-ext (write-object-json writer obj (env : JSONEnv))
  ;; JSON does not support cyclic data structure encoding so the scanner
  ;; (if present) will simply verify that the object is acyclic
  (when env.scan
    (scan-object! obj senv))
  (apply-object-json-writer obj env))

(def (apply-object-json-writer obj (env : JSONEnv)) => :fixnum
  (:- (__object-write-json obj env)
      :fixnum))

(defcall-interface-method JSONWriter write-json
  (__object-write-json obj env))
