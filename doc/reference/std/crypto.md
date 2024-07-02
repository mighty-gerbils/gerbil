# Cryptography

Cryptography based on libcrypto.

::: tip usage
(import :std/crypto)
:::

## Digests

::: tip Examples:
```scheme
(import :std/crypto
        (only-in :std/text/hex hex-encode))

(let ((d (make-digest digest::sha256)))
  (digest-update! d (@bytes "Hello Gerbil"))
  (hex-encode (digest-final! d)))
;; => "b202f46d2ef4fc97f3628d6619b50911bc09c29550102b2c0d3976b8ad33f204"

(hex-encode (sha256 (@bytes "Hello Gerbil")))
;; => "b202f46d2ef4fc97f3628d6619b50911bc09c29550102b2c0d3976b8ad33f204"
```
:::

### make-digest
```scheme
(make-digest type) => digest
```

Create a new digest using the given type of cryptographic hash function.

#### Available cryptographic hash functions

* `digest::blake2b512`
* `digest::blake2s256`
* `digest::keccak256`
* `digest::md5`
* `digest::ripemd160`
* `digest::sha1`
* `digest::sha224`
* `digest::sha256`
* `digest::sha3_224`
* `digest::sha3_256`
* `digest::sha3_384`
* `digest::sha3_512`
* `digest::sha384`
* `digest::sha512`
* `digest::shake128`
* `digest::shake256`
* `digest::whirlpool`

### digest?
```scheme
(digest? var) => :boolean
```

Test if variable is a digest.

### digest-update!
```scheme
(digest-update! digest bytes (start #f) (end #f)) => :fixnum
```

Update a digest object. Returns 1 for success and 0 for failure.

### digest-update*
```scheme
(digest-update* digest input (start #f) (end #f)) => :fixnum
```

Like `digest-update!`, but uses `call-with-binary-input` to accept either a `u8vector`, `string` or `input-port`.

### digest-final!
```scheme
(digest-final! digest (bytes #f)) => :u8vector
```

Finalize the digest and extract the hash from the digest.
The digest will not longer be usable after finalization.
Use `:std/text/hex#hex-encode` to convert to a hex string.

### digest-size
```scheme
(digest-size digest) => :fixnum
```

Returns the digest or block size in bytes or -1 for failure.

### digest-name
```scheme
(digest-name digest) => :string
```

Get the name of the cryptographic hash function by a digest or digest type.

```scheme
(digest-name digest::sha256)
;; => "SHA256"
(digest-name (make-digest digest::sha256))
;; => "SHA256"
```

### digest-copy
```scheme
(digest-copy digest) => digest
```

Create a new digest that is a copy of an existing.
This is useful if large amounts of data are to be hashed which only differ in the last few bytes.

### md5
```scheme
(md5 in) => :u8vector
```

Convenience function to hash a `u8vector`, `string` or `input-port` and return the finalized bytes.

### sha1
```scheme
(sha1 in) => :u8vector
```

Convenience function to hash a `u8vector`, `string` or `input-port` and return the finalized bytes.

### sha224
```scheme
(sha224 in) => :u8vector
```

Convenience function to hash a `u8vector`, `string` or `input-port` and return the finalized bytes.

### sha256
```scheme
(sha256 in) => :u8vector
```

Convenience function to hash a `u8vector`, `string` or `input-port` and return the finalized bytes.

### sha384
```scheme
(sha384 in) => :u8vector
```

Convenience function to hash a `u8vector`, `string` or `input-port` and return the finalized bytes.

### whirlpool
```scheme
(whirlpool in) => :u8vector
```

Convenience function to hash a `u8vector`, `string` or `input-port` and return the finalized bytes.

### ripemd160
```scheme
(ripemd160 in) => :u8vector
```

Convenience function to hash a `u8vector`, `string` or `input-port` and return the finalized bytes.


### Digest Objects

Various symbols are created for each cryptographic hash function.
For instance, for "sha512" the following are created:

* Type for digest constructor :: `digest::sha512`
* Typed digest constructor :: `make-sha512-digest`
* Digest type predicate :: `sha512-digest?`
* Input to byte vector convenience function :: `sha512`

The list of cryptographic hash functions that follow this patterns are:
* `blake2s256`
* `keccak256`
* `md5`
* `ripemd160`
* `sha1`
* `sha224`
* `sha256`
* `sha3_224`
* `sha3_256`
* `sha3_384`
* `sha3_512`
* `sha384`
* `sha512`
* `shake128`
* `shake256`
* `whirlpool`

Example
```
digest::whirlpool
make-whirlpool-digest
whirlpool-digest?
whirlpool

digest::sha3_256
make-sha3_256-digest
sha3_256-digest?
sha3_256

digest::md5
make-md5-digest
md5-digest?
md5
```

## Ciphers

### cipher

These are used to create ciphers, which are used for encryption.

### make-cipher
```scheme
(make-cipher type) => cipher
```

Create a `cipher` with the specified cipher type.


### Cipher Types

These follow the pattern "cipher::TYPE".
A convenience function also exists for each type to create the cipher as well as a type checker.

Examples:
* `cipher::aes-256-cfb`
* `make-aes-256-cfb-cipher`
* `aes-256-cfb-cipher?`

#### Recommended for Modern Security Standards

These ciphers are considered secure and are recommended for modern security standards:

1. AES (Advanced Encryption Standard)
   * `cipher::aes-128-ccm`
   * `cipher::aes-128-ctr`
   * `cipher::aes-128-gcm`
   * `cipher::aes-192-ccm`
   * `cipher::aes-192-ctr`
   * `cipher::aes-192-gcm`
   * `cipher::aes-256-ccm`
   * `cipher::aes-256-ctr`
   * `cipher::aes-256-gcm`

2. Camellia
   * `cipher::camellia-128-cbc`
   * `cipher::camellia-128-cfb`
   * `cipher::camellia-128-ecb`
   * `cipher::camellia-128-ofb`
   * `cipher::camellia-192-cbc`
   * `cipher::camellia-192-cfb`
   * `cipher::camellia-192-ecb`
   * `cipher::camellia-192-ofb`
   * `cipher::camellia-256-cbc`
   * `cipher::camellia-256-cfb`
   * `cipher::camellia-256-ecb`
   * `cipher::camellia-256-ofb`

#### Not Recommended for Modern Security Standards

These ciphers are not recommended due to known vulnerabilities or weaker security:

1. AES (using ECB mode)
   * `cipher::aes-128-ecb`
   * `cipher::aes-192-ecb`
   * `cipher::aes-256-ecb`

2. Blowfish
   * `cipher::bf-cbc`
   * `cipher::bf-cfb`
   * `cipher::bf-ecb`
   * `cipher::bf-ofb`

3. CAST5
   * `cipher::cast5-cbc`
   * `cipher::cast5-cfb`
   * `cipher::cast5-ecb`
   * `cipher::cast5-ofb`

4. RC4
   * `cipher::rc4`

#### Neutral or Situational Use

These ciphers can be secure in certain contexts but might have specific use cases or be less commonly recommended:

1. AES (other modes)
   - `cipher::aes-128-cbc`
   - `cipher::aes-128-cfb`
   - `cipher::aes-128-ofb`
   - `cipher::aes-128-xts`
   - `cipher::aes-192-cbc`
   - `cipher::aes-192-cfb`
   - `cipher::aes-192-ofb`
   - `cipher::aes-256-cbc`
   - `cipher::aes-256-cfb`
   - `cipher::aes-256-ofb`
   - `cipher::aes-256-xts`

### cipher?
```scheme
(cipher? var) => :boolean
```

Test if variable is a cipher.

### cipher-type
```scheme
(cipher-type cipher) => EVP_CIPHER*
```

Returns the cipher type, like `cipher::aes-256-cfb`.

### cipher-ctx
```scheme
(cipher-ctx cipher) => EVP_CIPHER_CTX*
```

Get the context from the cipher.
Returns #f if cipher already finalized.

### cipher-context
```scheme
(cipher-context cipher) => EVP_CIPHER_CTX*
```

Get the context from the cipher.
Errors if cipher already finalized.

### cipher-name
```scheme
(cipher-name cipher) => :string
```

Gets the string name of the cipher, like "AES-256-ECB".

### cipher-block-size
```scheme
(cipher-block-size cipher) => :fixnum
```

Get the number of bytes used per block.

### cipher-key-length
```scheme
(cipher-key-length cipher) => :fixnum
```

Get the number of bytes used for keys for this cipher.

### cipher-iv-length
```scheme
(cipher-iv-length cipher) => :fixnum
```

Get the number of bytes used for the IV for this cipher.

### cipher-copy
```scheme
(cipher-copy cipher) => cipher
```

Create a copy of a cipher.

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

::: tip Example:
```scheme
(let* ((plaintext "Hello Gerbil!")
       (cipher (make-aes-256-cfb-cipher))
       (key-length (cipher-key-length cipher))
       (key (random-bytes key-length))
       (iv-length (cipher-iv-length cipher))
       (iv (random-bytes iv-length))
       (encrypted-data (encrypt cipher key iv plaintext)))
  (utf8->string (decrypt (make-aes-256-cfb-cipher) key iv encrypted-data)))
  ;; => "Hello Gerbil!"
```
:::

### encrypt
```scheme
(encrypt cipher key iv in) => :u8vector
```

Encrypt a `u8vector`, `string` or `input-port` and return the encrypted bytes.

### encrypt-u8vector
```scheme
(encrypt-u8vector cipher key iv in (start 0) (end (u8vector-length in))) => :u8vector
```

Encrypt a u8vector, with optional parameters to specify the start and end indices for the portion of the vector to be encrypted.
Returns the encrypted bytes.

### encrypt-u8vector!
```scheme
(encrypt-u8vector! cipher key iv bytes start end buf) => :fixnum
```

Encrypt and finalize buffer `buf` using input from `bytes`.
Returns the number of bytes written.

### encrypt-init!
```scheme
(encrypt-init! cipher key iv)
```

Initializes the cipher with the key and IV.

### encrypt-update!
```scheme
(encrypt-update! cipher out out-start in start end) => :fixnum
```

Encrypts data from `in` buffer writes it to `out` then returns the number of bytes written.
This function can be called multiple times to encrypt successive blocks of data.
The amount of data written depends on the block alignment of the encrypted data.
For most ciphers and modes, the amount of data written can be anything from zero bytes to `in-length + cipher-block-size - 1` bytes.
For wrap cipher modes, the amount of data written can be anything from zero bytes to `in-length + cipher-block-size` bytes.
For stream ciphers, the amount of data written can be anything from zero bytes to `in-length` bytes.
Thus, out should contain sufficient room for the operation being performed.
It also checks if in and out are partially overlapping, and if they are an error is thrown.

### encrypt-final!
```scheme
(encrypt-final! cipher out (out-start 0)) => :fixnum
```

Encrypts the "final" data, that is any data that remains in a partial block.
It uses standard block padding (aka PKCS padding).
The encrypted final data is written to out which should have sufficient space for one cipher block.
The number of bytes written is returned.
After this function is called the encryption operation is finished and the cipher may no longer be used.

### decrypt
```scheme
(decrypt cipher key iv in) => :u8vector
```

Decrypt a `u8vector` or `input-port` and return the decrypted bytes.

### decrypt-u8vector
```scheme
(decrypt-u8vector cipher key iv in (start 0) (end (u8vector-length in))) => :u8vector
```

Decrypt a u8vector, with optional parameters to specify the start and end indices for the portion of the vector to be decrypted.
Returns the decrypted bytes.

### decrypt-u8vector!
```scheme
(decrypt-u8vector! cipher key iv bytes start end buf) => :fixnum
```

Decrypt and finalize buffer `buf` using input from `bytes`.
Returns the number of bytes written.

### decrypt-init!
```scheme
(decrypt-init! cipher key iv)
```

Initializes the cipher with the key and IV.

### decrypt-update!
```scheme
(decrypt-update! cipher out out-start in start end) => :fixnum
```

Decrypts data from `in` buffer writes it to `out` then returns the number of bytes written.
Mirrors [encrypt-update!](#encrypt-update-bang).
The parameters and restrictions are identical except that the decrypted data buffer out passed to `decrypt-update!` should have sufficient room for `in-length + cipher-block-size` bytes unless the cipher block size is 1 in which case `in-length` bytes is sufficient.

### decrypt-final!
```scheme
(decrypt-final! cipher out (out-start 0)) => :fixnum
```

Mirror of [encrypt-final!](#encrypt-final-bang).

## HMAC

Hash-based message authentication code.
It may be used to simultaneously verify both the data integrity and authenticity of a message.

### hmac?
```scheme
(hmac? var) => :boolean
```

Test if variable is an hmac object.

### make-hmac
```scheme
(make-hmac md) => hmac
```

Create a hmac using a [digest type][#digest_objects], such as `digest::sha256`.

### hmac-init!
```scheme
(hmac-init! hmac key)
```

Initialize the `hmac` to use the given `key`.

### hmac-update!
```scheme
(hmac-update! hmac bytes (start #f) (end #f))
```

Update hmac with chunk of message to be authenticated.
Can be called repeatedly with chunks of the message to be authenticated.

### hmac-final!
```scheme
(hmac-final! hmac (bytes #f)) => :u8vector
```

Returns the message authentication code.
Output buffer may be passed in as `bytes`, which must have space for the hash function output.

### hmac-digest
```scheme
(hmac-digest md key bytes (start #f) (end #f)) => :u8vector
```

Create an authentication code using a [digest type][#digest_objects], such as `digest::sha256`.

### hmac-md5
```scheme
(hmac-md5 key bytes (start #f) (end #f)) => :u8vector
```

Create an authentication code using MD5.

### hmac-sha1
```scheme
(hmac-sha1 key bytes (start #f) (end #f)) => :u8vector
```

Create an authentication code using SHA1.

### hmac-sha256
```scheme
(hmac-sha256 key bytes (start #f) (end #f)) => :u8vector
```

Create an authentication code using SHA256.

### hmac-sha384
```scheme
(hmac-sha384 key bytes (start #f) (end #f)) => :u8vector
```

Create an authentication code using SHA384.

### hmac-sha512
```scheme
(hmac-sha512 key bytes (start #f) (end #f)) => :u8vector
```

Create an authentication code using SHA512.

## DH Key Exchange

### DH-generate-key
```scheme
(DH-generate-key dh)
```

Setup the dh, which is provided by the `DH-get-` functions.
`DH-generate-key` performs the first step of a Diffie-Hellman key exchange by generating private and public DH values.
By calling `DH-compute-key`, these are combined with the other party's public value to compute the shared key.

### DH-get-2048-256
```scheme
(DH-get-2048-256) => DH
```

Deprecated in OpenSSL.
Create a DH object.

### DH-get-2048-224
```scheme
(DH-get-2048-224) => DH
```

Deprecated in OpenSSL.
Create a DH object.

### DH-get-1024-160
```scheme
(DH-get-1024-160) => DH
```

Deprecated in OpenSSL.
Create a DH object.

### DH-compute-key
```scheme
(DH-compute-key dh bn) => :u8vector
```

`dh` is the `DH` returned from functions like `DH-get-1024-160`.
`bn` is the pubkey created by `DH-pub-key`.
The computed shared secret is returned.

### DH-pub-key
```scheme
(DH-pub-key dh) => BN
```

Returns public key from dh.

## EVP Key and Parameter Generation
### keygen/ed25519
```scheme
(keygen/ed25519) => pkey
```

Performs a key generation operation using the ED25519 keytype.

### bytes->private-key
```scheme
(bytes->private-key type bytes engine: (engine #f)) => pkey
```

Convert `bytes` to a private key `pkey`.

### bytes->public-key
```scheme
(bytes->public-key type bytes engine: (engine #f)) => pkey
```

Convert `bytes` to a public key `pkey`.

### private-key->bytes
```scheme
(private-key->bytes pkey (bytes #f)) => :u8vector
```

Get the private key from a `pkey`.
Optional buffer `bytes` can be passed in to be used and returned.
Returns `#f` if invalid pkey passed in.

### public-key->bytes
```scheme
(public-key->bytes pkey (bytes #f))
```

Get the public key from a `pkey`.
Optional buffer `bytes` can be passed in to be used and returned.
Returns `#f` if invalid pkey passed in.

### digest-sign
```scheme
(digest-sign pkey bytes sig: (sig #f)) => :u8vector
```

Sign bytes using pkey.
Optional buffer `siq` can be passed in to be used and returned.

### digest-verify
```scheme
(digest-verify pkey sig bytes) => :boolean
```

Verify `bytes` matches `sig` using `pkey`.

### scrypt
```scheme
(scrypt pass salt size (N 1024) (r 8) (p 16)) => :u8vector
```

The scrypt algorithm implements the scrypt password based key derivation function, as described in RFC 7914.
It is memory-hard in the sense that it deliberately requires a significant amount of RAM for efficient computation.
The intention of this is to render brute forcing of passwords on systems that lack large amounts of main memory (such as GPUs or ASICs) computationally infeasible.

`scrypt` provides three work factors that can be customized: `N`, `r` and `p`.
`N`, which has to be a positive power of two, is the general work factor and scales CPU time in an approximately linear fashion.
`r` is the block size of the internally used hash function and `p` is the parallelization factor.
Both `r` and `p` need to be greater than zero.
The amount of RAM that `scrypt` requires for its computation is roughly `128 * N * r * p` bytes.

### EVP Key types

* `EVP_PKEY_ED25519`

## etc

### libcrypto-error?
```scheme
(libcrypto-error? e) => :boolean
```

Test if error is a libcrypto-error.

### random-bytes
```scheme
(random-bytes len) => :u8vector
```

Generate random bytes.

### random-bytes!
```scheme
(random-bytes! bytes (start 0) (end (u8vector-length bytes)))
```

Generate random bytes into an existing buffer.

### bytes->BN
```scheme
(BN->bytes bn) => :u8vector
```

Converts the absolute value of bn into big-endian form and returns it as a vector.

### BN->bytes
```scheme
(bytes->BN bytes (start 0) (end #f)) => BN
```

Convert bytes into BN.
