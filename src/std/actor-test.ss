;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/actor unit-test

(import :gerbil/gambit
        :std/test
        :std/event
        :std/actor)
(export actor-rpc-test)

(defproto hello
  call: (hello a))

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
  (for-each (lambda (thread) (thread-interrupt! thread (cut raise 'interrupt)))
            threads))

(def rpc-server-address1 "127.0.0.1:9000")
(def rpc-server-address2 "127.0.0.1:9001")
(def rpc-server-address3 "127.0.0.1:9002")
(def rpc-server-address4 "127.0.0.1:9003")
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
      
      (interrupt-threads! remoted hellod locald)
      (! remoted (void)))
    
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
      
      (interrupt-threads! remoted hellod locald)
      (! remoted (void)))
    
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
      
      (interrupt-threads! remoted hellod locald)
      (! remoted (void)))
    
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
      
      (interrupt-threads! remoted hellod locald)
      (! remoted (void)))))
