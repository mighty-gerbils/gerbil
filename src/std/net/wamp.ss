;;; -*- Gerbil -*-
;;; (C) vyzo
;;; WAMP client
package: std/net

(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :gerbil/gambit/bits
        :std/error
        :std/sugar
        :std/logger
        :std/net/websocket
        :std/actor/message
        :std/actor/proto
        :std/crypto/etc
        :std/text/json)
(export start-wamp-client!
        wamp-call wamp-subscribe wamp-close
        )

(defstruct (wamp-error <error>) ())

(def (raise-wamp-error where what . irritants)
  (raise (make-wamp-error what irritants where)))

(def (start-wamp-client! url realm
                         redirect: (redirect #t)
                         headers: (headers #f)
                         cookies: (cookies #f)
                         params: (params #f))
  (start-logger!)
  (let* ((headers
          (cons '(("Sec-WebSocket-Protocol" . "wamp.2.json"))
                (or headers [])))
         (ws (open-websocket-client url
                                    redirect: redirect
                                    headers: headers
                                    cookies: cookies
                                    params: params)))
    (let ((values sid details) (wamp-open-session ws realm))
      (values (spawn wamp-client ws realm sid)
              details))))

;; synchronous client interface
;; => (values details args kws)
(def (wamp-call cli proc opts args kws)
  (!!wamp.call cli proc opts args kws))

(def (wamp-publish cli topic opts args kws)
  (!!wamp.publish cli topic opts args kws))

;; => object-port of (values details args kws)
(def (wamp-subscribe cli topic)
  (def (event-handler outp)
    (try
     (!!wamp.subscribe cli topic #f)
     (let lp ()
       (<- ((!wamp.event _ details args kws)
            (write (values details args kws) outp)
            (lp))
           ((!wamp.shutdown)
            (close-port outp))))
     (catch (e)
       (write e outp)
       (close-port outp))))
  
  (let ((values inp outp)
        (open-vector-pipe [permanent-close: #t direction: 'input]
                          [permanent-close: #t direction: 'output]))
    (spawn event-handler outp)
    inp))

;; close a wamp client
(def (wamp-close cli)
  (!!wamp.shutdown cli)
  (thread-join! cli))

;; wamp client actor protocol
(defproto wamp
  ;; rpc
  call:
  (register proc opts)
  (unregister proc)
  (call proc opts args kws)             ; => (values details args kws)
  (invoke proc details args kws)        ; => (values opts args kws) 
  ;; pubsub
  (subscribe topic opts)
  (unsubscribe topic)
  event:
  (publish topic opts args kws)
  (event topic details args kws)
  ;; notifications
  (shutdown)
  ;; internal
  (receive msg)
  (close-connection e)
  (remove-thread e))

(def (wamp-client ws realm sid)
  (def pend-calls                       ; request-id -> [thread . k]
    (make-hash-table-eqv))
  (def pend-subscriptions               ; request-id -> topic
    (make-hash-table-eqv))
  (def pend-topic-subscriptions         ; topic -> [[thread . k] ...]
    (make-hash-table))
  (def subscriptions                    ; subscription-id -> topic
    (make-hash-table-eqv))
  (def topic-subscription-ids           ; topic -> subscription-id
    (make-hash-table-eqv))
  (def topic-subscriptions              ; topic -> [thread ...]
    (make-hash-table))
  (def actor-subscriptions              ; thread -> [topic ...]
    (make-hash-table-eq))
  
  (def reader
    (spawn wamp-reader (current-thread) ws))

  (def (monitor-thread thread)
    (def (monitor cli thread)
      (with-catch void (cut thread-join! thread))
      (!!wamp.remove-thread cli thread))
    (spawn monitor-thread (current-thread) thread))

  (def (remove-thread! thread)
    (alet (topics (hash-get actor-subscriptions thread))
      (for-each (cut remove-subscription! <> thread)
                topics)
      (hash-remove! actor-subscriptions thread)))

  (def (remove-actor-subscription! topic thread)
    (alet (topics (hash-get actor-subscriptions thread))
      (let (topics (remove topic topics))
        (if (null? topics)
          (hash-remove! actor-subscriptions thread)
          (hash-put! actor-subscriptions thread topics)))
      (remove-subscription! topic thread)))
  
  (def (remove-subscription! topic thread)
    (let* ((subs (hash-ref topic-subscriptions topic))
           (subs (remq thread subs)))
      (if (null? subs)
        (let (subid (hash-ref topic-subscription-ids topic))
          (hash-remove! subscriptions subid)
          (hash-remove! topic-subscriptions topic)
          (hash-remove! topic-subscription-ids topic)
          (let (reqid (request-id))
            (wamp-send [UNSUBSCRIBE reqid subid])))
        (hash-put! topic-subscriptions topic subs))))

  (def (add-actor-subscription! topic thread)
    (cond
     ((hash-get actor-subscriptions thread)
      => (lambda (topics)
           (hash-put! actor-subscriptions thread (cons topic topics))))
     (else
      (monitor-thread thread)
      (hash-put! actor-subscriptions thread [topic]))))
  
  (def (receive msg)
    (match msg
      ([(eq? RESULT) reqid details . rest]
       (with ([src . k] (hash-get pend-calls reqid))
         (hash-remove! pend-calls reqid)
         (let (val
               (match rest
                 ([] (values details [] #f))
                 ([args] (values details args #f))
                 ([args kws] (values details args kws))))
           (!!value src val k))))

      ([(eq? EVENT) subid pubid details . rest]
       (alet (topic (hash-get subscriptions subid))
         (let ((actors (hash-get topic-subscriptions topic))
               (evt
                (match rest
                  ([] (make-wamp.event topic details [] #f))
                  ([args] (make-wamp.event topic details args #f))
                  ([args kws] (make-wamp.event topic details args kws)))))
           (for-each
             (lambda (thread)
               (send-message thread (make-!event evt)))
             actors))))
      
      ([(eq? SUBSCRIBED) reqid subid]
       (let* ((topic (hash-get pend-subscriptions reqid))
              (pend  (hash-get pend-topic-subscriptions topic)))
         (hash-put! subscriptions subid topic)
         (hash-put! topic-subscriptions topic (map car pend))
         (hash-put! topic-subscription-ids topic subid)
         (for-each (match <>
                     ([src . k]
                      (add-actor-subscription! topic src)
                      (!!value src (void) k)))
                   pend)))
      
      ([(eq? ERROR) what reqid details err . rest]
       (cond
        ((eq? what CALL)
         (with ([src . k] (hash-get pend-calls reqid))
           (hash-remove! pend-calls reqid)
           (!!error src (apply make-wamp-error 'CALL err details rest) k)))
        
        ((eq? what SUBSCRIBE)
         (let* ((topic (hash-get pend-subscriptions reqid))
                (pend (hash-get pend-topic-subscriptions topic)))
           (hash-remove! pend-subscriptions reqid)
           (hash-remove! pend-topic-subscriptions topic)
           (for-each (match <>
                       ([src . k]
                        (!!error src (apply make-wamp-error 'SUBSCRIBE err details rest) k)))
                     pend)))))

      ([(eq? GOODBYE) details reason]
       (wamp-send ['GOODBYE empty-hash "wamp.error.goodbye_and_out"])
       (raise 'shutdown))
      
      (else (void))))

  (def rbytes (make-u8vector 7))
  
  (def (request-id)
    (random-bytes! rbytes)
    (let lp ((k 0) (r 0))
      (if (fx< k 7)
        (lp (fx1+ k)
            (bitwise-ior (arithmetic-shift r 8) (##u8vector-ref rbytes k)))
        (modulo r (expt 2 53)))))
  
  (def (message-tail args kws)
    (if (null? args)
      (if (and kws (not (fxzero? (hash-length kws))))
        [[] kws]
        [])
      (if (and kws (not (fxzero? (hash-length kws))))
        [args kws]
        [args])))
  
  (def (loop)
    (<- ((!wamp.receive msg)
         (receive msg))
        ;; rpc
        ((!wamp.call proc opts args kws k)
         (let (reqid (request-id))
           (hash-put! pend-calls (cons @source k))
           (wamp-send ws [CALL reqid (or opts empty-hash) proc (message-tail args kws) ...])))
        ((!wamp.register proc opts k)
         (!!error "wamp.register: NOT IMPLEMENTED YET" k))
        ((!wamp.unregister proc k)
         (!!error "wamp.unregister: NOT IMPLEMENTED YET" k))
        ;; pubsub
        ((!wamp.subscribe topic opts k)
         (cond
          ((hash-get topic-subscriptions topic)
           => (lambda (actors)
                (hash-put! topic-subscriptions topic (cons @source actors))
                (add-actor-subscription! topic @source)
                (!!value (void) k)))
          ((hash-get pend-topic-subscriptions topic)
           => (lambda (pend)
                (hash-put! pend-topic-subscriptions topic (cons (cons @source k) pend))
                (!!value (void) k)))
          (else
           (let (reqid (request-id))
             (hash-put! pend-subscriptions reqid topic)
             (hash-put! pend-topic-subscriptions topic [(cons @source k)])
             (wamp-send ws [SUBSCRIBE reqid (or opts empty-hash) topic])))))
        ((!wamp.unsubscribe topic)
         (remove-actor-subscription! topic @source))
        ((!wamp.publish topic opts args kws)
         (let (reqid (request-id))
           (wamp-send ws [PUBLISH reqid (or opts empty-hash) topic (message-tail args kws) ...])))
        ;; control
        ((!wamp.shutdown)
         (wamp-send ['GOODBYE empty-hash "wamp.error.close_realm"])
         (raise 'shutdown))
        ((!wamp.close-connection e)
         (raise e))
        ((!wamp.remove-thread thread)
         (remove-thread! thread))
        (bogus
         (warning "unexpected message: ~a" bogus)))
    (loop))

  (try
   (loop)
   (catch (e)
     (unless (eq? 'shutdown error)
       (log-error "wamp client error" e))
     (websocket-close ws)
     (for-each (cut !!wamp.shutdown <>) (hash-keys actor-subscriptions))
     (unless (eq? 'shutdown error)
       (raise e)))))

(def (wamp-reader cli ws)
  (try
   (let lp ()
     (let (msg (wamp-recv ws))
       (!!wamp.receive cli msg)
       (lp)))
   (catch (e)
     (!!wamp.close-connection cli e))))

;;; Protocol Details
(def empty-hash (make-hash-table))

(def message-names (make-hash-table-eqv))

(defrules defmessage ()
  ((_ id code)
   (begin
     (def id code)
     (hash-put! message-names id 'id))))

(defmessage HELLO         1)
(defmessage WELCOME       2)
(defmessage ABORT         3)
(defmessage GOODBYE       6)
(defmessage ERROR         8)
(defmessage PUBLISH      16)
(defmessage PUBLISHED    17)
(defmessage SUBSCRIBE    32)
(defmessage SUBSCRIBED   33)
(defmessage UNSUBSCRIBE  34)
(defmessage UNSUBSCRIBED 35)
(defmessage EVENT        36)
(defmessage CALL         48)
(defmessage RESULT       50)
(defmessage REGISTER     64)
(defmessage REGISTERED   65)
(defmessage UNREGISTER   66)
(defmessage UNREGISTERED 67)
(defmessage INVOCATION   68)
(defmessage YIELD        70)

(def session-details
  (hash
   ("agent" (string-append "Gerbil-" (gerbil-version-string)))
   ("roles" (hash
             ("publisher" empty-hash)
             ("subscriber" empty-hash)
             ("caller" empty-hash)
             ;;("callee" empty-hash)
             ))))

(def (wamp-open-session ws realm)
  (wamp-send ws [HELLO realm session-details])
  (match (wamp-recv ws)
    ([(eq? WELCOME) sid details]
     (values sid details))
    ([(eq? ABORT) details reason]
     (raise-wamp-error 'wamp-open-session reason details))))

(def (wamp-send ws msg)
  (let (outp (open-output-u8vector))
    (write-json msg outp)
    (websocket-send ws (get-output-u8vector outp) 'text)))

(def (wamp-recv ws)
  (let ((values bytes type) (websocket-recv ws))
    (if (eq? type 'text)
      (read-json (open-input-u8vector [char-encoding: 'UTF-8 init: bytes]))
      (warning "wamp-recv: server sent binary data"))))
