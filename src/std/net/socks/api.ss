;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS API
(import :std/error
        ./interface
        ./client
        ./server)
(export (import: ./interface
                 ./server)
        socks-proxy)

(def (socks-proxy proxy-address (protocol 'SOCKS4))
  (SOCKS
   (case protocol
     ((SOCKS4)  (socks4-open proxy-address))
     ((SOCKS4a) (socks4a-open proxy-address))
     ((SOCKS5)  (socks5-open proxy-address))
     (else
      (raise-bad-argument socks-connect
                          "socks protocol; 4 or SOCKS4, 4a orSOCKS4a, 5 or SOCKS5"
                          protocol)))))
