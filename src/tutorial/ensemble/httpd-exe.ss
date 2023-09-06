;;; -*- Gerbil -*-
;;; © vyzo
;;; static  httpd executable
(import :std/actor
        ./server)
(export main)

(def (main server-id (port "8080"))
  (let ((port (string->number port))
        (server-id (string->symbol server-id)))
     (call-with-ensemble-server
      server-id (cut run! port)
      roles: '(httpd))))
