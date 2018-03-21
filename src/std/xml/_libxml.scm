;;; -*- Scheme -*-
;;; (C) vyzo at hackzen.org
;;; narrow and dirty interface to libxml2's parser

;; Note: libxml has a memory dangerous interface; xml doc roots must be
;; explicitly freed by the caller (invalidating all internal nodes)
;;
;; compile: -cc-options "$(xml2-config --cflags)"
;;          -ld-options "$(xml2-config --libs)"
;;          -e "(include \"~~lib/_gambit#.scm\")"
(declare
  (block)
  (standard-bindings)
  (extended-bindings)
  (not safe))

(namespace ("std/xml/libxml#"))
(##namespace ("" c-declare c-initialize c-lambda c-define-type c-define
              define-macro define lambda if begin let let* quote quasiquote unquote
              cond and or not set! error
              symbol->string string-append substring->bytes
              macro-byte-input-port? macro-character-input-port?
              macro-character-port-rbuf
              macro-character-port-rlo macro-character-port-rlo-set!
              macro-character-port-rhi macro-character-port-rhi-set!
              macro-make-fifo macro-fifo->list macro-fifo-insert-at-tail!
              macro-fifo-next macro-fifo-next-set!
              macro-fifo-tail macro-fifo-tail-set!
              macro-port-mutex-lock! macro-port-mutex-unlock!
              macro-mutex-lock! macro-mutex-unlock!
              macro-mutex-state-not-abandoned
              macro-port-mutex
              macro-current-thread
              macro-btq-deq-remove!
              macro-btq-leftmost
              macro-btq-link!
              macro-btq-owner
              macro-btq-unlink!
              macro-btq-deq-init!
              macro-btq-deq-insert!
              macro-btq-deq-next
              macro-btq-deq-next-set!
              macro-btq-deq-prev
              macro-btq-deq-prev-set!
              macro-btq-owner-set!
              macro-btq-deq-insert-at-tail!
              macro-slot
              macro-byte-kind macro-character-kind
              macro-port? macro-port-rkind macro-port-of-rkind?
              macro-struct-slot
              ))

(c-declare #<<END-C
#include <stdio.h>
#include <string.h>
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <libxml/HTMLparser.h>
END-C
)

(c-initialize #<<END-C
LIBXML_TEST_VERSION
END-C
)

;; constants
(define-macro (define-const symbol)
  (let* ((str (symbol->string symbol))
         (ref (string-append "___return (" str ");")))
    `(define ,symbol
       ((c-lambda () int ,ref)))))

;; node types
(define-const XML_ELEMENT_NODE)
(define-const XML_ATTRIBUTE_NODE)
(define-const XML_TEXT_NODE)
(define-const XML_CDATA_SECTION_NODE)
(define-const XML_ENTITY_REF_NODE)
(define-const XML_ENTITY_NODE)
(define-const XML_PI_NODE)
(define-const XML_COMMENT_NODE)
(define-const XML_DOCUMENT_NODE)
(define-const XML_DOCUMENT_TYPE_NODE)
(define-const XML_DOCUMENT_FRAG_NODE)
(define-const XML_NOTATION_NODE)
(define-const XML_HTML_DOCUMENT_NODE)
(define-const XML_DTD_NODE)
(define-const XML_ELEMENT_DECL)
(define-const XML_ATTRIBUTE_DECL)
(define-const XML_ENTITY_DECL)
(define-const XML_NAMESPACE_DECL)
(define-const XML_XINCLUDE_START)
(define-const XML_XINCLUDE_END)

;; parser options
(define-const XML_PARSE_RECOVER)
(define-const XML_PARSE_NOENT)
(define-const XML_PARSE_DTDLOAD)
(define-const XML_PARSE_DTDATTR)
(define-const XML_PARSE_DTDVALID)
(define-const XML_PARSE_NOERROR)
(define-const XML_PARSE_NOWARNING)
(define-const XML_PARSE_PEDANTIC)
(define-const XML_PARSE_NOBLANKS)
(define-const XML_PARSE_SAX1)
(define-const XML_PARSE_XINCLUDE)
(define-const XML_PARSE_NONET)
(define-const XML_PARSE_NODICT)
(define-const XML_PARSE_NSCLEAN)
(define-const XML_PARSE_NOCDATA)
(define-const XML_PARSE_NOXINCNODE)
(define-const XML_PARSE_COMPACT)
(define-const XML_PARSE_HUGE)

(define-const HTML_PARSE_RECOVER)
(define-const HTML_PARSE_NODEFDTD)
(define-const HTML_PARSE_NOERROR)
(define-const HTML_PARSE_NOWARNING)
(define-const HTML_PARSE_PEDANTIC)
(define-const HTML_PARSE_NOBLANKS)
(define-const HTML_PARSE_NONET)
(define-const HTML_PARSE_NOIMPLIED)
(define-const HTML_PARSE_COMPACT)
(define-const HTML_PARSE_IGNORE_ENC)

;; concrete node types
(c-define-type xmlDocPtr  (pointer (struct "_xmlDoc"))) ;; void
(c-define-type xmlNodePtr (pointer (struct "_xmlNode")))
(c-define-type xmlAttrPtr (pointer (struct "_xmlAttr")))
(c-define-type xmlNsPtr   (pointer (struct "_xmlNs")))

(define xmlFreeDoc
  (c-lambda (xmlDocPtr)
       void
       "xmlFreeDoc ((xmlDocPtr)___arg1);"))

(define xmlDocGetRootElement
  (c-lambda (xmlDocPtr)
       xmlNodePtr
       "xmlDocGetRootElement"))

(define xmlNode-type
  (c-lambda (xmlNodePtr)
       int
       "___return (((xmlNodePtr)___arg1)->type);"))

(define xmlNode-name
  (c-lambda (xmlNodePtr)
       char-string
       "___return ((char*)((xmlNodePtr)___arg1)->name);"))

(define xmlNode-children
  (c-lambda (xmlNodePtr)
       xmlNodePtr
       "___return (((xmlNodePtr)___arg1)->children);"))

(define xmlNode-next
  (c-lambda (xmlNodePtr)
       xmlNodePtr
       "___return (((xmlNodePtr)___arg1)->next);"))

(define xmlNode-content
  (c-lambda (xmlNodePtr)
       UTF-8-string
       "___return ((char*) ((xmlNodePtr)___arg1)->content);"))

(define xmlNode-properties
  (c-lambda (xmlNodePtr)
       xmlAttrPtr
       "___return (((xmlNodePtr)___arg1)->properties);"))

(define xmlNode-ns
  (c-lambda (xmlNodePtr)
       xmlNsPtr
       "___return (((xmlNodePtr)___arg1)->ns);"))

(define xmlAttr-name
  (c-lambda (xmlAttrPtr)
       char-string
       "___return ((char*)((xmlAttrPtr)___arg1)->name);"))

(define xmlAttr-children
  (c-lambda (xmlAttrPtr)
       xmlNodePtr
       "___return (((xmlAttrPtr)___arg1)->children);"))

(define xmlAttr-next
  (c-lambda (xmlAttrPtr)
       xmlAttrPtr
       "___return (((xmlAttrPtr)___arg1)->next);"))

(define xmlAttr-ns
  (c-lambda (xmlAttrPtr)
       xmlNsPtr
       "___return (((xmlAttrPtr)___arg1)->ns);"))

(define xmlNs-href
  (c-lambda (xmlNsPtr)
       char-string
       "___return ((char*)((xmlNsPtr)___arg1)->href);"))

(define xmlNs-prefix
  (c-lambda (xmlNsPtr)
       char-string
       "___return ((char*)((xmlNsPtr)___arg1)->prefix);"))

;; html/xml parser interfaces:
;;  - parse a string
;;  - parse a byte-vector
;;  - parse a byte-input-port

(c-declare #<<END-C
#ifndef ___HAVE_FFI_U8VECTOR
#define ___HAVE_FFI_U8VECTOR
#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))
#endif
END-C
)

(define xmlRead-string
  (c-lambda (UTF-8-string
        char-string                     ; url
        char-string                     ; encoding
        int)                            ; options
       xmlDocPtr
       #<<END-C
___return (xmlReadMemory (___arg1, strlen (___arg1),
                          ___arg2, ___arg3, ___arg4));
END-C
))

(define htmlRead-string
  (c-lambda (UTF-8-string
        char-string                     ; url
        char-string                     ; encoding
        int)                            ; options
       xmlDocPtr
       #<<END-C
___return (htmlReadMemory (___arg1, strlen (___arg1),
                           ___arg2, ___arg3, ___arg4));
END-C
))

(define xmlRead-u8vector
  (c-lambda (scheme-object
        int                             ; start
        int                             ; end
        char-string                     ; url
        char-string                     ; encoding
        int)                            ; optionx
       xmlDocPtr
       #<<END-C
___return (xmlReadMemory ((char*) U8_DATA (___arg1) + ___arg2,
                           ___arg3 - ___arg2,
                           ___arg4, ___arg5, ___arg6));
END-C
))

(define htmlRead-u8vector
  (c-lambda (scheme-object
        int                             ; start
        int                             ; end
        char-string                     ; url
        char-string                     ; encoding
        int)                            ; optionx
       xmlDocPtr
       #<<END-C
___return (htmlReadMemory ((char*) U8_DATA (___arg1) + ___arg2,
                            ___arg3 - ___arg2,
                            ___arg4, ___arg5, ___arg6));
END-C
))

;;; pumped port parser; necessary to deal with gambit's inability to
;;  re-enter ffi upcalls with multiple threads
;;  [*Read-port with concurrent threads parsing -> abrupt exit 71]
(c-declare #<<END-C
typedef struct libxml_io_context {
  ___SCMOBJ data;
  int off;
} *libxml_io_context_t;

static void ffi_libxml_iocontext_init (libxml_io_context_t ioctx, ___SCMOBJ data) {
  ioctx->data = data;
  ioctx->off = 0;
}

static int ffi_libxml_iocontext_read (void *ctx, char *buf, int buflen) {
  libxml_io_context_t ioctx = (libxml_io_context_t)ctx;
  int rlen = buflen;
  int wlen = 0;

again:
  if (___PAIRP (ioctx->data)) {
    ___SCMOBJ next = ___CAR (ioctx->data);
    ___U8 *data = U8_DATA (next);
    int off = ioctx->off;
    int len = U8_LEN (next) - off;
    if (len <= rlen) {
      memmove (buf + wlen, data + off, len);
      wlen += len;
      rlen -= len;
      ioctx->data = ___CDR (ioctx->data);
      ioctx->off  = 0;
      if (rlen > 0) {
        goto again;
      } else {
        return wlen;
      }
    } else {
      memmove (buf + wlen, data + off, rlen);
      ioctx->off += rlen;
      return wlen + rlen;
    }
  } else {
    return wlen;
  }
}

static int ffi_libxml_ioclose (void *ctx) {
  return 0;
}

END-C
)

(define xmlRead-u8vector*
  (c-lambda (scheme-object                   ; [u8vector ...]
        char-string                     ; url
        char-string                     ; encoding
        int)                            ; options
       xmlDocPtr
       #<<END-C
struct libxml_io_context ioctx;
ffi_libxml_iocontext_init (&ioctx, ___arg1);
___return (xmlReadIO (ffi_libxml_iocontext_read, ffi_libxml_ioclose, &ioctx,
                      ___arg2, ___arg3, ___arg4));
END-C
))

(define htmlRead-u8vector*
  (c-lambda (scheme-object                   ; [u8vector ...]
        char-string                     ; url
        char-string                     ; encoding
        int)                            ; options
       xmlDocPtr
       #<<END-C
struct libxml_io_context ioctx;
ffi_libxml_iocontext_init (&ioctx, ___arg1);
___return (htmlReadIO (ffi_libxml_iocontext_read, ffi_libxml_ioclose, &ioctx,
                       ___arg2, ___arg3, ___arg4));
END-C
))

(define (xmlRead-iocontext parse port url encoding options)
  (define (drain-char-buffer! port)
    (macro-port-mutex-lock! port)
    (if (##fx< (macro-character-port-rlo port)
               (macro-character-port-rhi port))
      (let ((buf (substring->bytes (macro-character-port-rbuf port)
                                   (macro-character-port-rlo port)
                                   (macro-character-port-rhi port))))
        (macro-character-port-rlo-set! port (macro-character-port-rhi port))
        (macro-port-mutex-unlock! port)
        buf)
      (begin
        (macro-port-mutex-unlock! port)
         #f)))

  (define (read-byte-port port)
    (let ((ret (macro-make-fifo)))
      (let ((cb (drain-char-buffer! port)))
        (if cb
          (macro-fifo-insert-at-tail! ret cb)))

      (let lp ()
        (let* ((blen 4096)
               (buf (##make-u8vector blen))
               (rlen (##read-subu8vector buf 0 blen port)))
          (cond
           ((##fxzero? rlen)
            (macro-fifo->list ret))
           ((##fx< rlen blen)
            (macro-fifo-insert-at-tail! ret (##u8vector-shrink! buf rlen))
            (macro-fifo->list ret))
           (else
            (macro-fifo-insert-at-tail! ret buf)
            (lp)))))))

  (define (read-char-port port)
    (##read-all port
      (lambda (port)
        (let* ((blen 2048)
               (buf (##make-string blen))
               (rlen (##read-substring buf 0 blen port)))
          (if (##fxzero? rlen) '#!eof
              (substring->bytes buf 0 rlen))))))

  (cond
   ((macro-byte-input-port? port)
    (parse (read-byte-port port) url encoding options))
   ((macro-character-input-port? port)
    (parse (read-char-port port) url encoding options))
   (else
    (error "Can't parse port; not a byte or character input port" port))))

(define (xmlRead-port port url encoding options)
  (xmlRead-iocontext xmlRead-u8vector* port url encoding options))

(define (htmlRead-port port url encoding options)
  (xmlRead-iocontext htmlRead-u8vector* port url encoding options))
