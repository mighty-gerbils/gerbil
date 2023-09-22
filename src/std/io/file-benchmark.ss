(import :gerbil/gambit
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
    (let (rd (&Reader-read reader buffer 0 (u8vector-length buffer) 0))
      (unless (fxzero? rd)
        (lp)))))

(def (test-writer writer buffer chunk-size flush)
  (let (end (u8vector-length buffer))
    (let lp ((start 0))
      (if (fx< start end)
        (let (end (fxmin (fx+ start chunk-size) end))
          (let (wr (&Writer-write writer buffer start end))
            (lp (fx+ start chunk-size))))
        (flush)))))

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

(def (prepare-input path)
  ;; prepare the input; 16M of random junk
  (let (junk (random-bytes (expt 2 24)))
    (call-with-output-file path
      (lambda (port) (write-subu8vector junk 0 (u8vector-length junk) port)))))

(def (benchmark-reader)
  (call-with-temporary-file-name "benchmark"
    (lambda (path)
      (prepare-input path)
      ;; benchmark
      (for (chunk-size '(1024 4096 32768 65536))
        (let (buffer (make-u8vector chunk-size))
          (displayln ">>> benchmark reader [chunk size: " chunk-size "]")
          (let (reader (open-file-reader path))
            (##gc)
            (time (test-reader reader buffer))
            (Reader-close reader)))))))

(def (benchmark-buffered-reader)
  (call-with-temporary-file-name "benchmark"
    (lambda (path)
      (prepare-input path)
      ;; benchmark
      (for (chunk-size '(1024 4096 32768 65536))
        (let (buffer (make-u8vector chunk-size))
          (for (buffer-size '(4096 16384 32768 65536))
            (when (fx> buffer-size chunk-size)
              (displayln ">>> benchmark buffered reader [buffer size: " buffer-size " chunk size: " chunk-size"]")
              (let (reader (Reader (open-buffered-reader (open-file-reader path) buffer-size)))
                (##gc)
                (time (test-reader reader buffer))
                (Reader-close reader)))))))))

(def (benchmark-input-port)
  (call-with-temporary-file-name "benchmark"
    (lambda (path)
      (prepare-input path)
      ;; benchmark
      (for (chunk-size '(1024 4096 32768 65536))
        (let (buffer (make-u8vector chunk-size))
          (displayln ">>> benchmark input port [chunk size: " chunk-size"]")
          (let (port (open-input-file path))
            (##gc)
            (time (test-port-read port buffer))
            (close-port port)))))))


(def (benchmark-writer)
  (call-with-temporary-file-name "benchmark"
    (lambda (path)
      ;; prepare the output; 16M of random junk
      (let (junk (random-bytes (expt 2 24)))
        (for (chunk-size '(1024 4096 32768 65536))
          (displayln ">>> benchmark writer [chunk size: " chunk-size "]")
          (let (writer (open-file-writer path))
            (##gc)
            (time (test-writer writer junk chunk-size void))
            (Writer-close writer)))))))

(def (benchmark-buffered-writer)
  (call-with-temporary-file-name "benchmark"
    (lambda (path)
      ;; prepare the output; 16M of random junk
      (let (junk (random-bytes (expt 2 24)))
        (for (chunk-size '(1024 4096 32768 65536))
          (for (buffer-size '(4096 16384 32768 65536))
            (when (fx> buffer-size chunk-size)
              (displayln ">>> benchmark buffered writer [buffer size: " buffer-size " chunk size: " chunk-size"]")
              (let* ((buffered-writer (open-buffered-writer (open-file-writer path) buffer-size))
                     (writer (Writer buffered-writer)))
                (##gc)
                (time (test-writer writer junk chunk-size (cut &BufferedWriter-flush buffered-writer)))
                (Writer-close writer)))))))))

(def (benchmark-output-port)
  (call-with-temporary-file-name "benchmark"
    (lambda (path)
      ;; prepare the output; 16M of random junk
      (let (junk (random-bytes (expt 2 24)))
        (for (chunk-size '(1024 4096 32768 65536))
          (displayln ">>> benchmark output port [chunk size: " chunk-size "]")
          (when (file-exists? path)
            (delete-file path))
          (let (port (open-output-file [path: path create: #t]))
            (##gc)
            (time (test-port-write port junk chunk-size))
            (close-port port)))))))

(def (main arg)
  (case arg
    (("reader")
     (benchmark-reader))
    (("buffered-reader")
     (benchmark-buffered-reader))
    (("writer")
     (benchmark-writer))
    (("buffered-writer")
     (benchmark-buffered-writer))
    (("input-port")
     (benchmark-input-port))
    (("output-port")
     (benchmark-output-port))
    (else (error "Unrecognized option" arg))))
