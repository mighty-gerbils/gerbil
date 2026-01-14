;;; -*- Gerbil -*-
;;; © vyzo
;;; string output
(import :std/io
        :std/io/bio/api
        ./io)
(export #t)

(interface Stringer
  (to-string) => :string)

(def (to-string obj)
  XXX
  )
