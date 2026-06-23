;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor implementation macros
(import :std/interface
        :std/serde/interface
        :std/serde/marshal
        :std/serde/unmarshal
        ../interface
        )
(export #t)

(begin-syntax
  (defclass protocol-method-info
    ((id     : :symbol)
     (method : :string)
     (method-identifier : :t)
     (type-identifier   : :t))
    final: #t)

  (defclass protocol-info
    ((name : :symbol)
     (methods : :list))
    transparent: #f
    print: (name))

  (def (protocol-info-method-identifier (info : protocol-info) stx id)
    (cond
     ((find (lambda ((minfo :- protocol-method-info))
              (and (eq? minfo.id (stx-e id))
                   minfo.method-identifier))
            info.methods)
      => protocol-method-info-method-identifier)
     (else
      (raise-syntax-error #f "unknown protocol method" stx id))))

  (def (protocol-info-type-identifier (info : protocol-info) stx id)
    (cond
     ((find (lambda ((minfo :- protocol-method-info))
              (and (eq? minfo.id (stx-e id))
                   minfo.type-identifier))
            info.methods)
     => protocol-method-info-type-identifier)
     (else
      (raise-syntax-error #f "unknown protocol method" stx id))))

  (def (syntax-local-protocol-info? stx)
    (and (identifier? stx)
         (protocol-info?
          (syntax-local-value stx false)))))

;; defprotocol defines a schema for actor interactions
;; it defines a mapping from methods, structures for the body
;; of methods and and appropriate interface for invoking the
;; methods in remote actors.
;;
;; example:
;; (defprotocol Map
;;   ("/myapp/map/get" (get (key : :string)))
;;   ("/myapp/map/put" (put! (key : :string) (value : :t)))
;;
;; expansion:
;; (defsyntax Map (protocol-info ...))
;;
;; (defstruct Map.get ((key : :string)))
;; (defstruct Map.put! ((key : :string) (value : :t)))
;;
;; (defobject-untaint Map.get)
;; (defobject-untaint Map.put!)
;;
;; (def Map::get "/myapp/map/get")
;; (def Map::put! "/myapp/map/put")
;;
(defsyntax-case defprotocol ()
  ((_ protocol (method (id slot-spec ...)) ...)
   (and (identifier? #'protocol)
        (andmap stx-string? #'(method ...))
        (andmap identifier? #'(id ...)))
   (with-syntax (((method-identifier ...)
                  (map (cut stx-identifier #'protocol #'protocol "::" <>)
                       #'(id ...)))
                 ((type-identifier ...)
                  (map (cut stx-identifier #'protocol #'protocol "." <>)
                       #'(id ...))))
     #'(begin
         (defsyntax protocol
           (protocol-info
            name: 'protocol
            methods: [(protocol-method-info
                       id: 'id
                       method: 'method
                       method-identifier: (quote-syntax method-identifier)
                       type-identifier: (quote-syntax type-identifier))
                      ...]))
         (defstruct type-identifier (slot-spec ...)
           final: #t)
         ...
         (defobject-untaint type-identifier)
         ...
         (def method-identifier method)
         ...))))

;; implement-protocol simplifies implementation of protocols
;; for actors.
;; it defines method implementations and a procedure that can be
;; used to inject the implementation in an actor.
;;
;; Examples:
;; ; for an object of class my-map-implementation
;; (defstruct my-map-implementation ...)
;;
;; ; implementation of the protocol
;; (implement-protocol Map my-map-implementation
;;  (get  (lambda (self actor msg body) expr rest ...))
;;  (put! (lambda (self actor msg body) expr rest ...)))
;;
;; expansion:
;; (def (Map::my-map-implementation::get
;;        (self    ::- my-map-implementation)
;;        (actor   ::- Actor)
;;        (message ::- Message)
;;        (body    ::- Map.get)
;;   expr rest ...)
;; (def Map::my-map-implementation::put! ...)
;;
;; (defstruct Map::my-map-implementation::handler::get ((object : may-map-implementation)))
;; (defstruct Map::my-map-implementation::handler::put! ...)
;;
;; (implement MessageHandler
;;   (my-map-implementation::handler::Map::get
;;    (handle-message!
;;     (lambda (self actor msg)
;;       (using (body (unmarshal msg.body) : Map.get)
;;         (Map::my-map-implementation::get
;;            self.object actor msg body)))))
;;    ...)
;;
;; (def (Map::my-map-implementation
;;         (actor : Actor)
;;         (object : my-map-implementation))
;;  => :void
;;   (actor.add-message-handler! ...)
;;   ...)
;;
;; for broadcast methods, you need to specify the broadcast group
;; after the method implementation
;;
;; (implement-protocol ...
;;  (some-broadcast-method
;;   method-impl
;;   broadcast: group))
(defsyntax-case implement-protocol ()
  ((_ protocol klass
      (id implementation . broadcast-spec)
      ...)
   (and (syntax-local-protocol-info? #'protocol)
        (syntax-local-class-type-info? #'klass)
        (andmap identifier? #'(id ...)))
   (let (info (syntax-local-value #'protocol))
     (with-syntax* ((((method-id handler-struct-id) ...)
                     (map (lambda (id)
                            [(stx-identifier id #'protocol "::" #'klass "::" id)
                             (stx-identifier id #'protocol "::" #'klass "::handler""" id)])
                          #'(id ...)))

                    (((unicast-id unicast-method-id unicast-handler-struct-id unicast-implementation) ...)
                     (filter-map
                      (lambda (id method-id handler-struct-id implementation broadcast-spec)
                        (syntax-case broadcast-spec ()
                          (() [id method-id handler-struct-id implementation])
                          ((broadcast: _) #f)))
                      #'(id ...)
                      #'(method-id ...)
                      #'(handler-struct-id ...)
                      #'(implementation ...)
                      #'(broadcast-spec ...)))
                    (((broadcast-id broadcast-method-id broadcast-handler-struct-id broadcast-implementation broadcast-group) ...)
                     (filter-map
                      (lambda (id method-id handler-struct-id implementation broadcast-spec)
                        (syntax-case broadcast-spec ()
                          ((broadcast: group) [id method-id handler-struct-id implementation #'group])
                          (() #f)))
                      #'(id ...)
                      #'(method-id ...)
                      #'(handler-struct-id ...)
                      #'(implementation ...)
                      #'(broadcast-spec ...)))
                    ((defunicast-method ...)
                     (map (lambda (id method-id implementation)
                            (with-syntax ((message-class
                                           (protocol-info-type-identifier info stx id))
                                          (method-id method-id))
                              (syntax-case implementation (lambda)
                                ((lambda (self actor msg obj) expr rest ...)
                                 #'(def (method-id (self  : klass)
                                                   (actor : Actor)
                                                   (msg   : Message)
                                                   (obj   : message-class))
                                     expr rest ...))
                                (_ (raise-syntax-error #f "unexpected method implementation" stx implementation)))))
                          #'(unicast-id ...)
                          #'(unicast-method-id ...)
                          #'(unicast-implementation ...)))
                    ((defbroadcast-method ...)
                     (map (lambda (id method-id implementation)
                            (with-syntax ((message-class
                                           (protocol-info-type-identifier info stx id))
                                          (method-id method-id))
                              (syntax-case implementation (lambda)
                                ((lambda (self actor msg obj) expr rest ...)
                                 #'(def (method-id (self  : klass)
                                                   (actor : Actor)
                                                   (msg   : BroadcastMessage)
                                                   (obj   : message-class))
                                     expr rest ...))
                                (_ (raise-syntax-error #f "unexpected method implementation" stx implementation)))))
                          #'(broadcast-id ...)
                          #'(broadcast-method-id ...)
                          #'(broadcast-implementation ...)))
                    ((defhandler-struct ...)
                     (map (lambda (struct-id)
                            (with-syntax ((struct-id struct-id))
                              #'(defstruct struct-id ((object : klass))
                                  final: #t)))
                          #'(handler-struct-id ...)))
                    ((implement-unicast ...)
                     (map (lambda (id method-id struct-id)
                            (with-syntax ((message-class
                                           (protocol-info-type-identifier info stx id))
                                          (method-id method-id)
                                          (struct-id struct-id)
                                          (struct-object
                                           (stx-identifier struct-id struct-id "-object")))
                              #'(implement MessageHandler
                                  (struct-id
                                   (handle-message!
                                    (lambda (self actor msg)
                                      (using (body (unmarshal (Message-body msg) (unmarshal-environment dag: #t)) : message-class)
                                        (method-id (struct-object self)
                                                   actor msg
                                                   body))))))))
                          #'(unicast-id ...)
                          #'(unicast-method-id ...)
                          #'(unicast-handler-struct-id ...)))
                    ((implement-broadcast ...)
                     (map (lambda (id method-id struct-id)
                            (with-syntax ((message-class
                                           (protocol-info-type-identifier info stx id))
                                          (method-id method-id)
                                          (struct-id struct-id)
                                          (struct-object
                                           (stx-identifier struct-id struct-id "-object")))
                              #'(implement BroadcastMessageHandler
                                  (struct-id
                                   (handle-message!
                                    (lambda (self actor msg)
                                      (using (body (unmarshal (BroadcastMessage-body msg) (unmarshal-environment dag: #t)) : message-class)
                                        (method-id (struct-object self)
                                                   actor msg
                                                   body))))))))
                          #'(broadcast-id ...)
                          #'(broadcast-method-id ...)
                          #'(broadcast-handler-struct-id ...)))
                    (actor (genident 'actor))
                    (object (genident 'object))
                    ((add-unicast-handler ...)
                     (map (lambda (id struct-id)
                            (with-syntax ((method (protocol-info-method-identifier info stx id))
                                          (struct-id struct-id))
                              #'(Actor-add-message-handler! actor method (MessageHandler (struct-id object)))))
                          #'(unicast-id ...)
                          #'(unicast-handler-struct-id ...)))
                    ((add-broadcast-handler ...)
                     (map (lambda (id struct-id group)
                            (with-syntax ((method (protocol-info-method-identifier info stx id))
                                          (struct-id struct-id)
                                          (group group))
                              #'(Actor-add-broadcast-handler! actor group method (BroadcastMessageHandler (struct-id object)))))
                          #'(broadcast-id ...)
                          #'(broadcast-handler-struct-id ...)
                          #'(broadcast-group ...)))
                    (message-handler-id
                     (stx-identifier #'protocol #'protocol "::" #'klass))
                    (defmessage-handler
                      #'(def (message-handler-id (actor : Actor) (object : klass))
                          add-unicast-handler ...
                          add-broadcast-handler ...)))
       #'(begin
           defunicast-method ...
           defbroadcast-method ...
           defhandler-struct ...
           implement-unicast ...
           implement-broadcast ...
           defmessage-handler)))))
