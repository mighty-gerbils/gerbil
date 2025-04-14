;;; -*- Gerbil -*-
;;; © vyzo
;;; [incomplete] OS temporary file interface

(import :gerbil/gambit
        :std/sugar)
(export current-tmpdir
	make-temporary-file-name
        call-with-temporary-file-name)

(def (call-with-temporary-file-name name fun)
  (def tmp (make-temporary-file-name name))
  (try
   (fun tmp)
   (finally
    (when (file-exists? tmp)
      (delete-file tmp)))))

(def (make-temporary-file-name name)
  (let* ((tmp (mktemp name))
         (tmp (string-append tmp "." (number->string (time->seconds (current-time))))))
    (if (file-exists? tmp)
      (make-temporary-file-name name)
      tmp)))

(def current-tmpdir 
  (make-parameter
   (cond-expand (darwin "/private/tmp/")
		(else (getenv "TMPDIR" "/tmp/")))))

(def (mktemp name)
  (let (base (string-append (current-tmpdir) name "."))
    (let lp ((i 0) (chars []))
      (if (fx< i 8)
        (let (char (string-ref +chars+ (random-integer (string-length +chars+))))
          (lp (fx+ i 1) (cons char chars)))
        (string-append base (list->string (reverse chars)))))))

(def +chars+
  "abcdefgehijklmnopqrstuvwxyzABCDEFGEHIJKLMNOPQRSTUVWXYZ")
