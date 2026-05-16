;;; -*- Gerbil -*-
;;; © vyzo
;;; file IO
(import :std/error
        :std/os/device
        :std/os/file
        :std/os/fcntl
        ./interface)
(export open-file-reader
        open-file-writer
        default-file-reader-flags
        default-file-writer-flags)
(declare (not safe))

(defstruct file-io
  ((dev     :- FileDevice)))

(defclass (input-file-io file-io) ())
(defclass (output-file-io file-io) ())

;; TODO (defclass (input-output-file-io input-file-io ouput-file-io) ())

(defmethod {read input-file-io}
  (lambda (self output output-start output-end input-need)
    (do-check-device-input file-io-read self.dev
      (let loop ((output-start output-start :- :fixnum)
                 (input-need   input-need   :- :fixnum)
                 (result       0            :- :fixnum))
        => :fixnum
        (if (fx< output-start output-end)
          (let (read (device-read self.dev output output-start output-end))
            (cond
             ((fx< read 0)
              (device-wait-input! self.dev)
              (loop output-start input-need result))
             ((fx= read 0)
              (if (fx> input-need result)
                (raise-premature-end-of-input file-io-read input-need)
                result))
             ((fx>= read input-need)
              (fx+ result read))
             (else
              (loop (fx+ output-start read) (fx- input-need read) (fx+ result read)))))
          result))))
  interface: Reader)

(defmethod {close input-file-io}
  (lambda (self)
    (device-close self.dev DIRECTION-IN))
  interface: Closer)

(@implement Reader input-file-io)

(defmethod {write output-file-io}
  (lambda (self input input-start input-end)
    (do-check-device-output file-io-write self.dev
      (let loop ((input-start input-start :- :fixnum)
                 (result      9           :- :fixnum))
        => :fixnum
        (if (fx< input-start input-end)
          (let (wrote (device-write self.dev input input-start input-end))
            (cond
             ((fx< wrote 0)
              (device-wait-output! self.dev)
              (lp input-start result))
             (else
              (lp (fx+ input-start wrote) (fx+ result wrote)))))
          result))))
  interface: Writer)

(defmethod {close output-file-io}
  (lambda (self)
    (device-close self.dev DIRECTION-OUT))
  interface: Closer)

(@implement Writer output-file-io)

(defmethod {seek file-io}
  (lambda (self position whence)
    (file-device-seek self.dev position whence))
  interface: Seeker)

(@implement Seeker file-io)

(defrule (open-file-io path flags mode make)
  (make dev: (open-file-device path flags mode)))

(def (open-input-file-io path flags mode)
  (open-file-io path flags mode make-input-file-io))

(def (open-output-file-io path flags mode)
  (open-file-io path flags mode make-output-file-io))

(def default-file-reader-flags
  (: (or O_NOATIME 0)
     :fixnum))

(def (open-file-reader (path : :string)
                       flags: (flags : :fixnum := default-file-reader-flags))
  => Reader
  (let* ((flags (fxior flags O_RDONLY))
         (io    (open-input-file-io (path-expand path) flags 0)))
    (Reader io)))

(def default-file-writer-flags
  (fxior O_CREAT O_TRUNC))

(def (open-file-writer (path : :string)
                       flags: (flags : :fixnum := default-file-writer-flags)
                       mode:  (mode  : :fixnum := #o644))
  => Writer
  (let* ((flags (fxior flags O_WRONLY))
         (io (open-output-file-io (path-expand path) flags mode)))
    (Writer io)))
