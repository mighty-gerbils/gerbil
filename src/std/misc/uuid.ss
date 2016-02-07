;;; -*- Gerbil -*-
;;; (C) vyzo
;;; UUID utilities
package: std/misc

(import :gerbil/gambit/hvectors
        :std/crypto/digest
        :std/crypto/etc
        )
(export UUID uuid-length uuid::t make-uuid uuid?
        uuid->u8vector
        uuid->symbol
        random-uuid)

(def uuid-length 24)

(defstruct uuid (bytes symbol))

(def (UUID obj)
  XXX
  )

(def (uuid->u8vector uuid)
  (uuid-bytes uuid))

(def (uuid->symbol uuid)
  (cond
   ((uuid-symbol uuid) => values)
   (else
    XXX
    )))

(def (random-uuid)
  XXX
  )

  


  