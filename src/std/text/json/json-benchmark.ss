(import :gerbil/gambit/os
        :std/io
        :std/os/temporaries
        ./api)
(export main)

(def (main method file)
  (case method
    (("port") (benchmark-port file))
    (("stdio") (benchmark-stdio file))
    (else (error "unknown method; must be port or stdio" method))))

(def (benchmark-port file)
  (##gc)
  (let (object (time (call-with-input-file file read-json)))
    (##gc)
    (call-with-temporary-file-name "benchmark"
      (lambda (tmp)
        (time (call-with-output-file tmp (cut write-json object <>)))))))

(def (benchmark-stdio file)
  (##gc)
  (let (object (time (call-with-buffered-file-reader file read-json)))
    (##gc)
    (call-with-temporary-file-name "benchmark"
      (lambda (tmp)
        (time (call-with-buffered-file-writer tmp (cut write-json object <>)))))))

(def (call-with-buffered-file-reader path proc)
  (let* ((reader (open-file-reader path))
         (reader (open-buffered-reader reader))
         (result (proc reader))
         (_ (BufferedReader-close reader)))
    result))

(def (call-with-buffered-file-writer path proc)
  (let* ((writer (open-file-writer path))
         (writer (open-buffered-writer writer))
         (result (proc writer))
         (_ (BufferedWriter-close writer)))
    result))
