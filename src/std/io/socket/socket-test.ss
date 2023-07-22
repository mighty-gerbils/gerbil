;;; -*- Gerbil -*-
;;; © vyzo
;;; socket api tests
(import :gerbil/gambit/threads
        :std/sugar
        :std/test
        :std/text/utf8
        :std/os/temporaries
        ../interface
        ../util
        ./api)
(export stream-socket-test
        test-setup! test-cleanup!)

(def (test-setup!)
  unhandled-actor-exception-hook-set! dump-stack-trace!)
(def (test-cleanup!)
  unhandled-actor-exception-hook-set! #f)

(def (echo-server srv)
  (let lp ()
    (let (cli (ServerSocket-accept srv))
      (spawn/name 'echo-server-handler echo-server-handler cli)
      (lp))))

(def (echo-server-handler cli)
  (let ((reader (StreamSocket-reader cli))
        (writer (StreamSocket-writer cli)))
    (io-copy! reader writer)
    (Reader-close reader)
    (Reader-close writer)))

(def (do-echo sock msg)
  (let* ((input (string->utf8 msg))
         (reader (StreamSocket-reader sock))
         (writer (StreamSocket-writer sock))
         (wrote (Writer-write writer input))
         (_ (Writer-close writer))
         (buffer (make-u8vector wrote))
         (read (Reader-read reader buffer 0 wrote wrote))
         (_ (Reader-close reader)))
    (utf8->string buffer)))

(def echo-server-tcp-address "127.0.0.1:20001")

(def stream-socket-test
  (test-suite "stream sockets"
    (test-case "tcp echo"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (tcp-listen echo-server-tcp-address))
             (server (spawn/name 'echo-server echo-server srv))
             (cli (tcp-connect echo-server-tcp-address)))
        (check (do-echo cli input) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))
    (test-case "unix echo"
      (call-with-temporary-file-name "echo"
        (lambda (path)
          (let* ((input "the quick brown fox jumped over the fence")
                 (srv (unix-listen path))
                 (server (spawn/name 'echo-server echo-server srv))
                 (cli (unix-connect path)))
        (check (do-echo cli input) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))))))
