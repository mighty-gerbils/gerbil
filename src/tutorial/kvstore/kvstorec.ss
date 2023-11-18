;;; -*- Gerbil -*-
;;; © vyzo
;;; kvstore command line client
(import :gerbil/gambit
        :std/sugar
        :std/getopt
        :std/actor
        :std/misc/ports
        ./proto)
(export main)

(def (main . args)
  (def server-option
    (option 'server #f "--server"
      help: "the kvstore server-id"
      value: string->symbol
      default: 'kvstore))

  (def output-option
    (option 'output "-o" "--output"
      help: "where to output the result; - for stdout, otherwise a file path"
      default: "-"))

  (def input-option
    (option 'input "-i" "--input"
      help: "where to read input from; - for stdin, otherwise a file path"
      default: "-"))

  (def key-argument
    (argument 'key help: "object key"))

  (def get-cmd
    (command 'get
      help: "get data from the store"
      server-option
      output-option
      key-argument))

  (def get-object-cmd
    (command 'get-object
      help: "get a serialized object from the store"
      server-option
      output-option
      key-argument))

  (def put-cmd
    (command 'put
      help: "put data to the store"
      server-option
      input-option
      key-argument))

  (def put-object-cmd
    (command 'put-object
      help: "put a serialized object to the store"
      server-option
      input-option
      key-argument))

  (def remove-cmd
    (command 'remove help: "remove a key from the store"
      server-option
      key-argument))

  (def help-cmd
    (command 'help help: "display help"
      (optional-argument 'command value: string->symbol)))

  (call-with-getopt kvstorec-main args
    program: "kvstorec"
    help: "A command line client for the key-value store daemon"
    get-cmd
            get-object-cmd
            put-cmd
            put-object-cmd
            remove-cmd
            help-cmd))

(def (kvstorec-main cmd opt)
  (start-actor-server!)
  (let-hash opt
    (case cmd
      ((get)
       (write-output (kvstore-get .key .server) .output))
      ((get-object)
       (write-object (kvstore-get-object .key .server) .output))
      ((put)
       (kvstore-put! .key (read-input .input) .server))
      ((put-object)
       (kvstore-put-object! .key (read-object .input) .server))
      ((remove)
       (kvstore-remove! .key .server)))))

(def (write-output val output)
  (when (u8vector? val)
    (if (equal? output "-")
      (write-subu8vector val 0 (u8vector-length val) (current-output-port))
      (call-with-output-file output
        (cut write-subu8vector val 0 (u8vector-length val) <>)))))

(def (write-object val output)
  (if (equal? output "-")
    (write val)
    (call-with-output-file output
      (cut write val <>))))

(def (read-input input)
  (if (equal? input "-")
    (read-all-as-u8vector (current-input-port))
    (read-file-u8vector input)))

(def (read-object input)
  (if (equal? input "-")
    (read)
    (call-with-input-file input read)))
