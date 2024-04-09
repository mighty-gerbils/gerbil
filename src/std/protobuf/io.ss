;;; -*- Gerbil -*-
;;; © vyzo
;;; Protobuf I/O

(import :gerbil/gambit
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
  (let (field (buf.read-varuint))
    (values
      (arithmetic-shift field -3)
      (byte->tag (bitwise-and field #b111)))))

(defwriter-ext (write-field buf x tag)
  (buf.write-varuint (bitwise-ior (arithmetic-shift x 3) (tag->byte tag))))

(def (byte->tag x)
  (case x
    ((0) 'VARINT)
    ((1) 'FIXED64)
    ((2) 'VARLEN)
    ((5) 'FIXED32)
    (else
     (raise-io-error protobuf "Unknown type tag" x))))

(def (tag->byte x)
  (case x
    ((VARINT)  0)
    ((FIXED64) 1)
    ((VARLEN)  2)
    ((FIXED32) 5)
    (else
     (raise-io-error protobuf "Unknown type tag" x))))


;; unknown field skipping
(defreader-ext (skip-unknown buf tag)
  (case tag
    ((VARINT)
     (buf.skip-varint))
    ((FIXED64)
     (buf.skip 8))
    ((VARLEN)
     (buf.skip (buf.read-varuint)))
    ((FIXED32)
     (buf.skip 4))
    (else
     (raise-io-error protobuf "Unknown type tag" tag))))

(defreader-ext (skip-varint buf)
  (let lp ()
    (let (byte (buf.read-u8))
      (when (eof-object? byte)
        (raise-premature-end-of-input BufferedReader-skip-varint))
      (unless (fx= (fxand byte #x80) 0)
        (lp)))))

;; packed encoding
(defreader-ext (read-packed buf read-e)
  (let* ((len (buf.read-varuint))
         (buf (buf.delimit len)))
    (using (buf :- BufferedReader)
      (let lp ((r []))
        (if (eof-object? (buf.peek-u8))
          (reverse r)
          (lp (cons (read-e buf) r)))))))

(defwriter-ext (write-packed buf xs write-e)
  (let (tmpbuf (open-buffered-writer #f))
    (for-each (cut write-e tmpbuf <>) xs)
    (let* ((chunks (get-buffer-output-chunks tmpbuf))
           (len (chunks-length chunks)))
      (buf.write-varuint len)
      (for-each (cut buf.write <>)
                chunks))))

(def (chunks-length chunks)
  (foldl (lambda (c r) (fx+ (u8vector-length c) r)) 0 chunks))

;; map encoding
(defreader-ext (read-key-value-pair buf read-key-e read-value-e)
  (let* ((len (buf.read-varuint))
         (buf (buf.delimit len)))
    (using (buf :- BufferedReader)
      (let lp ((key #f) (value #f))
        (if (eof-object? (buf.peek-u8))
          (cons key value)
          (let ((values field tag) (buf.read-field))
            (case field
              ((1)
               (lp (read-key-e buf) value))
              ((2)
               (lp key (read-value-e buf)))
              (else
               (buf.skip-unknown tag)
               (lp key value)))))))))

(defwriter-ext (write-key-value-pair buf k v ktag write-key-e vtag write-value-e)
  (let* ((tmpbuf (open-buffered-writer #f))
         (tmpbuf-write
          (using (tmpbuf :- BufferedWriter)
            (lambda (field tag val write-e)
              (tmpbuf.write-field field tag)
              (write-e tmpbuf val)))))
    (tmpbuf-write 1 ktag k write-key-e)
    (tmpbuf-write 2 vtag v write-value-e)
    (let* ((chunks (get-buffer-output-chunks tmpbuf))
           (len (chunks-length chunks)))
      (buf.write-varuint len)
      (for-each (cut buf.write <>)
                chunks))))

;; length delimited objects
(defwriter-ext (write-delimited* buf obj write-e)
  (buf.write-delimited (cut write-e <> obj)))

;; booleans
(defreader-ext (read-boolean buf)
  (not (zero? (buf.read-u8))))

(defwriter-ext (write-boolean buf x)
  (buf.write-u8 (if x 1 0)))

;; numbers
;; protobuf varints are not the same as standard varints; go figure.
(defreader-ext (read-varint* buf)
  (def (complement r)
    (if (< r 2^63)
      r
      (- r 2^64)))

  (let lp ((shift 0) (r 0))
    (let* ((bits (buf.read-u8!))
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
      (buf.write-u8 bits)
      (let* ((limb (bitwise-and bits #x7f))
             (obits (fxior limb #x80)))
        (buf.write-u8 obits)
        (lp (arithmetic-shift bits -7))))))

(defreader-ext (read-varint-zigzag* buf)
  (let (y (buf.read-varint*))
    (if (even? y)
      (quotient y 2)
      (- (quotient (1+ y) 2)))))

(defwriter-ext (write-varint-zigzag* buf x)
  (let (y (if (negative? x)
            (- (+ (* x 2) 1))
            (* x 2)))
    (buf.write-varint* y)))

(def (bio-read-fixed-uint buf n)
  (using (buf :- BufferedReader)
    (let lp ((i 0) (bits 0))
      (if (fx< i n)
        (let (byte (buf.read-u8))
          (when (eof-object? byte)
            (raise-premature-end-of-input bio-read-sfixed32))
          (lp (fx+ i 1)
              (bitwise-ior bits (arithmetic-shift byte (fx* 8 i)))))
        bits))))

(def (bio-write-fixed-uint buf x n)
  (using (buf :- BufferedWriter)
    (let lp ((i 0) (bits x))
      (when (fx< i n)
        (buf.write-u8 (bitwise-and bits #xff))
        (lp (fx+ i 1) (arithmetic-shift bits -8))))))

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
  (using (buf :- BufferedReader)
    (let (bytes (make-u8vector n))
      (buf.read bytes)
      (bytes->flonum bytes))))

(def (bio-write-float-bytes buf x n flonum->bytes!)
  (using (buf :- BufferedWriter)
    (let (bytes (make-u8vector n))
      (flonum->bytes! x bytes)
      (buf.write bytes))))

(begin-ffi (bytes->float float->bytes! bytes->double double->bytes!)
  (c-declare #<<END-C
static float ffi_pbio_read_float_bytes (___SCMOBJ bytes)
{
 return *(float*)(U8_DATA (bytes));
}

static void ffi_pbio_write_float_bytes (float val, ___SCMOBJ bytes)
{
 *(float*)(U8_DATA (bytes)) = val;
}

static double ffi_pbio_read_double_bytes (___SCMOBJ bytes)
{
 return *(double*)(U8_DATA (bytes));
}

static void ffi_pbio_write_double_bytes (double val, ___SCMOBJ bytes)
{
 *(double*)(U8_DATA (bytes)) = val;
}
END-C
)

(define-c-lambda bytes->float (scheme-object) float
  "ffi_pbio_read_float_bytes")
(define-c-lambda float->bytes! (float scheme-object) void
  "ffi_pbio_write_float_bytes")
(define-c-lambda bytes->double (scheme-object) double
  "ffi_pbio_read_double_bytes")
(define-c-lambda double->bytes! (double scheme-object) void
  "ffi_pbio_write_double_bytes"))
