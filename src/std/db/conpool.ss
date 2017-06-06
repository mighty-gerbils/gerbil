;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic SQL database connection pool
package: std/db

(import :gerbil/gambit/threads
        :std/sugar
        :std/error)
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

;; _gambit#.scm
(extern namespace: #f
  macro-absent-obj)

(def (conpool-get cp (timeo (macro-absent-obj)))
  (with ((conpool connect mx cv _ out max) cp)
    (let lp ()
      (mutex-lock! mx)
      (match (conpool-conns cp)
        ([conn . rest]
         (set! (conpool-conns cp)
           rest)
         (set! (conpool-out cp)
           (fx1+ out))
         (mutex-unlock! mx)
         conn)
        (else
         (if (or (not max) (fx< out max))
           (let (conn
                 (try
                  (connect)
                  (catch (e)
                    (mutex-unlock! mx)
                    (raise e))))
             (set! (conpool-out cp)
               (fx1+ out))
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
      (fx1- out))
    (condition-variable-signal! cv)
    (mutex-unlock! mx)))
