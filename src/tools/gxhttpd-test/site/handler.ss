(import :std/net/httpd
        :std/format)
(export handler-init! handle-request)

(def state "not initialized")

(def (handler-init! cfg)
  (set! state 'initialized))

(def (handle-request req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain"))
                       (format "hello! I am a dynamic handler and my state is ~a~n" state)))
