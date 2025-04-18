;;; -*- Gerbil -*-
;;; © vyzo
;;; actor loader test
(import :gerbil/gambit
        :std/test
        :std/error
        :std/sugar
        :std/logger
        :std/os/hostname
        :std/os/temporaries
        ./server
        ./server-identifier
        ./ensemble
        ./cookie
        ./admin
        "test-util")
(export loader-test loader-auth-test test-setup! test-cleanup!)

(extern namespace: #f this-source-file)

(def (this-source-directory)
  (path-directory (this-source-file)))

(def gerbil-path
  (make-temporary-file-name "gerbil"))

(def (test-setup!)
  (setenv "GERBIL_PATH" gerbil-path)
  (create-directory* gerbil-path)
  ;; compile the test program server
  (let (gxc (open-process
             [path: "gxc"
                    arguments: ["-O" "-d" (path-expand "lib" gerbil-path)
                                "-exe" "-o" (path-expand "bin/loader-test-server" gerbil-path)
                                (path-expand "loader-test-server.ss" (this-source-directory))]
                    stderr-redirection: #f
                    stdout-redirection: (test-quiet?)]))
    (unless (zero? (process-status gxc))
      (error "error compiling test server")))
  ;; compile the test support module
  (let (gxc (open-process
             [path: "gxc"
                    arguments: ["-O" "-d" (path-expand "lib" gerbil-path)
                                (path-expand "loader-test-support.ss" (this-source-directory))]
                    stderr-redirection: #f
                    stdout-redirection: (test-quiet?)]))
    (unless (zero? (process-status gxc))
      (error "error compiling test support module")))

  ;; uncomment this if you are debugging test failures
   (current-logger-options 'VERBOSE)
  )

(def (test-cleanup!)
  ;; uncomment this if you uncommented above
  (current-logger-options 'WARN)

  (setenv "GERBIL_PATH")
  (delete-file-or-directory gerbil-path #t))

(def (start-test-server! server-id server-addr cookie)
  (open-process
   [path: (path-expand "bin/loader-test-server" gerbil-path)
          arguments: [(symbol->string (car server-id))
                      (object->string [server-addr])
                      (object->string cookie)]]))

(def (start-test-server/admin! server-id server-addr cookie pubk-path)
  (open-process
   [path: (path-expand "bin/loader-test-server" gerbil-path)
          arguments: [(symbol->string (car server-id))
                      (object->string [server-addr])
                      (object->string cookie)
                      pubk-path]]))
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
      (check (remote-load-library-module test-server-id ':test/actor-v18/loader-test-support)
             => (path-normalize (string-append gerbil-path "/lib/test/actor-v18/loader-test-support.o1")))
      ;; eval hello
      (check (remote-eval test-server-id '(test/actor-v18/loader-test-support#hello 'world))
             => '(hello . world))
      ;; and shut it down
      (remote-stop-server! test-server-id)
      (unless (zero? (process-status test-server-process))
        (displayln (read-line test-server-process #f)))
      ;; clean up
      (delete-file test-server-sock))

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
      (let (the-code-hash (remote-load-code test-server-id (string-append gerbil-path "/lib/test/actor-v18/loader-test-support~0.o1")))
        (check the-code-hash ? string?))
      ;; eval hello
      (check (remote-eval test-server-id '(test/actor-v18/loader-test-support#hello 'world))
             => '(hello . world))
      ;; and shut it down
      (remote-stop-server! test-server-id)
      (unless (zero? (process-status test-server-process))
        (displayln (read-line test-server-process #f)))
      ;; clean up
      (delete-file test-server-sock))))

(def loader-auth-test
  (test-suite "loader administrative privileges"
    (test-case "remote code loading and evaluation"
      (def pubk-path
        (make-temporary-file-name "pubk"))
      (def privk-path
        (make-temporary-file-name "privk"))
      (def passphrase
        "oh so secret")

      (generate-admin-keypair! passphrase pubk-path privk-path)

      (def privk
        (get-admin-privkey passphrase privk-path))

      (def cookie
        (make-random-cookie))
      (def test-server-id
        (make-random-identifier))
      (def test-server-sock
        (make-temporary-file-name "test-server-sock"))
      (def test-server-addr
        [unix: (hostname) test-server-sock])
      (def test-server-process
        (start-test-server/admin! test-server-id test-server-addr cookie pubk-path))
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

      ;; first try loading without auth; this should fail
      (check-exception (remote-eval test-server-id '(+ 1 1))
                       (actor-error-with? "not authorized"))
      (check-exception (remote-load-code test-server-id (string-append gerbil-path "/lib/test/actor-v18/loader-test-support~0.o1"))
                       (actor-error-with? "not authorized"))


      ;; now auth loader capabilities
      (check (admin-authorize privk test-server-id (actor-server-identifier srv) srv
                              capabilities: '(loader))
             => (void))
      (check (remote-eval test-server-id '(+ 1 1)) => 2)
      (let (the-code-hash (remote-load-code test-server-id (string-append gerbil-path "/lib/test/actor-v18/loader-test-support~0.o1")))
        (check the-code-hash ? string?))
      ;; eval hello
      (check (remote-eval test-server-id '(test/actor-v18/loader-test-support#hello 'world))
             => '(hello . world))
      ;; but still can't shut it down
      (check-exception (remote-stop-server! test-server-id)
                       (actor-error-with? "not authorized"))
      ;; retract capabilities and make sure we cannot eval any longer
      (check (admin-retract test-server-id (actor-server-identifier srv) srv)
             => (void))
      (check-exception (remote-eval test-server-id '(+ 1 1))
                       (actor-error-with? "not authorized"))

      ;; grant shutdown capability
      (check (admin-authorize privk test-server-id (actor-server-identifier srv) srv
                              capabilities: '(shutdown))
             => (void))
      ;; and shut it down
      (check (remote-stop-server! test-server-id) => (void))
      (unless (zero? (process-status test-server-process))
        (displayln (read-all test-server-process)))
      ;; clean up
      (delete-file test-server-sock)
      (delete-file pubk-path)
      (delete-file privk-path))))