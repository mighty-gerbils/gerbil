;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS File Descriptor I/O
package: std/os

(import :std/os/fd
        :std/os/fcntl
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

(def (open path flags (mode 0))
  (cond-expand
    (linux
     (let* ((flags (fxior flags O_NONBLOCK O_CLOEXEC))
            (fd (check-os-error (_open path flags mode)
                  (open path flags mode)))
            (raw (fdopen fd (file-direction flags) 'file)))
       raw))
    (else
     (let* ((fd (check-os-error (_open path flags mode)
                  (open path flags mode)))
            (raw (fdopen fd (file-direction flags) 'file)))
       (fd-set-nonblock raw)
       (fd-set-closeonexec raw)
       raw))))

(def (file-direction flags)
  (cond
   ((fx= (fxand flags O_RDWR) O_RDWR)
    'inout)
   ((fx= (fxand flags O_RDONLY) O_RDONLY)
    'in)
   ((fx= (fxand flags O_WRONLY) O_WRONLY)
    'out)
   (else
    (error "Unspecified file direction" flags))))

(extern _read _write _open)

;;; FFI impl
(begin-foreign
  (c-declare "#include <unistd.h>")
  (c-declare "#include <errno.h>")
  (c-declare "#include <sys/types.h>")
  (c-declare "#include <sys/stat.h>")
  (c-declare "#include <fcntl.h>")

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
              __read _read __write _write _open __open
              __errno))

  (define-c-lambda __errno () int
    "___return (errno);")

  (c-declare "static int ffi_fdio_read (int fd, ___SCMOBJ bytes, int start, int end);")
  (c-declare "static int ffi_fdio_write (int fd, ___SCMOBJ bytes, int start, int end);")

  (define-c-lambda __read (int scheme-object int int) int
    "ffi_fdio_read")
  (define-c-lambda __write (int scheme-object int int) int
    "ffi_fdio_write")
  (define-c-lambda __open (UTF-8-string int int) int
    "open")

  (define-with-errno _read __read (fd bytes start end))
  (define-with-errno _write __write (fd bytes start end))
  (define-with-errno _open __open (path flags mode))

  (c-declare #<<END-C
#ifndef ___HAVE_FFI_U8VECTOR
#define ___HAVE_FFI_U8VECTOR
#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))
#endif

int ffi_fdio_read (int fd, ___SCMOBJ bytes, int start, int end)
{
 return read (fd, U8_DATA (bytes) + start, end - start);
}

int ffi_fdio_write (int fd, ___SCMOBJ bytes, int start, int end)
{
 return write (fd, U8_DATA (bytes) + start, end - start);
}

END-C
))
