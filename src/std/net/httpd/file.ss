;;; -*- Gerbil -*-
;;; (C) vyzo
;;; httpd file response handler

(import :gerbil/gambit/ports
        :std/net/httpd/handler
        :std/os/fd
        :std/os/fdio
        :std/os/fcntl
        :std/logger
        :std/sugar
        :std/event)
(export http-response-file)

(declare (not safe))

(def open-flags
  (if O_NOATIME
    (fxior O_RDONLY O_NOATIME)
    O_RDONLY))

(def (http-response-file res headers path)
  (let (file (open path open-flags))
    (try
     (http-response-write-file res headers file)
     (finally
      (close-port file)))))

(def (http-response-write-file res headers file)
  (let (buf (get-file-buffer))
    (http-response-begin res 200 headers)
    (let lp ()
      (let (rd (fdread file buf))
        (cond
         ((not rd)
          (wait (fd-io-in file))
          (lp))
         ((fx= rd 0)
          (put-file-buffer buf)
          (http-response-end res))
         (else
          (http-response-chunk res buf 0 rd)
          (lp)))))))

(def buffer-cache [])

(cond-expand
  (gerbil-smp
   (import :gerbil/gambit/threads)

   (def buffer-cache-mx (make-mutex 'buffer-cache))

   (def (get-file-buffer)
     (mutex-lock! buffer-cache-mx)
     (if (##pair? buffer-cache)
       (let (buf (##car buffer-cache))
         (set! buffer-cache (##cdr buffer-cache))
         (mutex-unlock! buffer-cache-mx)
         buf)
       (begin
         (mutex-unlock! buffer-cache-mx)
         (make-u8vector 8192))))

   (def (put-file-buffer buf)
     (mutex-lock! buffer-cache-mx)
     (set! buffer-cache (##cons buf buffer-cache))
     (mutex-unlock! buffer-cache-mx)))

  (else
   (def (get-file-buffer)
     (declare (not interrupts-enabled))
     (if (##pair? buffer-cache)
       (let (buf (##car buffer-cache))
         (set! buffer-cache (##cdr buffer-cache))
         buf)
       (make-u8vector 8192)))

   (def (put-file-buffer buf)
     (declare (not interrupts-enabled))
     (set! buffer-cache (##cons buf buffer-cache)))))
