;;; -*- Gerbil -*-
;;; © vyzo
;;; formaters
(import :std/error
        :std/iter
        :std/io/interface
        :std/io/bio/api
        :std/io/bio/buffer
        ./format-string
        ./env
        ./io
        ./writer
        )
(export #t)

(defstruct Formater
  ((env   :- FormatEnv)
   (fmt   :- :string))
  final: #t)

(def (make-formatter (fmt : :string) (env (format-environment) : FormatEnv))
  => Formater
  (Formatter env fmt))

(def (apply-formater (fmt : Formater) . args)
  => :string
  (let (writer (open-buffered-writer #f very-small-buffer-size))
    (formater-write fmt writer writer args)
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
      (let (wr     (formater-write fmt writer  args))
        (__bio-output-buffer-detach! writer)
        wr)))))

(def (formater-write (fmt : Formater) (writer : BufferedWriter) (args : :list))
  => :fixnum
  XXX
  )
