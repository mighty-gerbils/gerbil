;;; -*- Gerbil -*-
;;; © vyzo
;;; actor message serialization
(import :gerbil/gambit/threads
        :gerbil/gambit/os
        :std/error
        :std/sugar
        :std/foreign
        :std/io
        (only-in :std/io/bio/api defreader-ext defreader-ext* defwriter-ext defwriter-ext*)
        ./message)
(declare (not safe))

(defwriter-ext (marshal buf obj)
  (let (tag (object-tag obj))
    (cond
     ((not tag)
      (raise-io-error 'BufferedWriter-marshal "unserializable object" obj))
     ((vector-ref +marshal+ tag)
      => (lambda (write-e)
           (&BufferedWriter-write-u8 buf tag)
           (fx+ (write-e buf obj) 1)))
     (else
      (raise-io-error 'BufferedWriter-marshal "missing serializer" obj tag)))))

(defreader-ext (unmarshal buf)
  (let (tag (&BufferedReader-read-u8! buf))
    (cond
     ((vector-ref +unmarshal+ tag)
      => (cut <> buf))
     (else
      (raise-io-error 'BufferedReader-unmarshal "unrecognized object tag" tag)))))

(defreader-ext (try-unmarshal buf)
  (let (tag (&BufferedReader-read-u8 buf))
    (cond
     ((eof-object? tag)
      '#!eof)
     ((vector-ref +unmarshal+ tag)
      => (cut <> buf))
     (else
      (raise-io-error 'BufferedReader-unmarshal "unrecognized object tag" tag)))))

(defwriter-ext* (marshal-envelope buf obj)
  (with ((envelope message dest source nonce replyto expiry) obj)
    (when (or (thread? source)
              (handle? source)
              (thread? dest)
              (handle? dest))
      (raise-io-error 'BufferedWriter-marshal "cannot marshal envelope; contains threads"
                      source dest))
    (let* ((w1 (&BufferedWriter-marshal buf message))
           (w2 (&BufferedWriter-marshal buf dest))
           (w3 (&BufferedWriter-marshal buf source))
           (w4 (&BufferedWriter-marshal buf nonce))
           (w5 (&BufferedWriter-marshal buf replyto))
           (w6 (&BufferedWriter-marshal buf expiry)))
      (fx+ w1 w2 w3 w4 w5 w6))))

(defreader-ext* (unmarshal-envelope buf)
  (let (obj (make-envelope #f #f #f #f #f #f))
    (set! (&envelope-message obj)
      (&BufferedReader-unmarshal buf))
    (set! (&envelope-dest obj)
      (&BufferedReader-unmarshal buf))
    (set! (&envelope-source obj)
      (&BufferedReader-unmarshal buf))
    (set! (&envelope-nonce obj)
      (&BufferedReader-unmarshal buf))
    (set! (&envelope-replyto obj)
      (&BufferedReader-unmarshal buf))
    (set! (&envelope-expiry obj)
      (&BufferedReader-unmarshal buf))
    obj))

(defwriter-ext* (marshal-message buf obj)
  (let* ((klass (##structure-type obj))
         (klass-id (##type-id klass))
         (fields (fx- (vector-length obj) 1))
         (w1 (&BufferedWriter-marshal-symbol buf klass-id))
         (w2 (&BufferedWriter-write-varuint buf fields)))
    (let lp ((i 0) (w (fx+ w1 w2)))
      (if (fx< i fields)
        (let* ((i+1 (fx+ i 1))
               (field (##unchecked-structure-ref obj i+1 klass #f))
               (wo (&BufferedWriter-marshal buf field)))
          (lp i+1 (fx+ w wo)))
        w))))

(extern namespace: #f
  type-descriptor-fields)

(defreader-ext* (unmarshal-message buf)
  (let* ((klass-id (&BufferedReader-unmarshal-symbol buf))
         (fields (&BufferedReader-read-varuint buf)))
    (cond
     ((lookup-message-type klass-id)
      => (lambda (klass)
           (unless (fx= fields (type-descriptor-fields klass))
             (raise-io-error 'BufferedReader-unmarshal-message "bad message; field count mismatch"
                             klass-id fields klass (type-descriptor-fields klass)))
           (let (obj (make-object klass fields))
             (let lp ((i 0))
               (if (fx< i fields)
                 (let ((i+1 (fx+ i 1))
                       (field (&BufferedReader-unmarshal buf)))
                   (##unchecked-structure-set! obj field i+1 klass #f)
                   (lp i+1))
                 obj)))))
     (else
      (raise-io-error 'BufferedReader-unmarshal-message "unknown message type" klass-id)))))

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
  (&BufferedWriter-write-char buf obj))
(defreader-ext* (unmarshal-char buf)
  (&BufferedReader-read-char buf))

(defwriter-ext* (marshal-integer buf obj)
  (&BufferedWriter-write-varint buf obj #f))
(defreader-ext* (unmarshal-integer buf)
  (&BufferedReader-read-varint buf #f))

(defwriter-ext* (marshal-double buf obj)
  (let (bytes (make-u8vector 8))
    (double->bytes! obj bytes)
    (&BufferedWriter-write buf bytes)))

(defreader-ext* (unmarshal-double buf)
  (let (bytes (make-u8vector 8))
    (&BufferedReader-read buf bytes 0 8 8)
    (bytes->double bytes)))

(defwriter-ext* (marshal-pair buf obj)
  (let* ((w1 (&BufferedWriter-marshal buf (car obj)))
         (w2 (&BufferedWriter-marshal buf (cdr obj))))
    (fx+ w1 w2)))

(defreader-ext* (unmarshal-pair buf)
  (let* ((kar (&BufferedReader-unmarshal buf))
         (kdr (&BufferedReader-unmarshal buf)))
    (cons kar kdr)))

(defwriter-ext* (marshal-vector buf obj)
  (let* ((len (vector-length obj))
         (w1 (&BufferedWriter-write-varuint buf len)))
    (let lp ((i 0) (w w1))
      (if (fx< i len)
        (lp (fx+ i 1)
            (fx+ w (&BufferedWriter-marshal buf (vector-ref obj i))))
        w))))

(defreader-ext* (unmarshal-vector buf)
  (let* ((len (&BufferedReader-read-varuint buf))
         (obj (make-vector len)))
    (let lp ((i 0))
      (if (fx< i len)
        (let (el (&BufferedReader-unmarshal buf))
          (vector-set! obj i el)
          (lp (fx+ i 1)))
        obj))))

(defwriter-ext* (marshal-values buf obj)
  (&BufferedWriter-marshal-vector buf obj))

(defreader-ext* (unmarshal-values buf)
  (let (obj (&BufferedReader-unmarshal-vector buf))
    (##subtype-set! obj (macro-subtype-boxvalues))
    obj))

(defwriter-ext* (marshal-symbol buf obj)
  (&BufferedWriter-write-delimited-string buf (symbol->string obj)))
(defreader-ext* (unmarshal-symbol buf)
  (string->symbol
   (&BufferedReader-read-delimited-string buf)))

(defwriter-ext* (marshal-keyword buf obj)
  (&BufferedWriter-write-delimited-string buf (keyword->string obj)))
(defreader-ext* (unmarshal-keyword buf)
  (string->keyword
   (&BufferedReader-read-delimited-string buf)))

(defwriter-ext* (marshal-string buf obj)
  (&BufferedWriter-write-delimited-string buf obj))
(defreader-ext* (unmarshal-string buf)
  (&BufferedReader-read-delimited-string buf))

(defwriter-ext* (marshal-u8vector buf obj)
  (&BufferedWriter-write-delimited-u8vector buf obj))
(defreader-ext* (unmarshal-u8vector buf)
  (&BufferedReader-read-delimited-u8vector buf))

(defwriter-ext* (marshal-table buf obj)
  (let* ((len (hash-length obj))
         (w1 (&BufferedWriter-write-varuint buf len)))
    (hash-fold
     (lambda (k v r)
       (let* ((wk (&BufferedWriter-marshal buf k))
              (wv (&BufferedWriter-marshal buf v)))
         (fx+ r wk wv)))
     w1 obj)))

(defreader-ext* (unmarshal-table buf)
  (let* ((len (&BufferedReader-read-varuint buf))
         (obj (make-hash-table size: len)))
    (let lp ((i 0))
      (if (fx< i len)
        (let* ((k (&BufferedReader-unmarshal buf))
               (v (&BufferedReader-unmarshal buf)))
          (hash-put! obj k v)
          (lp (fx+ i 1)))
        obj))))

(defwriter-ext* (marshal-time buf obj)
  (&BufferedWriter-marshal-double buf (time->seconds obj)))
(defreader-ext* (unmarshal-time buf)
  (seconds->time
   (&BufferedReader-unmarshal-double buf)))

(defwriter-ext* (marshal-serde buf obj)
  (&BufferedWriter-write-delimited-u8vector buf (object->u8vector obj)))
(defreader-ext* (unmarshal-serde buf)
  (u8vector->object
   (&BufferedReader-read-delimited-u8vector buf)))

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
  (double    9)
  (pair     10)
  (vector   11)
  (values   12)
  (symbol   13)
  (keyword  14)
  (string   15)
  (u8vector 16)
  (table    17)
  (time     18)
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
