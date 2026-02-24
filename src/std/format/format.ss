;;; -*- Gerbil -*-
;;; © vyzo
;;; formaters
(import :std/error
        :std/io/interface
        :std/io/bio/api
        :std/io/bio/buffer
        ./format-string
        ./env
        ./ioutil
        ./io
        ./writer)
(export #t)

(defstruct Formater
  ((fmt   :- :string)
   (env   :- FormatEnv))
  final: #t)

(def (make-formatter (fmt                       :  :string)
                     (env  (format-environment) :  FormatEnv))
  => Formater
  (Formatter fmt env))

(def (apply-formater (fmt : Formater) . args)
  => :string
  (let (writer (open-buffered-writer #f very-small-buffer-size))
    (formater-write fmt writer args)
    (get-memory-output-string-utf8 writer)))

(def (apply-formater-to-output (fmt : Formater) output . args)
  => :fixnum
  (cond
   ((try-BufferedWriter output)
    => (lambda ((writer :- BufferedWriter))
         => :fixnumn
         (formater-write fmt writer args)))
   (else
    (using (writer (open-buffered-writer output very-small-buffer-size) :- BufferedWriter)
      (let (wr     (formater-write fmt writer args))
        (__bio-output-buffer-detach! writer)
        wr)))))

(def (formater-write (fmt       :  Formater)
                     (writer    :  BufferedWriter)
                     (args      :  :list)
                     (folder #f :? FormatFolder))
  => :fixnum
  (let (folder (or folder (make-folder-for-writer fmt writer)))
    (: (fold-format-string folder fmt.fmt 0 args)
       :fixnum)))

(def (make-folder-for-writer (fmt : Formatter) (writer : BufferedWriter)) => FormatFolder
  (let ((fold-char
         (lambda ((char   :- :char)
             (result :- :fixnum))
           (fx+ result (writer.format-char char fmt.env))))
        (fold-int
         (lambda (arg how flags width result)
           (let (env (@format-env fmt.env
                                  (flags: flags)
                                  (width: width)
                                  (integer-conversion: how)))
             (fx+ result (writer.format-integer (: arg :integer) env)))))
        (fold-float
         (lambda (arg how flags width precision result)
           (let (env (@format-env fmt.env
                                  (flags: flags)
                                  (width: width)
                                  (precision: precision)
                                  (flonum-conversion: how)))
             (fx+ result (writer.format-flonum (: arg :flonum) env)))))
        (fold-object
         (lambda (arg how result)
           (fx+ result
                (case how
                  ((#\a) (writer.display arg fmt.env))
                  ((#\s) (writer.format  arg fmt.env))
                  ((#\q) (writer.debug   arg fmt.env))
                  (else
                   (raise-bad-argument format "object format specifier: a%, %s, or %q" how))))))
        (error!
         (lambda (msg . args)
           (raise-bad-argument format msg args))))
  (FormatFolder
   fold-char
   fold-int
   fold-float
   fold-object
   fold-object)))
