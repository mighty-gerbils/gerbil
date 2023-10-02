(import :std/test
        :std/error
        :std/io
        :std/os/temporaries
        :std/contract
        ./socket
        ./interface)
(export test-setup! basic-socket-test test-cleanup!)

(def test-socket-path #f)
(def server-socket #f)

(def (test-setup!)
  (set! test-socket-path (make-temporary-file-name "ws-test"))
  (let (srv (unix-listen test-socket-path))
    (spawn (cut with-exception-stack-trace (cut basic-server srv)))
    (set! server-socket srv)))

(def (test-cleanup!)
  (when server-socket
    (using (server-socket : Closer)
      (server-socket.close)
      (set! server-socket #f))
    (delete-file test-socket-path)))

(def basic-socket-test
  (test-suite "net websocket socket"
    (test-case "socket round-trip binary"
      (test-simple-roundtrip (message '#u8(1 2 3) 'binary)))
    (test-case "socket round-trip text"
      (test-simple-roundtrip (message "abc" 'text)))))

; Echo server
(def (basic-server srv)
  (using (srv : ServerSocket)
    (let accept ()
      (using ((ss (srv.accept) : StreamSocket)
              (ws (open-websocket ss #t) : WebSocket))
        (let echo ()
          (using (msg (ws.recv) : message)
            (if  (eq? msg.type 'close)
              (begin
                (ws.close)
                (accept))
              (begin
                (ws.send msg)
                (echo)))))))))

(def (test-simple-roundtrip msg)
  (using ((msg : message)
          (s (unix-connect test-socket-path) : StreamSocket)
          (ws (open-websocket s #f) : WebSocket))
    (def expected-data ((if (string? msg.data) string-copy u8vector-copy) msg.data))
    (def expected-type msg.type)
    (ws.send msg)
    (using (reply (ws.recv) : message)
      (check reply.data => expected-data)
      (check reply.type => expected-type))
    (ws.send (message "goodbye" 'close))
    (ws.close)))


(def (open-websocket ss server?)
  (using (ss : StreamSocket)
    (WebSocket
     (make-websocket ss
                     (open-buffered-reader (ss.reader))
                     (open-buffered-writer (ss.writer))
                     server?
                     'unix
                     default-max-frame-size))))
