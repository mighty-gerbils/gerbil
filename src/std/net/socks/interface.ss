;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS v4/4a/5 interface
(import :std/interface)
(export #t)

;; SOCKS client interface
(interface SOCKS
  ;; protocol version used by the proxy
  ;; :- symbol?
  (protocol)

  ;; proxy address
  ;; :- inet-address?
  (proxy-address)

  ;; address := inet-address?
  ;; :- StreamSocket?
  (connect address)

  ;; Binds an address at the server
  ;; address := maybe inet-address?
  ;; :- ServerSocket?
  (bind (address #f)))
