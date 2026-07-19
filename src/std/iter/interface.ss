;;; -*- Gerbil -*-
;;; © vyzo
;;; iterator interface
(export #t)

(interface Iterator
  (next!) => :t ;; #!eof marks end of iteration
  )

(interface Iterable
  (iter) => Iterator)
