;;; -*- Gerbil -*-
;;; (C) vyzo
;;; httpd file response handler

(import :std/sugar
        :std/interface
        :std/contract
        :std/io
        :std/net/httpd/handler)
(export http-response-file)

(declare (not safe))

(def (http-response-file res headers path)
  (let (reader (open-file-reader path))
    (with-type (reader :- Reader)
      (try
       (http-response-write-file res headers reader)
       (finally
        (reader.close))))))

(def (http-response-write-file res headers reader)
  (with-type (reader :- Reader)
    (let (buf (get-file-buffer))
      (http-response-begin res 200 headers)
      (let lp ()
        (let (rd (reader.read buf))
          (cond
           ((fx= rd 0)
            (put-file-buffer buf)
            (http-response-end res))
           (else
            (http-response-chunk res buf 0 rd)
            (lp))))))))

(def +buffer-size+ 32768)
(def +buffer-cache+ [])
(def +buffer-cache-mx+ (make-mutex 'buffer-cache))

(def (get-file-buffer)
  (mutex-lock! +buffer-cache-mx+)
  (if (pair? +buffer-cache+)
    (let (buf (car +buffer-cache+))
      (set! +buffer-cache+ (cdr +buffer-cache+))
      (mutex-unlock! +buffer-cache-mx+)
      buf)
    (begin
      (mutex-unlock! +buffer-cache-mx+)
      (make-u8vector +buffer-size+))))

(def (put-file-buffer buf)
  (mutex-lock! +buffer-cache-mx+)
  (set! +buffer-cache+ (cons buf +buffer-cache+))
  (mutex-unlock! +buffer-cache-mx+))
