;;; -*- Gerbil -*-
;;; © vyzo
;;; "production  httpd executable
(import :std/getopt
        :std/actor
        :std/actor-v18/registry
        :std/sugar)
(export main)

(def (main . args)
  (call-with-getopt httpd-main args
    program: "registry"
    help: "registry server"
    (argument 'listen
      help: "TLS address to listen to")))

(def (httpd-main opt)
  (let-hash opt
    (call-with-ensemble-server 'registry (cut start-ensemble-registry!)
      listen:   [(call-with-input-string .listen read)])))
