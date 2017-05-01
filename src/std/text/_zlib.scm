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

#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))
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
static ___SCMOBJ ffi_release_z_stream (void *ptr);
static z_stream *ffi_make_z_stream ();
static int ffi_compress (___SCMOBJ dest, ___SCMOBJ src, int level);
static int ffi_inflate (z_stream *zs, ___SCMOBJ dest, ___SCMOBJ src,  int start);
END-C
)

(define-const Z_OK)
(define-const Z_STREAM_END)
(define-const Z_NEED_DICT)

(define-const Z_NO_COMPRESSION)
(define-const Z_BEST_SPEED)
(define-const Z_BEST_COMPRESSION)
(define-const Z_DEFAULT_COMPRESSION)

(c-define-type z_stream "z_stream")
(c-define-type z_stream*
  (pointer z_stream (z_stream*) "ffi_release_z_stream"))

(define-c-lambda make_z_stream () z_stream*
  "ffi_make_z_stream")
(define-c-lambda z_stream_in (z_stream*) unsigned-long
  "___return (___arg1->total_in);")
(define-c-lambda z_stream_out (z_stream*) unsigned-long
  "___return (___arg1->total_out);")
(define-c-lambda z_stream_msg (z_stream*) char-string
  "___return (___arg1->msg);")
(define-c-lambda compressBound (unsigned-long) unsigned-long)
(define-c-lambda deflate (scheme-object scheme-object int) int
  "ffi_compress")
(define-c-lambda inflateInit (z_stream*) int)
(define-c-lambda inflate (z_stream* scheme-object scheme-object int) int
  "ffi_inflate")
(define-c-lambda inflateEnd (z_stream*) int)

(c-declare #<<END-C
static ___SCMOBJ ffi_release_z_stream (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}

static z_stream *ffi_make_z_stream ()
{
 z_stream *zs = malloc (sizeof (z_stream));
 if (zs) {
  memset (zs, 0, sizeof (z_stream));
 }
 return zs;
}

static int ffi_compress (___SCMOBJ dest, ___SCMOBJ src, int level)
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

static int ffi_inflate (z_stream *zs, ___SCMOBJ dest, ___SCMOBJ src,  int start)
{
 zs->next_out = U8_DATA (dest);
 zs->avail_out = U8_LEN (dest);
 zs->total_out = 0;            
 zs->next_in = U8_DATA (src) + start;
 zs->avail_in = U8_LEN (src) - start;
 zs->total_in = 0;
 return inflate (zs, Z_SYNC_FLUSH);
}
END-C
)
