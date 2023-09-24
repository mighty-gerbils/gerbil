;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS fcntl interface

(import :std/foreign
        ./error
        ./fd)
(export #t)

(def* fcntl
  ((raw cmd)
   (let (fd (if (fd? raw) (fd-e raw) raw))
     (check-os-error (_fcntl0 fd cmd)
       (fcntl raw cmd))))
  ((raw cmd arg)
   (let (fd (if (fd? raw) (fd-e raw) raw))
     (check-os-error (_fcntl1 fd cmd arg)
       (fcntl raw cmd arg)))))

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

(def (fd-set-nonblock/closeonexec raw)
  (fd-setfl raw O_NONBLOCK)
  (fd-setfd raw FD_CLOEXEC))

;;; FFI impl
(begin-ffi (F_DUPFD F_GETFD F_SETFD F_GETFL F_SETFL
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
  (c-declare "#include <unistd.h>")
  (c-declare "#include <sys/types.h>")
  (c-declare "#include <sys/stat.h>")
  (c-declare "#include <fcntl.h>")

  (namespace ("std/os/fcntl" __fcntl0 __fcntl1))

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

  (define-with-errno _fcntl0 __fcntl0 (fd cmd))
  (define-with-errno _fcntl1 __fcntl1 (fd cmd arg)))
