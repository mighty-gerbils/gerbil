;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme file) library
(export
  call-with-input-file
  call-with-output-file
  delete-file
  file-exists?
  open-binary-input-file
  open-binary-output-file
  open-input-file
  open-output-file
  with-input-from-file
  with-output-to-file
  )

(cond-expand
  (,(> (system-version) 409002)
   (extern namespace: #f
     open-binary-input-file
     open-binary-output-file))
  (else
   (defalias open-binary-input-file open-input-file)
   (defalias open-binary-output-file open-output-file)))
