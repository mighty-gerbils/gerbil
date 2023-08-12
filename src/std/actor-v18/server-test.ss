;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server test
(import :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :std/test
        :std/error
        :std/sugar
        :std/logger
        :std/io
        :std/os/hostname
        :std/os/temporaries
        ./message
        ./proto
        ./server
        ./ensemble
        ./cookie
        "test-util")
(export actor-server-test actor-server-ipc-test test-setup! test-cleanup!)

(def (test-setup!)
  ;; uncomment this if you are debugging test failures
  ;; (current-logger-options 'VERBOSE)
  (void))

(def (test-cleanup!)
  ;; uncomment this if you uncommented above
  ;; (current-logger-options 'WARN)
  (void))

(def actor-server-test
  (test-suite "actor server"
    (test-case "local server"
      (reset-nonce!)

      (def srv
        (start-actor-server! cookie: (make-random-cookie)))
      (def actor
        (spawn/name 'echo echo-actor srv (current-thread)))
      (def actor-ref
        (<- ((and ['ready . ref] (? (lambda (_) (eq? @source actor))))
             ref)))
      (def actor-proxy
        (proxy srv actor-ref))

      (check (list-actors srv) => [actor-ref])
      (check (->> actor 'world) => '(hello . world))
      (check actor-ref ? reference?)
      (check (->> actor-proxy 'world) =>  '(hello . world))
      (check (stop-actor-server! srv) => 'shutdown)
      (check (thread-join! actor) => 'shutdown))

    (test-case "duplicate registration"
      (reset-nonce!)

      (def srv
        (start-actor-server! cookie: (make-random-cookie)))
      (def actor
        (spawn/name 'echo echo-actor srv (current-thread)))
      (def actor-ref
        (<- ((and ['ready . ref] (? (lambda (_) (eq? @source actor))))
             ref)))

      ;; spawn a second instance which should die with an exception
      (def actor2
        (spawn/name 'echo2 echo-actor srv (current-thread)))

      (check (with-catch uncaught-exception-reason (cut thread-join! actor2))
             ? (actor-error-with? "actor already registered"))

      (check (stop-actor-server! srv) => 'shutdown)
      (check (thread-join! actor) => 'shutdown))

    (test-case "dead actor"
      (reset-nonce!)

      (def srv
        (start-actor-server! cookie: (make-random-cookie)))
      (def actor
        (spawn/name 'void void-actor srv (current-thread)))
      (def actor-ref
        (<- ((and ['ready . ref] (? (lambda (_) (eq? @source actor))))
             ref)))

      (check (list-actors srv) => [actor-ref])

      (thread-send actor 'die)
      (check (thread-join! actor) => 'die)
      (thread-sleep! .01)
      (check (list-actors srv) => [])
      (check (stop-actor-server! srv) => 'shutdown))))

(def actor-server-ipc-test
  (test-suite "actor server ipc"
    (def (test-ipc addr1 addr2)
      (reset-nonce!)

      (def cookie (make-random-cookie))
      (def srv1
        (start-actor-server! cookie: cookie
                             addresses: [addr1]))
      (def srv2
        (start-actor-server! cookie: cookie
                             addresses: [addr2]))

      (def srv1-id
        (actor-server-identifier srv1))
      (def srv2-id
        (actor-server-identifier srv2))

      (check (connect-to-server! srv2-id [addr2] srv1)
             => [addr2])
      (check (list-connections srv1) => [[srv2-id addr2]])
      (check (caar (list-connections srv2)) => srv1-id)
      (check (remote-list-connections srv1-id srv2) => [[srv2-id addr2]])
      (check (caar (remote-list-connections srv2-id srv1)) => srv1-id)

      (def actor1
        (spawn/name 'echo1 echo-actor srv1 (current-thread)))
      (def actor1-ref
        (<- ((and ['ready . ref] (? (lambda (_) (eq? @source actor1))))
             ref)))

      (def actor2
        (spawn/name 'echo2 echo-actor srv2 (current-thread)))
      (def actor2-ref
        (<- ((and ['ready . ref] (? (lambda (_) (eq? @source actor2))))
             ref)))

      (def actor1-proxy-srv2
        (proxy srv2 actor1-ref))
      (def actor2-proxy-srv1
        (proxy srv1 actor2-ref))

      (check (list-actors srv1) => [actor1-ref])
      (check (list-actors srv2) => [actor2-ref])
      (check (remote-list-actors srv2-id srv1) => [actor2-ref])
      (check (remote-list-actors srv1-id srv2) => [actor1-ref])

      (check (->> actor1-proxy-srv2 'world) =>  '(hello . world))
      (check (->> actor2-proxy-srv1 'world) =>  '(hello . world))

      (remote-stop-actor-server! srv2-id srv1)
      (check (thread-join! srv2) => 'shutdown)
      (check (thread-join! actor2) => 'shutdown)

      (stop-actor-server! srv1)
      (check (thread-join! srv1) => 'shutdown)
      (check (thread-join! actor1) => 'shutdown))

    (test-case "unix ipc"
      (let* ((tmp1 (make-temporary-file-name "actor-server"))
             (tmp2 (make-temporary-file-name "actor-server")))
        (test-ipc [unix: (hostname) tmp1]
                  [unix: (hostname) tmp2])
        (delete-file tmp1)
        (delete-file tmp2)))

    (test-case "tcp ipc"
      (let* ((addr1 (cons localhost4 33333))
             (addr2 (cons localhost4 44444)))
        (test-ipc [tcp: addr1]
                  [tcp: addr2])))

    (test-case "implicit connection"
      (reset-nonce!)

      (let* ((tmp1 (make-temporary-file-name "actor-server"))
             (addr1 [unix: (hostname) tmp1]))

        (def cookie (make-random-cookie))
        (def srv1
          (start-actor-server! cookie: cookie
                               addresses: [addr1]))
        (def srv1-id
          (actor-server-identifier srv1))
        (def srv2
          (start-actor-server! cookie: cookie
                               addresses: []
                               ensemble: (hash-eq (,srv1-id [addr1]))))
        (def srv2-id
          (actor-server-identifier srv2))

        (def actor1
          (spawn/name 'echo1 echo-actor srv1 (current-thread)))
        (def actor1-ref
          (<- ((and ['ready . ref] (? (lambda (_) (eq? @source actor1))))
               ref)))

        (def actor2
          (spawn/name 'echo2 echo-actor srv2 (current-thread)))
        (def actor2-ref
          (<- ((and ['ready . ref] (? (lambda (_) (eq? @source actor2))))
               ref)))

        (def actor1-proxy-srv2
          (proxy srv2 actor1-ref))
        (def actor2-proxy-srv1
          (proxy srv1 actor2-ref))

        (check (->> actor1-proxy-srv2 'world) =>  '(hello . world))
        (check (list-connections srv2) => [[srv1-id addr1]])
        (check (->> actor2-proxy-srv1 'world) =>  '(hello . world))
        (check (list-connections srv1) => [[srv2-id [unix: (hostname) "(local)"]]])

        (stop-actor-server! srv2)
        (check (thread-join! srv2) => 'shutdown)
        (check (thread-join! actor2) => 'shutdown)

        (stop-actor-server! srv1)
        (check (thread-join! srv1) => 'shutdown)
        (check (thread-join! actor1) => 'shutdown)

        (delete-file tmp1)))

    (test-case "connection error: no usable addresses"
      (reset-nonce!)

      (def cookie (make-random-cookie))
      (def srv1
        (start-actor-server! cookie: cookie))
      (def srv2
        (start-actor-server! cookie: cookie))

      (def srv1-id
        (actor-server-identifier srv1))
      (def srv2-id
        (actor-server-identifier srv2))

      (check-exception (connect-to-server! srv2-id #f srv1)
                       (actor-error-with? "no usable addresses"))

      (stop-actor-server! srv2)
      (check (thread-join! srv2) => 'shutdown)

      (stop-actor-server! srv1)
      (check (thread-join! srv1) => 'shutdown))

    (test-case "connection error: bad address"
      (reset-nonce!)

      (def cookie (make-random-cookie))
      (def srv1
        (start-actor-server! cookie: cookie))
      (def srv2
        (start-actor-server! cookie: cookie))

      (def srv1-id
        (actor-server-identifier srv1))
      (def srv2-id
        (actor-server-identifier srv2))

      (check-exception
       (connect-to-server! srv2-id
                           [[unix: (hostname) "/tmp/ensemble/does-not-exist/123456789"]]
                           srv1)
       (actor-error-with? "no usable addresses"))

      (stop-actor-server! srv2)
      (check (thread-join! srv2) => 'shutdown)

      (stop-actor-server! srv1)
      (check (thread-join! srv1) => 'shutdown))

    (test-case "connection error: cookie mismatch"
      (reset-nonce!)

      (let* ((tmp1 (make-temporary-file-name "actor-server"))
             (addr1 [unix: (hostname) tmp1]))

        (def cookie1 (make-random-cookie))
        (def srv1
          (start-actor-server! cookie: cookie1
                               addresses: [addr1]))
        (def srv1-id
          (actor-server-identifier srv1))

        (def cookie2 (make-random-cookie))
        (def srv2
          (start-actor-server! cookie: cookie2))
        (def srv2-id
          (actor-server-identifier srv2))

        (check-exception (connect-to-server! srv1-id [addr1] srv2)
                         (actor-error-with? "incomplete handshake"))

        (stop-actor-server! srv2)
        (check (thread-join! srv2) => 'shutdown)

        (stop-actor-server! srv1)
        (check (thread-join! srv1) => 'shutdown)))))
