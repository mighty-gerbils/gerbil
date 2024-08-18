;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble utilitis
(import :std/sugar
        :std/error
        ./logger
        ./message
        ./proto
        ./server-identifier)
(export #t)

(defrule (with-error-handler what expr ...)
  (try expr ...
       (catch (e)
         (errorf "error in ~a: ~a" what e)
         (!error (error-message e)))))

(defrule (with-error-log what expr ...)
  (try expr ...
       (catch (e)
         (errorf "error in ~a: ~a" what e))))

(def (wait-for-actor! actor (srv (current-actor-server)) wait: (wait-for .1))
  (let (dest (handle srv (reference #f actor)))
    (let loop ((n 0) (wait-for wait-for))
      (thread-yield!)
      (if (fx< n 3)
        (match (with-catch void (cut ->> dest (!ping)))
          ((!ok) (void))
          (else
           (thread-sleep! wait-for)
           (loop (fx1+ n) (* 2 wait-for))))
        (raise-timeout wait-for-actor! "timeout" actor: actor)))))

(def (local-actor? source)
  (or (thread? source)
      (and (handle? source)
           (using (source :- handle)
             (and (reference? source.ref)
                  (using (ref source.ref : reference)
                    (or (not ref.server)
                        (equal? (actor-server-identifier) ref.server))))))))
