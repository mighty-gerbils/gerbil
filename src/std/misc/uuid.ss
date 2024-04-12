;;; -*- Gerbil -*-
;;; (C) vyzo
;;; UUID utilities

(import :std/error
        :std/pregexp
        :std/text/hex
        :std/text/utf8
        (only-in :std/crypto/digest md5)
        (only-in :std/crypto/etc random-bytes!)
        (only-in :gerbil/gambit equal?-hash))

(export UUID uuid-length uuid::t make-uuid uuid
        uuid? uuid=? uuid-hash
        uuid->u8vector u8vector->uuid uuid->string string->uuid
        random-uuid)

(def uuid-length 16)

(defstruct uuid (bytes str)
  final: #t equal: (bytes))

(def (uuid=? a b)
  (equal? (uuid-bytes a) (uuid-bytes b)))

(def (uuid-hash uuid)
  (equal?-hash (uuid-bytes uuid)))

(def (UUID obj)
  (cond
   ((uuid? obj) obj)
   ((string? obj)
    (text->uuid obj))
   ((symbol? obj)
    (text->uuid (symbol->string obj)))
   ((u8vector? obj)
    (u8vector->uuid obj))
   (else
    (raise-bad-argument UUID "uuid identifier" obj))))

(def (random-uuid)
  (let (bytes (make-u8vector uuid-length))
    (random-bytes! bytes)
    (u8vector-set! bytes 6 (bitwise-ior (bitwise-and (u8vector-ref bytes 6) #x0f) #x40))
    (u8vector-set! bytes 8 (bitwise-ior (bitwise-and (u8vector-ref bytes 8) #x3f) #x80))
    (make-uuid bytes #f)))

(def (content-uuid str)
  (let* ((bytes (string->utf8 str))
         (hash (md5 bytes)))
    (make-uuid hash #f)))

(def uuid-re
  (pregexp "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"))

(def uuid-re-capture
  (pregexp "([0-9a-fA-F]{8})-([0-9a-fA-F]{4})-([0-9a-fA-F]{4})-([0-9a-fA-F]{4})-([0-9a-fA-F]{12})"))

(def (text->uuid str)
  (if (pregexp-match uuid-re str)
    (string->uuid str)
    (content-uuid str)))

(def (u8vector->uuid u8v)
  (unless (##fx= (u8vector-length u8v) uuid-length)
    (raise-bad-argument u8vector->uuid "u8vector length of UUID lenth" u8v uuid-length))
  (make-uuid u8v #f))

(def (uuid->u8vector uuid)
  (uuid-bytes uuid))

(def (string->uuid str)
  (match (pregexp-match uuid-re-capture str)
    ([_ a b c d e]
     (make-uuid
      (u8vector-append
       (hex-decode a)
       (hex-decode b)
       (hex-decode c)
       (hex-decode d)
       (hex-decode e))
      str))
    (else
     (raise-bad-argument string->uuid "uuid string" str))))

(def (uuid->string uuid)
  (cond
   ((uuid-str uuid))
   (else
    (let* ((bytes (uuid-bytes uuid))
           (a (hex-encode bytes 0 4))
           (b (hex-encode bytes 4 6))
           (c (hex-encode bytes 6 8))
           (d (hex-encode bytes 8 10))
           (e (hex-encode bytes 10 16))
           (str (string-append a "-" b "-" c "-" d "-" e)))
      (set! (uuid-str uuid) str)
      str))))
