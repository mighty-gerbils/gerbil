;;; -*- Gerbil -*-
;;; © vyzo
;;; object reader
(import :gerbil/runtime/mop
        :std/interface
        :std/io/interface
        :std/io/bio/api
        :std/serde/scan
        ./env
        ./ioutil)
(export #t)

(interface ObjectReader
  (read! (reader : BufferedReader) (env : FormatEnv)) => :void)

(defsyntax (defobject-reader stx)
  (syntax-case stx ()
    ((_ klass (read-it writer obj env)
        body ...)
     (with-syntax ((reader.reader-it
                    (stx-identifier #'reader #'reader "." #'read-it)))
       #'(begin
           (defwriter-ext (read-it reader (obj : klass) (env : FormatEnv))
             body ...)
           (defmethod {read! klass}
             (lambda (self reader env)
               (reader.read-it self env))
             interface: ObjectReader))))))
