;;; -*- Gerbil -*-
;;; © vyzo
;;; high level format api
(import :std/serde/serialize
        :std/io/interface
        :std/io/bio/api
        :std/io/bio/buffer
        ./env
        ./ioutil
        ./io
        ./writer
        ./format
	(for-syntax ./format-string))

(export #t)

(begin-syntax
  (def (fold-format-string-for-stx stx fmt args)
    (let* ((fold-char
            (lambda ((char   :- :char)
                (result :- :list))
              (cons `(char ,char)
                    result)))
           (fold-int
            (lambda (arg how flags width result)
              (cons `(int ,arg ,how ,flags ,width)
                    result)))
           (fold-float
            (lambda (arg how flags width precision result)
              (cons `(float ,arg ,how ,flags ,width ,precision ,result)
                    result)))
           (fold-object
            (lambda (arg how result)
              (cons `(object ,arg ,how)
                    result)))
           (error!
            (lambda (msg . args)
              (raise-syntax-error #f msg stx args)))
           (folder
            (FormatFolder
             fold-char
             fold-int
             fold-float
             fold-object
             error!)))
      (fold-format-string folder fmt [] args)))

  (def (fold-format-ops-for-stx stx writer env ops)
    (with-identifiers ((writer.write-char     writer writer ".write-char-utf8")
                       (writer.format-integer writer writer ".format-integer")
                       (writer.format-flonum  writer writer ".format-flonum")
                       (writer.display        writer writer ".display")
                       (writer.format         writer writer ".format")
                       (writer.debug          writer writer ".debug")
		       ($env                  'env))
      (let loop ((rest ops) (result []))
	(match rest
	  ([op . rest]
	   (match op
	     (['char arg]
	      (with-syntax ((arg arg))
		(cons #'(writer.write-char arg)
		      result)))
	     (['int arg how flags width]
	      (with-syntax ((env env) (arg arg) (how how) (flags flags) (width width))
		(cons #'(let ($env (@format-env env
						(flags: flags)
						(width: width)
						(integer-conversion: how)))
			  (writer.format-integer (: arg :integer) $env))
		      result)))
	     (['float arg how flags width precision result]
	      (with-syntax ((env env) (arg arg) (how how) (flags flags) (width width) (precision precision))
		(cons #'(let ($env (@format-env env
						(flags: flags)
						(width: width)
						(precision: precision)
						(flonum-conversion: how)))
			  (writer.format-flonum (: arg :flonum) $env))
		      result)))
	     (['object arg how]
	      (with-syntax ((env env) (arg arg))
		(cons (case how
			((#\a) #'(writer.display arg env))
			((#\s) #'(writer.format  arg env))
			((#\q) #'(writer.debug   arg env))
			(else
			 (raise-syntax-error #f "object format specifier: %a, %s, or %q" stx how #'arg)))
		      result)))
	     (else
	      (raise-syntax-error #f "unexpected format operation" stx op))))
	  (else result)))))) 

(defsyntax-case format ()
  ((_ fmt-string arg ...)
   (stx-string? #'fmt-string)
   (let* ((ops    (fold-format-string-for-stx stx (stx-e #'fmt-string) #'(arg ...)))
          (writer (syntax-local-temp '$writer))
          (env    (syntax-local-temp '$env))
          (ops    (fold-format-ops-for-stx stx writer env ops)))
     (with-syntax ((writer writer) (env env) ((op ...) ops))
       #'(let (env (format-environment))
	   (using (writer (open-buffered-writer #f very-small-buffer-size)
                        :- BufferedWriter)
             op ...
             (get-memory-output-string-utf8 writer))))))
  ((_ fmt-string arg ...)
   #'(apply-formater
      (make-formater fmt-string)
      arg ...))
  (id (identifier? #'id)
      #'(lambda (fmt-string . args)
          (apply apply-formater
            (make-formater fmt-string)
            args))))

(defsyntax-case fprintf ()
  ((_ output-target fmt-string arg ...)
   (stx-string? #'fmt-string)
   (let* ((ops    (fold-format-string-for-stx stx (stx-e #'fmt-string) #'(arg ...)))
          (writer (syntax-local-temp '$writer))
          (env    (syntax-local-temp '$env))
          (ops    (fold-format-ops-for-stx stx writer env ops)))
     (with-syntax ((writer writer) (env env) ((op ...) ops))
       #'(let ((output output-target)
               (env    (format-environment)))
           (cond
            ((try-BufferedWriter output)
             => (lambda ((writer :- BufferedWriter))
                  => :fixnum
                  (do-write (wr 0) op ... wr)))
            (else
             (using (writer (open-buffered-writer output very-small-buffer-size)
                            :- BufferedWriter)
               (begin0
                   (do-write (wr 0) op ... wr)
                 (__bio-output-buffer-detach! writer)))))))))
  ((_ output fmt-string arg ...)
   #'(apply-formater-to-output
      (make-formater fmt-string)
      output arg ...))
  (id (identifier? #'id)
      #'(lambda (output fmt-string . args)
          (apply apply-formater-to-output
            (make-formater fmt-string)
            output args))))

(defrule (printf fmt-string arg ...)
  (fprintf (current-output-port) fmt-string arg ...))

(defrule (eprintf fmt-string arg ...)
  (fprintf (current-error-port) fmt-string arg ...))
