;;; -*- Scheme -*-
;;; (C) vyzo at hackzen.org
;;; MySQL FFI

;; compile: -ld-options "-lmysqlclient"


(declare
  (block)
  (standard-bindings)
  (extended-bindings)
  (not safe))

(namespace ("std/db/_mysql#"))
(##namespace ("" define-macro define let let* if or and
              quote quasiquote unquote unquote-splicing
              c-lambda c-define-type c-declare c-initialize 
              ))

(c-declare #<<END-C
#include <stdlib.h>
#include <stdio.h>
#include <string.h>           
#include <mysql/mysql.h>

#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))

END-C
)

(c-initialize #<<END-C
if (mysql_library_init (0, NULL, NULL)) {
  fprintf (stderr, "Warning: error initializing mysql library\n");
}

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

(define-const MYSQL_NO_DATA)
(define-const MYSQL_DATA_TRUNCATED)

(define-const MYSQL_TYPE_BIT)
(define-const MYSQL_TYPE_TINY)
(define-const MYSQL_TYPE_SHORT)
(define-const MYSQL_TYPE_LONG)
(define-const MYSQL_TYPE_LONGLONG)
(define-const MYSQL_TYPE_FLOAT)
(define-const MYSQL_TYPE_DOUBLE)
(define-const MYSQL_TYPE_TIME)
(define-const MYSQL_TYPE_DATE)
(define-const MYSQL_TYPE_DATETIME)
(define-const MYSQL_TYPE_TIMESTAMP)
(define-const MYSQL_TYPE_STRING)
(define-const MYSQL_TYPE_VAR_STRING)
(define-const MYSQL_TYPE_BLOB)
(define-const MYSQL_TYPE_TINY_BLOB)
(define-const MYSQL_TYPE_MEDIUM_BLOB)
(define-const MYSQL_TYPE_LONG_BLOB)

(c-declare #<<END-C
static ___SCMOBJ ffi_free (void *ptr);
static MYSQL* ffi_mysql_init ();
static int ffi_mysql_connect (MYSQL* mysql, char *host, int port, char *user, char *passwd, char *db);
static MYSQL_BIND* ffi_make_mysql_bind (unsigned count);
static void ffi_mysql_bind_null (MYSQL_BIND* mybind, int k);
static void ffi_mysql_bind_set_null (MYSQL_BIND* mybind, int k, my_bool* is_null);
static int ffi_mysql_bind_get_null (MYSQL_BIND* mybind, int k);
static void ffi_mysql_bind_set_long (MYSQL_BIND* mybind, int k, long* ptr);
static long ffi_mysql_bind_get_long (MYSQL_BIND* mybind, int k);
static void ffi_mysql_bind_set_bigint (MYSQL_BIND* mybind, int k, long long* ptr);
static long long ffi_mysql_bind_get_bigint (MYSQL_BIND* mybind, int k);
static void ffi_mysql_bind_set_float (MYSQL_BIND* mybind, int k, float* ptr);
static float ffi_mysql_bind_get_float (MYSQL_BIND* mybind, int k);
static void ffi_mysql_bind_set_double (MYSQL_BIND* mybind, int k, double* ptr);
static double ffi_mysql_bind_get_double (MYSQL_BIND* mybind, int k);
static void ffi_mysql_bind_set_string (MYSQL_BIND* mybind, int k, void* ptr, unsigned long len);
static char* ffi_mysql_bind_get_string (MYSQL_BIND* mybind, int k);
static void ffi_mysql_bind_set_blob (MYSQL_BIND* mybind, int k, void* ptr, unsigned long len);
static void ffi_mysql_bind_get_blob (MYSQL_BIND* mybind, int k, ___SCMOBJ bytes);
static void ffi_mysql_bind_set_len (MYSQL_BIND* mybind, int k, unsigned long* ptr);
static unsigned long ffi_mysql_bind_get_len (MYSQL_BIND* mybind, int k);
static void ffi_mysql_bind_set_time (MYSQL_BIND* mybind, int k, MYSQL_TIME* ptr);
static unsigned long ffi_mysql_bind_get_time_second_part (MYSQL_BIND* mybind, int k);
static unsigned ffi_mysql_bind_get_time_scond (MYSQL_BIND* mybind, int k);
static unsigned ffi_mysql_bind_get_time_minute (MYSQL_BIND* mybind, int k);
static unsigned ffi_mysql_bind_get_time_hour (MYSQL_BIND* mybind, int k);
static unsigned ffi_mysql_bind_get_time_day (MYSQL_BIND* mybind, int k);
static unsigned ffi_mysql_bind_get_time_month (MYSQL_BIND* mybind, int k);
static unsigned ffi_mysql_bind_get_time_year (MYSQL_BIND* mybind, int k);

static void ffi_long_ptr_set (long* ptr, long val);
static void ffi_bigint_ptr_set (long long* ptr, long val);
static void ffi_float_ptr_set (float* ptr, float val);
static void ffi_double_ptr_set (double* ptr, double val);
static void ffi_string_ptr_set (void* ptr, char* str);
static void ffi_blob_ptr_set (void* ptr, ___SCMOBJ bytes);

static void ffi_mysql_time_set_second_part (MYSQL_TIME* ptr, unsigned long val);
static void ffi_mysql_time_set_second (MYSQL_TIME* ptr, unsigned val);
static void ffi_mysql_time_set_minute (MYSQL_TIME* ptr, unsigned val);
static void ffi_mysql_time_set_hour (MYSQL_TIME* ptr, unsigned val);
static void ffi_mysql_time_set_day (MYSQL_TIME* ptr, unsigned val);
static void ffi_mysql_time_set_month (MYSQL_TIME* ptr, unsigned val);
static void ffi_mysql_time_set_year (MYSQL_TIME* ptr, unsigned val);
END-C
)

(c-define-type MYSQL "MYSQL")
(c-define-type MYSQL*
  (pointer MYSQL (MYSQL*) "ffi_free"))
(c-define-type MYSQL_STMT "MYSQL_STMT")
(c-define-type MYSQL_STMT*
  (pointer MYSQL_STMT (MYSQL_STMT*)))   ; deallocated by mysql_stmt_close
(c-define-type MYSQL_RES "MYSQL_RES")
(c-define-type MYSQL_RES*
  (pointer MYSQL_RES (MYSQL_RES*)))     ; deallocated my mysql_free_result
(c-define-type MYSQL_FIELD "MYSQL_FIELD")
(c-define-type MYSQL_FIELD*
  (pointer MYSQL_FIELD (MYSQL_FIELD*))) ; deallocated by mysql_free_result
(c-define-type MYSQL_BIND "MYSQL_BIND")
(c-define-type MYSQL_BIND*
  (pointer MYSQL_BIND (MYSQL_BIND*) "ffi_free"))
(c-define-type MYSQL_TIME "MYSQL_TIME")
(c-define-type MYSQL_TIME*
  (pointer MYSQL_TIME (MYSQL_TIME*) "ffi_free"))

(define-c-lambda mysql_error (MYSQL*) char-string
  "___return ((char*)mysql_error (___arg1));")
(define-c-lambda mysql_errno (MYSQL*) int)
(define-c-lambda mysql_stmt_error (MYSQL_STMT*) char-string
  "___return ((char*)mysql_stmt_error (___arg1));")
(define-c-lambda mysql_stmt_errno (MYSQL_STMT*) int)

(define-c-lambda mysql_init () MYSQL*
  "ffi_mysql_init")
(define-c-lambda mysql_connect (MYSQL* char-string int char-string char-string char-string) int
  "ffi_mysql_connect")
(define-c-lambda mysql_close (MYSQL*) void)

(define-c-lambda mysql_stmt_init (MYSQL*) MYSQL_STMT*)
(define-c-lambda mysql_stmt_prepare (MYSQL_STMT* char-string) int
  "___return (mysql_stmt_prepare (___arg1, ___arg2, strlen (___arg2)));")
(define-c-lambda mysql_stmt_close (MYSQL_STMT*) void)
(define-c-lambda mysql_stmt_param_count (MYSQL_STMT*) int)
(define-c-lambda mysql_stmt_bind_param (MYSQL_STMT* MYSQL_BIND*) int)
(define-c-lambda mysql_stmt_bind_result (MYSQL_STMT* MYSQL_BIND*) int)
(define-c-lambda mysql_stmt_reset (MYSQL_STMT*) int)
(define-c-lambda mysql_stmt_execute (MYSQL_STMT*) int)
(define-c-lambda mysql_stmt_fetch (MYSQL_STMT*) int)
(define-c-lambda mysql_stmt_fetch_column (MYSQL_STMT* MYSQL_BIND* int int) int)
(define-c-lambda mysql_stmt_result_metadata (MYSQL_STMT*) MYSQL_RES*)

(define-c-lambda mysql_free_result (MYSQL_RES*) void)
(define-c-lambda mysql_num_fields (MYSQL_RES*) int)
(define-c-lambda mysql_fetch_field (MYSQL_RES*) MYSQL_FIELD*)
(define-c-lambda mysql_field_name (MYSQL_FIELD*) char-string
  "___return (___arg1->name);")
(define-c-lambda mysql_field_type (MYSQL_FIELD*) int
  "___return (___arg1->type);")

(c-define-type my_bool "my_bool")
(c-define-type my_bool*
  (pointer my_bool (my_bool*) "ffi_free"))
(c-define-type long*
  (pointer long (long*) "ffi_free"))
(c-define-type long-long*
  (pointer long-long (long-long*) "ffi_free"))
(c-define-type float*
  (pointer float (float*) "ffi_free"))
(c-define-type double*
  (pointer double (double*) "ffi_free"))
(c-define-type void*
  (pointer void (void*) "ffi_free"))
(c-define-type ulong*
  (pointer unsigned-long (ulong*) "ffi_free"))

(define-c-lambda make_mysql_bind (unsigned-int) MYSQL_BIND*
  "ffi_make_mysql_bind")
(define-c-lambda mysql_bind_null (MYSQL_BIND* int) void
  "ffi_mysql_bind_null")
(define-c-lambda mysql_bind_set_null (MYSQL_BIND* int my_bool*) void
  "ffi_mysql_bind_set_null")
(define-c-lambda mysql_bind_get_null (MYSQL_BIND* int) int
  "ffi_mysql_bind_get_null")
(define-c-lambda mysql_bind_set_long (MYSQL_BIND* int long*) void
  "ffi_mysql_bind_set_long")
(define-c-lambda mysql_bind_get_long (MYSQL_BIND* int) long
  "ffi_mysql_bind_get_long")
(define-c-lambda mysql_bind_set_bigint (MYSQL_BIND* int long-long*) void
  "ffi_mysql_bind_set_bigint")
(define-c-lambda mysql_bind_get_bigint (MYSQL_BIND* int) long-long
  "ffi_mysql_bind_get_bigint")
(define-c-lambda mysql_bind_set_float (MYSQL_BIND* int float*) void
  "ffi_mysql_bind_set_float")
(define-c-lambda mysql_bind_get_float (MYSQL_BIND* int) float
  "ffi_mysql_bind_get_float")
(define-c-lambda mysql_bind_set_double (MYSQL_BIND* int double*) void
  "ffi_mysql_bind_set_double")
(define-c-lambda mysql_bind_get_double (MYSQL_BIND* int) double
  "ffi_mysql_bind_get_double")
(define-c-lambda mysql_bind_set_string (MYSQL_BIND* int void* unsigned-long) void
  "ffi_mysql_bind_set_string")
(define-c-lambda mysql_bind_get_string (MYSQL_BIND* int) UTF-8-string
  "ffi_mysql_bind_get_string")
(define-c-lambda mysql_bind_set_blob (MYSQL_BIND* int void* unsigned-long) void
  "ffi_mysql_bind_set_blob")
(define-c-lambda mysql_bind_get_blob (MYSQL_BIND* int scheme-object) void
  "ffi_mysql_bind_get_blob")
(define-c-lambda mysql_bind_set_len (MYSQL_BIND* int ulong*) void
  "ffi_mysql_bind_set_len")
(define-c-lambda mysql_bind_get_len (MYSQL_BIND* int) unsigned-long
  "ffi_mysql_bind_get_len")
(define-c-lambda mysql_bind_set_time (MYSQL_BIND* int MYSQL_TIME*) void
  "ffi_mysql_bind_set_time")
(define-c-lambda mysql_bind_get_time_second_part (MYSQL_BIND* int) unsigned-long
  "ffi_mysql_bind_get_time_second_part")
(define-c-lambda mysql_bind_get_time_second (MYSQL_BIND* int) unsigned-int
  "ffi_mysql_bind_get_time_second")
(define-c-lambda mysql_bind_get_time_minute (MYSQL_BIND* int) unsigned-int
  "ffi_mysql_bind_get_time_minute")
(define-c-lambda mysql_bind_get_time_hour (MYSQL_BIND* int) unsigned-int
  "ffi_mysql_bind_get_time_hour")
(define-c-lambda mysql_bind_get_time_day (MYSQL_BIND* int) unsigned-int
  "ffi_mysql_bind_get_time_day")
(define-c-lambda mysql_bind_get_time_month (MYSQL_BIND* int) unsigned-int
  "ffi_mysql_bind_get_time_month")
(define-c-lambda mysql_bind_get_time_year (MYSQL_BIND* int) unsigned-int
  "ffi_mysql_bind_get_time_year")

(define-c-lambda make_bool_ptr () my_bool*
  "___return ((my_bool*)malloc (sizeof (my_bool)));")
(define-c-lambda make_long_ptr () long*
  "___return ((long*)malloc (sizeof (long)));")
(define-c-lambda long_ptr_set (long* long) void
  "ffi_long_ptr_set")
(define-c-lambda make_bigint_ptr () long-long*
  "___return ((long long*)malloc (sizeof (long long)));")
(define-c-lambda bigint_ptr_set (long-long* long-long) void
  "ffi_bigint_ptr_set")
(define-c-lambda make_ulong_ptr () long*
  "___return ((unsigned long*)malloc (sizeof (unsigned long)));")
(define-c-lambda make_float_ptr () float*
  "___return ((float*)malloc (sizeof (float)));")
(define-c-lambda float_ptr_set (float* float) void
  "ffi_float_ptr_set")
(define-c-lambda make_double_ptr () double*
  "___return ((double*)malloc (sizeof (double)));")
(define-c-lambda double_ptr_set (double* double) void
  "ffi_double_ptr_set")
(define-c-lambda make_blob_ptr (unsigned-int) void*
  "___return (malloc (___arg1));")
(define-c-lambda string_ptr_set (void* UTF-8-string) void
  "ffi_string_ptr_set")
(define-c-lambda blob_ptr_set (void* scheme-object) void
  "ffi_blob_ptr_set")

(define-c-lambda make_time_ptr () MYSQL_TIME*
  "___return ((MYSQL_TIME*)malloc (sizeof (MYSQL_TIME)));")
(define-c-lambda mysql_time_set_second_part (MYSQL_TIME* unsigned-long) void
  "ffi_mysql_time_set_second_part")
(define-c-lambda mysql_time_set_second (MYSQL_TIME* unsigned-int) void
  "ffi_mysql_time_set_second")
(define-c-lambda mysql_time_set_minute (MYSQL_TIME* unsigned-int) void
  "ffi_mysql_time_set_minute")
(define-c-lambda mysql_time_set_hour (MYSQL_TIME* unsigned-int) void
  "ffi_mysql_time_set_hour")
(define-c-lambda mysql_time_set_day (MYSQL_TIME* unsigned-int) void
  "ffi_mysql_time_set_day")
(define-c-lambda mysql_time_set_month (MYSQL_TIME* unsigned-int) void
  "ffi_mysql_time_set_month")
(define-c-lambda mysql_time_set_year (MYSQL_TIME* unsigned-int) void
  "ffi_mysql_time_set_year")

(c-declare #<<END-C
___SCMOBJ ffi_free (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}

MYSQL* ffi_mysql_init () 
{
 MYSQL* mysql = malloc (sizeof (MYSQL));
 if (!mysql)
 {
  return NULL;
 }
 
 MYSQL* res = mysql_init (mysql);
 if (res)
 {
  return res;
 } else {
  free (mysql);
  return NULL;            
 }
}

int ffi_mysql_connect (MYSQL* mysql, char *host, int port, char *user, char *passwd, char *db)
{
 MYSQL* res = mysql_real_connect (mysql, host, user, passwd, db, port,
                                  NULL, CLIENT_IGNORE_SIGPIPE|CLIENT_COMPRESS|0);
 if (res)
 {
  return 0;
 } else {
  return 1;
 }
}

MYSQL_BIND* ffi_make_mysql_bind (unsigned count)
{
 size_t sz = count * sizeof (MYSQL_BIND);
 MYSQL_BIND* res = malloc (sz);
 memset (res, 0, sz);
 return res;
}

void ffi_mysql_bind_null (MYSQL_BIND* mybind, int k)
{
 mybind[k].buffer_type = MYSQL_TYPE_NULL;
}

void ffi_mysql_bind_set_null (MYSQL_BIND* mybind, int k, my_bool* is_null)
{
 mybind[k].is_null = is_null;
}

int ffi_mysql_bind_get_null (MYSQL_BIND* mybind, int k)
{
 return *(mybind[k].is_null);
}

void ffi_mysql_bind_set_long (MYSQL_BIND* mybind, int k, long* ptr)
{
 mybind[k].buffer_type = MYSQL_TYPE_LONG;
 mybind[k].buffer = ptr;
 mybind[k].buffer_length = sizeof (long);      
}

long ffi_mysql_bind_get_long (MYSQL_BIND* mybind, int k)
{
 return *((long*)mybind[k].buffer);
}

void ffi_mysql_bind_set_bigint (MYSQL_BIND* mybind, int k, long long* ptr)
{
 mybind[k].buffer_type = MYSQL_TYPE_LONGLONG;
 mybind[k].buffer = ptr;
 mybind[k].buffer_length = sizeof (long long);
}

long long ffi_mysql_bind_get_bigint (MYSQL_BIND* mybind, int k)
{
 return *((long long*)mybind[k].buffer);
}

void ffi_mysql_bind_set_float (MYSQL_BIND* mybind, int k, float* ptr)
{
 mybind[k].buffer_type = MYSQL_TYPE_FLOAT;
 mybind[k].buffer = ptr;
 mybind[k].buffer_length = sizeof (float);      
}

float ffi_mysql_bind_get_float (MYSQL_BIND* mybind, int k)
{
 return *((float*)mybind[k].buffer);
}

void ffi_mysql_bind_set_double (MYSQL_BIND* mybind, int k, double* ptr)
{
 mybind[k].buffer_type = MYSQL_TYPE_DOUBLE;
 mybind[k].buffer = ptr;
 mybind[k].buffer_length = sizeof (double);      
}

double ffi_mysql_bind_get_double (MYSQL_BIND* mybind, int k)
{
 return *((double*)mybind[k].buffer);
}

void ffi_mysql_bind_set_string (MYSQL_BIND* mybind, int k, void* ptr, unsigned long len)
{
 mybind[k].buffer_type = MYSQL_TYPE_STRING;
 mybind[k].buffer = ptr;
 mybind[k].buffer_length = len;
}

char* ffi_mysql_bind_get_string (MYSQL_BIND* mybind, int k)
{
 return (char*)(mybind[k].buffer);
}

void ffi_mysql_bind_set_blob (MYSQL_BIND* mybind, int k, void* ptr, unsigned long len)
{
 mybind[k].buffer_type = MYSQL_TYPE_BLOB;
 mybind[k].buffer = ptr;
 mybind[k].buffer_length = len;
}

void ffi_mysql_bind_get_blob (MYSQL_BIND* mybind, int k, ___SCMOBJ bytes)
{
 memcpy (U8_DATA (bytes), mybind[k].buffer, U8_LEN (bytes));
}

void ffi_mysql_bind_set_len (MYSQL_BIND* mybind, int k, unsigned long* ptr)
{
 mybind[k].length = ptr;
}

unsigned long ffi_mysql_bind_get_len (MYSQL_BIND* mybind, int k)
{
 return *(mybind[k].length);
}

void ffi_mysql_bind_set_time (MYSQL_BIND* mybind, int k, MYSQL_TIME* ptr)
{
 mybind[k].buffer_type = MYSQL_TYPE_DATETIME;
 mybind[k].buffer = ptr;
 mybind[k].buffer_length = sizeof (MYSQL_TIME);
}

unsigned long ffi_mysql_bind_get_time_second_part (MYSQL_BIND* mybind, int k)
{
 return ((MYSQL_TIME*)(mybind[k].buffer))->second_part;
}

unsigned ffi_mysql_bind_get_time_second (MYSQL_BIND* mybind, int k)
{
 return ((MYSQL_TIME*)(mybind[k].buffer))->second;
}

unsigned ffi_mysql_bind_get_time_minute (MYSQL_BIND* mybind, int k)
{
 return ((MYSQL_TIME*)(mybind[k].buffer))->minute;
}

unsigned ffi_mysql_bind_get_time_hour (MYSQL_BIND* mybind, int k)
{
 return ((MYSQL_TIME*)(mybind[k].buffer))->hour;
}

unsigned ffi_mysql_bind_get_time_day (MYSQL_BIND* mybind, int k)
{
 return ((MYSQL_TIME*)(mybind[k].buffer))->day;
}

unsigned ffi_mysql_bind_get_time_month (MYSQL_BIND* mybind, int k)
{
 return ((MYSQL_TIME*)(mybind[k].buffer))->month;
}

unsigned ffi_mysql_bind_get_time_year (MYSQL_BIND* mybind, int k)
{
 return ((MYSQL_TIME*)(mybind[k].buffer))->year;
}

void ffi_long_ptr_set (long* ptr, long val)
{
 *ptr = val;
}

void ffi_bigint_ptr_set (long long* ptr, long val)
{
 *ptr = val;
}

void ffi_float_ptr_set (float* ptr, float val)
{
 *ptr = val;
}

void ffi_double_ptr_set (double* ptr, double val)
{
 *ptr = val;
}

void ffi_string_ptr_set (void* ptr, char* str)
{
 strcpy (ptr, str);
}

void ffi_blob_ptr_set (void* ptr, ___SCMOBJ bytes)
{
 memcpy (ptr, U8_DATA (bytes), U8_LEN (bytes));
}

void ffi_mysql_time_set_second_part (MYSQL_TIME* ptr, unsigned long val)
{
 ptr->second_part = val;
}

void ffi_mysql_time_set_second (MYSQL_TIME* ptr, unsigned val)
{
 ptr->second = val;
}

void ffi_mysql_time_set_minute (MYSQL_TIME* ptr, unsigned val)
{
 ptr->minute = val;
}

void ffi_mysql_time_set_hour (MYSQL_TIME* ptr, unsigned val)
{
 ptr->hour = val;
}

void ffi_mysql_time_set_day (MYSQL_TIME* ptr, unsigned val)
{
 ptr->day = val;
}

void ffi_mysql_time_set_month (MYSQL_TIME* ptr, unsigned val)
{
 ptr->month = val;
}

void ffi_mysql_time_set_year (MYSQL_TIME* ptr, unsigned val)
{
 ptr->year = val;
}
END-C
)
