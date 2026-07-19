;;; -*- Gerbil -*-
;;; © vyzo
;;; mime file types
(import ./struct
        ./types)
(export mime-file-type)

(def (mime-file-type (path : :string))
  => :string
  (let* ((ext (path-extension path))
         (ext (and (string-prefix? "." ext)
                   (substring ext 1 (string-length ext)))))
    (cond
     ((and ext (hash-get mime-extensions ext))
      => (lambda (mime)
           (: (mime-type-name mime) :string)))
     (else
      "application/octet-stream"))))
