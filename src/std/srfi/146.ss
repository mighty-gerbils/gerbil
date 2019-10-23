;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-146: Mappings

(import :std/srfi/1
        :std/srfi/8
        :std/srfi/9
        :std/srfi/128
        :std/srfi/145
        :std/misc/rbtree
        :std/iter)

(export mapping mapping-unfold
	    mapping/ordered mapping-unfold/ordered
	    mapping? mapping-contains? mapping-empty? mapping-disjoint?
	    mapping-ref mapping-ref/default mapping-key-comparator
	    mapping-adjoin mapping-adjoin!
	    mapping-set mapping-set!
	    mapping-replace mapping-replace!
	    mapping-delete mapping-delete! mapping-delete-all mapping-delete-all!
	    mapping-intern mapping-intern!
	    mapping-update mapping-update! mapping-update/default mapping-update!/default
	    mapping-pop mapping-pop!
	    mapping-search mapping-search!
	    mapping-size mapping-find mapping-count mapping-any? mapping-every?
	    mapping-keys mapping-values mapping-entries
	    mapping-map mapping-map->list mapping-for-each mapping-fold
	    mapping-filter mapping-filter!
	    mapping-remove mapping-remove!
	    mapping-partition mapping-partition!
	    mapping-copy mapping->alist alist->mapping alist->mapping!
	    alist->mapping/ordered alist->mapping/ordered!
	    mapping=? mapping<? mapping>? mapping<=? mapping>=?
	    mapping-union mapping-intersection mapping-difference mapping-xor
	    mapping-union! mapping-intersection! mapping-difference! mapping-xor!
	    make-mapping-comparator
	    mapping-comparator
	    mapping-min-key mapping-max-key
	    mapping-min-value mapping-max-value
	    mapping-key-predecessor mapping-key-successor
	    mapping-range= mapping-range< mapping-range> mapping-range<= mapping-range>=
	    mapping-range=! mapping-range<! mapping-range>! mapping-range<=! mapping-range>=!
	    mapping-split
	    mapping-catenate mapping-catenate!
	    mapping-map/monotone mapping-map/monotone!
	    mapping-fold/reverse
	    comparator?)

;; tree interface using rbtrees
(def (make-tree cmp)
  (make-rbtree
   (lambda (a b)
     (comparator-if<=> cmp a b -1 0 1))))

(def (tree-generator rbtree)
  (def it
    (in-rbtree rbtree))
  (lambda ()
    (let (next (iter-next! it))
      (if (eq? next iter-end)
        (begin
          (iter-fini! it)
          #!eof)
        next))))

(def (tree-map proc rbtree)
  (rbtree-fold
   (lambda (k v r)
     (rbtree-put r k v))
   (make-rbtree (rbtree-cmp rbtree ))
   rbtree))

(def (tree-fold proc iv rbtree)
  (rbtree-fold proc iv rbtree))

(def (tree-fold/reverse proc iv rbtree)
  (rbtree-foldr proc iv rbtree))

(def (tree-for-each proc rbtree)
  (rbtree-for-each proc rbtree))

(def (tree-search cmp rbtree key failure success)
  ((let/cc K
    (rbtree-for-each
     (lambda (k v)
       (comparator-if<=> cmp k key
                         (void)
                         (K (lambda ()
                              (success k v
                                       (lambda (new-key new-value obj) ; update
                                         (values
                                           (rbtree-put (rbtree-remove rbtree k)
                                                       new-key new-value)
                                           obj))
                                       (lambda (obj) ; remove
                                         (values
                                           (rbtree-remove rbtree k)
                                           obj)))))
                         (K (lambda ()
                              (failure k v
                                       (lambda (value obj) ; insert
                                         (values
                                           (rbtree-put rbtree key value)
                                           obj))
                                       (lambda (obj) ; ignore
                                         (values rbtree obj)))))))
     rbtree))))

(def (tree-catenate rbtree1
					pivot-key
					pivot-value
					rbtree2)
  (rbtree-fold
   (lambda (k v r)
     (rbtree-put r k v))
   (rbtree-put rbtree1 pivot-key pivot-value)
   rbtree2))

(def (tree-split cmp rbtree obj)
  (def tree<
    (make-tree cmp))
  (def tree<=
    (make-tree cmp))
  (def tree=
    (make-tree cmp))
  (def tree>=
    (make-tree cmp))
  (def tree>
    (make-tree cmp))

  (rbtree-for-each
   (lambda (k v)
     (comparator-if<=> cmp k obj
                       (begin
                         (rbtree-put! tree< k v)
                         (rbtree-put! tree<= k v))
                       (begin
                         (rbtree-put! tree<= k v)
                         (rbtree-put! tree= k v)
                         (rbtree-put! tree>= k v))
                       (begin
                         (rbtree-put! tree>= k v)
                         (rbtree-put! tree> k v))))
   rbtree)

  (values tree<
          tree<=
          tree=
          tree>=
          tree>))


(def (tree-key-predecessor cmp rbtree obj failure)
  ((let/cc K
     (def prev #f)
     (rbtree-for-each
      (lambda (k v)
        (comparator-if<=> cmp k obj
                          (set! prev k)
                          (K (if prev (lambda () prev) failure))
                          failure))
      rbtree)
     failure)))

(def (tree-key-successor cmp rbtree obj failure)
  ((let/cc K
     (def suc #f)
     (rbtree-for-each
      (lambda (k v)
        (comparator-if<=> cmp k obj
                          failure
                          (K (if suc (lambda () suc) failure))
                          (set! suc k)))
      rbtree)
     failure)))

(include "srfi-146.scm")
