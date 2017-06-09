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
  O_APPEND O_DSYNC O_NONBLOCK O_RSYNC O_SYNC
  O_ACCMODE
  O_RDONLY O_RDWR O_WRONLY
  ;; F_SETLK F_SETLK F_SETLKW
  ;; F_RDLCK F_UNLCK F_WRLCK
  fcntl0 fcntl1
  )

(def* fcntl
  ((raw cmd)
   (let (r (fcntl0 (fd-e raw) cmd))
     (if (not (fxnegative? r)) r
         (raise-os-error (fx- r) fcntl raw cmd))))
  ((raw cmd arg)
   (let (r (fcntl1 (fd-e raw) cmd arg))
     (if (not (fxnegative? r)) r
         (raise-os-error (fx- r) fcntl raw cmd arg)))))

(def (fd-getfl raw)
  (fcntl raw F_GETFL))

(def (fd-setfl raw xflags)
  (let* ((flags (fcntl raw F_GETFL))
         (flags (fxior flags xflags)))
    (fcntl raw F_SETFL flags)))

(def (fd-setfl! raw flags)
  (fcntl raw F_SETFL flags))

(def (fd-getfd raw)
  (fcntl raw F_GETFD))

(def (fd-setfd raw xflags)
  (let* ((flags (fcntl raw F_GETFD))
         (flags (fxior flags xflags)))
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
  (c-declare "#include <sys/types.h>")
  (c-declare "#include <unistd.h>")
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

  (namespace ("std/os/fcntl#"
              F_DUPFD F_GETFD F_SETFD F_GETFL F_SETFL
              FD_CLOEXEC
              ;; F_GETLK F_SETLK F_SETLKW
              ;; F_RDLCK F_UNLCK F_WRLCK
              O_CREAT O_EXCL O_NOCTTY O_TRUNC
              O_APPEND O_DSYNC O_NONBLOCK O_RSYNC O_SYNC
              O_ACCMODE
              O_RDONLY O_RDWR O_WRONLY
              _fcntl0 _fcntl1 _errno
              fcntl0 fcntl1
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
  (define-const O_DSYNC)
  (define-const O_NONBLOCK)
  (define-const O_RSYNC)
  (define-const O_SYNC)

  (define-const O_ACCMODE)
  
  (define-const O_RDONLY)
  (define-const O_RDWR)
  (define-const O_WRONLY)
  
  (define-c-lambda _fcntl0 (int int) int "fcntl")
  (define-c-lambda _fcntl1 (int int int) int "fcntl")
  (define-c-lambda _errno () int
    "___return (errno);")

  (define (fcntl0 fd cmd)
    (declare (not interrupts-enabled))
    (let ((r (_fcntl0 fd cmd)))
      (if (##eq? r -1)
        (##fx- (_errno))
        r)))

  (define (fcntl1 fd cmd arg)
    (declare (not interrupts-enabled))
    (let ((r (_fcntl1 fd cmd arg)))
      (if (##eq? r -1)
        (##fx- (_errno))
        r))))
