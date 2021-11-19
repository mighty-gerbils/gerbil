;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; kvstore daemon
(import :gerbil/gambit
        :std/sugar
        :std/getopt
        :std/logger
        :std/actor
        :std/text/json
        :std/text/zlib
        :std/db/lmdb
        :tutorial/kvstore/proto)
(export main)

(def (run rpcd env)
  (def db (lmdb-open-db env "kvstore"))
  (def nil '#(nil))

  (def (get key)
    (let (txn (lmdb-txn-begin env))
      (try
       (let* ((bytes (lmdb-get txn db key))
              (val (if bytes
                     (call-with-input-u8vector (uncompress bytes) read-json)
                     nil)))
         (lmdb-txn-commit txn)
         val)
       (catch (e)
         (lmdb-txn-abort txn)
         (raise e)))))

  (def (put! key val)
    (let* ((bytes (call-with-output-u8vector [] (cut write-json val <>)))
           (bytes (compress bytes))
           (txn (lmdb-txn-begin env)))
      (try
       (lmdb-put txn db key bytes)
       (lmdb-txn-commit txn)
       (catch (e)
         (lmdb-txn-abort txn)
         (raise e)))))

  (def (remove! key)
    (let (txn (lmdb-txn-begin env))
      (try
       (lmdb-del txn db key)
       (lmdb-txn-commit txn)
       (catch (e)
         (lmdb-txn-abort txn)
         (raise e)))))

  (rpc-register rpcd 'kvstore)
  (while #t
    (<- ((!kvstore.get key k)
         (try
          (let* ((val (get key))
                 (val
                  (if (eq? val nil)
                    #f
                    val)))
            (!!value val k))
          (catch (e)
            (errorf "kvstore.get ~a" e)
            (!!error (error-message e) k))))

        ((!kvstore.ref key k)
         (try
          (let (val (get key))
            (if (eq? val nil)
              (!!error "No object associated with key" k)
              (!!value val k)))
          (catch (e)
            (errorf "kvstore.ref ~a" e)
            (!!error (error-message e) k))))

        ((!kvstore.put! key val k)
         (try
          (put! key val)
          (!!value (void) k)
          (catch (e)
            (errorf "kvstore.put! ~a" e)
            (!!error (error-message e) k))))

        ((!kvstore.remove! key k)
         (try
          (remove! key)
          (!!value (void) k)
          (catch (e)
            (errorf "kvstore.remove! ~a" e)
            (!!error (error-message e) k))))

        (what
         (warning "Unexpected message: ~a " what)))))

(def (main . args)
  (def gopt
    (getopt (option 'listen "-l" "--listen"
                    default: "127.0.0.1:9999"
                    help: "rpcd listen address")
            (argument 'path help: "lmdb path")))
  (try
   (let (opt (getopt-parse gopt args))
     (start-logger!)
     (let* ((rpcd (start-rpc-server! (hash-get opt 'listen)
                                     proto: (rpc-cookie-proto)))
            (env (lmdb-open (hash-get opt 'path))))
       (spawn run rpcd env)
       (thread-join! rpcd)))
   (catch (getopt-error? exn)
     (getopt-display-help exn "kvstored" (current-error-port))
     (exit 1))
   (catch (uncaught-exception? exn)
     (display-exception (uncaught-exception-reason exn) (current-error-port)))))
