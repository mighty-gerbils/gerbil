;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio api
(import ./interface
        ./bio/api
        ./socket/api
        ./dummy
        ./counter
        ./delimited
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
           ./file
           ./util
           ./tempfile))
