;; Atoms in the style of clojure: shared, synchronous, independent state

;; NB: Compared to the Clojure atom API, we:
;; - Do not support the meta field and the functions alter-meta! reset-meta!
;; - Replace swap-vals! and reset-vals! by swap-values! and reset-values!
;;   returning values rather than vectors.
;; - Rename add-watch and remove-watch to add-watch! and remove-watch!
;; - Do not have generic functions that work on multiple kinds of "references"
;;   but only one set of functions for atoms.
;; - Also export atom-increment! and atomic-counter for the common case.

(import :gerbil/gambit/threads
        :std/sugar
        :std/values)

(export atom deref
        swap! swap-values! reset! reset-values!
        compare-and-set!
        get-validator set-validator!
        add-watch! remove-watch!
        atom-increment! atomic-counter)

(defstruct Atom
  (mutex value validator watchers)
  final: #t)

(def (atom (initial-value (void)) validator: (validator #f))
  (Atom (make-mutex 'atom) initial-value validator (hash)))

(def deref Atom-value)

;; Internal helper to ensure atomicity
(defrule (with-atom-lock a body ...)
  (with-lock (Atom-mutex a) (lambda () body ...)))

;; Internal helper to be called inside with-atom-lock
(def (update-atom! a new-val)
  (with ((Atom _ old-val validator watchers) a)
    (when validator (unless (validator new-val) (error "invalid atom value" new-val)))
    (set! (Atom-value a) new-val)
    (hash-for-each (lambda (key watch) (watch key a old-val new-val)) watchers)
    (values old-val new-val)))

;; analog to Clojure swap-values!, but returning (values old-val new-val) rather than [old-val new-val]
(def (swap-values! a f . args)
  (with-atom-lock a (update-atom! a (apply f (deref a) args))))

;; same as Clojure swap!
(def (swap! a f . args)
  (second-value (apply swap-values! a f args)))

;; analog to Clojure reset-values!, but returning (values old-val new-val) rather than [old-val new-val]
(def (reset-values! a new-val)
  (with-atom-lock a (update-atom! a new-val)))

;; same as Clojure reset!
(def (reset! a new-val)
  (second-value (reset-values! a new-val)))

;; same as Clojure compare-and-set!
(def (compare-and-set! a old-val new-val)
  (with-atom-lock a
    (and (eq? (deref a) old-val)
         (try (update-atom! a new-val) #t
              (catch (_) #f)))))

;; same as Clojure set-validator!
(def set-validator! Atom-validator-set!)

;; same as Clojure get-validator
(def get-validator Atom-validator)

;; same as Clojure add-watch
(def (add-watch! a key fn)
  (with-atom-lock a
    (hash-put! (Atom-watchers a) key fn)))

;; same as Clojure remove-watch
(def (remove-watch! a key)
  (with-atom-lock a
    (hash-remove! (Atom-watchers a) key)))

(def (atom-increment! atom (increment 1))
  (swap! atom + increment))

(def (atomic-counter (initial-value -1))
  (def a (atom initial-value))
  (lambda ((increment 1)) (swap! a + increment)))
