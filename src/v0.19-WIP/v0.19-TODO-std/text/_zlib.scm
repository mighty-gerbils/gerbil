;;; -*- Scheme -*-
;;; (C) vyzo at hackzen.org
;;; zlib ffi

;; compile: -ld-options "-lz"

(namespace ("std/text/_zlib#"))
(##namespace ("" define-macro define let let* if or and
              quote quasiquote unquote unquote-splicing
              c-lambda c-define-type c-declare c-initialize
              ))

(c-declare #<<END-C
#include <stdlib.h>
#include <string.h>
#include <zlib.h>

#ifndef ___HAVE_FFI_U8VECTOR
#define ___HAVE_FFI_U8VECTOR
#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))
#endif
END-C
)

(define-macro (define-c-lambda id args ret #!optional (name #f))
  (let ((name (or name (##symbol->string id))))
    `(define ,id
       (c-lambda ,args ,ret ,name))))

(define-macro (define-const symbol)
  (let* ((str (##symbol->string symbol))
         (ref (##string-append "___return (" str ");")))
    `(define ,symbol
       ((c-lambda () int ,ref)))))

(c-declare #<<END-C
static ___SCMOBJ ffi_free (void *ptr);
static z_stream *ffi_zlib_make_z_stream ();
static int ffi_zlib_compress (___SCMOBJ dest, ___SCMOBJ src, int level);
static int ffi_zlib_inflate (z_stream *zs, ___SCMOBJ dest, ___SCMOBJ src,  int start);
static int ffi_zlib_deflate (z_stream* zs, ___SCMOBJ dest, ___SCMOBJ src, int start, int flush);
END-C
)

(define-const Z_OK)
(define-const Z_STREAM_END)
(define-const Z_NEED_DICT)

(define-const Z_NO_COMPRESSION)
(define-const Z_BEST_SPEED)
(define-const Z_BEST_COMPRESSION)
(define-const Z_DEFAULT_COMPRESSION)

(define-const Z_FINISH)
(define-const Z_NO_FLUSH)

(c-define-type z_stream "z_stream")
(c-define-type z_stream*
  (pointer z_stream (z_stream*) "ffi_free"))

(define-c-lambda make_z_stream () z_stream*
  "ffi_zlib_make_z_stream")
(define-c-lambda z_stream_total_in (z_stream*) unsigned-long
  "___return (___arg1->total_in);")
(define-c-lambda z_stream_total_out (z_stream*) unsigned-long
  "___return (___arg1->total_out);")
(define-c-lambda z_stream_avail_in (z_stream*) unsigned-long
  "___return (___arg1->avail_in);")
(define-c-lambda z_stream_avail_out (z_stream*) unsigned-long
  "___return (___arg1->avail_out);")
(define-c-lambda z_stream_msg (z_stream*) char-string
  "___return (___arg1->msg);")
(define-c-lambda compressBound (unsigned-long) unsigned-long)
(define-c-lambda compress2 (scheme-object scheme-object int) int
  "ffi_zlib_compress")
(define-c-lambda inflateInit (z_stream*) int
  "___return (inflateInit2 (___arg1, MAX_WBITS + 32));")
(define-c-lambda inflate (z_stream* scheme-object scheme-object int) int
  "ffi_zlib_inflate")
(define-c-lambda inflateEnd (z_stream*) int)
(define-c-lambda deflateInit (z_stream* int) int
  "deflateInit")
(define-c-lambda deflateInit_gz (z_stream* int) int
  "___return (deflateInit2 (___arg1, ___arg2, Z_DEFLATED, MAX_WBITS + 16, MAX_MEM_LEVEL, Z_DEFAULT_STRATEGY ));")
(define-c-lambda deflate (z_stream* scheme-object scheme-object int int) int
  "ffi_zlib_deflate")
(define-c-lambda deflateEnd (z_stream*) int
  "deflateEnd")
(define-c-lambda deflateBound (z_stream* unsigned-long) unsigned-long
  "deflateBound")

(c-declare #<<END-C
#ifndef ___HAVE_FFI_FREE
#define ___HAVE_FFI_FREE
static ___SCMOBJ ffi_free (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}
#endif

static z_stream *ffi_zlib_make_z_stream ()
{
 z_stream *zs = (z_stream *)malloc (sizeof (z_stream));
 if (zs) {
  memset (zs, 0, sizeof (z_stream));
 }
 return zs;
}

static int ffi_zlib_compress (___SCMOBJ dest, ___SCMOBJ src, int level)
{
 size_t destlen = U8_LEN (dest);
 int r = compress2 (U8_DATA (dest), &destlen,
                    U8_DATA (src), U8_LEN (src),
                    level);
 if (r == Z_OK) {
  return destlen;
 } else {
  return r;
 }
}

static int ffi_zlib_inflate (z_stream *zs, ___SCMOBJ dest, ___SCMOBJ src,  int start)
{
 zs->next_out = U8_DATA (dest);
 zs->avail_out = U8_LEN (dest);
 if (!___FALSEP(src)) {
  zs->next_in = U8_DATA (src) + start;
  zs->avail_in = U8_LEN (src) - start;
 } else {
  zs->next_in = NULL;
  zs->avail_in = 0;
 }
 return inflate (zs, Z_SYNC_FLUSH);
}

static int ffi_zlib_deflate (z_stream* zs, ___SCMOBJ dest, ___SCMOBJ src, int start, int flush)
{
 zs->next_out = U8_DATA (dest);
 zs->avail_out = U8_LEN (dest);
 if (!___FALSEP(src)) {
  zs->next_in = U8_DATA (src) + start;
  zs->avail_in = U8_LEN (src) - start;
 } else {
  zs->next_in = NULL;
  zs->avail_in = 0;
 }
 return deflate (zs, flush);
}
END-C
)
