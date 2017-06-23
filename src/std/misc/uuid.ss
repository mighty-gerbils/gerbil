;;; -*- Gerbil -*-
;;; (C) vyzo
;;; UUID utilities
package: std/misc

(import :std/pregexp
        :std/text/hex
        (only-in :std/crypto/digest md5)
        (only-in :std/crypto/etc random-bytes!)
        (only-in :gerbil/gambit/hash equal?-hash))

(export UUID uuid-length uuid::t make-uuid
        uuid? uuid=?
        uuid-hash
        uuid->u8vector
        uuid->symbol
        random-uuid)

(def uuid-length 16)

(defstruct uuid (bytes symbol)
  id: std/text#uuid::t)

(def (uuid=? a b)
  (equal? (uuid-bytes a) (uuid-bytes b)))

(def (u8vector->uuid bytes)
  (if (fx= (u8vector-length bytes) uuid-length)
    (make-uuid bytes #f)
    (let (bytes (md5 bytes))
      (make-uuid (subu8vector bytes 0 uuid-length) #f))))

(def uuid-re
  (pregexp "[0-9a-z]{8}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{12}"))

(def uuid-re-capture
  (pregexp "([0-9a-z]{8})-([0-9a-z]){4}-([0-9a-z]{4})-([0-9a-z]{4})-([0-9a-z]{12})"))

(def (uuid-string->uuid str (sym #f))
  (with ([_ a b c d e] (pregexp-match uuid-re-capture str))
    (make-uuid
     (u8vector-append
      (hex-decode a)
      (hex-decode b)
      (hex-decode c)
      (hex-decode d)
      (hex-decode e))
     sym)))

(def (UUID obj)
  (cond
   ((uuid? obj) obj)
   ((symbol? obj)
    (let (str (symbol->string obj))
      (if (pregexp-match uuid-re str)
        (uuid-string->uuid str obj)
        (u8vector->uuid (string->bytes str)))))
   ((string? obj)
    (if (pregexp-match uuid-re obj)
      (uuid-string->uuid obj)
      (UUID (string->bytes obj))))
   ((u8vector? obj)
    (u8vector->uuid obj))
   (else
    (error "bad uuid identifier" obj))))

(def (uuid-hash uuid)
  (equal?-hash (uuid-bytes uuid)))

(def (uuid->u8vector uuid)
  (uuid-bytes uuid))

(def (uuid->symbol uuid)
  (cond
   ((uuid-symbol uuid) => values)
   (else
    (let* ((bytes (uuid-bytes uuid))
           (a (hex-encode bytes 0 4))
           (b (hex-encode bytes 4 6))
           (c (hex-encode bytes 6 8))
           (d (hex-encode bytes 8 10))
           (e (hex-encode bytes 10 16))
           (str (string-append a "-" b "-" c "-" d "-" e))
           (sym (string->symbol str)))
      (set! (uuid-symbol uuid) sym)
      sym))))

(def (random-uuid)
  (let (bytes (make-u8vector uuid-length))
    (random-bytes! bytes)
    (make-uuid bytes #f)))
