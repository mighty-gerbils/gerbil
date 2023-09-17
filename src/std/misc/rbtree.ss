;;; -*- Gerbil -*-
;;; © vyzo
;;; red-black trees
;;; Based on Ivan Raikov's chicken implementation which is in turn based on
;;; the SML/NJ library implementation, which is in turn based on Chris Okasaki's
;;; implementation; delete is based on CLR...

(import :std/error
        :std/generic
        :std/iter)
(export rbtree rbtree? make-rbtree
        rbtree-ref rbtree-get
        rbtree-put! rbtree-put
        rbtree-update! rbtree-update
        rbtree-remove! rbtree-remove
        rbtree-empty?
        rbtree-copy
        rbtree-for-each
        rbtree-for-eachr
        rbtree-fold
        rbtree-foldr
        rbtree->list
        rbtree->listr
        list->rbtree
        string-cmp
        symbol-cmp
        symbol-hash-cmp
        rbtree-cmp
        in-rbtree
        in-rbtree-keys
        in-rbtree-values)

;; rbtree structure
(defstruct rbtree (root cmp)
  final: #t constructor: :init!)

(defmethod {:init! rbtree}
  (lambda (self cmp (root +empty+))
    (struct-instance-init! self root cmp)))

(def (rbtree-ref t key (default absent-obj))
  (with ((rbtree root cmp) t)
    (let (r (tree-ref cmp root key default))
      (if (eq? r absent-obj)
        (raise-key-error 'rbtree-ref t key)
        r))))

(def (rbtree-get t key)
  (rbtree-ref t key #f))

(def (rbtree-put! t key value)
  (with ((rbtree root cmp) t)
    (set! (rbtree-root t)
      (tree-insert cmp root key value))))

(def (rbtree-put t key value)
  (with ((rbtree root cmp) t)
    (rbtree cmp (tree-insert cmp root key value))))

(def (rbtree-update! t key update (default (void)))
  (let (value (rbtree-ref t key default))
    (rbtree-put! t key (update value))))

(def (rbtree-update t key update (default (void)))
  (let (value (rbtree-ref t key default))
    (rbtree-put t key (update value))))

(def (rbtree-remove! t key)
  (with ((rbtree root cmp) t)
    (cond
     ((tree-delete cmp root key)
      => (lambda (new-root)
           (set! (rbtree-root t) new-root))))))

(def (rbtree-remove t key)
  (with ((rbtree root cmp) t)
    (cond
     ((tree-delete cmp root key)
      => (lambda (new-root)
           (rbtree cmp new-root)))
     (else t))))

(def (rbtree-empty? t)
  (with ((rbtree root) t)
    (Empty? root)))

(def (rbtree-copy t)
  (with ((rbtree root cmp) t)
    (rbtree cmp root)))

(def (rbtree-for-each proc t)
  (with ((rbtree root) t)
    (let loop ((root root))
      (match root
        ((Tree _ left right key value)
         (loop left)
         (proc key value)
         (loop right))
        ((Empty)
         (void))))))

(def (rbtree-for-eachr proc t)
  (with ((rbtree root) t)
    (let loop ((root root))
      (match root
        ((Tree _ left right key value)
         (loop right)
         (proc key value)
         (loop left))
        ((Empty)
         (void))))))

(def (rbtree-fold proc iv t)
  (let (r iv)
    (rbtree-for-each
     (lambda (k v)
       (set! r (proc k v r)))
     t)
    r))

(def (rbtree-foldr proc iv t)
  (let (r iv)
    (rbtree-for-eachr
     (lambda (k v)
       (set! r (proc k v r)))
     t)
    r))

(def (rbtree->list t)
  (rbtree-foldr
   (lambda (k v r) (cons (cons k v) r))
   [] t))

(def (rbtree->listr t)
  (rbtree-fold
   (lambda (k v r) (cons (cons k v) r))
   [] t))

(def (list->rbtree cmp lst)
  (let (t (rbtree cmp))
    (for-each
      (match <>
        ([k . v] (rbtree-put! t k v)))
      lst)
    t))

;;; iterators
(defmethod (:iter (rbt rbtree))
  (in-rbtree rbt))

(def (in-rbtree rbt)
  (def (iterate)
    (rbtree-for-each yield rbt))
  (in-coroutine iterate))

(def (in-rbtree-keys rbt)
  (def (iterate)
    (rbtree-for-each (lambda (k v) (yield k)) rbt))
  (in-coroutine iterate))

(def (in-rbtree-values rbt)
  (def (iterate)
    (rbtree-for-each (lambda (k v) (yield v)) rbt))
  (in-coroutine iterate))

;;; common comparison functions
(def (string-cmp a b)
  (let* ((len-a (string-length a))
         (len-b (string-length b))
         (len (##fxmin len-a len-b)))
    (let lp ((i 0))
      (if (##fx< i len)
        (let ((ca (##string-ref a i))
              (cb (##string-ref b i)))
          (if (eq? ca cb)
            (lp (##fx+ i 1))
            (##fx- (##char->integer ca) (##char->integer cb))))
        (##fx- len-a len-b)))))

(def (symbol-cmp a b)
  (if (eq? a b)
    0
    (string-cmp (symbol->string a) (symbol->string b))))

(def (symbol-hash-cmp a b)
  (if (eq? a b)
    0
    (let* ((ha (symbol-hash a))
           (hb (symbol-hash b))
           (ha-hb (##fx- ha hb)))
      (if (##fxzero? ha-hb)
        (string-cmp (symbol->string a) (symbol->string b))
        ha-hb))))


;;; tree implementation

;; tree nodes
(defstruct Empty ()
  final: #t)
(defstruct Tree (color left right key value)
  final: #t)

(def +empty+ (Empty))

;; zippers
(defstruct Top ()
  final: #t)
(defstruct Left (color key value tree zipper)
  final: #t)
(defstruct Right (color key value tree zipper)
  final: #t)

(defrules dispatch-on-key ()
  ((_ cmp e- e= e+)
   (let (r cmp)
     (cond
      ((negative? r) e-)
      ((zero? r) e=)
      (else e+)))))

(def (tree-insert cmp root key value)
  (let ins ((root root))
    (match root
      ((Empty)
       (Tree 'red +empty+ +empty+ key value))
      ((Tree color a b yk y)
       (dispatch-on-key (cmp key yk)
         ;; Case 1: key < yk
         (match a
           ((Tree 'red c d zk z)
            (dispatch-on-key (cmp key zk)
              ;; Case 1.1: key < zk
              (let (c1 (ins c))
                (match c1
                  ((Tree 'red e f wk w)
                   (Tree 'red (Tree 'black e f wk w) (Tree 'black d b yk y) zk z))
                  (else
                   (Tree 'black (Tree 'red c1 d zk z) b yk y))))
              ;; Case 1.2: key = zk
              (Tree color (Tree 'red c d key value) b yk y)
              ;; Case 1.3: key > zk
              (let (d1 (ins d))
                (match d1
                  ((Tree 'red e f wk w)
                   (Tree 'red (Tree 'black c e zk z) (Tree 'black f b yk y) wk w))
                  (else
                   (Tree 'black (Tree 'red c d1 zk z) b yk y))))))
           (else
            (let (a1 (ins a))
              (Tree 'black a1 b yk y))))
         ;; Case 2: key = yk
         (Tree color a b key value)
         ;; Case 3: key > yk
         (match b
           ((Tree 'red c d zk z)
            (dispatch-on-key (cmp key zk)
              ;; Case 3.1: key < zk
              (let (c1 (ins c))
                (match c1
                  ((Tree 'red e f wk w)
                   (Tree 'red (Tree 'black a e yk y) (Tree 'black f d zk z) wk w))
                  (else
                   (Tree 'black a (Tree 'red c1 d zk z) yk y))))
              ;; Case 3.2: key = zk
              (Tree color a (Tree 'red c d key value) yk y)
              ;; Case 3.3: key > zk
              (let (d1 (ins d))
                (match d1
                  ((Tree 'red e f wk w)
                   (Tree 'red (Tree 'black a c yk y) (Tree 'black e f wk w) zk z))
                  (else
                   (Tree 'black a (Tree 'red c d1 zk z) yk y))))))
            (else
             (let (b1 (ins b))
               (Tree 'black a b1 yk y)))))))))

(def (tree-ref cmp root key default)
  (let loop ((root root))
    (match root
      ((Empty) default)
      ((Tree c a b yk y)
       (dispatch-on-key (cmp key yk)
         (loop a)
         y
         (loop b))))))

(def (tree-delete cmp root key)
  (def (zip zipper tree)
    (match zipper
      ((Top) tree)
      ((Left color xk x b z)
       (zip z (Tree color tree b xk x)))
      ((Right color xk x a z)
       (zip z (Tree color a tree xk x)))))

  ;; bbZip propagates a black deficit up the tree until either
  ;; the top is reached, or the deficit can be covered.  It
  ;; returns a boolean that is true if there is still a deficit
  ;; and the zipped tree.
  (def (bbZip zipper tree)
    (match zipper
      ((Top)
       (cons #t tree))
      ;; case 1L
      ((Left 'black xk x (Tree 'red c d yk y) z)
       (bbZip (Left 'red xk x c (Left 'black yk y d z)) tree))
      ;; case 3L
      ((Left color xk x (Tree 'black (Tree 'red c d yk y) e wk w) z)
       (bbZip (Left color xk x (Tree 'black c (Tree 'red d e wk w) yk y) z) tree))
      ;; case 4L
      ((Left color xk x (Tree 'black c (Tree 'red d e wk w) yk y) z)
       (cons #f (zip z (Tree color (Tree 'black tree c xk x) (Tree 'black d e wk w) yk y))))
      ;; case 2L
      ((Left 'red xk x (Tree 'black c d yk y) z)
       (cons #f (zip z (Tree 'black tree (Tree 'red c d yk y) xk x))))
      ;; case 2L
      ((Left 'black xk x (Tree 'black c d yk y) z)
       (bbZip z (Tree 'black tree (Tree 'red c d yk y) xk x)))
      ;; case 1R
      ((Right color xk x (Tree 'red c d yk y) z)
       (bbZip (Right 'red xk x d (Right 'black yk y c z)) tree))
      ;; case 3R
      ((Right color xk x (Tree 'black (Tree 'red c d wk w) e yk y) z)
       (bbZip (Right color xk x (Tree 'black c (Tree 'red d e yk y) wk w) z) tree))
      ;; case 4R
      ((Right color xk x (Tree 'black c (Tree 'red d e wk w) yk y) z)
       (cons #f (zip z (Tree color c (Tree 'black (Tree 'red d e wk w) tree xk x) yk y))))
      ;; case 2R
      ((Right 'red xk x (Tree 'black c d yk y) z)
       (cons #f (zip z (Tree 'black (Tree 'red c d yk y) tree xk x))))
      ;; case 2R
      ((Right 'black xk x (Tree 'black c d yk y) z)
       (bbZip z (Tree 'black (Tree 'red c d yk y) tree xk x)))
      (else
       (cons #f (zip zipper tree)))))

  (def (delMin tree z)
    (match tree
      ((Tree 'red (Empty) b yk y)
       (values yk y (cons #f (zip z b))))
      ((Tree 'black (Empty) b yk y)
       (values yk y (bbZip z b)))
      ((Tree color a b yk y)
       (delMin a (Left color yk y b z)))))

  (def (join color a b z)
    (match* (color a b z)
      (('red (Empty) (Empty) z)
       (zip z (Empty)))
      ((_ a (Empty) z)
       (cdr (bbZip z a)))
      ((_ (Empty) b z)
       (cdr (bbZip z b)))
      (else
       (let ((values xk x b) (delMin b (Top)))
         (with ([r . b1] b)
           (if r
             (cdr (bbZip z (Tree color a b1 xk x)))
             (zip z (Tree color a b1 xk x))))))))

  (def (del tree key z)
    (match tree
      ((Empty) #f)
      ((Tree color a b yk y)
       (dispatch-on-key (cmp key yk)
         (del a key (Left color yk y b z))
         (join color a b z)
         (del b key (Right color yk y a z))))))

  (del root key (Top)))
