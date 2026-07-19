;;; -*- Gerbil -*-
;;; © vyzo
;;; SQLite3 DB ffi driver
(import :std/ffi)
(export #t)

(C-ffi-macrology)
(C-include "<stdlib.h>"
           "<stdio.h>"
           "<string.h>"
           "<sqlite3.h>")

(C-initialize #<<END-C
if (sqlite3_initialize () != SQLITE_OK) {
  fprintf (stderr, "Warning: error initializing sqlite3 library\n");
}
END-C
)

(C-declare #<<END-C
static int ffi_sqlite3_open (sqlite3** db, const char *path, int flags)
{
 int r = sqlite3_open_v2 (path, db, flags, NULL);
 if (r != SQLITE_OK) {
  sqlite3_close_v2 (*db);
 }
 return r;
}

static int ffi_sqlite3_prepare (sqlite3_stmt** stmt, sqlite3* db, const char *sql, int prepFlags)
{
 int r = sqlite3_prepare_v3 (db, sql, strlen (sql), prepFlags, stmt, NULL);
 if (r != SQLITE_OK) {
  sqlite3_finalize (*stmt);
  *stmt = NULL;
 }
 return r;
}

static int ffi_sqlite3_bind_blob (sqlite3_stmt* stmt, int col, ___SCMOBJ data)
{
 return sqlite3_bind_blob (stmt, col, U8_DATA (data), U8_LEN (data), SQLITE_TRANSIENT);
}

static int ffi_sqlite3_bind_text (sqlite3_stmt* stmt, int col, const char *str)
{
 return sqlite3_bind_text (stmt, col, str, strlen (str), SQLITE_TRANSIENT);
}

static void ffi_sqlite3_column_blob (sqlite3_stmt* stmt, int col, ___SCMOBJ bytes)
{
 const void *blob = sqlite3_column_blob (stmt, col);
 memcpy (U8_DATA (bytes), blob, U8_LEN (bytes));
}
END-C
)

(def-C-const SQLITE_OPEN_READONLY)
(def-C-const SQLITE_OPEN_READWRITE)
(def-C-const SQLITE_OPEN_CREATE)
(def-C-const SQLITE_OPEN_URI)
(def-C-const SQLITE_OPEN_MEMORY)
(def-C-const SQLITE_OPEN_NOMUTEX)
(def-C-const SQLITE_OPEN_FULLMUTEX)
(def-C-const SQLITE_OPEN_SHAREDCACHE)
(def-C-const SQLITE_OPEN_PRIVATECACHE)

(def-C-const SQLITE_OK)
(def-C-const SQLITE_ROW)
(def-C-const SQLITE_DONE)

(def-C-const SQLITE_INTEGER)
(def-C-const SQLITE_FLOAT)
(def-C-const SQLITE_BLOB)
(def-C-const SQLITE_NULL)
(def-C-const SQLITE_TEXT)

(def-C-const SQLITE_PREPARE_PERSISTENT)
(def-C-const SQLITE_PREPARE_NORMALIZE)
(def-C-const SQLITE_PREPARE_NO_VTAB)

(def-C-type/pointer sqlite3)
(def-C-type sqlite3**
  (pointer sqlite3* (sqlite3**) "ffi_free"))
(def-C-type/pointer sqlite3_stmt)
(def-C-type sqlite3_stmt**
  (pointer sqlite3_stmt* (sqlite3_stmt**) "ffi_free"))

(def-C-lambda make_sqlite3_ptr_ptr () sqlite3**
  "___return ((sqlite3**)malloc (sizeof (sqlite3*)));")
(def-C-lambda sqlite3_ptr (sqlite3**) sqlite3*
  "___return (*___arg1);")
(def-C-lambda make_sqlite3_stmt_ptr_ptr () sqlite3_stmt**
  "___return ((sqlite3_stmt**)malloc (sizeof (sqlite3_stmt*)));")
(def-C-lambda sqlite3_stmt_ptr (sqlite3_stmt**) sqlite3_stmt*
  "___return (*___arg1);")
(def-C-lambda sqlite3_errstr (int) UTF-8-string
  "___return ((char*)sqlite3_errstr (___arg1));")
(def-C-lambda sqlite3_open (sqlite3** char-string int) int
  "ffi_sqlite3_open")
(def-C-lambda sqlite3_close (sqlite3*) int
  "sqlite3_close_v2")
(def-C-lambda sqlite3_prepare (sqlite3_stmt** sqlite3* UTF-8-string int) int
  "ffi_sqlite3_prepare")
(def-C-lambda sqlite3_stmt_readonly (sqlite3_stmt*) bool
  "sqlite3_stmt_readonly")
(def-C-lambda sqlite3_stmt_busy (sqlite3_stmt*) bool
  "sqlite3_stmt_busy")
(def-C-lambda sqlite3_bind_blob (sqlite3_stmt* int scheme-object) int
  "ffi_sqlite3_bind_blob")
(def-C-lambda sqlite3_bind_int (sqlite3_stmt* int int) int
  "sqlite3_bind_int")
(def-C-lambda sqlite3_bind_int64 (sqlite3_stmt* int int64) int
  "sqlite3_bind_int64")
(def-C-lambda sqlite3_bind_double (sqlite3_stmt* int double) int
  "sqlite3_bind_double")
(def-C-lambda sqlite3_bind_null (sqlite3_stmt* int) int
  "sqlite3_bind_null")
(def-C-lambda sqlite3_bind_text (sqlite3_stmt* int UTF-8-string) int
  "ffi_sqlite3_bind_text")
(def-C-lambda sqlite3_bind_zeroblob (sqlite3_stmt* int int) int
  "sqlite3_bind_zeroblob")
(def-C-lambda sqlite3_bind_parameter_count (sqlite3_stmt*) int
  "sqlite3_bind_parameter_count")
(def-C-lambda sqlite3_clear_bindings (sqlite3_stmt*) int
  "sqlite3_clear_bindings")
(def-C-lambda sqlite3_column_count (sqlite3_stmt*) int
  "sqlite3_column_count")
(def-C-lambda sqlite3_column_name (sqlite3_stmt* int) UTF-8-string
  "___return ((char*)sqlite3_column_name (___arg1, ___arg2));")
(def-C-lambda sqlite3_column_decltype (sqlite3_stmt* int) UTF-8-string
  "___return ((char*)sqlite3_column_decltype (___arg1, ___arg2));")
(def-C-lambda sqlite3_step (sqlite3_stmt*) int
  "sqlite3_step")
(def-C-lambda sqlite3_data_count (sqlite3_stmt*) int
  "sqlite3_data_count")
(def-C-lambda sqlite3_column_type (sqlite3_stmt* int) int
  "sqlite3_column_type")
(def-C-lambda sqlite3_column_bytes (sqlite3_stmt* int) int
  "sqlite3_column_bytes")
(def-C-lambda sqlite3_column_blob (sqlite3_stmt* int scheme-object) void
  "ffi_sqlite3_column_blob")
(def-C-lambda sqlite3_column_text (sqlite3_stmt* int) UTF-8-string
  "___return ((char*)sqlite3_column_text (___arg1, ___arg2));")
(def-C-lambda sqlite3_column_int (sqlite3_stmt* int) int
  "sqlite3_column_int")
(def-C-lambda sqlite3_column_int64 (sqlite3_stmt* int) int64
  "sqlite3_column_int64")
(def-C-lambda sqlite3_column_double (sqlite3_stmt* int) double
  "sqlite3_column_double")
(def-C-lambda sqlite3_finalize (sqlite3_stmt*) int
  "sqlite3_finalize")
(def-C-lambda sqlite3_reset (sqlite3_stmt*) int
  "sqlite3_reset")
