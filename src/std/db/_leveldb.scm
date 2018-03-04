;;; -*- Scheme -*-
;;; (C) vyzo at hackzen.org
;;; LevelDB FFI

;; compile: -ld-options "-lleveldb"

(declare
  (block)
  (standard-bindings)
  (extended-bindings)
  (not safe))

(namespace ("std/db/_leveldb#"))
(##namespace ("" define-macro define let let* if or and
              quote quasiquote unquote unquote-splicing
              c-lambda c-define-type c-declare c-initialize
              ))

(c-declare #<<END-C
#include <leveldb/c.h>
#include <stdlib.h>
#include <string.h>

#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))

typedef struct slice {
 char* data;
 size_t len;
 int own;
} slice_t;

static ___SCMOBJ ffi_free (void *ptr);
static ___SCMOBJ ffi_free_errptr (void *ptr);
static ___SCMOBJ ffi_free_slice (void *ptr);
static ___SCMOBJ ffi_free_writebatch (void *ptr);
static ___SCMOBJ ffi_free_iter (void *ptr);
static ___SCMOBJ ffi_free_options (void *ptr);
static ___SCMOBJ ffi_free_readoptions (void *ptr);
static ___SCMOBJ ffi_free_writeoptions (void *ptr);
static ___SCMOBJ ffi_free_cache (void *ptr);
static ___SCMOBJ ffi_free_filterpolicy (void *ptr);
static void ffi_leveldb_put (leveldb_t* db, leveldb_writeoptions_t* opts, ___SCMOBJ key, ___SCMOBJ val, char** errptr);
static slice_t* ffi_leveldb_get (leveldb_t* db, leveldb_readoptions_t* opts, ___SCMOBJ key, char** errptr);
static void ffi_leveldb_delete (leveldb_t* db, leveldb_writeoptions_t* opts, ___SCMOBJ key, char** errptr);
static void ffi_leveldb_writebatch_put (leveldb_writebatch_t* batch, ___SCMOBJ key, ___SCMOBJ val);
static void ffi_leveldb_writebatch_delete (leveldb_writebatch_t* batch, ___SCMOBJ key);
static void ffi_leveldb_iter_seek (leveldb_iterator_t* itor, ___SCMOBJ key);
static slice_t* ffi_leveldb_iter_key (leveldb_iterator_t* itor);
static slice_t* ffi_leveldb_iter_value (leveldb_iterator_t* itor);
static uint64_t ffi_leveldb_approximate_sizes (leveldb_t* db, int num_ranges, ___SCMOBJ start, ___SCMOBJ limit);
static void ffi_leveldb_compact_range (leveldb_t* db, ___SCMOBJ start, ___SCMOBJ limit);
static char** ffi_make_errptr();
static void ffi_errptr_clear (char** errptr);
static void ffi_slice_bytes (slice_t* slice, ___SCMOBJ bytes);
END-C
)

(define-macro (define-c-lambda id args ret #!optional (name #f))
  (let ((name (or name (##symbol->string id))))
    `(define ,id
       (c-lambda ,args ,ret ,name))))

(c-define-type char*
  (pointer char (char*)))
(c-define-type errptr
  (pointer char* (errptr) "ffi_free_errptr"))
(c-define-type slice_t "slice_t")
(c-define-type slice_t*
  (pointer slice_t (slice_t*) "ffi_free_slice"))

(c-define-type leveldb_t "leveldb_t")
(c-define-type leveldb_t*
  (pointer leveldb_t (leveldb_t*)))

(c-define-type leveldb_writebatch_t "leveldb_writebatch_t")
(c-define-type leveldb_writebatch_t*
  (pointer leveldb_writebatch_t (leveldb_writebatch_t*) "ffi_free_writebatch"))
(c-define-type leveldb_iterator_t "leveldb_iterator_t")
(c-define-type leveldb_iterator_t*
  (pointer leveldb_iterator_t (leveldb_iterator_t*))) ; free with leveldb_iter_destroy

(c-define-type leveldb_options_t "leveldb_options_t")
(c-define-type leveldb_options_t*
  (pointer leveldb_options_t (leveldb_options_t*) "ffi_free_options"))
(c-define-type leveldb_readoptions_t "leveldb_readoptions_t")
(c-define-type leveldb_readoptions_t*
  (pointer leveldb_readoptions_t (leveldb_readoptions_t*) "ffi_free_readoptions"))
(c-define-type leveldb_writeoptions_t "leveldb_writeoptions_t")
(c-define-type leveldb_writeoptions_t*
  (pointer leveldb_writeoptions_t (leveldb_writeoptions_t*) "ffi_free_writeoptions"))

(c-define-type leveldb_cache_t "leveldb_cache_t")
(c-define-type leveldb_cache_t*
  (pointer leveldb_cache_t (leveldb_cache_t*) "ffi_free_cache"))
(c-define-type leveldb_filterpolicy_t "leveldb_filterpolicy_t")
(c-define-type leveldb_filterpolicy_t*
  (pointer leveldb_filterpolicy_t (leveldb_filterpolicy_t*) "ffi_free_filterpolicy"))

(define-c-lambda leveldb_open (leveldb_options_t* UTF-8-string errptr) leveldb_t*)
(define-c-lambda leveldb_close (leveldb_t*) void)

(define-c-lambda leveldb_put (leveldb_t* leveldb_writeoptions_t* scheme-object scheme-object errptr) void
  "ffi_leveldb_put")
(define-c-lambda leveldb_get (leveldb_t* leveldb_readoptions_t* scheme-object errptr) slice_t*
  "ffi_leveldb_get")
(define-c-lambda leveldb_delete (leveldb_t* leveldb_writeoptions_t* scheme-object errptr) void
  "ffi_leveldb_delete")
(define-c-lambda leveldb_write (leveldb_t* leveldb_writeoptions_t* leveldb_writebatch_t* errptr) void)

(define-c-lambda leveldb_writebatch_create () leveldb_writebatch_t*)
(define-c-lambda leveldb_writebatch_clear (leveldb_writebatch_t*) void)
(define-c-lambda leveldb_writebatch_put (leveldb_writebatch_t* scheme-object scheme-object) void
  "ffi_leveldb_writebatch_put")
(define-c-lambda leveldb_writebatch_delete (leveldb_writebatch_t* scheme-object) void
  "ffi_leveldb_writebatch_delete")

(define-c-lambda leveldb_create_iterator (leveldb_t* leveldb_readoptions_t*) leveldb_iterator_t*)
(define-c-lambda leveldb_iter_destroy (leveldb_iterator_t*) void)
(define-c-lambda leveldb_iter_valid (leveldb_iterator_t*) int)
(define-c-lambda leveldb_iter_seek_to_first (leveldb_iterator_t*) void)
(define-c-lambda leveldb_iter_seek_to_last (leveldb_iterator_t*) void)
(define-c-lambda leveldb_iter_seek (leveldb_iterator_t* scheme-object) void
  "ffi_leveldb_iter_seek")
(define-c-lambda leveldb_iter_next (leveldb_iterator_t*) void)
(define-c-lambda leveldb_iter_prev (leveldb_iterator_t*) void)
(define-c-lambda leveldb_iter_key (leveldb_iterator_t*) slice_t*
  "ffi_leveldb_iter_key")
(define-c-lambda leveldb_iter_value (leveldb_iterator_t*) slice_t*
  "ffi_leveldb_iter_value")
(define-c-lambda leveldb_iter_get_error (leveldb_iterator_t* errptr) void)

(define-c-lambda leveldb_compact_range (leveldb_t* scheme-object scheme-object) void
  "ffi_leveldb_compact_range")
(define-c-lambda leveldb_destroy_db (leveldb_options_t* char-string errptr) void)
(define-c-lambda leveldb_repair_db (leveldb_options_t* char-string errptr) void)

(define-c-lambda leveldb_options_create () leveldb_options_t*)
(define-c-lambda leveldb_options_set_create_if_missing (leveldb_options_t* int) void)
(define-c-lambda leveldb_options_set_error_if_exists (leveldb_options_t* int) void)
(define-c-lambda leveldb_options_set_paranoid_checks (leveldb_options_t* int) void)
(define-c-lambda leveldb_options_set_compression (leveldb_options_t* int) void)
(define-c-lambda leveldb_options_set_write_buffer_size (leveldb_options_t* size_t) void)
(define-c-lambda leveldb_options_set_max_open_files (leveldb_options_t* int) void)
(define-c-lambda leveldb_options_set_block_size (leveldb_options_t* size_t) void)
(define-c-lambda leveldb_options_set_block_restart_interval (leveldb_options_t* int) void)

(define-c-lambda leveldb_options_set_cache (leveldb_options_t* leveldb_cache_t*) void)
(define-c-lambda leveldb_cache_create_lru (size_t) leveldb_cache_t*)

(define-c-lambda leveldb_options_set_filter_policy (leveldb_options_t* leveldb_filterpolicy_t*) void)
(define-c-lambda leveldb_filterpolicy_create_bloom (int) leveldb_filterpolicy_t*)

(define-c-lambda leveldb_readoptions_create () leveldb_readoptions_t*)
(define-c-lambda leveldb_readoptions_set_verify_checksums (leveldb_readoptions_t* int) void)
(define-c-lambda leveldb_readoptions_set_fill_cache (leveldb_readoptions_t* int) void)

(define-c-lambda leveldb_writeoptions_create () leveldb_writeoptions_t*)
(define-c-lambda leveldb_writeoptions_set_sync (leveldb_writeoptions_t* int) void)

(define-c-lambda make_errptr () errptr
  "ffi_make_errptr")
(define-c-lambda errptr_clear (errptr) void
  "ffi_errptr_clear")
(define-c-lambda errptr_str (errptr) char-string
  "___return (*___arg1);")
(define-c-lambda slice_len (slice_t*) size_t
  "___return (___arg1->len);")
(define-c-lambda slice_bytes (slice_t* scheme-object) void
  "ffi_slice_bytes")

(c-declare #<<END-C
#ifndef ___HAVE_FFI_FREE
#define ___HAVE_FFI_FREE
___SCMOBJ ffi_free (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}
#endif

___SCMOBJ ffi_free_errptr (void *ptr)
{
 ffi_errptr_clear ((char**)ptr);
 free (ptr);
 return ___FIX (___NO_ERR);
}

___SCMOBJ ffi_free_slice (void *ptr)
{
 slice_t* slice = (slice_t*)ptr;
 if (slice->own)
 {
  free (slice->data);
 }
 free (ptr);
 return ___FIX (___NO_ERR);
}

___SCMOBJ ffi_free_writebatch (void *ptr)
{
 leveldb_writebatch_destroy ((leveldb_writebatch_t*)ptr);
 return ___FIX (___NO_ERR);
}
___SCMOBJ ffi_free_iter (void *ptr)
{
  leveldb_iter_destroy ((leveldb_iterator_t*)ptr);
  return ___FIX (___NO_ERR);
}

___SCMOBJ ffi_free_options (void *ptr)
{
 leveldb_options_destroy ((leveldb_options_t*)ptr);
 return ___FIX (___NO_ERR);
}

___SCMOBJ ffi_free_readoptions (void *ptr)
{
 leveldb_readoptions_destroy ((leveldb_readoptions_t*)ptr);
 return ___FIX (___NO_ERR);
}

___SCMOBJ ffi_free_writeoptions (void *ptr)
{
 leveldb_writeoptions_destroy ((leveldb_writeoptions_t*)ptr);
  return ___FIX (___NO_ERR);
}

___SCMOBJ ffi_free_cache (void *ptr)
{
 leveldb_cache_destroy ((leveldb_cache_t*)ptr);
 return ___FIX (___NO_ERR);
}

___SCMOBJ ffi_free_filterpolicy (void *ptr)
{
 leveldb_filterpolicy_destroy ((leveldb_filterpolicy_t*)ptr);
  return ___FIX (___NO_ERR);
}


void ffi_leveldb_put (leveldb_t* db, leveldb_writeoptions_t* opts, ___SCMOBJ key, ___SCMOBJ val, char** errptr)
{
 leveldb_put (db, opts, (char*)U8_DATA(key), U8_LEN(key), (char*)U8_DATA(val), U8_LEN(val), errptr);
}

slice_t* ffi_leveldb_get (leveldb_t* db, leveldb_readoptions_t* opts, ___SCMOBJ key, char** errptr)
{
 char *val;
 size_t len;
 val = leveldb_get (db, opts, (char*)U8_DATA (key), U8_LEN (key), &len, errptr);
 if (val)
 {
  slice_t* res = malloc (sizeof (slice_t));
  res->data = val;
  res->len = len;
  res->own = 1;
  return res;
 }
 return NULL;
 }

void ffi_leveldb_delete (leveldb_t* db, leveldb_writeoptions_t* opts, ___SCMOBJ key, char** errptr)
{
 leveldb_delete (db, opts, (char*)U8_DATA (key), U8_LEN (key), errptr);
}

void ffi_leveldb_writebatch_put (leveldb_writebatch_t* batch, ___SCMOBJ key, ___SCMOBJ val)
{
 leveldb_writebatch_put (batch, (char*)U8_DATA (key), U8_LEN (key), (char*)U8_DATA (val), U8_LEN (val));
}

void ffi_leveldb_writebatch_delete (leveldb_writebatch_t* batch, ___SCMOBJ key)
{
 leveldb_writebatch_delete (batch, (char*)U8_DATA (key), U8_LEN (key));
}

void ffi_leveldb_iter_seek (leveldb_iterator_t* itor, ___SCMOBJ key)
{
 leveldb_iter_seek (itor, (char*)U8_DATA (key), U8_LEN (key));
}

slice_t* ffi_leveldb_iter_key (leveldb_iterator_t* itor)
{
 char *val;
 size_t len;
 val = (char*)leveldb_iter_key (itor, &len);
 if (val)
 {
  slice_t* res = malloc (sizeof (slice_t));
  res->data = val;
  res->len = len;
  res->own = 0;
  return res;
 }
 return NULL;
}

slice_t* ffi_leveldb_iter_value (leveldb_iterator_t* itor)
{
 char *val;
 size_t len;
 val = (char*)leveldb_iter_value (itor, &len);
 if (val)
 {
  slice_t* res = malloc (sizeof (slice_t));
  res->data = val;
  res->len = len;
  res->own = 0;
  return res;
 }
 return NULL;
}

void ffi_leveldb_compact_range (leveldb_t* db, ___SCMOBJ start, ___SCMOBJ limit)
{
 leveldb_compact_range (db, (char*)U8_DATA (start), U8_LEN (start), (char*)U8_DATA (limit), U8_LEN (limit));
}

char** ffi_make_errptr()
{
 char** res = malloc (sizeof (char*));
 *res = 0;
 return res;
}

void ffi_errptr_clear (char** errptr)
{
 if (*errptr)
 {
  free (*errptr);
  *errptr = 0;
 }
 }

void ffi_slice_bytes (slice_t* slice, ___SCMOBJ bytes)
{
 memcpy (U8_DATA (bytes), slice->data, slice->len);
}

END-C
)
