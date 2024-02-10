;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc wire data representation

;;; --- DEPRECATED ----

(import :gerbil/gambit
        :std/foreign
        :std/error
        :std/net/bio
        :std/misc/list-builder)
(export #t)

(declare (not safe))

;; special object to force gambit serialization
(defstruct opaque (e bytes)
  constructor: :init! final: #t)

(defmethod {:init! opaque}
  (lambda (self e (bytes #f))
    (struct-instance-init! self e bytes)))

(def (opaque-value opq)
  (cond
   ((opaque-bytes opq)
    => (lambda (bytes)
         (let (obj (u8vector->object bytes))
           (set! (opaque-e opq) obj)
           (set! (opaque-bytes opq) #f)
           obj)))
   (else
    (opaque-e opq))))

(defstruct (xdr-error io-error) ())

(define (raise-xdr-error where what . irritants)
  (raise (make-xdr-error what irritants where)))

(def xdr-max-rope-length (expt 2 20))

(defrules check-max-rope-length! ()
  ((_ where len)
   (unless (##fx<= len xdr-max-rope-length)
     (raise-xdr-error where "maximum rope length exceeded" len))))

;; dispatch tables
(def +xdr-read+
  (make-vector 256 #f))
(def +xdr-write+
  (make-vector 256 #f))
(def +xdr-type-tag+
  (make-vector 4 false))
(def +xdr-subtype-tag+
  (make-vector 32 false))
(def +xdr-default-type-registry+
  (make-hash-table-eq))

(def current-xdr-type-registry
  (make-parameter +xdr-default-type-registry+))

(defstruct XDR (read write)
  final: #t
  )

;; generic i/o inteface
(def (xdr-read buf)
  (let (tag (bio-read-u8 buf))
    (cond
     ((eof-object? tag)
      (raise-xdr-error 'xdr-read "premature end of input" buf))
     ((##vector-ref +xdr-read+ tag)
      => (cut <> buf))
     (else
      (raise-xdr-error 'xdr-read "unknown object tag" tag)))))

(def (xdr-write obj buf)
  (cond
   ((xdr-object-tag obj)
    => (lambda (tag)
         (cond
          ((##vector-ref +xdr-write+ tag)
           => (lambda (writef)
                (bio-write-u8 tag buf)
                (writef obj buf)))
          (else
           (raise-xdr-error 'xdr-write "unknown object tag" tag)))))
   (else
    (raise-xdr-error 'xdr-write "cannot serialize object" obj))))

;; object tags
(def xdr-tag-void      0)
(def xdr-tag-null      1)
(def xdr-tag-false     2)
(def xdr-tag-true      3)
(def xdr-tag-eof       4)
(def xdr-tag-char      5)
(def xdr-tag-uint      6)
(def xdr-tag-sint      7)
(def xdr-tag-flonum    8)
(def xdr-tag-pair      9)
(def xdr-tag-vector   10)
(def xdr-tag-values   11)
(def xdr-tag-symbol   12)
(def xdr-tag-keyword  13)
(def xdr-tag-string   14)
(def xdr-tag-u8vector 15)
(def xdr-tag-hash     16)
(def xdr-tag-object   17)
(def xdr-tag-ratnum   18)
(def xdr-tag-cpxnum   19)
(def xdr-tag-time     20)
(def xdr-tag-opaque   64)

(def xdr-tag-hash-equal 0)
(def xdr-tag-hash-eq    1)
(def xdr-tag-hash-eqv   2)

(defrules defxdr-type-tag (=>)
  ((_ type tag)
   (vector-set! +xdr-type-tag+ type (lambda (obj) tag)))
  ((_ type => fun)
   (vector-set! +xdr-type-tag+ type fun)))

(defrules defxdr-type-tags ()
  ((_ (defn ...) ...)
   (begin (defxdr-type-tag defn ...) ...)))

(defrules defxdr-subtype-tag (=>)
  ((_ subtype tag)
   (vector-set! +xdr-subtype-tag+ subtype (lambda (obj) tag)))
  ((_ subtype => fun)
   (vector-set! +xdr-subtype-tag+ subtype fun)))

(defrules defxdr-subtype-tags ()
  ((_ (defn ...) ...)
   (begin (defxdr-subtype-tag defn ...) ...)))

(def (xdr-object-tag obj)
  ((##vector-ref +xdr-type-tag+ (##type obj)) obj))

(def (xdr-type-fixnum-tag obj)
  (if (##fx< obj 0)
    xdr-tag-sint
    xdr-tag-uint))

(def (xdr-type-subtyped-tag obj)
  ((##vector-ref +xdr-subtype-tag+ (##subtype obj)) obj))

(def (xdr-type-immediate-tag obj)
  (cond
   ((eq? obj #!void)  xdr-tag-void)
   ((eq? obj '())     xdr-tag-null)
   ((eq? obj #f)      xdr-tag-false)
   ((eq? obj #t)      xdr-tag-true)
   ((char? obj)       xdr-tag-char)
   ((eof-object? obj) xdr-tag-eof)
   (else #f)))

(def (xdr-subtype-structure-tag obj)
  (cond
   ((hash-get (current-xdr-type-registry) (##type-id (##structure-type obj)))
    xdr-tag-object)
   ((hash-table? obj)
    xdr-tag-hash)
   ((time? obj)
    xdr-tag-time)
   ((opaque? obj)
    xdr-tag-opaque)
   (else #f)))

(def (xdr-subtype-bigint-tag obj)
  (if (< obj 0)
    xdr-tag-sint
    xdr-tag-uint))

(extern namespace: #f
  macro-type-fixnum
  macro-type-mem1
  macro-type-special
  macro-type-mem2
  macro-subtype-vector
  macro-subtype-pair
  macro-subtype-structure
  macro-subtype-boxvalues
  macro-subtype-symbol
  macro-subtype-keyword
  macro-subtype-string
  macro-subtype-u8vector
  macro-subtype-flonum
  macro-subtype-ratnum
  macro-subtype-cpxnum
  macro-subtype-bignum)

(defxdr-type-tags
  ((macro-type-fixnum)  => xdr-type-fixnum-tag)
  ((macro-type-mem1)    => xdr-type-subtyped-tag)
  ((macro-type-special) => xdr-type-immediate-tag)
  ((macro-type-mem2)    xdr-tag-pair))

(defxdr-subtype-tags
  ((macro-subtype-vector)    xdr-tag-vector)
  ((macro-subtype-pair)      xdr-tag-pair)
  ((macro-subtype-structure) => xdr-subtype-structure-tag)
  ((macro-subtype-boxvalues) xdr-tag-values)
  ((macro-subtype-symbol)    xdr-tag-symbol)
  ((macro-subtype-keyword)   xdr-tag-keyword)
  ((macro-subtype-string)    xdr-tag-string)
  ((macro-subtype-u8vector)  xdr-tag-u8vector)
  ((macro-subtype-flonum)    xdr-tag-flonum)
  ((macro-subtype-bignum)    => xdr-subtype-bigint-tag)
  ((macro-subtype-ratnum)    xdr-tag-ratnum)
  ((macro-subtype-cpxnum)    xdr-tag-cpxnum))

;; i/o operators
(def (xdr-read-void buf)
  #!void)
(def xdr-write-void void)

(def (xdr-read-null buf)
  '())
(def xdr-write-null void)

(def (xdr-read-false buf)
  #f)
(def xdr-write-false void)

(def (xdr-read-true buf)
  #t)
(def xdr-write-true void)

(def (xdr-read-eof buf)
  (eof-object))
(def xdr-write-eof void)

(def (xdr-read-char buf)
  (integer->char (xdr-read-uint buf)))

(def (xdr-write-char obj buf)
  (xdr-write-uint (##char->integer obj) buf))

(def (xdr-read-flonum buf)
  ;; TODO read directly from buffer
  (let* ((bytes (make-u8vector 8))
         (rd (bio-read-subu8vector bytes 0 8 buf)))
    (if (##fx= rd 8)
      (xdr-bytes->float bytes)
      (raise-xdr-error 'xdr-read-flonum "premature end of input" buf))))

(def (xdr-write-flonum obj buf)
  ;; TODO write directly to buffer
  (let (bytes (make-u8vector 8))
    (xdr-float->bytes! obj bytes)
    (bio-write-subu8vector bytes 0 8 buf)))

(def (xdr-read-pair buf)
  (let* ((hd (xdr-read buf))
         (tl (xdr-read buf)))
    (cons hd tl)))

(def (xdr-write-pair obj buf)
  (xdr-write (##car obj) buf)
  (xdr-write (##cdr obj) buf))

(def (xdr-read-vector buf)
  (let* ((len (xdr-read-uint buf))
         (_ (check-max-rope-length! 'xdr-read-vector len))
         (obj (make-vector len)))
    (let lp ((i 0))
      (if (##fx< i len)
        (begin
          (##vector-set! obj i (xdr-read buf))
          (lp (##fx+ i 1)))
        obj))))

(def (xdr-write-vector obj buf)
  (let (len (##vector-length obj))
    (xdr-write-uint len buf)
    (let lp ((i 0))
      (when (##fx< i len)
        (xdr-write (##vector-ref obj i) buf)
        (lp (##fx+ i 1))))))

(def (xdr-read-values buf)
  (let (obj (xdr-read-vector buf))
    (##subtype-set! obj (macro-subtype-boxvalues))
    obj))

(def xdr-write-values
  xdr-write-vector)

(def (xdr-read-symbol buf)
  (##string->symbol
   (xdr-read-string buf)))

(def (xdr-write-symbol obj buf)
  (xdr-write-string (##symbol->string obj) buf))

(def (xdr-read-keyword buf)
  (##string->keyword
   (xdr-read-string buf)))

(def (xdr-write-keyword obj buf)
  (xdr-write-string (##keyword->string obj) buf))

(def (xdr-read-string buf)
  (let* ((len (xdr-read-uint buf))
         (_ (check-max-rope-length! 'xdr-read-string len))
         (str (make-string len)))
    (let lp ((i 0))
      (if (##fx< i len)
        (begin
          (##string-set! str i (xdr-read-char buf))
          (lp (##fx+ i 1)))
        str))))

(def (xdr-write-string obj buf)
  (let (len (##string-length obj))
    (xdr-write-uint len buf)
    (let lp ((i 0))
      (when (##fx< i len)
        (xdr-write-char (##string-ref obj i) buf)
        (lp (##fx+ i 1))))))

(def (xdr-read-u8vector buf)
  (let* ((len (xdr-read-uint buf))
         (_ (check-max-rope-length! 'xdr-read-u8vector len))
         (bytes (make-u8vector len)))
    (bio-read-bytes bytes buf)
    bytes))

(def (xdr-write-u8vector obj buf)
  (xdr-write-uint (##u8vector-length obj) buf)
  (bio-write-bytes obj buf))

(def (xdr-read-hash buf)
  (let* ((htype (bio-read-u8 buf))
         (makef (cond
                 ((##fx= htype xdr-tag-hash-equal)
                  list->hash-table)
                 ((##fx= htype xdr-tag-hash-eq)
                  list->hash-table-eq)
                 ((##fx= htype xdr-tag-hash-eqv)
                  list->hash-table-eqv)
                 (else
                  (raise-xdr-error 'xdr-read-hash "unknown hash table type" htype))))
         (lst (xdr-read-inline-list buf)))
    (makef lst)))

(def (xdr-write-hash obj buf)
  (let (testf (##vector-ref obj 2))
    (cond
     ((or (not testf)
          (eq? testf eq?)
          (eq? testf ##eq?))
      (bio-write-u8 xdr-tag-hash-eq buf))
     ((or (eq? testf eqv?)
          (eq? testf ##eqv?))
      (bio-write-u8 xdr-tag-hash-eqv buf))
     ((or (eq? testf equal?)
          (eq? testf ##equal?))
      (bio-write-u8 xdr-tag-hash-equal buf))
     (else
      (raise-xdr-error 'xdr-wrie-hash "unknown hash test function" testf)))
    (xdr-write-inline-list (hash->list obj) buf)))

(def (xdr-read-object buf)
  (let (tid (xdr-read-symbol buf))
    (cond
     ((hash-get (current-xdr-type-registry) tid)
      => (lambda (xdr)
           ((&XDR-read xdr) buf)))
     (else
      (raise-xdr-error 'xdr-read-object "unknown type id" tid)))))

(def (xdr-write-object obj buf)
  (let (tid (##type-id (##structure-type obj)))
    (cond
     ((hash-get (current-xdr-type-registry) tid)
      => (lambda (xdr)
           (xdr-write-symbol tid buf)
           ((&XDR-write xdr) obj buf)))
     (else
      (raise-xdr-error 'xdr-write-object "unknown type id" tid)))))

(def (xdr-read-opaque buf)
  (let (bytes (xdr-read-u8vector buf))
    (make-opaque #f bytes)))

(def (xdr-write-opaque obj buf)
  (let (bytes
        (or (opaque-bytes obj)
            (object->u8vector (opaque-e obj))))
    (xdr-write-u8vector bytes buf)))

(def (xdr-read-uint buf)
  (let (bits (bio-read-u8 buf))
    (if (##fxzero? (##fxand bits #x80))
      bits
      (let lp ((val (##fxand bits #x7f)) (shift 7))
        (let (bits (bio-read-u8 buf))
          (if (##fxzero? (##fxand bits #x80))
            (cond
             ((##fxarithmetic-shift-left? bits shift)
              => (lambda (bits)
                   (##fxior bits val)))
             (else
              (let (bits (arithmetic-shift bits shift))
                (bitwise-ior bits val))))
            (let (bits (##fxand bits #x7f))
              (cond
               ((##fxarithmetic-shift-left? bits shift)
                => (lambda (bits)
                     (lp (##fxior bits val) (##fx+ shift 7))))
               (else
                (let (bits (arithmetic-shift bits shift))
                  (lp (bitwise-ior bits val) (##fx+ shift 7))))))))))))

(def (xdr-write-uint obj buf)
  (if (fixnum? obj)
    (let lp ((val obj))
      (if (##fx> val #x7f)
        (let (bits (##fxior (##fxand val #x7f) #x80))
          (bio-write-u8 bits buf)
          (lp (##fxarithmetic-shift-right val 7)))
        (bio-write-u8 val buf)))
    (let (bits (##fxior (bitwise-and obj #x7f) #x80))
      (bio-write-u8 bits buf)
      (xdr-write-uint (arithmetic-shift obj -7) buf))))

(def (xdr-read-sint buf)
  (- (xdr-read-uint buf)))

(def (xdr-write-sint obj buf)
  (xdr-write-uint (- obj) buf))

(def (xdr-read-ratnum buf)
  (let* ((num (xdr-read buf))
         (den (xdr-read buf)))
    (if (and (integer? num) (exact? num)
             (integer? den) (exact? den))
      (##ratnum-make num den)
      (raise-xdr-error 'xdr-read-ratnum "malformed rational number" num den))))

(def (xdr-write-ratnum obj buf)
  (xdr-write (##ratnum-numerator obj) buf)
  (xdr-write (##ratnum-denominator obj) buf))

(def (xdr-read-cpxnum buf)
  (let* ((real (xdr-read buf))
         (imag (xdr-read buf)))
    (if (and (real? real) (real? imag))
      (##cpxnum-make real imag)
      (raise-xdr-error 'xdr-read-cpxnum "malformed complex number" real imag))))

(def (xdr-write-cpxnum obj buf)
  (xdr-write (##cpxnum-real obj) buf)
  (xdr-write (##cpxnum-imag obj) buf))

(def (xdr-read-time buf)
  (seconds->time (xdr-read-flonum buf)))

(def (xdr-write-time tm buf)
  (xdr-write-flonum (time->seconds tm) buf))

(def (xdr-read-inline-list buf)
  (with-list-builder (push!)
    (let lp ()
      (let (next (xdr-read buf))
        (unless (null? next)
          (push! next)
          (lp))))))

(def (xdr-write-inline-list lst buf)
  (let lp ((rest lst))
    (if (pair? rest)
      (begin
        (xdr-write (##car rest) buf)
        (lp (##cdr rest)))
      (bio-write-u8 xdr-tag-null buf))))

;; tag dispatch
(defrules defxdr-io ()
  ((_ (tag readf writef) ...)
   (begin
     (vector-set! +xdr-read+ tag readf) ...
     (vector-set! +xdr-write+ tag writef) ...)))

(defxdr-io
  (xdr-tag-void     xdr-read-void     xdr-write-void)
  (xdr-tag-null     xdr-read-null     xdr-write-null)
  (xdr-tag-false    xdr-read-false    xdr-write-false)
  (xdr-tag-true     xdr-read-true     xdr-write-true)
  (xdr-tag-eof      xdr-read-eof      xdr-write-eof)
  (xdr-tag-char     xdr-read-char     xdr-write-char)
  (xdr-tag-uint     xdr-read-uint     xdr-write-uint)
  (xdr-tag-sint     xdr-read-sint     xdr-write-sint)
  (xdr-tag-flonum   xdr-read-flonum   xdr-write-flonum)
  (xdr-tag-pair     xdr-read-pair     xdr-write-pair)
  (xdr-tag-vector   xdr-read-vector   xdr-write-vector)
  (xdr-tag-values   xdr-read-values   xdr-write-values)
  (xdr-tag-symbol   xdr-read-symbol   xdr-write-symbol)
  (xdr-tag-keyword  xdr-read-keyword  xdr-write-keyword)
  (xdr-tag-string   xdr-read-string   xdr-write-string)
  (xdr-tag-u8vector xdr-read-u8vector xdr-write-u8vector)
  (xdr-tag-hash     xdr-read-hash     xdr-write-hash)
  (xdr-tag-object   xdr-read-object   xdr-write-object)
  (xdr-tag-ratnum   xdr-read-ratnum   xdr-write-ratnum)
  (xdr-tag-cpxnum   xdr-read-cpxnum   xdr-write-cpxnum)
  (xdr-tag-time     xdr-read-time     xdr-write-time)
  (xdr-tag-opaque   xdr-read-opaque   xdr-write-opaque))

;; struct xdr
;; FIXME
(extern namespace: #f type-descriptor-fields)

(def (xdr-read-struct klass buf)
  (let (fields (xdr-read-uint buf))
    (if (##fx= fields (type-descriptor-fields klass))
      (let (obj (make-object klass (fx1+ fields)))
        (let lp ((i 0))
          (if (##fx< i fields)
            (let (i+1 (##fx+ i 1))
              (##vector-set! obj i+1 (xdr-read buf))
              (lp i+1))
            obj)))
      (raise-xdr-error 'xdr-read-struct "type descriptor field mismatch" klass fields))))

(def (xdr-write-struct obj buf)
  (let* ((len (##vector-length obj))
         (fields (##fx- len 1)))
    (xdr-write-uint fields buf)
    (let lp ((i 1))
      (when (##fx< i len)
        (xdr-write (##vector-ref obj i) buf)
        (lp (##fx+ i 1))))))

;; flonum marshalling
(begin-ffi (xdr-float->bytes! xdr-bytes->float)
  (c-declare #<<END-C
static double ffi_actor13_xdr_read_float_bytes (___SCMOBJ bytes)
{
 return *(double*)(U8_DATA (bytes));
}

static int ffi_actor13_xdr_write_float_bytes (double val, ___SCMOBJ bytes)
{
 *(double*)(U8_DATA (bytes)) = val;
  return 0;
}
END-C
)

  (define-c-lambda std/actor-v13/xdr#xdr-float->bytes!
    (double scheme-object) int
    "ffi_actor13_xdr_write_float_bytes")

  (define-c-lambda std/actor-v13/xdr#xdr-bytes->float
    (scheme-object) double
    "ffi_actor13_xdr_read_float_bytes"))
