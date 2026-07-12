;;; -*- Gerbil -*-
;;; © vyzo
;;; formatters
(import :std/error
        :std/io/interface
        :std/io/bio/api
        :std/io/bio/buffer
	:std/serde/interface
	:std/serde/serialize
        ./format-string
        ./env
        ./ioutil
        ./writer
        ./io)
(export #t)

(defstruct Formatter
  ((fmt   :- :string)
   (env   :- WriteContext))
  final: #t)

(def (make-formatter (fmt                   :  :string)
                    (ctx  (format-context) :  WriteContext))
  => Formatter
  (Formatter fmt ctx))

(def (apply-formatter (fmt : Formatter) . args)
  => :string
  (let* ((writer (open-buffered-writer #f very-small-buffer-size))
         (folder (make-folder-for-writer fmt writer)))
    (formatter-fold folder fmt.fmt args)
    (get-memory-output-string-utf8 writer)))

(def (apply-formatter-to-output (fmt : Formatter) output . args)
  => :fixnum
  (cond
   ((try-BufferedWriter output)
    => (lambda ((writer :- BufferedWriter))
         => :fixnum
         (let (folder (make-folder-for-writer fmt writer))
           (formatter-fold folder fmt.fmt args))))
   (else
    (let* ((writer (open-buffered-writer output very-small-buffer-size))
           (folder (make-folder-for-writer fmt writer)))
      (begin0
          (formatter-fold folder fmt.fmt args)
        (buffer-detach! writer))))))

(def (formatter-fold (folder : FormatFolder)
		    (fmt    : :string)
                    (args   : :list))
  => :fixnum
  (: (fold-format-string folder fmt 0 args)
     :fixnum))

(def (make-folder-for-writer (fmt : Formatter) (writer : BufferedWriter)) => FormatFolder
  (let ((fold-char
         (lambda ((char   :- :char)
             (result :- :fixnum))
           (fx+ result (writer.write-char-utf8 char))))
        (fold-int
         (lambda (arg how flags width result)
           (using (ctx (@format-env fmt.env
                                    (flags: flags)
                                    (width: width)
                                    (integer-conversion: how))
                       : WriteContext)
             (fx+ result (ctx.methods.write-integer writer (: arg :integer) ctx)))))
        (fold-float
         (lambda (arg how flags width precision result)
           (using (ctx (@format-env fmt.env
                                    (flags: flags)
                                    (width: width)
                                    (precision: precision)
                                    (flonum-conversion: how))
                       : WriteContext)
             (fx+ result (write-flonum-c-style writer (: arg :flonum) ctx)))))
        (fold-object
         (lambda (arg how result)
           (fx+ result
                (case how
                  ((#\a) (format-display writer arg fmt.env))
                  ((#\s) (format-write   writer arg fmt.env))
                  ((#\q) (format-debug   writer arg fmt.env))
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
