(import
  :std/misc/alist
  :std/sugar)

(export
  _walist_ _walist_?
  walist walistq walistv walist! walistq! walistv!
  walist? walistq? walistv? walist!? walistq!? walistv!?
  make-walist make-walistq make-walistv make-walist! make-walistq! make-walistv!
  walist-alist walist-alist-set!
  walist-acons walistq-acons walistv-acons walist-acons!
  walist-key? walistq-key? walistv-key?
  walist-get walistq-get walistv-get
  walist-put walistv-put walistq-put walist!-put! walistv!-put! walistq!-put!
  walist-remove walistv-remove walistq-remove walist!-remove! walistv!-remove! walistq!-remove!)

(defstruct _walist_ (alist) transparent: #t)
(defstruct (_walist _walist_) () transparent: #t) ;; equal?
(defstruct (_walistq _walist_) () transparent: #t) ;; eq?
(defstruct (_walistv _walist_) () transparent: #t) ;; eqv?
(defstruct (walist _walist) () transparent: #t final: #t) ;; equal?, pure
(defstruct (walistq _walistq) () transparent: #t final: #t) ;; eq?, pure
(defstruct (walistv _walistv) () transparent: #t final: #t) ;; eqv?, pure
(defstruct (walist! _walist) () transparent: #t final: #t) ;; equal?, stateful
(defstruct (walistq! _walistq) () transparent: #t final: #t) ;; eq?, stateful
(defstruct (walistv! _walistv) () transparent: #t final: #t) ;; eqv?, stateful

(def walist-alist _walist_-alist)
(def (walist-alist-set! w a) (set! (_walist_-alist w) a))

(def (walist-acons w k v) (make-walist (acons k v (walist-alist w))))
(def (walistq-acons w k v) (make-walistq (acons k v (walist-alist w))))
(def (walistv-acons w k v) (make-walistv (acons k v (walist-alist w))))
(def (walist-acons! w k v) (set! (_walist_-alist w) (acons k v (_walist_-alist w))))
(defmethod {acons walist} walist-acons)
(defmethod {acons walistq} walistq-acons)
(defmethod {acons walistv} walistv-acons)
(defmethod {acons! _walist_} walist-acons!)

(def (walist-key? w k) (pair? (assoc k (walist-alist w))))
(def (walistq-key? w k) (pair? (assq k (walist-alist w))))
(def (walistv-key? w k) (pair? (assv k (walist-alist w))))
(defmethod {key? _walist} walist-key?)
(defmethod {key? _walistq} walistq-key?)
(defmethod {key? _walistv} walistv-key?)

(def (walist-get w k) (cdr (assoc k (walist-alist w))))
(def (walistq-get w k) (cdr (assq k (walist-alist w))))
(def (walistv-get w k) (cdr (assv k (walist-alist w))))
(defmethod {get _walist} walist-get)
(defmethod {get _walistq} walistq-get)
(defmethod {get _walistv} walistv-get)

(def (walist-put w k v) (make-walist (aset (walist-alist w) k v)))
(def (walistq-put w k v) (make-walistq (asetq (walist-alist w) k v)))
(def (walistv-put w k v) (make-walistv (asetv (walist-alist w) k v)))
(defmethod {put walist} walist-put)
(defmethod {put walistq} walistq-put)
(defmethod {put walistv} walistv-put)

(def (walist-remove w k) (make-walist (arem k (walist-alist w))))
(def (walistq-remove w k) (make-walistq (aremq k (walist-alist w))))
(def (walistv-remove w k) (make-walistv (aremv k (walist-alist w))))
(defmethod {remove walist} walist-remove)
(defmethod {remove walistq} walistq-remove)
(defmethod {remove walistv} walistv-remove)

(def (walist!-put! w k v) (aset! (walist-alist w) k v))
(def (walistq!-put! w k v) (asetq! (walist-alist w) k v))
(def (walistv!-put! w k v) (asetv! (walist-alist w) k v))
(defmethod {put! walist!} walist!-put!)
(defmethod {put! walistv!} walistv!-put!)
(defmethod {put! walistq!} walistq!-put!)

(defrule (define-remove! struct! fun cmp)
  (begin
    (def (fun w key)
      (let lp ((p (walist-alist w)) (prev #f))
        (match p
          ([[k . _] . r]
           (cond
            ((not (cmp key k)) (lp r p))
            (prev (set-cdr! prev r))
            (else (set! (_walist_-alist w) r))))
          ([] (void)) ; key not found: NOP
          (_ (error "Invalid walist" 'struct! w key)))))
    (defmethod {remove! struct!} fun)))

(define-remove! walist! walist!-remove! equal?)
(define-remove! walistq! walistq!-remove! eq?)
(define-remove! walistv! walistv!-remove! eqv?)
