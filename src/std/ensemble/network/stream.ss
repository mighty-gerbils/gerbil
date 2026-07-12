;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connection streams
(import :std/error
        :std/interface
        :std/io
        ../interface
        ./types)
(export abandon-stream!)

(def (abandon-stream! (s : stream)
                      (e : :t))
  (TODO abandon-stream!))
