;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; json io environment
(import :std/error
        :std/contract
        :std/sugar)
(export #t)

;; should decoded hashes have symbols as keys?
(def json-symbolic-keys
  (make-parameter #t))

;; What should lists be decoded to? identity means a list, list->vector means a vector.
(def json-list-wrapper
  (make-parameter identity))

;; Should object keys be sorted when writing json?
;; Checking for duplicate keys only reliably works when this is true.
(def json-sort-keys
  (make-parameter #t))

(defstruct env (symbolic-keys sort-keys list-wrapper)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! env}
  (lambda (self)
    (using (self :- env)
      (set! self.symbolic-keys (json-symbolic-keys))
      (set! self.sort-keys (json-sort-keys))
      (set! self.list-wrapper (json-list-wrapper)))))

(defrule (raise-invalid-token where input char)
  (if (eof-object? char)
    (raise-io-error where "Incomplete JSON object; EOF reached" input)
    (raise-io-error where "Invalid JSON token" input char)))
