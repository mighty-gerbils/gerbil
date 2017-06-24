;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std libcrypto interface
package: std

(import (only-in :std/crypto/etc random-bytes random-bytes! libcrypto-error?)
        :std/crypto/digest
        :std/crypto/cipher
        :std/crypto/dh
        :std/crypto/bn)
(export (import: :std/crypto/etc
                 :std/crypto/digest
                 :std/crypto/cipher
                 :std/crypto/dh
                 :std/crypto/bn))
