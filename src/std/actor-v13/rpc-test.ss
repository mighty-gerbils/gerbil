;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/actor-v13 unit-test
(import :std/build-config)
(cond-expand
  (config-enable-deprecated
   (import :gerbil/gambit
           :std/test
           :std/event
           ../actor-v13)
   (export actor-v13-rpc-test
           actor-v13-rpc-stream-test)

   (defproto hello
     call: (hello a)
     stream: (hello-stream a))

   (bind-protocol! 'foo hello::proto)

   (def (hello-server remoted)
     (rpc-register remoted 'foo)
     (let lp ()
       (<- ((!hello.hello val k)
            (!!value @source val k)
            (lp))
           ((!rpc.shutdown)
            (void))
           (content
            (displayln "unexpected message " @message " " content)
            (lp)))))

   (def (hello-void-server remoted)
     (rpc-register remoted 'foo)
     (let lp ()
       (<- ((!rpc.shutdown)
            (void))
           (ignore
            (lp)))))

   (def rpc-server-address1 "127.0.0.1:9000")
   (def rpc-server-address2 "127.0.0.1:9001")
   (def rpc-server-address3 "127.0.0.1:9002")
   (def rpc-server-address4 "127.0.0.1:9003")
   (def rpc-server-address5 "127.0.0.1:9004")
   (def rpc-server-address6 "127.0.0.1:9005")
   (def rpc-server-address7 "127.0.0.1:9006")
   (def rpc-server-address8 "127.0.0.1:9007")
   (def rpc-server-address9 "127.0.0.1:9008")
   (def rpc-server-address10 "127.0.0.1:9009")
   (def rpc-cookie "/tmp/actor-test-cookie")
   (rpc-generate-cookie! rpc-cookie)

   (def actor-v13-rpc-test
     (test-suite "test :std/actor RPC"
       (test-case "test RPC NULL proto"
         (def remoted (start-rpc-server! rpc-server-address1))
         (def hellod  (spawn hello-server remoted))
         (thread-sleep! 0.1)
         (check (!!rpc.resolve remoted 'foo) => hellod)

         (def locald  (start-rpc-server!))
         (def rfoo
           (rpc-connect locald 'foo rpc-server-address1))
         (check (!!hello.hello rfoo 'a timeout: 1) => 'a)

         (stop-rpc-server! remoted)
         (stop-rpc-server! locald))

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
           (rpc-connect locald 'foo rpc-server-address2))
         (check (!!hello.hello rfoo 'a timeout: 1) => 'a)

         (stop-rpc-server! remoted)
         (stop-rpc-server! locald))

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
           (rpc-connect locald 'foo rpc-server-address3))
         (check (!!hello.hello rfoo 'a timeout: 1) => 'a)

         (stop-rpc-server! remoted)
         (stop-rpc-server! locald))

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
           (rpc-connect locald 'foo rpc-server-address4))
         (check (!!hello.hello rfoo 'a timeout: 1) => 'a)

         (stop-rpc-server! remoted)
         (stop-rpc-server! locald))

       (test-case "test RPC errors"
         (def locald (start-rpc-server!))
         (def rfoo
           (make-remote locald 'foo rpc-server-address8 hello::proto))

         (check (with-catch values (cut !!hello.hello rfoo 'a)) ? rpc-error?)

         (def remoted (start-rpc-server! rpc-server-address8))
         (thread-sleep! 0.1)
         (check (with-catch values (cut !!hello.hello rfoo 'a)) ? remote-error?)

         (def hellod
           (spawn hello-void-server remoted))
         (thread-sleep! 0.1)
         (check (!!rpc.resolve remoted 'foo) => hellod)
         (check (with-catch values (cut !!hello.hello rfoo 'a timeout: 1)) ? rpc-error?)

         (stop-rpc-server! remoted)
         (stop-rpc-server! locald))

       (test-case "test RPC monitors"
         (def remoted (start-rpc-server! rpc-server-address10))
         (def hellod  (spawn hello-server remoted))
         (thread-sleep! 0.1)
         (check (!!rpc.resolve remoted 'foo) => hellod)

         (def locald  (start-rpc-server!))
         (def rfoo
           (rpc-connect locald 'foo rpc-server-address10))
         (check (!!hello.hello rfoo 'a timeout: 1) => 'a)

         (!!rpc.monitor locald rfoo)
         (thread-sleep! 1.0)

         (stop-rpc-server! remoted)
         (check (<- ((!rpc.disconnect r) r)) => rfoo)

         (stop-rpc-server! locald))))

   (def (hello-stream-server remoted N)
     (rpc-register remoted 'foo)
     (let lp ()
       (<- ((!hello.hello-stream _ k)
            (let lp2 ((n 0))
              (if (< n N)
                (begin
                  (!!yield n k)
                  (!!sync k)
                  (<- ((!continue (eq? k))
                       (lp2 (1+ n)))))
                (begin
                  (!!end k)
                  (lp)))))
           ((!rpc.shutdown)
            (void)))))

   (def (hello-stream-close-server remoted)
     (rpc-register remoted 'foo)
     (let lp ()
       (<- ((!hello.hello-stream _ k)
            (let (source @source)
              (let lp2 ((n 0))
                (!!yield n k)
                (!!sync k)
                (<- ((!continue k)
                     (lp2 (1+ n)))
                    ((!close k)
                     (!!end source k)
                     (lp))))))
           ((!rpc.shutdown)
            (void)))))

   (def actor-v13-rpc-stream-test
     (test-suite "test :std/actor RPC stream"
       (test-case "test basic RPC stream"
         (def N 5)
         (def remoted (start-rpc-server! rpc-server-address5))
         (def hellod  (spawn hello-stream-server remoted N))
         (thread-sleep! 0.1)
         (check (!!rpc.resolve remoted 'foo) => hellod)
         (def locald  (start-rpc-server!))
         (def rfoo
           (rpc-connect locald 'foo rpc-server-address5))

         (let (k (!!hello.hello-stream rfoo "stream"))
           (let lp ((n 0))
             (when (< n N)
               (<- ((!yield x (eq? k))
                    (check x => n)
                    (<- ((!sync (eq? k))
                         (!!continue k)
                         (lp (1+ n))))))))
           (let (end (thread-receive))
             (check end ? message?)
             (check (message-e end) ? !end?)))

         (stop-rpc-server! remoted)
         (stop-rpc-server! locald))

       (test-case "test RPC stream ports"
         (def N 5)
         (def remoted (start-rpc-server! rpc-server-address6))
         (def hellod  (spawn hello-stream-server remoted N))
         (thread-sleep! 0.1)
         (check (!!rpc.resolve remoted 'foo) => hellod)
         (def locald  (start-rpc-server!))
         (def rfoo
           (rpc-connect locald 'foo rpc-server-address6))

         (let ((values inp close) (!!pipe (!!hello.hello-stream rfoo "stream")))
           (let lp ((n 0))
             (when (< n N)
               (check (read inp) => n)
               (lp (1+ n))))
           (check (read inp) ? eof-object?))

         (stop-rpc-server! remoted)
         (stop-rpc-server! locald))

       (test-case "test RPC stream close"
         (def remoted (start-rpc-server! rpc-server-address9))
         (def hellod  (spawn hello-stream-close-server remoted))
         (thread-sleep! 0.1)
         (check (!!rpc.resolve remoted 'foo) => hellod)
         (def locald  (start-rpc-server!))
         (def rfoo
           (rpc-connect locald 'foo rpc-server-address9))

         (let ((values inp close) (!!pipe (!!hello.hello-stream rfoo "stream")))
           (close)
           (let lp ((n 0))
             (let (next (read inp))
               (unless (eof-object? next)
                 (lp (1+ n)))))
           (check (read inp) ? eof-object?))

         (stop-rpc-server! remoted)
         (stop-rpc-server! locald))))))
