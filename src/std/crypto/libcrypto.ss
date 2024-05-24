;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto FFI
(export #t)
(import :std/foreign)

(begin-ffi
    (ERR_get_error ERR_peek_last_error
     ERR_lib_error_string ERR_func_error_string ERR_reason_error_string
     ERR_error_string
     EVP_MD? EVP_MD_CTX?
     EVP_MD_CTX_create EVP_DigestInit EVP_DigestUpdate EVP_DigestFinal
     EVP_MD_CTX_copy
     EVP_md5 EVP_sha1 EVP_sha224 EVP_sha256 EVP_sha384 EVP_sha512
     EVP_ripemd160 EVP_whirlpool EVP_blake2b512 EVP_blake2s256
     EVP_sha3_224 EVP_sha3_256 EVP_sha3_384 EVP_sha3_512 EVP_shake128 EVP_shake256 EVP_keccak256
     EVP_MD_type EVP_MD_pkey_type EVP_MD_size EVP_MD_block_size EVP_MD_name
     EVP_MD_CTX_md EVP_MD_CTX_type EVP_MD_CTX_size EVP_MD_CTX_block_size
     EVP_get_digestbyname EVP_get_digestbynid
     EVP_CIPHER? EVP_CIPHER_CTX?
     EVP_CIPHER_CTX_create
     EVP_EncryptInit EVP_EncryptUpdate EVP_EncryptFinal
     EVP_DecryptInit EVP_DecryptUpdate EVP_DecryptFinal
     EVP_rc4
     EVP_aes_128_ecb EVP_aes_128_cbc EVP_aes_128_cfb EVP_aes_128_ofb
     EVP_aes_128_ctr EVP_aes_128_ccm EVP_aes_128_gcm EVP_aes_128_xts
     EVP_aes_192_ecb EVP_aes_192_cbc EVP_aes_192_cfb EVP_aes_192_ofb
     EVP_aes_192_ctr EVP_aes_192_ccm EVP_aes_192_gcm
     EVP_aes_256_ecb EVP_aes_256_cbc EVP_aes_256_cfb EVP_aes_256_ofb
     EVP_aes_256_ctr EVP_aes_256_ccm EVP_aes_256_gcm EVP_aes_256_xts
     EVP_camellia_128_ecb EVP_camellia_128_cbc EVP_camellia_128_cfb EVP_camellia_128_ofb
     EVP_camellia_192_ecb EVP_camellia_192_cbc EVP_camellia_192_cfb EVP_camellia_192_ofb
     EVP_camellia_256_ecb EVP_camellia_256_cbc EVP_camellia_256_cfb EVP_camellia_256_ofb
     EVP_cast5_ecb EVP_cast5_cbc EVP_cast5_cfb EVP_cast5_ofb
     EVP_bf_ecb EVP_bf_cbc EVP_bf_cfb EVP_bf_ofb
     EVP_CIPHER_nid EVP_CIPHER_block_size EVP_CIPHER_key_length EVP_CIPHER_iv_length
     EVP_CIPHER_name
     EVP_CIPHER_CTX_cipher EVP_CIPHER_CTX_nid EVP_CIPHER_CTX_block_size
     EVP_CIPHER_CTX_key_length EVP_CIPHER_CTX_iv_length
     EVP_CIPHER_CTX_copy
     EVP_get_cipherbyname EVP_get_cipherbynid
     HMAC_CTX?
     HMAC_CTX_create
     HMAC_Init HMAC_Update HMAC_Final HMAC
     BN? BN_num_bytes BN_bin2bn BN_bn2bin
     DH* DH? DH_pub_key
     DH_new DH_get_1024_160 DH_get_2048_224 DH_get_2048_256
     DH_generate_key DH_size DH_compute_key
     EVP_PKEY_NONE EVP_PKEY_RSA EVP_PKEY_RSA2 EVP_PKEY_RSA_PSS
     EVP_PKEY_DSA EVP_PKEY_DSA1 EVP_PKEY_DSA2 EVP_PKEY_DSA3 EVP_PKEY_DSA4
     EVP_PKEY_DH EVP_PKEY_DHX EVP_PKEY_EC EVP_PKEY_SM2
     EVP_PKEY_HMAC EVP_PKEY_CMAC EVP_PKEY_SCRYPT EVP_PKEY_TLS1_PRF EVP_PKEY_HKDF
     EVP_PKEY_POLY1305 EVP_PKEY_SIPHASH EVP_PKEY_X25519 EVP_PKEY_ED25519 EVP_PKEY_X448 EVP_PKEY_ED448
     EVP_PKEY EVP_PKEY* EVP_PKEY_CTX EVP_PKEY_CTX*
     EVP_PKEY_CTX_new EVP_PKEY_CTX_new_id EVP_PKEY_CTX_dup
     EVP_PKEY_keygen_init EVP_PKEY_keygen
     EVP_PKEY_new_raw_private_key EVP_PKEY_new_raw_public_key
     EVP_PKEY_get_raw_private_key EVP_PKEY_get_raw_public_key
     EVP_DigestSignInit EVP_DigestSign EVP_DigestVerifyInit EVP_DigestVerify EVP_MD_CTX_set_pkey_ctx

     EVP_PKEY_derive_init
     EVP_PKEY_CTX_set1_pbe_pass
     EVP_PKEY_CTX_set1_scrypt_salt
     EVP_PKEY_CTX_set_scrypt_N
     EVP_PKEY_CTX_set_scrypt_r
     EVP_PKEY_CTX_set_scrypt_p
     EVP_PKEY_derive

     RAND_bytes)

(declare (not safe))

(c-declare #<<END-C
#include <openssl/crypto.h>
#include <openssl/evp.h>
#include <openssl/err.h>
#include <openssl/dh.h>
#include <openssl/bn.h>
#include <openssl/hmac.h>
#include <openssl/rand.h>
END-C
)

(c-initialize #<<END-C
#if (OPENSSL_VERSION_MAJOR < 1) || ((OPENSSL_VERSION_MAJOR == 1) && (OPENSSL_VERSION_MINOR == 0))
OPENSSL_init_crypto(0, NULL);
#endif
END-C
)

;;; version features -- the whole setup for computing the version number drives me crazy
(c-declare #<<END-C
#if (OPENSSL_VERSION_MAJOR >= 1)
#define FEATURES_OPENSSL_v1
#endif

#if (OPENSSL_VERSION_MAJOR > 1) || ((OPENSSL_VERSION_MAJOR == 1) && (OPENSSL_VERSION_MINOR >= 1))
#define FEATURES_OPENSSL_v1_1
#endif

#if (OPENSSL_VERSION_MAJOR > 1) || ((OPENSSL_VERSION_MAJOR == 1) && ((OPENSSL_VERSION_MINOR > 1) || ((OPENSSL_VERSION_MINOR == 1) && (OPENSSL_VERSION_PATCH >= 1))))
#define FEATURES_OPENSSL_v1_1_1
#endif

#if (LIBRESSL_VERSION_NUMBER >= 0x3050000fL)
#define FEATURES_LIBRESSL_v3_5_0
#endif

#if (LIBRESSL_VERSION_NUMBER >= 0x3070000fL)
#define FEATURES_LIBRESSL_v3_7_0
#endif
END-C
)


;; funky decls to apease the compiler for discarding const
;; sometimes I really hate gcc (which apparently has no working option to turn
;;  that shit off -- -Wno-cast-qual doesn't fucking work, at least with 4.5.x)
;; other times I hate gsc for not having a const qualifier
(define-macro (define-c-lambda/const-pointer id args ret #!optional (ccond #f) (iffalse "NULL"))
  (let* ((result-type (if (eq? ret 'char-string)
                        "char*"
                        (##symbol->string ret)))
         (c-args
          (let lp ((rest args) (n 1) (c-args ""))
            (if (##pair? rest)
              (let* ((next (##string-append "___arg" (##number->string n)))
                     (c-args
                      (if (##fx> n 1)
                        (##string-append c-args "," next)
                        next)))
                (lp (##cdr rest) (##fx+ n 1) c-args))
              c-args)))
         (expr (##string-append "___return ((" result-type ")"
                                (##symbol->string id) "(" c-args "));")))
    `(define ,id
       (c-lambda ,args ,ret ,(if ccond
                            (##string-append "#if " ccond "\n" expr
                                             "\n#else\n___return(" iffalse ");\n#endif\n")
                            expr)))))

(define-macro (define-c-type-predicate pred tag)
  `(define (,pred x)
     (and (##foreign? x)
          (##memq ',tag (foreign-tags x)))))

;; error handling
(c-declare #<<END-C
__thread char openssl_error_buf[256];
static char *ffi_openssl_error_string(unsigned long err)
{
 ERR_error_string_n(err, openssl_error_buf, sizeof(openssl_error_buf));
 return openssl_error_buf;
}
END-C
)

(define-c-lambda ERR_get_error () unsigned-long)
(define-c-lambda ERR_peek_last_error () unsigned-long)
(define-c-lambda/const-pointer ERR_lib_error_string (unsigned-long) char-string)
(define-c-lambda/const-pointer ERR_func_error_string (unsigned-long) char-string)
(define-c-lambda/const-pointer ERR_reason_error_string (unsigned-long) char-string)
(define-c-lambda ERR_error_string (unsigned-long) char-string "ffi_openssl_error_string")

;;; Engines
(c-define-type ENGINE "ENGINE")
(c-define-type ENGINE* (pointer ENGINE (ENGINE*)))


;;; Message Digests
(c-declare #<<END-C
static ___SCMOBJ ffi_release_EVP_MD_CTX (void *ptr)
{
#if OPENSSL_VERSION_NUMBER < 0x10100000L
  EVP_MD_CTX_destroy ((EVP_MD_CTX*)ptr); /* NB: renamed _free in 1.1.0 */
#else
  EVP_MD_CTX_free ((EVP_MD_CTX*)ptr);
#endif
  return ___FIX (___NO_ERR);
}

static int ffi_EVP_DigestInit (EVP_MD_CTX *ctx, EVP_MD *type) {
  return EVP_DigestInit_ex (ctx, type, NULL);
}

static int ffi_EVP_DigestUpdate (EVP_MD_CTX *ctx, ___SCMOBJ bytes, int start, int end)
{
  return EVP_DigestUpdate (ctx, U8_DATA (bytes) + start, end - start);
}

static int ffi_EVP_DigestFinal (EVP_MD_CTX *ctx, ___SCMOBJ bytes)
{
  return EVP_DigestFinal_ex (ctx, U8_DATA (bytes), NULL);
}
END-C
)

(c-define-type EVP_MD "EVP_MD")
(c-define-type EVP_MD* (pointer EVP_MD (EVP_MD*)))
(c-define-type EVP_MD_CTX "EVP_MD_CTX")
(c-define-type EVP_MD_CTX* (pointer EVP_MD_CTX (EVP_MD_CTX*) "ffi_release_EVP_MD_CTX"))

(define-c-type-predicate EVP_MD? EVP_MD*)
(define-c-type-predicate EVP_MD_CTX? EVP_MD_CTX*)

(define-c-lambda EVP_MD_CTX_create () EVP_MD_CTX*) ;; NB: renamed _new in 1.1.0
(define-c-lambda EVP_DigestInit (EVP_MD_CTX* EVP_MD*) int "ffi_EVP_DigestInit")
(define-c-lambda EVP_DigestUpdate (EVP_MD_CTX* scheme-object int int) int "ffi_EVP_DigestUpdate")
(define-c-lambda EVP_DigestFinal (EVP_MD_CTX* scheme-object) int "ffi_EVP_DigestFinal")
(define-c-lambda EVP_MD_CTX_copy (EVP_MD_CTX* EVP_MD_CTX*) int "EVP_MD_CTX_copy_ex")

(define-c-lambda/const-pointer EVP_md5 () EVP_MD* "!defined(OPENSSL_NO_MD5)")
(define-c-lambda/const-pointer EVP_sha1 () EVP_MD*)
(define-c-lambda/const-pointer EVP_sha224 () EVP_MD*)
(define-c-lambda/const-pointer EVP_sha256 () EVP_MD*)
(define-c-lambda/const-pointer EVP_sha384 () EVP_MD*)
(define-c-lambda/const-pointer EVP_sha512 () EVP_MD*)
(define-c-lambda/const-pointer EVP_ripemd160 () EVP_MD* "!defined(OPENSSL_NO_RMD160)")
(define-c-lambda/const-pointer EVP_whirlpool () EVP_MD* "!defined(OPENSSL_NO_WHIRLPOOL)")
(define-c-lambda/const-pointer EVP_blake2b512 () EVP_MD* "defined(FEATURES_OPENSSL_v1_1) && !defined(OPENSSL_NO_BLAKE2)")
(define-c-lambda/const-pointer EVP_blake2s256 () EVP_MD* "defined(FEATURES_OPENSSL_v1_1) && !defined(OPENSSL_NO_BLAKE2)")
(define-c-lambda/const-pointer EVP_sha3_224 () EVP_MD* "defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_5_0)")
(define-c-lambda/const-pointer EVP_sha3_256 () EVP_MD* "defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_5_0)")
(define-c-lambda/const-pointer EVP_sha3_384 () EVP_MD* "defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_5_0)")
(define-c-lambda/const-pointer EVP_sha3_512 () EVP_MD* "defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_5_0)")
(define-c-lambda/const-pointer EVP_shake128 () EVP_MD* "defined(FEATURES_OPENSSL_v1_1_1)")
(define-c-lambda/const-pointer EVP_shake256 () EVP_MD* "defined(FEATURES_OPENSSL_v1_1_1)")
(define-c-lambda/const-pointer EVP_keccak256 () EVP_MD* "0") ;; still not available as of 3.0.0-alpha6

(define-c-lambda EVP_MD_type (EVP_MD*) int)
(define-c-lambda EVP_MD_pkey_type (EVP_MD*) int)
(define-c-lambda EVP_MD_size (EVP_MD*) int)
(define-c-lambda EVP_MD_block_size (EVP_MD*) int)
(define-c-lambda/const-pointer EVP_MD_name (EVP_MD*) char-string)

(define-c-lambda/const-pointer EVP_MD_CTX_md (EVP_MD_CTX*) EVP_MD*)
(define-c-lambda EVP_MD_CTX_type (EVP_MD_CTX*) int)
(define-c-lambda EVP_MD_CTX_size (EVP_MD_CTX*) int)
(define-c-lambda EVP_MD_CTX_block_size (EVP_MD_CTX*) int)

(define-c-lambda/const-pointer EVP_get_digestbyname (char-string) EVP_MD*)
(define-c-lambda/const-pointer EVP_get_digestbynid (int) EVP_MD*)

;;; Ciphers
(c-declare #<<END-C
/* like EVP_MD_CTX_create, no EVP_CIPHER_CTX_create available */
static EVP_CIPHER_CTX *ffi_create_EVP_CIPHER_CTX ()
{
  EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new ();
  if (ctx) {
    EVP_CIPHER_CTX_init (ctx);
  }
  return ctx;
}

/* like EVP_MD_CTX_destroy, no EVP_CIPHER_CTX_destroy available */
static ___SCMOBJ ffi_release_EVP_CIPHER_CTX (void *ptr)
{
  EVP_CIPHER_CTX_cleanup ((EVP_CIPHER_CTX*) ptr);
  EVP_CIPHER_CTX_free ((EVP_CIPHER_CTX*)ptr);
  return ___FIX (___NO_ERR);
}

static int ffi_EVP_EncryptInit (EVP_CIPHER_CTX *ctx, EVP_CIPHER *type,
                                ___SCMOBJ key, ___SCMOBJ iv)
{
  return EVP_EncryptInit_ex (ctx, type, NULL, U8_DATA (key), U8_DATA (iv));
}

static int ffi_EVP_EncryptUpdate (EVP_CIPHER_CTX *ctx,
                                  ___SCMOBJ out, int out_start,
                                  ___SCMOBJ in, int start, int end)
{
  int r, olen;
  r = EVP_EncryptUpdate (ctx, U8_DATA (out) + out_start, &olen,
                         U8_DATA (in) + start, end - start);
  if (r) {
    return olen;
  } else {
    return -1;
  }
}

static int ffi_EVP_EncryptFinal (EVP_CIPHER_CTX *ctx, ___SCMOBJ out, int start)
{
  int r, olen;
  r = EVP_EncryptFinal_ex (ctx, U8_DATA (out) + start, &olen);
  if (r) {
    return olen;
  } else {
    return -1;
  }
}

static int ffi_EVP_DecryptInit (EVP_CIPHER_CTX *ctx, EVP_CIPHER *type,
                                ___SCMOBJ key, ___SCMOBJ iv)
{
  return EVP_DecryptInit_ex (ctx, type, NULL, U8_DATA (key), U8_DATA (iv));
}

static int ffi_EVP_DecryptUpdate (EVP_CIPHER_CTX *ctx,
                                  ___SCMOBJ out, int out_start,
                                  ___SCMOBJ in, int start, int end)
{
  int r, olen;
  r = EVP_DecryptUpdate (ctx, U8_DATA (out) + out_start, &olen,
                         U8_DATA (in) + start, end - start);
  if (r) {
    return olen;
  } else {
    return -1;
  }
}

static int ffi_EVP_DecryptFinal (EVP_CIPHER_CTX *ctx, ___SCMOBJ out, int start)
{
  int r, olen;
  r = EVP_DecryptFinal_ex (ctx, U8_DATA (out) + start, &olen);
  if (r) {
    return olen;
  } else {
    return -1;
  }
}
END-C
)

(c-define-type EVP_CIPHER "EVP_CIPHER")
(c-define-type EVP_CIPHER* (pointer EVP_CIPHER (EVP_CIPHER*)))
(c-define-type EVP_CIPHER_CTX "EVP_CIPHER_CTX")
(c-define-type EVP_CIPHER_CTX* (pointer EVP_CIPHER_CTX (EVP_CIPHER_CTX*) "ffi_release_EVP_CIPHER_CTX"))

(define-c-type-predicate EVP_CIPHER? EVP_CIPHER*)
(define-c-type-predicate EVP_CIPHER_CTX? EVP_CIPHER_CTX*)

(define-c-lambda EVP_CIPHER_CTX_create () EVP_CIPHER_CTX* "ffi_create_EVP_CIPHER_CTX")
(define-c-lambda EVP_EncryptInit (EVP_CIPHER_CTX* EVP_CIPHER* scheme-object scheme-object) int "ffi_EVP_EncryptInit")
(define-c-lambda EVP_EncryptUpdate (EVP_CIPHER_CTX* scheme-object int scheme-object int int) int "ffi_EVP_EncryptUpdate")
(define-c-lambda EVP_EncryptFinal (EVP_CIPHER_CTX* scheme-object int) int "ffi_EVP_EncryptFinal")
(define-c-lambda EVP_DecryptInit (EVP_CIPHER_CTX* EVP_CIPHER* scheme-object scheme-object) int "ffi_EVP_DecryptInit")
(define-c-lambda EVP_DecryptUpdate (EVP_CIPHER_CTX* scheme-object int scheme-object int int) int "ffi_EVP_DecryptUpdate")
(define-c-lambda EVP_DecryptFinal (EVP_CIPHER_CTX* scheme-object int) int "ffi_EVP_DecryptFinal")
(define-c-lambda EVP_CIPHER_CTX_copy (EVP_CIPHER_CTX* EVP_CIPHER_CTX*) int "EVP_CIPHER_CTX_copy")

(define-c-lambda/const-pointer EVP_rc4 () EVP_CIPHER*)

(define-c-lambda/const-pointer EVP_aes_128_ecb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_128_cbc () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_128_cfb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_128_ofb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_128_ctr () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_128_ccm () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_128_gcm () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_128_xts () EVP_CIPHER*)

(define-c-lambda/const-pointer EVP_aes_192_ecb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_192_cbc () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_192_cfb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_192_ofb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_192_ctr () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_192_ccm () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_192_gcm () EVP_CIPHER*)

(define-c-lambda/const-pointer EVP_aes_256_ecb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_256_cbc () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_256_cfb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_256_ofb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_256_ctr () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_256_ccm () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_256_gcm () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_aes_256_xts () EVP_CIPHER*)

(define-c-lambda/const-pointer EVP_camellia_128_ecb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_camellia_128_cbc () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_camellia_128_cfb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_camellia_128_ofb () EVP_CIPHER*)

(define-c-lambda/const-pointer EVP_camellia_192_ecb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_camellia_192_cbc () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_camellia_192_cfb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_camellia_192_ofb () EVP_CIPHER*)

(define-c-lambda/const-pointer EVP_camellia_256_ecb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_camellia_256_cbc () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_camellia_256_cfb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_camellia_256_ofb () EVP_CIPHER*)

(define-c-lambda/const-pointer EVP_cast5_ecb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_cast5_cbc () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_cast5_cfb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_cast5_ofb () EVP_CIPHER*)

(define-c-lambda/const-pointer EVP_bf_ecb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_bf_cbc () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_bf_cfb () EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_bf_ofb () EVP_CIPHER*)

(define-c-lambda EVP_CIPHER_nid (EVP_CIPHER*) int)
(define-c-lambda EVP_CIPHER_block_size (EVP_CIPHER*) int)
(define-c-lambda EVP_CIPHER_key_length (EVP_CIPHER*) int)
(define-c-lambda EVP_CIPHER_iv_length (EVP_CIPHER*) int)
(define-c-lambda/const-pointer EVP_CIPHER_name (EVP_CIPHER*) char-string)

(define-c-lambda/const-pointer EVP_CIPHER_CTX_cipher (EVP_CIPHER_CTX*) EVP_CIPHER*)
(define-c-lambda EVP_CIPHER_CTX_nid (EVP_CIPHER_CTX*) int)
(define-c-lambda EVP_CIPHER_CTX_block_size (EVP_CIPHER_CTX*) int)
(define-c-lambda EVP_CIPHER_CTX_key_length (EVP_CIPHER_CTX*) int)
(define-c-lambda EVP_CIPHER_CTX_iv_length (EVP_CIPHER_CTX*) int)

(define-c-lambda/const-pointer EVP_get_cipherbyname (char-string) EVP_CIPHER*)
(define-c-lambda/const-pointer EVP_get_cipherbynid (int) EVP_CIPHER*)

;;; HMAC
(c-declare #<<END-C
static HMAC_CTX *ffi_create_HMAC_CTX ()
{
#if OPENSSL_VERSION_NUMBER < 0x10100000L
  HMAC_CTX *ctx = (HMAC_CTX*)malloc (sizeof (HMAC_CTX));
  if (ctx) {
    HMAC_CTX_init (ctx);
  }
#else
  HMAC_CTX *ctx = HMAC_CTX_new ();
#endif
  return ctx;
}

static ___SCMOBJ ffi_release_HMAC_CTX (void *ptr)
{
#if OPENSSL_VERSION_NUMBER < 0x10100000L
  HMAC_CTX_cleanup ((HMAC_CTX*) ptr);
  free (ptr);
#else
  HMAC_CTX_free ((HMAC_CTX*) ptr);
#endif
  return ___FIX (___NO_ERR);
}

static int ffi_HMAC_Init (HMAC_CTX *ctx, ___SCMOBJ key, EVP_MD *type)
{
  return HMAC_Init_ex (ctx, U8_DATA (key), U8_LEN (key), type, NULL);
}

static int ffi_HMAC_Update (HMAC_CTX *ctx, ___SCMOBJ bytes, int start, int end)
{
  return HMAC_Update (ctx, U8_DATA (bytes) + start, end - start);
}

static int ffi_HMAC_Final (HMAC_CTX *ctx, ___SCMOBJ bytes)
{
  return HMAC_Final (ctx, U8_DATA (bytes), NULL);
}

static void ffi_HMAC (EVP_MD *type, ___SCMOBJ key, ___SCMOBJ bytes, int start, int end, ___SCMOBJ digest)
{
  HMAC (type, U8_DATA (key), U8_LEN (key), U8_DATA (bytes) + start, end - start, U8_DATA (digest), NULL);
}
END-C
)

(c-define-type HMAC_CTX "HMAC_CTX")
(c-define-type HMAC_CTX* (pointer HMAC_CTX (HMAC_CTX*) "ffi_release_HMAC_CTX"))

(define-c-type-predicate HMAC_CTX? HMAC_CTX*)

(define-c-lambda HMAC_CTX_create () HMAC_CTX* "ffi_create_HMAC_CTX")
(define-c-lambda HMAC_Init (HMAC_CTX* scheme-object EVP_MD*) int "ffi_HMAC_Init")
(define-c-lambda HMAC_Update (HMAC_CTX* scheme-object int int) int "ffi_HMAC_Update")
(define-c-lambda HMAC_Final (HMAC_CTX* scheme-object) int "ffi_HMAC_Final")
(define-c-lambda HMAC (EVP_MD* scheme-object scheme-object int int scheme-object) void "ffi_HMAC")

;;; BN
(c-declare #<<END-C
static ___SCMOBJ ffi_BN_free (void *bn)
{
 BN_free ((BIGNUM *)bn);
 return ___FIX (___NO_ERR);
}

static BIGNUM *ffi_BN_bin2bn (___SCMOBJ data, int start, int end)
{
  return BN_bin2bn (U8_DATA (data) + start, end -start, NULL);
}

static int ffi_BN_bn2bin (BIGNUM *bn, ___SCMOBJ data)
{
 return BN_bn2bin (bn, U8_DATA (data));
}
END-C
)

(c-define-type BN "BIGNUM")
(c-define-type BN* (pointer BN (BN*) "ffi_BN_free"))
(define-c-type-predicate BN? BN*)

(define-c-lambda BN_num_bytes (BN*) int)
(define-c-lambda BN_bin2bn (scheme-object int int) BN* "ffi_BN_bin2bn")
(define-c-lambda BN_bn2bin (BN* scheme-object) int "ffi_BN_bn2bin")

;;; DH
(c-declare #<<END-C
static ___SCMOBJ ffi_DH_free (void *dh)
{
 DH_free ((DH *)dh);
 return ___FIX (___NO_ERR);
}

static BIGNUM *ffi_DH_pub_key (DH *dh)
{
#if OPENSSL_VERSION_NUMBER < 0x10100000L
 return dh->pub_key;
#else
 BIGNUM const *pub;
 DH_get0_key (dh, &pub, NULL);
 return (BIGNUM*) pub;
#endif
}

static int ffi_DH_compute_key (___SCMOBJ secret, BIGNUM *pubkey, DH *dh)
{
 return DH_compute_key (U8_DATA (secret), pubkey, dh);
}

#if OPENSSL_VERSION_NUMBER < 0x10002000L || defined (LIBRESSL_VERSION_NUMBER)
#include "libcrypto-rfc5114.c"
#endif
END-C
)

(c-define-type BN-borrow* (pointer BN (BN*)))
(c-define-type DH "DH")
(c-define-type DH* (pointer DH (DH*) "ffi_DH_free"))
(define-c-type-predicate DH? DH*)

(define-c-lambda DH_pub_key (DH*) BN-borrow* "ffi_DH_pub_key")
(define-c-lambda DH_new () DH*)
(define-c-lambda DH_get_1024_160 () DH*)
(define-c-lambda DH_get_2048_224 () DH*)
(define-c-lambda DH_get_2048_256 () DH*)
(define-c-lambda DH_generate_key (DH*) int)
(define-c-lambda DH_size (DH*) int)
(define-c-lambda DH_compute_key (scheme-object BN* DH*) int "ffi_DH_compute_key")

;;; PKEY
(c-declare #<<END-C
static ___SCMOBJ ffi_release_EVP_PKEY (void *ptr)
{
  EVP_PKEY_free ((EVP_PKEY*)ptr);
  return ___FIX (___NO_ERR);
}
static ___SCMOBJ ffi_release_EVP_PKEY_CTX (void *ptr)
{
  EVP_PKEY_CTX_free ((EVP_PKEY_CTX*)ptr);
  return ___FIX (___NO_ERR);
}
static EVP_PKEY* ffi_EVP_PKEY_keygen (EVP_PKEY_CTX* ctx) {
  EVP_PKEY* pkey = NULL;
  if (EVP_PKEY_keygen(ctx, &pkey) == 1) {
    return pkey;
  } else {
    return NULL;
  }
}
static EVP_PKEY *ffi_EVP_PKEY_new_raw_private_key (int type, ENGINE* e, ___SCMOBJ o)
{
#if defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)
  return EVP_PKEY_new_raw_private_key(type, e, U8_DATA(o), (size_t)U8_LEN(o));
#else
  return NULL;
#endif
}
static EVP_PKEY *ffi_EVP_PKEY_new_raw_public_key (int type, ENGINE* e, ___SCMOBJ o)
{
#if defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)
  return EVP_PKEY_new_raw_public_key(type, e, U8_DATA(o), (size_t)U8_LEN(o));
#else
  return NULL;
#endif
}
static int ffi_EVP_PKEY_get_raw_private_key (EVP_PKEY* pkey, ___SCMOBJ o)
{
#if defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)
  size_t len;
  if ((void*)o == (void*)___FAL) {
    EVP_PKEY_get_raw_private_key(pkey, NULL, &len);
    return (int)len;
  } else if (EVP_PKEY_get_raw_private_key(pkey, U8_DATA(o), &len)) {
    return (int)len;
  } else {
    return 0;
  }
#else
  return 0;
#endif
}
static int ffi_EVP_PKEY_get_raw_public_key (EVP_PKEY* pkey, ___SCMOBJ o)
{
#if defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)
  size_t len;
  if ((void*)o == (void*)___FAL) {
    EVP_PKEY_get_raw_public_key(pkey, NULL, &len);
    return (int)len;
  } else {
    return EVP_PKEY_get_raw_public_key(pkey, U8_DATA(o), &len) ? (int)len : 0;
  }
#else
  return 0;
#endif
}
static int ffi_EVP_DigestSign(EVP_MD_CTX *ctx, ___SCMOBJ sig, ___SCMOBJ tbs)
{
  size_t siglen = U8_LEN(sig);
#if defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)
  return EVP_DigestSign(ctx, U8_DATA(sig), &siglen, U8_DATA(tbs), U8_LEN(tbs)) ? siglen : 0;
#else
  return 0;
#endif
}
static int ffi_EVP_DigestVerify(EVP_MD_CTX *ctx, ___SCMOBJ sig, ___SCMOBJ tbs)
{
#if defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)
  return EVP_DigestVerify(ctx, U8_DATA(sig), U8_LEN(sig), U8_DATA(tbs), U8_LEN(tbs));
#else
  return 0;
#endif
}

static int ffi_EVP_DigestSignInit(EVP_MD_CTX *ctx, EVP_PKEY *pkey)
{
#if defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)
 return EVP_DigestSignInit(ctx, NULL, NULL, NULL, pkey);
#else
 return 0;
#endif
}

static int ffi_EVP_DigestVerifyInit(EVP_MD_CTX *ctx, EVP_PKEY *pkey)
{
#if defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)
 return EVP_DigestVerifyInit(ctx, NULL, NULL, NULL, pkey);
#else
 return 0;
#endif
}

#if !(defined FEATURES_OPENSSL_v1_1_1)
void EVP_MD_CTX_set_pkey_ctx(EVP_MD_CTX *ctx, EVP_PKEY_CTX *pctx) { return; }
#endif

static int ffi_EVP_PKEY_CTX_set1_pbe_pass(EVP_PKEY_CTX *ctx, ___SCMOBJ pass)
{
#if defined(FEATURES_OPENSSL_v1_1_1)
 return EVP_PKEY_CTX_set1_pbe_pass(ctx, U8_DATA(pass), U8_LEN(pass));
#else
 return 0;
#endif
}

static int ffi_EVP_PKEY_CTX_set1_scrypt_salt(EVP_PKEY_CTX *ctx, ___SCMOBJ salt)
{
#if defined(FEATURES_OPENSSL_v1_1_1)
 return EVP_PKEY_CTX_set1_scrypt_salt(ctx, U8_DATA(salt), U8_LEN(salt));
#else
 return 0;
#endif
}

static int ffi_EVP_PKEY_CTX_set_scrypt_N(EVP_PKEY_CTX *ctx, int N)
{
#if defined(FEATURES_OPENSSL_v1_1_1)
 return EVP_PKEY_CTX_set_scrypt_N(ctx, N);
#else
 return 0;
#endif
}

static int ffi_EVP_PKEY_CTX_set_scrypt_r(EVP_PKEY_CTX *ctx, int r)
{
#if defined(FEATURES_OPENSSL_v1_1_1)
 return EVP_PKEY_CTX_set_scrypt_r(ctx, r);
#else
 return 0;
#endif
}

static int ffi_EVP_PKEY_CTX_set_scrypt_p(EVP_PKEY_CTX *ctx, int p)
{
#if defined(FEATURES_OPENSSL_v1_1_1)
 return EVP_PKEY_CTX_set_scrypt_p(ctx, p);
#else
 return 0;
#endif
}

static int ffi_EVP_PKEY_derive(EVP_PKEY_CTX *ctx, ___SCMOBJ output)
{
#if defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_5_0)
 size_t outlen = U8_LEN(output);
 int r = EVP_PKEY_derive(ctx, U8_DATA(output), &outlen);
 if (r > 0) {
  return (int)outlen;
 }
 return r;
#else
 return 0;
#endif
}

static int ffi_RAND_bytes (___SCMOBJ bytes, int start, int end)
{
  return RAND_bytes (U8_DATA (bytes) + start, end - start);
}

END-C
)
(c-define-type EVP_PKEY "EVP_PKEY")
(c-define-type EVP_PKEY* (pointer EVP_PKEY (EVP_PKEY*) "ffi_release_EVP_PKEY"))
(c-define-type EVP_PKEY_CTX "EVP_PKEY_CTX")
(c-define-type EVP_PKEY_CTX* (pointer EVP_PKEY_CTX (EVP_PKEY_CTX*) "ffi_release_EVP_PKEY_CTX"))

(define-macro (define-consts . cs) `(begin ,@(map (lambda (c) `(define-const ,c)) cs)))
(define-consts EVP_PKEY_NONE EVP_PKEY_RSA EVP_PKEY_RSA2 EVP_PKEY_DSA EVP_PKEY_DSA1 EVP_PKEY_DSA2 EVP_PKEY_DSA3 EVP_PKEY_DSA4 EVP_PKEY_DH EVP_PKEY_EC EVP_PKEY_HMAC)
(define-const* EVP_PKEY_DHX "defined(FEATURES_OPENSSL_v1_1)")
(define-const* EVP_PKEY_CMAC "defined(FEATURES_OPENSSL_v1_1) || defined(FEATURES_LIBRESSL_v3_7_0)")
(define-const* EVP_PKEY_TLS1_PRF "defined(FEATURES_OPENSSL_v1_1)")
(define-const* EVP_PKEY_HKDF "defined(FEATURES_OPENSSL_v1_1) || defined(FEATURES_LIBRESSL_v3_7_0)")

(define-const* EVP_PKEY_RSA_PSS "defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)")
(define-const* EVP_PKEY_SM2 "defined(FEATURES_OPENSSL_v1_1_1)")
(define-const* EVP_PKEY_SCRYPT "defined(FEATURES_OPENSSL_v1_1_1)")
(define-const* EVP_PKEY_SIPHASH "defined(FEATURES_OPENSSL_v1_1_1)")
(define-const* EVP_PKEY_POLY1305 "defined(FEATURES_OPENSSL_v1_1_1)")
(define-const* EVP_PKEY_X25519 "defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)")
(define-const* EVP_PKEY_ED25519 "defined(FEATURES_OPENSSL_v1_1_1) || defined(FEATURES_LIBRESSL_v3_7_0)")
(define-const* EVP_PKEY_X448 "defined(FEATURES_OPENSSL_v1_1_1)")
(define-const* EVP_PKEY_ED448 "defined(FEATURES_OPENSSL_v1_1_1)")

(define-c-lambda EVP_PKEY_CTX_new (EVP_PKEY* ENGINE*) EVP_PKEY_CTX*)
(define-c-lambda EVP_PKEY_CTX_new_id (int ENGINE*) EVP_PKEY_CTX*)
(define-c-lambda EVP_PKEY_CTX_dup (EVP_PKEY_CTX*) EVP_PKEY_CTX*)
(define-c-lambda EVP_PKEY_keygen_init (EVP_PKEY_CTX*) int)
(define-c-lambda EVP_PKEY_keygen (EVP_PKEY_CTX*) EVP_PKEY* "ffi_EVP_PKEY_keygen")
(define-c-lambda EVP_PKEY_new_raw_private_key (int ENGINE* scheme-object) EVP_PKEY* "ffi_EVP_PKEY_new_raw_private_key")
(define-c-lambda EVP_PKEY_new_raw_public_key (int ENGINE* scheme-object) EVP_PKEY* "ffi_EVP_PKEY_new_raw_public_key")
(define-c-lambda EVP_PKEY_get_raw_private_key (EVP_PKEY* scheme-object) int "ffi_EVP_PKEY_get_raw_private_key")
(define-c-lambda EVP_PKEY_get_raw_public_key (EVP_PKEY* scheme-object) int "ffi_EVP_PKEY_get_raw_public_key")

(define-c-lambda EVP_DigestSignInit (EVP_MD_CTX* EVP_PKEY*) int "ffi_EVP_DigestSignInit")
(define-c-lambda EVP_DigestSign (EVP_MD_CTX* scheme-object scheme-object) int "ffi_EVP_DigestSign")
(define-c-lambda EVP_DigestVerifyInit (EVP_MD_CTX* EVP_PKEY*) int "ffi_EVP_DigestVerifyInit")
(define-c-lambda EVP_DigestVerify (EVP_MD_CTX* scheme-object scheme-object) int "ffi_EVP_DigestVerify")

(define-c-lambda EVP_PKEY_derive_init (EVP_PKEY_CTX*) int)
(define-c-lambda EVP_PKEY_CTX_set1_pbe_pass (EVP_PKEY_CTX* scheme-object) int "ffi_EVP_PKEY_CTX_set1_pbe_pass")
(define-c-lambda EVP_PKEY_CTX_set1_scrypt_salt (EVP_PKEY_CTX* scheme-object) int "ffi_EVP_PKEY_CTX_set1_scrypt_salt")
(define-c-lambda EVP_PKEY_CTX_set_scrypt_N (EVP_PKEY_CTX* int) int "ffi_EVP_PKEY_CTX_set_scrypt_N")
(define-c-lambda EVP_PKEY_CTX_set_scrypt_r (EVP_PKEY_CTX* int) int "ffi_EVP_PKEY_CTX_set_scrypt_r")
(define-c-lambda EVP_PKEY_CTX_set_scrypt_p (EVP_PKEY_CTX* int) int "ffi_EVP_PKEY_CTX_set_scrypt_p")
(define-c-lambda EVP_PKEY_derive (EVP_PKEY_CTX* scheme-object) int "ffi_EVP_PKEY_derive")

(define-c-lambda EVP_MD_CTX_set_pkey_ctx (EVP_MD_CTX* EVP_PKEY_CTX*) void)

(define-c-lambda RAND_bytes (scheme-object int int) int "ffi_RAND_bytes")
);ffi
