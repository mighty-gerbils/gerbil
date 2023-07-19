;;; -*- Gerbil -*-
;;; © vyzo
;;; file IO
(import (only-in :gerbil/gambit/ports close-port)
        :std/error
        :std/os/fd
        :std/os/fdio
        :std/os/fcntl
        :std/event
        ./interface)
(export open-file-reader
        open-file-writer)
(declare (not safe))

(defstruct file-io (fd)
  final: #t unchecked: #t)

(defmethod {read file-io}
  (lambda (self output output-start output-end input-need)
    (let (fd (&file-io-fd self))
      (let lp ((output-start output-start) (input-need input-need) (result 0))
        (if (fx< output-start output-end)
          (let (read (fdread fd output output-start output-end))
            (cond
             ((not read)
              (wait (fd-io-in fd))
              (lp output-start input-need result))
             ((fx= read 0)
              (if (fx> input-need result)
                (raise-io-error "premature end of input" input-need)
                result))
             (else
              (lp (fx+ output-start read) (fx- input-need read) (fx+ result read)))))
          result)))))

(defmethod {write file-io}
  (lambda (self input input-start input-end)
    (let (fd (&file-io-fd self))
      (let lp ((input-start input-start) (result 0))
        (if (fx< input-start input-end)
          (let (wrote (fdwrite fd input input-start input-end))
            (cond
             ((not wrote)
              (wait (fd-io-out fd))
              (lp input-start result))
             (else
              (lp (fx+ input-start wrote) (fx+ result wrote)))))
          result)))))

(defmethod {close file-io}
  (lambda (self)
    (close-port (&file-io-fd self))))

(def (open-file-io path flags mode)
  (let (fd (open path flags mode))
    (make-file-io fd)))

(def default-file-reader-flags
  (or O_NOATIME 0))

(def (open-file-reader path flags: (flags default-file-reader-flags))
  (let* ((flags (fxior flags O_RDONLY))
         (io (open-file-io (path-expand path) flags 0)))
    (Reader io)))

(def default-file-writer-flags
  (fxior O_CREAT O_TRUNC))

(def (open-file-writer path flags: (flags default-file-writer-flags) mode: (mode #o644))
  (let* ((flags (fxior flags O_WRONLY))
         (io (open-file-io (path-expand path) flags mode)))
    (Writer io)))
