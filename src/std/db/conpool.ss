;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic SQL database connection pool
package: std/db

(import :gerbil/gambit/threads)
(export make-connection-pool connection-pool?
        connection-pool-get connection-pool-put)

(defstruct connection-pool (e mx cv conns out max)
  constructor: :init!
  final: #t)

(defmethod {:init! connection-pool}
  (lambda (self connect (max #f))
    (struct-instance-init! self connect
      (make-mutex) (make-condition-variable)
      [] 0 max)))

(def (connection-pool-get cp)
  (with ((connection-pool connect mx cv _ out max) cp)
    (with-lock mx
      (lambda ()
        (let lp ()
          (match (connection-pool-conns cp)
            ([conn . rest]
             (set! (connection-pool-conns cp)
               rest)
             (set! (connection-pool-out cp)
               (fx1+ out))
             conn)
            (else
             (if (or (not max) (fx< out max))
               (let (conn (connect))
                 (set! (connection-pool-out cp)
                   (fx1+ out))
                 conn)
               (begin
                 (mutex-unlock! mx cv)
                 (mutex-lock! mx)
                 (lp))))))))))

(def (connection-pool-put cp conn)
  (with ((connection-pool _ mx cv conns out) cp)
    (with-lock mx
      (lambda ()
        (set! (connection-pool-conns cp)
          (cons conn conns))
        (set! (connection-pool-out cp)
          (fx1- out))
        (condition-variable-signal! cv)))))
