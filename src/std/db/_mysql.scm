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
#include <mysql.h>

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
(c-define-type MYSQL_TIME "MYSQL_TIME")
(c-define-type MYSQL_TIME*
  (pointer MYSQL_TIME (MYSQL_TIME*) "ffi_free"))

(define-c-lambda mysql_error (MYSQL*) char-string)
(define-c-lambda mysql_errno (MYSQL*) int)
(define-c-lambda mysql_stmt_error (MYSQL_STMT*) char-string)
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
  free (my);
  return NULL;            
 }
}

int ffi_mysql_connect (MYSQL* mysql, char *host, int port, char *user, char *passwd, char *db)
{
 MYSQL* res = mysql_reql_connect (mysql, host, user, passwd, db, port,
                                         NULL, CLIENT_IGNORE_SIGPIPE|CLIENT_COMPRESS|0);
 if (res)
 {
  return 0;
 } else {
  return 1;
 }
}

END-C
)

