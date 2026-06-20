;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor implementation macros
(import ../interface
        ;;./actor
        )
(export #t)

(begin-syntax
  (defstruct protocol-info ())

  (def (syntax-local-protocol-info? stx)
    (protocol-info?
     (syntax-local-value stx false))))

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
;; (defsyntax Map::proto (protocol-info ...))
;;
;; (defstruct Map.get ((key : :string)))
;; (defstruct Map.put! ((key : :string) (value : :t)))
;;
;; (defobject-untaint Map.get)
;; (defobject-untaint Map.put!)
;;
;; (def Map::method::get "/myapp/map/get")
;; (def Map::method::put! "/myapp/map/put")
;;
(defsyntax-case defprotocol ()
  )

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
;; (implement-protocol Map::proto my-map-implementation
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
;; (defstruct my-map-implementation::handler::Map::get ((object : may-map-implementation)))
;; (defstruct my-map-implementation::handler::Map::put! ...)
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
;; (def (my-map-implementation::implement::Map
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
  )
