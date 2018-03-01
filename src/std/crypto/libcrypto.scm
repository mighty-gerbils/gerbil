;;; -*- Scheme -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto FFI

;; compile: -ld-options "-lcrypto"

(declare
  (block)
  (standard-bindings)
  (extended-bindings)
  (not safe)
  (not run-time-bindings))

(namespace ("std/crypto/libcrypto#"))
(##namespace ("" define-macro define let let* if or and
              quote quasiquote unquote unquote-splicing
              c-lambda c-define-type c-declare c-initialize
              foreign-tags macro-slot))

(c-declare #<<END-C
#include <openssl/evp.h>
#include <openssl/err.h>
#include <openssl/dh.h>
#include <openssl/bn.h>
#include <openssl/hmac.h>
END-C
)

(c-initialize #<<END-C
ERR_load_crypto_strings ();
OpenSSL_add_all_ciphers ();
OpenSSL_add_all_digests ();
END-C
)

(c-declare #<<END-C
#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))
END-C
)

(define-macro (define-c-lambda id args ret #!optional (name #f))
  (let ((name (or name (##symbol->string id))))
    `(define ,id
       (c-lambda ,args ,ret ,name))))

;; funky decls to apease the compiler for discarding const
;; sometimes I really hate gcc (which apparently has no working option to turn
;;  that shit off -- -Wno-cast-qual doesn't fucking work, at least with 4.5.x)
;; other times I hate gsc for not having a const qualifier
(define-macro (define-c-lambda/const-pointer id args ret)
  (let ((result-type (if (eq? ret 'char-string)
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
             c-args))))
    `(define ,id
       (c-lambda ,args ,ret
         ,(##string-append "___return ((" result-type ")"
                           (##symbol->string id) "(" c-args "));")))))

(define-macro (define-c-type-predicate pred tag)
  `(define (,pred x)
     (and (##foreign? x)
          (##memq ',tag (foreign-tags x)))))

;; error handling
(define-c-lambda ERR_get_error () unsigned-long)
(define-c-lambda ERR_peek_last_error () unsigned-long)
(define-c-lambda/const-pointer ERR_lib_error_string (unsigned-long) char-string)
(define-c-lambda/const-pointer ERR_func_error_string (unsigned-long) char-string)
(define-c-lambda/const-pointer ERR_reason_error_string (unsigned-long) char-string)

;; Message Digests
(c-declare #<<END-C
static ___SCMOBJ ffi_release_EVP_MD_CTX (void *ptr);
static int ffi_EVP_DigestInit (EVP_MD_CTX *ctx, EVP_MD *type);
static int ffi_EVP_DigestUpdate (EVP_MD_CTX *ctx, ___SCMOBJ bytes, int start, int end);
static int ffi_EVP_DigestFinal (EVP_MD_CTX *ctx, ___SCMOBJ bytes);
END-C
)

(c-define-type EVP_MD "EVP_MD")
(c-define-type EVP_MD*
  (pointer EVP_MD (EVP_MD*)))
(c-define-type EVP_MD_CTX "EVP_MD_CTX")
(c-define-type EVP_MD_CTX*
  (pointer EVP_MD_CTX (EVP_MD_CTX*) "ffi_release_EVP_MD_CTX"))

(define-c-type-predicate EVP_MD? EVP_MD*)
(define-c-type-predicate EVP_MD_CTX? EVP_MD_CTX*)

(define-c-lambda EVP_MD_CTX_create () EVP_MD_CTX*)
(define-c-lambda EVP_DigestInit (EVP_MD_CTX* EVP_MD*) int
  "ffi_EVP_DigestInit")
(define-c-lambda EVP_DigestUpdate (EVP_MD_CTX* scheme-object int int) int
  "ffi_EVP_DigestUpdate")
(define-c-lambda EVP_DigestFinal (EVP_MD_CTX* scheme-object) int
  "ffi_EVP_DigestFinal")
(define-c-lambda EVP_MD_CTX_copy (EVP_MD_CTX* EVP_MD_CTX*) int
  "EVP_MD_CTX_copy_ex")

(define-c-lambda/const-pointer EVP_md5 () EVP_MD*)
(define-c-lambda/const-pointer EVP_sha1 () EVP_MD*)
(define-c-lambda/const-pointer EVP_sha224 () EVP_MD*)
(define-c-lambda/const-pointer EVP_sha256 () EVP_MD*)
(define-c-lambda/const-pointer EVP_sha384 () EVP_MD*)
(define-c-lambda/const-pointer EVP_sha512 () EVP_MD*)
(define-c-lambda/const-pointer EVP_ripemd160 () EVP_MD*)
(define-c-lambda/const-pointer EVP_whirlpool () EVP_MD*)

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
static ___SCMOBJ ffi_release_EVP_CIPHER_CTX (void *ptr);
static EVP_CIPHER_CTX *ffi_create_EVP_CIPHER_CTX ();
static int ffi_EVP_EncryptInit (EVP_CIPHER_CTX *ctx, EVP_CIPHER *type,
                                ___SCMOBJ key, ___SCMOBJ iv);
static int ffi_EVP_EncryptUpdate (EVP_CIPHER_CTX *ctx,
                                  ___SCMOBJ out, int out_start,
                                  ___SCMOBJ in, int start, int end);
static int ffi_EVP_EncryptFinal (EVP_CIPHER_CTX *ctx, ___SCMOBJ out, int start);
static int ffi_EVP_DecryptInit (EVP_CIPHER_CTX *ctx, EVP_CIPHER *type,
                                ___SCMOBJ key, ___SCMOBJ iv);
static int ffi_EVP_DecryptUpdate (EVP_CIPHER_CTX *ctx,
                                  ___SCMOBJ out, int out_start,
                                  ___SCMOBJ in, int start, int end);
static int ffi_EVP_DecryptFinal (EVP_CIPHER_CTX *ctx, ___SCMOBJ out, int start);
END-C
)

(c-define-type EVP_CIPHER "EVP_CIPHER")
(c-define-type EVP_CIPHER*
  (pointer EVP_CIPHER (EVP_CIPHER*)))
(c-define-type EVP_CIPHER_CTX "EVP_CIPHER_CTX")
(c-define-type EVP_CIPHER_CTX*
  (pointer EVP_CIPHER_CTX (EVP_CIPHER_CTX*) "ffi_release_EVP_CIPHER_CTX"))

(define-c-type-predicate EVP_CIPHER? EVP_CIPHER*)
(define-c-type-predicate EVP_CIPHER_CTX? EVP_CIPHER_CTX*)

(define-c-lambda EVP_CIPHER_CTX_create () EVP_CIPHER_CTX*
  "ffi_create_EVP_CIPHER_CTX")
(define-c-lambda EVP_EncryptInit (EVP_CIPHER_CTX* EVP_CIPHER* scheme-object scheme-object) int
  "ffi_EVP_EncryptInit")
(define-c-lambda EVP_EncryptUpdate (EVP_CIPHER_CTX* scheme-object int scheme-object int int) int
  "ffi_EVP_EncryptUpdate")
(define-c-lambda EVP_EncryptFinal (EVP_CIPHER_CTX* scheme-object int) int
  "ffi_EVP_EncryptFinal")
(define-c-lambda EVP_DecryptInit (EVP_CIPHER_CTX* EVP_CIPHER* scheme-object scheme-object) int
  "ffi_EVP_DecryptInit")
(define-c-lambda EVP_DecryptUpdate (EVP_CIPHER_CTX* scheme-object int scheme-object int int) int
  "ffi_EVP_DecryptUpdate")
(define-c-lambda EVP_DecryptFinal (EVP_CIPHER_CTX* scheme-object int) int
  "ffi_EVP_DecryptFinal")
(define-c-lambda EVP_CIPHER_CTX_copy (EVP_CIPHER_CTX* EVP_CIPHER_CTX*) int
  "EVP_CIPHER_CTX_copy")

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
static ___SCMOBJ ffi_release_HMAC_CTX (void *ptr);
static HMAC_CTX *ffi_create_HMAC_CTX ();
static int ffi_HMAC_Init (HMAC_CTX *ctx, ___SCMOBJ key, EVP_MD *type);
static int ffi_HMAC_Update (HMAC_CTX *ctx, ___SCMOBJ bytes, int start, int end);
static int ffi_HMAC_Final (HMAC_CTX *ctx, ___SCMOBJ bytes);
static void ffi_HMAC (EVP_MD *type, ___SCMOBJ key, ___SCMOBJ bytes, int start, int end, ___SCMOBJ digest);
END-C
)

(c-define-type HMAC_CTX "HMAC_CTX")
(c-define-type HMAC_CTX*
  (pointer HMAC_CTX (HMAC_CTX*) "ffi_release_HMAC_CTX"))

(define-c-type-predicate HMAC_CTX? HMAC_CTX*)

(define-c-lambda HMAC_CTX_create () HMAC_CTX*
  "ffi_create_HMAC_CTX")
(define-c-lambda HMAC_Init (HMAC_CTX* scheme-object EVP_MD*) int
  "ffi_HMAC_Init")
(define-c-lambda HMAC_Update (HMAC_CTX* scheme-object int int) int
  "ffi_HMAC_Update")
(define-c-lambda HMAC_Final (HMAC_CTX* scheme-object) int
  "ffi_HMAC_Final")
(define-c-lambda HMAC (EVP_MD* scheme-object scheme-object int int scheme-object) void
  "ffi_HMAC")

;;; BN
(c-declare #<<END-C
static ___SCMOBJ ffi_BN_free (void *bn);
static BIGNUM *ffi_BN_bin2bn (___SCMOBJ data, int, int);
static int ffi_BN_bn2bin (BIGNUM  *bn, ___SCMOBJ data);
END-C
)

(c-define-type BN "BIGNUM")
(c-define-type BN* (pointer BN (BN*) "ffi_BN_free"))
(define-c-type-predicate BN? BN*)

(define-c-lambda BN_num_bytes (BN*) int)
(define-c-lambda BN_bin2bn (scheme-object int int) BN*
  "ffi_BN_bin2bn")
(define-c-lambda BN_bn2bin (BN* scheme-object) int
  "ffi_BN_bn2bin")

;;; DH
(c-declare #<<END-C
static ___SCMOBJ ffi_DH_free (void *dh);
static BIGNUM *ffi_DH_pub_key (DH *dh);
static int ffi_DH_compute_key (___SCMOBJ secret, BIGNUM *pubkey, DH *dh);

#if (defined __OpenBSD__) || (defined LIBRESSL_VERSION_NUMBER)
#include "libcrypto-rfc5114.c"
#endif
END-C
)

(c-define-type BN-borrow* (pointer BN (BN*)))
(c-define-type DH "DH")
(c-define-type DH* (pointer DH (DH*) "ffi_DH_free"))
(define-c-type-predicate DH? DH*)

(define-c-lambda DH_pub_key (DH*) BN-borrow*
  "ffi_DH_pub_key")
(define-c-lambda DH_new () DH*)
(define-c-lambda DH_get_1024_160 () DH*)
(define-c-lambda DH_get_2048_224 () DH*)
(define-c-lambda DH_get_2048_256 () DH*)
(define-c-lambda DH_generate_key (DH*) int)
(define-c-lambda DH_size (DH*) int)
(define-c-lambda DH_compute_key (scheme-object BN* DH*) int
  "ffi_DH_compute_key")

;;; ffi helpers
(c-declare #<<END-C
static ___SCMOBJ ffi_release_EVP_MD_CTX (void *ptr)
{
  EVP_MD_CTX_destroy ((EVP_MD_CTX*)ptr);
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

static HMAC_CTX *ffi_create_HMAC_CTX ()
{
#if OPENSSL_VERSION_NUMBER < 0x10100000L
  HMAC_CTX *ctx = (HMAC_CTX*)malloc (sizeof (HMAC_CTX));
#else
  HMAC_CTX *ctx = HMAC_CTX_new ();
#endif
  if (ctx) {
    HMAC_CTX_init (ctx);
  }
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
  return HMAC_Init (ctx, U8_DATA (key), U8_LEN (key), type);
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

END-C
)
