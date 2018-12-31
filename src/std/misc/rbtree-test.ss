;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/misc/rbtree test

(import :std/misc/rbtree
        :std/test)
(export rbtree-test)

(def rbtree-test
  (test-suite "test :std/misc/rbtree"
    (test-case "test rbtree ops"
      (def t (rbtree -))
      (check (rbtree-empty? t) => #t)
      (rbtree-put! t 1 'a)
      (check (rbtree-empty? t) => #f)
      (check (rbtree-ref t 1) => 'a)
      (rbtree-put! t 3 'c)
      (check (rbtree-ref t 3) => 'c)
      (rbtree-put! t 2 'b)
      (check (rbtree-ref t 2) => 'b)
      (rbtree-put! t 5 'e)
      (check (rbtree-ref t 5) => 'e)
      (rbtree-put! t 4 'd)
      (check (rbtree-ref t 4) => 'd)
      (check (rbtree->listr t) => '((5 . e) (4 . d) (3 . c) (2 . b) (1 . a)))
      (rbtree-remove! t 10)
      (check (rbtree->listr t) => '((5 . e) (4 . d) (3 . c) (2 . b) (1 . a)))
      (rbtree-remove! t 3)
      (check (rbtree-get t 3) => #f)
      (check (rbtree->listr t) => '((5 . e) (4 . d) (2 . b) (1 . a)))
      (rbtree-remove! t 1)
      (check (rbtree-get t 1) => #f)
      (check (rbtree->listr t) => '((5 . e) (4 . d) (2 . b)))
      (rbtree-remove! t 4)
      (check (rbtree-get t 4) => #f)
      (check (rbtree->listr t) => '((5 . e) (2 . b)))
      (rbtree-remove! t 2)
      (check (rbtree-get t 2) => #f)
      (check (rbtree->listr t) => '((5 . e)))
      (rbtree-remove! t 5)
      (check (rbtree-get t 5) => #f)
      (check (rbtree->listr t) => '())
      (check (rbtree-empty? t) => #t))))
