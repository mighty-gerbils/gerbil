;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server test
(import :gerbil/gambit
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
        ./admin
        "test-util")
(export actor-server-test actor-server-ipc-test actor-server-auth-test
        test-setup! test-cleanup!)

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
      (reset-thread!)

      (def srv
        (start-actor-server! cookie: (make-random-cookie)))
      (def actor
        (spawn/name 'echo echo-actor srv (current-thread)))
      (def actor-ref
        (<- ((and ['ready . ref] (? (lambda (_) (eq? @source actor))))
             ref)))
      (def actor-proxy
        (handle srv actor-ref))

      (check (list-actors srv) => [actor-ref])
      (check (ping-actor actor-ref srv) => 'OK)
      (check (->> actor 'world) => '(hello . world))
      (check actor-ref ? reference?)
      (check (->> actor-proxy 'world) =>  '(hello . world))
      (check (stop-actor-server! srv) => 'shutdown)
      (check (thread-join! actor) => 'shutdown))

    (test-case "duplicate registration"
      (reset-thread!)

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
      (reset-thread!)

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
    (test-case "UNIX IPC"
      (let* ((tmp1 (make-temporary-file-name "actor-server"))
             (tmp2 (make-temporary-file-name "actor-server")))
        (test-ipc 'test-server1 [unix: (hostname) tmp1]
                  'test-server2 [unix: (hostname) tmp2])
        (delete-file tmp1)
        (delete-file tmp2)))

    (test-case "TCP IPC"
      (let* ((addr1 (cons localhost4 33333))
             (addr2 (cons localhost4 44444)))
        (test-ipc 'test-server1 [tcp: addr1]
                  'test-server2 [tcp: addr2])))

    (test-case "implicit connection"
      (reset-thread!)

      (let* ((tmp1 (make-temporary-file-name "actor-server"))
             (addr1 [unix: (hostname) tmp1]))

        (def cookie (make-random-cookie))
        (def srv1
          (start-actor-server! cookie: cookie
                               admin: #f
                               addresses: [addr1]))
        (def srv1-id
          (actor-server-identifier srv1))
        (def srv2
          (start-actor-server! cookie: cookie
                               admin: #f
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
          (handle srv2 actor1-ref))
        (def actor2-proxy-srv1
          (handle srv1 actor2-ref))

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
      (reset-thread!)

      (def cookie (make-random-cookie))
      (def srv1
        (start-actor-server! cookie: cookie admin: #f))
      (def srv2
        (start-actor-server! cookie: cookie admin: #f))

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
      (reset-thread!)

      (def cookie (make-random-cookie))
      (def srv1
        (start-actor-server! cookie: cookie admin: #f))
      (def srv2
        (start-actor-server! cookie: cookie admin: #f))

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
      (reset-thread!)

      (let* ((tmp1 (make-temporary-file-name "actor-server"))
             (addr1 [unix: (hostname) tmp1]))

        (def cookie1 (make-random-cookie))
        (def srv1
          (start-actor-server! cookie: cookie1
                               admin: #f
                               addresses: [addr1]))
        (def srv1-id
          (actor-server-identifier srv1))

        (def cookie2 (make-random-cookie))
        (def srv2
          (start-actor-server! cookie: cookie2
                               admin: #f))
        (def srv2-id
          (actor-server-identifier srv2))

        (check-exception (connect-to-server! srv1-id [addr1] srv2)
                         (actor-error-with? "incomplete handshake"))

        (stop-actor-server! srv2)
        (check (thread-join! srv2) => 'shutdown)

        (stop-actor-server! srv1)
        (check (thread-join! srv1) => 'shutdown)))))

(def actor-server-auth-test
  (test-suite "actor server administrative privileges"
    (test-case "authorization for sensitive actions"
      (reset-thread!)

      (def pubk-path
        (make-temporary-file-name "pubk"))
      (def privk-path
        (make-temporary-file-name "privk"))
      (def passphrase
        "oh so secret")

      (generate-admin-keypair! passphrase pubk-path privk-path)

      (def pubk
        (get-admin-pubkey pubk-path))
      (def privk
        (get-admin-privkey passphrase privk-path))

      (def cookie
        (make-random-cookie))

      (def tmp-sock
        (make-temporary-file-name "actor-server"))
      (def remote-addr
        [unix: (hostname) tmp-sock])
      (def remote-srv
        (start-actor-server! cookie: cookie
                             addresses: [remote-addr]
                             admin: pubk))
      (def remote-srv-id
        (actor-server-identifier remote-srv))

      (def local-srv
        (start-actor-server! cookie: cookie
                             admin: #f
                             ensemble: (hash (,remote-srv-id [remote-addr]))))

      ;; try to shutdown remote-srv without authorization first; this should fail
      (check-exception (remote-stop-server! remote-srv-id local-srv)
                       (actor-error-with? "not authorized"))

      ;; now authorize administrative privileges and try again
      (check (admin-authorize privk remote-srv-id (actor-server-identifier local-srv) local-srv)
             => (void))
      (check (remote-stop-server! remote-srv-id local-srv) => (void))
      (check (thread-join! remote-srv) => 'shutdown)

      (stop-actor-server! local-srv)
      (check (thread-join! local-srv) => 'shutdown)

      (delete-file tmp-sock)
      (delete-file pubk-path)
      (delete-file privk-path))))
