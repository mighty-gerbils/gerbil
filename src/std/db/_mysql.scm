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
#include <pthread.h>
#include <errno.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <mysql/mysql.h>

#ifndef ___HAVE_FFI_U8VECTOR
#define ___HAVE_FFI_U8VECTOR
#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))
#endif

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

(define-macro (define-guard guard defn)
  (if (eval `(cond-expand (,guard #t) (else #f)))
    '(begin)
    (begin
      (eval `(define-cond-expand-feature ,guard))
      defn)))

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
static int ffi_mysql_connect_begin (int ofd, MYSQL* mysql, char *host, int port, char *user, char *passwd, char *db);
static int ffi_mysql_stmt_prepare_begin (int ofd, MYSQL_STMT* mystmt, char *sql);
static int ffi_mysql_stmt_reset_begin (int ofd, MYSQL_STMT* mystmt);
static int ffi_mysql_stmt_execute_begin (int ofd, MYSQL_STMT* mystmt);
static int ffi_mysql_stmt_fetch_begin (int ofd, MYSQL_STMT* mystmt);
static MYSQL_BIND* ffi_mysql_make_bind (unsigned count);
static void ffi_mysql_bind_null (MYSQL_BIND* mybind, int k);
static void ffi_mysql_bind_set_null (MYSQL_BIND* mybind, int k, bool* is_null);
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

static int ffi_mysql_start_connection_thread (int ifd, int ofd);
static int ffi_mysql_read_int (int ifd, int *ptr);
static void ffi_mysql_close (int fd);

static unsigned long* ffi_mysql_make_ulong_ptr ();
static void ffi_mysql_long_ptr_set (long* ptr, long val);
static long long* ffi_mysql_make_bigint_ptr ();
static void ffi_mysql_bigint_ptr_set (long long* ptr, long val);
static float* ffi_mysql_make_float_ptr ();
static void ffi_mysql_float_ptr_set (float* ptr, float val);
static double* ffi_mysql_make_double_ptr ();
static void ffi_mysql_double_ptr_set (double* ptr, double val);
static void* ffi_mysql_make_blob_ptr (unsigned len);
static void ffi_mysql_string_ptr_set (void* ptr, char* str);
static void ffi_mysql_blob_ptr_set (void* ptr, ___SCMOBJ bytes);

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
(define-c-lambda mysql_connect_begin (int MYSQL* char-string int char-string char-string char-string) int
  "ffi_mysql_connect_begin")
(define-c-lambda mysql_close (MYSQL*) void)

(define-c-lambda mysql_stmt_init (MYSQL*) MYSQL_STMT*)
(define-c-lambda mysql_stmt_prepare (MYSQL_STMT* char-string) int
  "___return (mysql_stmt_prepare (___arg1, ___arg2, strlen (___arg2)));")
(define-c-lambda mysql_stmt_prepare_begin (int MYSQL_STMT* char-string) int
  "ffi_mysql_stmt_prepare_begin")
(define-c-lambda mysql_stmt_close (MYSQL_STMT*) void)
(define-c-lambda mysql_stmt_param_count (MYSQL_STMT*) int)
(define-c-lambda mysql_stmt_bind_param (MYSQL_STMT* MYSQL_BIND*) int)
(define-c-lambda mysql_stmt_bind_result (MYSQL_STMT* MYSQL_BIND*) int)
(define-c-lambda mysql_stmt_reset (MYSQL_STMT*) int)
(define-c-lambda mysql_stmt_reset_begin (int MYSQL_STMT*) int
  "ffi_mysql_stmt_reset_begin")
(define-c-lambda mysql_stmt_execute (MYSQL_STMT*) int)
(define-c-lambda mysql_stmt_execute_begin (int MYSQL_STMT*) int
  "ffi_mysql_stmt_execute_begin")
(define-c-lambda mysql_stmt_fetch (MYSQL_STMT*) int)
(define-c-lambda mysql_stmt_fetch_begin (int MYSQL_STMT*) int
  "ffi_mysql_stmt_fetch_begin")
(define-c-lambda mysql_stmt_fetch_column (MYSQL_STMT* MYSQL_BIND* int int) int)
(define-c-lambda mysql_stmt_result_metadata (MYSQL_STMT*) MYSQL_RES*)

(define-c-lambda mysql_free_result (MYSQL_RES*) void)
(define-c-lambda mysql_num_fields (MYSQL_RES*) int)
(define-c-lambda mysql_fetch_field (MYSQL_RES*) MYSQL_FIELD*)
(define-c-lambda mysql_field_name (MYSQL_FIELD*) char-string
  "___return (___arg1->name);")
(define-c-lambda mysql_field_type (MYSQL_FIELD*) int
  "___return (___arg1->type);")

(define-guard ffi-have-bool*
  (c-define-type bool*
    (pointer bool (bool*) "ffi_free")))
(define-guard ffi-have-int*
  (c-define-type int*
    (pointer int (int*) "ffi_free")))
(define-guard ffi-have-long*
  (c-define-type long*
    (pointer long (long*) "ffi_free")))
(define-guard ffi-have-log-long*
  (c-define-type long-long*
    (pointer long-long (long-long*) "ffi_free")))
(define-guard ffi-have-float*
  (c-define-type float*
    (pointer float (float*) "ffi_free")))
(define-guard ffi-have-double*
  (c-define-type double*
    (pointer double (double*) "ffi_free")))
(define-guard ffi-have-void*
  (c-define-type void*
    (pointer void (void*) "ffi_free")))
(define-guard ffi-have-ulong*
  (c-define-type ulong*
    (pointer unsigned-long (ulong*) "ffi_free")))

(define-c-lambda make_mysql_bind (unsigned-int) MYSQL_BIND*
  "ffi_mysql_make_bind")
(define-c-lambda mysql_bind_null (MYSQL_BIND* int) void
  "ffi_mysql_bind_null")
(define-c-lambda mysql_bind_set_null (MYSQL_BIND* int bool*) void
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

(define-c-lambda __start_mysql_connection_thread (int int) int
  "ffi_mysql_start_connection_thread")
(define-c-lambda __read_int (int int*) int
  "ffi_mysql_read_int")
(define-c-lambda __close (int) void
  "ffi_mysql_close")

(define-c-lambda make_bool_ptr () bool*
  "ffi_mysql_make_bool_ptr")
(define-c-lambda make_int_ptr () int*
  "ffi_mysql_make_int_ptr")
(define-c-lambda int_ptr_ref (int*) int
  "___return (*___arg1);")
(define-c-lambda make_long_ptr () long*
  "ffi_mysql_make_long_ptr")
(define-c-lambda long_ptr_set (long* long) void
  "ffi_mysql_long_ptr_set")
(define-c-lambda make_ulong_ptr () ulong*
  "ffi_mysql_make_ulong_ptr")
(define-c-lambda make_bigint_ptr () long-long*
  "ffi_mysql_make_bigint_ptr")
(define-c-lambda bigint_ptr_set (long-long* long-long) void
  "ffi_mysql_bigint_ptr_set")
(define-c-lambda make_float_ptr () float*
  "___return ((float*)malloc (sizeof (float)));")
(define-c-lambda float_ptr_set (float* float) void
  "ffi_mysql_float_ptr_set")
(define-c-lambda make_double_ptr () double*
  "ffi_mysql_make_double_ptr")
(define-c-lambda double_ptr_set (double* double) void
  "ffi_mysql_double_ptr_set")
(define-c-lambda make_blob_ptr (unsigned-int) void*
  "ffi_mysql_make_blob_ptr")
(define-c-lambda string_ptr_set (void* UTF-8-string) void
  "ffi_mysql_string_ptr_set")
(define-c-lambda blob_ptr_set (void* scheme-object) void
  "ffi_mysql_blob_ptr_set")

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

(define sizeof_int
  ((c-lambda () int "___return (sizeof (int));")))

(c-declare #<<END-C
#ifndef ___HAVE_FFI_FREE
#define ___HAVE_FFI_FREE
___SCMOBJ ffi_free (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}
#endif

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

#define OP_CONNECT 0
#define OP_PREPARE 1
#define OP_EXEC    2
#define OP_FETCH   3
#define OP_RESET   4

struct op_connect
{
 MYSQL *mysql;
 char  *host;
 int    port;
 char  *user;
 char  *passwd;
 char  *db;
};

struct op_prepare
{
 MYSQL_STMT *mystmt;
 char       *sql;
};

struct op_stmt
{
 MYSQL_STMT *mystmt;
};

typedef struct async_op
{
 int type;
 union {
  struct op_connect connect;
  struct op_prepare prepare;
  struct op_stmt stmt;
 } body;
} async_op;

int ffi_mysql_connect_begin (int ofd, MYSQL* mysql, char *host, int port, char *user, char *passwd, char *db)
{
 int r;
 async_op op;
 op.type = OP_CONNECT;
 op.body.connect.mysql = mysql;
 if (host)
  op.body.connect.host = strdup (host);
 else
  op.body.connect.host = NULL;
 op.body.connect.port = port;
 if (user)
  op.body.connect.user = strdup (user);
 else
  op.body.connect.user = NULL;
 if (passwd)
  op.body.connect.passwd = strdup (passwd);
 else
  op.body.connect.passwd = NULL;
 if (db)
  op.body.connect.db = strdup (db);
 else
  op.body.connect.db = NULL;

again:
 r =  write (ofd, &op, sizeof (async_op));
 if (r < 0)
 {
  if (errno == EINTR)
   goto again;

  return -errno;
 }
 return r;
}

int ffi_mysql_stmt_prepare_begin (int ofd, MYSQL_STMT* mystmt, char *sql)
{
 int r;
 async_op op;
 op.type = OP_PREPARE;
 op.body.prepare.mystmt = mystmt;
 op.body.prepare.sql = strdup (sql);

again:
 r =  write (ofd, &op, sizeof (async_op));
 if (r < 0)
 {
  if (errno == EINTR)
   goto again;

  return -errno;
 }
 return r;
}

int ffi_mysql_stmt_reset_begin (int ofd, MYSQL_STMT* mystmt)
{
 int r;
 async_op op;
 op.type = OP_RESET;
 op.body.stmt.mystmt = mystmt;

again:
 r =  write (ofd, &op, sizeof (async_op));
 if (r < 0)
 {
  if (errno == EINTR)
   goto again;

  return -errno;
 }
 return r;
}

int ffi_mysql_stmt_execute_begin (int ofd, MYSQL_STMT* mystmt)
{
 int r;
 async_op op;
 op.type = OP_EXEC;
 op.body.stmt.mystmt = mystmt;

again:
 r =  write (ofd, &op, sizeof (async_op));
 if (r < 0)
 {
  if (errno == EINTR)
   goto again;

  return -errno;
 }
 return r;
}

int ffi_mysql_stmt_fetch_begin (int ofd, MYSQL_STMT* mystmt)
{
 int r;
 async_op op;
 op.type = OP_FETCH;
 op.body.stmt.mystmt = mystmt;

again:
 r =  write (ofd, &op, sizeof (async_op));
 if (r < 0)
 {
  if (errno == EINTR)
   goto again;

  return -errno;
 }
 return r;
}

typedef struct worker_data
{
 int ifd;
 int ofd;
} worker_data;

static void *ffi_mysql_connection_worker (void *arg)
{
 worker_data *data = (worker_data*)arg;
 async_op op;
 int r, res;

again:
 r = read (data->ifd, &op, sizeof (async_op));
 if (!r)
  goto out;

 if (r < 0)
  switch (errno)
  {
   case EINTR:
    goto again;
   default:
    perror ("ffi_mysql_connection_worker");
    goto out;
  }

 switch (op.type)
 {
  case OP_CONNECT:
   res = ffi_mysql_connect (op.body.connect.mysql,
                            op.body.connect.host,
                            op.body.connect.port,
                            op.body.connect.user,
                            op.body.connect.passwd,
                            op.body.connect.db);
   free (op.body.connect.host);
   free (op.body.connect.user);
   free (op.body.connect.passwd);
   free (op.body.connect.db);
   break;

  case OP_PREPARE:
   res = mysql_stmt_prepare (op.body.prepare.mystmt,
                             op.body.prepare.sql,
                             strlen (op.body.prepare.sql));
   free (op.body.prepare.sql);
   break;

  case OP_EXEC:
   res = mysql_stmt_execute (op.body.stmt.mystmt);
   break;

  case OP_FETCH:
   res = mysql_stmt_fetch (op.body.stmt.mystmt);
   break;

  case OP_RESET:
   res = mysql_stmt_reset (op.body.stmt.mystmt);
   break;

 }

write_again:
 r = write (data->ofd, &res, sizeof (res));
 if (r < 0)
 switch (errno)
 {
  case EINTR:
   goto write_again;
  default:
   perror ("ffi_mysql_connection_worker");
   goto out;
 }

 goto again;

out:
 ffi_mysql_close (data->ifd);
 ffi_mysql_close (data->ofd);
 free (data);
 return NULL;
}

int ffi_mysql_start_connection_thread (int ifd, int ofd)
{
 int r;
 pthread_t thread;
 worker_data *arg;

 arg = (worker_data*)malloc (sizeof (worker_data));
 if (!arg)
 {
  ffi_mysql_close (ifd);
  ffi_mysql_close (ofd);
  return -ENOMEM;
 }
 arg->ifd = ifd;
 arg->ofd = ofd;

 r = pthread_create (&thread, NULL, ffi_mysql_connection_worker, arg);
 if (r)
 {
  ffi_mysql_close (ifd);
  ffi_mysql_close (ofd);
  free (arg);
  return -r;
 }

 return 0;
}

int ffi_mysql_read_int (int ifd, int *ptr)
{
 int r;

again:
 r = read (ifd, ptr, sizeof (int));
 if (r < 0)
  switch (errno)
  {
   case EINTR:
    goto again;
   default:
    return -errno;
  }

 return r;
}

void ffi_mysql_close (int fd)
{
 int r;

again:
 r = close (fd);
 if (r< 0 && errno == EINTR)
  goto again;
}


MYSQL_BIND* ffi_mysql_make_bind (unsigned count)
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

void ffi_mysql_bind_set_null (MYSQL_BIND* mybind, int k, bool* is_null)
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

bool* ffi_mysql_make_bool_ptr ()
{
 bool* res = malloc (sizeof (bool));
 if (res)
 {
  *res = 0;
 }
 return res;
}

int* ffi_mysql_make_int_ptr ()
{
 int* res = malloc (sizeof (int));
 if (res)
 {
  *res = 0;
 }
 return res;
}

long* ffi_mysql_make_long_ptr ()
{
 long* res = malloc (sizeof (long));
 if (res)
 {
  *res = 0;
 }
 return res;
}

void ffi_mysql_long_ptr_set (long* ptr, long val)
{
 *ptr = val;
}

unsigned long* ffi_mysql_make_ulong_ptr ()
{
 unsigned long* res = malloc (sizeof (long));
 if (res)
 {
  *res = 0;
 }
 return res;
}

long long* ffi_mysql_make_bigint_ptr ()
{
 long long* res = malloc (sizeof (long long));
 if (res)
 {
  *res = 0;
 }
 return res;
}

void ffi_mysql_bigint_ptr_set (long long* ptr, long val)
{
 *ptr = val;
}

float* ffi_mysql_make_float_ptr ()
{
 float* res = malloc (sizeof (float));
 if (res)
 {
  *res = 0;
 }
 return res;
}

void ffi_mysql_float_ptr_set (float* ptr, float val)
{
 *ptr = val;
}

double* ffi_mysql_make_double_ptr ()
{
 double* res = malloc (sizeof (double));
 if (res)
 {
  *res = 0;
 }
 return res;
}

void ffi_mysql_double_ptr_set (double* ptr, double val)
{
 *ptr = val;
}

void* ffi_mysql_make_blob_ptr (unsigned len)
{
 void* res = malloc (len);
 if (res)
 {
  memset (res, 0, len);
 }
 return res;
}

void ffi_mysql_string_ptr_set (void* ptr, char* str)
{
 strcpy (ptr, str);
}

void ffi_mysql_blob_ptr_set (void* ptr, ___SCMOBJ bytes)
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
