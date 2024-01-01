;;; -*- Gerbil -*-
;;; © vyzo
;;; file IO
(import :std/error
        :std/contract
        :std/sugar
        :std/os/fd
        :std/os/fdio
        :std/os/fcntl
        :std/event
        ./interface)
(export open-file-reader
        open-file-writer
        default-file-reader-flags
        default-file-writer-flags)
(declare (not safe))

(defstruct file-io (fd closed?)
  unchecked: #t)

(defstruct (input-file-io file-io) ()
  final: #t)

(defstruct (output-file-io file-io) ()
  final: #t)

(defmethod {read input-file-io}
  (lambda (self output output-start output-end input-need)
    (using (self :- file-io)
      (let (fd self.fd)
        (let lp ((output-start output-start) (input-need input-need) (result 0))
          (when self.closed?
            (raise-io-closed file-io-read "file is closed"))
          (if (fx< output-start output-end)
            (let (read (fdread fd output output-start output-end))
              (cond
               ((not read)
                (&wait-io! (fd-io-in fd))
                (lp output-start input-need result))
               ((fx= read 0)
                (if (fx> input-need result)
                  (raise-premature-end-of-input file-io-read input-need)
                  result))
               ((fx>= read input-need)
                (fx+ result read))
               (else
                (lp (fx+ output-start read) (fx- input-need read) (fx+ result read)))))
            result))))))

(defmethod {write output-file-io}
  (lambda (self input input-start input-end)
    (using (self :- file-io)
      (let (fd self.fd)
        (let lp ((input-start input-start) (result 0))
          (when self.closed?
            (raise-io-closed output-file-io "file is closed"))
          (if (fx< input-start input-end)
            (let (wrote (fdwrite fd input input-start input-end))
              (cond
               ((not wrote)
                (&wait-io! (fd-io-out fd))
                (lp input-start result))
               (else
                (lp (fx+ input-start wrote) (fx+ result wrote)))))
            result))))))

(defmethod {close file-io}
  (lambda (self)
    (using (self :- file-io)
      (unless self.closed?
        (set! self.closed? #t)
        (close-port self.fd)))))

(defmethod {seek file-io}
  (lambda (self position from: (from 'start))
    (using ((self :- file-io)
            (position :~ fixnum?)
            (from :~ (cut memq <> '(start end current))))
      (when self.closed?
        (raise-io-closed file-io "file is closed"))
      (seek position from))))

(defrule (open-file-io path flags mode make)
  (let (fd (open path flags mode))
    (make fd #f)))

(def (open-input-file-io path flags mode)
  (open-file-io path flags mode make-input-file-io))

(def (open-output-file-io path flags mode)
  (open-file-io path flags mode make-output-file-io))

(def default-file-reader-flags
  (or O_NOATIME 0))

(def (open-file-reader path flags: (flags default-file-reader-flags))
  (let* ((flags (fxior flags O_RDONLY))
         (io (open-input-file-io (path-expand path) flags 0)))
    (Reader io)))

(def default-file-writer-flags
  (fxior O_CREAT O_TRUNC))

(def (open-file-writer path flags: (flags default-file-writer-flags) mode: (mode #o644))
  (let* ((flags (fxior flags O_WRONLY))
         (io (open-output-file-io (path-expand path) flags mode)))
    (Writer io)))
