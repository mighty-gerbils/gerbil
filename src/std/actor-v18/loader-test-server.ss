;;; -*- Gerbil -*-
;;; © vyzo
;;; loader test server
package: test/actor-v18
(import :std/logger
        :std/actor
        :std/actor-v18/loader
        :gerbil/runtime/init)
(export main)

(def (main server-id server-addrs cookie (admin #f))
  (with-cons-load-path
   (lambda ()
     (let ((server-id (string->symbol server-id))
           (server-addrs (call-with-input-string server-addrs read))
           (cookie (call-with-input-string cookie read)))
       ;; uncomment this line if you are debugging:
       ;; (current-logger-options 'DEBUG)
       (def srv
         (start-actor-server! cookie: cookie
                              identifier: server-id
                              addresses: server-addrs
                              admin: (and admin (get-admin-pubkey admin))))
       (def loader
         (start-loader!))

       (thread-join! srv)))
   (path-expand "lib" (getenv "GERBIL_PATH"))))
