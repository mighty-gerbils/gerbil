;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; zlib interface
package: std/text

(import :gerbil/gambit/hvectors
        :std/sugar
        :std/error
        :std/text/_zlib)
(export compress compress-gz uncompress)

(def (data-bytes data)
  (cond
   ((u8vector? data) data)
   ((string? data) (string->bytes data))
   (else
    (error "Cannot compress object" data))))

(def (compress data (level Z_DEFAULT_COMPRESSION))
  (let* ((data (data-bytes data))
         (buf (make-u8vector (compressBound (u8vector-length data))))
         (res (compress2 buf data level)))
    (if (fxnegative? res)
      (raise-io-error 'compress "zlib error" res)
      (begin
        (u8vector-shrink! buf res)
        buf))))

(def (compress-gz data (level Z_DEFAULT_COMPRESSION))
  (let* ((data (data-bytes data))
         (zs (make_z_stream))
         (res (deflateInit_gz zs level)))
    (unless (eq? res Z_OK)
      (raise-io-error 'compress-gz "deflateInit: zlib error" res))
    (try
     (compress-gz-data zs data)
     (finally (deflateEnd zs)))))

(def (compress-gz-data zs data)
  (let* ((buf (make-u8vector (deflateBound zs (u8vector-length data))))
         (res (deflate zs buf data 0 Z_FINISH)))
    (unless (eq? res Z_STREAM_END)
      (raise-io-error 'compress-gz "incomplete deflate" res))
    (u8vector-shrink! buf (z_stream_total_out zs))
    buf))

(def (uncompress data)
  (let* ((zs (make_z_stream))
         (res (inflateInit zs)))
    (unless (eq? res Z_OK)
      (raise-io-error 'uncompress "inflateInit: zlib error" res))
    (try
     (uncompress-data zs data)
     (finally (inflateEnd zs)))))

(def (uncompress-data zs data)
  (let lp ((start 0) (r []))
    (let* ((buf (make-u8vector 1024))
           (res (inflate zs buf data start)))
      (cond
       ((eq? res Z_OK)
        (let ((in (z_stream_total_in zs))
              (out (z_stream_total_out zs)))
          (u8vector-shrink! buf out)
          (lp (fx+ start in) (cons buf r))))
       ((eq? res Z_STREAM_END)
        (let (out (z_stream_total_out zs))
          (u8vector-shrink! buf out)
          (append-u8vectors (reverse (cons buf r)))))
       (else
        (raise-io-error 'uncompress "zlib error" (z_stream_msg zs) res))))))
