# Cryptography

::: tip usage
(import :std/crypto)
:::

Cryptography based on libcrypto.

```
(import :std/crypto)

;; exports:

;; :std/crypto/etc
  random-bytes random-bytes!
  libcrypto-error?

;; :std/crypto/digest
  make-digest digest?
  digest-update! digest-update* digest-final!
  digest-size digest-name digest-copy
  md5 digest::md5 make-md5-digest md5-digest?
  sha1 digest::sha1 make-sha1-digest sha1-digest?
  sha224 digest::sha224 make-sha224-digest sha224-digest?
  sha256 digest::sha256 make-sha256-digest sha256-digest?
  sha384 digest::sha384 make-sha384-digest sha384-digest?
  sha512 digest::sha512 make-sha512-digest sha512-digest?
  ripemd160 digest::ripemd160 make-ripemd160-digest ripemd160-digest?
  whirlpool digest::whirlpool make-whirlpool-digest whirlpool-digest?

;; :std/crypto/cipher
  cipher make-cipher cipher? cipher-type cipher-ctx cipher-context
  cipher-name cipher-block-size cipher-key-length cipher-iv-length
  cipher-copy
  encrypt encrypt-u8vector encrypt-u8vector!
  encrypt-init!
  encrypt-update!
  encrypt-final!
  decrypt decrypt-u8vector decrypt-u8vector!
  decrypt-init!
  decrypt-update!
  decrypt-final!

  cipher::rc4 make-rc4-cipher rc4-cipher?

  ;; MODE = ecb cbc cfb ofb
  cipher::cast5-{MODE} make-cast5-{MODE}-cipher cast5-{MODE}-cipher?
  cipher::bf-{MODE} make-bf-{MODE}-cipher bf-{MODE}-cipher?

  ;; LEN = 128 192 256
  ;; MODE = ecb cbc cfb ofb ctr ccm gcm xts
  cipher::aes-{LEN}-{MODE} make-aes-{LEN}-{MODE}-cipher aes-{LEN}-{MODE}-cipher?

  ;; LEN = 128 192 256
  ;; MODE = ecb cbc cfb ofb
  cipher::camellia-{LEN}-{MODE} make-camellia-{LEN}-{MODE}-cipher camellia-{LEN}-{MODE}-cipher?

;; :std/crypto/dh
  DH-generate-key DH-compute-key DH-pub-key
  DH-get-1024-160 DH-get-2048-224 DH-get-2048-256

;; :std/crypto/bn
  BN->bytes bytes->BN

```
