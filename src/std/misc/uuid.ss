;;; -*- Gerbil -*-
;;; (C) vyzo
;;; UUID utilities
package: std/misc

(import :gerbil/gambit/hvectors
        :std/crypto/digest
        :std/crypto/etc
        )
(export UUID uuid->u8vector uuid->symbol)

(defstruct uuid (bytes sym))

(def (UUID obj)
  XXX
  )

(def (uuid->u8vector uuid)
  (uuid-bytes uuid))

(def (uuid->symbol uuid)
  (cond
   ((uuid-sym uuid) => values)
   (else
    XXX
    )))

  


  