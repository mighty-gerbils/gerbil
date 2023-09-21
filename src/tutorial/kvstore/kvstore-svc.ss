;;; -*- Gerbil -*-
;;; © vyzo
;;; kvstore ensemble service
(import :std/actor
        :std/db/lmdb
        ./server)
(export main)

(def (main (path #f))
  (let* ((path
          (if path
            (path-expand path)
            (path-expand
             (path-expand "kvstore.db"
                          (ensemble-server-path (actor-server-identifier))))))
         (env (lmdb-open path)))
    (thread-join! (spawn/name 'kvstore run env))))
