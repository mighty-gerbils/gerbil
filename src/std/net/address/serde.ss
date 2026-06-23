;;; -*- Gerbil -*-
;;; © vyzo
;;; network address untaint
(import :std/serde/interface
        :std/serde/deserialize
        ./types)

(defobject-untaint NullAddress)
(defobject-untaint IP4Address)
(defobject-untaint IP6Address)
(defobject-untaint InetAddress)
(defobject-untaint UnixAddress)
(defobject-untaint DNSAddress)
