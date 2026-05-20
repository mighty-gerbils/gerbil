;;; -*- Gerbil -*-
;;; © vyzo
;;; object writer
(import :std/error
        :std/interface
        :std/io/interface
        :std/io/bio/api
        :std/io/bio/cache
        :std/serde/scan
	:std/serde/scanner
        :std/serde/serialize
        :std/iter
        ./env
        ./ascii
        ./ioutil
        ./io)
(export #t)

(cond-expand
  (,(compilation-target? C)
   (import :std/ffi)
   (C-ffi-macrology)
   (C-include "<sys/types.h>"
              "<stdio.h>"))
  (else
   (syntax-error "unsupoorted target")))

;;; base
(defwriter-ext (format-object-type writer (klass : class) (env : FormatEnv))
  (do-format-style format-object-type env.opt
    (do-write (wr 0)
      (writer.write-lparen)
      (writer.write-symbol/quote klass.name)
      (writer.write-space)
      (writer.write-symbol/quote klass.id)
      (writer.write-rparen)
      wr)
    (writer.write-symbol/quote klass.name)))

(defwriter-ext (format-object-begin writer (klass : class) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-lbrace)
    (writer.format-object-type klass env)
    wr))

(defwriter-ext (format-object-end writer (env : FormatEnv))
  (writer.write-rbrace))

;; standard classes
(defobject-writer class (format-class writer klass env)
  (do-write (wr 0)
    (writer.format-object-begin (class-type klass) env)
    (writer.write-space)
    (writer.format-object-type klass env)
    (writer.format-object-end env)
    wr))

;; standard objects
(defwriter-ext (format-field writer (slot : :symbol) obj (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-space)
    (writer.write-symbol/quote slot)
    (writer.write-colon)
    (writer.write-space)
    (writer.format obj env)
    wr))

(defwriter-ext (format-slot writer (obj : :object) (slot : :symbol) (offset : :fixnum) (env : FormatEnv))
  (writer.format-field slot (unchecked-field-ref obj offset) env))

(defwriter-ext (format-object-slots writer obj (klass : class) (env : FormatEnv))
  (let (len (##structure-length obj))
    (if (fx> len 1)
      (cond
       ((fx= env.opt.style FORMAT-DEBUG)
        (let (slots (class-type-field-list klass))
          (let loop ((rest slots) (offset 1 :- :fixnum) (wr 0 :- :fixnum))
            => :fixnum
            (match rest
              ([slot . rest]
               (using (slot :- :symbol)
                 (do-write (wr wr)
                   (writer.format-slot obj slot offset env)
                   (loop rest (fx+ offset 1) wr))))
              (else wr)))))
       ((class-type-printable-slots klass)
        ;; print spec: [[slot . offset] ...]
        => (lambda (lst)
             (let loop ((rest lst) (wr 0 :- :fixnum))
               => :fixnum
               (match rest
                 ([print-spec . rest]
                  (using ((spec   print-spec :- :pair)
                          (slot   (car spec) :- :symbol)
                          (offset (cdr spec) :- :fixnum))
                    (do-write (wr wr)
                      (writer.format-slot obj slot offset env)
                      (loop rest wr))))
                 (else wr)))))
       (else 0))
      0)))

(defwriter-ext (format-object-raw writer obj (klass : class) (env : FormatEnv))
  (do-write (wr 0)
    (writer.format-object-begin klass env)
    (writer.format-object-slots obj klass env)
    (writer.format-object-end env)
    wr))

(defobject-writer :object (format-object writer obj env)
  (let (klass (object-class obj))
    (@serialize obj env.scan
		(lambda (obj) => :fixnum
		   (writer.format-object-raw obj klass env))
		(lambda (obj id) => :fixnum
		   (do-write (wr 0)
		     (writer.format-anchor-begin id env)
		     (writer.format-object-raw obj klass env)
		     wr))
		(lambda (id) => :fixnum
		     (writer.format-reference id env)))))

(defobject-writer interface-instance (format-interface-instance writer inst env)
  (do-write (wr 0)
    (writer.format-object-begin (object-class inst) env)
    (writer.write-space)
    (writer.format inst.object env)
    (writer.format-object-end env)))

(defobject-writer HashTable (format-hash-table writer ht env)
  (do-write (wr 0)
    (writer.format-object-begin (object-class ht) env)
    (writer.write-space)
    (writer.format-object-begin (class-of (interface-instance-object ht)) env)
    (writer.write-space)
    (writer.write-lparen)
    (let (wr-body 0)
      (ht.for-each
       (lambda (k v)
         (do-write (wr 0)
	   (if (fx> wr-body 0)
             (writer.write-space)
	     0)
           (writer.write-lparen)
           (writer.format k env)
           (writer.write-space)
           (writer.write-dot)
           (writer.write-space)
           (writer.format v env)
           (writer.write-rparen)
           (set! wr-body (fx+ wr-body wr)))))
      wr-body)
    (writer.write-rparen)
    (writer.format-object-end env)
    (writer.format-object-end env)
    wr))

;; builtin objects
(defobject-writer :builtin (format-builtin writer obj env)
  (using (klass (class-of obj) :- class)
    (do-write (wr 0)
      (writer.format-object-begin klass env)
      (writer.format-object-end env)
      wr)))

(defobject-writer :char (format-char writer char env)
  (do-format-style format-char env.opt
    (do-write (wr 0)
      (writer.write-sharp)
      (writer.write-backslash)
      (let (aint (char->integer char))
        (try-ascii-special-char aint
          (lambda ((asci :- ascii-special-char-info)) => :fixnum
             (if asci.char-esc?
               (do-format-char-ascii-names format-char env.opt
                 (if asci.char-scm-name
                   (writer.write-symbol asci.char-scm-name)
                   (writer.write-char-utf8 char))
                 (if asci.char-std-name
                   (writer.write-symbol asci.char-std-name)
                   (writer.write-char-utf8 char)))
               (writer.write-char-utf8 char)))
          (writer.write-char-utf8 char)))
      wr)
    (writer.write-char-utf8 char)))

(defobject-writer :true (format-true writer atom env)
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-u8 (@char->int #\t))
    wr))

(defobject-writer :false (format-false writer atom env)
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-u8 (@char->int #\f))
    wr))

(defsyntax-case do-write-special ()
  ((_ writer sym)
   (with-identifiers ((writer.write-sharp            #'writer #'writer ".write-sharp")
                      (writer.write-bang             #'writer #'writer ".write-bang")
                      (writer.write-interned-symbol  #'writer #'writer ".write-interned-symbol"))

     #'(do-write (wr 0)
         (writer.write-sharp)
         (writer.write-bang)
         (writer.write-interned-symbol 'sym)
         wr))))

(defsyntax-case defspecial-object-writer ()
  ((_ klass name)
   (with-identifiers ((writer '$writer)
                      (:klass    #'klass ":" #'klass)
                      (format-it #'klass "format-special-" #'name))
     #'(defobject-writer :klass (format-it writer atom env)
         (do-write-special writer name))))
  ((_ klass)
   #'(defspecial-object-writer klass klass)))

(defspecial-object-writer special unknown)
(defspecial-object-writer eof)
(defspecial-object-writer void)
(defspecial-object-writer unbound)
(defspecial-object-writer unbound2)
(defspecial-object-writer deleted)
(defspecial-object-writer absent)
(defspecial-object-writer dssl-optional optional)
(defspecial-object-writer dssl-rest rest)
(defspecial-object-writer dssl-key key)

(defsyntax-case do-write-integer ()
  ((_ writer int env write-method)
   (with-identifiers ((env.opt                  #'env #'env ".opt")
                      (env.opt.flags            #'env #'env ".opt.flags")
                      (env.opt.width            #'env #'env ".opt.width")
                      (env.opt.integer-prefix   #'env #'env ".opt.integer-prefix")
                      (env.opt.integer-alphabet #'env #'env ".opt.integer-alphabet")
                      (env.opt.integer-gits     #'env #'env ".opt.integer-gits")
                      (writer.write-minus       #'writer #'writer ".write-minus")
                      (writer.write-sharp       #'writer #'writer ".write-sharp")
                      (writer.write-zeros       #'writer #'writer ".write-zeros")
                      (writer.write-spaces      #'writer #'writer ".write-spaces")
                      (writer.write-u8          #'writer #'writer ".write-u8")
                      (writer.write-method      #'writer #'writer "." #'write-method))
     #'(let-syntax ((getflag
                     (syntax-rules ()
                       ((_ c) (and env.opt.flags (memq c env.opt.flags))))))
         (let ((left-align  (getflag #\-))
               (zero-pad    (getflag #\0))
               (always-sign (and (getflag #\+) #t)))

           (defrule (write-prefix)
             (do-write (wr 0)
               (writer.write-sharp)
               (writer.write-u8 env.opt.integer-prefix)
               wr))

           (defrule (write-int int)
             (writer.write-method int
                                  env.opt.integer-alphabet
                                  env.opt.integer-gits
                                  always-sign))

           (defrule (write-int-pad int pad)
             (do-write (wr 0)
               (writer.write-zeros pad)
               (write-int int)
               wr))

           (defrule (write-int-negative-pad int pad)
             (do-write (wr 0)
               (writer.write-minus)
               (writer.write-zeros pad)
               (write-int (- int))
               wr))

           (defrule (do-format-int int expr)
             (do-format-style write-method env.opt
               (if env.opt.integer-prefix
                 (do-write (wr 0)
                   (write-prefix)
                   expr
                   wr)
                 expr)
               expr))

           (defrule (format-int int)
             (do-format-int int (write-int int)))

           (defrule (count-digits)
             (format-integer-length int
                                    env.opt.integer-alphabet
                                    env.opt.integer-gits
                                    always-sign))
           (if env.opt.width
             (let* ((digits (count-digits))
                    (digits (if env.opt.integer-prefix
                              (do-format-style write-method env.opt
                                (fx+ digits 2)
                                digits)
                              digits)))
               (if (fx< digits env.opt.width)
                 (let (pad (fx- env.opt.width digits))
                   (cond
                    (zero-pad
                     (if (negative? int)
                       (do-format-int int (write-int-negative-pad int pad))
                       (do-format-int int (write-int-pad int pad))))
                    (left-align
                     (format-int int))
                    (else
                     (do-write (wr 0)
                       (writer.write-spaces pad)
                       (format-int int)
                       wr))))
                 (format-int int)))
             (format-int int)))))))

(def (format-integer-length (int : :integer) (alphabet : :u8vector) (gits : :fixnum) (sign? : :fixnum))
  => :fixnum
  (let* ((base  (u8vector-length alphabet))
         (width (exact (ceiling (log int base))))
         (width
          (if (fx> gits 1)
            (let (lead  (fx% width gits))
              (if (fx> lead 0)
                (fx+ width 1)
                width))
            width))
         (width
          (if (or sign? (negative? int))
            (fx+ width 1)
            width)))
    width))

(defobject-writer :bignum (format-bignum writer int env)
  (do-write-integer writer int env write-bignum))

(defobject-writer :fixnum (format-fixnum writer int env)
  (do-write-integer writer int env write-fixnum))

(defobject-writer :integer (format-integer writer num env)
  (if (fixnum? num)
    (writer.format-fixnum num env)
    (writer.format-bignum num env)))

(defobject-writer :ratnum (format-ratnum writer num env)
  (do-write (wr 0)
    (writer.format (##ratnum-numerator num) env)
    (writer.write-slash)
    (writer.format (##ratnum-denominator num) env)
    wr))

(cond-expand
  (,(compilation-target? C)
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
     "snprintf((char*)___arg1, ___U8VECTORSIZE(___ARG1), (char*) ___arg2, ___arg3)"))
  (else
   (syntax-error "unsupported target")))

(defwriter-ext (format-float writer (num : :flonum) (env : FormatEnv))
  (cond-expand
    (,(compilation-target? C)
     (let* ((fmt-buf (buffer-cache-get-float-format-buffer env.opt num))
            (str-buf (buffer-cache-get-float-output-buffer env.opt))
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
           (raise-io-error format-flonum "failed to format float" error: wr)))))
    (else
     ;; TODO we should write an efficient implementation of this, following
     ;;      feeley's in gambit implementation to avoid the intermediate string
     ;;      allocation and follow natively the precision.
     ;;      it is ok for now, we can revisit if it becomes a problem
     ;;      in production
     (syntax-error "unsupported compilation target"))))

(defobject-writer :flonum (format-flonum writer num env)
  (cond
   ((##flfinite? num)
    ;; not nan or infinity
    (writer.format-float num env))
   ((##flinfinite? num)
    (if (##flnegative? num)
      (writer.write (@string->utf8 "-inf.0"))
      (writer.write (@string->utf8 "+inf.0"))))
   (else ; nan, has no sign (always positive)
    (writer.write (@string->utf8 "+nan.0")))))

(defobject-writer :cpxnum (format-cpxnum writer num env)
  (let ((real (##cpxnum-real num))
	(imag (##cpxnum-imag num)))
    (do-write (wr 0)
      (if (zero? real)
        0
        (writer.format real env))
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
	(let (env (@format-env env (flags: (format-flag-set #\+ env.opt.flags))))
	      
	  (do-write (wr 0)
	    (writer.format imag env)
	    (writer.write-u8 (@char->int #\i))
	    wr))))
      wr)))

(defobject-writer :symbol (format-symbol writer sym env)
  (do-format-style format-symbol env.opt
		   (writer.write-symbol/quote sym)
		   (writer.write-symbol sym)))

(defobject-writer :keyword (format-keyword writer key env)
  (do-format-style format-keyword env.opt
    (writer.write-keyword/quote key)
    (writer.write-keyword key)))

(defsyntax-case do-inner-format ()
  ((_ (writer env) body rest ...)
   (with-syntax ((do-format           (syntax-local-introduce 'do-format))
                 (do-format-raw       (syntax-local-introduce 'do-format-raw))
                 (do-format-anchor    (syntax-local-introduce 'do-format-anchor))
                 (do-format-reference (syntax-local-introduce 'do-format-reference)))
     (with-identifiers ((writer.write-space      #'writer #'writer ".write-space")
                        (writer.format           #'writer #'writer ".format")
                        (writer.format-raw       #'writer #'writer ".format-raw")
                        (writer.format-anchor    #'writer #'writer ".format-anchor")
                        (writer.format-reference #'writer #'writer ".format-reference"))
       #'(let ()
           (defrule (do-format obj wr)
             (do-write (wr wr)
               (writer.write-space)
               (writer.format obj env)
               wr))

           (defrule (do-format-raw obj wr)
             (do-write (wr wr)
               (writer.write-space)
               (writer.format-raw obj env)
               wr))

           (defrule (do-format-anchor obj id wr)
             (do-write (wr wr)
               (writer.write-space)
               (writer.format-anchor obj id env)
               wr))

           (defrule (do-format-reference id wr)
             (do-write (wr wr)
               (writer.write-space)
               (writer.format-reference id env)
               wr))

           body rest ...)))))

(defobject-writer :list (format-list writer lst env)
  (do-inner-format (writer env)
    (def (loop rest (wr :- :fixnum))
      => :fixnum

      (defrule (do-loop obj)
        (with ([hd . tl] obj)
          (do-write (wr wr)
            (do-format-raw hd wr)
            (loop tl wr))))

      (defrule (do-tail wr continue)
        (do-write (wr wr)
          (writer.write-space)
          (writer.write-dot)
          continue
          (writer.write-rparen)
          wr))

      (cond
       ((pair? rest)
        (@serialize rest env.scan
                    (lambda (obj) => :fixnum
                       (do-loop obj))
                    (lambda (obj id) => :fixnum
                       (do-tail wr
                         (do-format-anchor obj id wr)))
                    (lambda (id) => :fixnum
                       (do-tail wr
                         (do-format-reference id wr)))))
       ((null? rest)
        (do-write (wr wr)
          (writer.write-rparen)
          wr))
       (else
        (do-tail wr
          (@serialize rest env.scan
                      (lambda (obj) => :fixnum
                         (do-format-raw obj wr))
                      (lambda (obj id) => :fixnum
                         (do-format-anchor obj id wr))
                      (lambda (id) => :fixnum
                         (do-format-reference id wr)))))))

    (if (pair? lst)
      (@serialize lst env.scan
                  (lambda (obj) => :fixnum
		     (do-write (wr 0)
		       (writer.write-lparen)
		       (writer.format-raw (car obj) env)
		       (loop (cdr obj) 0)
		       wr))
                  (lambda (obj id) => :fixnum
		     (do-write (wr 0)
		       (writer.format-anchor-begin id env)
		       (writer.write-lparen)
		       (writer.format-raw (car obj) env)
		       (loop (cdr obj) 0)
		       wr))
                  (lambda (id) => :fixnum
		     (writer.format-reference id env)))
      (do-write (wr 0)
	(writer.write-lparen)
	(writer.write-rparen)
	wr))))

(defobject-writer :string (format-string writer str env)
  (do-format-style format-string env.opt
    (writer.write-string/quote str)
    (writer.write-string-utf8 str)))

(defsyntax-case do-write-vector ()
  ((_ writer v env prefix left right v-length v-ref type format-method)
   (with-identifiers ((writer.write         #'writer #'writer ".write")
                      (writer.write-space   #'writer #'writer ".write-space")
                      (writer.write-sharp   #'writer #'writer ".write-sharp")
                      (writer.write-left    #'writer #'writer ".write-" #'left)
                      (writer.write-right   #'writer #'writer ".write-" #'right)
                      (writer.format-method #'writer #'writer "." #'format-method))
     (with-syntax ((write-prefix (if (stx-e #'prefix)
                                   #'(writer.write prefix)
                                   0)))
       #'(do-write (wr 0)
           (writer.write-sharp)
           write-prefix
           (writer.write-left)
           (let* ((len   (:- (v-length v) :fixnum))
                  (len-1 (fx- len 1)))
             (let loop ((i 0) (wr wr)) => :fixnum
                  (cond
                   ((fx< i len-1)
                    (do-write (wr wr)
                      (writer.format-method (:- (v-ref v i) type) env)
                      (writer.write-space)
                      (loop (fx+ i 1) wr)))
                   ((fx< i len)
                    (do-write (wr wr)
                      (writer.format-method (:- (v-ref v i) type) env)
                      wr))
                   (else 0))))
           (writer.write-right)
           wr)))))

(defobject-writer :vector (format-vector writer v env)
  (do-write-vector writer v env
                   #f
                   lparen
                   rparen
                   ##vector-length
                   ##vector-ref
                   :t
                   format))

(defobject-writer :u8vector (format-u8vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "u8")
                   lparen
                   rparen
                   ##u8vector-length
                   ##u8vector-ref
                   :fixnum
                   format-fixnum))

(defobject-writer :u16vector (format-u16vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "u16")
                   lparen
                   rparen
                   ##u16vector-length
                   ##u16vector-ref
                   :fixnum
                   format-fixnum))

(defobject-writer :u32vector (format-u32vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "u32")
                   lparen
                   rparen
                   ##u32vector-length
                   ##u32vector-ref
                   :integer
                   format-integer))

(defobject-writer :u64vector (format-u64vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "u64")
                   lparen
                   rparen
                   ##u64vector-length
                   ##u64vector-ref
                   :integer
                   format-integer))

(defobject-writer :s8vector (format-s8vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "s8")
                   lparen
                   rparen
                   ##s8vector-length
                   ##s8vector-ref
                   :fixnum
                   format-fixnum))

(defobject-writer :s16vector (format-s16vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "s16")
                   lparen
                   rparen
                   ##s16vector-length
                   ##s16vector-ref
                   :fixnum
                   format-fixnum))

(defobject-writer :s32vector (format-s32vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "s32")
                   lparen
                   rparen
                   ##s32vector-length
                   ##s32vector-ref
                   :integer
                   format-integer))

(defobject-writer :s64vector (format-s64vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "s64")
                   lparen
                   rparen
                   ##s64vector-length
                   ##s64vector-ref
                   :integer
                   format-integer))

(defobject-writer :f32vector (format-f32vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "f32")
                   lparen
                   rparen
                   ##f32vector-length
                   ##f32vector-ref
                   :flonum
                   format-flonum))

(defobject-writer :f64vector (format-f64vector writer v env)
  (do-write-vector writer v env
                   (@string->utf8 "f64")
                   lparen
                   rparen
                   ##f64vector-length
                   ##f64vector-ref
                   :flonum
                   format-flonum))

(defobject-writer :values (format-values writer v env)
  (do-write-vector writer v env
                   #f
                   lbracket
                   rbracket
                   ##values-length
                   ##values-ref
                   :t
                   format))

(defobject-writer :box (format-box writer v env)
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-ampersand)
    (writer.format (unbox v) env)
    wr))

(defobject-writer :continuation (format-continuation writer cont env)
  (let ((all-frames?
         (do-format-style format-contination env.opt
           #f #f #t))
        (max-frames (or env.opt.max-elements ##max-fixnum)))
    (do-write (wr 0)
      (writer.format-object-begin continuation::t env)
      (writer.write-space)
      (writer.write-lparen)
      (let loop ((cont  (##continuation-first-frame cont all-frames?))
                 (last   #f)
                 (depth  0)
                 (space? #f)
                 (wr     0 :- :fixnum))
        => :fixnum
        (cond
         ((and cont (##fx< depth max-frames))
          (let (creator (##continuation-creator cont))
            (if (and creator (eq? last creator))
              (loop (##continuation-next-frame cont all-frames?)
                    last
                    (fx+ depth 1)
                    space?
                    wr)
              (do-write (wr wr)
                (if space?
                  (writer.write-space)
                  0)
                (cond
                 ((and creator (##procedure-name creator))
                  => (lambda (name)
                       => :fixnum
                       (writer.format name env)))
                 (else
                  (writer.write-interned-symbol '???)))
              (loop (##continuation-next-frame cont all-frames?)
                    creator
                    (fx+ depth 1)
                    #t
                    wr)))))
         (cont
          (do-write (wr wr)
            (if space?
              (writer.write-space)
              0)
            (writer.write-interned-symbol '...)
            wr))
         (else wr)))
      (writer.write-rparen)
      wr)))

(defobject-writer :promise (format-promise writer p env)
  (writer.format (force p) env))

;; (defobject-writer :weak (format-weak writer p env)
;;   XXX)

;; (defobject-writer :return (format-return writer p env)
;;   XXX)

(defobject-writer :procedure (format-procedure writer proc env)
  (do-write (wr 0)
    (writer.format-object-begin procedure::t env)
    (writer.write-space)
    (writer.format (##procedure-name proc) env)
    (writer.format-object-end env)
    wr))

(defobject-writer :foreign (format-foreign writer obj env)
  (do-write (wr 0)
    (writer.format-object-begin foreign::t env)
    (writer.write-space)
    (writer.format (##foreign-tags obj) env)
    (writer.format-object-end env)
    wr))

(defobject-writer :structure (format-builtin-structure writer obj env)
  (let (klass (class-of obj))
    (@serialize obj env.scan
		(lambda (obj) => :fixnum
		   (writer.format-object-raw obj klass env))
		(lambda (obj id) => :fixnum
		   (do-write (wr 0)
		     (writer.format-anchor-begin id env)
		     (writer.format-object-raw obj klass env)
		     wr))
		(lambda (id) => :fixnum
		     (writer.format-reference id env)))))


