;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-1: list library

(import ./srfi-support ./8)
(export
  ;; gambit runtime
  cons list
  pair? null?
  length append reverse
  car cdr set-car! set-cdr!
  caar cadr cdar cddr
  caaar cadar caadr caddr
  cdaar cddar cdadr cdddr
  caaaar caadar caaadr caaddr
  cadaar caddar cadadr cadddr
  cdaaar cdadar cdaadr cdaddr
  cddaar cdddar cddadr cddddr
  list-ref
  memq memv
  assq assv

  ;; gerbil runtime
  cons* make-list iota
  last last-pair
  (rename: foldl fold)
  (rename: foldr fold-right)
  filter filter-map find

  ;; specialized dispatch implementation
  (rename: srfi-1-map map)
  (rename: srfi-1-for-each for-each)
  (rename: srfi-1-member member)
  (rename: srfi-1-assoc assoc)

  ;; olin's implementation
  xcons tree-copy list-tabulate list-copy
  proper-list? circular-list? dotted-list? not-pair? null-list? list=
  circular-list length+
  first second third fourth fifth sixth seventh eighth ninth tenth
  car+cdr
  take       drop
  take-right drop-right
  take!      drop-right!
  split-at   split-at!
  last last-pair
  zip unzip1 unzip2 unzip3 unzip4 unzip5
  count

  append! append-reverse append-reverse! concatenate concatenate!
  unfold        pair-fold       reduce
  unfold-right  pair-fold-right reduce-right
  append-map append-map! map! pair-for-each map-in-order
  partition  remove
  filter! partition! remove!
  find-tail any every list-index
  take-while drop-while take-while!
  span break span! break!
  delete delete!
  alist-cons alist-copy
  delete-duplicates delete-duplicates!
  alist-delete alist-delete!
  reverse!
  lset<= lset= lset-adjoin
  lset-union  lset-intersection  lset-difference  lset-xor  lset-diff+intersection
  lset-union! lset-intersection! lset-difference! lset-xor! lset-diff+intersection!)

(declare (fixnum))

(def* srfi-1-map
  ((f lst) (map f lst))
  ((f lst1 lst2) (map2 f lst1 lst2))
  ((f lst1 lst2 . lsts)
   (apply mapN f lst1 lst2 lsts)))

(def (map2 f lst1 lst2)
  (let recur ((rest1 lst1) (rest2 lst2))
    (match* (rest1 rest2)
      (([x1 . rest1] [x2 . rest2])
       (cons (f x1 x2) (recur rest1 rest2)))
      (else []))))

(def (mapN f . lsts)
  (let recur ((rest lsts))
    (if (andmap pair? rest)
      (cons (apply f (map car rest))
            (recur (map cdr rest)))
      [])))

(def* srfi-1-for-each
  ((f lst) (for-each f lst))
  ((f lst1 lst2)
   (for-each2 f lst1 lst2))
  ((f lst1 lst2 . lsts)
   (apply for-eachN f lst1 lst2 lsts)))

(def (for-each2 f lst1 lst2)
  (let lp ((rest1 lst1) (rest2 lst2))
    (match* (rest1 rest2)
      (([x1 . rest1] [x2 . rest2])
       (f x1 x2)
       (lp rest1 rest2))
      (else (void)))))

(def (for-eachN f . lsts)
  (let lp ((rest lsts))
    (when (andmap pair? rest)
      (apply f (map car rest))
      (lp (map cdr rest)))))

(def* srfi-1-assoc
  ((x lst)
   (assoc x lst))
  ((x lst eqf)
   (find (lambda (p) (eqf (car p) x)) lst)))

(def* srfi-1-member
  ((x lst)
   (member x lst))
  ((x lst eqf)
   (find-tail (cut eqf <> x) lst)))

(include "srfi-1.scm")
