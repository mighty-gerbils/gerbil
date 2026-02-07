;;; -*- Gerbil -*-
;;; © vyzo
;;; iterator api
(import ./interface
        ./iterators
        ./macros)
(export
  (import: ./interface)
  for for*
  for/collect
  for/fold
  in-range
  in-range-inclusive
  in-integers
  in-numbers
  in-list
  in-vector
  in-hash
  in-hash-keys
  in-hash-values
  in-coroutine)
