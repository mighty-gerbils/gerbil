;;; -*- Gerbil -*-
;;; © vyzo
;;; did test
(import :std/test
        :std/crypto/pkey
        :std/encoding/hex
        ./did)
(export did-test)

(def did-test
  (test-suite "DID utilities"
    (test-case "test vector"
      (def test-pubkey-hex
        "b4c1edaa41b7147b312782e3c090334237194f107f9c2d15d654261da24b9e2c")
      (def test-pubkey-did
        "did:key:u7QG0we2qQbcUezEnguPAkDNCNxlPEH-cLRXWVCYdokueLA")

      (def test-pubkey-bytes
        (hex-decode test-pubkey-hex))
      (def test-pubkey
        (bytes->ed25519-public-key test-pubkey-bytes))

      (check (public-key->did test-pubkey)
             => test-pubkey-did)

      (check (public-key->bytes
              (did->public-key test-pubkey-did))
             => test-pubkey-bytes))
    (test-case "private key"
      (def test-privkey (keygen-ed25519))
      (def test-pubkey-bytes
        (private-key->public-bytes
         test-privkey))

      (check (public-key->bytes
              (did->public-key
               (private-key->did test-privkey)))
             => test-pubkey-bytes))))
