(import :std/test
        :std/net/request
        :std/net/httpd
        ./api)
(export websocket-test test-setup! test-cleanup!)

(def server-address "127.0.0.1:29998")
(def httpd #f)

(def (test-setup!)
  (set! httpd (start-http-server! server-address)))

(def (test-cleanup!)
  (when httpd
    (stop-http-server! httpd)
    (set! httpd #f)))

(def websocket-test
  (test-suite "websocket"
    (test-case "echo binary"
      (http-register-handler httpd "/binary" (websocket-request-handler ws-echo car))
      (using (ws (websocket-connect (string-append "ws://" server-address "/binary")) : WebSocket)
        (let* ((payload '#u8(1 2 3))
               (expected (u8vector-copy payload)))
          (ws.send (message payload 'binary))
          (using (reply (ws.recv) : message)
            (check reply.data => expected)
            (check reply.type => 'binary))
          (ws.send (message "goodbye" 'close))
          (ws.close))))

    (test-case "echo text"
      (http-register-handler httpd "/text" (websocket-request-handler ws-echo car))
      (using (ws (websocket-connect (string-append "ws://" server-address "/text")) : WebSocket)
        (let* ((payload "hello")
               (expected (string-copy payload)))
          (ws.send (message payload 'text))
          (using (reply (ws.recv) : message)
            (check reply.data => expected)
            (check reply.type => 'text))
          (ws.send (message "goodbye" 'close))
          (ws.close))))))

(def (ws-echo ws)
  (using (ws : WebSocket)
    (let lp ()
      (using (next (ws.recv) : message)
        (if (eq? next.type 'close)
          (ws.close)
          (begin
            (ws.send next)
            (lp)))))))
