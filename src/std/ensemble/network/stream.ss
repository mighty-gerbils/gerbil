;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connection streams
(import :std/error
        :std/interface
        :std/io
        ../interface
        ./types)
(export stream-close-input
        stream-abandon!)

(defmethod {:init! stream}
  (lambda (self (conn         : connection)
           (direction    : :fixnum)
           (id           : :integer)
           (window-size  : :fixnum)
           (message-size : :fixnum))
    (TODO new-stream)))

(def (stream-close-input (s : stream))
  (TODO stream-close-input))

(def (stream-abandon! (s : stream)
                      (e : :t))
  => :void
  (TODO stream-abandon!))
