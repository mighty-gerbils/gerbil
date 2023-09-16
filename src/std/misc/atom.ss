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

(import :gerbil/gambit/threads
        :std/sugar)

(export atom deref
        swap! swap-values! reset! reset-values!
        compare-and-set!
        get-validator set-validator!
        add-watch! remove-watch!
        atom-increment! atomic-counter)

(defstruct Atom
  (mutex value validator watchers)
  final: #t unchecked: #t)

(def (atom (initial-value (void)) validator: (validator #f))
  (Atom (make-mutex 'atom) initial-value validator (hash)))

(defalias deref Atom-value)
(defalias &deref &Atom-value)

;; Internal helper to ensure atomicity
(defrule (with-atom-lock a body ...)
  (with-lock (Atom-mutex a) (lambda () body ...)))

;; Internal helper to be called inside with-atom-lock
(def (update-atom! a new-val (values? #t))
  (with ((Atom _ old-val validator watchers) a)
    (when validator
      (unless (validator new-val)
        (error "invalid atom value" new-val)))
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

;; same as Clojure set-validator!
(defalias set-validator! Atom-validator-set!)

;; same as Clojure get-validator
(defalias get-validator Atom-validator)

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
    (lambda ()
      (with-lock (&Atom-mutex a)
        (lambda ()
          (let (new (1+ (&Atom-value a)))
            (set! (&Atom-value a)
              new)
            new))))))
