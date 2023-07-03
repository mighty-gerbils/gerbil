;;; -*- Gerbil -*-
;;; © vyzo
;;; [incomplete] OS temporary file interface

(import :gerbil/gambit/os
        :std/foreign
        :std/sugar)
(export #t)

(def (call-with-temporary-file-name name fun)
  (def tmp (make-temporary-file-name name))
  (try
   (fun tmp)
   (finally
    (when (file-exists? tmp)
      (delete-file tmp)))))

(def (make-temporary-file-name name)
  (let (tmp (mktemp (string-append "/tmp/" name ".XXXXXX")))
    (when (string-empty? tmp)
      (error "Cannot create temporary file" name))
    (string-append tmp "." (number->string (time->seconds (current-time))))))

(begin-ffi (mktemp)
  (c-declare "#include <stdlib.h>")
  (define-c-lambda mktemp (char-string) char-string))
