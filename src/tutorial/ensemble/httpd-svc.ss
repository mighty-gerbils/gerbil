;;; -*- Gerbil -*-
;;; © vyzo
;;; dynamic httpd executable
(import ./server)
(export main)

(def (main (port "8080"))
  (run! (string->number port)))
