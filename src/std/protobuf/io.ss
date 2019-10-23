;;; -*- Gerbil -*-
;;; © vyzo
;;; Protobuf I/O

(import :gerbil/gambit/bits
        :gerbil/gambit/ports
        :std/foreign
        :std/net/bio
        :std/text/utf8
        :std/error)
(export #t)

;;; marshalling
(def (marshal obj bio-write-e)
  (let (buf (open-serializer-output-buffer))
    (bio-write-e obj buf)
    (chunked-output-u8vector buf)))

(def (unmarshal bytes bio-read-e)
  (let (buf (open-input-buffer bytes))
    (bio-read-e buf)))

;;; port i/o interface
(def (read-delimited bio-read-e (port (current-input-port)))
  (let* ((len (read-varuint port))
         (bytes (make-u8vector len))
         (rd (read-subu8vector bytes 0 len port))
         (_ (unless (fx= rd len)
              (raise-io-error 'read-delimited "Premature end of input" port rd)))
         (buf (open-input-buffer bytes)))
    (bio-read-e buf)))

(def (write-delimited x bio-write-e (port (current-output-port)))
  (let (buf (open-serializer-output-buffer))
    (bio-write-e x buf)
    (let (len (chunked-output-length buf))
      (write-varuint len port)
      (for-each (lambda (bytes) (write-subu8vector bytes 0 (u8vector-length bytes) port))
                (chunked-output-chunks buf)))))

(def (read-varuint port)
  (let lp ((shift 0) (r 0))
    (let* ((bits (read-u8 port))
           (_ (when (eof-object? bits)
                (raise-io-error 'read-varuint "Premature end of input" port)))
           (limb (##fxand bits #x7f))
           (r (bitwise-ior (arithmetic-shift limb shift) r)))
      (if (##fxzero? (##fxand bits #x80))
        r
        (lp (##fx+ shift 7) r)))))

(def (write-varuint x port)
  (let lp ((bits x))
    (if (< bits 128)
      (write-u8 bits port)
      (let* ((limb (bitwise-and bits #x7f))
             (obits (##fxior limb #x80)))
        (write-u8 obits port)
        (lp (arithmetic-shift bits -7))))))

;;; BIO interface

;; field encoding
(def (bio-read-field buf)
  (let (field (bio-read-varint buf))
    (values
      (arithmetic-shift field -3)
      (byte->tag (bitwise-and field #b111)))))

(def (bio-write-field x tag buf)
  (bio-write-varint (bitwise-ior (arithmetic-shift x 3) (tag->byte tag)) buf))

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
(def (bio-input-skip-unknown tag buf)
  (case tag
    ((VARINT)
     (bio-input-skip-varint buf))
    ((FIXED64)
     (bio-input-skip 8 buf))
    ((VARLEN)
     (bio-input-skip (bio-read-varint buf) buf))
    ((FIXED32)
     (bio-input-skip 4 buf))
    (else
     (error "Unknown type tag" tag))))

(def (bio-input-skip-varint buf)
  (let lp ()
    (let (byte (bio-read-u8 buf))
      (when (eof-object? byte)
        (raise-io-error 'bio-input-skip-varint "Premature end of input" buf))
      (unless (##fxzero? (##fxand byte #x80))
        (lp)))))

;; packed encoding
(def (bio-read-packed bio-read-e buf)
  (let* ((len (bio-read-varint buf))
         (buf (open-delimited-input-buffer buf len)))
    (let lp ((r []))
      (if (eof-object? (bio-peek-u8 buf))
        (reverse r)
        (lp (cons (bio-read-e buf) r))))))

(def (bio-write-packed xs bio-write-e buf)
  (let (tmpbuf (open-serializer-output-buffer))
    (for-each (cut bio-write-e <> tmpbuf) xs)
    (bio-write-varint (chunked-output-length tmpbuf) buf)
    (for-each (cut bio-write-bytes <> buf)
              (chunked-output-chunks tmpbuf))))

;; map encoding
(def (bio-read-key-value-pair bio-read-key-e bio-read-value-e buf)
  (let* ((len (bio-read-varint buf))
         (buf (open-delimited-input-buffer buf len)))
    (let lp ((key #f) (value #f))
      (if (eof-object? (bio-peek-u8 buf))
        (cons key value)
        (let ((values field tag) (bio-read-field buf))
          (case field
            ((1)
             (lp (bio-read-key-e buf) value))
            ((2)
             (lp key (bio-read-value-e buf)))
            (else
             (bio-input-skip-unknown tag buf)
             (lp key value))))))))

(def (bio-write-key-value-pair k v ktag bio-write-key-e vtag bio-write-value-e buf)
  (let* ((tmpbuf (open-serializer-output-buffer))
         (tmpbuf-write
          (lambda (field tag val bio-write-e)
            (bio-write-field field tag tmpbuf)
            (bio-write-e val tmpbuf))))
    (tmpbuf-write 1 ktag k bio-write-key-e)
    (tmpbuf-write 2 vtag v bio-write-value-e)
    (bio-write-varint (chunked-output-length tmpbuf) buf)
    (for-each (cut bio-write-bytes <> buf)
              (chunked-output-chunks tmpbuf))))

;; length delimited objects
(def (bio-read-delimited bio-read-e buf)
  (let* ((len (bio-read-varint buf))
         (buf (open-delimited-input-buffer buf len)))
    (bio-read-e buf)))

(def (bio-write-delimited x bio-write-e buf)
  (let (tmpbuf (open-serializer-output-buffer))
    (bio-write-e x tmpbuf)
    (bio-write-varint (chunked-output-length tmpbuf) buf)
    (for-each (cut bio-write-bytes <> buf)
              (chunked-output-chunks tmpbuf))))

(def (bio-read-delimited-string buf)
  (declare (not safe))
  (let* ((len (bio-read-varint buf))
         (buf (open-delimited-input-buffer buf len))
         (str (make-string len)))
    (let lp ((i 0))
      (if (eof-object? (bio-peek-u8 buf))
        (begin
          (string-shrink! str i)
          str)
        (let (char (bio-read-char buf))
          (string-set! str i char)
          (lp (fx1+ i)))))))

(def (bio-write-delimited-string x buf)
  (let (len (string-utf8-length x))
    (bio-write-varint len buf)
    (bio-write-string x buf)))

(def (bio-read-delimited-bytes buf)
  (let* ((len (bio-read-varint buf))
         (bytes (make-u8vector len)))
    (bio-read-bytes bytes buf)
    bytes))

(def (bio-write-delimited-bytes x buf)
  (bio-write-varint (u8vector-length x) buf)
  (bio-write-bytes x buf))

;; booleans
(def (bio-read-boolean buf)
  (not (zero? (bio-read-varint buf))))

(def (bio-write-boolean x buf)
  (bio-write-varint (if x 1 0) buf))

;; the protobuf number zoo
(def 2^31 (expt 2 31))
(def 2^32 (expt 2 32))
(def 2^63 (expt 2 63))
(def 2^64 (expt 2 64))

(def (bio-read-varint buf)
  (def (complement r)
    (if (< r 2^63)
      r
      (- r 2^64)))

  (let lp ((shift 0) (r 0))
    (let* ((bits (bio-read-u8 buf))
           (_ (when (eof-object? bits)
                (raise-io-error 'bio-read-varint "Premature end of input" buf)))
           (limb (##fxand bits #x7f))
           (r (bitwise-ior (arithmetic-shift limb shift) r)))
      (if (##fxzero? (##fxand bits #x80))
        (complement r)
        (lp (##fx+ shift 7) r)))))

(def (bio-write-varint x buf)
  (def (complement r)
    (if (< r 0)
      (+ 2^64 r)
      r))

  (let lp ((bits (complement x)))
    (if (< bits 128)
      (bio-write-u8 bits buf)
      (let* ((limb (bitwise-and bits #x7f))
             (obits (##fxior limb #x80)))
        (bio-write-u8 obits buf)
        (lp (arithmetic-shift bits -7))))))

(def (bio-read-varint-zigzag buf)
  (let (y (bio-read-varint buf))
    (if (even? y)
      (quotient y 2)
      (- (quotient (1+ y) 2)))))

(def (bio-write-varint-zigzag x buf)
  (let (y (if (negative? x)
            (- (+ (* x 2) 1))
            (* x 2)))
    (bio-write-varint y buf)))

(def (bio-read-fixed-uint n buf)
  (let lp ((i 0) (bits 0))
    (if (##fx< i n)
      (let (byte (bio-read-u8 buf))
        (when (eof-object? byte)
          (raise-io-error 'bio-read-sfixed32 "Premature end of input" buf))
        (lp (##fx+ i 1)
            (bitwise-ior bits (arithmetic-shift byte (##fx* 8 i)))))
      bits)))

(def (bio-write-fixed-uint x n buf)
  (let lp ((i 0) (bits x))
    (when (##fx< i n)
      (bio-write-u8 (bitwise-and bits #xff) buf)
      (lp (##fx+ i 1) (arithmetic-shift bits -8)))))

(def (bio-read-fixed32 buf)
  (bio-read-fixed-uint 4 buf))

(def (bio-write-fixed32 x buf)
  (bio-write-fixed-uint x 4 buf))

(def (bio-read-sfixed32 buf)
  (let (y (bio-read-fixed-uint 4 buf))
    (if (< y 2^31)
      y
      (- y 2^32))))

(def (bio-write-sfixed32 x buf)
  (let (y (if (< x 0)
            (+ 2^32 x)
            x))
    (bio-write-fixed-uint y 4 buf)))

(def (bio-read-fixed64 buf)
  (bio-read-fixed-uint 8 buf))

(def (bio-write-fixed64 x buf)
  (bio-write-fixed-uint x 8 buf))

(def (bio-read-sfixed64 buf)
  (let (y (bio-read-fixed-uint 8 buf))
    (if (< y 2^63)
      y
      (- y 2^64))))

(def (bio-write-sfixed64 x buf)
  (let (y (if (< x 0)
            (+ 2^64 x)
            x))
    (bio-write-fixed-uint y 8 buf)))

(def (bio-read-float buf)
  (bio-read-float-bytes 4 bytes->float buf))

(def (bio-write-float x buf)
  (bio-write-float-bytes x 4 float->bytes! buf))

(def (bio-read-double buf)
  (bio-read-float-bytes 8 bytes->double buf))

(def (bio-write-double x buf)
  (bio-write-float-bytes x 8 double->bytes! buf))

(def (bio-read-float-bytes n bytes->flonum buf)
  (let (bytes (make-u8vector n))
    (bio-read-bytes bytes buf)
    (bytes->flonum bytes)))

(def (bio-write-float-bytes x n flonum->bytes! buf)
  (let (bytes (make-u8vector n))
    (flonum->bytes! x bytes)
    (bio-write-bytes bytes buf)))

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
