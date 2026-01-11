;;; -*- Gerbil -*-
;;; © vyzo
;;; log file compression
(import :std/error)
(export #t)

(def (compress-gz (file : :string)) => :string
  (let* ((cmd    (string-append "gzip " file))
         (result (shell-command cmd #t)))
    (unless (fxzero? (car result))
      (raise-io-error compress-gz "error compressing log file" command: cmd))
    (string-append file ".gz")))
