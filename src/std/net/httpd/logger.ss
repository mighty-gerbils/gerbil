;;; -*- Gerbil -*-
;;; © vyzo
;;; embedded HTTP/1.1 server; (rotating) request logger
(import :std/sugar
        :std/contract
        :std/io
        (only-in :std/os/fcntl O_CREAT O_APPEND)
        :std/net/address
        :std/misc/process
        :gerbil/gambit
        ./handler)
(export make-request-logger)
(declare (not safe))

(def (make-request-logger path rotate: (rotate-size (expt 2 20)))
  (let (logger-thread
        (spawn/name 'http-request-logger request-logger path rotate-size))
    (lambda (req)
      (thread-send logger-thread (cons (##current-time-point) req)))))

(def (request-logger path rotate-size)
  (let*  ((exists? (file-exists? path))
          (current-size
           (if exists?
             (file-info-size (file-info path))
             0))
          (output
           (open-file-writer path flags: (if exists? O_APPEND O_CREAT)))
          (writer
           (open-buffered-writer output)))

    (using ((output :- Writer)
            (writer :- BufferedWriter))

      (def (write-ip4-address ip)
        (let loop ((i 0) (wr 0))
          (let (next (u8vector-ref ip i))
            (cond
             ((fx< next 10)
              (writer.write-u8 (fx+ next 48))
              (if (fx< i 3)
                (begin
                  (writer.write-char #\.)
                  (loop (fx+ i 1) (fx+ wr 2)))
                (fx+ wr 1)))
             ((fx< next 100)
              (writer.write-u8 (fx+ (fxquotient next 10) 48))
              (writer.write-u8 (fx+ (fxremainder next 10) 48))
              (if (fx< i 3)
                (begin
                  (writer.write-char #\.)
                  (loop (fx+ i 1) (fx+ wr 3)))
                (fx+ wr 2)))
             (else
              (writer.write-u8 (fx+ (fxquotient next 100) 48))
              (let (next (fxremainder next 100))
                (writer.write-u8 (fx+ (fxquotient next 10) 48))
                (writer.write-u8 (fx+ (fxremainder next 10) 48))
                (if (fx< i 3)
                  (begin
                    (writer.write-char #\.)
                    (loop (fx+ i 1) (fx+ wr 4)))
                  (fx+ wr 3))))))))

      (def (write-ip6-address ip)
        ;; TODO optimize this
        (writer.write-string (ip6-address->string ip)))

      (def (log-request ts req)
        (using (req :- http-request)
          (let* ((wr 0)
                 ;; timestamp
                 (wr (fx+ wr (writer.write-string (number->string ts))))
                 (wr (fx+ wr (writer.write-char #\space)))
                 ;; client IP
                 (wr (fx+ wr (let (ip (car req.client))
                               (case (u8vector-length ip)
                                 ((4) (write-ip4-address ip))
                                 ((6) (write-ip6-address ip))
                                 (else
                                  (writer.write-string "???"))))))
                 (wr (fx+ wr (writer.write-char #\space)))
                 ;; request protocol
                 (wr (fx+ wr (writer.write-string req.proto)))
                 (wr (fx+ wr (writer.write-char #\space)))
                 ;; request method
                 (wr (fx+ wr (writer.write-string
                              (if (symbol? req.method)
                                (symbol->string req.method)
                                req.method))))
                 (wr (fx+ wr (writer.write-char #\space)))
                 ;; URL
                 (wr (fx+ wr (writer.write-string req.url)))
                 (wr (fx+ wr (writer.write-char #\newline))))
            (set! current-size (fx+ current-size wr)))))

      (while #t
        (with ([ts . req] (thread-receive))
          (log-request ts req))

        ;; coalesce to avoid extraneous flushes
        (let coalesce ()
          (match (thread-receive .1 #f)
            ([ts . req]
             (log-request ts req)
             (when (fx< current-size rotate-size)
               (coalesce)))
            (else
             (writer.flush))))

        ;; check if we need to rotate
        (when (fx>= current-size rotate-size)
          (writer.flush)
          (output.close)
          (log-rotate! path)
          (set! output (open-file-writer path flags: O_CREAT))
          (writer.reset! output #f)
          (set! current-size 0))))))

(def (log-rotate! path)
  (let* ((log0 (string-append path ".1"))
         (log1 (string-append path ".1.gz"))
         (log2 (string-append path ".2.gz"))
         (log3 (string-append path ".3.gz"))
         (log4 (string-append path ".4.gz")))
    (cond
     ((file-exists? log4)
      (delete-file log4)
      (rename-file log3 log4)
      (rename-file log2 log3)
      (rename-file log1 log2)
      (rename-file path log0)
      (invoke "gzip" [log0]))
     ((file-exists? log3)
      (rename-file log3 log4)
      (rename-file log2 log3)
      (rename-file log1 log2)
      (rename-file path log0)
      (invoke "gzip" [log0]))
     ((file-exists? log2)
      (rename-file log2 log3)
      (rename-file log1 log2)
      (rename-file path log0)
      (invoke "gzip" [log0]))
     ((file-exists? log1)
      (rename-file log1 log2)
      (rename-file path log0)
      (invoke "gzip" [log0]))
     (else
      (rename-file path log0)
      (invoke "gzip" [log0])))))
