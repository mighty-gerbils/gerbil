;;; -*- Gerbil -*-
;;; © vyzo
;;; code loader
(import :gerbil/gambit/threads
        :std/sugar
        :std/crypto
        :std/text/hex
        ./logger
        ./message
        ./proto
        ./server
        ./path)
(export #t)

(def (default-loader-path)
  (let (server-id (actor-server-identifier (current-actor-server)))
    (path-expand "loader.d" (ensemble-server-path server-id))))

;; starts the code loader
(def (start-loader! (path (default-loader-path)) (srv (current-actor-server)))
  (create-directory* path)
  (spawn/name 'loader loader srv path))

(def (loader srv path)
  (with-exception-stack-trace (cut loader-main srv path)))

(def (loader-main srv path)
  (register-actor! 'loader srv)
  (debugf "starting loader...")

  (def loaded (make-hash-table))

  (let/cc exit
    (while #t
      (<-
       ((!load-library-module id)
        (if (actor-authorized? @source)
          ;; don't try to load if the library loader is not initialized
          ;; cf static binaries
          (if (&current-module-registry)
            (begin
              (infof "loading library module ~a" id)
              (background
               'load-library-module
               (cut load-module id)
               (lambda (result) (--> (!ok result)))
               (lambda (exn)
                 (warnf "error loading library module: ~a" exn)
                 (--> (!error (error-message exn))))))
            (--> (!error "process does not support library loading")))
          (--> (!error "not authorized"))))

       ((!load-code code linker)
        (if (actor-authorized? @source)
          (let (code-hash (hex-encode (sha256 code)))
            (infof "loading code; hash: ~a" code-hash)
            (cond
             ((hash-get loaded code-hash)
              => (lambda (state)
                   (infof "code already ~a [~a]" state code-hash)
                   (--> (!ok state))))
             (else
              (hash-put! loaded code-hash 'loading)
              (let (code-path (path-expand (string-append code-hash ".o1") path))
                (unless (file-exists? code-path)
                  (call-with-output-file code-path
                    (lambda (out) (write-subu8vector code 0 (u8vector-length code) out))))
                (background
                 'load-code
                 (cut ##load code-path void #f #f linker #f)
                 (lambda (_)
                   (hash-put! loaded code-hash 'loaded)
                   (--> (!ok code-hash)))
                 (lambda (exn)
                   (warnf "error loading code [~a]: ~a" code-hash exn)
                   (hash-put! loaded code-hash 'load-error)
                   (--> (!error (error-message exn)))))))))
          (--> (!error "not authorized"))))

       ((!eval expr)
        (if (actor-authorized? @source)
          (begin
            (infof "eval ~a" expr)
            (background
             'eval
             (cut eval expr)
             (lambda (result) (--> (!ok result)))
             (lambda (exn)
               (warnf "error evaluating ~a: ~a" expr exn)
               (--> (!error (error-message exn))))))
          (--> (!error "not authorized"))))

       ((!continue thunk)
        (thunk))

       ,(@shutdown
         (infof "loader shutting down ...")
         (exit 'shutdown))
       ,(@ping)
       ,(@unexpected warnf)))))

(def (background name thunk K E)
  (spawn/name name background-do (current-thread) thunk K E))

(def (background-do loader thunk K E)
  (try
   (let (result (thunk))
     (-> loader (!continue (cut K result))))
   (catch (exn)
     (-> loader (!continue (cut E exn))))))

(extern namespace: #f &current-module-registry)
