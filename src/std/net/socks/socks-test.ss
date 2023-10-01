;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS test
(import :std/test
        :std/io
        :std/text/utf8
        :std/logger
        ./api)
(export socks-test test-setup! test-cleanup!)

(def server-address (cons inaddr-any4 29999))

(def (test-setup!)
  (current-logger-options 'VERBOSE)
  (start-socks-server! allow-bind: #t server-address))

(def (test-cleanup!)
  (current-logger-options 'WARN)
  (stop-socks-server!))

(def socks-test
  (test-suite "SOCKS"
    (test-case "SOCKS4 connect"
      (test-connect 'SOCKS4))
    (test-case "SOCKS4 bind"
      (test-bind 'SOCKS4))
    (test-case "SOCKS4a connect"
      (test-connect 'SOCKS4a))
    (test-case "SOCKS5 connect"
      (test-connect 'SOCKS5))
    (test-case "SOCKS5 bind"
      (test-bind 'SOCKS5))))

(def (test-connect proto)
  (def request
      (string->utf8
       "GET / HTTP/1.1\r\n\r\nUser-Agent: test\r\nConnection: close\r\nAccept: */*\r\n\r\n"))

  (let (socks (socks-proxy server-address proto))
    (check socks ? SOCKS?)
    (check (SOCKS-protocol socks) => proto)
    (let (sock (SOCKS-connect socks "www.google.com:80"))
      (check sock ? StreamSocket?)
      (check (StreamSocket-send sock request) => (u8vector-length request))
      (let (buf (make-u8vector 8))
        (check (StreamSocket-recv sock buf) => 8)
        (check (utf8->string buf) => "HTTP/1.1")
        (StreamSocket-close sock)))))

(def (test-bind proto)
  (let (socks (socks-proxy server-address proto))
    (check socks ? SOCKS?)
    (check (SOCKS-protocol socks) => proto)
    (let (srv (SOCKS-bind socks))
      (check srv ? ServerSocket?)
      (let (sock1 (tcp-connect (ServerSocket-address srv) 1))
        (check sock1 ? StreamSocket?)
        (let (sock2 (ServerSocket-accept srv))
          (check sock2 ? StreamSocket)
          (check (StreamSocket-send sock1 (string->utf8 "hello")) => 5)
          (check (StreamSocket-send sock2 (string->utf8 "world")) => 5)
          (let (buf (make-u8vector 5))
            (check (StreamSocket-recv sock1 buf) => 5)
            (check (utf8->string buf) => "world"))
          (let (buf (make-u8vector 5))
            (check (StreamSocket-recv sock2 buf) => 5)
            (check (utf8->string buf) => "hello"))
          (StreamSocket-close sock1)
          (StreamSocket-close sock2))))))
