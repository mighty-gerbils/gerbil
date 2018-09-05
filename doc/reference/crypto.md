# Cryptography

Cryptography based on libcrypto.

::: tip usage
(import :std/crypto)
:::

## Digests

### make-digest
::: tip usage
```
(make-digest ...)
```
:::

Please document me!

### digest?
::: tip usage
```
(digest? ...)
```
:::

Please document me!

### digest-update!
::: tip usage
```
(digest-update! ...)
```
:::

Please document me!

### digest-update*
::: tip usage
```
(digest-update* ...)
```
:::

Please document me!

### digest-final!
::: tip usage
```
(digest-final! ...)
```
:::

Please document me!

### digest-size
::: tip usage
```
(digest-size ...)
```
:::

Please document me!

### digest-name
::: tip usage
```
(digest-name ...)
```
:::

Please document me!

### digest-copy
::: tip usage
```
(digest-copy ...)
```
:::

Please document me!

### md5
::: tip usage
```
(md5 ...)
```
:::

Please document me!

### sha1
::: tip usage
```
(sha1 ...)
```
:::

Please document me!

### sha224
::: tip usage
```
(sha224 ...)
```
:::

Please document me!

### sha256
::: tip usage
```
(sha256 ...)
```
:::

Please document me!

### sha384
::: tip usage
```
(sha384 ...)
```
:::

Please document me!

### whirlpool
::: tip usage
```
(whirlpool ...)
```
:::

Please document me!

### ripemd160
::: tip usage
```
(ripemd160 ...)
```
:::

Please document me!


### Digest Objects
```
digest::whirlpool
make-whirlpool-digest
whirlpool-digest?

digest::ripemd160
make-ripemd160-digest
ripemd160-digest?

digest::sha512
make-sha512-digest
sha512-digest?
sha512

digest::sha384
make-sha384-digest
sha384-digest?

digest::sha256
make-sha256-digest
sha256-digest?

digest::sha224
make-sha224-digest
sha224-digest?

digest::sha1
make-sha1-digest
sha1-digest?

digest::md5
make-md5-digest
md5-digest?

```

## Ciphers

### cipher
::: tip usage
```
(cipher ...)
```
:::

Please document me!

### make-cipher
::: tip usage
```
(make-cipher ...)
```
:::

Please document me!

### cipher?
::: tip usage
```
(cipher? ...)
```
:::

Please document me!

### cipher-type
::: tip usage
```
(cipher-type ...)
```
:::

Please document me!

### cipher-ctx
::: tip usage
```
(cipher-ctx ...)
```
:::

Please document me!

### cipher-context
::: tip usage
```
(cipher-context ...)
```
:::

Please document me!

### cipher-name
::: tip usage
```
(cipher-name ...)
```
:::

Please document me!

### cipher-block-size
::: tip usage
```
(cipher-block-size ...)
```
:::

Please document me!

### cipher-key-length
::: tip usage
```
(cipher-key-length ...)
```
:::

Please document me!

### cipher-iv-length
::: tip usage
```
(cipher-iv-length ...)
```
:::

Please document me!

### cipher-copy
::: tip usage
```
(cipher-copy ...)
```
:::

Please document me!


### Cipher Objects
```
cipher::rc4
make-rc4-cipher
rc4-cipher?

cipher::bf-ofb
make-bf-ofb-cipher
bf-ofb-cipher?
cipher::bf-cfb
make-bf-cfb-cipher
bf-cfb-cipher?
cipher::bf-cbc
make-bf-cbc-cipher
bf-cbc-cipher?
cipher::bf-ecb
make-bf-ecb-cipher
bf-ecb-cipher?

cipher::cast5-ofb
make-cast5-ofb-cipher
cast5-ofb-cipher?
cipher::cast5-cfb
make-cast5-cfb-cipher
cast5-cfb-cipher?
cipher::cast5-cbc
make-cast5-cbc-cipher
cast5-cbc-cipher?
cipher::cast5-ecb
make-cast5-ecb-cipher
cast5-ecb-cipher?

cipher::camellia-256-ofb
make-camellia-256-ofb-cipher
camellia-256-ofb-cipher?
cipher::camellia-256-cfb
make-camellia-256-cfb-cipher
camellia-256-cfb-cipher?
cipher::camellia-256-cbc
make-camellia-256-cbc-cipher
camellia-256-cbc-cipher?
cipher::camellia-256-ecb
make-camellia-256-ecb-cipher
camellia-256-ecb-cipher?
cipher::camellia-192-ofb
make-camellia-192-ofb-cipher
camellia-192-ofb-cipher?
cipher::camellia-192-cfb
make-camellia-192-cfb-cipher
camellia-192-cfb-cipher?
cipher::camellia-192-cbc
make-camellia-192-cbc-cipher
camellia-192-cbc-cipher?
cipher::camellia-192-ecb
make-camellia-192-ecb-cipher
camellia-192-ecb-cipher?
cipher::camellia-128-ofb
make-camellia-128-ofb-cipher
camellia-128-ofb-cipher?
cipher::camellia-128-cfb
make-camellia-128-cfb-cipher
camellia-128-cfb-cipher?
cipher::camellia-128-cbc
make-camellia-128-cbc-cipher
camellia-128-cbc-cipher?
cipher::camellia-128-ecb
make-camellia-128-ecb-cipher
camellia-128-ecb-cipher?

cipher::aes-256-xts
make-aes-256-xts-cipher
aes-256-xts-cipher?
cipher::aes-256-gcm
make-aes-256-gcm-cipher
aes-256-gcm-cipher?
cipher::aes-256-ccm
make-aes-256-ccm-cipher
aes-256-ccm-cipher?
cipher::aes-256-ctr
make-aes-256-ctr-cipher
aes-256-ctr-cipher?
cipher::aes-256-ofb
make-aes-256-ofb-cipher
aes-256-ofb-cipher?
cipher::aes-256-cfb
make-aes-256-cfb-cipher
aes-256-cfb-cipher?
cipher::aes-256-cbc
make-aes-256-cbc-cipher
aes-256-cbc-cipher?
cipher::aes-256-ecb
make-aes-256-ecb-cipher
aes-256-ecb-cipher?
cipher::aes-192-gcm
make-aes-192-gcm-cipher
aes-192-gcm-cipher?
cipher::aes-192-ccm
make-aes-192-ccm-cipher
aes-192-ccm-cipher?
cipher::aes-192-ctr
make-aes-192-ctr-cipher
aes-192-ctr-cipher?
cipher::aes-192-ofb
make-aes-192-ofb-cipher
aes-192-ofb-cipher?
cipher::aes-192-cfb
make-aes-192-cfb-cipher
aes-192-cfb-cipher?
cipher::aes-192-cbc
make-aes-192-cbc-cipher
aes-192-cbc-cipher?
cipher::aes-192-ecb
make-aes-192-ecb-cipher
aes-192-ecb-cipher?
cipher::aes-128-xts
make-aes-128-xts-cipher
aes-128-xts-cipher?
cipher::aes-128-gcm
make-aes-128-gcm-cipher
aes-128-gcm-cipher?
cipher::aes-128-ccm
make-aes-128-ccm-cipher
aes-128-ccm-cipher?
cipher::aes-128-ctr
make-aes-128-ctr-cipher
aes-128-ctr-cipher?
cipher::aes-128-ofb
make-aes-128-ofb-cipher
aes-128-ofb-cipher?
cipher::aes-128-cfb
make-aes-128-cfb-cipher
aes-128-cfb-cipher?
cipher::aes-128-cbc
make-aes-128-cbc-cipher
aes-128-cbc-cipher?
cipher::aes-128-ecb
make-aes-128-ecb-cipher
aes-128-ecb-cipher?
```

## Encryption and Decryption

### encrypt
::: tip usage
```
(encrypt ...)
```
:::

Please document me!

### encrypt-u8vector
::: tip usage
```
(encrypt-u8vector ...)
```
:::

Please document me!

### encrypt-u8vector!
::: tip usage
```
(encrypt-u8vector! ...)
```
:::

Please document me!

### encrypt-init!
::: tip usage
```
(encrypt-init! ...)
```
:::

Please document me!

### encrypt-update!
::: tip usage
```
(encrypt-update! ...)
```
:::

Please document me!

### encrypt-final!
::: tip usage
```
(encrypt-final! ...)
```
:::

Please document me!

### decrypt
::: tip usage
```
(decrypt ...)
```
:::

Please document me!

### decrypt-u8vector
::: tip usage
```
(decrypt-u8vector ...)
```
:::

Please document me!

### decrypt-u8vector!
::: tip usage
```
(decrypt-u8vector! ...)
```
:::

Please document me!

### decrypt-init!
::: tip usage
```
(decrypt-init! ...)
```
:::

Please document me!

### decrypt-update!
::: tip usage
```
(decrypt-update! ...)
```
:::

Please document me!

### decrypt-final!
::: tip usage
```
(decrypt-final! ...)
```
:::

Please document me!


## HMAC


### hmac
::: tip usage
```
(hmac ...)
```
:::

Please document me!

### hmac?
::: tip usage
```
(hmac? ...)
```
:::

Please document me!

### make-hmac
::: tip usage
```
(make-hmac ...)
```
:::

Please document me!

### hmac-init!
::: tip usage
```
(hmac-init! ...)
```
:::

Please document me!

### hmac-update!
::: tip usage
```
(hmac-update! ...)
```
:::

Please document me!

### hmac-final!
::: tip usage
```
(hmac-final! ...)
```
:::

Please document me!

### hmac-digest
::: tip usage
```
(hmac-digest ...)
```
:::

Please document me!

### hmac-md5
::: tip usage
```
(hmac-md5 ...)
```
:::

Please document me!

### hmac-sha1
::: tip usage
```
(hmac-sha1 ...)
```
:::

Please document me!

### hmac-sha256
::: tip usage
```
(hmac-sha256 ...)
```
:::

Please document me!

### hmac-sha384
::: tip usage
```
(hmac-sha384 ...)
```
:::

Please document me!

### hmac-sha512
::: tip usage
```
(hmac-sha512 ...)
```
:::

Please document me!


## DH Key Exchange


### DH-generate-key
::: tip usage
```
(DH-generate-key ...)
```
:::

Please document me!

### DH-get-2048-256
::: tip usage
```
(DH-get-2048-256 ...)
```
:::

Please document me!

### DH-get-2048-224
::: tip usage
```
(DH-get-2048-224 ...)
```
:::

Please document me!

### DH-get-1024-160
::: tip usage
```
(DH-get-1024-160 ...)
```
:::

Please document me!

### DH-compute-key
::: tip usage
```
(DH-compute-key ...)
```
:::

Please document me!

### DH-pub-key
::: tip usage
```
(DH-pub-key ...)
```
:::

Please document me!


## etc


### libcrypto-error?
::: tip usage
```
(libcrypto-error? ...)
```
:::

Please document me!

### random-bytes
::: tip usage
```
(random-bytes ...)
```
:::

Please document me!

### random-bytes!
::: tip usage
```
(random-bytes! ...)
```
:::

Please document me!

### bytes-&gt;BN
::: tip usage
```
(bytes->BN ...)
```
:::

Please document me!

### BN-&gt;bytes
::: tip usage
```
(BN->bytes ...)
```
:::

Please document me!
