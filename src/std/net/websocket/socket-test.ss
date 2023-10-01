(import :std/test
        :std/io
        :std/os/temporaries
        :std/contract
        ./socket
        ./interface)
(export test-setup! test-socket test-cleanup!)

(def test-file #f)
(def server #f)

(def (test-setup!)
  (set! test-file (make-temporary-file-name "ws-test"))
  (let (s (make-server))
    (set! server s)
    (spawn basic-server s)))

; Echo server
(def (basic-server s)
  (using ((server :- WebSocket))
    (let f ()
      (let* (msg (server.recv))
        (server.send msg))
      (f))))

(def test-socket
  (test-suite "net websocket socket"
    (test-case "socket round-trip"
      (test-simple-roundtrip))))

(def (test-simple-roundtrip)
  (let ((server (make-server))
    (client (make-client)))
      (using (client : WebSocket)
        (let* ((message (message #u8(1 2 3) 'binary))
               (_ (client.send message))
               (resp (client.recv)))
          ; check that the resp is echoed back
          (check-eqv? resp message)))))

(def (make-server)
  (let* ((server-socket (unix-listen test-file))
         (reader (open-buffered-reader server-socket))
         (writer (open-buffered-writer server-socket)))
    (make-websocket server-socket reader writer #t 'unix)))

(def (make-client)
  (let* ((client-socket (unix-connect test-file 5))
         (reader (open-buffered-reader client-socket))
         (writer (open-buffered-writer client-socket)))
       (make-websocket client-socket reader writer #f 'unix)))

; TODO: clean up temporary files
(def (test-cleanup!)
    (using ((c server :- Closer))
           (c.close)
           (set! server #f)))
