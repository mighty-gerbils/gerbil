;;; -*- Gerbil -*-
;;; © vyzo
;;; file handlers
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/cache
        :std/net/mime/file
        ../interface
        ../status
        ./empty)
(export new-file-handler
        new-caching-file-handler)

(def cache-threshold 32768)

(defstruct file-handler
  ((path :- :string)))

(defstruct (caching-file-handler file-handler)
  ((cache :- :u8vector)
   (ts    :- :flonum)))

(def (new-file-handler (path : :string))
  => RequestHandler
  (RequestHandler
   (make-file-handler path)))

(def (new-caching-file-handler (path : :string))
  => RequestHandler
  (RequestHandler
   (make-caching-file-handler path #f #f)))

(def (content-type (path : :string))
  => :pair
  (cons "Content-Type" (mime-file-type path)))

;; TODO handle ranges
(implement RequestHandler
  (file-handler
   (handle-request!
    (lambda (self req res)
      (if (file-exists? self.path)
        (let (info (file-info self.path))
          (cond
           ((not (eq? (file-info-type info) 'regular))
            (using (handler Forbidden : RequestHandler)
              (handler.handle-request! req res)))
           ((> (file-info-size info) cache-threshold)
            (using ((reader (open-file-reader self.path)
                            : Reader)
                    (writer (res.begin! OK [(content-type self.path)])
                            : Writer))
              (let (buffer (buffer-cache.get default-buffer-size))
                (unwind-protect
                  (io-copy! reader writer)
                  (buffer-cache.put! buffer)
                  (reader.close)
                  (writer.close)))))
           (else
            (let (content (read-file-u8vector self.path))
              (res.write! OK [(content-type self.path)] content)))))
        (using (handler Not-Found : RequestHandler)
          (handler.handle-request! req res))))))
  (caching-file-handler
   (handle-request!
    (lambda (self req res)
      (if (file-exists? self.path)
        (let (info (file-info self.path))
          (cond
           ((not (eq? (file-info-type info) 'regular))
            (using (handler Forbidden : RequestHandler)
              (handler.handle-request! req res)))
           ((> (file-info-size info) cache-threshold)
            ;; don't cache
            (when self.cache
              (set! self.cache #f))
            (using ((reader (open-file-reader self.path)
                            : Reader)
                    (writer (res.begin! OK [(content-type self.path)])
                            : Writer))
              (let (buffer (buffer-cache.get default-buffer-size))
                (unwind-protect
                  (io-copy! reader writer)
                  (buffer-cache.put! buffer)
                  (reader.close)
                  (writer.close)))))
           ((and self.cache
                 (< (time->seconds (file-info-last-modification-time info))
                    self.ts))
            (res.write! OK [(content-type self.path)] self.cache))
           (else
            (let (content (read-file-u8vector self.path))
              (set! self.cache content)
              (set! self.ts (##current-time-point))
              (res.write! OK [(content-type self.path)] content)))))
        (using (handler Not-Found : RequestHandler)
          (handler.handle-request! req res)))))))
