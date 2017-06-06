;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic SQL database connection pool
package: std/db

(import :gerbil/gambit/threads)
(export make-conpool conpool?
        conpool-get conpool-put)

(defstruct conpool (e mx cv conns out max)
  constructor: :init!
  final: #t)

(defmethod {:init! conpool}
  (lambda (self connect (max #f))
    (struct-instance-init! self connect
      (make-mutex) (make-condition-variable)
      [] 0 max)))

(def (conpool-get cp)
  (with ((conpool connect mx cv _ out max) cp)
    (with-lock mx
      (lambda ()
        (let lp ()
          (match (conpool-conns cp)
            ([conn . rest]
             (set! (conpool-conns cp)
               rest)
             (set! (conpool-out cp)
               (fx1+ out))
             conn)
            (else
             (if (or (not max) (fx< out max))
               (let (conn (connect))
                 (set! (conpool-out cp)
                   (fx1+ out))
                 conn)
               (begin
                 (mutex-unlock! mx cv)
                 (mutex-lock! mx)
                 (lp))))))))))

(def (conpool-put cp conn)
  (with ((conpool _ mx cv conns out) cp)
    (with-lock mx
      (lambda ()
        (set! (conpool-conns cp)
          (cons conn conns))
        (set! (conpool-out cp)
          (fx1- out))
        (condition-variable-signal! cv)))))
