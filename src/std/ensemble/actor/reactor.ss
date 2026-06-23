;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor stream reactors
(import :std/error
        :std/interface
        :std/iter
        :std/sync/completion
        :std/sync/channel
        ../interface
        ./types)
(export #t)

(def (reaction-init! (self : reaction))
  (set! self.mx (make-mutex 'actor/reaction))
  (set! self.table (make-hash-table-string)))

(defmethod {:init! unicast-reaction}
  reaction-init!)

(defmethod {:init! broadcast-reaction}
  reaction-init!)

(def (reaction-close (self : reaction))
  => :void
  (do-with-lock self.mx
    (for (r (in-hash-values self.table) :- reactor)
      (when r.thread
        (thread-send r.thread 't)))
    (self.table.clear!)))

(defrule (reactor-get self method get-handler klass)
  (do-with-lock (reaction-mx self) :- klass
    (cond
     ((hash-get (reaction-table self) method)
      => (lambda ((r :- reactor))
           (when (reactor-one-shot r)
             (cond
              ((reactor-thread r)
               => (cut thread-send <> 't)))
             (hash-remove! (reaction-table self) method)
             (get-handler r))))
     (else #f))))

(defrule (reactor-set! self method make handler expire one-shot)
  (do-with-lock (reaction-mx self)
    (cond
     ((hash-get (reaction-table self) method)
      (raise-contract-violation reactor-set! "duplicate reactor"
                                method: method))
     (else
      (let (r (make expire: expire
                    one-shot: one-shot
                    handler: handler))
        (when (> expire 0)
          (let (thread (spawn reactor-timeout self method r expire))
            (set! (reactor-thread r) thread)))
        (hash-put! (reaction-table self) method r))))))

(defrule (reactor-delete! self method)
  (do-with-lock (reaction-mx self)
    (hash-remove! (reaction-table self) method)))

(def (reactor-timeout (self   : reaction)
                      (method : :string)
                      (r      : reactor)
                      (expire : :integer))
  => :void
  (unless (thread-receive (seconds->time expire) #f)
    (do-with-lock self.mx
      (when (eq? (self.table.ref method #f) r)
        (self.table.delete! method)))))

(def (unicast-reactor-get (self   : unicast-reaction)
                          (method : :string))
  => MessageHandler
  (reactor-get self method
               &unicast-reactor-handler
               MessageHandler))

(def (unicast-reactor-set! (self     : unicast-reaction)
                           (method   : :string)
                           (handler  : MessageHandler)
                           (expire   : :integer)
                           (one-shot : :boolean))
  => :void
  (reactor-set! self method unicast-reactor handler expire one-shot))

(def (unicast-reactor-delete! (self : unicast-reaction)
                              (method   : :string))
  => :void
  (reactor-delete! self method))

(def (unicast-reactor-set-reply! (self       : unicast-reaction)
                                 (method     : :string)
                                 (completion : Completion)
                                 (expire     : :integer))
  => :void
  (do-with-lock self.mx
    (let (thread (spawn unicast-reply-timeout self method completion expire))
    (self.table.set! method
                     (unicast-reactor
                      expire: expire
                      one-shot: #t
                      thread: thread
                      handler: (MessageHandler (unicast-reply-reactor completion)))))))

(def (unicast-reply-timeout (self       : unicast-reaction)
                            (method     : :string)
                            (completion : Completion)
                            (expire     : :integer))
  => :void
  (unless (thread-receive (seconds->time expire) #f)
    (do-with-lock self.mx
      (cond
       ((self.table.ref method #f)
        (self.table.delete! method)
        (completion-error! completion (Timeout "actor reply timeout)")))))))

(def (unicast-reactor-set-broadcast-reply! (self    :  unicast-reaction)
                                           (method  :  :string)
                                           (channel :  Channel)
                                           (limit   :? :fixnum)
                                           (expire  :  :integer))
  => :void
  (do-with-lock self.mx
    (let (thread (spawn broadcast-reply-timeout self method channel expire))
      (self.table.set! method
                       (unicast-reactor
                        expire: expire
                        one-shot: #f
                        thread: thread
                        handler: (MessageHandler (broadcast-reply-reactor channel limit)))))))

(def (broadcast-reply-timeout (self    : unicast-reaction)
                              (method  : :string)
                              (channel : Channel)
                              (expire  : :integer))
  => :void
  (unless (thread-receive (seconds->time expire) #f)
    (do-with-lock self.mx
      (cond
       ((self.table.ref method #f)
        (self.table.delete! method)
        (channel-close channel))))))

(def (broadcast-reactor-get (self   : broadcast-reaction)
                            (method : :string)
                            (group  : :string))
  => BroadcastMessageHandler
  (let (method (string-append group "!" method))
    (reactor-get self method
                 &broadcast-reactor-handler
                 BroadcastMessageHandler)))

(def (broadcast-reactor-set! (self     : broadcast-reaction)
                             (method   : :string)
                             (group    : :string)
                             (handler  : BroadcastMessageHandler)
                             (expire   : :integer)
                             (one-shot : :boolean))
  => :void
  (let (method (string-append group "!" method))
    (reactor-set! self method broadcast-reactor handler expire one-shot)))

(def (broadcast-reactor-delete! (self : broadcast-reaction)
                                (method   : :string)
                                (group    : :string))
  => :void
  (let (method (string-append group "!" method))
    (reactor-delete! self method)))

(implement MessageHandler
  (unicast-reply-reactor
   (handle-message!
    (lambda (self actor msg)
      (completion-post! self.completion msg))))
  (broadcast-reply-reactor
   (handle-message!
    (lambda (self actor msg)
      (if self.limit
        (when (fx> self.limit 0)
          (channel-put self.channel msg)
          (set! self.limit (fx- self.limit 1))
          (when (fx= self.limit 0)
            (channel-close self.channel)))
        (channel-put self.channel msg))))))
