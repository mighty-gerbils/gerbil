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
              (i (if opt.width
                   (buffer-write-digits buf i opt.width)
                   i))
              (i (if opt.precision
                   (begin
                     (u8vector-set! buf i (@char->int #\.))
                     (buffer-write-digits buf (fx+ i 1) opt.precision))
                   i)))
         (u8vector-set! buf i opt.flonum-repr)
         (u8vector-set! buf (fx+ i 1) 0)
         buf)))

   (def (buffer-cache-get-float-output-buffer (opt : FormatOpt)) => :u8vector
     (let* (;; %f/%F output can have up to 309 integer digits for IEEE double max (~1e308)
            ;; plus sign and decimal point; %g/%e stay compact regardless of magnitude.
            (int-part-reserve
             (if (or (fx= opt.flonum-repr (@char->int #\f))
                     (fx= opt.flonum-repr (@char->int #\F)))
               313 0))
            (buflen
             (fxmax
              (fx+ (or opt.width 6)
                   (if opt.precision (fx+ opt.precision 1) 6)
                   int-part-reserve
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
            (wr      (__print-float str-buf fmt-buf num))
            (buflen  (u8vector-length str-buf)))
       (cond
        ((fx<= wr 0)
         (buffer-cache.put! str-buf)
         (buffer-cache.put! fmt-buf)
         (raise-io-error format-flonum "failed to format float" error: wr))
        ((fx< wr buflen)
         (begin0 (writer.write str-buf 0 wr)
           (buffer-cache.put! str-buf)
           (buffer-cache.put! fmt-buf)))
        (else
         ;; Buffer too small — shouldn't happen with correct formula, but retry gracefully.
         (buffer-cache.put! str-buf)
         (let* ((str-buf2 (make-u8vector (fx+ wr 1)))
                (wr2      (__print-float str-buf2 fmt-buf num)))
           (buffer-cache.put! fmt-buf)
           (if (fx= wr2 wr)
             (writer.write str-buf2 0 wr)
             (raise-io-error format-flonum "float format size changed on retry"
                             expected: wr actual: wr2))))))))
  (else
   (syntax-error "unsupported target")))

;; C-style float output for explicit %g/%f/%e: delegate entirely to snprintf.
;; inf/nan get C representations ("inf", "-inf", "nan"), not Gerbil's "+inf.0" etc.
(def (write-flonum-c-style (writer : BufferedWriter) (num : :flonum) (ctx : WriteContext))
  => :fixnum
  (using (env (interface-instance-object ctx.methods) : FormatEnv)
    (writer.format-float num env.opt)))

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
   (lambda (self writer ctx)
     (writer.write-space)))
  (write-field-delimiter
   (lambda (self writer ctx)
     (writer.write-space)))
  (write-pair-delimiter
   (lambda (self writer ctx)
     (writer.write-dot)))
  (write-anchor-begin
   (lambda (self writer id ctx)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-fixnum-decimal id)
       (writer.write-equal)
       wr)))
  (write-anchor-end
   (lambda (self writer ctx)
     0))
  (write-reference
   (lambda (self writer id ctx)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-fixnum-decimal id)
       (writer.write-sharp)
       wr)))
  (write-object-begin
   (lambda (self writer ctx)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-lbrace)
       wr)))
  (write-object-end
   (lambda (self writer ctx)
     (writer.write-rbrace)))
  (write-list-begin
   (lambda (self writer ctx)
     (do-write (wr 0)
       (writer.write-lparen)
       wr)))
  (write-list-end
   (lambda (self writer ctx)
     (writer.write-rparen)))
  (write-class
   (lambda (self writer klass ctx)
     (do-format-style format-class self.opt
       (writer.write-symbol/quote klass.id)
       (writer.write-symbol/quote klass.name))))
  (write-slot
   (lambda (self writer slot ctx)
     (do-write (wr 0)
       (writer.write-symbol/quote slot)
       (writer.write-colon)
       wr)))
  (write-char
   (lambda (self writer char ctx)
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
   (lambda (self writer bool ctx)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-u8 (if bool (@char->int #\t) (@char->int #\f)))
       wr)))
  (write-special
   (lambda (self writer atom ctx)
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
   (lambda (self writer int ctx)
     (if (fixnum? int)
       (do-write-integer writer int self.opt write-fixnum)
       (do-write-integer writer int self.opt write-bignum))))
  (write-flonum
   (lambda (self writer num ctx)
     (cond
      ((##flfinite? num)
       (writer.write-string-utf8 (number->string num)))
      ((##flinfinite? num)
       (if (##flnegative? num)
         (writer.write (@string->utf8 "-inf.0"))
         (writer.write (@string->utf8 "+inf.0"))))
      (else                       ; nan, has no sign (always positive)
       (writer.write (@string->utf8 "+nan.0"))))))
  (write-ratnum
   (lambda (self writer num ctx)
     (do-write (wr 0)
       (ctx.methods.write-integer writer (##ratnum-numerator num) ctx)
       (writer.write-slash)
       (ctx.methods.write-integer writer (##ratnum-denominator num) ctx)
       wr)))
  (write-cpxnum
   (lambda (self writer num ctx)
     (let ((real (##cpxnum-real num))
           (imag (##cpxnum-imag num)))
       (do-write (wr 0)
         (if (zero? real)
           0
           (writer.serialize real ctx))
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
           (let (ctx (@format-env ctx (flags: (format-flag-set #\+ self.opt.flags))))

	     (do-write (wr 0)
	       (writer.serialize imag ctx)
	       (writer.write-u8 (@char->int #\i))
	       wr))))
	 wr))))
  (write-symbol
   (lambda (self writer sym ctx)
     (do-format-style format-symbol self.opt
       (writer.write-symbol/quote sym)
       (writer.write-symbol/raw sym))))
  (write-keyword
   (lambda (self writer key ctx)
     (do-format-style format-keyword self.opt
       (writer.write-keyword/quote key)
       (writer.write-keyword/raw key))))
  (write-string
   (lambda (self writer str ctx)
     (do-format-style format-string self.opt
       (writer.write-string/quote str)
       (writer.write-string-utf8 str))))
  (write-vector-begin
   (lambda (self writer v ctx)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-lparen)
       wr)))
  (write-vector-end
   (lambda (self writer ctx)
     (writer.write-rparen)))
  (write-hvector-begin
   (lambda (self writer v ctx)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write (hvector-prefix v))
       (writer.write-lparen)
       wr)))
  (write-hvector-end
   (lambda (self writer ctx)
     (writer.write-rparen)))
  (write-values-begin
   (lambda (self writer v ctx)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-lbracket)
       wr)))
  (write-values-end
   (lambda (self writer ctx)
     (writer.write-rbracket)))
  (write-box-begin
   (lambda (self writer ctx)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-ampersand)
       wr)))
  (write-box-end
   (lambda (self writer ctx)
     0))
  (write-hash-table
   (lambda (self writer ht ctx)
     (do-write (wr 0)
       (writer.write-sharp)
       (writer.write-lbrace)
       (writer.write-object-type (object-class ht) ctx)
       (writer.write-space)
       (writer.write-keyword/quote object:)
       (writer.write-space)
       (writer.write-sharp)
       (writer.write-char-utf8 #\:)
       (writer.write-lbrace)
       (writer.write-symbol/quote (##type-id (class-of (&interface-instance-object ht))))
       (writer.write-space)
       (writer.write-list (hash->list ht) ctx)
       (writer.write-rbrace)
       (writer.write-rbrace)
       wr))))
