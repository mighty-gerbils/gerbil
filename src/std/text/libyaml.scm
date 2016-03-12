;;; -*- Scheme -*-
;;; (C) vyzo at hackzen.org
;;; libyaml FFI

;; compile: -ld-options "-lyaml"

(declare
  (block)
  (standard-bindings)
  (extended-bindings)
  (not safe))

(namespace ("std/text/libyaml#"))
(##namespace ("" define-macro define let let* if or and
              quote quasiquote unquote unquote-splicing
              c-lambda c-define-type c-declare c-initialize 
              ))

(c-declare #<<END-C
#include <stdlib.h>
#include <stdio.h>
#include <yaml.h>

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
         (ref (##string-append "___result = " str ";")))
    `(define ,symbol
       ((c-lambda () int ,ref)))))

(define-const YAML_NO_EVENT)
(define-const YAML_STREAM_START_EVENT)
(define-const YAML_STREAM_END_EVENT)
(define-const YAML_DOCUMENT_START_EVENT)
(define-const YAML_DOCUMENT_END_EVENT)
(define-const YAML_ALIAS_EVENT)
(define-const YAML_SCALAR_EVENT)
(define-const YAML_SEQUENCE_START_EVENT)
(define-const YAML_SEQUENCE_END_EVENT)
(define-const YAML_MAPPING_START_EVENT)
(define-const YAML_MAPPING_END_EVENT)

(c-declare #<<END-C
static ___SCMOBJ ffi_release_file (void *ptr);
static ___SCMOBJ ffi_release_event (void *ptr);
static ___SCMOBJ ffi_release_parser (void *ptr);
static FILE* ffi_open_file (const char *path);
static yaml_parser_t *ffi_make_parser ();
static yaml_event_t *ffi_make_event ();
static void ffi_event_scalar_bytes (yaml_event_t *event, ___SCMOBJ bytes);
END-C
)           

(c-define-type FILE "FILE")
(c-define-type FILE* (pointer FILE (FILE*)))
(c-define-type yaml_event_t "yaml_event_t")
(c-define-type yaml_event_t*
  (pointer yaml_event_t (yaml_event_t*) "ffi_release_event"))
(c-define-type yaml_parser_t "yaml_parser_t")
(c-define-type yaml_parser_t*
  (pointer yaml_parser_t (yaml_parser_t*) "ffi_release_parser"))

(define-c-lambda open_yaml_file (char-string) FILE*
  "ffi_open_file")
(define-c-lambda close_yaml_file (FILE*) void
  "fclose")
(define-c-lambda make_yaml_parser () yaml_parser_t*
  "ffi_make_parser")
(define-c-lambda yaml_parser_initialize (yaml_parser_t*) void
  "yaml_parser_initialize")
(define-c-lambda yaml_parser_delete (yaml_parser_t*) void
  "yaml_parser_delete")
(define-c-lambda yaml_parser_set_input_file (yaml_parser_t* FILE*) void
  "yaml_parser_set_input_file")
(define-c-lambda yaml_parser_parse (yaml_parser_t* yaml_event_t*) int
  "yaml_parser_parse")
(define-c-lambda make_yaml_event () yaml_event_t*
  "ffi_make_event")
(define-c-lambda yaml_event_delete (yaml_event_t*) void
  "yaml_event_delete")
(define-c-lambda yaml_event_type (yaml_event_t*) int
  "___return (___arg1->type);")
(define-c-lambda yaml_event_anchor (yaml_event_t*) UTF-8-string
  "___return ((char*)___arg1->data.alias.anchor);")
(define-c-lambda yaml_event_tag (yaml_event_t*) UTF-8-string
  "___return ((char*)___arg1->data.scalar.tag);")
(define-c-lambda yaml_event_scalar_length (yaml_event_t*) size_t
  "___return (___arg1->data.scalar.length);")
(define-c-lambda yaml_event_scalar_bytes (yaml_event_t* scheme-object) void
  "ffi_event_scalar_bytes")

(c-declare #<<END-C
static FILE* ffi_open_file (const char *path)
{
 return fopen (path, "rb");
}

static yaml_parser_t *ffi_make_parser ()
{
 return malloc (sizeof (yaml_parser_t));
}

static ___SCMOBJ ffi_release_parser (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);                   
}

static yaml_event_t *ffi_make_event ()
{
 return malloc (sizeof (yaml_event_t));
}

static ___SCMOBJ ffi_release_event (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}

static void ffi_event_scalar_bytes (yaml_event_t *event, ___SCMOBJ bytes)
{
 memcpy (U8_DATA (bytes), event->data.scalar.value, event->data.scalar.length);
}
END-C
)           
