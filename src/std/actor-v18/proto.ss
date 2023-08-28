;;; -*- Gerbil -*-
;;; © vyzo
;;; actor protocol messages
(import :gerbil/gambit/threads
        :std/sugar
        ./message)
(export #t)

(defmessage !ok (value))
(defmessage !error (message))

(defrules with-result ()
  ((_ expr fail!)
   (match expr
     ((!ok value) value)
     ((!error what) (fail! what))))
  ((_ expr)
   (with-result expr error)))

(defrules defcall-actor ()
  ((_ (proc arg ...) expr error: error-msg error-irritant ...)
   (def (proc arg ...)
     (with-result expr
       (lambda (what) (raise-actor-error 'proc error-msg error-irritant ... what)))))
  ((_ (proc arg ...) expr)
   (defcall-actor (proc arg ...) expr error: "actor error")))

(defmessage !shutdown ())
(defmessage !actor-dead (thread))
(defmessage !tick (id seqno))
(defmessage !ping ())

;; reaction macro for ping
(defrule (@ping)
  ((!ping) (--> (!ok 'OK))))

;; reaction macro for unexpected messages
(defrule (@unexpected logf)
  (unexpected
   (logf "unexpected message from ~a: ~a" @source @message)
   (-->? (!error "unexpected message"))))

;; reaction macro for shutdown
(defrule (@shutdown exit ...)
  ((!shutdown)
   (if (actor-authorized? @source 'shutdown)
     (begin
       (-->? (!ok (void)))
       exit ...)
     (-->? (!error "not authorized")))))

;; package private
(defmessage !register (name))
(defmessage !list-actors (srv))
(defmessage !list-connections (srv))
(defmessage !connect (from to addrs))
(defmessage !ensemble-add-server (id addrs roles))
(defmessage !ensemble-remove-server (id))
(defmessage !ensemble-lookup-server (id role))
(defmessage !lookup-timeout (srv nonce))

(defmessage !connected (conn id addr dir reader writer))
(defmessage !connection-failed (id what))
(defmessage !disconnected (conn id))
(defmessage !recv (id msg))
(defmessage !send (msg))

(defmessage !hello (id))
(defmessage !challenge (id salt))
(defmessage !response (auth salt))
(defmessage !accepted (auth))

(defmessage !load-library-module (id))
(defmessage !load-code (code linker))
(defmessage !eval (expr))
(defmessage !continue (thunk))

(defmessage !admin-auth (server capabilities))
(defmessage !admin-auth-challenge (bytes))
(defmessage !admin-auth-response (sig))

;; utilities
(def (actor-monitor actor peer (sendto ->))
  (with-catch void (cut thread-join! actor))
  (sendto peer (!actor-dead actor)))

(def (ticker peer (period 1) (tick 'tick))
  (let/cc exit
    (let (seqno 0)
      (while #t
        (thread-sleep! period)
        (<- ((!shutdown)
             (exit 'shutdown))
            (else
             (unless (-> peer (!tick tick seqno))
               (exit 'peer-dead))
             (set! seqno (1+ seqno))))))))

(def (ticker-after peer initial-delay (period 1) (tick 'tick))
  (thread-sleep! initial-delay)
  (ticker peer period tick))

(def (after time peer (tick 'tick))
  (thread-sleep! time)
  (-> peer (!tick tick #f)))
