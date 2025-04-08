(import :std/cli/getopt
        :std/actor
        :std/config
        :std/logger
        :std/sugar
        :std/io
        :std/misc/shuffle
        :std/os/socket
        (rename-in ./server (main server-main)))
(export main)

(deflogger echo)

(def (main . args)
  (call-with-getopt echo-main args
    program: "echo"
    help: "A simple echo server"
    (argument 'server-id
      help: "the server id")))

(def (echo-main opt)
  (let* ((server-id (hash-ref opt 'server-id))
         (cfg (load-ensemble-server-config (string->server-identifier server-id))))
    (become-ensemble-server! cfg server-main)))
