;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio api
(import ./bio/api
        ./strio/api
        ./socket/api
        ./delimited
        ./file
        ./util
        ./port)
(export (import: ./bio/api)
        (import: ./strio/api)
        (import: ./socket/api)
        (import: ./delimited)
        (import: ./file)
        (import: ./util)
        (import: ./port))
