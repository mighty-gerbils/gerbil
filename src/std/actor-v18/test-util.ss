;;; -*- Gerbil -*-
;;; © vyzo
;;; some test utilities
(import :gerbil/gambit/threads
        :std/sugar
        :std/sort
        :std/misc/symbol
        ./message
        ./proto
        ./server)
(export #t)

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

(def (actor-error-with? what)
  (lambda (exn)
    (and (actor-error? exn)
         (member what (error-irritants exn)))))

(def (sort-server-list lst)
  (sort lst (lambda (a b) (symbol<? (car a) (car b)))))
