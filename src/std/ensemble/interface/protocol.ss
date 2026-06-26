;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host protocols
(import :std/error
        :std/serde/interface
        :std/serde/deserialize
        :std/serde/unmarshal
        ./message)
(export #t)

;; generic remote invocation success
(defstruct !OK
  ((result : :t))
  final: #t)

(defobject-untaint !OK)

;; remote invocation errors
(defstruct !Error
  ((message   : :string)
   (irritants : :list)
   (trace     : :string))
  constructor: :init!
  final: #t)

(defmethod {:init! !Error}
  (lambda (self exn)
    (set! self.message
      (or (error-message exn)
          "unhandled exception"))
    ;; irritants are not expected to be unmarshalable in general
    ;; so just null
    (set! self.irritants [])
    (set! self.trace
      (exception->string exn))))

(def (!Error/c (msg : :string) . irritants)
  (using (e (new-instance !Error::t) :- !Error)
    (set! e.message msg)
    (set! e.irritants irritants)
    (set! e.trace "?")))

(defobject-untaint !Error)

(deferror-class ActorError () actor-error?)
(defraise/context (raise-actor-error where actor-error)
  (ActorError (!Error-message actor-error)
              irritants: [(!Error-irritants actor-error) (... ...)
                          trace: (!Error-trace actor-error)]))

(defrule (with-actor-error expr rest ...)
  (try expr rest ...
       (catch (e)
         (!Error e))))

(defrules with-actor-reply (: :~)
  ((macro expr)
   (let* ((reply expr)
          (result
           (unmarshal (Message-body reply)
                      (unmarshal-environment dag: #t))))
     (if (not (!Error? result))
       result
       (raise-actor-error macro result))))
  ((macro expr : klass)
   (let* ((reply expr)
          (result
           (unmarshal (Message-body reply)
                      (unmarshal-environment dag: #t))))
     (if (not (!Error? result))
       (: result klass)
       (raise-actor-error macro result))))
  ((macro expr :~ pred)
   (let* ((reply expr)
          (result
           (unmarshal (Message-body reply)
                      (unmarshal-environment dag: #t))))
     (if (not (!Error? result))
       (if (pred result)
         result
         (raise-contract-violation macro "unexpected macro reply"
                                   'pred result))
       (raise-actor-error macro result))))
  ((macro expr :~ pred sigil klass)
   (let* ((reply expr)
          (result
           (unmarshal (Message-body reply)
                      (unmarshal-environment dag: #t))))
     (if (not (!Error? result))
       (if (pred result)
         (sigil result klass)
         (raise-contract-violation macro "unexpected macro reply"
                                   'pred result))
       (raise-actor-error macro result)))))


;; basic host protocols
(def proto:/host/actor
  "/host/actor/v0")

(def group:/host/resolver
  "/host/resolver/v0")
(def actor:/host/resolver
  "/host/resolver/v0")

(def actor:/host/space
  "/host/space/v0")
