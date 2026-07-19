;;; -*- Gerbil -*-
;;; © vyzo
;;; http server related interfaces
(import :std/io
        :std/log
        :std/net/url
        :std/net/address
        :std/time/timeout)
(export #t)

;; Request represents and incoming HTTP request
(defstruct Request
  ((url     :- URL)
   (proto   :- :string)
   (method  :- :string)
   (headers :- :list)
   (body    :- BufferedReader)
   (client  :- Address)
   (log     :- Logger))
  final: #t)

;; RequestContext encapsulates connection network state
(defstruct RequestContext
  ((sock   :- StreamSocket)
   (reader :- BufferedReader)
   (writer :- BufferedWriter))
  final: #t)

;; Status represents the response status of a request
(defstruct Status
  ((code :- :fixnum)
   (text :- :string))
  final: #t)

;; ResponseHandler encapsulates the server interface for writing responses.
;; handlers must call exactly one of the response methods.
(interface ResponseHandler
  ;; write a response in one go
  (write! (status  : Status)
          (headers : :list)
          (body    : :u8vector))
  => :void

  ;; begin writing a streaming response with chunked encoding
  (begin! (status  : Status)
          (headers : :list))
  => BufferedWriter

  ;; redirect a response internally in the server
  (redirect! (url : URL)
             (headers : :list))
  => :void

  ;; upgrade a connection
  (upgrade! (headers : :list))
  => RequestContext

  ;; proxy a connection
  (proxy!)
  => RequestContext
  )

;; RequestHandler encapsulates logic for handling a request
(interface RequestHandler
  ;; handle a request.
  ;; the handler must call exactly one of the response handler methods
  ;; to finish the request before returning.
  (handle-request! (req  : Request)
                   (resp : ResponseHandler))
  => :void
  )

;; ServerMux multiplexes requests handler and selects the apropriate
;; handler for a request
(interface ServerMux
  ;; resolve a handler for a request; the Mux should always resolve
  ;; and return a 404 handler for unreachable paths
  (request-handler (req : Request))
  => RequestHandler
  )

;; ServerConfig is the server configuration
(defclass ServerConfig
  (;; the server mux
   (mux : ServerMux)
   ;; the server request log
   (log : LogSink)
   ;; addresses to listen to
   ;; List InetAddress or [InetAddress . SSL_CTX*] for ssl
   (listen : :list)
   ;; sockopts to apply to listening sockets
   (sockopts : :list := default-listen-sockopts)
   ;; backlog for listening sockets
   (backlog  : :fixnum := default-listen-backlog)
   ;; max concurrent connections to prevent DOS attacks
   (max-connections : :fixnum := 1024)
   ;; maximum length of request line
   (max-request-line : :fixnum := 1024)
   ;; max header size for requests
   (max-headers  : :fixnum := 32768)
   ;; request input buffer size
   (request-buffer : :fixnum := 32768)
   ;; response output buffer
   (response-buffer : :fixnum := 32768)
   ;; request input timeout
   (request-timeout  : IOTimeout := (IOTimeout 30))
   ;; request output timeout
   (response-timeout : IOTimeout := (IOTimeout 120)))
  final: #t)

;; Server is the http server control interface
(interface Server
  ;; start the server
  (start!)
  => :void

  ;; stop a running server
  (stop!)
  => :void

  ;; number of active requests
  (active-connections)
  => :fixnum

  ;; returns a copy of the current configuration
  (config)
  => ServerConfig

  ;; dynamically changes the server configuration
  ;; and restarts the server
  (restart! (cfg : ServerConfig))
  => :void
  )
