;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS v4/4a/5 server
(export #t)

(def current-socks-server
  (make-parameter #f))

(def (start-socks-server! allow-bind: (allow-bind? #f) . addresses)
  (error "IMPLEMENT ME"))

(def (stop-socks-server! (server (current-socks-server)))
  (error "IMPLEMENT ME"))
