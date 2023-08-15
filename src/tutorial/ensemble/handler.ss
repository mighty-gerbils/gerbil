;;; -*- Gerbil -*-
;;; © vyzo
;;; dynamic httpd handlers
(import :std/net/httpd)
(export #t)

(def greeting
  "hello there!\n")

(def (set-greeting! what)
  (set! greeting what))

(def (write-simple-handler req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain"))
                       greeting))

(def (write-chunked-handler req res)
  (http-response-begin res 200 '(("Content-Type" . "text/plain")))
  (http-response-chunk res "hello ")
  (http-response-chunk res "there!\n")
  (http-response-end res))

(def (root-handler req res)
  (http-response-write res 200 [] "the world is not flat but round!\n"))

(http-register-handler (current-http-server) "/" root-handler)
