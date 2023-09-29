;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic database connection pool

(import :std/sugar
        :std/error
        :std/contract
        :std/logger)
(export make-conpool conpool?
        conpool-get conpool-put conpool-release conpool-close)

(deflogger connpool)

(defstruct conpool (connect mx cv conns out max)
  constructor: :init!
  final: #t)

(defmethod {:init! conpool}
  (lambda (self connect (max #f))
    (struct-instance-init! self connect
      (make-mutex) (make-condition-variable)
      [] [] max)))

(def (conpool-get cp (timeo absent-obj))
  (using (cp : conpool)
    (let lp ()
      (mutex-lock! cp.mx)
      (match cp.conns
        ([conn . rest]
         (set! cp.conns rest)
         (set! cp.out (cons conn cp.out))
         (mutex-unlock! cp.mx)
         conn)
        (else
         (if (or (not cp.max) (fx< (length cp.out) cp.max))
           (let (conn
                 (try
                  (cp.connect)
                  (catch (e)
                    (mutex-unlock! cp.mx)
                    (raise e))))
             (set! cp.out (cons conn cp.out))
             (mutex-unlock! cp.mx)
             conn)
           (let (res (mutex-unlock! cp.mx cp.cv timeo))
             (if res
               (lp)
               (raise-timeout conpool-get "Error getting connection; timeout")))))))))

(def (conpool-put cp conn)
  (using (cp : conpool)
    (mutex-lock! cp.mx)
    (set! cp.conns (cons conn cp.conns))
    (set! cp.out (remq conn cp.out))
    (condition-variable-signal! cp.cv)
    (mutex-unlock! cp.mx)))

(def (conpool-release cp conn)
  (using (cp : conpool)
    (mutex-lock! cp.mx)
    (set! cp.out (remq conn cp.out))
    (mutex-unlock! cp.mx)
    {destroy conn}))

(def (conpool-close cp)
  (using (cp : conpool)
    (def (close conn)
      (try
       {destroy conn}
       (catch (e)
         (errorf "error closing connection: ~a" e))))

    (mutex-lock! cp.mx)
    (for-each close cp.conns)
    (for-each close cp.out)
    (set! cp.connect (cut error "Connection pool is closed"))
    (set! cp.conns [])
    (set! cp.out [])
    (mutex-unlock! cp.mx)))
