;;; -*- Gerbil -*-
;;; © vyzo
;;; actor protocol messages
(import :gerbil/gambit/threads
        :std/sugar
        ./message)
(export #t)

(defmessage !ok (value))
(defmessage !error (message))
(defmessage !shutdown ())

(defmessage !join (who))
(defmessage !register (name))
(defmessage !list-actors (srv))
(defmessage !list-connections (srv))
(defmessage !connect (from to addrs))
(defmessage !ensemble-add-server (id addrs roles))
(defmessage !ensemble-remove-server (id))
(defmessage !ensemble-lookup-server (id role))
(defmessage !actor-dead (thread))
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

(def (actor-monitor actor peer (sendto ->))
  (with-catch void (cut thread-join! actor))
  (sendto peer (!actor-dead actor)))

(def (ticker peer (period 1) (tick 'tick))
  (let/cc exit
    (while #t
      (thread-sleep! period)
      (<- ((!shutdown)
           (exit 'shutdown))
          (else
           (unless (-> peer tick)
             (exit 'peer-dead)))))))