;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; kvstore daemon
package: tutorial/kvstore

(import :gerbil/gambit
        :std/sugar
        :std/actor
        :std/logger
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
  
  (!!rpc.register rpcd 'kvstore kvstore::proto)
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
            (log-error "kvstore.get" e)
            (!!error (error-message e) k))))
        
        ((!kvstore.ref key k)
         (try
          (let (val (get key))
            (if (eq? val nil)
              (!!error "No object associated with key" k)
              (!!value val k)))
          (catch (e)
            (log-error "kvstore.ref" e)
            (!!error (error-message e) k))))
        
        ((!kvstore.put! key val k)
         (try
          (put! key val)
          (!!value (void) k)
          (catch (e)
            (log-error "kvstore.put!" e)
            (!!error (error-message e) k))))
        
        ((!kvstore.remove! key k)
         (try
          (remove! key)
          (!!value (void) k)
          (catch (e)
            (log-error "kvstore.remove!" e)
            (!!error (error-message e) k))))
        
        (what
         (warning "Unexpected message: ~a " what)))))

(def (main rpcd-address lmdb-path)
  (start-logger!)
  (let* ((rpcd (start-rpc-server! rpcd-address proto: (rpc-cookie-proto)))
         (env (lmdb-open lmdb-path)))
    (run rpcd env)))
