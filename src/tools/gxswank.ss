;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil Swank Daemon
;;;
(import :std/sugar
        :std/contract
        :std/cli/getopt
        :std/net/address
        :std/net/httpd
	:std/ide/swank
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
   'host "-a" "--address" default: "localhost"
   help: "The IP or hostname to listen on"))

(def persist-option
  (option
   'dont-close "-d" "--dont-close" default: "false"
   help: "If \"true\". keep the socket accepting for more than one connection. Any other value makes it only accept once."))

(def (gxswank-main opt)
  (def number-of-errors 0)
  ;;; I find it nice to have a REPL at the command line. But there are
  ;;; currently issues with that and no terminal so after a while no
  ;;; REPL.
  (def (runrepl server)
    (let lp ((res (ignore-errors (##repl))))
      (if (> number-of-errors 127)
	(begin
	  (displayln "Command Line REPL had "number-of-errors
		     " unhandled errors. No more stdio REPL thread")
	  (thread-join! server))
	(begin
	  (set! number-of-errors (1+ number-of-errors))
	  (lp (ignore-errors (##repl)))))))
	
  (setup-local-env! opt)
  (let-hash opt
    (let ((server (create-server
		   port: (string->number .port)
		   host: .host
		   dont-close: (equal? "true" .dont-close))))
      
      (thread-yield!)
      (runrepl server)
      (thread-join! server))))
      
