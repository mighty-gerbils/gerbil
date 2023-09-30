;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS v4/4a/5 interface
(import :std/interface
        :std/contract
        :std/io/interface)
(export #t)

;; SOCKS client interface
(interface SOCKS
  ;; protocol version used by the proxy
  ;; :- symbol?
  (protocol)

  ;; proxy address
  ;; :- inet-address?
  (proxy-address)

  ;; open a connection through the proxy
  ;; :- StreamSocket
  (connect (address :~ address?))

  ;; Bind an address at the proxy
  ;; :- ServerSocket
  (bind (address :~ (maybe address?) := #f)))
