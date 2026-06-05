;;; -*- Gerbil -*-
;;; © vyzo
;;; temporary files
(import :std/os/device
        :std/os/file
        :std/os/fcntl
        ./file)
(export current-temporary-directory
        make-temporary-file-name
        clear-temporary-file!
        call-with-temporary-file-name
        call-with-temporary-file
        call-with-temporary-directory)

(def current-temporary-directory
  (make-parameter (getenv "TMPDIR" "/tmp")))

(def (call-with-temporary-file-name (base : :string)
                                    (proc : :procedure))
  => :string
  (let (tmp (make-temporary-file-name base))
    (unwind-protect
      (proc tmp)
      (clear-temporary-file! tmp))))

(def (call-with-temporary-file (base : :string)
                               (proc : :procedure))
  => :string
  (let* ((tmp (make-temporary-file-name base))
         (io  (open-input-output-file-io tmp (fxior O_RDWR O_CREAT) #o600)))
    (unwind-protect
      (proc io)
      (device-close (input-output-file-io-dev io) DIRECTION-INOUT)
      (clear-temporary-file! tmp))))

(def (call-with-temporary-directory (base : :string)
                                    (proc : :procedure))
  => :string
  (let (tmp (make-temporary-file-name base))
    (create-directory tmp)
    (unwind-protect
      (proc tmp)
      (clear-temporary-file! tmp))))

(def __tempfiles-mx
  (make-mutex 'tempfile))
(def __tempfiles
  (make-hash-table-string))

(def (make-temporary-file-name (name : :string))
  => :string
  (: (with-lock __tempfiles-mx
       (lambda ()
         (let again ()
           (let* ((tmp (make-random-name name))
                  (tmp (string-append tmp "." (number->string (##current-time-point)))))
             (if (file-exists? tmp)
               (again)
               (begin
                 (hash-put! __tempfiles tmp #t)
                 tmp))))))
     :string))

(def (clear-temporary-file! (name : :string))
  => :void
  (with-lock __tempfiles-mx
    (lambda ()
      (when (hash-get __tempfiles name)
        (hash-remove! __tempfiles name)
        (when (file-exists? name)
          (delete-file-or-directory name #t))))))

(def (make-random-name (name : :string))
  => :string
  (let (base (string-append (path-expand name (current-temporary-directory)) "."))
    (let loop ((i 0 :- :fixnum) (chars [])) => :string
      (if (fx< i 8)
        (let (char (string-ref +chars+ (random-integer (string-length +chars+))))
          (loop (fx+ i 1) (cons char chars)))
        (string-append base (list->string (reverse! chars)))))))

(def +chars+
  "abcdefgehijklmnopqrstuvwxyzABCDEFGEHIJKLMNOPQRSTUVWXYZ")
