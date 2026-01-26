;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; embedded HTTP/1.1 server base
(import :std/actor
        :std/logger)
(export #t)

(deflogger httpd)

;; handler registration
(defmessage !register-handler (host path handler))

(def current-http-server
  (make-parameter #f))
