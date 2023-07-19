(import :gerbil/gambit/random
        :gerbil/gambit/ports
        :std/iter
        :std/os/temporaries
        ./interface
        ./api
        ./bio/api)
(export main)
(declare (not safe))
(extern namespace: #f time)

(def (test-reader reader buffer)
  (let lp ()
    (let (rd (Reader-read reader buffer 0 (u8vector-length buffer) 0))
      (unless (fxzero? rd)
        (lp)))))

(def (test-writer writer buffer chunk-size)
  (let (end (u8vector-length buffer))
    (let lp ((start 0))
      (when (fx< start end)
        (let (end (fxmin (fx+ start chunk-size) end))
          (let (wr (Writer-write writer buffer start end))
            (lp (fx+ start chunk-size))))))))

(def (test-port-read port buffer)
  (let lp ()
    (let (rd (read-subu8vector buffer 0 (u8vector-length buffer) port))
      (unless (fxzero? rd)
        (lp)))))

(def (test-port-write port buffer chunk-size)
  (let (end (u8vector-length buffer))
    (let lp ((start 0))
      (when (fx< start end)
        (let (end (fxmin (fx+ start chunk-size) end))
          (let (wr (write-subu8vector buffer start end port))
            (lp (fx+ start chunk-size))))))))

(def (benchmark-input)
  (call-with-temporary-file-name "benchmark"
    (lambda (path)
      ;; prepare the input; 16M of random junk
      (let (junk (random-bytes (expt 2 24)))
        (call-with-output-file path
          (lambda (port) (write-subu8vector junk 0 (u8vector-length junk) port))))
      ;; benchmark
      (for (chunk-size '(1024 4096 32768 65536))
        (let (buffer (make-u8vector chunk-size))
          (displayln ">>> benchmark reader [chunk size: " chunk-size "]")
          (let (reader (open-file-reader path))
            (##gc)
            (time (test-reader reader buffer))
            (Reader-close reader))
          (displayln ">>> benchmark buffered reader [chunk size: " chunk-size "]")
          (for (buffer-size '(4096 32768 65536))
            (displayln ">>> benchmark buffered reader [buffer size: " buffer-size"]")
            (let (reader (Reader (open-buffered-reader (open-file-reader path) buffer-size)))
              (##gc)
              (time (test-reader reader buffer))
              (Reader-close reader)))
          (displayln ">>> benchmark unbuffered port [chunk size: " chunk-size "]")
          (let (port (open-input-file [path: path buffering: #f]))
            (##gc)
            (time (test-port-read port buffer))
            (close-port port))
          (displayln ">>> benchmark buffered port [chunk size: " chunk-size"]")
          (let (port (open-input-file path))
            (##gc)
            (time (test-port-read port buffer))
            (close-port port)))))))


(def (benchmark-output)
  (call-with-temporary-file-name "benchmark"
    (lambda (path)
      ;; prepare the output; 16M of random junk
      (let (junk (random-bytes (expt 2 24)))
        (for (chunk-size '(1024 4096 32768 65536))
          (displayln ">>> benchmark writer [chunk size: " chunk-size "]")
          (let (writer (open-file-writer path))
            (##gc)
            (time (test-writer writer junk chunk-size))
            (Writer-close writer))
          ;; TODO buffered-writer
          (displayln ">>> benchmark unbuffered port [chunk size: " chunk-size "]")
          (when (file-exists? path)
            (delete-file path))
          (let (port (open-output-file [path: path buffering: #f create: #t]))
            (##gc)
            (time (test-port-write port junk chunk-size))
            (close-port port))
          (displayln ">>> benchmark port [chunk size: " chunk-size "]")
          (when (file-exists? path)
            (delete-file path))
          (let (port (open-output-file [path: path]))
            (##gc)
            (time (test-port-write port junk chunk-size))
            (close-port port)))))))

(def (main)
  (benchmark-input)
  (benchmark-output))
