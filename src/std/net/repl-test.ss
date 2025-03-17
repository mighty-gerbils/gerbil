(export repl-test test-setup! test-cleanup!)

(import :std/test
        :std/sugar
        ./repl)

(def server-address "127.0.0.1:7000")
(def repld #f)

(def (test-setup!)
  (set! repld (start-repl-server! address: server-address)))

(def (test-cleanup!)
  (when repld
    (stop-repl-server! repld)
    (set! repld #f)))

(def repl-test
  (test-suite "test :std/net/repl"
    (test-case "repl connection"
      (let ((client (open-tcp-client server-address)))
        (with-destroy client
          (display "(+ 1 2)\r" client)
          (force-output client)
          (check (read-line client) => "> 3\r"))))))
