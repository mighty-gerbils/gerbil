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
        ./port
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
           ./port
           ./tempfile))
