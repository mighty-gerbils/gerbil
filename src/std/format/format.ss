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
  (Formater fmt env))

(def (apply-formater (fmt : Formater) . args)
  => :string
  (let* ((writer (open-buffered-writer #f very-small-buffer-size))
         (folder (make-folder-for-writer fmt writer)))
    (formater-fold folder fmt args)
    (get-memory-output-string-utf8 writer)))

(def (apply-formater-to-output (fmt : Formater) output . args)
  => :fixnum
  (cond
   ((try-BufferedWriter output)
    => (lambda ((writer :- BufferedWriter))
         => :fixnum
         (let (folder (make-folder-for-writer fmt writer))
           (formater-fold folder fmt.fmt args))))
   (else
    (let* ((writer (open-buffered-writer output very-small-buffer-size))
           (folder (make-folder-for-writer fmt writer)))
      (begin0
          (formater-fold folder fmt.fmt args)
        (__bio-output-buffer-detach! writer))))))

(def (formater-fold (folder : FormatFolder)
                    (fmt    : :string)
                    (args   : :list))
  => :fixnum
  (: (fold-format-string folder fmt 0 args)
     :fixnum))

(def (make-folder-for-writer (fmt : Formater) (writer : BufferedWriter)) => FormatFolder
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
                   (raise-bad-argument format "object format specifier: %a, %s, or %q" how))))))
        (error!
         (lambda (msg . args)
           (raise-bad-argument format msg format: fmt.fmt args: args))))
    (FormatFolder
     fold-char
     fold-int
     fold-float
     fold-object
     error!)))
