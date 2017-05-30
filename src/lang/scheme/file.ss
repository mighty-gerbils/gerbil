;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme file) library
package: scheme

(export
  call-with-input-file
  call-with-output-file
  delete-file
  file-exists?
  (rename: open-input-file open-binary-input-file)
  (rename: open-output-file open-binary-output-file)
  open-input-file
  open-output-file
  with-input-from-file
  with-output-to-file
  )