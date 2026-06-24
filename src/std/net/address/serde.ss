;;; -*- Gerbil -*-
;;; © vyzo
;;; network address untaint
(import :std/serde/interface
        :std/serde/deserialize
        ./types)

(defobject-untaint
  NullAddress
  IP4Address
  IP6Address
  InetAddress
  UnixAddress
  DNSAddress)
