;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble server host functionality
(import :std/iter
        :std/net/address
        ../interface
        ../config
        ../tls/context
        ./types
        ./basic
        ./util)
(export #t)

(defmethod {:init! server-host}
  (lambda (self (cfg : ServerHostConfig))
    (set! self.announce cfg.announce)
    (basic-host:::init! self cfg)
    (for (a cfg.listen :- Address)
      (self.network.listen! a self.tls-context))
    ;; TODO listen for children hosts to setup relay
    ))

(defmethod {:init! inet-server-host}
  (lambda (self (cfg : InetServerHostConfig))
    (set! self.tls-context (make-tls-context cfg.tls-path cfg.name))
    (server-host:::init! self cfg)))
