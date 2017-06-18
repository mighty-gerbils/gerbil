;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/actor unit-test

(import :gerbil/gambit
        :std/test
        :std/event
        :std/actor)
(export actor-rpc-test
        actor-rpc-stream-test)

(defproto hello
  call: (hello a)
  stream: (hello-stream a))

(def (hello-server remoted)
  (!!rpc.register remoted 'foo hello::proto)
  (let lp ()
    (<- ((!hello.hello val k)
         (!!value @source val k)
         (lp))
        (content
         (displayln "unexpected message " @message " " content)
         (lp)))))

(def (interrupt-threads! . threads)
  (for-each (lambda (thread) (with-catch void (cut thread-interrupt! thread (cut raise 'interrupt))))
            threads))

(def rpc-server-address1 "127.0.0.1:9000")
(def rpc-server-address2 "127.0.0.1:9001")
(def rpc-server-address3 "127.0.0.1:9002")
(def rpc-server-address4 "127.0.0.1:9003")
(def rpc-server-address5 "127.0.0.1:9004")
(def rpc-server-address6 "127.0.0.1:9005")
(def rpc-server-address7 "127.0.0.1:9006")
(def rpc-cookie "/tmp/actor-test-cookie")
(rpc-generate-cookie! rpc-cookie)

(def actor-rpc-test
  (test-suite "test :std/actor RPC"
    (test-case "test RPC NULL proto"
      (def remoted (start-rpc-server! rpc-server-address1))
      (def hellod  (spawn hello-server remoted))
      (thread-sleep! 0.1)
      (check (!!rpc.resolve remoted 'foo) => hellod)
      
      (def locald  (start-rpc-server!))
      (def rfoo
        (make-remote locald 'foo rpc-server-address1 hello::proto))
      (check (!!hello.hello rfoo 'a timeout: 1) => 'a)

      (stop-rpc-server! remoted)
      (stop-rpc-server! locald)
      (interrupt-threads! hellod))
    
    (test-case "test RPC COOKIE proto"
      (def remoted
        (start-rpc-server! rpc-server-address2 proto: (rpc-cookie-proto rpc-cookie)))
      (def hellod
        (spawn hello-server remoted))
      (thread-sleep! 0.1)
      (check (!!rpc.resolve remoted 'foo) => hellod)
      
      (def locald
        (start-rpc-server! proto: (rpc-cookie-proto rpc-cookie)))
      (def rfoo
        (make-remote locald 'foo rpc-server-address2 hello::proto))
      (check (!!hello.hello rfoo 'a timeout: 1) => 'a)

      (stop-rpc-server! remoted)
      (stop-rpc-server! locald)
      (interrupt-threads! hellod))
    
    (test-case "test RPC CIPHER proto"
      (def remoted
        (start-rpc-server! rpc-server-address3 proto: (rpc-cipher-proto)))
      (def hellod
        (spawn hello-server remoted))
      (thread-sleep! 0.1)
      (check (!!rpc.resolve remoted 'foo) => hellod)

      (def locald
        (start-rpc-server! proto: (rpc-cipher-proto)))
      (def rfoo
        (make-remote locald 'foo rpc-server-address3 hello::proto))
      (check (!!hello.hello rfoo 'a timeout: 1) => 'a)

      (stop-rpc-server! remoted)
      (stop-rpc-server! locald)
      (interrupt-threads! hellod))
    
    (test-case "test RPC COOKIE-CIPHER proto"
      (def remoted
        (start-rpc-server! rpc-server-address4 proto: (rpc-cookie-cipher-proto rpc-cookie)))
      (def hellod
        (spawn hello-server remoted))
      (thread-sleep! 0.1)
      (check (!!rpc.resolve remoted 'foo) => hellod)

      (def locald
        (start-rpc-server! proto: (rpc-cookie-cipher-proto rpc-cookie)))
      (def rfoo
        (make-remote locald 'foo rpc-server-address4 hello::proto))
      (check (!!hello.hello rfoo 'a timeout: 1) => 'a)

      (stop-rpc-server! remoted)
      (stop-rpc-server! locald)
      (interrupt-threads! hellod))))

(def (hello-stream-server remoted N)
  (!!rpc.register remoted 'foo hello::proto)
  (let lp ()
    (<- ((!hello.hello-stream _ k)
         (let lp2 ((n 0))
           (if (< n N)
             (begin
               (!!value n k)
               (lp2 (1+ n)))
             (begin
               (!!end k)
               (lp))))))))

(def (hello-stream-control-server remoted N)
  (!!rpc.register remoted 'foo hello::proto)
  (let lp ()
    (<- ((!hello.hello-stream _ k)
         (let lp2 ((n 0))
           (if (< n N)
             (begin
               (!!value n k continue: k)
               (<< ((!continue (eq? k))
                    (lp2 (1+ n)))))
             (begin
               (!!end k)
               (lp))))))))

(def actor-rpc-stream-test
  (test-suite "test :std/actor RPC stream"
    (test-case "test basic RPC stream"
      (def N 5)
      (def remoted (start-rpc-server! rpc-server-address5))
      (def hellod  (spawn hello-stream-server remoted N))
      (thread-sleep! 0.1)
      (check (!!rpc.resolve remoted 'foo) => hellod)
      (def locald  (start-rpc-server!))
      (def rfoo
        (make-remote locald 'foo rpc-server-address5 hello::proto))
      
      (let (k (gensym 'stream))
        (send-message/timeout rfoo (make-!stream (make-hello.hello-stream "stream") k) 1)
        (let lp ((n 0))
          (when (< n N)
            (<- ((!value x (eq? k))
                 (check x => n)
                 (lp (1+ n))))))
        (let (end (thread-receive))
          (check end ? message?)
          (check (message-e end) ? !end?)))

      (stop-rpc-server! remoted)
      (stop-rpc-server! locald)
      (interrupt-threads! hellod))

    (test-case "test RPC stream ports"
             (def N 5)
      (def remoted (start-rpc-server! rpc-server-address6))
      (def hellod  (spawn hello-stream-server remoted N))
      (thread-sleep! 0.1)
      (check (!!rpc.resolve remoted 'foo) => hellod)
      (def locald  (start-rpc-server!))
      (def rfoo
        (make-remote locald 'foo rpc-server-address6 hello::proto))

      (let (inp (!!hello.hello-stream rfoo "stream"))
        (let lp ((n 0))
          (when (< n N)
            (check (read inp) => n)
            (lp (1+ n))))
        (check (read inp) ? eof-object?))

      (stop-rpc-server! remoted)
      (stop-rpc-server! locald)
      (interrupt-threads! hellod))

    (test-case "test RPC stream control"
             (def N 5)
      (def remoted (start-rpc-server! rpc-server-address7))
      (def hellod  (spawn hello-stream-control-server remoted N))
      (thread-sleep! 0.1)
      (check (!!rpc.resolve remoted 'foo) => hellod)
      (def locald  (start-rpc-server!))
      (def rfoo
        (make-remote locald 'foo rpc-server-address7 hello::proto))

      (let (inp (!!hello.hello-stream rfoo "stream"))
        (let lp ((n 0))
          (when (< n N)
            (check (read inp) => n)
            (lp (1+ n))))
        (check (read inp) ? eof-object?))

      (stop-rpc-server! remoted)
      (stop-rpc-server! locald)
      (interrupt-threads! hellod))))