;;; -*- Gerbil -*-
;;; © vyzo
;;; libcrypto FFI
(import :std/ffi)
(export #t)

(C-ffi-macrology)
(C-include "<openssl/crypto.h>"
           "<openssl/evp.h>"
           "<openssl/err.h>"
           "<openssl/dh.h>"
           "<openssl/bn.h>"
           "<openssl/hmac.h>"
           "<openssl/rand.h>")
(C-declare #<<END-C
#if (OPENSSL_VERSION_MAJOR < 3)
#  error "OpenSSL v3 required"
#endif

#if defined (LIBRESSL_VERSION_NUMBER) && (LIBRESSL_VERSION_NUMBER < 0x3070000fL)
#  error "LibreSSL v3.7.0 or later required"
#endif

/* error strings */
__thread char openssl_error_buf[256];
static char *ffi_openssl_error_string(unsigned long err)
{
 ERR_error_string_n(err, openssl_error_buf, sizeof(openssl_error_buf));
 return openssl_error_buf;
}

/* digests */
static ___SCMOBJ ffi_release_EVP_MD_CTX (void *ptr)
{
  EVP_MD_CTX_free ((EVP_MD_CTX*)ptr);
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

/* ciphers */

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

/* hmac */
static ___SCMOBJ ffi_release_HMAC_CTX (void *ptr)
{
  HMAC_CTX_free ((HMAC_CTX*) ptr);
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

/* bn */
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

/* pkey */
#ifndef ___GERBIL_FFI_RELEASE_PKEY
static ___SCMOBJ ffi_release_EVP_PKEY (void *ptr)
{
  EVP_PKEY_free ((EVP_PKEY*)ptr);
  return ___FIX (___NO_ERR);
}
#endif

static ___SCMOBJ ffi_release_EVP_PKEY_CTX (void *ptr)
{
  EVP_PKEY_CTX_free ((EVP_PKEY_CTX*)ptr);
  return ___FIX (___NO_ERR);
}

static EVP_PKEY* ffi_EVP_PKEY_keygen (EVP_PKEY_CTX* ctx)
{
  EVP_PKEY* pkey = NULL;
  if (EVP_PKEY_keygen(ctx, &pkey) == 1) {
    return pkey;
  } else {
    return NULL;
  }
}

static EVP_PKEY *ffi_EVP_PKEY_new_raw_private_key (int type, ENGINE* e, ___SCMOBJ o)
{
  return EVP_PKEY_new_raw_private_key(type, e, U8_DATA(o), (size_t)U8_LEN(o));
}
static EVP_PKEY *ffi_EVP_PKEY_new_raw_public_key (int type, ENGINE* e, ___SCMOBJ o)
{
  return EVP_PKEY_new_raw_public_key(type, e, U8_DATA(o), (size_t)U8_LEN(o));
}
static int ffi_EVP_PKEY_get_raw_private_key (EVP_PKEY* pkey, ___SCMOBJ o)
{
  size_t len;
  if ((void*)o == (void*)___FAL) {
    EVP_PKEY_get_raw_private_key(pkey, NULL, &len);
    return (int)len;
  } else if (EVP_PKEY_get_raw_private_key(pkey, U8_DATA(o), &len)) {
    return (int)len;
  } else {
    return 0;
  }
}
static int ffi_EVP_PKEY_get_raw_public_key (EVP_PKEY* pkey, ___SCMOBJ o)
{
  size_t len;
  if ((void*)o == (void*)___FAL) {
    EVP_PKEY_get_raw_public_key(pkey, NULL, &len);
    return (int)len;
  } else {
    return EVP_PKEY_get_raw_public_key(pkey, U8_DATA(o), &len) ? (int)len : 0;
  }
}
static int ffi_EVP_DigestSign(EVP_MD_CTX *ctx, ___SCMOBJ sig, ___SCMOBJ tbs)
{
  size_t siglen = U8_LEN(sig);
  return EVP_DigestSign(ctx, U8_DATA(sig), &siglen, U8_DATA(tbs), U8_LEN(tbs)) ? siglen : 0;
}
static int ffi_EVP_DigestVerify(EVP_MD_CTX *ctx, ___SCMOBJ sig, ___SCMOBJ tbs)
{
  return EVP_DigestVerify(ctx, U8_DATA(sig), U8_LEN(sig), U8_DATA(tbs), U8_LEN(tbs));
}

static int ffi_EVP_DigestSignInit(EVP_MD_CTX *ctx, EVP_PKEY *pkey)
{
 return EVP_DigestSignInit(ctx, NULL, NULL, NULL, pkey);
}

static int ffi_EVP_DigestVerifyInit(EVP_MD_CTX *ctx, EVP_PKEY *pkey)
{
 return EVP_DigestVerifyInit(ctx, NULL, NULL, NULL, pkey);
}

static int ffi_EVP_PKEY_CTX_set1_pbe_pass(EVP_PKEY_CTX *ctx, ___SCMOBJ pass)
{
 return EVP_PKEY_CTX_set1_pbe_pass(ctx, U8_DATA(pass), U8_LEN(pass));
}

static int ffi_EVP_PKEY_CTX_set1_scrypt_salt(EVP_PKEY_CTX *ctx, ___SCMOBJ salt)
{
 return EVP_PKEY_CTX_set1_scrypt_salt(ctx, U8_DATA(salt), U8_LEN(salt));
}

static int ffi_EVP_PKEY_derive(EVP_PKEY_CTX *ctx, ___SCMOBJ output)
{
 size_t outlen = U8_LEN(output);
 int r = EVP_PKEY_derive(ctx, U8_DATA(output), &outlen);
 if (r > 0) {
  return (int)outlen;
 }
 return r;
}

/* randomness */
static int ffi_RAND_bytes (___SCMOBJ bytes)
{
  return RAND_bytes (U8_DATA (bytes), U8_LEN(bytes));
}

static int ffi_RAND_priv_bytes (___SCMOBJ bytes, unsigned strength)
{
  return RAND_priv_bytes_ex (NULL, U8_DATA (bytes), U8_LEN(bytes), strength);
}


END-C
)

;; error handling
(def-C-lambda ERR_get_error () unsigned-long)
(def-C-lambda ERR_peek_last_error () unsigned-long)
(def-C-lambda ERR_lib_error_string (unsigned-long) char-string)
(def-C-lambda ERR_func_error_string (unsigned-long) char-string)
(def-C-lambda ERR_reason_error_string (unsigned-long) char-string)
(def-C-lambda ERR_error_string (unsigned-long) char-string "ffi_openssl_error_string")

;;; Engines
(def-C-type/pointer ENGINE)

;;; Message Digests
(def-C-type/pointer EVP_MD)
(def-C-type/pointer EVP_MD_CTX release: "ffi_release_EVP_MD_CTX")

(def-C-lambda EVP_MD_CTX_new () EVP_MD_CTX*)
(def-C-lambda EVP_DigestInit (EVP_MD_CTX* EVP_MD*) int "ffi_EVP_DigestInit")
(def-C-lambda EVP_DigestUpdate (EVP_MD_CTX* scheme-object int int) int "ffi_EVP_DigestUpdate")
(def-C-lambda EVP_DigestFinal (EVP_MD_CTX* scheme-object) int "ffi_EVP_DigestFinal")
(def-C-lambda EVP_MD_CTX_copy (EVP_MD_CTX* EVP_MD_CTX*) int "EVP_MD_CTX_copy_ex")

(defsyntax-case def-C-thunk/guard ()
  ((_ name return guard)
   (let ((name-str (symbol->string (stx-e #'name)))
         (guard-str (stx-e #'guard)))
     (with-syntax ((c-code
                    (string-append "\n"
                                   "#if " guard-str "\n"
                                   "___result = " name-str "();\n"
                                   "#else \n"
                                   "___result = NULL;\n"
                                   "#endif\n")))
       #'(def-C-lambda name () return c-code)))))

(def-C-thunk/guard EVP_md5 EVP_MD* "!defined(OPENSSL_NO_MD5)")
(def-C-lambda EVP_sha1 () EVP_MD*)
(def-C-lambda EVP_sha224 () EVP_MD*)
(def-C-lambda EVP_sha256 () EVP_MD*)
(def-C-lambda EVP_sha384 () EVP_MD*)
(def-C-lambda EVP_sha512 () EVP_MD*)
(def-C-thunk/guard EVP_ripemd160 EVP_MD* "!defined(OPENSSL_NO_RMD160)")
(def-C-thunk/guard EVP_whirlpool EVP_MD* "!defined(OPENSSL_NO_WHIRLPOOL)")
(def-C-thunk/guard EVP_blake2b512 EVP_MD* "!defined(OPENSSL_NO_BLAKE2)")
(def-C-thunk/guard EVP_blake2s256 EVP_MD* "!defined(OPENSSL_NO_BLAKE2)")
(def-C-lambda EVP_sha3_224 () EVP_MD*)
(def-C-lambda EVP_sha3_256 () EVP_MD*)
(def-C-lambda EVP_sha3_384 () EVP_MD*)
(def-C-lambda EVP_sha3_512 () EVP_MD*)
(def-C-lambda EVP_shake128 () EVP_MD*)
(def-C-lambda EVP_shake256 () EVP_MD*)
(def-C-thunk/guard EVP_keccak256 EVP_MD* "0") ;; still not available as of 3.0.10

(def-C-lambda EVP_MD_type (EVP_MD*) int)
(def-C-lambda EVP_MD_pkey_type (EVP_MD*) int)
(def-C-lambda EVP_MD_size (EVP_MD*) int)
(def-C-lambda EVP_MD_block_size (EVP_MD*) int)
(def-C-lambda EVP_MD_name (EVP_MD*) char-string)

(def-C-lambda EVP_MD_CTX_md (EVP_MD_CTX*) EVP_MD*)
(def-C-lambda EVP_MD_CTX_type (EVP_MD_CTX*) int)
(def-C-lambda EVP_MD_CTX_size (EVP_MD_CTX*) int)
(def-C-lambda EVP_MD_CTX_block_size (EVP_MD_CTX*) int)

(def-C-lambda EVP_get_digestbyname (char-string) EVP_MD*)
(def-C-lambda EVP_get_digestbynid (int) EVP_MD*)

;;; Ciphers

(def-C-type/pointer EVP_CIPHER)
(def-C-type/pointer EVP_CIPHER_CTX release: "ffi_release_EVP_CIPHER_CTX")

(def-C-lambda EVP_CIPHER_CTX_create () EVP_CIPHER_CTX* "ffi_create_EVP_CIPHER_CTX")
(def-C-lambda EVP_EncryptInit (EVP_CIPHER_CTX* EVP_CIPHER* scheme-object scheme-object) int "ffi_EVP_EncryptInit")
(def-C-lambda EVP_EncryptUpdate (EVP_CIPHER_CTX* scheme-object int scheme-object int int) int "ffi_EVP_EncryptUpdate")
(def-C-lambda EVP_EncryptFinal (EVP_CIPHER_CTX* scheme-object int) int "ffi_EVP_EncryptFinal")
(def-C-lambda EVP_DecryptInit (EVP_CIPHER_CTX* EVP_CIPHER* scheme-object scheme-object) int "ffi_EVP_DecryptInit")
(def-C-lambda EVP_DecryptUpdate (EVP_CIPHER_CTX* scheme-object int scheme-object int int) int "ffi_EVP_DecryptUpdate")
(def-C-lambda EVP_DecryptFinal (EVP_CIPHER_CTX* scheme-object int) int "ffi_EVP_DecryptFinal")
(def-C-lambda EVP_CIPHER_CTX_copy (EVP_CIPHER_CTX* EVP_CIPHER_CTX*) int "EVP_CIPHER_CTX_copy")

(def-C-lambda EVP_rc4 () EVP_CIPHER*)

(def-C-lambda EVP_aes_128_ecb () EVP_CIPHER*)
(def-C-lambda EVP_aes_128_cbc () EVP_CIPHER*)
(def-C-lambda EVP_aes_128_cfb () EVP_CIPHER*)
(def-C-lambda EVP_aes_128_ofb () EVP_CIPHER*)
(def-C-lambda EVP_aes_128_ctr () EVP_CIPHER*)
(def-C-lambda EVP_aes_128_ccm () EVP_CIPHER*)
(def-C-lambda EVP_aes_128_gcm () EVP_CIPHER*)
(def-C-lambda EVP_aes_128_xts () EVP_CIPHER*)

(def-C-lambda EVP_aes_192_ecb () EVP_CIPHER*)
(def-C-lambda EVP_aes_192_cbc () EVP_CIPHER*)
(def-C-lambda EVP_aes_192_cfb () EVP_CIPHER*)
(def-C-lambda EVP_aes_192_ofb () EVP_CIPHER*)
(def-C-lambda EVP_aes_192_ctr () EVP_CIPHER*)
(def-C-lambda EVP_aes_192_ccm () EVP_CIPHER*)
(def-C-lambda EVP_aes_192_gcm () EVP_CIPHER*)

(def-C-lambda EVP_aes_256_ecb () EVP_CIPHER*)
(def-C-lambda EVP_aes_256_cbc () EVP_CIPHER*)
(def-C-lambda EVP_aes_256_cfb () EVP_CIPHER*)
(def-C-lambda EVP_aes_256_ofb () EVP_CIPHER*)
(def-C-lambda EVP_aes_256_ctr () EVP_CIPHER*)
(def-C-lambda EVP_aes_256_ccm () EVP_CIPHER*)
(def-C-lambda EVP_aes_256_gcm () EVP_CIPHER*)
(def-C-lambda EVP_aes_256_xts () EVP_CIPHER*)

(def-C-lambda EVP_camellia_128_ecb () EVP_CIPHER*)
(def-C-lambda EVP_camellia_128_cbc () EVP_CIPHER*)
(def-C-lambda EVP_camellia_128_cfb () EVP_CIPHER*)
(def-C-lambda EVP_camellia_128_ofb () EVP_CIPHER*)

(def-C-lambda EVP_camellia_192_ecb () EVP_CIPHER*)
(def-C-lambda EVP_camellia_192_cbc () EVP_CIPHER*)
(def-C-lambda EVP_camellia_192_cfb () EVP_CIPHER*)
(def-C-lambda EVP_camellia_192_ofb () EVP_CIPHER*)

(def-C-lambda EVP_camellia_256_ecb () EVP_CIPHER*)
(def-C-lambda EVP_camellia_256_cbc () EVP_CIPHER*)
(def-C-lambda EVP_camellia_256_cfb () EVP_CIPHER*)
(def-C-lambda EVP_camellia_256_ofb () EVP_CIPHER*)

(def-C-lambda EVP_cast5_ecb () EVP_CIPHER*)
(def-C-lambda EVP_cast5_cbc () EVP_CIPHER*)
(def-C-lambda EVP_cast5_cfb () EVP_CIPHER*)
(def-C-lambda EVP_cast5_ofb () EVP_CIPHER*)

(def-C-lambda EVP_bf_ecb () EVP_CIPHER*)
(def-C-lambda EVP_bf_cbc () EVP_CIPHER*)
(def-C-lambda EVP_bf_cfb () EVP_CIPHER*)
(def-C-lambda EVP_bf_ofb () EVP_CIPHER*)

(def-C-lambda EVP_CIPHER_nid (EVP_CIPHER*) int)
(def-C-lambda EVP_CIPHER_block_size (EVP_CIPHER*) int)
(def-C-lambda EVP_CIPHER_key_length (EVP_CIPHER*) int)
(def-C-lambda EVP_CIPHER_iv_length (EVP_CIPHER*) int)
(def-C-lambda EVP_CIPHER_name (EVP_CIPHER*) char-string)

(def-C-lambda EVP_CIPHER_CTX_cipher (EVP_CIPHER_CTX*) EVP_CIPHER*)
(def-C-lambda EVP_CIPHER_CTX_nid (EVP_CIPHER_CTX*) int)
(def-C-lambda EVP_CIPHER_CTX_block_size (EVP_CIPHER_CTX*) int)
(def-C-lambda EVP_CIPHER_CTX_key_length (EVP_CIPHER_CTX*) int)
(def-C-lambda EVP_CIPHER_CTX_iv_length (EVP_CIPHER_CTX*) int)

(def-C-lambda EVP_get_cipherbyname (char-string) EVP_CIPHER*)
(def-C-lambda EVP_get_cipherbynid (int) EVP_CIPHER*)

;;; HMAC

(def-C-type/pointer HMAC_CTX release: "ffi_release_HMAC_CTX")

(def-C-lambda HMAC_CTX_new () HMAC_CTX*)
(def-C-lambda HMAC_Init (HMAC_CTX* scheme-object EVP_MD*) int "ffi_HMAC_Init")
(def-C-lambda HMAC_Update (HMAC_CTX* scheme-object int int) int "ffi_HMAC_Update")
(def-C-lambda HMAC_Final (HMAC_CTX* scheme-object) int "ffi_HMAC_Final")
(def-C-lambda HMAC (EVP_MD* scheme-object scheme-object int int scheme-object) void "ffi_HMAC")

;;; BN
(def-C-type/pointer BN "BIGNUM" release: "ffi_BN_free")

(def-C-lambda BN_num_bytes (BN*) int)
(def-C-lambda BN_bin2bn (scheme-object int int) BN* "ffi_BN_bin2bn")
(def-C-lambda BN_bn2bin (BN* scheme-object) int "ffi_BN_bn2bin")

;;; PKEY
(def-C-type/pointer EVP_PKEY release: "ffi_release_EVP_PKEY")
(def-C-type/pointer EVP_PKEY_CTX release: "ffi_release_EVP_PKEY_CTX")

(def-C-const* EVP_PKEY_NONE EVP_PKEY_RSA EVP_PKEY_RSA2 EVP_PKEY_DSA EVP_PKEY_DSA1 EVP_PKEY_DSA2 EVP_PKEY_DSA3 EVP_PKEY_DSA4 EVP_PKEY_DH EVP_PKEY_EC EVP_PKEY_HMAC EVP_PKEY_DHX EVP_PKEY_CMAC EVP_PKEY_TLS1_PRF EVP_PKEY_HKDF EVP_PKEY_RSA_PSS EVP_PKEY_SM2 EVP_PKEY_SCRYPT EVP_PKEY_SIPHASH EVP_PKEY_POLY1305 EVP_PKEY_X25519 EVP_PKEY_ED25519 EVP_PKEY_X448 EVP_PKEY_ED448)

(def-C-lambda EVP_PKEY_CTX_new (EVP_PKEY* ENGINE*) EVP_PKEY_CTX*)
(def-C-lambda EVP_PKEY_CTX_new_id (int ENGINE*) EVP_PKEY_CTX*)
(def-C-lambda EVP_PKEY_CTX_dup (EVP_PKEY_CTX*) EVP_PKEY_CTX*)
(def-C-lambda EVP_PKEY_keygen_init (EVP_PKEY_CTX*) int)
(def-C-lambda EVP_PKEY_keygen (EVP_PKEY_CTX*) EVP_PKEY* "ffi_EVP_PKEY_keygen")
(def-C-lambda EVP_PKEY_new_raw_private_key (int ENGINE* scheme-object) EVP_PKEY* "ffi_EVP_PKEY_new_raw_private_key")
(def-C-lambda EVP_PKEY_new_raw_public_key (int ENGINE* scheme-object) EVP_PKEY* "ffi_EVP_PKEY_new_raw_public_key")
(def-C-lambda EVP_PKEY_get_raw_private_key (EVP_PKEY* scheme-object) int "ffi_EVP_PKEY_get_raw_private_key")
(def-C-lambda EVP_PKEY_get_raw_public_key (EVP_PKEY* scheme-object) int "ffi_EVP_PKEY_get_raw_public_key")
(def-C-lambda EVP_PKEY_type (EVP_PKEY*) integer "EVP_PKEY_get_base_id")

(def-C-lambda EVP_DigestSignInit (EVP_MD_CTX* EVP_PKEY*) int "ffi_EVP_DigestSignInit")
(def-C-lambda EVP_DigestSign (EVP_MD_CTX* scheme-object scheme-object) int "ffi_EVP_DigestSign")
(def-C-lambda EVP_DigestVerifyInit (EVP_MD_CTX* EVP_PKEY*) int "ffi_EVP_DigestVerifyInit")
(def-C-lambda EVP_DigestVerify (EVP_MD_CTX* scheme-object scheme-object) int "ffi_EVP_DigestVerify")

(def-C-lambda EVP_PKEY_derive_init (EVP_PKEY_CTX*) int)
(def-C-lambda EVP_PKEY_CTX_set1_pbe_pass (EVP_PKEY_CTX* scheme-object) int "ffi_EVP_PKEY_CTX_set1_pbe_pass")
(def-C-lambda EVP_PKEY_CTX_set1_scrypt_salt (EVP_PKEY_CTX* scheme-object) int "ffi_EVP_PKEY_CTX_set1_scrypt_salt")
(def-C-lambda EVP_PKEY_CTX_set_scrypt_N (EVP_PKEY_CTX* int) int)
(def-C-lambda EVP_PKEY_CTX_set_scrypt_r (EVP_PKEY_CTX* int) int)
(def-C-lambda EVP_PKEY_CTX_set_scrypt_p (EVP_PKEY_CTX* int) int)
(def-C-lambda EVP_PKEY_derive (EVP_PKEY_CTX* scheme-object) int "ffi_EVP_PKEY_derive")

(def-C-lambda EVP_MD_CTX_set_pkey_ctx (EVP_MD_CTX* EVP_PKEY_CTX*) void)

;;; randomness
(def-C-lambda RAND_bytes (scheme-object) int "ffi_RAND_bytes")
(def-C-lambda RAND_priv_bytes (scheme-object unsigned-int) int "ffi_RAND_priv_bytes")
