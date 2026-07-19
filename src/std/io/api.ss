;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio api
(import ./interface
        ./bio/api
        ./socket/api
        ./dummy
        ./counter
        ./delimited
        ./detachable
        ./file
        ./util
        ./tempfile)
(export
  (import: ./interface
           ./bio/api
           ./socket/api
           ./dummy
           ./counter
           ./delimited
           ./detachable
           ./file
           ./util
           ./tempfile))
