;;; -*- Gerbil -*-
;;; © fare, vyzo
;;; Atoms in the style of clojure: shared, synchronous, independent state

;; NB: Compared to the Clojure atom API, we:
;; - Do not support the meta field and the functions alter-meta! reset-meta!
;; - Replace swap-vals! and reset-vals! by swap-values! and reset-values!
;;   returning values rather than vectors.
;; - Rename add-watch and remove-watch to add-watch! and remove-watch!
;; - Do not have generic functions that work on multiple kinds of "references"
;;   but only one set of functions for atoms.
;; - Also export atom-increment! and atomic-counter for the common case.

(import :std/error
        :std/sugar)

(export atom
        (rename: Atom-value atom-deref)
        (rename: Atom? atom?)
        (rename: swap! atom-swap!)
        (rename: swap-values! atom-swap-values!)
        (rename: reset! atom-reset!)
        (rename: reset-values! atom-reset-values!)
        (rename: compare-and-set! atom-compare-and-set!)
        (rename: Atom-validator atom-validator)
        (rename: Atom-validator-set! atom-validator-set!)
        (rename: add-watch! atom-add-watch!)
        (rename: remove-watch! atom-remove-watch!)
        atom-increment! atomic-counter)

(defstruct Atom
  (mutex value validator watchers)
  final: #t unchecked: #t)

(def (atom (initial-value (void)) validator: (validator #f))
  (Atom (make-mutex 'atom) initial-value validator (hash)))

(defalias &deref &Atom-value)

;; Internal helper to ensure atomicity
(defrule (with-atom-lock a body ...)
  (with-lock (Atom-mutex a) (lambda () body ...)))

;; Internal helper to be called inside with-atom-lock
(def (update-atom! a new-val (values? #t))
  (with ((Atom _ old-val validator watchers) a)
    (when validator
      (unless (validator new-val)
        (raise-bad-argument update-atom! "valid atom value" new-val)))
    (set! (&Atom-value a) new-val)
    (hash-for-each (lambda (key watch) (watch key a old-val new-val)) watchers)
    (if values?
      (values old-val new-val)
      new-val)))

;; analog to Clojure swap-values!, but returning (values old-val new-val) rather than [old-val new-val]
(def* swap-values!
  ((a f)
   (with-atom-lock a (update-atom! a (f (&deref a)))))
  ((a f val)
   (with-atom-lock a (update-atom! a (f (&deref a) val))))
  ((a f val . rest)
   (with-atom-lock a (update-atom! a (apply f (&deref a) val rest)))))

(def* swap-value!
  ((a f)
   (with-atom-lock a (update-atom! a (f (&deref a)) #f)))
  ((a f val)
   (with-atom-lock a (update-atom! a (f (&deref a) val) #f)))
  ((a f val . rest)
   (with-atom-lock a (update-atom! a (apply f (&deref a) val rest) #f))))

;; same as Clojure swap!
(def* swap!
  ((a f)
   (swap-value! a f))
  ((a f val)
   (swap-value! a f val))
  ((a f val . rest)
   (apply swap-value! a f rest)))

;; analog to Clojure reset-values!, but returning (values old-val new-val) rather than [old-val new-val]
(def (reset-values! a new-val)
  (with-atom-lock a (update-atom! a new-val)))

;; same as Clojure reset!
(def (reset! a new-val)
  (with-atom-lock a (update-atom! a new-val #f)))

;; same as Clojure compare-and-set!
(def (compare-and-set! a old-val new-val)
  (with-atom-lock a
    (and (eq? (&deref a) old-val)
         (update-atom! a new-val #f)
         #t)))

;; same as Clojure add-watch
(def (add-watch! a key fn)
  (with-atom-lock a
    (hash-put! (&Atom-watchers a) key fn)))

;; same as Clojure remove-watch
(def (remove-watch! a key)
  (with-atom-lock a
    (hash-remove! (&Atom-watchers a) key)))

(def (atom-increment! atom (increment 1))
  (swap! atom + increment))

(def (atomic-counter (initial-value -1))
  (let (a (atom initial-value))
    (lambda ((increment 1))
      (let (mx (&Atom-mutex a))
        (mutex-lock! mx)
        (let (new (+ (&Atom-value a) increment))
          (set! (&Atom-value a) new)
          (mutex-unlock! mx)
          new)))))
