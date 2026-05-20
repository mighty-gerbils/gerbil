;;; -*- Gerbil -*-
;;; © vyzo
;;; base io facilities
(import :std/interface
        :std/io/interface
        :std/io/bio/api
        :std/serde/serialize
        ./env
        ./ioutil)
(export #t)

;; Writer interface
(interface ObjectWriter
  (write (writer : BufferedWriter) (env : FormatEnv)) => :fixnum)

(defsyntax-case defobject-writer ()
  ((_ klass (write-method writer obj env)
      body ...)
   (with-identifier (writer.write-method #'writer #'writer "." #'write-method)
     #'(begin
         (defwriter-ext (write-method writer (obj : klass) (env : FormatEnv))
           body ...)

	 (defmethod {write klass}
           (lambda (self writer env)
             (writer.write-method self env))
           interface: ObjectWriter)
	 (@implement ObjectWriter klass)))))

(defcall-interface-method ObjectWriter write
  (__object-write obj writer env)
  :- :fixnum)

(def (apply-object-writer obj writer (env : FormatEnv)) => :fixnum
  (__object-write obj writer env))

(defwriter-ext (format-raw writer obj (env : FormatEnv))
  (apply-object-writer obj writer env))

(defwriter-ext (format-anchor-begin writer (id : :fixnum) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-fixnum-decimal id)
    (writer.write-equal)
    wr))

(defwriter-ext (format-anchor writer obj (id : :fixnum) (env : FormatEnv))
  (do-write (wr 0)
    (writer.format-anchor-begin id env)
    (writer.format-raw obj env)
    wr))

(defwriter-ext (format-reference writer (id : :fixnum) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-fixnum-decimal id)
    (writer.write-sharp)
    wr))

(defwriter-ext (format writer obj (env : FormatEnv))
  (defrule (do-object obj)
    (writer.format-raw obj env))
  (defrule (do-anchor obj id)
    (writer.format-anchor obj id env))
  (defrule (do-reference id)
    (writer.format-reference id env))

  (@serialize obj env.scan do-object do-anchor do-reference))

(defwriter-ext (display writer obj (env : FormatEnv))
  (writer.format obj (@format-env env (style: FORMAT-DISPLAY))))

(defwriter-ext (debug writer obj (env : FormatEnv))
  (writer.format obj (@format-env env (style: FORMAT-DEBUG))))

(defwriter-ext (println writer obj (env : FormatEnv))
  (do-write (wr 0)
    (writer.format obj env)
    (writer.write-newline)
    (begin
      (writer.flush)
      wr)))

;;; Reader interface
;; (interface ObjectReader
;;   (read! (reader : BufferedReader) (env : FormatEnv)) => :void)

;; (defsyntax-case defobject-reader ()
;;   ((_ klass (read-it writer obj env)
;;       body ...)
;;    (with-identifier (reader.reader-it #'reader #'reader "." #'read-it)
;;      #'(begin
;;          (defreader-ext (read-it reader (obj : klass) (env : FormatEnv))
;;            body ...)
;;          (defmethod {read! klass}
;;            (lambda (self reader env)
;;              (reader.read-it self env))
;;            interface: ObjectReader)
;;          (@implement ObjectReader klass)))))
