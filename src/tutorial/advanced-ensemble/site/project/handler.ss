(import :std/net/httpd
        :std/format
        :std/actor)
(export handle-request)

(def (handle-request req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain"))
    (format "hello! I am a dynamic handler and in ~a~n"
            (if (current-actor-server)
              (actor-server-identifier)
              '(unknown)))))
