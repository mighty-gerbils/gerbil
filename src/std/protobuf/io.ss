;;; -*- Gerbil -*-
;;; © vyzo
;;; Protobuf I/O
package: std/protobuf

(import :gerbil/gambit/bits
        :std/net/bio
        :std/text/utf8
        :std/error
        )
(export #t)

(defrules XXX ()
  (_ (error "XXX Implement me!")))

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
  XXX
  )

(def (write-delimited x bio-write-e (port (current-output-port)))
  XXX
  )


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
  ;; TODO: use subbuffers when they get implemented
  (let* ((bytes (bio-read-delimited-bytes buf))
         (buf (open-input-buffer bytes)))
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
  ;; TODO: use subbuffers when they get implemented
  (let* ((bytes (bio-read-delimited-bytes buf))
         (buf (open-input-buffer bytes)))
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
  ;; TODO: use subbuffers when they get implemented
  (let* ((len (bio-read-varint buf))
         (bytes (make-u8vector len))
         (_ (bio-read-bytes bytes buf))
         (buf (open-input-buffer bytes)))
    (bio-read-e buf)))

(def (bio-write-delimited x bio-write-e buf)
  (let (tmpbuf (open-serializer-output-buffer))
    (bio-write-e x tmpbuf)
    (bio-write-varint (chunked-output-length tmpbuf) buf)
    (for-each (cut bio-write-bytes <> buf)
              (chunked-output-chunks tmpbuf))))

(def (bio-read-delimited-string buf)
  ;; TODO: use bio-input-utf8-decode when it gets streaming support
  (utf8->string (bio-read-delimited-bytes buf)))

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

;; varints
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

;; the protobuf number zoo
(def (bio-read-varint-zigzag buf)
  XXX
  )

(def (bio-write-varint-zigzag x buf)
  XXX
  )

(def (bio-read-uint32 buf)
  XXX
  )

(def (bio-write-uint32 x buf)
  XXX
  )

(def (bio-read-sint32 buf)
  XXX
  )

(def (bio-write-sint32 x buf)
  XXX
  )

(def (bio-read-uint64 buf)
  XXX
  )

(def (bio-write-uint64 x buf)
  XXX
  )

(def (bio-read-sint64 buf)
  XXX
  )

(def (bio-write-sint64 x buf)
  XXX
  )

(def (bio-read-float buf)
  XXX
  )

(def (bio-write-float x buf)
  XXX
  )

(def (bio-read-double buf)
  XXX
  )

(def (bio-write-double x buf)
  XXX
  )
