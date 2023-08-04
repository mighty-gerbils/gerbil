;;; -*- Gerbil -*-
;;; © vyzo
;;; Protobuf I/O

(import :gerbil/gambit/bits
        :std/error
        :std/foreign
        :std/text/utf8
        :std/io
        (only-in :std/io/bio/util defreader-ext defwriter-ext))

;; reader/writer extensions automatically exported
(export marshal unmarshal)

(declare (not safe))

(def 2^31 (expt 2 31))
(def 2^32 (expt 2 32))
(def 2^63 (expt 2 63))
(def 2^64 (expt 2 64))

;;; marshalling
(def (marshal obj write-e)
  (let (buf (open-buffered-writer #f))
    (write-e buf obj)
    (get-buffer-output-u8vector buf)))

(def (unmarshal bytes read-e)
  (let (buf (open-buffered-reader bytes))
    (read-e buf)))

;; field encoding
(defreader-ext (read-field buf)
  (let (field (&BufferedReader-read-varint* buf))
    (values
      (arithmetic-shift field -3)
      (byte->tag (bitwise-and field #b111)))))

(defwriter-ext (write-field buf x tag)
  (&BufferedWriter-write-varint* buf (bitwise-ior (arithmetic-shift x 3) (tag->byte tag))))

(def (byte->tag x)
  (case x
    ((0) 'VARINT)
    ((1) 'FIXED64)
    ((2) 'VARLEN)
    ((5) 'FIXED32)
    (else
     (error "Unknown type tag" x))))

(def (tag->byte x)
  (case x
    ((VARINT)  0)
    ((FIXED64) 1)
    ((VARLEN)  2)
    ((FIXED32) 5)
    (else
     (error "Unknown type tag" x))))


;; unknown field skipping
(defreader-ext (skip-unknown buf tag)
  (case tag
    ((VARINT)
     (&BufferedReader-skip-varint buf))
    ((FIXED64)
     (&BufferedReader-skip buf 8))
    ((VARLEN)
     (&BufferedReader-skip buf (&BufferedReader-read-varint* buf)))
    ((FIXED32)
     (&BufferedReader-skip buf 4))
    (else
     (error "Unknown type tag" tag))))

(defreader-ext (skip-varint buf)
  (let lp ()
    (let (byte (&BufferedReader-read-u8 buf))
      (when (eof-object? byte)
        (raise-io-error 'BufferedReader-skip-varint "Premature end of input" buf))
      (unless (fx= (fxand byte #x80) 0)
        (lp)))))

;; packed encoding
(defreader-ext (read-packed buf read-e)
  (let* ((len (&BufferedReader-read-varint* buf))
         (buf (&BufferedReader-delimit buf len)))
    (let lp ((r []))
      (if (eof-object? (&BufferedReader-peek-u8 buf))
        (reverse r)
        (lp (cons (read-e buf) r))))))

(defwriter-ext (write-packed buf xs write-e)
  (let (tmpbuf (open-buffered-writer #f))
    (for-each (cut write-e tmpbuf <>) xs)
    (let* ((chunks (get-buffer-output-chunks tmpbuf))
           (len (chunks-length chunks)))
      (&BufferedWriter-write-varint* buf len)
      (for-each (cut &BufferedWriter-write buf <>)
                chunks))))

(def (chunks-length chunks)
  (foldl (lambda (c r) (fx+ (u8vector-length c) r)) 0 chunks))

;; map encoding
(defreader-ext (read-key-value-pair buf read-key-e read-value-e)
  (let* ((len (&BufferedReader-read-varint* buf))
         (buf (&BufferedReader-delimit buf len)))
    (let lp ((key #f) (value #f))
      (if (eof-object? (&BufferedReader-peek-u8 buf))
        (cons key value)
        (let ((values field tag) (&BufferedReader-read-field buf))
          (case field
            ((1)
             (lp (read-key-e buf) value))
            ((2)
             (lp key (read-value-e buf)))
            (else
             (&BufferedReader-skip-unknown buf tag)
             (lp key value))))))))

(defwriter-ext (write-key-value-pair buf k v ktag write-key-e vtag write-value-e)
  (let* ((tmpbuf (open-buffered-writer #f))
         (tmpbuf-write
          (lambda (field tag val write-e)
            (&BufferedWriter-write-field tmpbuf field tag)
            (write-e tmpbuf val))))
    (tmpbuf-write 1 ktag k write-key-e)
    (tmpbuf-write 2 vtag v write-value-e)
    (let* ((chunks (get-buffer-output-chunks tmpbuf))
           (len (chunks-length chunks)))
      (&BufferedWriter-write-varint* buf len)
      (for-each (cut &BufferedWriter-write buf <>)
                chunks))))

;; length delimited objects
(defreader-ext (read-delimited* buf read-e)
  (let* ((len (&BufferedReader-read-varint* buf))
         (buf (&BufferedReader-delimit buf len)))
    (read-e buf)))

(defwriter-ext (write-delimited* buf obj write-e)
  (let (tmpbuf (open-buffered-writer #f))
    (write-e tmpbuf obj)
    (let* ((chunks (get-buffer-output-chunks tmpbuf))
           (len (chunks-length chunks)))
    (&BufferedWriter-write-varint* buf len)
    (for-each (cut &BufferedWriter-write buf <>)
              chunks))))

(defreader-ext (read-delimited-string* buf)
  (let* ((len (&BufferedReader-read-varint* buf))
         (buf (&BufferedReader-delimit buf len))
         (str (make-string len)))
    (&BufferedReader-read-string buf str 0 len len)
    str))

(defwriter-ext (write-delimited-string* buf str)
  (let (len (string-utf8-length str))
    (&BufferedWriter-write-varint* buf len)
    (&BufferedWriter-write-string buf str)))

(defreader-ext (read-delimited-bytes* buf)
  (let* ((len (&BufferedReader-read-varint* buf))
         (bytes (make-u8vector len)))
    (&BufferedReader-read buf bytes)
    bytes))

(defwriter-ext (write-delimited-bytes* buf bytes)
  (&BufferedWriter-write-varint* buf (u8vector-length bytes))
  (&BufferedWriter-write buf bytes))

;; booleans
(defreader-ext (read-boolean buf)
  (not (zero? (&BufferedReader-read-u8 buf))))

(defwriter-ext (write-boolean buf x)
  (&BufferedWriter-write-u8 buf (if x 1 0)))

;; numbers
;; protobuf varints are not the same as standard varints; go figure.
(defreader-ext (read-varint* buf)
  (def (complement r)
    (if (< r 2^63)
      r
      (- r 2^64)))

  (let lp ((shift 0) (r 0))
    (let* ((bits (&BufferedReader-read-u8! buf))
           (limb (fxand bits #x7f))
           (r (bitwise-ior (arithmetic-shift limb shift) r)))
      (if (fxzero? (fxand bits #x80))
        (complement r)
        (lp (fx+ shift 7) r)))))

(defwriter-ext (write-varint* buf x)
  (def (complement r)
    (if (< r 0)
      (+ 2^64 r)
      r))

  (let lp ((bits (complement x)))
    (if (< bits 128)
      (&BufferedWriter-write-u8 buf bits)
      (let* ((limb (bitwise-and bits #x7f))
             (obits (fxior limb #x80)))
        (&BufferedWriter-write-u8 buf obits)
        (lp (arithmetic-shift bits -7))))))

(defreader-ext (read-varint-zigzag* buf)
  (let (y (&BufferedReader-read-varint* buf))
    (if (even? y)
      (quotient y 2)
      (- (quotient (1+ y) 2)))))

(defwriter-ext (write-varint-zigzag* buf x)
  (let (y (if (negative? x)
            (- (+ (* x 2) 1))
            (* x 2)))
    (&BufferedWriter-write-varint* buf y)))

(def (bio-read-fixed-uint buf n)
  (let lp ((i 0) (bits 0))
    (if (fx< i n)
      (let (byte (&BufferedReader-read-u8 buf))
        (when (eof-object? byte)
          (raise-io-error 'bio-read-sfixed32 "Premature end of input" buf))
        (lp (fx+ i 1)
            (bitwise-ior bits (arithmetic-shift byte (fx* 8 i)))))
      bits)))

(def (bio-write-fixed-uint buf x n)
  (let lp ((i 0) (bits x))
    (when (fx< i n)
      (&BufferedWriter-write-u8 buf (bitwise-and bits #xff))
      (lp (fx+ i 1) (arithmetic-shift bits -8)))))

(defreader-ext (read-fixed32 buf)
  (bio-read-fixed-uint buf 4))

(defwriter-ext (write-fixed32 buf x)
  (bio-write-fixed-uint buf x 4))

(defreader-ext (read-sfixed32 buf)
  (let (x (bio-read-fixed-uint buf 4))
    (if (< x 2^31)
      x
      (- x 2^32))))

(defwriter-ext (write-sfixed32 buf x)
  (let (y (if (< x 0)
            (+ 2^32 x)
            x))
    (bio-write-fixed-uint buf y 4)))

(defreader-ext (read-fixed64 buf)
  (bio-read-fixed-uint buf 8))

(defwriter-ext (write-fixed64 buf x)
  (bio-write-fixed-uint buf x 8))

(defreader-ext (read-sfixed64 buf)
  (let (x (bio-read-fixed-uint buf 8))
    (if (< x 2^63)
      x
      (- x 2^64))))

(defwriter-ext (write-sfixed64 buf x)
  (let (y (if (< x 0)
            (+ 2^64 x)
            x))
    (bio-write-fixed-uint buf y 8)))

(defreader-ext (read-float buf)
  (bio-read-float-bytes buf 4 bytes->float))

(defwriter-ext (write-float buf x)
  (bio-write-float-bytes buf x 4 float->bytes!))

(defreader-ext (read-double buf)
  (bio-read-float-bytes buf 8 bytes->double))

(defwriter-ext (write-double buf x)
  (bio-write-float-bytes buf x 8 double->bytes!))

(def (bio-read-float-bytes buf n bytes->flonum)
  (let (bytes (make-u8vector n))
    (&BufferedReader-read buf bytes)
    (bytes->flonum bytes)))

(def (bio-write-float-bytes buf x n flonum->bytes!)
  (let (bytes (make-u8vector n))
    (flonum->bytes! x bytes)
    (&BufferedWriter-write buf bytes)))

(begin-ffi (bytes->float float->bytes! bytes->double double->bytes!)
  (c-declare #<<END-C
static float ffi_read_float_bytes (___SCMOBJ bytes)
{
 return *(float*)(U8_DATA (bytes));
}

static void ffi_write_float_bytes (float val, ___SCMOBJ bytes)
{
 *(float*)(U8_DATA (bytes)) = val;
}

static double ffi_read_double_bytes (___SCMOBJ bytes)
{
 return *(double*)(U8_DATA (bytes));
}

static void ffi_write_double_bytes (double val, ___SCMOBJ bytes)
{
 *(double*)(U8_DATA (bytes)) = val;
}
END-C
)

(define-c-lambda bytes->float (scheme-object) float
  "ffi_read_float_bytes")
(define-c-lambda float->bytes! (float scheme-object) void
  "ffi_write_float_bytes")
(define-c-lambda bytes->double (scheme-object) double
  "ffi_read_double_bytes")
(define-c-lambda double->bytes! (double scheme-object) void
  "ffi_write_double_bytes"))
