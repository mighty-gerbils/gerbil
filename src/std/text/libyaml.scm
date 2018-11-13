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
static FILE* ffi_yaml_open_input_file (const char *path);
static FILE* ffi_yaml_open_output_file (const char *path);
static void ffi_yaml_parser_set_input_string (yaml_parser_t*, void *str);
static ___SCMOBJ ffi_yaml_release_event (void *ptr);
static ___SCMOBJ ffi_yaml_release_parser (void *ptr);
static ___SCMOBJ ffi_yaml_release_emitter (void *ptr);
static yaml_parser_t *ffi_yaml_make_parser ();
static yaml_event_t *ffi_yaml_make_event ();
static yaml_emitter_t *ffi_yaml_make_emitter ();
static void ffi_yaml_event_scalar_bytes (yaml_event_t *event, ___SCMOBJ bytes);
END-C
)

(define-guard ffi-have-FILE
  (c-define-type FILE "FILE"))
(define-guard ffi-have-FILE*
  (c-define-type FILE* (pointer FILE (FILE*))))
(c-define-type yaml_event_t "yaml_event_t")
(c-define-type yaml_event_t*
  (pointer yaml_event_t (yaml_event_t*) "ffi_yaml_release_event"))
(c-define-type yaml_parser_t "yaml_parser_t")
(c-define-type yaml_parser_t*
  (pointer yaml_parser_t (yaml_parser_t*) "ffi_yaml_release_parser"))
(c-define-type yaml_emitter_t "yaml_emitter_t")
(c-define-type yaml_emitter_t*
  (pointer yaml_emitter_t (yaml_emitter_t*) "ffi_yaml_release_emitter"))
(c-define-type yaml_str_t (pointer void))

(define-c-lambda open_yaml_input_file (UTF-8-string) FILE*
  "ffi_yaml_open_input_file")
(define-c-lambda open_yaml_output_file (UTF-8-string) FILE*
  "ffi_yaml_open_output_file")
(define-c-lambda close_yaml_file (FILE*) void
  "fclose")

(define-c-lambda yaml_strdup (UTF-8-string) yaml_str_t
  "___return (strdup (___arg1));")
(define-c-lambda yaml_strfree (yaml_str_t) void
  "free (___arg1); ___return;")

(define-c-lambda make_yaml_parser () yaml_parser_t*
  "ffi_yaml_make_parser")
(define-c-lambda yaml_parser_initialize (yaml_parser_t*) void
  "yaml_parser_initialize")
(define-c-lambda yaml_parser_delete (yaml_parser_t*) void
  "yaml_parser_delete")
(define-c-lambda yaml_parser_set_input_file (yaml_parser_t* FILE*) void
  "yaml_parser_set_input_file")
(define-c-lambda yaml_parser_set_input_string (yaml_parser_t* yaml_str_t) void
  "ffi_yaml_parser_set_input_string")
(define-c-lambda yaml_parser_parse (yaml_parser_t* yaml_event_t*) int
  "yaml_parser_parse")
(define-c-lambda yaml_parser_error (yaml_parser_t*) int
  "___return (___arg1->error);")

(define-c-lambda make_yaml_emitter () yaml_emitter_t*
  "ffi_yaml_make_emitter")
(define-c-lambda yaml_emitter_initialize (yaml_emitter_t*) void
  "yaml_emitter_initialize")
(define-c-lambda yaml_emitter_delete (yaml_emitter_t*) void
  "yaml_emitter_delete")
(define-c-lambda yaml_emitter_set_output_file (yaml_emitter_t* FILE*) void
  "yaml_emitter_set_output_file")
(define-c-lambda yaml_emitter_emit (yaml_emitter_t* yaml_event_t*) int
  "yaml_emitter_emit")
(define-c-lambda yaml_emitter_error (yaml_emitter_t*) int
  "___return (___arg1->error);")

(define-c-lambda make_yaml_event () yaml_event_t*
  "ffi_yaml_make_event")
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
  "ffi_yaml_event_scalar_bytes")

(define-c-lambda yaml_event_stream_start (yaml_event_t*) int
  "___return (yaml_stream_start_event_initialize (___arg1, YAML_UTF8_ENCODING));")
(define-c-lambda yaml_event_stream_end (yaml_event_t*) int
  "yaml_stream_end_event_initialize")
(define-c-lambda yaml_event_document_start (yaml_event_t*) int
  "___return (yaml_document_start_event_initialize (___arg1, NULL, NULL, NULL, 0));")
(define-c-lambda yaml_event_document_end (yaml_event_t*) int
  "___return (yaml_document_end_event_initialize (___arg1, 1));")
(define-c-lambda yaml_event_scalar (yaml_event_t* UTF-8-string) int
  "___return (yaml_scalar_event_initialize (___arg1, NULL, NULL, ___arg2, strlen (___arg2), 1, 1, 0));")
(define-c-lambda yaml_event_sequence_start (yaml_event_t*) int
  "___return (yaml_sequence_start_event_initialize (___arg1, NULL, NULL, 1, 0));")
(define-c-lambda yaml_event_sequence_end (yaml_event_t*) int
  "yaml_sequence_end_event_initialize")
(define-c-lambda yaml_event_mapping_start (yaml_event_t*) int
  "___return (yaml_mapping_start_event_initialize (___arg1, NULL, NULL, 1, 0));")
(define-c-lambda yaml_event_mapping_end (yaml_event_t*) int
  "yaml_mapping_end_event_initialize")

(c-declare #<<END-C
static FILE* ffi_yaml_open_input_file (const char *path)
{
 return fopen (path, "rb");
}

static FILE* ffi_yaml_open_output_file (const char *path)
{
 return fopen (path, "wb");
}

static void ffi_yaml_parser_set_input_string (yaml_parser_t *parser, void *str)
{
 yaml_parser_set_input_string (parser, (char*)str, strlen ((char*)str));
}

static yaml_parser_t *ffi_yaml_make_parser ()
{
 return malloc (sizeof (yaml_parser_t));
}

static ___SCMOBJ ffi_yaml_release_parser (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}

static yaml_emitter_t *ffi_yaml_make_emitter ()
{
 return malloc (sizeof (yaml_emitter_t));
}

static ___SCMOBJ ffi_yaml_release_emitter (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}

static yaml_event_t *ffi_yaml_make_event ()
{
 return malloc (sizeof (yaml_event_t));
}

static ___SCMOBJ ffi_yaml_release_event (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}

static void ffi_yaml_event_scalar_bytes (yaml_event_t *event, ___SCMOBJ bytes)
{
 memcpy (U8_DATA (bytes), event->data.scalar.value, event->data.scalar.length);
}
END-C
)
