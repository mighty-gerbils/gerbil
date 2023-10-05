;;; -*- Gerbil -*-
;;; © vyzo
;;; "production  httpd executable
(import :std/getopt
        :std/actor
        :std/sugar
        ./server)
(export main)

(def (main . args)
  (call-with-getopt httpd-main args
    program: "httpd"
    help: "httpd server"
    (option 'server-id "--id"
      help: "server id"
      default: 'httpd
      value: string->symbol)
    (option 'port "-p"
      help: "port to bind to"
      default: 8080
      value: string->number)
    (argument 'listen
      help: "TLS address to listen to")
    (argument 'announce
      help: "TLS address to announce to the registry")
    (argument 'registry
      help: "registry TLS address")))

(def (httpd-main opt)
  (let-hash opt
    (call-with-ensemble-server .server-id (cut run! .port)
      listen:   [(call-with-input-string .listen read)]
      announce: [(call-with-input-string .announce read)]
      registry: [(call-with-input-string .registry read)]
      roles:    '(httpd))))
