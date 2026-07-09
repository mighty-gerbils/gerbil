;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble server host functionality
(import :std/iter
        :std/net/address
        ../interface
        ../config
        ./types
        ./basic)
(export #t)

(defmethod {:init! server-host}
  (lambda (self (cfg : ServerHostConfig) (passphrase : :string))
    (set! self.announce cfg.announce)
    (basic-host:::init! self cfg passphrase)
    (self.network.listen! cfg.listen)))
