;;; -*- Gerbil -*-
;;; © vyzo
;;; some test utilities
(import :gerbil/gambit/threads
        :std/sugar
        :std/test
        :std/sort
        :std/misc/symbol
        :std/io
        ./message
        ./proto
        ./server
        ./ensemble
        ./cookie)
(export #t)

(def (reset-nonce!)
  (thread-local-set! 'nonce 0))

(def (reset-thread!)
  (reset-nonce!)
  ;; drain all existing (leftover) messages
  (while (thread-receive 0 #f)))

(def (echo-actor-main srv main)
  (def ref
    (match (register-actor! 'echo srv)
      (ref ref)))

  (-> main (cons 'ready ref))
  (let/cc exit
    (while #t
      (<- ((!shutdown)
           (exit 'shutdown))
          ((!ping)
           (--> (!ok 'OK)))
          (greeting
           (--> (cons 'hello greeting)))))))

(def (echo-actor srv main)
  (with-exception-stack-trace (cut echo-actor-main srv main)))

(def (void-actor-main srv main)
  (let (ref (register-actor! 'void srv))
    (-> main (cons 'ready ref)))
  ;; wait for the death signal
  (thread-receive))

(def (void-actor srv main)
  (with-exception-stack-trace (cut void-actor-main srv main)))

(def (actor-error-with? what)
  (lambda (exn)
    (and (actor-error? exn)
         (member what (error-irritants exn)))))

(def (sort-server-list lst)
  (sort lst (lambda (a b) (symbol<? (car a) (car b)))))

(def (test-ipc srv1-id addr1 srv2-id addr2 (same-cookie? #t))
  (reset-thread!)

  (def cookie1
    (make-random-cookie))

  (def cookie2
    (if same-cookie?
      cookie1
      (make-random-cookie)))

  (def srv1
    (start-actor-server! identifier: srv1-id
                         cookie: cookie1
                         admin: #f
                         addresses: [addr1]))
  (def srv2
    (start-actor-server! identifier: srv2-id
                         cookie: cookie2
                         admin: #f
                         addresses: [addr2]))

  (check (connect-to-server! srv2-id [addr2] srv1)
         => [addr2])
  (thread-sleep! .01)
  (check (list-connections srv1) => [[srv2-id addr2]])
  (check (caar (list-connections srv2)) => srv1-id)
  (check (remote-list-connections srv1-id srv2) => [[srv2-id addr2]])
  (check (caar (remote-list-connections srv2-id srv1)) => srv1-id)
  (check (ping-server srv2-id srv1) => 'OK)
  (check (ping-server srv1-id srv2) => 'OK)

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

  (check (list-actors srv1) => [actor1-ref])
  (check (list-actors srv2) => [actor2-ref])
  (check (remote-list-actors srv2-id srv1) => [actor2-ref])
  (check (remote-list-actors srv1-id srv2) => [actor1-ref])
  (check (ping-actor actor2-ref srv1) => 'OK)
  (check (ping-actor actor1-ref srv2) => 'OK)

  (check (->> actor1-proxy-srv2 'world) =>  '(hello . world))
  (check (->> actor2-proxy-srv1 'world) =>  '(hello . world))

  (remote-stop-server! srv2-id srv1)
  (check (thread-join! srv2) => 'shutdown)
  (check (thread-join! actor2) => 'shutdown)

  (stop-actor-server! srv1)
  (check (thread-join! srv1) => 'shutdown)
  (check (thread-join! actor1) => 'shutdown))