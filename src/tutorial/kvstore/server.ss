;;; -*- Gerbil -*-
;;; © vyzo
;;; kvstore server
(import :std/sugar
        :std/logger
        :std/actor
        :std/text/zlib
        :std/db/lmdb
        ./proto)
(export run)

(deflogger kvstore)

(def (run env)
  (def db (lmdb-open-db env "kvstore"))

  (def (get key)
    (let (txn (lmdb-txn-begin env))
      (try
       (let* ((bytes (lmdb-get txn db key))
              (val (if bytes
                     (uncompress bytes)
                     #f)))
         (lmdb-txn-commit txn)
         (!ok val))
       (catch (e)
         (lmdb-txn-abort txn)
         (warnf "error getting ~a: ~a" key e)
         (!error (error-message e))))))

  (def (put! key bytes)
    (if (u8vector? bytes)
      (let* ((bytes (compress bytes))
             (txn (lmdb-txn-begin env)))
        (try
         (lmdb-put txn db key bytes)
         (lmdb-txn-commit txn)
         (!ok (u8vector-length bytes))
         (catch (e)
           (lmdb-txn-abort txn)
           (warnf "error putting ~a: ~a" key e)
           (!error (error-message e)))))
      (!error "bad value; expected u8vector")))

  (def (remove! key)
    (let (txn (lmdb-txn-begin env))
      (try
       (lmdb-del txn db key)
       (lmdb-txn-commit txn)
       (!ok (void))
       (catch (e)
         (lmdb-txn-abort txn)
         (warnf "error removing ~a: ~a" key e)
         (raise e)))))

  (register-actor! 'kvstore)
  (let/cc exit
    (while #t
      (<- ((!get key)
           (--> (get key)))

          ((!put key val)
           (--> (put! key val)))

          ((!remove key)
           (--> (remove! key)))

          ,(@ping)
          ,(@shutdown
            (infof "kvstore shutting down")
            (exit 'shutdown))
          ,(@unexpected warnf)))))
