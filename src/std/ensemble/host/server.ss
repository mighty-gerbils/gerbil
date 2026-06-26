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
  (lambda (self (cfg : ServerHostConfig) (passphrase : :string))
    (set! self.announce cfg.announce)
    (basic-host:::init! self cfg passphrase)
    (for (a cfg.listen :- Address)
      (self.network.listen! a self.tls-context))
    ))

(defmethod {:init! inet-server-host}
  (lambda (self (cfg : InetServerHostConfig) (passphrase : :string))
    (set! self.tls-context (make-tls-context cfg.tls-path cfg.id.name))
    (server-host:::init! self cfg passphrase)))
