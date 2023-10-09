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

(def (walist-acons w k v) (with ((walist a) w) (make-walist (acons k v a))))
(def (walistq-acons w k v) (with ((walistq a) w) (make-walistq (acons k v a))))
(def (walistv-acons w k v) (with ((walistv a) w) (make-walistv (acons k v a))))
(def (walist-acons! w k v) (set! (walist-alist w) (acons k v (walist-alist w))))
(defmethod {acons walist} walist-acons)
(defmethod {acons walistq} walistq-acons)
(defmethod {acons walistv} walistv-acons)
(defmethod {acons! walist!} walist-acons!)
(defmethod {acons! walistq!} walist-acons!)
(defmethod {acons! walistv!} walist-acons!)

(def (walist-key? w k) (with ((walist a) w) (pair? (assoc k a))))
(def (walistq-key? w k) (with ((walistq a) w) (pair? (assq k a))))
(def (walistv-key? w k) (with ((walistv a) w) (pair? (assv k a))))
(defmethod {key? walist} walist-key?)
(defmethod {key? walistq} walistq-key?)
(defmethod {key? walistv} walistv-key?)

(def (walist-get w k) (with ((walist a) w) (cdr (assoc k a))))
(def (walistq-get w k) (with ((walistq a) w) (cdr (assq k a))))
(def (walistv-get w k) (with ((walistv a) w) (cdr (assv k a))))
(defmethod {get walist} walist-get)
(defmethod {get walistq} walistq-get)
(defmethod {get walistv} walistv-get)

(def (walist-assoc w k) (with ((walist a) w) (assoc k a)))
(def (walistq-assoc w k) (with ((walistq a) w) (assq k a)))
(def (walistv-assoc w k) (with ((walistv a) w) (assv k a)))
(defmethod {assoc walist} walist-assoc)
(defmethod {assoc walistq} walistq-assoc)
(defmethod {assoc walistv} walistv-assoc)

(def (walist-put w k v) (with ((walist a) w) (make-walist (aset a k v))))
(def (walistq-put w k v) (with ((walistq a) w) (make-walistq (asetq a k v))))
(def (walistv-put w k v) (with ((walistv a) w) (make-walistv (asetv a k v))))
(defmethod {put walist} walist-put)
(defmethod {put walistq} walistq-put)
(defmethod {put walistv} walistv-put)

(def (walist-remove w k) (with ((walist a) w) (make-walist (arem k a))))
(def (walistq-remove w k) (with ((walistq a) w) (make-walistq (aremq k a))))
(def (walistv-remove w k) (with ((walistv a) w) (make-walistv (aremv k a))))
(defmethod {remove walist} walist-remove)
(defmethod {remove walistq} walistq-remove)
(defmethod {remove walistv} walistv-remove)

(defrule (define-put! struct! fun cmp)
  (begin
    (def (fun w key val)
      (with ((struct! alist!) w)
        (let lp ((l alist!))
          (match l
            ([kv . r] (if (cmp key (car kv))
                        (set-cdr! kv val)
                        (lp r)))
            ([] (match alist!
                  ([k1v1 . r]
                   (set-car! alist! [key . val])
                   (set-cdr! alist! [k1v1 . r]))
                  ([] (set! (walist-alist w) [[key . val]]))))))))
    (defmethod {put! struct!} fun)))

(define-put! walist! walist!-put! equal?)
(define-put! walistq! walistq!-put! eq?)
(define-put! walistv! walistv!-put! eqv?)

(defrule (define-remove! struct! fun cmp)
  (begin
    (def (fun w key)
      (with ((struct! alist!) w)
        (let lp ((p alist!) (prev #f))
          (match p
            ([[k . _] . r]
             (cond
              ((not (cmp key k)) (lp r p))
              (prev (set-cdr! prev r))
              (else (set! (walist-alist w) r))))
            ([] (void)) ; key not found: NOP
            (_ (raise-bad-argument walist-remove "valid walist" w 'struct! key))))))
    (defmethod {remove! struct!} fun)))

(define-remove! walist! walist!-remove! equal?)
(define-remove! walistq! walistq!-remove! eq?)
(define-remove! walistv! walistv!-remove! eqv?)
