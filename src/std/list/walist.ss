;;; -*- Gerbil -*-
;;; © vyzo, fare
;;; wrapped associative lists
(import :std/error
        :std/interface
        ./alist)
(export
  AList AList?
  PureAList PureAList?
  MutAList MutAList?
  __walist
  __walistq
  __walistv
  __walist!
  __walistq!
  __walistv!
  walist
  walistq
  walistv
  walist!
  walistq!
  walistv!
  walist->list
  wanull
  wanullq
  wanullv
  wanull!
  wanullq!
  wanullv!
  wanull?
  wacollect
  wacollectq
  wacollectv
  wacollect!
  wacollectq!
  wacollectv!
  wacons
  wacons!
  wassoc
  wakey?
  waref
  waget
  waput
  waput!
  waremove
  waremove!)

(defstruct AList ()
  transparent: #t)

(defstruct (ConcreteAList AList) ((alist :- :list))
  transparent: #t)

(defstruct (PureAList ConcreteAList AList) ()
  transparent: #t)
(defstruct (MutAList ConcreteAList AList) ()
  transparent: #t)

(defstruct (WAList PureAList) ()
  transparent: #t
  final: #t)
(defstruct (WAListq PureAList) ()
  transparent: #t
  final: #t)
(defstruct (WAListv PureAList) ()
  transparent: #t
  final: #t)

(defstruct (MutWAList MutAList) ()
  transparent: #t
  final: #t)
(defstruct (MutWAListq MutAList) ()
  transparent: #t
  final: #t)
(defstruct (MutWAListv MutAList) ()
  transparent: #t
  final: #t)

;; alist ops interface
(interface AListOps
  (wrap) => :procedure
  (test) => :procedure
  (assoc k) => :t)

(interface PureAListOps
  (cons k v) => PureAList)

(interface MutAListOps
  (cons! k v) => :void)

(defcall-interface-method AListOps wrap
  (__wa-wrap obj)
  :- :procedure)

(defcall-interface-method AListOps test
  (__wa-test obj)
  :- :procedure)

(defcall-interface-method AListOps assoc
  (__wa-assoc obj k))

(defcall-interface-method PureAListOps cons
  (__wa-cons obj k v)
  :- PureAList)

(defcall-interface-method MutAListOps cons!
  (__wa-cons! obj k v)
  :- :void)

;; low level constructor
(defrule (deflist proc klass)
  (def (proc (lst :- :list)) => klass
    (klass lst)))

(deflist ___walist   WAList)
(deflist ___walistq  WAListq)
(deflist ___walistv  WAListv)
(deflist ___walist!  MutWAList)
(deflist ___walistq! MutWAListq)
(deflist ___walistv! MutWAListv)

;; safe constructor
(defrule (deflist/check proc klass kons)
  (def (proc (lst : :list)) => klass
    (if (alist? lst)
      (kons lst)
      (raise-bad-argument proc "associative list" lst))))

(deflist/check walist   WAList     ___walist)
(deflist/check walistq  WAListq    ___walistq)
(deflist/check walistv  WAListv    ___walistv)
(deflist/check walist!  MutWAList  ___walist!)
(deflist/check walistq! MutWAListq ___walistq!)
(deflist/check walistv! MutWAListv ___walistv!)

(defrule (defcollect macro wrap)
  (defrule (macro arg (... ...))
    (wrap (collect-alist arg (... ...)))))

(defrules collect-alist ()
  ((_) [])
  ((_ k v . rest)
   (cons (cons k v) (collect-alist . rest))))

(defcollect wacollect   __walist)
(defcollect wacollectq  __walistq)
(defcollect wacollectv  __walistv)
(defcollect wacollect!  __walist)
(defcollect wacollectq! __walistq)
(defcollect wacollectv! __walistv)

;; list extraction
(def walist->list ConcreteAList-alist)

;; null constructors
(def ___wanull  (___walist  []))
(def ___wanullq (___walistq []))
(def ___wanullv (___walistv []))

(def (wanull)  => WAList  ___wanull)
(def (wanullq) => WAListq ___wanullq)
(def (wanullv) => WAListv ___wanullv)

(def (wanull!)  => MutWAList  (___walist!  []))
(def (wanullq!) => MutWAListq (___walistq! []))
(def (wanullv!) => MutWAListv (___walistv! []))

;; predicates
(def (wanull? obj)
  (and (ConcreteAList? obj)
       (using (w obj :- ConcreteAList)
         (null? w.alist))))

;; extension constructors
(defrule (@undefined-method where method)
  (lambda args (raise-unsupported-method where method args: args)))

(def (wacons (wa : PureAList) k v)
  => PureAList
  (__wa-cons wa k v))

(def (wacons! (wa : MutAList) k v)
  => MutAList
  (__wa-cons! wa k v)
  wa)

(def (wassoc (wa : AList) k)
  ;; => Maybe :pair
  (__wa-assoc wa k))

(def (wakey? (w : ConcreteAList) k) => :boolean
  (if (wassoc w k) #t #f))

(def (waref (w : ConcreteAList) k default)
  (cond
   ((wassoc w k) => ##cdr)
   (else default)))

(def (waget (w : ConcreteAList) k)
  (waref w k #f))

(def (waput (w : PureAList) k v) => PureAList
  (: (let* ((op-test (__wa-test w))
            (testf
             (lambda ((p :- :pair) k)
               (op-test (car p) k)))
            (wrapf (__wa-wrap w)))
       (wrapf
        (let/cc return
          (let loop ((rest w.alist))
            (match rest
              ([hd . rest]
               (if (testf hd k)
                 (cons (cons k v) rest)
                 (cons hd (loop rest))))
              (else
               (return (cons (cons k v) w.alist))))))))
     PureAList))

(def (waput! (w : MutAList) k v) => MutAList
  (let* ((op-test (__wa-test w))
         (testf
          (lambda ((p :- :pair) k)
            (op-test (car p) k))))
    (using (front w.alist :- :list)
      (if (pair? front)
        (if (testf (car front) k)
          (set! (cdr (car front)) v)
          (let loop ((rest (cdr front)) (prev front))
            (match rest
              ([hd . tl]
               (if (testf hd k)
                 (set! (cdr hd) v)
                 (loop tl rest)))
              (else
               (set! w.alist (cons (cons k v) w.alist))))))
        (set! w.alist [(cons k v)])))
    w))

(def (waremove (w : PureAList) k) => PureAList
  (let* ((op-test (__wa-test w))
         (testf
          (lambda ((p :- :pair) k)
            (op-test (car p) k)))
        (wrapf (__wa-wrap w)))
    (let loop ((rest w.alist) (pre []))
      => PureAList
      (match rest
        ([hd . tl]
         (if (testf hd k)
           (:- (wrapf (foldl cons tl pre)) PureAList)
           (loop tl (cons hd pre))))
        (else w)))))

(def (waremove! (w : MutAList) k) => MutAList
  (let* ((op-test (__wa-test w))
         (testf
          (lambda ((p :- :pair) k)
            (op-test (car p) k))))
    (using (front w.alist :- :list)
      (when (pair? front)
        (if (testf (car front) k)
          (set! w.alist (:- (cdr front) :list))
          (let loop ((rest (cdr front)) (prev front))
            (match rest
              ([hd . tl]
               (if (testf hd k)
                 (set! (cdr prev) tl)
                 (loop tl rest)))
              (else (void))))))
      w)))

(implement
  (AListOps
   (WAList
    (wrap  (lambda (self) __walist))
    (test  (lambda (self) equal?))
    (assoc (lambda (self k) (assoc k self.alist))))
   (WAListq
    (wrap  (lambda (self) __walistq))
    (test  (lambda (self) eq?))
    (assoc (lambda (self k) (assq k self.alist))))
   (WAListv
    (wrap  (lambda (self) __walistv))
    (test  (lambda (self) eqv?))
    (assoc (lambda (self k) (assv k self.alist))))
   (MutWAList
    (wrap  (lambda (self) __walist!))
    (test  (lambda (self) equal?))
    (assoc (lambda (self k) (assoc k self.alist))))
   (MutWAListq
    (wrap  (lambda (self) __walistq!))
    (test  (lambda (self) eq?))
    (assoc (lambda (self k) (assq k self.alist))))
   (MutWAListv
    (wrap  (lambda (self) __walistv!))
    (test  (lambda (self) eqv?))
    (assoc (lambda (self k) (assv k self.alist)))))
  (PureAListOps
   (WAList
    (cons  (lambda (self k v) (WAList (cons (cons k v) self.alist)))))
   (WAListq
    (cons  (lambda (self k v) (WAListq (cons (cons k v) self.alist)))))
   (WAListv
    (cons  (lambda (self k v) (WAListv (cons (cons k v) self.alist))))))
  (MutAListOps
   (MutWAList
    (cons!  (lambda (self k v) (set! self.alist (cons (cons k v) self.alist)))))
   (MutWAListq
    (cons!  (lambda (self k v) (set! self.alist (cons (cons k v) self.alist)))))
   (MutWAListv
    (cons!  (lambda (self k v) (set! self.alist (cons (cons k v) self.alist)))))))
