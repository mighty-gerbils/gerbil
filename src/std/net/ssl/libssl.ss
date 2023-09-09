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
            make-client-ssl-context
            make-insecure-client-ssl-context
            ;; make-server-ssl-context
            ;; make-actor-tls-context
            )

  (c-declare #<<END-C
#include <openssl/ssl.h>

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
 int err = SSL_get_error(ssl, r);
 switch (err) {
  case SSL_ERROR_WANT_READ:
   return ___CHR(114);
  case SSL_ERROR_WANT_WRITE:
   return ___CHR(119);
  case SSL_ERROR_ZERO_RETURN:
   return ___FIX(0);
   default:
   ___SCMOBJ result = ___make_pair(___PSTATE, ___FIX(r), ___FIX(err));
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
 if (r > 0) {
  return ___FIX(r);
 }

 return ffi_ssl_error(ssl, r);
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
 SSL_CTX *ctx = SSL_CTX_new(TLS_method());
 if (!ctx) {
  return NULL;
 }

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

  ;; ...
  )
