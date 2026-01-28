;;; -*- Gerbil -*-
;;; © vyzo
;;; OS File Devices
(import :std/ffi
        :std/net/address/address
        ./error
        ./device)
(export #t)

(defstruct (SocketDevice OSDevice)
  ((domain :- :fixnum)
   (type   :- :fixnum)
   (proto  :- :fixnum)
   (addr   :? Address)
   (peer   :? Address)))
