(import
  :std/misc/alist
  :std/sugar
  :std/error)

(export
  walist walistq walistv walist! walistq! walistv!
  walist? walistq? walistv? walist!? walistq!? walistv!?
  make-walist make-walistq make-walistv make-walist! make-walistq! make-walistv!
  walist-alist walist-alist-set! walist->alist
  walist-acons walistq-acons walistv-acons walist-acons!
  walist-key? walistq-key? walistv-key?
  walist-get walistq-get walistv-get
  walist-assoc walistq-assoc walistv-assoc
  walist-put walistv-put walistq-put walist!-put! walistv!-put! walistq!-put!
  walist-remove walistv-remove walistq-remove walist!-remove! walistv!-remove! walistq!-remove!)

(defstruct walist (alist) transparent: #t) ;; equal?, pure
(defstruct (walistq walist) () transparent: #t) ;; eq?, pure
(defstruct (walistv walist) () transparent: #t) ;; eqv?, pure
(defstruct (walist! walist) () transparent: #t final: #t) ;; equal?, stateful
(defstruct (walistq! walistq) () transparent: #t final: #t) ;; eq?, stateful
(defstruct (walistv! walistv) () transparent: #t final: #t) ;; eqv?, stateful

(def walist->alist walist-alist)

(def (walist-acons w k v) (make-walist (acons k v (walist-alist w))))
(def (walistq-acons w k v) (make-walistq (acons k v (walist-alist w))))
(def (walistv-acons w k v) (make-walistv (acons k v (walist-alist w))))
(def (walist-acons! w k v) (set! (walist-alist w) (acons k v (walist-alist w))))
(defmethod {acons walist} walist-acons)
(defmethod {acons walistq} walistq-acons)
(defmethod {acons walistv} walistv-acons)
(defmethod {acons! walist!} walist-acons!)
(defmethod {acons! walistq!} walist-acons!)
(defmethod {acons! walistv!} walist-acons!)

(def (walist-key? w k) (pair? (assoc k (walist-alist w))))
(def (walistq-key? w k) (pair? (assq k (walist-alist w))))
(def (walistv-key? w k) (pair? (assv k (walist-alist w))))
(defmethod {key? walist} walist-key?)
(defmethod {key? walistq} walistq-key?)
(defmethod {key? walistv} walistv-key?)

(def (walist-get w k) (cdr (assoc k (walist-alist w))))
(def (walistq-get w k) (cdr (assq k (walist-alist w))))
(def (walistv-get w k) (cdr (assv k (walist-alist w))))
(defmethod {get walist} walist-get)
(defmethod {get walistq} walistq-get)
(defmethod {get walistv} walistv-get)

(def (walist-assoc w k) (assoc k (walist-alist w)))
(def (walistq-assoc w k) (assq k (walist-alist w)))
(def (walistv-assoc w k) (assv k (walist-alist w)))
(defmethod {assoc walist} walist-assoc)
(defmethod {assoc walistq} walistq-assoc)
(defmethod {assoc walistv} walistv-assoc)

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

(def (make-remove! struct! cmp)
  (lambda (w key)
    (let lp ((p (walist-alist w)) (prev #f))
      (match p
        ([[k . _] . r]
         (cond
          ((not (cmp key k)) (lp r p))
          (prev (set-cdr! prev r))
          (else (set! (walist-alist w) r))))
        ([] (void)) ; key not found: NOP
        (_ (raise-bad-argument walist-remove "valid walist" w struct! key))))))

(defrule (define-remove! struct! fun cmp)
  (begin
    (def fun (make-remove! 'struct! cmp))
    (defmethod {remove! struct!} fun)))

(define-remove! walist! walist!-remove! equal?)
(define-remove! walistq! walistq!-remove! eq?)
(define-remove! walistv! walistv!-remove! eqv?)
