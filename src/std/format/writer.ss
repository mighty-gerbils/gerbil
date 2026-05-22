;;; -*- Gerbil -*-
;;; © vyzo
;;; format serializer
(import :std/error
	:std/interface
	:std/io/interface
	:std/io/bio/api
	:std/io/bio/cache
	:std/serde/interface
        :std/serde/serialize
	:std/iter
        ./env
	./ascii
        ./ioutil)
(export #t)

(cond-expand
  (,(compilation-target? C)
   (import :std/ffi)
   (C-ffi-macrology)
   (C-include "<sys/types.h>"
              "<stdio.h>")

   (def (buffer-write-digits (buf : :u8vector) (i : :fixnum) (int : :fixnum))
     => :fixnum
     (let loop ((i i :- :fixnum) (int int :- :fixnum))
       => :fixnum
       (if (fx< int 10)
         (begin
           (u8vector-set! buf i (fx+ #x30 int))
           (fx+ i 1))
         (let ((q (fx/ int 10))
               (r (fx% int 10)))
           (let (i (loop i q))
             (u8vector-set! buf i (fx+ #x30 r))
             (fx+ i 1))))))

   (def (buffer-cache-get-float-format-buffer (opt : FormatOpt) (num : :flonum)) => :u8vector
     (let (buf (buffer-cache.get 32))
       (u8vector-set! buf 0 (@char->int #\%))
       (let* ((i (if opt.flags
                   (for/fold (i 1) (flag (in-list opt.flags) : :char)
                     (u8vector-set! buf i (char->integer flag))
                     (fx+ i 1))
                   1))
              (i (if opt.precision
                   (buffer-write-digits buf i opt.precision)
                   i))
              (i (cond
		  (opt.width
                   (u8vector-set! buf i (@char->int #\.))
                   (buffer-write-digits buf (fx+ i 1) opt.width))
		  ((and (flinteger? num) (not (memq #\# opt.flags)))
		   (u8vector-set! buf i (@char->int #\#))
		   (u8vector-set! buf (fx+ i 1) (@char->int #\.))
		   (buffer-write-digits buf (fx+ i 2) 0))
		  (else i))))
         (u8vector-set! buf i opt.flonum-repr)
         (u8vector-set! buf (fx+ i 1) 0)
         buf)))

   (def (buffer-cache-get-float-output-buffer (opt : FormatOpt)) => :u8vector
     (let* ((buflen
             (fxmax
              (fx+ (or opt.width 6)
                   (if opt.precision (fx+ opt.precision 1) 6)
                   4)
              32))
            (buflen
             (fxshift 1 (integer-length buflen))))
       (buffer-cache.get buflen)))

   (def-C (__print-float (output-buf  :- :u8vector)
                         (fmt-buf     :- :u8vector)
                         (float       :- :flonum))
     => :fixnum
     "snprintf((char*)___arg1, ___U8VECTORSIZE(___ARG1), (char*) ___arg2, ___arg3)")

   (defwriter-ext (format-float writer (num : :flonum) (opt : FormatOpt))
     (let* ((fmt-buf (buffer-cache-get-float-format-buffer opt num))
            (str-buf (buffer-cache-get-float-output-buffer opt))
            (wr      (__print-float str-buf fmt-buf num)))
       (defrule (release!)
         (begin
           (buffer-cache.put! str-buf)
           (buffer-cache.put! fmt-buf)))
       (if (fx> wr 0)
         (begin0
             (writer.write str-buf 0 wr)
           (release!))
         (begin
           (release!)
           (raise-io-error format-flonum "failed to format float" error: wr))))))
  (else
   (syntax-error "unsupported target")))

(def __hvector-prefixes
  (vector
   (@string->utf8 "s8")
   (@string->utf8 "u8")
   (@string->utf8 "s16")
   (@string->utf8 "u16")
   (@string->utf8 "s32")
   (@string->utf8 "u32")
   (@string->utf8 "f32")
   (@string->utf8 "s64")
   (@string->utf8 "u64")
   (@string->utf8 "f64")))

(def (hvector-prefix (v : :hvector)) => :u8vector
  (let (st (##subtype v))
    (:- (##vector-ref __hvector-prefixes (fx- st (##subtype '#s8())))
	:u8vector)))

(implement WriteTraits FormatEnv
  (write-delimiter
   (lambda (self writer env)
     (writer.write-space)))
  (write-field-delimiter
   (lambda (self writer env)
     (writer.write-space)))
  (write-pair-delimiter
   (lambda (self writer env)
     (writer.write-dot)))
  (write-anchor-begin
   (lambda (self writer id env)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-fixnum-decimal id)
       (writer.write-equal)
       wr)))
  (write-anchor-end
   (lambda (self writer env)
     0))
  (write-reference
   (lambda (self writer id env)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-fixnum-decimal id)
       (writer.write-sharp)
       wr)))
  (write-object-begin
   (lambda (self writer env)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-lbrace)
       wr)))
  (write-object-end
   (lambda (self writer env)
     (writer.write-rbrace)))
  (write-list-begin
   (lambda (self writer env)
     (do-write (wr 0)
       (writer.write-lparen)
       wr)))
  (write-list-end
   (lambda (self writer env)
     (writer.write-rparen)))
  (write-class
   (lambda (self writer klass env)
     (do-format-style format-class self.opt
       (writer.write-symbol/quote klass.id)
       (writer.write-symbol/quote klass.name))))
  (write-slot
   (lambda (self writer slot env)
     (writer.write-symbol/quote slot)
     (writer.write-colon)))
  (write-char
   (lambda (self writer char env)
     (do-format-style format-char self.opt
       (do-write (wr 0)
	 (writer.write-sharp)
	 (writer.write-backslash)
	 (let (aint (char->integer char))
           (try-ascii-special-char aint
	     (lambda ((asci :- ascii-special-char-info)) => :fixnum
		(if asci.char-esc?
		  (do-format-char-ascii-names format-char self.opt
		    (if asci.char-scm-name
		      (writer.write-symbol/raw asci.char-scm-name)
		      (writer.write-char-utf8 char))
		    (if asci.char-std-name
		      (writer.write-symbol/raw asci.char-std-name)
		      (writer.write-char-utf8 char)))
		  (writer.write-char-utf8 char)))
	     (writer.write-char-utf8 char)))
	 wr)
       (writer.write-char-utf8 char))))
  (write-boolean
   (lambda (self writer bool env)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-u8 (if bool (@char->int #\t) (@char->int #\f)))
       wr)))
  (write-special
   (lambda (self writer atom env)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-bang)
       (let (sym
	     (cond
	      ((void? atom)            'void)
	      ((eof-object? atom)      'eof)
	      ((unbound-object? atom)  'unbound)
	      ((unbound2-object? atom) 'unbound2)
	      ((unused-object? atom)   'unused)
	      ((deleted-object? atom)  'deleted)
	      ((absent-object? atom)   'absent)
	      ((dssl-key? atom)        'key)
	      ((dssl-optional? atom)   'optional)
	      ((dssl-rest? atom)       'rest)
	      (else                    'unknown)))
	 (writer.write-interned-symbol sym))
       wr)))
  (write-integer
   (lambda (self writer int env)
     (if (fixnum? int)
       (do-write-integer writer int self.opt write-fixnum)
       (do-write-integer writer int self.opt write-bignum))))
  (write-flonum
   (lambda (self writer num env)
     (cond
      ((##flfinite? num)
       ;; not nan or infinity
       (writer.format-float num self.opt))
      ((##flinfinite? num)
       (if (##flnegative? num)
	 (writer.write (@string->utf8 "-inf.0"))
	 (writer.write (@string->utf8 "+inf.0"))))
      (else			  ; nan, has no sign (always positive)
       (writer.write (@string->utf8 "+nan.0"))))))
  (write-ratnum
   (lambda (self writer num env)
     (do-write (wr 0)
       (writer.write-integer (##ratnum-numerator num) env)
       (writer.write-slash)
       (writer.write-integer (##ratnum-denominator num) env)
       wr)))
  (write-cpxnum
   (lambda (self writer num env)
     (let ((real (##cpxnum-real num))
	   (imag (##cpxnum-imag num)))
       (do-write (wr 0)
	 (if (zero? real)
           0
           (writer.serialize real env))
	 (cond
	  ((= imag 1)
	   (do-write (wr 0)
	     (writer.write-u8 (@char->int #\+))
	     (writer.write-u8 (@char->int #\i))
	     wr))
	  ((= imag -1)
	   (do-write (wr 0)
	     (writer.write-u8 (@char->int #\-))
	     (writer.write-u8 (@char->int #\i))
	     wr))
	  (else
	   (let (env (@format-env env (flags: (format-flag-set #\+ self.opt.flags))))

	     (do-write (wr 0)
	       (writer.serialize imag env)
	       (writer.write-u8 (@char->int #\i))
	       wr))))
	 wr))))
  (write-symbol
   (lambda (self writer sym env)
     (do-format-style format-symbol self.opt
       (writer.write-symbol/quote sym)
       (writer.write-symbol/raw sym))))
  (write-keyword
   (lambda (self writer key env)
     (do-format-style format-keyword self.opt
       (writer.write-keyword/quote key)
       (writer.write-keyword/raw key))))
  (write-string
   (lambda (self writer str env)
     (do-format-style format-string self.opt
       (writer.write-string/quote str)
       (writer.write-string-utf8 str))))
  (write-vector-begin
   (lambda (self writer v env)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-lparen)
       wr)))
  (write-vector-end
   (lambda (self writer env)
     (writer.write-rparen)))
  (write-hvector-begin
   (lambda (self writer v env)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write (hvector-prefix v))
       (writer.write-lparen)
       wr)))
  (write-hvector-end
   (lambda (self writer env)
     (writer.write-rparen)))
  (write-values-begin
   (lambda (self writer v env)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-lbracket)
       wr)))
  (write-values-end
   (lambda (self writer env)
     (writer.write-rbracket)))
  (write-box-begin
   (lambda (self writer env)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-ampersand)
       wr)))
  (write-box-end
   (lambda (self writer env)
     0))
  (write-hash-table
   (lambda (self writer ht env)
     (do-write (wr 0)
       (env.methods.write-object-begin writer env)
       (writer.write-object-type (object-class ht) env)
       (env.methods.write-delimiter writer env)
       (env.methods.write-object-begin writer env)
       (writer.write-object-type (class-of (interface-instance-object ht)) env)
       (env.methods.write-delimiter writer env)
       (env.methods.write-list-begin writer env)
       (let (wr-body 0)
	 (ht.for-each
	  (lambda (k v)
            (do-write (wr 0)
	      (if (fx> wr-body 0)
		(env.methods.write-delimiter writer env)
		0)
              (env.methods.write-list-begin writer env)
              (writer.serialize k env)
	      (env.methods.write-delimiter writer env)
              (env.methods.write-pair-delimiter writer env)
	      (env.methods.write-delimiter writer env)
              (writer.serialize v env)
              (env.methods.write-list-end writer env)
              (set! wr-body (fx+ wr-body wr)))))
	 wr-body)
       (env.methods.write-list-end writer env)
       (env.methods.write-object-end writer env)
       (env.methods.write-object-end writer env)
       wr))))
