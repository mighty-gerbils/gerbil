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
;;   constructor: new ; default interface constructor name is new
;;   methods:
;;   /myapp/map/get: (get (key : :string))
;;   => :t
;;   /myapp/map/put: (put! (key : :string) (value : :t))
;;   => :void)
;;
;; expansion:
;; (defsyntax Map::proto (protocol-info ...))
;; (defstruct Map.get ((key : :string)))
;; (defstruct Map.put! ((key : :string) (value : :t)))
;; (interface Map
;;   (get (key : :string)) => :t
;;   (put! (key : :string) (value : :t)) => :void
;; )
;; (def (Map::new (ctx : ActorContext) (actor : Handle))
;;  => Map
;;  ...)
;;
;; for broadcast protocols you specify the option broadcast: group-name
;; e.g:
;; (defprotocol Announce
;;   broadcast: /mayapp/announce
;;   constructor: new
;;   methods:
;;   /myapp/announce: (announce! (what : :t))
;;   => !
;;   ...)
;;
;; in return types above, a ! indicates a one way message expecting
;; no reply (a fire and forget, unreliable message)
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
;;  constructor: Map::my-map-implementation
;;  methods:
;;  get:  (lambda (self key) body ...)
;;  put!: (lambda (self key value) body ...))
;;
;; expansion:
;; (def (Map::my-map-implementation::get
;;        (@actor   ::- Actor)
;;        (@message :-  Message)
;;        (self     :-  my-map-implementation)
;;        (key      :- :string))
;;   body ...)
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
;;         (actor.send-reply! msg
;;           (Map::my-map-implementation::get
;;              actor msg self.object body.key)))))
;;     ...)
;;   (Map::my-map-implementation::put! ...))
;;
;; (def (Map::my-map-implementation (actor : Actor)
;;                                  (object : my-map-implementation))
;;  => :void
;;   (actor.add-message-handler! ...)
;;   ...)
;;
;; note that if you dont want to use an inline lambda for a method
;; in the macro body, you can simply specify its name but you
;; need to account for the two prefix arguments from the handler.
;;
(defsyntax-case implement-protocol ()
  )
