;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; zlib interface
;;; TODO support stdio

(import :gerbil/gambit/ports
        :std/sugar
        :std/error
        :std/text/utf8
        :std/text/_zlib)
(export compress compress-gz uncompress)

(def (compress data (level Z_DEFAULT_COMPRESSION))
  (cond
   ((u8vector? data) (compress-bytes data level))
   ((string? data) (compress-bytes (string->utf8 data) level))
   ((input-port? data) (compress-port data level))
   (else
    (raise-bad-argument 'compress "input source; u8vector, string, or input-port" data))))

(def (compress-bytes data level)
  (let* ((buf (make-u8vector (compressBound (u8vector-length data))))
         (res (compress2 buf data level)))
    (if (##fxnegative? res)
      (raise-io-error 'compress "zlib error" res)
      (begin
        (u8vector-shrink! buf res)
        buf))))

(def (compress-port inp level)
  (deflate-port inp level deflateInit))

(def (compress-gz data (level Z_DEFAULT_COMPRESSION))
  (cond
   ((u8vector? data) (compress-gz-bytes data level))
   ((string? data) (compress-gz-bytes (string->utf8 data) level))
   ((input-port? data) (compress-gz-port data level))
   (else
    (raise-bad-argument 'compress-gz "input source; u8vector, string, or input-port" data))))

(defrules with-z-stream ()
  ((_ where zs init body fini)
   (let* ((zs (make_z_stream))
          (res init))
     (unless (eq? res Z_OK)
       (raise-io-error 'where "zlib stream initialization error" res))
     (try
      body
      (finally fini)))))

(def (compress-gz-bytes data level)
  (with-z-stream compress zs
    (deflateInit_gz zs level)
    (compress-gz-data zs data)
    (deflateEnd zs)))

(def (compress-gz-data zs data)
  (let* ((buf (make-u8vector (deflateBound zs (u8vector-length data))))
         (res (deflate zs buf data 0 Z_FINISH)))
    (unless (eq? res Z_STREAM_END)
      (raise-io-error 'compress-gz "incomplete deflate" (z_stream_msg zs) res))
    (u8vector-shrink! buf (z_stream_total_out zs))
    buf))

(def (compress-gz-port inp level)
  (deflate-port inp level deflateInit_gz))

(def (deflate-port inp level init-e)
  (with-z-stream compress zs
    (init-e zs level)
    (do-deflate-port zs inp)
    (deflateEnd zs)))

(def (do-deflate-port zs inp)
  (def buflen 1024)

  (def (fini r)
    (u8vector-concatenate (reverse r)))

  (def (deflate-next ibuf r flush)
    (let lp ((obuf (make-u8vector buflen)) (start 0) (r r))
      (let* ((icount (z_stream_total_in zs))
             (ocount (z_stream_total_out zs))
             (res (deflate zs obuf ibuf start flush))
             (ocount (##fx- (z_stream_total_out zs) ocount)))
        (cond
         ((eq? res Z_OK)
          (let (acount (z_stream_avail_out zs))
            (cond
             ((##fxzero? acount)
              (let (icount (##fx- (z_stream_total_in zs) icount))
                (u8vector-shrink! obuf ocount)
                (lp (make-u8vector buflen)
                    (##fx+ start icount)
                    (cons obuf r))))
             ((##fx> ocount 0)
              (u8vector-shrink! obuf ocount)
              (cons obuf r))
             (else r))))
         ((eq? res Z_STREAM_END)
          (if (##fx> ocount 0)
            (begin
              (u8vector-shrink! obuf ocount)
              (cons obuf r))
            r))
         (else
          (raise-io-error 'deflate-port "deflate: zlib error" (z_stream_msg zs) res))))))

  (let (ibuf (make-u8vector buflen))
    (let lp ((r []))
      (let (rd (read-subu8vector ibuf 0 buflen inp))
        (cond
         ((##fxzero? rd)
          (fini (deflate-next #f r Z_FINISH)))
         ((##fx< rd buflen)
          (u8vector-shrink! ibuf rd)
          (fini (deflate-next ibuf r Z_FINISH)))
         (else
          (let (r (deflate-next ibuf r Z_NO_FLUSH))
            (lp r))))))))

(def (uncompress data)
  (cond
   ((u8vector? data) (uncompress-bytes data))
   ((input-port? data) (uncompress-port data))
   (else
    (raise-bad-argument 'uncompress "input source; u8vector or input-port" data))))

(def (uncompress-bytes data)
  (do-inflate data uncompress-data))

(def (do-inflate data inflate-e)
  (with-z-stream uncompress zs
    (inflateInit zs)
    (inflate-e zs data)
    (inflateEnd zs)))

(def (uncompress-data zs data)
  (def buflen 1024)
  (let lp ((start 0) (r []))
    (let* ((buf (make-u8vector buflen))
           (icount (z_stream_total_in zs))
           (ocount (z_stream_total_out zs))
           (res (inflate zs buf data start))
           (ocount (##fx- (z_stream_total_out zs) ocount)))
      (cond
       ((eq? res Z_OK)
        (let (icount (##fx- (z_stream_total_in zs) icount))
          (u8vector-shrink! buf ocount)
          (lp (##fx+ start icount) (cons buf r))))
       ((eq? res Z_STREAM_END)
        (u8vector-shrink! buf ocount)
        (u8vector-concatenate (reverse (cons buf r))))
       (else
        (raise-io-error 'uncompress "zlib error" (z_stream_msg zs) res))))))

(def (uncompress-port inp)
  (do-inflate inp do-inflate-port))

(def (do-inflate-port zs inp)
  (def buflen 1024)

  (def (fini r)
    (u8vector-concatenate (reverse r)))

  (def (inflate-next ibuf r)
    (let lp ((obuf (make-u8vector buflen)) (start 0) (r r))
      (let* ((icount (z_stream_total_in zs))
             (ocount (z_stream_total_out zs))
             (res (inflate zs obuf ibuf start))
             (ocount (##fx- (z_stream_total_out zs) ocount)))
        (cond
         ((eq? res Z_OK)
          (let* ((icount (##fx- (z_stream_total_in zs) icount))
                 (start (##fx+ start icount)))
            (u8vector-shrink! obuf ocount)
            (if (##fx< start buflen)
              (lp (make-u8vector buflen) start (cons obuf r))
              (cons obuf r))))
         ((eq? res Z_STREAM_END)
          (u8vector-shrink! obuf ocount)
          (cons obuf r))
         (else
          (raise-io-error 'inflate-port "zlib error" (z_stream_msg zs) res))))))

  (let (ibuf (make-u8vector buflen))
    (let lp ((r []))
      (let (rd (read-subu8vector ibuf 0 buflen inp))
        (cond
         ((##fxzero? rd)
          (fini r))
         ((##fx< rd buflen)
          (u8vector-shrink! ibuf rd)
          (fini (inflate-next ibuf r)))
         (else
          (lp (inflate-next ibuf r))))))))
