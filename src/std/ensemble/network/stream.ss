;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connection streams
(import :std/error
        :std/interface
        :std/io
        ../interface
        ./types)
(export new-stream
        stream-abandon!)

(def (new-stream (conn         : connection)
                 (direction    : :fixnum)
                 (id           : :integer)
                 (window-size  : :fixnum)
                 (message-size : :fixnum))
  (TODO new-stream))

(def (stream-abandon! (s : stream)
                      (e : :t))
  (TODO stream-abandon!))
