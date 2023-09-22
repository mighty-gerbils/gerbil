;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic database connection pool

(import :std/sugar
        :std/error
        :std/logger)
(export make-conpool conpool?
        conpool-get conpool-put conpool-release conpool-close)

(deflogger connpool)

(defstruct conpool (e mx cv conns out max)
  constructor: :init!
  final: #t)

(defmethod {:init! conpool}
  (lambda (self connect (max #f))
    (struct-instance-init! self connect
      (make-mutex) (make-condition-variable)
      [] [] max)))

(def (conpool-get cp (timeo absent-obj))
  (with ((conpool connect mx cv _ out max) cp)
    (let lp ()
      (mutex-lock! mx)
      (match (conpool-conns cp)
        ([conn . rest]
         (set! (conpool-conns cp)
           rest)
         (set! (conpool-out cp)
           (cons conn out))
         (mutex-unlock! mx)
         conn)
        (else
         (if (or (not max) (fx< (length out) max))
           (let (conn
                 (try
                  (connect)
                  (catch (e)
                    (mutex-unlock! mx)
                    (raise e))))
             (set! (conpool-out cp)
               (cons conn out))
             (mutex-unlock! mx)
             conn)
           (let (res (mutex-unlock! mx cv timeo))
             (if res
               (lp)
               (raise-timeout 'conpool-get "Error getting connection; timeout")))))))))

(def (conpool-put cp conn)
  (with ((conpool _ mx cv conns out) cp)
    (mutex-lock! mx)
    (set! (conpool-conns cp)
      (cons conn conns))
    (set! (conpool-out cp)
      (remq conn out))
    (condition-variable-signal! cv)
    (mutex-unlock! mx)))

(def (conpool-release cp conn)
  (with ((conpool _ mx cv conns out) cp)
    (mutex-lock! mx)
    (set! (conpool-out cp)
      (remq conn out))
    (mutex-unlock! mx)
    {destroy conn}))

(def (conpool-close cp)
  (def (close conn)
    (try
     {destroy conn}
     (catch (e)
       (errorf "error closing connection: ~a" e))))

  (with ((conpool _ mx cv conns out) cp)
    (mutex-lock! mx)
    (for-each close conns)
    (for-each close out)
    (set! (conpool-e cp)
      (cut error "Connection pool is closed"))
    (set! (conpool-conns cp) [])
    (set! (conpool-out cp) [])
    (mutex-unlock! mx)))
