(import :std/test
        :std/error
        :std/io
        :std/os/temporaries
        :std/crypto
        ./socket
        ./api)
(export test-setup! basic-socket-test test-cleanup!)

(def test-socket-path #f)
(def server-socket #f)

(def (test-setup!)
  ;; Test setup fails? Must be temp file right?
  (displayln "Temp works? "(make-temporary-file-name "___ws-test"))
  (unless #f #;(equal?
	   (getenv "GERBIL_GH_MACOS_RUNNER_FUBAR" #f)
	   "true")
    (set! test-socket-path (make-temporary-file-name "ws-test"))
    (let (srv (unix-listen test-socket-path))
      (spawn (cut with-exception-stack-trace (cut basic-server srv)))
      (set! server-socket srv))))

(def (test-cleanup!)
  (when server-socket
    (using (server-socket : Closer)
      (server-socket.close)
      (set! server-socket #f))
    (delete-file test-socket-path)))

(def basic-socket-test
  (test-suite "raw websocket"
    (displayln "Env vars not passed?" (getenv "GERBIL_GH_MACOS_RUNNER_FUBAR" #f))
    (unless #f #;(equal?
	     (getenv "GERBIL_GH_MACOS_RUNNER_FUBAR" #f)
	     "true")
      (test-case "socket round-trip binary"
      (test-simple-roundtrip (message '#u8(1 2 3) 'binary)))
    (test-case "socket round-trip text"
      (test-simple-roundtrip (message "abc" 'text)))
    (test-case "fragmentation and reassembly"
      (test-simple-roundtrip (message (random-bytes (expt 2 24)) 'binary)
                             WebSocket-send-all
                             (cut WebSocket-recv-all <> (expt 2 25)))))))

; Echo server
(def (basic-server srv)
  (displayln "Echo Server?: " srv)
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

(def (test-simple-roundtrip msg (send WebSocket-send) (recv WebSocket-recv))
  (using ((msg : message)
          (s (unix-connect test-socket-path) : StreamSocket)
          (ws (open-websocket s #f) : WebSocket))
    (def expected-data ((if (string? msg.data) string-copy u8vector-copy) msg.data))
    (def expected-type msg.type)

    (let ((sender (spawn send ws msg))
          (recver (spawn recv ws)))
      (using (reply (thread-join! recver) : message)
        (check reply.data => expected-data)
        (check reply.type => expected-type)))

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
