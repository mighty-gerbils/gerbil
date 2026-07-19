;;; -*- Gerbil -*-
;;; © vyzo
;;; temporary files
(import :std/os/device
        :std/os/file
        :std/os/fcntl
        :std/crypto/random
        :std/encoding/base64
        ./file)
(export current-temporary-directory
        make-temporary-file-name
        clear-temporary-file!
        call-with-temporary-file-name
        call-with-temporary-file
        call-with-temporary-directory)

(def current-temporary-directory
  (make-parameter (getenv "TMPDIR" "/tmp")))

(def (call-with-temporary-file-name (prefix : :string)
                                    (proc   : :procedure)
                                    suffix: (suffix : :string := ""))
  => :string
  (let (tmp (make-temporary-file-name prefix suffix: suffix))
    (unwind-protect
      (proc tmp)
      (clear-temporary-file! tmp))))

(def default-temporary-file-flags
  (fxior O_RDWR O_CREAT O_EXCL))

(def (call-with-temporary-file (prefix : :string)
                               (proc   : :procedure)
                               suffix: (suffix : :string := "")
                               flags:  (flags  : :fixnum := default-temporary-file-flags))
  => :string
  (call-with-temporary-file-name
   prefix
   (lambda (tmp)
     (using (io (open-input-output-file-io tmp flags #o600)
                : input-output-file-io)
       (unwind-protect
         (proc io)
         (device-close io.dev DIRECTION-INOUT))))
   suffix: suffix))

(def (call-with-temporary-directory (prefix : :string)
                                    (proc   : :procedure)
                                    suffix: (suffix : :string := ""))
  => :string
  (call-with-temporary-file-name
   prefix
   (lambda (tmp)
     (create-directory tmp)
     (proc tmp))
   suffix: suffix))

(def (make-temporary-file-name (prefix : :string)
                               suffix: (suffix : :string := ""))
  => :string
  (let (tmp (make-random-name prefix suffix: suffix))
    (path-expand tmp (current-temporary-directory))))

(def (clear-temporary-file! (name : :string))
  => :void
  (when (file-exists? name)
    (delete-file-or-directory name #t)))

(def (make-random-name (prefix : :string)
                       suffix: (suffix : :string := ""))
  => :string
  (let* ((bytes   (random-bytes 16))
         (encoded (base64-encode bytes
                                 padding: #f
                                 urlsafe: #t)))
    (string-append prefix encoded suffix)))
