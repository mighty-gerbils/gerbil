;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil Swank Daemon
;;;
(import :std/sugar
        :std/contract
        :std/cli/getopt
        :std/net/address
        :std/net/httpd
	:std/swank
        :std/mime/types
        :std/actor
        :std/iter
        :std/misc/ports
	:std/interactive
        (only-in :std/logger start-logger! deflogger current-logger-options)
        (only-in :std/os/socket SO_REUSEADDR SO_REUSEPORT)
        (only-in :std/srfi/13 string-contains)
        :gerbil/expander
        :gerbil/gambit
        ./env)
(export main)

(def (main . args)
  (call-with-getopt gxswank-main args
    program: "gxswank"
    help: "The Gerbil Swank Daemon"
    global-env-flag
    host-option
    port-option
    persist-option))

(def port-option
  (option
   'port "-p" "--port" default: "4005"
   help: "The port number on which the Swank server listens for connections"))

(def host-option
  (option
   'host "-h" "--host" default: "localhost"
   help: "The IP or hostname to listen on"))

(def persist-option
  (option
   'dont-close "-d" "--dont-close" default: "true"
   help: "Close the acceptor on client disconnect if anything but true"))


(def (gxswank-main opt)
  (setup-local-env! opt)
  (let-hash opt
    (let ((server (create-server
		   port: (string->number .port)
		   host: .host
		   dont-close: (equal? "true" .dont-close))))
      
      (thread-yield!)
      (##repl)
      (thread-join! server))))
      