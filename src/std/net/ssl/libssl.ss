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
            make-insecure-client-ssl-context
            make-server-ssl-context
            make-actor-tls-context)

  (c-declare #<<END-C
#include <openssl/ssl.h>
#include <openssl/conf.h>
#include <openssl/err.h>
#include <openssl/bio.h>

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
   ___processor_state ___ps = ___PSTATE;
   ___SCMOBJ result = ___make_pair(___ps, ___FIX(last), ___NUL);
   ___release_scmobj(result);
   result = ___make_pair(___ps, ___FIX(err), result);
   ___release_scmobj(result);
   result = ___make_pair(___ps, ___FIX(r), result);
   ___release_scmobj(result);
   return result;
 }
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

static SSL_CTX *ffi_default_ssl_ctx()
{
 SSL_CTX *ctx = SSL_CTX_new(TLS_client_method());
 if (!ctx) {
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

static SSL_CTX *ffi_server_ssl_ctx(const char *cert_path, const char *privk_path)
{
 SSL_CTX *ctx = SSL_CTX_new(TLS_server_method());
 if (!ctx) {
  return NULL;
 }

 int r = SSL_CTX_use_certificate_file(ctx, cert_path, SSL_FILETYPE_PEM);
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

static SSL_CTX *ffi_actor_tls_ctx(const char *ca_path, const char *cert_path, const char *privk_path)
{
 SSL_CTX *ctx = SSL_CTX_new(TLS_method());
 if (!ctx) {
  return NULL;
 }

 int r = SSL_CTX_load_verify_dir(ctx, ca_path);
 if (r <= 0) {
  ERR_print_errors_fp(stderr);
  SSL_CTX_free(ctx);
  return NULL;
  }

 r = SSL_CTX_use_certificate_file(ctx, cert_path, SSL_FILETYPE_PEM);
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

 SSL_CTX_set_verify(ctx, SSL_VERIFY_PEER|SSL_VERIFY_FAIL_IF_NO_PEER_CERT|0, NULL);
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

 int count = sk_GENERAL_NAME_num(san_names);
 for (int i = 0; i < count; i++) {
  const GENERAL_NAME *name = sk_GENERAL_NAME_value(san_names, i);
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

  (define-c-lambda SSL_new (SSL_CTX*) SSL*)
  (define-c-lambda SSL_connect (SSL*) scheme-object "ffi_ssl_connect")
  (define-c-lambda SSL_accept (SSL*) scheme-object "ffi_ssl_accept")
  (define-c-lambda SSL_read (SSL* scheme-object int int) scheme-object "ffi_ssl_read")
  (define-c-lambda SSL_write (SSL* scheme-object int int) scheme-object "ffi_ssl_write")
  (define-c-lambda SSL_shutdown (SSL*) scheme-object "ffi_ssl_shutdown")

  (define-c-lambda SSL_set_host (SSL* char-string) scheme-object "ffi_ssl_set_host")
  (define-c-lambda SSL_set_fd (SSL* int) scheme-object "ffi_ssl_set_fd")
  (define-c-lambda SSL_get_peer_certificate (SSL*) X509*)

  (define-c-lambda make-client-ssl-context () SSL_CTX* "ffi_default_ssl_ctx")
  (define-c-lambda make-insecure-client-ssl-context () SSL_CTX* "ffi_insecure_ssl_ctx")
  (define-c-lambda make-server-ssl-context (char-string char-string) SSL_CTX* "ffi_server_ssl_ctx")
  (define-c-lambda make-actor-tls-context (char-string char-string char-string) SSL_CTX* "ffi_actor_tls_ctx")

  (define-c-lambda X509_get_subject_name (X509*) char-string "ffi_X509_get_subject_name")
  (define-c-lambda X509_get_san_uris (X509*) char-string "ffi_X509_get_san_uris")
  (define-c-lambda X509_read (char-string) X509* "ffi_X509_read"))
