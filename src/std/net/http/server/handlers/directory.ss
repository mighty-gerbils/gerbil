;;; -*- Gerbil -*-
;;; © vyzo
;;; directory handlers
(import :std/error
        :std/interface
        :std/io
        ../interface
        ../status
        ./empty
        ./file)
(export new-directory-handler
        new-directory-listing-handler)

(defstruct directory-handler
  ((path :- :string) ; the directory path
   (rpath :- :string) ; the base request path
   (rpath/ :- :string))) ; that base request path with trailing slash

(def (new-directory-handler (rpath : :string) (path : :string))
  => RequestHandler
  (RequestHandler
   (make-directory-handler path rpath (string-append rpath "/"))))

(def (new-directory-listing-handler (path : :string))
  => RequestHandler
  (TODO new-directory-listing-handler))

(implement RequestHandler
  (directory-handler
   (handle-request!
    (lambda (self req res)
      (def (serve-file path)
        (using (handler (new-file-handler path) : RequestHandler)
          (handler.handle-request! req res)))
      (def (serve-dir path)
        (let (index (path-expand "index.html" path))
          (if (file-exists? index)
            (serve-file index)
            (forbidden))))
      (def (forbidden)
        (using (handler Forbidden : RequestHandler)
          (handler.handle-request! req res)))
      (def (not-found)
        (using (handler Not-Found : RequestHandler)
          (handler.handle-request! req res)))

      (let (rpath req.url.path)
        (if (or (equal? self.rpath rpath)
                (equal? self.rpath/ rpath))
          (serve-dir self.path)
          (let* ((subpath (substring rpath (fx1+ (string-length self.rpath)) (string-length rpath)))
                 (target (try (path-normalize subpath #f self.path)
                              (catch (e) #f))))
            (if target
              (let (info (file-info target))
                (case (file-info-type info)
                  ((regular)
                   (serve-file target))
                  ((directory)
                   (serve-dir target))
                  (else
                   (forbidden))))
              (not-found)))))))))
