;;; -*- Gerbil -*-
;;; © vyzo
;;; Protobuf I/O
package: std/protobuf

(import :std/net/bio
        )
(export #t)

(defrules XXX ()
  (_ (error "XXX Implement me!")))

;;; marshalling
(def (marshal obj bio-write-e)
  XXX
  )

(def (unmarshal bytes bio-read-e)
  XXX
  )

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
  XXX
  )

(def (bio-write-field x tag buf)
  XXX
  )

;; unknown field skipping
(def (bio-skip-input-unknown tag buf)
  XXX
  )

;; packed encoding
(def (bio-read-packed bio-read-e buf)
  XXX
  )

(def (bio-write-packed xs bio-write-e buf)
  (let (tmpbuf (open-serializer-output-buffer))
    (for-each (cut bio-write-e <> tmpbuf) xs)
    (bio-write-varint (chunked-output-length tmpbuf) buf)
    (for-each (cut bio-write-bytes <> buf)
              (chunked-output-chunks tmpbuf))))

;; map encoding
(def (bio-read-key-value-pair bio-read-key-e bio-read-value-e buf)
  XXX
  )

(def (bio-write-key-value-pair k v ktag bio-write-key-e vtag bio-write-value-e buf)
  (let* ((tmpbuf (open-serializer-output-buffer))
         (tmpbuf-write
          (lambda (field tag val bio-write-e)
            (bio-write-field field tag tmpbuf)
            (case tag
              ((VARLEN)
               (bio-write-delimited-bytes (marshal val bio-write-e) tmpbuf))
              (else
               (bio-write-e val tmpbuf))))))
    (tmpbuf-write 1 ktag k bio-write-key-e)
    (tmpbuf-write 2 vtag v bio-write-value-e)
    (bio-write-varint (chunked-output-length tmpbuf) buf)
    (for-each (cut bio-write-bytes <> buf)
              (chunked-output-chunks tmpbuf))))

;; length delimited objects
(def (bio-read-delimited bio-read-e buf)
  XXX
  )

(def (bio-write-delimited x bio-write-e buf)
  XXX
  )

(def (bio-read-delimited-string buf)
  XXX
  )

(def (bio-write-delimited-string x buf)
  XXX
  )

(def (bio-read-delimited-bytes buf)
  XXX
  )

(def (bio-write-delimited-bytes x buf)
  XXX
  )

;; booleans
(def (bio-read-boolean buf)
  (not (zero? (bio-read-varint buf))))

(def (bio-write-boolean x buf)
  (bio-write-varint (if x 1 0) buf))

;; varints
(def (bio-read-varint buf)
  XXX
  )

(def (bio-write-varint x buf)
  XXX
  )

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
