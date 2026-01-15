;;; -*- Gerbil -*-
;;; © vyzo
;;; format env
(import :std/interface
        :std/io)
(export #t)

(defclass ScanEnv
  ((written       :- HashTable)
   (scanned       :- HashTable)
   (cycles        :- HashTable)
   (next          :- :fixnum)
   (allow-cycles? :- :boolean))
  final: #t)

(defclass FormatEnv
  ((scan      :? ScanEnv)  ; cycle handling policy (optional)
   (display?  :  :boolean) ; displayl-like format?
   (precision :  :fixnum)) ; precision for inexact numbers
  final: #t)

(def (default-format-environment) => FormatEnv
  XXX
  )
