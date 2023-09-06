(import :gerbil/gambit/os
        :std/io
        :std/os/temporaries
        ./api)
(export main)

(def (main method file)
  (case method
    (("port") (benchmark-port file))
    (("strio") (benchmark-stdio-strio file))
    (("bio") (benchmark-stdio-bio file))
    (else (error "unknown method; must be port, strio (for buffered string IO) or bio (for buffered binary IO) " method))))

(def (benchmark-port file)
  (##gc)
  (let (object (time (call-with-input-file file read-json)))
    (##gc)
    (call-with-temporary-file-name "benchmark"
      (lambda (tmp)
        (time (call-with-output-file tmp (cut write-json object <>)))))))

(def (benchmark-stdio-strio file)
  (##gc)
  (let (object (time (call-with-buffered-string-reader file read-json)))
    (##gc)
    (call-with-temporary-file-name "benchmark"
      (lambda (tmp)
        (time (call-with-buffered-string-writer tmp (cut write-json object <>)))))))

(def (benchmark-stdio-bio file)
  (##gc)
  (let (object (time (call-with-buffered-reader file read-json)))
    (##gc)
    (call-with-temporary-file-name "benchmark"
      (lambda (tmp)
        (time (call-with-buffered-writer tmp (cut write-json object <>)))))))

(def (call-with-buffered-string-reader path proc)
  (let* ((reader (open-file-reader path))
         (reader (open-buffered-string-reader reader))
         (result (proc reader))
         (_ (BufferedStringReader-close reader)))
    result))

(def (call-with-buffered-string-writer path proc)
  (let* ((writer (open-file-writer path))
         (writer (open-buffered-string-writer writer))
         (result (proc writer))
         (_ (BufferedStringWriter-close writer)))
    result))

(def (call-with-buffered-reader path proc)
  (let* ((reader (open-file-reader path))
         (reader (open-buffered-reader reader))
         (result (proc reader))
         (_ (BufferedReader-close reader)))
    result))

(def (call-with-buffered-writer path proc)
  (let* ((writer (open-file-writer path))
         (writer (open-buffered-writer writer))
         (result (proc writer))
         (_ (BufferedWriter-close writer)))
    result))
