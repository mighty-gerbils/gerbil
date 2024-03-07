;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-1: list library

(import :std/error
        ./srfi-support
        ./8)
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
  map
  for-each
  member
  assoc

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

(include "srfi-1.scm")
