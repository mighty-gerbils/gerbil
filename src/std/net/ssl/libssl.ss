;;; -*- Gerbil -*-
;;; © vyzo
;;; libssl FFI
(export #t)
(import :std/foreign
        (runtime: :std/crypto/libcrypto))

(begin-ffi (SSL_new
            SSL_connect
            SSL_accept
            SSL_read
            SSL_write
            SSL_shutdown
            SSL_set_host
            SSL_set_fd
            SSL_get_peer_certificate
            SSL_ERROR_WANT_READ
            SSL_ERROR_WANT_WRITE
            X509_read
            X509_get_subject_name
            X509_get_san_uris
            make-client-ssl-context
            make-client-ssl-context/v
            make-insecure-client-ssl-context
            make-server-ssl-context
            make-server-ssl-context/v
            make-actor-tls-context
            TLS1_VERSION
            TLS1_1_VERSION
            TLS1_2_VERSION
            TLS1_3_VERSION)

  (c-declare #<<END-C
#include <openssl/ssl.h>
#include <openssl/conf.h>
#include <openssl/err.h>
#include <openssl/bio.h>

#include <openssl/x509v3.h>
static int ffi_sk_GENERAL_NAME_num(const STACK_OF(GENERAL_NAME) *sk)
{
  return OPENSSL_sk_num((const OPENSSL_STACK *)sk);
}

static GENERAL_NAME *ffi_sk_GENERAL_NAME_value(const STACK_OF(GENERAL_NAME) *sk, int idx)
{
  return (GENERAL_NAME *)OPENSSL_sk_value((const OPENSSL_STACK *)sk, idx);
}

static int ffi_ssl_gerbil_data_index;

static ___SCMOBJ ffi_release_SSL_CTX (void *ptr)
{
 SSL_CTX_free((SSL_CTX*) ptr);
 return ___FIX (___NO_ERR);
}


static ___SCMOBJ ffi_release_SSL (void *ptr)
{
 SSL_free((SSL*) ptr);
 return ___FIX (___NO_ERR);
}

static ___SCMOBJ ffi_release_X509 (void *ptr)
{
 X509_free((X509*) ptr);
 return ___FIX (___NO_ERR);
}

static ___SCMOBJ ffi_ssl_error(SSL *ssl, int r)
{
 unsigned long last = ERR_peek_last_error();
 int err = SSL_get_error(ssl, r);
 switch (err) {
  case SSL_ERROR_WANT_READ:
   return ___CHR(114);
  case SSL_ERROR_WANT_WRITE:
   return ___CHR(119);
  case SSL_ERROR_ZERO_RETURN:
   return ___FIX(0);
   default:
   ___processor_state ___ps = ___GET_PSTATE();
   ___SCMOBJ result = ___make_pair(___ps, ___FIX(last), ___NUL);
   ___release_scmobj(result);
   result = ___make_pair(___ps, ___FIX(err), result);
   ___release_scmobj(result);
   result = ___make_pair(___ps, ___FIX(r), result);
   ___release_scmobj(result);
   return result;
 }
}

static SSL* ffi_ssl_new(SSL_CTX *ctx)
{
 SSL *ssl = SSL_new(ctx);
 if (!ssl) {
  return NULL;
 }

 void *ctxdata = SSL_CTX_get_app_data(ctx);
 if (ctxdata) {
   SSL_set_ex_data(ssl, ffi_ssl_gerbil_data_index, ctxdata);
 }

 return ssl;
}

static ___SCMOBJ ffi_ssl_connect(SSL *ssl)
{
 int r = SSL_connect(ssl);
 if (r > 0) {
  return ___FIX(r);
 }

 return ffi_ssl_error(ssl, r);
}

static ___SCMOBJ ffi_ssl_accept(SSL *ssl)
{
 int r = SSL_accept(ssl);
 if (r > 0) {
  return ___FIX(r);
 }

 return ffi_ssl_error(ssl, r);
}

static ___SCMOBJ ffi_ssl_read(SSL *ssl, ___SCMOBJ buf, int start, int end)
{
 int r = SSL_read(ssl, U8_DATA (buf) + start, end - start);
 if (r > 0) {
  return ___FIX(r);
 }

 return ffi_ssl_error(ssl, r);
}

static ___SCMOBJ ffi_ssl_write(SSL *ssl, ___SCMOBJ buf, int start, int end)
{
 int r = SSL_write(ssl, U8_DATA (buf) + start, end - start);
 if (r > 0) {
  return ___FIX(r);
 }

 return ffi_ssl_error(ssl, r);
}

static ___SCMOBJ ffi_ssl_shutdown(SSL *ssl)
{
 int r = SSL_shutdown(ssl);
 if (r > 0) {
  return ___FIX(r);
 }

 return ffi_ssl_error(ssl, r);
}

static ___SCMOBJ ffi_ssl_set_host(SSL *ssl, char* hostname)
{
 int r = SSL_set1_host(ssl, hostname);
 if (r <= 0) {
  return ffi_ssl_error(ssl, r);
 }

 r = SSL_set_tlsext_host_name(ssl, hostname);
 if (r <= 0) {
  return ffi_ssl_error(ssl, r);
 }

 return ___FIX(r);
}

static ___SCMOBJ ffi_ssl_set_fd(SSL *ssl, int fd)
{
 int r = SSL_set_fd(ssl, fd);
 if (r > 0) {
  return ___FIX(r);
 }

 return ffi_ssl_error(ssl, r);
 }

static SSL_CTX *ffi_client_ssl_ctx(int min_protocol_version)
{
 SSL_CTX *ctx = SSL_CTX_new(TLS_client_method());
 if (!ctx) {
  return NULL;
 }

 int r = SSL_CTX_set_min_proto_version(ctx, min_protocol_version);
 if (r <= 0) {
   ERR_print_errors_fp(stderr);
   SSL_CTX_free(ctx);
   return NULL;
 }

 SSL_CTX_set_default_verify_paths(ctx);
 SSL_CTX_set_verify(ctx, SSL_VERIFY_PEER, NULL);
 return ctx;
}

static int ffi_ssl_verify_insecure(int preverify, X509_STORE_CTX *ctx)
{
 return 1;
}

static SSL_CTX *ffi_insecure_ssl_ctx()
{
 SSL_CTX *ctx = SSL_CTX_new(TLS_method());
 if (!ctx) {
  return NULL;
 }

 SSL_CTX_set_verify(ctx, SSL_VERIFY_NONE, ffi_ssl_verify_insecure);
 return ctx;
}

static SSL_CTX *ffi_server_ssl_ctx(const char *cert_path, const char *privk_path, int min_protocol_version)
{
 SSL_CTX *ctx = SSL_CTX_new(TLS_server_method());
 if (!ctx) {
  return NULL;
 }

 int r = SSL_CTX_set_min_proto_version(ctx, min_protocol_version);
  if (r <= 0) {
   ERR_print_errors_fp(stderr);
   SSL_CTX_free(ctx);
   return NULL;
 }


 r = SSL_CTX_use_certificate_file(ctx, cert_path, SSL_FILETYPE_PEM);
 if (r <= 0) {
  SSL_CTX_free(ctx);
  ERR_print_errors_fp(stderr);
  return NULL;
  }

 r = SSL_CTX_use_PrivateKey_file(ctx, privk_path, SSL_FILETYPE_PEM);
 if (r <= 0) {
  ERR_print_errors_fp(stderr);
  SSL_CTX_free(ctx);
  return NULL;
  }

 SSL_CTX_set_verify(ctx, SSL_VERIFY_NONE, NULL);
 return ctx;
}

static int ffi_ssl_verify_actor(int preverify, X509_STORE_CTX *ctx)
{
 if (preverify) {
  return 1;
 }

 // this dance is REQUIRED because openssl won't accept a self-signed root CA otherwise.
 SSL *ssl = X509_STORE_CTX_get_ex_data(ctx, SSL_get_ex_data_X509_STORE_CTX_idx());
 STACK_OF(X509) *catrust = SSL_get_ex_data(ssl, ffi_ssl_gerbil_data_index);
 if (!catrust) {
  return 0;
 }

 X509_STORE_CTX_set0_trusted_stack(ctx, catrust);
 return X509_verify_cert(ctx);
}

static X509 *ffi_X509_read(const char *path);
static SSL_CTX *ffi_actor_tls_ctx(const char *caroot, const char *ca_file, const char *ca_path, const char *cert_chain_path, const char *privk_path)
{
 int r;

 SSL_CTX *ctx = SSL_CTX_new(TLS_method());
 if (!ctx) {
  return NULL;
 }

 // this dance is REQUIRED because openssl won't accept a self-signed root CA otherwise.
 X509 *caroot_cert = ffi_X509_read(caroot);
 if (caroot_cert) {
  STACK_OF(X509) *catrust = sk_X509_new_null();
  sk_X509_push(catrust, caroot_cert);

  r = SSL_CTX_set_min_proto_version(ctx, TLS1_2_VERSION);
  if (r <= 0) {
   ERR_print_errors_fp(stderr);
   SSL_CTX_free(ctx);
   return NULL;
 }

  r = SSL_CTX_set_app_data(ctx, catrust);
  if (r <= 0) {
   ERR_print_errors_fp(stderr);
   SSL_CTX_free(ctx);
   return NULL;
  }
 }

 r = SSL_CTX_set_session_id_context(ctx, "gerbil", 6);
 if (r <= 0) {
  ERR_print_errors_fp(stderr);
  SSL_CTX_free(ctx);
  return NULL;
 }

 r = SSL_CTX_use_certificate_chain_file(ctx, cert_chain_path);
 if (r <= 0) {
  ERR_print_errors_fp(stderr);
  SSL_CTX_free(ctx);
  return NULL;
 }

 r = SSL_CTX_use_PrivateKey_file(ctx, privk_path, SSL_FILETYPE_PEM);
 if (r <= 0) {
  ERR_print_errors_fp(stderr);
  SSL_CTX_free(ctx);
  return NULL;
 }

 r = SSL_CTX_load_verify_locations(ctx, ca_file, ca_path);
 if (r <= 0) {
  ERR_print_errors_fp(stderr);
  SSL_CTX_free(ctx);
  return NULL;
 }

 r = SSL_CTX_build_cert_chain(ctx, SSL_BUILD_CHAIN_FLAG_CHECK);
 if (r <= 0) {
  ERR_print_errors_fp(stderr);
  SSL_CTX_free(ctx);
  return NULL;
 }

 SSL_CTX_set_client_CA_list(ctx, SSL_load_client_CA_file(ca_file));
 SSL_CTX_set_verify(ctx, SSL_VERIFY_PEER|SSL_VERIFY_FAIL_IF_NO_PEER_CERT|0, ffi_ssl_verify_actor);
 return ctx;
}

__thread char openssl_x509_name_buf[16384];
static char *ffi_X509_get_subject_name(X509 *cert)
{
 X509_NAME *name = X509_get_subject_name(cert);
 if (!name) {
  return NULL;
 }

 int r = X509_NAME_get_text_by_NID(name, NID_commonName, openssl_x509_name_buf, sizeof(openssl_x509_name_buf));
 if (r <= 0) {
  return NULL;
 }

 return openssl_x509_name_buf;
}

static char *ffi_X509_get_san_uris(X509 *cert)
{
 int cursor = 0;

 STACK_OF(GENERAL_NAME) *san_names = X509_get_ext_d2i(cert, NID_subject_alt_name, NULL, NULL);
 if (san_names == NULL) {
  return NULL;
 }

 int count = ffi_sk_GENERAL_NAME_num(san_names);
 for (int i = 0; i < count; i++) {
  const GENERAL_NAME *name = ffi_sk_GENERAL_NAME_value(san_names, i);
  if (name->type == GEN_URI) {
   int len = ASN1_STRING_length(name->d.uniformResourceIdentifier);
   if (cursor + len < sizeof(openssl_x509_name_buf) - 2) {
    const char *uri = ASN1_STRING_get0_data(name->d.uniformResourceIdentifier);
    memcpy(openssl_x509_name_buf + cursor, uri, len);
    cursor += len;
    openssl_x509_name_buf[cursor] = ',';
    cursor++;
   } else {
    openssl_x509_name_buf[cursor] = 0;
    return  openssl_x509_name_buf;
   }
  }
 }

 if (!cursor) {
  return NULL;
 }

 openssl_x509_name_buf[cursor] = 0;
 return openssl_x509_name_buf;
}

static X509 *ffi_X509_read(const char *path)
{
 BIO *bp = BIO_new(BIO_s_file());
 if (!bp) {
  return NULL;
 }

 int r = BIO_read_filename(bp, path);
 if (r <= 0) {
  ERR_print_errors_fp(stderr);
  return NULL;
 }

 X509 *x509 = PEM_read_bio_X509(bp, NULL, 0, NULL);
 if (!x509) {
  ERR_print_errors_fp(stderr);
  BIO_free(bp);
  return NULL;
 }

 BIO_free(bp);
 return x509;
}

END-C
)

  (c-initialize #<<END-C
OPENSSL_init_ssl(0, NULL);
ffi_ssl_gerbil_data_index = SSL_get_ex_new_index(0, "gerbil data", NULL, NULL, NULL);
END-C
)

  (define SSL_ERROR_WANT_READ #\r)
  (define SSL_ERROR_WANT_WRITE #\w)

  (c-define-type SSL_METHOD "SSL_METHOD")
  (c-define-type SSL_METHOD* (pointer SSL_METHOD (SSL_METHOD*)))

  (c-define-type SSL_CTX "SSL_CTX")
  (c-define-type SSL_CTX* (pointer SSL_CTX (SSL_CTX*) "ffi_release_SSL_CTX"))

  (c-define-type SSL "SSL")
  (c-define-type SSL* (pointer SSL (SSL*) "ffi_release_SSL"))

  (c-define-type X509 "X509")
  (c-define-type X509* (pointer X509 (X509*) "ffi_release_X509"))

  (define-c-lambda SSL_new (SSL_CTX*) SSL* "ffi_ssl_new")
  (define-c-lambda SSL_connect (SSL*) scheme-object "ffi_ssl_connect")
  (define-c-lambda SSL_accept (SSL*) scheme-object "ffi_ssl_accept")
  (define-c-lambda SSL_read (SSL* scheme-object int int) scheme-object "ffi_ssl_read")
  (define-c-lambda SSL_write (SSL* scheme-object int int) scheme-object "ffi_ssl_write")
  (define-c-lambda SSL_shutdown (SSL*) scheme-object "ffi_ssl_shutdown")

  (define-c-lambda SSL_set_host (SSL* char-string) scheme-object "ffi_ssl_set_host")
  (define-c-lambda SSL_set_fd (SSL* int) scheme-object "ffi_ssl_set_fd")
  (define-c-lambda SSL_get_peer_certificate (SSL*) X509*)

  (define-const TLS1_VERSION)
  (define-const TLS1_1_VERSION)
  (define-const TLS1_2_VERSION)
  (define-const TLS1_3_VERSION)

  (define (make-client-ssl-context #!optional (min-protocol-version TLS1_2_VERSION))
    (make-client-ssl-context/v min-protocol-version))

  (define (make-server-ssl-context cert-path key-path
                                   #!optional (min-protocol-version TLS1_2_VERSION))
    (make-server-ssl-context/v cert-path key-path min-protocol-version))

  (define-c-lambda make-client-ssl-context/v (int) SSL_CTX* "ffi_client_ssl_ctx")
  (define-c-lambda make-insecure-client-ssl-context () SSL_CTX* "ffi_insecure_ssl_ctx")
  (define-c-lambda make-server-ssl-context/v (char-string char-string int) SSL_CTX* "ffi_server_ssl_ctx")
  (define-c-lambda make-actor-tls-context (char-string char-string char-string char-string char-string) SSL_CTX* "ffi_actor_tls_ctx")

  (define-c-lambda X509_get_subject_name (X509*) char-string "ffi_X509_get_subject_name")
  (define-c-lambda X509_get_san_uris (X509*) char-string "ffi_X509_get_san_uris")
  (define-c-lambda X509_read (char-string) X509* "ffi_X509_read"))
