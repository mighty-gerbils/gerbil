;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc wire data representation
package: std/actor

(import :gerbil/gambit/hvectors
        :gerbil/gambit/ports
        :gerbil/gambit/bits
        :gerbil/gambit/fixnum
        )
(export #t)

;; _gambit#.scm
(extern namespace: #f
  macro-table-test)

(begin-foreign
  (c-declare #<<END-C
#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))

static double ffi_read_float_bytes (___SCMOBJ bytes)
{
 return *(double*)(U8_DATA (bytes));
}

static int ffi_write_float_bytes (double val, ___SCMOBJ bytes)
{
 *(double*)(U8_DATA (bytes)) = val;
  return 0;
}
END-C
)

  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (define-c-lambda std/actor/xdr#xdr-float->bytes!
    (double scheme-object) int
    "ffi_write_float_bytes")

  (define-c-lambda std/actor/xdr#xdr-bytes->float
    (scheme-object) double
    "ffi_read_float_bytes")
)

(extern                                 ; foreign
  xdr-float->bytes! xdr-bytes->float)

(def current-xdr-type-registry
  (make-parameter #f))

(defstruct XDR (pred read write)
  id: std/actor#XDR::t)

(defstruct opaque (data)
  id: std/actor#opaque::t)

(def (xdr-read port types)
  (parameterize ((current-xdr-type-registry types))
    (xdr-read-object port)))

(def (xdr-write obj port types)
  (parameterize ((current-xdr-type-registry types))
    (xdr-write-object obj port)))

;; Gerbil eXternal Data Representation
;; non acyclic objects
;; single byte declares type followed by the content
;; all simple objects can be encoded
;; hash-tables are unmarshalled as hash-table
;; structure objects must eitherhave an entry in the type registry
;;  mapping their type id to an XDR object, or have an :xdr
;;  method that produces an XDR encodable object
;; when decoding, objects that cant be decoded because of
;;  unknown type, they get decoded to opaque.
(def xdr-proto-type-void      #x00)
(def xdr-proto-type-false     #x01)
(def xdr-proto-type-true      #x02)
(def xdr-proto-type-null      #x03)
(def xdr-proto-type-pair      #x04)
(def xdr-proto-type-int       #x05)
(def xdr-proto-type-float     #x06)
(def xdr-proto-type-string    #x07)
(def xdr-proto-type-symbol    #x08)
(def xdr-proto-type-keyword   #x09)
(def xdr-proto-type-values    #x0a)
(def xdr-proto-type-vector    #x0b)
(def xdr-proto-type-u8vector  #x0b)
(def xdr-proto-type-hash      #x0c)
(def xdr-proto-type-reserved1 #x0d)
(def xdr-proto-type-reserved2 #x0e)
(def xdr-proto-type-structure #x0f)

(def xdr-proto-type-hash-eq    #x00)
(def xdr-proto-type-hash-eqv   #x01)
(def xdr-proto-type-hash-equal #x02)


(def *xdr-proto-types*
  (make-vector 16))

(def (xdr-read-object port)
  (let (type (read-u8 port))
    (cond
     ((eof-object? type))
     ((and (fixnum? type) (fx>= type 0) (fx< type (vector-length *xdr-proto-types*)))
      (let (xdr (vector-ref *xdr-proto-types* type))
        ((XDR-read xdr) port)))
     (else
      (error "xdr read error: unknown object type" type)))))

(def (xdr-write-object obj port)
  (let (type (xdr-object-type obj))
    (if type
      (let (xdr (vector-ref *xdr-proto-types* type))
        ((XDR-write xdr) obj port))
      (error "xdr write error: unknown object type" obj))))

(def (xdr-object-type obj)
  (cond
   ((object? obj)     xdr-proto-type-structure)
   ((void? obj)       xdr-proto-type-void)
   ((not obj)         xdr-proto-type-false)
   ((true? obj)       xdr-proto-type-true)
   ((null? obj)       xdr-proto-type-null)
   ((pair? obj)       xdr-proto-type-pair)
   ((integer? obj)    xdr-proto-type-int)
   ((real? obj)       xdr-proto-type-float)
   ((string? obj)     xdr-proto-type-string)
   ((symbol? obj)     xdr-proto-type-symbol)
   ((keyword? obj)    xdr-proto-type-keyword)
   ((##values? obj)   xdr-proto-type-values)
   ((vector? obj)     xdr-proto-type-vector)
   ((u8vector? obj)   xdr-proto-type-u8vector)
   ((hash-table? obj) xdr-proto-type-hash)
   (else #f)))

(def (xdr-type-registry-get type-id)
  (cond
   ((current-xdr-type-registry)
    => (cut hash-get <> type-id))
   (else #f)))

(defrules defxdr-proto-types ()
  ((_ rule ...)
   (begin
     (defxdr-proto-type-decl rule) ...)))

(defrules defxdr-proto-type-decl ()
  ((_ (type xdr-t pred xdr-read-e xdr-write-e))
   (begin
     (def xdr-t
       (make-XDR pred xdr-read-e xdr-write-e))
     (vector-set! *xdr-proto-types* type xdr-t))))

;;; xdr readers
(def xdr-void-read  void)
(def xdr-false-read false)
(def xdr-true-read  true)
(def (xdr-null-read) '())

(def (xdr-pair-read port)
  (cons
   (xdr-read-object port)
   (xdr-read-object port)))

(def (xdr-int-read port)
  (let* ((hd (read-u8 port))
         (sign (not (fxzero? (fxand hd #x80))))
         (bytes (fxand hd #x7f))
         (bytes (if (fx< bytes 127)
                  bytes
                  (xdr-int-read port))))
    (let lp ((k 0) (value 0) (shift 0))
      (cond
       ((fx< k bytes)
        (lp (fx1+ k)
            (let (u8 (read-u8 port))
              (bitwise-ior (arithmetic-shift u8 shift)
                           value))
            (fx+ shift 8)))
       (sign (- value))
       (else value)))))

(def (xdr-float-read port)
  (let* ((bytes (make-u8vector 8))
         (ilen (read-subu8vector bytes 0 8 port)))
    (if (fx= ilen 8)
      (xdr-bytes->float bytes)
      (error "xdr read error; premature port end" port))))

(def (xdr-binary-read port K)
  (let* ((len (xdr-int-read port))
         (buf (make-u8vector len))
         (ilen (read-subu8vector buf 0 len port)))
    (if (fx= len ilen)
      (K buf)
      (error "xdr read error; premature port end" port))))
     
(def (xdr-string-read port)
  (xdr-binary-read port bytes->string))

(def (xdr-symbol-read port)
  (xdr-binary-read
   port (lambda (bytes) (string->symbol (bytes->string bytes)))))

(def (xdr-keyword-read port)
  (xdr-binary-read
   port (lambda (bytes) (string->keyword (bytes->string bytes)))))

(def (xdr-vector-like-read makef start port)
  (let* ((len (xdr-int-read port))
         (ilen (fx+ start len))
         (obj (makef ilen)))
    (let lp ((k start))
      (if (fx< k ilen)
        (##vector-set! obj k (xdr-read-object port))
        obj))))

(def (xdr-values-read port)
  (xdr-vector-like-read ##make-values 0 port))

(def (xdr-vector-read port)
  (xdr-vector-like-read ##make-vector 0 port))

(def (xdr-u8vector-read port)
  (xdr-binary-read port values))

(def (xdr-inline-list-read port)
  (let lp ((lst []))
    (let (next (xdr-read-object port))
      (if (null? next)
        (reverse lst)
        (lp (cons next lst))))))

(def (xdr-hash-read port)
  (let* ((htype (read-u8 port))
         (makef (cond
                 ((eq? htype xdr-proto-type-hash-eq)
                  list->hash-table-eq)
                 ((eq? htype xdr-proto-type-hash-eqv)
                  list->hash-table-eqv)
                 (else
                  list->hash-table)))
         (pairs (xdr-inline-list-read port)))
    (list->hash-table pairs)))

(def (xdr-structure-read port type)
  (let (type-id (xdr-read-object port))
    (cond
     ((xdr-type-registry-get type-id)
      => (lambda (xdr)
           ((XDR-read xdr) port)))
     (else
      (error "xdr read error; unknown object type" type-id)))))

;;; xdr writers
(defrules defxdr-atom-write ()
  ((_ id type)
   (def (id obj port)
     (write-u8 type port))))

(defxdr-atom-write xdr-void-write  xdr-proto-type-void)
(defxdr-atom-write xdr-false-write xdr-proto-type-false)
(defxdr-atom-write xdr-true-write  xdr-proto-type-true)
(defxdr-atom-write xdr-null-write  xdr-proto-type-null)

(def (xdr-pair-write obj port)
  (write-u8 xdr-proto-type-pair port)
  (xdr-write-object port (car obj))
  (xdr-write-object port (cdr obj)))

(def (xdr-int-write obj port)
  (write-u8 xdr-proto-type-int port)
  (let* ((sign (if (negative? obj) 1 0))
         (value (abs obj))
         (bits (integer-length value))
         (bytes (fxquotient bits 8))
         (rem   (fxremainder bits 8))
         (bytes (if (fxzero? rem) bytes (fx1+ bytes)))
         ((values hd len)
          (if (fx<  bytes 128)
            (values
              (fxior (fxarithmetic-shift sign 7)
                     bytes)
              #f)
            (values
              (fxior (fxarithmetic-shift sign 7)
                     127)
              #t))))
    (write-u8 hd port)
    (when len
      (xdr-int-write bytes port))
    (let lp ((k 0))
      (when (fx< k bytes)
        (write-u8 (bitwise-and #xff obj) port)
        (arithmetic-shift obj -8)
        (lp (fx1+ k))))))

(def (xdr-float-write obj port)
  (write-u8 xdr-proto-type-float port)
  (let (bytes (make-u8vector 8))
    (xdr-float->bytes! obj bytes)
    (write-u8vector bytes 0 8 port)))

(def (xdr-binary-write u8v port)
  (let (len (u8vector-length u8v))
    (xdr-int-write (u8vector-length bytes) port)
    (write-subu8vector bytes 0 (u8vector-length bytes) port)))

(def (xdr-string-write obj port)
  (write-u8 xdr-proto-type-string port)
  (xdr-binary-write (string->bytes obj)))

(def (xdr-symbol-write obj port)
  (write-u8 xdr-proto-type-symbol port)
  (xdr-binary-write (string->bytes (symbol->string obj))))

(def (xdr-keyword-write obj port)
  (write-u8 xdr-proto-type-keyword port)
  (xdr-binary-write (string->bytes (keyword->string obj))))

(def (xdr-vector-like-write obj start port)
  (let* ((len (##vector-length obj))
         (olen (fx- len start)))
    (xdr-int-write olen port)
    (let lp ((k start))
      (when (k < len)
        (xdr-write-object (##vector-ref obj k) port)
        (lp (fx1+ k))))))

(def (xdr-values-write obj port)
  (write-u8 xdr-proto-type-values port)
  (xdr-vector-like-write obj 0 port))

(def (xdr-vector-write obj port)
  (write-u8 xdr-proto-type-vector port)
  (xdr-vector-like-write obj 0 port))

(def (xdr-u8vector-write obj port)
  (write-u8 xdr-proto-type-u8vector)
  (xdr-binary-write obj port))

(def (xdr-inline-list-write obj port)
  (for-each (cut xdr-pair-write <> port) obj)
  (xdr-null-write '() port))

(def (xdr-hash-write obj port)
  (write-u8 xdr-proto-type-hash port)
  (let (testf (macro-table-test obj))
    (cond
     ((or (not testf)
          (eq? testf eq?)
          (eq? testf ##eq?))
      (write-u8 xdr-proto-type-hash-eq))
     ((or (eq? testf eqv?)
          (eq? testf ##eqv?))
      (write-u8 xdr-proto-type-hash-eqv))
     (else
      (write-u8 xdr-proto-type-hash-equal))))
  (xdr-inline-list-write (hash->list obj)))

(def (xdr-structure-write obj port)
  (cond
   ((find-method obj ':xdr)
    => (lambda (xdrf)
         (xdr-write-object (xdrf obj) port)))
   (else
    (let (type-id (##type-id (object-type obj)))
      (cond
       ((xdr-type-registry-get type-id)
        => (lambda (xdr)
             (xdr-write-object type-id)
             ((XDR-write xdr) obj port)))
       (else
        (error "xdr write error; unknown object type" obj type-id)))))))

;;; XDR type declaration
(defxdr-proto-types
  (xdr-proto-type-void      void-t      void?       xdr-void-read     xdr-void-write)
  (xdr-proto-type-false     false-t     not         xdr-false-read    xdr-false-write)
  (xdr-proto-type-true      true-t      true?       xdr-true-read     xdr-true-write)
  (xdr-proto-type-null      null-t      null?       xdr-null-read     xdr-null-write)
  (xdr-proto-type-pair      pair-t      pair?       xdr-pair-read     xdr-pair-write)
  (xdr-proto-type-int       int-t       integer?    xdr-int-read      xdr-int-write)
  (xdr-proto-type-float     float-t     real?       xdr-float-read    xdr-float-write)
  (xdr-proto-type-string    string-t    string?     xdr-string-read   xdr-string-write)
  (xdr-proto-type-symbol    symbol-t    symbol?     xdr-symbol-read   xdr-symbol-write)
  (xdr-proto-type-keyword   keyword-t   keyword?    xdr-keyword-read  xdr-keyword-write)
  (xdr-proto-type-values    values-t    ##values?   xdr-values-read   xdr-values-write)
  (xdr-proto-type-vector    vector-t    vector?     xdr-vector-read   xdr-vector-write)
  (xdr-proto-type-u8vector  u8vector-t  u8vector?   xdr-u8vector-read xdr-u8vector-write)
  (xdr-proto-type-hash      hash-t      hash-table? xdr-hash-read     xdr-hash-write)
  (xdr-proto-type-reserved1 reserved1-t void?       xdr-void-read     xdr-void-write)
  (xdr-proto-type-reserved2 reserved2-t void?       xdr-void-read     xdr-void-write)
  (xdr-proto-type-structure structure-t object?     xdr-structure-read xdr-structure-write))
