;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS API
(import :std/error
        ./interface
        ./client
        ./server)
(export (import: ./interface
                 ./client
                 ./server)
        socks-proxy)

(def (socks-proxy proxy-address (protocol 4))
  (SOCKS
   (case protocol
     ((4 SOCKS4) (socks4-open proxy-address))
     ((4a SOCKS4a) (socks4a-open proxy-address))
     ((5 SOCKS5) (socks5-open proxy-address))
     (else
      (raise-bad-argument socks-connect
                          "socks protocol; 4 or SOCKS4, 4a orSOCKS4a, 5 or SOCKS5"
                          protocol)))))
