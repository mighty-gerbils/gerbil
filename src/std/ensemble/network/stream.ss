;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connection streams
(import :std/error
        :std/interface
        :std/io
        ../interface
        ./types)
(export stream-abandon!)

(def (stream-abandon! (s : stream)
                      (e : :t))
  (TODO stream-abandon!))
