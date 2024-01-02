;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS File Descriptor I/O

(import :std/error
        :std/foreign
        ./fd
        ./fcntl
        ./error)

(export #t)

(def (fdread raw bytes (start 0) (end (u8vector-length bytes)))
  (let (fd (if (fd? raw) (fd-e raw) raw))
    (do-retry-nonblock (_read fd bytes start end)
      (fdread raw bytes start end)
      EAGAIN EWOULDBLOCK)))

(def (fdwrite raw bytes (start 0) (end (u8vector-length bytes)))
  (let (fd (if (fd? raw) (fd-e raw) raw))
    (do-retry-nonblock (_write fd bytes start end)
      (fdwrite raw bytes start end)
      EAGAIN EWOULDBLOCK)))

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
       (fd-set-nonblock/closeonexec raw)
       raw))))

(def (close raw)
  (if (fd? raw)
    (close-port raw)
    (do-retry-nonblock (_close raw)
      (close raw))))

(def (fdflush raw)
  (if (fd? raw)
    (let (fd (if (fd? raw) (fd-e raw) raw))
      (check-os-error (_flush fd)
        (flush raw)))))

; TODO: this should probably use the port position functions instead of C FFI
(def (fdseek raw position from)
  (let ((fd (if (fd? raw) (fd-e raw) raw))
        (whence (case from
                  ((start) SEEK_SET)
                  ((current) SEEK_CUR)
                  ((end) SEEK_END)
                  (else (error "Unknown from to seek about" from)))))
    (check-os-error (_seek fd position whence)
      (seek fd position whence))))

(def (file-direction flags)
  (cond
   ((##fx= (##fxand flags O_RDWR) O_RDWR)
    'inout)
   ((##fx= (##fxand flags O_RDONLY) O_RDONLY)
    'in)
   ((##fx= (##fxand flags O_WRONLY) O_WRONLY)
    'out)
   (else
    (raise-bad-argument fdio "file direction: unspecified" flags))))

;;; FFI impl
(begin-ffi (_read _write _open _close _seek _flush
            S_IRWXU S_IWUSR S_IRUSR S_IXUSR
            S_IRWXG S_IRGRP S_IWGRP S_IXGRP
            S_IRWXO S_IROTH S_IWOTH S_IXOTH
            SEEK_SET SEEK_CUR SEEK_END)

  (c-declare "#include <unistd.h>")
  (c-declare "#include <sys/types.h>")
  (c-declare "#include <sys/stat.h>")
  (c-declare "#include <fcntl.h>")

  (define-const S_IRWXU)
  (define-const S_IRUSR)
  (define-const S_IWUSR)
  (define-const S_IXUSR)
  (define-const S_IRWXG)
  (define-const S_IRGRP)
  (define-const S_IWGRP)
  (define-const S_IXGRP)
  (define-const S_IRWXO)
  (define-const S_IROTH)
  (define-const S_IWOTH)
  (define-const S_IXOTH)
  (define-const SEEK_SET)
  (define-const SEEK_CUR)
  (define-const SEEK_END)

  ;; private
  (namespace ("std/os/fdio#" __read __write __open __close __seek __flush))

  (c-declare "static int ffi_fdio_read (int fd, ___SCMOBJ bytes, int start, int end);")
  (c-declare "static int ffi_fdio_write (int fd, ___SCMOBJ bytes, int start, int end);")

  (define-c-lambda __read (int scheme-object int int) int
    "ffi_fdio_read")
  (define-c-lambda __write (int scheme-object int int) int
    "ffi_fdio_write")
  (define-c-lambda __open (UTF-8-string int int) int
    "open")
  (define-c-lambda __close (int) int
    "close")
  (define-c-lambda __flush (int) int
    "fsync")
  (define-c-lambda __seek (int int int) int
    "lseek")

  (define-with-errno _read __read (fd bytes start end))
  (define-with-errno _write __write (fd bytes start end))
  (define-with-errno _open __open (path flags mode))
  (define-with-errno _seek __seek (fd offset whence))
  (define-with-errno _flush __flush (fd))
  (define-with-errno _close __close (fd))

  (c-declare #<<END-C
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
