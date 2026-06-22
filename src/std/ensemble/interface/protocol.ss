;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host protocols
(import :std/error
        :std/serde/interface)
(export #t)

;; remote invocation errors
(defstruct !Error
  ((message : :string)
   (trace   : :string))
  constructor: :init!
  final: #t)

(defmethod {:init! !Error}
  (lambda (self exn)
    (set! self.message
      (or (error-message exn)
          "unhandled exception"))
    (set! self.trace (exception->string e))))

(defobject-untaint !Error)

(deferror-class ActorError () actor-error?)
(defraise/context (raise-actor-error where actor-error irritants ...)
  (ActorError (!Error-message actor-error)
              irritants: [(!Error-trace actor-error) irritants ...]))

(defrule (with-actor-error expr rest ...)
  (try expr rest ...
       (catch (e)
         (!Error e))))

(defrules with-actor-reply (: :~)
  ((macro expr : klass)
   (let (result expr)
     (if (not (!Error? result))
       (: result klass)
       (raise-actor-error macro result))))
  ((macro expr :~ pred)
   (let (result expr)
     (if (not (!Error? result))
       (if (pred result)
         result
         (raise-contract-violation macro "unexpected macro reply"
                                   'pred result))
       (raise-actor-error macro result))))
  ((macro expr :~ pred sigil klass)
   (let (result expr)
     (if (not (!Error? result))
       (if (pred result)
         (sigil result klass)
         (raise-contract-violation macro "unexpected macro reply"
                                   'pred result))
       (raise-actor-error macro result)))))


;; host protocols
(def proto:/host/actor
  "/host/actor/v1.0")

(def group:/host/resolver
  "/host/resolver/v1.0")
(def actor:/host/resolver
  "/host/resolver/v1.0")

(def actor:/host/space
  "/host/space/v1.0")
