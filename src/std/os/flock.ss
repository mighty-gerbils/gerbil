;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS Advisory File Locking

(import :gerbil/gambit/os
        :gerbil/gambit/random
        :gerbil/gambit/threads
        :std/error
        :std/sugar
        :std/foreign
        ./fd
        ./fcntl
        ./fdio
        ./error)
(export flock flock/block
        open-input-file/lock
        open-output-file/lock
        open-file/lock
        open/lock
        LOCK_SH LOCK_EX LOCK_UN)

(extern namespace: #f
  macro-port-close macro-port-close-set!)

(def (flock raw op)
  (let ((fd (if (fd? raw) (fd-e raw) raw))
        (op (fxior op LOCK_NB)))
    (do-retry-nonblock (_flock fd op)
      (flock raw op)
      EAGAIN EWOULDBLOCK)))

;; This blocks the current thread until the lock operation is successful.
;; Blocking is implemented with polling -- alternative would be to use an os thread
;; but that is too heavyweight
(def (flock/block raw-or-fd op (timeout #f))
  (def deadline
    (cond
     ((not timeout) #f)
     ((time? timeout)
      (time->seconds timeout))
     ((real? timeout)
      (+ (##current-time-point) timeout))
     (else
      (raise-bad-argument 'flock "real, time or #f" timeout))))

  (let lp ()
    (unless (flock raw-or-fd op)
      (when deadline
        (unless (< deadline (##current-time-point))
          (raise-timeout 'flock "Deadline for flock operation exceeded" raw-or-fd op)))
      (thread-sleep! (random-real))
      (lp))))

(def (open-input-file/lock path (timeout #f)
                           op: (op LOCK_SH)
                           flags: (flags O_RDONLY))
  (open-file/lock path op timeout direction: 'in flags: flags mode: 0))

(def (open-output-file/lock path (timeout #f)
                            op: (op LOCK_EX)
                            flags: (flags (fxior O_WRONLY O_CREAT))
                            mode: (mode S_IRWXU))
  (open-file/lock path op timeout direction: 'out flags: flags mode: mode))

(def (open-file/lock path op (timeout #f)
                     direction: dir
                     flags: flags
                     mode: mode)
  (let* ((fd (open/lock path op timeout flags: flags mode: mode))
         (port (fdopen-port fd dir path))
         (close-it (macro-port-close port))
         (unlocked? #f))
    (def (close port . args)
      (unless unlocked?
        (flock fd LOCK_UN)
        (set! unlocked? #t))
      (apply close-it port args))
    (macro-port-close-set! port close)
    port))

(def (open/lock path op (timeout #f) flags: flags mode: mode)
  (let* ((flags
          (cond-expand
            (linux (fxior flags O_NONBLOCK O_CLOEXEC))
            (else flags)))
         (fd (check-os-error (_open path flags mode)
               (open path flags mode))))
    (cond-expand
      ((not linux)
       (fd-set-nonblock/closeonexec fd)))
    (try
     (flock/block fd op timeout)
     (catch (e)
       (_close fd)
       (raise e)))
    fd))

(begin-ffi (_flock LOCK_SH LOCK_EX LOCK_UN LOCK_NB)
  (c-declare "#include <sys/file.h>")

  (define-const LOCK_SH)
  (define-const LOCK_EX)
  (define-const LOCK_UN)
  (define-const LOCK_NB)

  ;; private
  (namespace ("std/os/flock#" __flock))

  (define-c-lambda __flock (int int) int
    "flock")

  (define-with-errno _flock __flock (fd op)))
