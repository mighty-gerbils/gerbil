;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS File Descriptor I/O
package: std/os

(import :std/os/fd
        :std/os/error)
(export #t)

(def (fdread raw bytes (start 0) (end (u8vector-length bytes)))
  (do-retry-nonblock (_read (fd-e raw) bytes start end)
    (fdread raw bytes start end)
    EAGAIN EWOULDBLOCK))

(def (fdwrite raw bytes (start 0) (end (u8vector-length bytes)))
  (do-retry-nonblock (_write (fd-e raw) bytes start end)
    (fdwrite raw bytes start end)
    EAGAIN EWOULDBLOCK))

(extern _read _write)

;;; FFI impl
(begin-foreign
  (c-declare "#include <unistd.h>")
  (c-declare "#include <errno.h>")

  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (define-macro (define-const symbol)
    (let* ((str (##symbol->string symbol))
           (ref (##string-append "___return (" str ");")))
      `(define ,symbol
         ((c-lambda () int ,ref)))))

  (define-macro (define-with-errno symbol ffi-symbol args)
    `(define (,symbol ,@args)
       (declare (not interrupts-enabled))
       (let ((r (,ffi-symbol ,@args)))
         (if (##fx< r 0)
           (##fx- (__errno))
           r))))

  (namespace ("std/os/fdio#"
              __read _read __write _write
              __errno))

  (define-c-lambda __errno () int
    "___return (errno);")

  (c-declare "static int ffi_read (int fd, ___SCMOBJ bytes, int start, int end);")
  (c-declare "static int write_read (int fd, ___SCMOBJ bytes, int start, int end);")

  (define-c-lambda __read (int scheme-object int int) int
    "ffi_read")
  (define-c-lambda __write (int scheme-object int int) int
    "ffi_write")

  (define-with-errno _read __read (fd bytes start end))
  (define-with-errno _write __write (fd bytes start end))

  (c-declare #<<END-C

#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))

int ffi_read (int fd, ___SCMOBJ bytes, int start, int end)
{
 return read (fd, U8_DATA (bytes) + start, end - start);
}

int ffi_write (int fd, ___SCMOBJ bytes, int start, int end)
{
 return write (fd, U8_DATA (bytes) + start, end - start);
}

END-C
))
