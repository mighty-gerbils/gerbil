;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server test
(import :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :std/test
        :std/error
        :std/sugar
        :std/logger
        ./message
        ./proto
        ./server
        ./cookie)
(export actor-server-test test-setup! test-cleanup!)

(def (test-setup!)
  (current-logger-options 'VERBOSE))

(def (test-cleanup!)
  (current-logger-options 'WARN))

(def (reset-nonce!)
  (thread-local-set! 'nonce 0))

(def (echo-actor-main srv main)
  (def ref
    (match (register-actor! 'echo srv)
      (ref ref)))

  (-> main (cons 'ready ref))
  (let/cc exit
    (while #t
      (<- ((!shutdown)
           (exit 'shutdown))
          (greeting
           (-> @source (cons 'hello greeting)
               replyto: @nonce expiry: @expiry))))))

(def (echo-actor srv main)
  (with-exception-stack-trace (cut echo-actor-main srv main)))

(def (void-actor-main srv main)
  (let (ref (register-actor! 'void srv))
    (-> main (cons 'ready ref)))
  ;; wait for the death signal
  (thread-receive))

(def (void-actor srv main)
  (with-exception-stack-trace (cut void-actor-main srv main)))

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
             ? actor-error?)

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
      (check (stop-actor-server! srv) => 'shutdown))


    ;; ...
    ;; server ipc over sockets
    ))