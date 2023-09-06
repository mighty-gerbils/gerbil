;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; json io environment
(import :std/error)
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
    (set! (&env-symbolic-keys self) (json-symbolic-keys))
    (set! (&env-sort-keys self) (json-sort-keys))
    (set! (&env-list-wrapper self) (json-list-wrapper))))

(def (raise-invalid-token input char)
  (if (eof-object? char)
    (raise-io-error 'read-json "Incomplete JSON object; EOF reached" input)
    (raise-io-error 'read-json "Invalid JSON token" input char)))
