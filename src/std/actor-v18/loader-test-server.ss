;;; -*- Gerbil -*-
;;; © vyzo
;;; loader test server
(import :gerbil/gambit/threads
        :std/logger
        :std/actor
        :std/actor-v18/loader)
(export main)

(extern namespace: #f &current-module-libpath)

(def (main server-id server-addrs cookie)
  (let ((server-id (string->symbol server-id))
        (server-addrs (call-with-input-string server-addrs read))
        (cookie (call-with-input-string cookie read)))
    ;; uncomment this line if you are debugging:
    ;; (current-logger-options 'DEBUG)
    (def srv
      (start-actor-server! cookie: cookie
                           identifier: server-id
                           addresses: server-addrs))
    (def loader
      (start-loader!))

    (thread-join! srv)))
