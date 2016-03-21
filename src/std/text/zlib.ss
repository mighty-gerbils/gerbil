;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; zlib interface
package: std/text

(import :gerbil/gambit/hvectors
        :std/sugar
        :std/error
        :std/text/_zlib)
(export compress uncompress)

(def (compress data (level Z_DEFAULT_COMPRESSION))
  (let* ((data
          (cond
           ((u8vector? data) data)
           ((string? data) (string->bytes data))
           (else
            (error "Cannot compress object" data))))
         (buf (make-u8vector (compressBound (u8vector-length data))))
         (res (deflate buf data level)))
    (if (fxnegative? res)
      (raise-io-error 'compress "zlib error" res)
      (begin
        (u8vector-shrink! buf res)
        buf))))

(def (uncompress data)
  (def zs (make_z_stream))
  (inflateInit zs)
  (try
   (uncompress-data zs data)
   (finally (inflateEnd zs))))

(def (uncompress-data zs data)
  (let lp ((start 0) (r []))
    (let* ((buf (make-u8vector 1024))
           (res (inflate zs buf data start)))
      (cond
       ((eq? res Z_OK)
        (let ((in (z_stream_in zs))
              (out (z_stream_out zs)))
          (u8vector-shrink! buf out)
          (lp (fx+ start in) (cons buf r))))
       ((eq? res Z_STREAM_END)
        (let (out (z_stream_out zs))
          (u8vector-shrink! buf out)
          (append-u8vectors (reverse (cons buf r)))))
       (else
        (raise-io-error 'uncompress "zlib error" (z_stream_msg zs) res))))))
