;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS fcntl interface
package: std/os

(import :std/os/error
        :std/os/fd)
(export #t)

;; FFI
(extern
  F_DUPFD F_GETFD F_SETFD F_GETFL F_SETFL
  FD_CLOEXEC
  O_CREAT O_EXCL O_NOCTTY O_TRUNC
  O_APPEND O_NONBLOCK O_SYNC
  O_ACCMODE
  O_RDONLY O_RDWR O_WRONLY

  O_CLOEXEC O_DIRECT O_DSYNC
  O_NOATIME
  O_NOFOLLOW O_TMPFILE

  ;; F_SETLK F_SETLK F_SETLKW
  ;; F_RDLCK F_UNLCK F_WRLCK
  _fcntl0 _fcntl1
  )

(def* fcntl
  ((raw cmd)
   (check-os-error (_fcntl0 (fd-e raw) cmd)
     (fcntl raw cmd)))
  ((raw cmd arg)
   (check-os-error (_fcntl1 (fd-e raw) cmd arg)
     (fcntl raw cmd arg))))

(def (fd-getfl raw)
  (fcntl raw F_GETFL))

(def (fd-setfl raw xflags)
  (let* ((flags (fcntl raw F_GETFL))
         (flags (##fxior flags xflags)))
    (fcntl raw F_SETFL flags)))

(def (fd-setfl! raw flags)
  (fcntl raw F_SETFL flags))

(def (fd-getfd raw)
  (fcntl raw F_GETFD))

(def (fd-setfd raw xflags)
  (let* ((flags (fcntl raw F_GETFD))
         (flags (##fxior flags xflags)))
    (fcntl raw F_SETFD flags)))

(def (fd-setfd! raw flags)
  (fcntl raw F_SETFD flags))

(def (fd-set-nonblock raw)
  (fd-setfl raw O_NONBLOCK))

(def (fd-set-closeonexec raw)
  (fd-setfd raw FD_CLOEXEC))

;;; FFI impl
(begin-foreign
  (c-declare "#include <errno.h>")
  (c-declare "#include <unistd.h>")
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

  (define-macro (define-const* symbol)
    (let* ((str (##symbol->string symbol))
           (code (##string-append
                  "#ifdef " str "\n"
                  "___return (___FIX (" str "));\n"
                  "#else \n"
                  "___return (___FAL);\n"
                  "#endif")))
      `(define ,symbol
         ((c-lambda () scheme-object ,code)))))

  (namespace ("std/os/fcntl#"
              F_DUPFD F_GETFD F_SETFD F_GETFL F_SETFL
              FD_CLOEXEC
              ;; F_GETLK F_SETLK F_SETLKW
              ;; F_RDLCK F_UNLCK F_WRLCK
              O_CREAT O_EXCL O_NOCTTY O_TRUNC
              O_APPEND O_NONBLOCK O_SYNC
              O_ACCMODE
              O_RDONLY O_RDWR O_WRONLY

              ;; linux (otherwise #f)
              O_CLOEXEC O_DIRECT O_DSYNC
              O_EXCL O_NOATIME O_NOCTTY
              O_NOFOLLOW O_TMPFILE

              __fcntl0 __fcntl1 __errno
              _fcntl0 _fcntl1
              ))

  ;; POSIX commands
  (define-const F_DUPFD)
  (define-const F_GETFD)
  (define-const F_SETFD)
  (define-const F_GETFL)
  (define-const F_SETFL)
  ;; (define-const F_GETLK)
  ;; (define-const F_SETLK)
  ;; (define-const F_SETLKW)

  ;; POSIX flags
  (define-const FD_CLOEXEC)

  ;; (define-const F_RDLCK)
  ;; (define-const F_UNLCK)
  ;; (define-const F_WRLCK)

  (define-const O_CREAT)
  (define-const O_EXCL)
  (define-const O_NOCTTY)
  (define-const O_TRUNC)

  (define-const O_APPEND)
  (define-const O_NONBLOCK)
  (define-const O_SYNC)
  (define-const O_ACCMODE)

  (define-const O_RDONLY)
  (define-const O_RDWR)
  (define-const O_WRONLY)

  (define-const* O_CLOEXEC)
  (define-const* O_DIRECT)
  (define-const* O_DSYNC)
  (define-const* O_EXCL)
  (define-const* O_NOATIME)
  (define-const* O_NOCTTY)
  (define-const* O_NOFOLLOW)
  (define-const* O_TMPFILE)

  (define-c-lambda __fcntl0 (int int) int "fcntl")
  (define-c-lambda __fcntl1 (int int int) int "fcntl")
  (define-c-lambda __errno () int
    "___return (errno);")

  (define (_fcntl0 fd cmd)
    (declare (not interrupts-enabled))
    (let ((r (__fcntl0 fd cmd)))
      (if (##eq? r -1)
        (##fx- (__errno))
        r)))

  (define (_fcntl1 fd cmd arg)
    (declare (not interrupts-enabled))
    (let ((r (__fcntl1 fd cmd arg)))
      (if (##eq? r -1)
        (##fx- (__errno))
        r))))
