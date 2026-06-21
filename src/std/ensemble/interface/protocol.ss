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

(def proto:/host/actor
  "/host/actor/v1.0")

(def group:/host/resolver
  "/host/resolver/v1.0")

(def actor:/host/resolver
  "/host/resolver/v1.0")

(def actor:/host/space
  "/host/space/v1.0")
