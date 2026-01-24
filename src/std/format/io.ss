;;; -*- Gerbil -*-
;;; © vyzo
;;; base io facilities
(import :std/io/interface
        :std/io/bio/api
        :std/serde/serialize
        ./env
        ./ioutil)
(export #t)

;; Writer interface
(interface ObjectWriter
  (write (writer : BufferedWriter) (env : FormatEnv)) => :fixnum)

(defsyntax (defobject-writer stx)
  (syntax-case stx ()
    ((_ klass (write-method writer obj env)
        body ...)
     (with-identifiers
         ((write '$writer)
          (writer.write-method #'writer #'writer "." #'write-method))
       #'(begin
           (defwriter-ext (write-it writer (obj : klass) (env : WriteEnv))
             body ...)
           (defmethod {write klass}
             (lambda (self writer env)
               (writer.write-method self env))
             interface: ObjectWriter))))))

(defwriter-ext (print writer obj (env : FormatEnv))
  (do-write (wr 0)
    (writer.format obj env)
    (writer.write-newline)
    (begin
      (writer.flush)
      wr)))

(defwriter-ext (display writer obj (env : FormatEnv))
  (writer.format obj (format-env-with-style env FORMAT-DISPLAY)))

(defwriter-ext (debug writer obj (env : FormatEnv))
  (writer.format obj (format-env-with-style env FORMAT-DEBUG)))

(defwriter-ext (format writer obj (env : FormatEnv))
  (defrule (do-object obj)
    (writer.format-raw obj env))
  (defrule (do-anchor obj id)
    (writer.format-anchor obj id env))
  (defrule (do-reference id)
    (writer.format-reference id env))

  (@serialize obj env.scan do-object do-anchor do-reference))

(defwriter-ext (format-raw writer obj (env : FormatEnv))
  (apply-object-writer obj writer env))

(defwriter-ext (format-anchor writer obj (id : :fixnum) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-fixnum-decimal id)
    (writer.write-equal)
    (writer.write-sharp)
    (writer.format-raw obj env)
    wr))

(defwriter-ext (format-reference write (id : :fixnum) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-fixnum-decimal id)
    (writer.write-sharp)
    wr))

(def (apply-object-writer obj writer (env : FormatEnv)) => :fixnum
  (__object-write obj writer env))

(defcall-interface-method ObjectWriter writer
  (__object-write obj writer env)
  :- :fixnum)

;;; Reader interface
(interface ObjectReader
  (read! (reader : BufferedReader) (env : FormatEnv)) => :void)

(defsyntax (defobject-reader stx)
  (syntax-case stx ()
    ((_ klass (read-it writer obj env)
        body ...)
     (with-identifier (reader.reader-it #'reader #'reader "." #'read-it)
       #'(begin
           (defwriter-ext (read-it reader (obj : klass) (env : FormatEnv))
             body ...)
           (defmethod {read! klass}
             (lambda (self reader env)
               (reader.read-it self env))
             interface: ObjectReader))))))
