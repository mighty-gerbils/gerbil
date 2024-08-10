;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble test
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
        ./server-identifier
        ./ensemble
        ./registry
        ./cookie
        "test-util")
(export actor-ensemble-test test-setup! test-cleanup!)

(def (test-setup!)
  ;; uncomment this if you are debugging test failures
  ;; (current-logger-options 'VERBOSE)
  (void))

(def (test-cleanup!)
  ;; uncomment this if you uncommented above
  ;; (current-logger-options 'WARN)
  (void))

(def actor-ensemble-test
  (test-suite "actor ensemble"
    (test-case "basic ensemble functionality"
      (reset-thread!)
      (let* ((registry-file-path (make-temporary-file-name "registry-file"))
             (registry-sock      (make-temporary-file-name "registry-sock"))
             (registry-addr      [unix: (hostname) registry-sock])
             (known-servers      (hash ((registry . /) [registry-addr])))
             (addr1-sock         (make-temporary-file-name "echo1"))
             (addr1              [unix: (hostname) addr1-sock])
             (addr2-sock         (make-temporary-file-name "echo2"))
             (addr2              [unix: (hostname) addr2-sock])
             (cookie (make-random-cookie)))

        (def registry-srv
          (start-actor-server! cookie: cookie
                               identifier: 'registry
                               addresses: [registry-addr]))
        (def registry-actor
          (start-ensemble-registry! registry-file-path registry-srv))

        ;; wait for it to start up
        (thread-sleep! .01)

        (check (ensemble-list-servers registry-srv) => [])

        (def srv1
          (start-actor-server! cookie: cookie
                               addresses: [addr1]
                               ensemble: known-servers))
        (def srv2
          (start-actor-server! cookie: cookie
                               addresses: [addr2]
                               ensemble: known-servers))

        (def srv1-id
          (actor-server-identifier srv1))
        (def srv2-id
          (actor-server-identifier srv2))

        ;; make sure they are not there yet
        (check-exception (ensemble-lookup-server srv1-id registry-srv)
                         (actor-error-with? "unknown server"))
        (check-exception (ensemble-lookup-server srv2-id registry-srv)
                         (actor-error-with? "unknown server"))

        ;; add them
        (ensemble-add-server! srv1-id [addr1] '(test) registry-srv)
        (ensemble-add-server! srv2-id [addr2] '(test) registry-srv)

        ;; wait for the registry to update
        (thread-sleep! .01)

        ;; check they are there
        (check (ensemble-list-servers registry-srv)
               => (sort-server-list [[srv1-id '(test) addr1] [srv2-id '(test) addr2]]))
        (check (ensemble-lookup-server srv1-id registry-srv) => [addr1])
        (check (ensemble-lookup-server srv2-id registry-srv) => [addr2])
        (check (ensemble-lookup-servers/role 'test registry-srv)
               => (sort-server-list [[srv1-id addr1] [srv2-id addr2]]))

        ;; start the echos
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

        ;; and do some echoing; the servers should connect through a registry lookup
        (check (->> actor1-proxy-srv2 'world) =>  '(hello . world))
        (check (list-connections srv2)
               => [[srv1-id addr1] ['(registry . /) registry-addr]])
        (check (->> actor2-proxy-srv1 'world) =>  '(hello . world))
        (check (list-connections srv1)
               => [[srv2-id [unix: (hostname) "(local)"]]])

        (stop-actor-server! srv2)
        (check (thread-join! srv2) => 'shutdown)
        (check (thread-join! actor2) => 'shutdown)

        (stop-actor-server! srv1)
        (check (thread-join! srv1) => 'shutdown)
        (check (thread-join! actor1) => 'shutdown)

        (stop-actor-server! registry-srv)
        (check (thread-join! registry-srv) => 'shutdown)
        (check (thread-join! registry-actor) => 'shutdown)

        ;; clean up
        (delete-file registry-file-path)
        (delete-file registry-sock)
        (delete-file addr1-sock)
        (delete-file addr2-sock)
        ))

    (test-case "remote ensemble operations"
            (reset-thread!)
      (let* ((registry-file-path (make-temporary-file-name "registry-file"))
             (registry-sock      (make-temporary-file-name "registry-sock"))
             (registry-addr      [unix: (hostname) registry-sock])
             (known-servers      (hash ((registry . /) [registry-addr])))
             (addr1-sock         (make-temporary-file-name "echo1"))
             (addr1              [unix: (hostname) addr1-sock])
             (addr2-sock         (make-temporary-file-name "echo2"))
             (addr2              [unix: (hostname) addr2-sock])
             (cookie (make-random-cookie)))

        (def registry-srv
          (start-actor-server! cookie: cookie
                               identifier: 'registry
                               addresses: [registry-addr]))
        (def registry-actor
          (start-ensemble-registry! registry-file-path registry-srv))

        ;; wait for it to start up
        (thread-sleep! .01)

        (check (ensemble-list-servers registry-srv) => [])

        (def srv1
          (start-actor-server! cookie: cookie
                               addresses: [addr1]
                               ensemble: known-servers))
        (def srv2
          (start-actor-server! cookie: cookie
                               addresses: [addr2]
                               ensemble: known-servers))

        (def srv1-id
          (actor-server-identifier srv1))
        (def srv2-id
          (actor-server-identifier srv2))

        ;; add them
        (ensemble-add-server! srv1-id [addr1] '(test) srv1)
        (ensemble-add-server! srv2-id [addr2] '(test) srv2)

        ;; wait for the registry to update
        (thread-sleep! .01)

        ;; check they are there
        (check (ensemble-list-servers srv1)
               => (sort-server-list [[srv1-id '(test) addr1] [srv2-id '(test) addr2]]))
        (check (ensemble-list-servers srv2)
               => (sort-server-list [[srv1-id '(test) addr1] [srv2-id '(test) addr2]]))
        (check (ensemble-lookup-server srv1-id srv1) => [addr1])
        (check (ensemble-lookup-server srv2-id srv1) => [addr2])
        (check (ensemble-lookup-server srv1-id srv2) => [addr1])
        (check (ensemble-lookup-server srv2-id srv2) => [addr2])

        (check (ensemble-lookup-servers/role 'test srv1)
               => (sort-server-list [[srv1-id addr1] [srv2-id addr2]]))
        (check (ensemble-lookup-servers/role 'test srv2)
               => (sort-server-list [[srv1-id addr1] [srv2-id addr2]]))

        (stop-actor-server! srv2)
        (check (thread-join! srv2) => 'shutdown)

        (stop-actor-server! srv1)
        (check (thread-join! srv1) => 'shutdown)

        (stop-actor-server! registry-srv)
        (check (thread-join! registry-srv) => 'shutdown)
        (check (thread-join! registry-actor) => 'shutdown)

        ;; clean up
        (delete-file registry-file-path)
        (delete-file registry-sock)
        (delete-file addr1-sock)
        (delete-file addr2-sock)
        ))
    ))
