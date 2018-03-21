;;; -*- Scheme -*-
;;; (C) vyzo at hackzen.org
;;; LMDB FFI

;; compile: -ld-options "-llmdb"

(declare
  (block)
  (standard-bindings)
  (extended-bindings)
  (not safe))

(namespace ("std/db/_lmdb#"))
(##namespace ("" define-macro define let let* if or and
              quote quasiquote unquote unquote-splicing
              c-lambda c-define-type c-declare c-initialize
              ))

(c-declare #<<END-C
#include <lmdb.h>
#include <stdlib.h>
#include <string.h>

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

(define-macro (define-guard guard defn)
  (if (eval `(cond-expand (,guard #t) (else #f)))
    '(begin)
    (begin
      (eval `(define-cond-expand-feature ,guard))
      defn)))

;;; constants
;; Environment flags
(define-const MDB_FIXEDMAP)
(define-const MDB_NOSUBDIR)
(define-const MDB_NOSYNC)
(define-const MDB_RDONLY)
(define-const MDB_NOMETASYNC)
(define-const MDB_WRITEMAP)
(define-const MDB_MAPASYNC)
(define-const MDB_NOTLS)
(define-const MDB_NOLOCK)
(define-const MDB_NORDAHEAD)
(define-const MDB_NOMEMINIT)
;; mdb_dbi_open	Database Flags
(define-const MDB_REVERSEKEY)
(define-const MDB_DUPSORT)
(define-const MDB_INTEGERKEY)
(define-const MDB_DUPFIXED)
(define-const MDB_INTEGERDUP)
(define-const MDB_REVERSEDUP)
(define-const MDB_CREATE)
;; mdb_put	Write Flags
(define-const MDB_NOOVERWRITE)
(define-const MDB_NODUPDATA)
(define-const MDB_CURRENT)
(define-const MDB_RESERVE)
(define-const MDB_APPEND)
(define-const MDB_APPENDDUP)
(define-const MDB_MULTIPLE)
;; mdb_copy	Copy Flags
(define-const MDB_CP_COMPACT)
;; Cursor Get operations
(define-const MDB_FIRST)
(define-const MDB_FIRST_DUP)
(define-const MDB_GET_BOTH)
(define-const MDB_GET_BOTH_RANGE)
(define-const MDB_GET_CURRENT)
(define-const MDB_GET_MULTIPLE)
(define-const MDB_LAST)
(define-const MDB_LAST_DUP)
(define-const MDB_NEXT)
(define-const MDB_NEXT_DUP)
;; (define-const MDB_NEXT_MULTIPLE)
(define-const MDB_NEXT_NODUP)
(define-const MDB_PREV)
(define-const MDB_PREV_DUP)
(define-const MDB_PREV_NODUP)
(define-const MDB_SET)
(define-const MDB_SET_KEY)
(define-const MDB_SET_RANGE)
;; (define-const MDB_PREV_MULTIPLE)
;; errors	Return Codes
(define-const MDB_SUCCESS)
(define-const MDB_KEYEXIST)
(define-const MDB_NOTFOUND)
(define-const MDB_PAGE_NOTFOUND)
(define-const MDB_CORRUPTED)
(define-const MDB_PANIC)
(define-const MDB_VERSION_MISMATCH)
(define-const MDB_INVALID)
(define-const MDB_MAP_FULL)
(define-const MDB_DBS_FULL)
(define-const MDB_READERS_FULL)
(define-const MDB_TLS_FULL)
(define-const MDB_TXN_FULL)
(define-const MDB_CURSOR_FULL)
(define-const MDB_PAGE_FULL)
(define-const MDB_MAP_RESIZED)
(define-const MDB_INCOMPATIBLE)
(define-const MDB_BAD_RSLOT)
(define-const MDB_BAD_TXN)
(define-const MDB_BAD_VALSIZE)
(define-const MDB_BAD_DBI)

;;; LMDB types
(c-define-type MDB_env "MDB_env")
(c-define-type MDB_env*
  (pointer MDB_env (MDB_env*)))
(c-define-type MDB_txn "MDB_txn")
(c-define-type MDB_txn*
  (pointer MDB_txn (MDB_txn*)))
(c-define-type MDB_dbi "MDB_dbi")
(c-define-type MDB_cursor "MDB_cursor")
(c-define-type MDB_cursor*
  (pointer MDB_cursor (MDB_cursor*)))
(c-define-type MDB_val "MDB_val")
(c-define-type MDB_stat "MDB_stat")
(c-define-type MDB_envinfo "MDB_envinfo")

;; ffi types for output parameters
(c-declare #<<END-C
static ___SCMOBJ ffi_free (void *ptr);
END-C
)

(c-define-type MDB_env**
  (pointer MDB_env* (MDB_env**) "ffi_free"))
(c-define-type MDB_txn**
  (pointer MDB_txn* (MDB_txn**) "ffi_free"))
(c-define-type MDB_dbi*
  (pointer MDB_dbi (MDB_dbi*) "ffi_free"))
(c-define-type MDB_cursor**
  (pointer MDB_cursor* (MDB_cursor**) "ffi_free"))
(c-define-type MDB_val*
  (pointer MDB_val (MDB_val*) "ffi_free"))
(c-define-type MDB_stat*
  (pointer MDB_stat (MDB_stat*) "ffi_free"))
(c-define-type MDB_envinfo*
  (pointer MDB_envinfo (MDB_envinfo*) "ffi_free"))
(define-guard ffi-have-int*
  (c-define-type int*
    (pointer int (int*) "ffi_free")))
(define-guard ffi-have-unsigned-int*
  (c-define-type unsigned-int*
    (pointer unsigned-int (unsigned-int*) "ffi_free")))
(define-guard ffi-have-size_t*
  (c-define-type size_t*
    (pointer size_t (size_t*) "ffi_free")))
(define-guard ffi-have-UTF-8-string*
  (c-define-type UTF-8-string*
    (pointer UTF-8-string (UTF-8-string*) "ffi_free")))

;;; API
;; ffi hekpers
(c-declare #<<END-C
static int ffi_mdb_get (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ key, MDB_val *data);
static int ffi_mdb_put (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ key, ___SCMOBJ bytes, unsigned int flags);
static int ffi_mdb_del (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ key, ___SCMOBJ bytes);
static int ffi_mdb_cursor_put (MDB_cursor *cursor, ___SCMOBJ key, ___SCMOBJ bytes, unsigned int flags);
static int ffi_mdb_cursor_get (MDB_cursor *cursor, ___SCMOBJ key, MDB_val *keyval, ___SCMOBJ data, MDB_val *dataval, unsigned int op);
static int ffi_mdb_cmp (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ key1, ___SCMOBJ key2);
static int ffi_mdb_dcmp (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ data1, ___SCMOBJ data2);
static void ffi_mdb_val_data (MDB_val* val, ___SCMOBJ bytes);
END-C
)

(define-c-lambda ffi_make_mdb_env_ptr_ptr () MDB_env**
  "___return ((MDB_env**)malloc (sizeof (MDB_env*)));")
(define-c-lambda ffi_mdb_env_ptr (MDB_env**) MDB_env*
  "___return (*___arg1);")
(define-c-lambda ffi_make_mdb_txn_ptr_ptr () MDB_txn**
  "___return ((MDB_txn**)malloc (sizeof (MDB_txn*)));")
(define-c-lambda ffi_mdb_txn_ptr (MDB_txn**) MDB_txn*
  "___return (*___arg1);")
(define-c-lambda ffi_make_mdb_dbi_ptr () MDB_dbi*
  "___return ((MDB_dbi*)malloc (sizeof (MDB_dbi)));")
(define-c-lambda ffi_mdb_dbi_ptr_value (MDB_dbi*) MDB_dbi
  "___return (*___arg1);")
(define-c-lambda ffi_mdb_dbi_value (MDB_dbi) unsigned-int
  "___return (___arg1);")
(define-c-lambda ffi_make_mdb_val_ptr () MDB_val*
  "___return ((MDB_val*)malloc (sizeof (MDB_val)));")
(define-c-lambda ffi_mdb_val_size (MDB_val*) size_t
  "___return (___arg1->mv_size);")
(define-c-lambda ffi_mdb_val_data (MDB_val* scheme-object) void
  "ffi_mdb_val_data")
(define-c-lambda ffi_make_mdb_cursor_ptr_ptr () MDB_cursor**
  "___return ((MDB_cursor**)malloc (sizeof (MDB_cursor*)));")
(define-c-lambda ffi_mdb_cursor_ptr (MDB_cursor**) MDB_cursor*
  "___return (*___arg1);")
(define-c-lambda ffi_make_mdb_stat_ptr () MDB_stat*
  "___return ((MDB_stat*)malloc (sizeof (MDB_stat)));")
(define-c-lambda ffi_mdb_stat_psize (MDB_stat*) unsigned-int
  "___return (___arg1->ms_psize);")
(define-c-lambda ffi_mdb_stat_depth (MDB_stat*) unsigned-int
  "___return (___arg1->ms_depth);")
(define-c-lambda ffi_mdb_stat_branch_pages (MDB_stat*) size_t
  "___return (___arg1->ms_branch_pages);")
(define-c-lambda ffi_mdb_stat_leaf_pages (MDB_stat*) size_t
  "___return (___arg1->ms_leaf_pages);")
(define-c-lambda ffi_mdb_stat_overflow_pages (MDB_stat*) size_t
  "___return (___arg1->ms_overflow_pages);")
(define-c-lambda ffi_mdb_stat_entries (MDB_stat*) size_t
  "___return (___arg1->ms_entries);")
(define-c-lambda ffi_mdb_envinfo_mapsize (MDB_envinfo*) size_t
  "___return (___arg1->me_mapsize);")
(define-c-lambda ffi_mdb_envinfo_last_pgno (MDB_envinfo*) size_t
  "___return (___arg1->me_last_pgno);")
(define-c-lambda ffi_mdb_envinfo_last_txnid (MDB_envinfo*) size_t
  "___return (___arg1->me_last_txnid);")
(define-c-lambda ffi_mdb_envinfo_maxreaders (MDB_envinfo*) unsigned-int
  "___return (___arg1->me_maxreaders);")
(define-c-lambda ffi_mdb_envinfo_numreaders (MDB_envinfo*) unsigned-int
  "___return (___arg1->me_numreaders);")
(define-c-lambda ffi_make_mdb_envinfo_ptr () MDB_envinfo*
  "___return ((MDB_envinfo*)malloc (sizeof (MDB_envinfo)));")
(define-c-lambda ffi_make_uint_ptr () unsigned-int*
  "___return ((unsigned int*)malloc (sizeof (unsigned int)));")
(define-c-lambda ffi_uint_ptr_value (unsigned-int*) unsigned-int
  "___return (*___arg1);")
(define-c-lambda ffi_make_string_ptr () UTF-8-string*
  "___return ((char**)malloc (sizeof (char*)));")
(define-c-lambda ffi_string_ptr_value (UTF-8-string*) UTF-8-string
  "___return (*___arg1);")
(define-c-lambda ffi_make_size_t_ptr () size_t*
  "___return ((size_t*)malloc (sizeof (size_t)));")
(define-c-lambda ffi_size_t_ptr_value (size_t*) size_t
  "___return (*___arg1);")

;; LMDB API
(define-c-lambda mdb_version () UTF-8-string
  "___return (mdb_version (NULL, NULL, NULL));")
(define-c-lambda mdb_strerror (int) UTF-8-string
  "mdb_strerror")
(define-c-lambda mdb_env_create (MDB_env**) int
  "mdb_env_create")
(define-c-lambda mdb_env_open (MDB_env* UTF-8-string unsigned-int int) int
  "mdb_env_open")
(define-c-lambda mdb_env_copy (MDB_env* UTF-8-string) int
  "mdb_env_copy")
;; mdb_env_copyfd
;; mdb_env_copy2
;; mdb_env_copyfd2
(define-c-lambda mdb_env_stat (MDB_env* MDB_stat*) int
  "mdb_env_stat")
(define-c-lambda mdb_env_info (MDB_env* MDB_envinfo*) int
  "mdb_env_info")
(define-c-lambda mdb_env_sync (MDB_env* int) int
  "mdb_env_sync")
(define-c-lambda mdb_env_close (MDB_env*) void
  "mdb_env_close")
(define-c-lambda mdb_env_set_flags (MDB_env* unsigned-int int) int
  "mdb_env_set_flags")
(define-c-lambda mdb_env_get_flags (MDB_env* unsigned-int*) int
  "mdb_env_get_flags")
(define-c-lambda mdb_env_get_path (MDB_env* UTF-8-string*) int
  "___return (mdb_env_get_path (___arg1, (const char**)___arg2));")
;; mdb_env_get_fd
(define-c-lambda mdb_env_set_mapsize (MDB_env* size_t) int
  "mdb_env_set_mapsize")
(define-c-lambda mdb_env_set_maxreaders (MDB_env* unsigned-int) int
  "mdb_env_set_maxreaders")
(define-c-lambda mdb_env_get_maxreaders (MDB_env* unsigned-int*) int
  "mdb_env_get_maxreaders")
(define-c-lambda mdb_env_set_maxdbs (MDB_env* unsigned-int) int
  "mdb_env_set_maxdbs")
(define-c-lambda mdb_env_get_maxkeysize (MDB_env*) int
  "mdb_env_get_maxkeysize")
;; mdb_env_set_userctx
;; mdb_env_get_userctx
;; mdb_env_set_assert
(define-c-lambda mdb_txn_begin (MDB_env* MDB_txn* unsigned-int MDB_txn**) int
  "mdb_txn_begin")
(define-c-lambda mdb_txn_env (MDB_txn*) MDB_env*
  "mdb_txn_env")
(define-c-lambda mdb_txn_id (MDB_txn*) size_t
  "mdb_txn_id")
(define-c-lambda mdb_txn_commit (MDB_txn*) int
  "mdb_txn_commit")
(define-c-lambda mdb_txn_abort (MDB_txn*) void
  "mdb_txn_abort")
(define-c-lambda mdb_txn_reset (MDB_txn*) void
  "mdb_txn_reset")
(define-c-lambda mdb_txn_renew (MDB_txn*) int
  "mdb_txn_renew")
(define-c-lambda mdb_dbi_open (MDB_txn* UTF-8-string unsigned-int MDB_dbi*) int
  "mdb_dbi_open")
(define-c-lambda mdb_stat (MDB_txn* MDB_dbi MDB_stat*) int
  "mdb_stat")
(define-c-lambda mdb_dbi_flags (MDB_txn* MDB_dbi unsigned-int*) int
  "mdb_dbi_flags")
(define-c-lambda mdb_dbi_close (MDB_env* MDB_dbi) void
  "mdb_dbi_close")
(define-c-lambda mdb_drop (MDB_txn* MDB_dbi int) int
  "mdb_drop")
;; mdb_set_compare
;; mdb_set_dupsort
;; mdb_set_relfunc
;; mdb_set_relctx
(define-c-lambda mdb_get (MDB_txn* MDB_dbi scheme-object MDB_val*) int
  "ffi_mdb_get")
(define-c-lambda mdb_put (MDB_txn* MDB_dbi scheme-object scheme-object unsigned-int) int
  "ffi_mdb_put")
(define-c-lambda mdb_del (MDB_txn* MDB_dbi scheme-object scheme-object) int
  "ffi_mdb_del")
(define-c-lambda mdb_cursor_open (MDB_txn* MDB_dbi MDB_cursor**) int
  "mdb_cursor_open")
(define-c-lambda mdb_cursor_close (MDB_cursor*) void
  "mdb_cursor_close")
(define-c-lambda mdb_cursor_renew (MDB_txn* MDB_cursor*) int
  "mdb_cursor_renew")
(define-c-lambda mdb_cursor_txn (MDB_cursor*) MDB_txn*
  "mdb_cursor_txn")
(define-c-lambda mdb_cursor_dbi (MDB_cursor*) MDB_dbi
  "mdb_cursor_dbi")
(define-c-lambda mdb_cursor_get (MDB_cursor* scheme-object MDB_val* scheme-object MDB_val* int) int
  "ffi_mdb_cursor_get")
(define-c-lambda mdb_cursor_put (MDB_cursor* scheme-object scheme-object unsigned-int) int
  "ffi_mdb_cursor_put")
(define-c-lambda mdb_cursor_del (MDB_cursor* unsigned-int) int
  "mdb_cursor_del")
(define-c-lambda mdb_cursor_count (MDB_cursor* size_t*) int
  "mdb_cursor_count")
(define-c-lambda mdb_cmp (MDB_txn* MDB_dbi scheme-object scheme-object) int
  "ffi_mdb_cmp")
(define-c-lambda mdb_dcmp (MDB_txn* MDB_dbi scheme-object scheme-object) int
  "ffi_mdb_dcmp")
;; mdb_reader_list
(define-c-lambda mdb_reader_check (MDB_env* int*) int
  "mdb_reader_check")

 ;; ffi helper implementation
(c-declare #<<END-C
#ifndef ___HAVE_FFI_FREE
#define ___HAVE_FFI_FREE
___SCMOBJ ffi_free (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}
#endif

int ffi_mdb_get (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ key, MDB_val *data)
{
 MDB_val keyx;
 keyx.mv_size = U8_LEN (key);
 keyx.mv_data = U8_DATA (key);
 return mdb_get (txn, dbi, &keyx, data);
}


int ffi_mdb_put (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ key, ___SCMOBJ bytes, unsigned int flags)
{
 MDB_val keyx, data;
 keyx.mv_size = U8_LEN (key);
 keyx.mv_data = U8_DATA (key);
 data.mv_size = U8_LEN (bytes);
 data.mv_data = U8_DATA (bytes);

 return mdb_put (txn, dbi, &keyx, &data, flags);
}

int ffi_mdb_del (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ key, ___SCMOBJ bytes)
{
 MDB_val keyx, data;
 keyx.mv_size = U8_LEN (key);
 keyx.mv_data = U8_DATA (key);
 if (!___FALSEP (bytes)) {
  data.mv_size = U8_LEN (bytes);
  data.mv_data = U8_DATA (bytes);
 } else {
  data.mv_size = 0;
  data.mv_data = NULL;
 }

 return mdb_del (txn, dbi, &keyx, &data);
}

int ffi_mdb_cursor_put (MDB_cursor *cursor, ___SCMOBJ key, ___SCMOBJ bytes, unsigned int flags)
{
 MDB_val keyx, data;
 keyx.mv_size = U8_LEN (key);
 keyx.mv_data = U8_DATA (key);
 data.mv_size = U8_LEN (bytes);
 data.mv_data = U8_DATA (bytes);

 return mdb_cursor_put (cursor, &keyx, &data, flags);
}

int ffi_mdb_cursor_get (MDB_cursor *cursor, ___SCMOBJ key, MDB_val *keyval, ___SCMOBJ data, MDB_val *dataval, unsigned int op)
{
 if (!___FALSEP (key)) {
  keyval->mv_size = U8_LEN (key);
  keyval->mv_data = U8_DATA (key);
 } else {
  memset(keyval, 0, sizeof (MDB_val));
 }
 if (!___FALSEP (data)) {
  dataval->mv_size = U8_LEN (data);
  dataval->mv_data = U8_DATA (data);
 } else {
  memset(dataval, 0, sizeof (MDB_val));
 }
 return mdb_cursor_get (cursor, keyval, dataval, op);
}

int ffi_mdb_cmp (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ key1, ___SCMOBJ key2)
{
 MDB_val key1x, key2x;
 key1x.mv_size = U8_LEN (key1);
 key1x.mv_data = U8_DATA (key1);
 key2x.mv_size = U8_LEN (key2);
 key2x.mv_data = U8_DATA (key2);
 return mdb_cmp (txn, dbi, &key1x, &key2x);
}

int ffi_mdb_dcmp (MDB_txn *txn, MDB_dbi dbi, ___SCMOBJ data1, ___SCMOBJ data2)
{
 MDB_val data1x, data2x;
 data1x.mv_size = U8_LEN (data1);
 data1x.mv_data = U8_DATA (data1);
 data2x.mv_size = U8_LEN (data2);
 data2x.mv_data = U8_DATA (data2);

 return mdb_cmp (txn, dbi, &data1x, &data2x);
}

void ffi_mdb_val_data (MDB_val* val, ___SCMOBJ bytes)
{
 memcpy (U8_DATA (bytes), val->mv_data, val->mv_size);
}

END-C
)
