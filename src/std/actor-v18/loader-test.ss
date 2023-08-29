;;; -*- Gerbil -*-
;;; © vyzo
;;; actor loader test
(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :std/test
        :std/error
        :std/sugar
        :std/os/hostname
        :std/os/temporaries
        ./server
        ./ensemble
        ./cookie
        "test-util")
(export loader-test test-setup! test-cleanup!)

(extern namespace: #f this-source-file)

(def (this-source-directory)
  (path-directory (this-source-file)))

(def gerbil-path
  (make-temporary-file-name "gerbil"))

(def (test-setup!)
  (setenv "GERBIL_PATH" gerbil-path)
  ;; compile the test program server
  (let (gxc (open-process
             [path: "gxc"
                    arguments: ["-O" "-exe" "-dynamic"
                                "-o" (path-expand "bin/loader-test-server" gerbil-path)
                                (path-expand "loader-test-server.ss" (this-source-directory))]]))
    (unless (zero? (process-status gxc))
      (displayln (read-all gxc))
      (error "error compiling test server")))
  ;; compile the test support module
  (let (gxc (open-process
             [path: "gxc"
                    arguments: ["-O"
                                (path-expand "loader-test-support.ss" (this-source-directory))]]))
    (unless (zero? (process-status gxc))
      (displayln (read-all gxc))
      (error "error compiling test support module"))))

(def (test-cleanup!)
  (setenv "GERBIL_PATH"))

(def (start-test-server! server-id server-addr cookie)
  (open-process
   [path: (path-expand "bin/loader-test-server" gerbil-path)
          arguments: [(symbol->string server-id)
                      (object->string [server-addr])
                      (object->string cookie)]]))

(def loader-test
  (test-suite "actor loader"
    (test-case "remote library loading and evaluation"
      (def cookie
        (make-random-cookie))
      (def test-server-id
        (make-random-identifier))
      (def test-server-sock
        (make-temporary-file-name "test-server-sock"))
      (def test-server-addr
        [unix: (hostname) test-server-sock])
      (def test-server-process
        (start-test-server! test-server-id test-server-addr cookie))
      (def srv
        (start-actor-server! cookie: cookie))

      ;; wait for the server to be ready
      (thread-sleep! 1)

      ;; connect
      (check (connect-to-server! test-server-id [test-server-addr])
             => [test-server-addr])
      ;; ping it
      (check (ping-server test-server-id)
             => 'OK)
      ;; load the loader-test-support module
      (check (remote-load-library-module test-server-id ':std/actor-v18/loader-test-support)
             => (string-append gerbil-path "/lib/std/actor-v18/loader-test-support__rt.o1"))
      ;; eval hello
      (check (remote-eval test-server-id '(std/actor-v18/loader-test-support#hello 'world))
             => '(hello . world))
      ;; and shut it down
      (remote-stop-server! test-server-id)
      (unless (zero? (process-status test-server-process))
        (displayln (read-all test-server-process)))
      ;; clean up
      (delete-file test-server-sock))

    (def code-hash #f)

    (test-case "remote code loading and evaluation"
      (def cookie
        (make-random-cookie))
      (def test-server-id
        (make-random-identifier))
      (def test-server-sock
        (make-temporary-file-name "test-server-sock"))
      (def test-server-addr
        [unix: (hostname) test-server-sock])
      (def test-server-process
        (start-test-server! test-server-id test-server-addr cookie))
      (def srv
        (start-actor-server! cookie: cookie))

      ;; wait for the server to be ready
      (thread-sleep! 1)

      ;; connect
      (check (connect-to-server! test-server-id [test-server-addr])
             => [test-server-addr])
      ;; ping it
      (check (ping-server test-server-id)
             => 'OK)
      ;; load the loader-test-support module
      (let (the-code-hash (remote-load-code test-server-id (string-append gerbil-path "/lib/std/actor-v18/loader-test-support__0.o1")))
        (check the-code-hash ? string?)
        ;; for the next t4est
        (set! code-hash the-code-hash))
      ;; eval hello
      (check (remote-eval test-server-id '(std/actor-v18/loader-test-support#hello 'world))
             => '(hello . world))
      ;; and shut it down
      (remote-stop-server! test-server-id)
      (unless (zero? (process-status test-server-process))
        (displayln (read-all test-server-process)))
      ;; clean up
      (delete-file test-server-sock))))
