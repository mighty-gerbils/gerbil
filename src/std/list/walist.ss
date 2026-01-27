;;; -*- Gerbil -*-
;;; © vyzo, fare
;;; wrapped associative lists
(import :std/error)
(export
  AList AList?
  PureAList PureAList?
  MutAList MutAList?
  walist
  walistq
  walistv
  walist!
  walistq!
  walistv!
  __walist
  __walistq
  __walistv
  __walist!
  __walistq!
  __walistv!
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

(defclass AList ()
  transparent: #t)

(defstruct ConcreteAList ((alist :- :list) (t :- :fixnum))
  print: (alist t)
  equal: #t)

(defstruct (PureAList AList ConcreteAList) ()
  transparent: #t)
(defstruct (MutAList AList ConcreteAList) ()
  transparent: #t)

(defstruct (WAList PureAList) ()
  name: AList
  transparent: #t
  acyclic: #t
  final: #t)
(defstruct (WAListq PureAList) ()
  name: AList
  transparent: #t
  acyclic: #t
  final: #t)
(defstruct (WAListv PureAList) ()
  name: AList
  transparent: #t
  acyclic: #t
  final: #t)

(defstruct (MutWAList MutAList) ()
  name: AList
  transparent: #t
  final: #t)
(defstruct (MutWAListq MutAList) ()
  name: AList
  transparent: #t
  final: #t)
(defstruct (MutWAListv MutAList) ()
  name: AList
  transparent: #t
  final: #t)

;; low level constructor
(defrule (deflist proc klass t)
  (def (proc (lst :- :list)) => klass
    (klass lst t)))

(deflist ___walist   WAList     0)
(deflist ___walistq  WAListq    1)
(deflist ___walistv  WAListv    2)
(deflist ___walist!  MutWAList  3)
(deflist ___walistq! MutWAListq 4)
(deflist ___walistv! MutWAListv 5)

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

(def ___wrap
  (vector
   ___walist
   ___walistq
   ___walistv
   ___walist!
   ___walistq!
   ___walistv!))

(def (___wawrap t)
  (declare (not safe))
  (vector-ref ___wrap t))

(def ___test
  (vector
   equal?
   eq?
   eqv?
   equal?
   eq?
   eqv?))

(def (___watest t)
  (declare (not safe))
  (vector-ref ___test t))

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

(defrule (defalist-method (proc arg ...)
           return
           table
           (walist-method
            walistq-method
            walistv-method
            walist!-method
            walistq!-method
            walistv!-method))
  (begin
    (def table
      (vector
       (alist-method walist-method   proc walist)
       (alist-method walistq-method  proc walistq)
       (alist-method walistv-method  proc walistv)
       (alist-method walist!-method  proc walist!)
       (alist-method walistq!-method proc walistq!)
       (alist-method walistv!-method proc walistv!)))
    (def (proc (w : ConcreteAList) arg ...) => return
      (declare (not safe))
      (:- ((vector-ref ___acons w.t) w arg ...) return))))

(defrules alist-method ()
  ((_ undefined where wamethod)
   (underscore? #'undefined)
   (@undefined-method where wamethod))
  ((_ proc where wamethod)
   proc))

(defrule (defacons proc klass)
  (def (proc (w :- klass) k v) => klass
    (klass (cons (cons k v) w.alist) w.t)))

(defacons ___walist-acons  WAList)
(defacons ___walistq-acons WAListq)
(defacons ___walistv-acons WAListv)

(defalist-method (wacons k v)
  PureAList
   ___acons
  (___walist-acons
   ___walistq-acons
   ___walistv-acons
   _ _ _))

(defrule (defacons! proc klass)
  (def (proc (w :- klass) k v)
    (declare (not safe))
    (set! w.alist (cons (cons k v) w.alist))
    w))

(defacons! ___walist-acons!  MutWAList)
(defacons! ___walistq-acons! MutWAListq)
(defacons! ___walistv-acons! MutWAListv)

(defalist-method (wacons! k v)
  MutAList
  ___acons!
  (_ _ _
     ___walist-acons!
     ___walistq-acons!
     ___walistv-acons!))

(defrule (defassoc proc klass assf)
  (def (proc (w :- klass) k)
    (assf w.alist k)))

(defassoc ___walist-assoc   WAList     assoc)
(defassoc ___walistq-assoc  WAListq    assq)
(defassoc ___walistv-assoc  WAListv    assv)
(defassoc ___walist!-assoc  MutWAList  assoc)
(defassoc ___walistq!-assoc MutWAListq assq)
(defassoc ___walistv!-assoc MutWAListv assv)

(defalist-method (wassoc k)
  :t
  ___assoc
  (___walist-assoc
   ___walistq-assoc
   ___walistv-assoc
   ___walist!-assoc
   ___walistq!-assoc
   ___walistv!-assoc))

(def (wakey? (w : ConcreteAList) k) => :boolean
  (if (wassoc w k) #t #f))

(def (waref (w : ConcreteAList) k default)
  (cond
   ((wassoc w k) => ##cdr)
   (else default)))

(def (waget (w : ConcreteAList) k)
  (waref w k #f))

(def (waput (w : PureAList) k v) => PureAList
  (wacons (waremove w k) k v))

(def (waput! (w : MutAList) k v) => MutAList
  (cond
   ((wassoc w k)
    => (lambda ((p :- :pair)) => MutAList
         (set! (cdr p) v)
         w))
   (else
    (wacons! w k v))))

(def (waremove (w : PureAList) k) => PureAList
  (let (testf
        (using (testf (___watest w.t) :- :procedure)
          (lambda ((p :- :pair) k)
            (testf (car p) k))))
    (let loop ((rest w.alist) (pre []))
      => PureAList
      (match rest
        ([hd . tl]
         (if (testf hd k)
           (using (wrap (___wawrap w.t) :- :procedure)
             (:- (wrap (foldl cons tl pre)) PureAList))
           (loop tl (cons hd pre))))
        (else w)))))

(def (waremove! (w : MutAList) k) => MutAList
  (let (testf
        (using (testf (___watest w.t) :- :procedure)
          (lambda ((p :- :pair) k)
            (testf (car p) k))))
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
