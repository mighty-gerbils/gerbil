;;; -*- Gerbil -*-
;;; © vyzo
;;; iterator api
(import ./interface
        ./iterators
        ./macros)
(export
  (import: ./interface
           ./macros)
  in-range
  in-range-inclusive
  in-integers
  in-list
  in-vector
  in-hash
  in-hash-keys
  in-hash-values
  in-coroutine)
