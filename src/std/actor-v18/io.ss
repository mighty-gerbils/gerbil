;;; -*- Gerbil -*-
;;; © vyzo
;;; actor message serialization
(import :gerbil/gambit
        :std/error
        :std/contract
        :std/sugar
        :std/foreign
        :std/interface
        :std/io
        (only-in :std/io/bio/api defreader-ext defreader-ext* defwriter-ext defwriter-ext*)
        ./message)
(declare (not safe))
(export #t)

(defwriter-ext* (marshal buf obj)
  (let (tag (object-tag obj))
    (cond
     ((not tag)
      (raise-io-error marshal "unserializable object" obj))
     ((vector-ref +marshal+ tag)
      => (lambda (write-e)
           (buf.write-u8 tag)
           (fx+ (write-e buf obj) 1)))
     (else
      (raise-io-error marshal "missing serializer" obj tag)))))

(defreader-ext* (unmarshal buf)
  (let (tag (buf.read-u8!))
    (cond
     ((vector-ref +unmarshal+ tag)
      => (cut <> buf))
     (else
      (raise-io-error unmarshal "unrecognized object tag" tag)))))

(defreader-ext* (try-unmarshal buf)
  (let (tag (buf.read-u8))
    (cond
     ((eof-object? tag)
      '#!eof)
     ((vector-ref +unmarshal+ tag)
      => (cut <> buf))
     (else
      (raise-io-error unmarshal "unrecognized object tag" tag)))))

(defwriter-ext* (marshal-envelope buf obj)
  (using (obj :- envelope)
    (when (or (thread? obj.source)
              (handle? obj.source)
              (thread? obj.dest)
              (handle? obj.dest))
      (raise-io-error marshal "cannot marshal envelope; contains threads"
                      obj.source obj.dest))
    (let* ((w1 (buf.marshal obj.message))
           (w2 (buf.marshal obj.dest))
           (w3 (buf.marshal obj.source))
           (w4 (buf.marshal obj.nonce))
           (w5 (buf.marshal obj.replyto))
           (w6 (buf.marshal obj.expiry))
           (w7 (buf.marshal obj.reply-expected?)))
      (fx+ w1 w2 w3 w4 w5 w6 w7))))

(defreader-ext* (unmarshal-envelope buf)
  (let (obj (make-envelope #f #f #f #f #f #f #f))
    (using (obj :- envelope)
      (set! obj.message (buf.unmarshal))
      (set! obj.dest    (buf.unmarshal))
      (set! obj.source  (buf.unmarshal))
      (set! obj.nonce   (buf.unmarshal))
      (set! obj.replyto (buf.unmarshal))
      (set! obj.expiry  (buf.unmarshal))
      (set! obj.reply-expected? (buf.unmarshal))
      obj)))

(defwriter-ext* (marshal-message buf obj)
  (let* ((klass (##structure-type obj))
         (klass-id (##type-id klass))
         (fields (fx- (vector-length obj) 1))
         (w1 (buf.marshal-symbol klass-id))
         (w2 (buf.write-varuint fields)))
    (let lp ((i 0) (w (fx+ w1 w2)))
      (if (fx< i fields)
        (let* ((i+1 (fx+ i 1))
               (field (##unchecked-structure-ref obj i+1 klass #f))
               (wo (buf.marshal field)))
          (lp i+1 (fx+ w wo)))
        w))))

(defreader-ext* (unmarshal-message buf)
  (let* ((klass-id (buf.unmarshal-symbol))
         (fields (buf.read-varuint)))
    (cond
     ((lookup-message-type klass-id)
      => (lambda (klass)
           (unless (fx= fields (class-type-fields klass))
             (raise-io-error unmarshal-message "bad message; field count mismatch"
                             klass-id fields klass (class-type-fields klass)))
           (let (obj (make-object klass (fx1+ fields)))
             (let lp ((i 0))
               (if (fx< i fields)
                 (let ((i+1 (fx+ i 1))
                       (field (buf.unmarshal)))
                   (##unchecked-structure-set! obj field i+1 klass #f)
                   (lp i+1))
                 obj)))))
     (else
      (raise-io-error unmarshal-message "unknown message type" klass-id)))))

(defwriter-ext* (marshal-void buf obj)
  0)
(defreader-ext* (unmarshal-void buf)
  (void))

(defwriter-ext* (marshal-null buf obj)
  0)
(defreader-ext* (unmarshal-null buf)
  '())

(defwriter-ext* (marshal-true buf obj)
  0)
(defreader-ext* (unmarshal-true buf)
  #t)

(defwriter-ext* (marshal-false buf obj)
  0)
(defreader-ext* (unmarshal-false buf)
  #f)

(defwriter-ext* (marshal-eof buf obj)
  0)
(defreader-ext* (unmarshal-eof buf)
  '#!eof)

(defwriter-ext* (marshal-char buf obj)
  (buf.write-char obj))
(defreader-ext* (unmarshal-char buf)
  (buf.read-char))

(defwriter-ext* (marshal-integer buf obj)
  (buf.write-varint obj #f))
(defreader-ext* (unmarshal-integer buf)
  (buf.read-varint #f))

(defwriter-ext* (marshal-double buf obj)
  (let (bytes (make-u8vector 8))
    (double->bytes! obj bytes)
    (buf.write bytes)))

(defreader-ext* (unmarshal-double buf)
  (let (bytes (make-u8vector 8))
    (buf.read bytes 0 8 8)
    (bytes->double bytes)))

(defwriter-ext* (marshal-pair buf obj)
  (let* ((wcar (buf.marshal (car obj)))
         (wcdr (buf.marshal (cdr obj))))
    (fx+ wcar wcdr)))

(defreader-ext* (unmarshal-pair buf)
  (let* ((kar (buf.unmarshal))
         (kdr (buf.unmarshal)))
    (cons kar kdr)))

(defwriter-ext* (marshal-vector buf obj)
  (let* ((len (vector-length obj))
         (w1 (buf.write-varuint len)))
    (let lp ((i 0) (w w1))
      (if (fx< i len)
        (lp (fx+ i 1)
            (fx+ w (buf.marshal (vector-ref obj i))))
        w))))

(defreader-ext* (unmarshal-vector buf)
  (let* ((len (buf.read-varuint))
         (obj (make-vector len)))
    (let lp ((i 0))
      (if (fx< i len)
        (let (el (buf.unmarshal))
          (vector-set! obj i el)
          (lp (fx+ i 1)))
        obj))))

(defwriter-ext* (marshal-values buf obj)
  (buf.marshal-vector obj))

(defreader-ext* (unmarshal-values buf)
  (let (obj (buf.unmarshal-vector))
    (##subtype-set! obj (macro-subtype-boxvalues))
    obj))

(defwriter-ext* (marshal-symbol buf obj)
  (buf.write-delimited-string (symbol->string obj)))
(defreader-ext* (unmarshal-symbol buf)
  (string->symbol
   (buf.read-delimited-string)))

(defwriter-ext* (marshal-keyword buf obj)
  (buf.write-delimited-string (keyword->string obj)))
(defreader-ext* (unmarshal-keyword buf)
  (string->keyword
   (buf.read-delimited-string)))

(defwriter-ext* (marshal-string buf obj)
  (buf.write-delimited-string obj))
(defreader-ext* (unmarshal-string buf)
  (buf.read-delimited-string))

(defwriter-ext* (marshal-u8vector buf obj)
  (buf.write-delimited-u8vector obj))
(defreader-ext* (unmarshal-u8vector buf)
  (buf.read-delimited-u8vector))

(defwriter-ext* (marshal-table buf obj)
  (let* ((len (hash-length obj))
         (w1 (buf.write-varuint len)))
    (hash-fold
     (lambda (k v r)
       (let* ((wk (buf.marshal k))
              (wv (buf.marshal v)))
         (fx+ r wk wv)))
     w1 obj)))

(defreader-ext* (unmarshal-table buf)
  (let* ((len (buf.read-varuint))
         (obj (make-hash-table size: len)))
    (let lp ((i 0))
      (if (fx< i len)
        (let* ((k (buf.unmarshal))
               (v (buf.unmarshal)))
          (hash-put! obj k v)
          (lp (fx+ i 1)))
        obj))))

(defwriter-ext* (marshal-time buf obj)
  (buf.marshal-double (time->seconds obj)))
(defreader-ext* (unmarshal-time buf)
  (seconds->time
   (buf.unmarshal-double)))

(defwriter-ext* (marshal-serde buf obj)
  (buf.write-delimited-u8vector (object->u8vector obj)))
(defreader-ext* (unmarshal-serde buf)
  (u8vector->object
   (buf.read-delimited-u8vector)))

;;; internals
(def +type-tag+
  (make-vector 4 false))
(def +subtype-tag+
  (make-vector 32 false))
(def +marshal+
  (make-vector 256 #f))
(def +unmarshal+
  (make-vector 256 #f))

(def (object-tag obj)
  (or ((vector-ref +type-tag+ (##type obj)) obj)
      serde-tag))

;;; io registry
(defsyntax (defio-registry stx)
  (syntax-case stx ()
    ((_ (method tag-value) ...)
     (with-syntax (((tag ...)
                    (stx-map (lambda (id) (stx-identifier id id "-tag"))
                             #'(method ...)))
                   ((marshal-e ...)
                    (stx-map (lambda (id) (stx-identifier id "&BufferedWriter-marshal-" id))
                             #'(method ...)))
                   ((unmarshal-e ...)
                    (stx-map (lambda (id) (stx-identifier id "&BufferedReader-unmarshal-" id))
                             #'(method ...))))
       #'(begin
           (begin
             (def tag tag-value)
             (vector-set! +marshal+ tag marshal-e)
             (vector-set! +unmarshal+ tag unmarshal-e))
           ...)))))

(defio-registry
  (envelope  0)
  (message   1)
  (void      2)
  (null      3)
  (true      4)
  (false     5)
  (eof       6)
  (char      7)
  (integer   9)
  (double   10)
  (pair     11)
  (vector   12)
  (values   13)
  (symbol   14)
  (keyword  15)
  (string   16)
  (u8vector 17)
  (table    18)
  (time     19)
  ;; serde with object<->vector
  (serde   255))

;; tags
(defrules deftype-tag (=>)
  ((_ (type tag))
   (vector-set! +type-tag+ type (lambda (obj) tag)))
  ((_ (type => fun))
   (vector-set! +type-tag+ type fun)))

(defrule (deftype-tags defn ...)
  (begin (deftype-tag defn) ...))

(defrules defsubtype-tag (=>)
  ((_ (subtype tag))
   (vector-set! +subtype-tag+ subtype (lambda (obj) tag)))
  ((_ (subtype => fun))
   (vector-set! +subtype-tag+ subtype fun)))

(defrule (defsubtype-tags defn ...)
  (begin (defsubtype-tag defn) ...))

(def (subtyped-tag obj)
  ((vector-ref +subtype-tag+ (##subtype obj)) obj))

(def (immediate-tag obj)
  (cond
   ((eq? obj '())     null-tag)
   ((eq? obj #f)      false-tag)
   ((eq? obj #t)      true-tag)
   ((eq? obj #!void)  void-tag)
   ((char? obj)       char-tag)
   ((eof-object? obj) eof-tag)
   (else #f)))

(def (structure-tag obj)
  (cond
   ((envelope? obj) envelope-tag)
   ((message? obj) message-tag)
   ((hash-table? obj) table-tag)
   ((time? obj) time-tag)
   (else #f)))

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
  macro-subtype-bignum)

(deftype-tags
  ((macro-type-fixnum)  integer-tag)
  ((macro-type-mem1)    => subtyped-tag)
  ((macro-type-special) => immediate-tag)
  ((macro-type-mem2)    pair-tag))

(defsubtype-tags
  ((macro-subtype-vector)    vector-tag)
  ((macro-subtype-pair)      pair-tag)
  ((macro-subtype-structure) => structure-tag)
  ((macro-subtype-boxvalues) values-tag)
  ((macro-subtype-symbol)    symbol-tag)
  ((macro-subtype-keyword)   keyword-tag)
  ((macro-subtype-string)    string-tag)
  ((macro-subtype-u8vector)  u8vector-tag)
  ((macro-subtype-flonum)    double-tag)
  ((macro-subtype-bignum)    integer-tag))

;; and a bit of ffi for the doubles
(begin-ffi (bytes->double double->bytes!)
  (c-declare #<<END-C
static double ffi_actor_io_read_double_bytes (___SCMOBJ bytes)
{
 return *(double*)(U8_DATA (bytes));
}

static void ffi_actor_io_write_double_bytes (double val, ___SCMOBJ bytes)
{
 *(double*)(U8_DATA (bytes)) = val;
}
END-C
)

(define-c-lambda bytes->double (scheme-object) double
  "ffi_actor_io_read_double_bytes")
(define-c-lambda double->bytes! (double scheme-object) void
  "ffi_actor_io_write_double_bytes"))
