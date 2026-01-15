;;; -*- Gerbil -*-
;;; © vyzo
;;; format env
(import :std/serde/scan)
(export #t)



(defclass FormatEnv
  ((scan      :? ScanEnv)  ; cycle handling policy (optional)
   (display?  :  :boolean) ; displayl-like format?
   (precision :  :fixnum)) ; precision for inexact numbers
  final: #t)

(def (default-format-environment) => FormatEnv
  XXX
  )
