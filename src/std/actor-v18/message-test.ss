;;; -*- Gerbil -*-
;;; © vyzo
;;; actor message test
(import :gerbil/gambit/threads
        :std/test
        :std/error
        :std/iter
        ./message)
(export actor-message-test)

(def (reset-nonce!)
  (thread-local-set! 'nonce 0))

(def actor-message-test
  (test-suite "actor messages"
    (test-case "basic send+receive"
      (reset-nonce!)
      (check (-> (current-thread) 'hello) => 0)
      (<- (value
           (check value => 'hello)
           (check @message => 'hello)
           (check @dest => (current-thread))
           (check @source => (current-thread))
           (check @nonce => 0)
           (check @replyto => #f)
           (check @expiry => #f)))
      (check (-> (current-thread) 'world) => 1)
      (<- (value
           (check value => 'world)
           (check @nonce => 1))))

    (test-case "send+receive reply"
      (reset-nonce!)
      (def (reply)
        (<- (value (-> @source (cons 'reply value) replyto: @nonce))))
      (def reply-thread (spawn (cut with-exception-stack-trace reply)))
      (check (->> reply-thread 'hello) => '(reply . hello))
      (thread-join! reply-thread))

    (test-case "send+receive reply timeout"
      (reset-nonce!)
      (def (reply)
        (thread-sleep! +inf.0))
      (def reply-thread (spawn (cut with-exception-stack-trace reply)))
      (check-exception (->> reply-thread 'hello timeout: 1) timeout-error?)
      (thread-terminate! reply-thread))

    (test-case "send to dead actor"
      (reset-nonce!)
      (def reply-thread (spawn void))
      (thread-join! reply-thread)
      (check-exception (->> reply-thread 'hello timeout: 1) actor-error?))

    (test-case "else clause"
      (reset-nonce!)
      (def (reply)
        (thread-sleep! +inf.0))
      (def reply-thread (spawn (cut with-exception-stack-trace reply)))
      (check (-> reply-thread 'hello) => 0)
      (check (<- (value value)
                 (else #f))
             => #f)
      (thread-terminate! reply-thread))))
