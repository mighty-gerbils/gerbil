;;; -*- Gerbil -*-
;;; © vyzo
;;; iterator interface
(export #t)

(interface Iterator
  (current)  => :t
  (end?)     => :boolean
  (advance!) => :void)

(interface Iterable
  (iter) => Iterator)
