;;; -*- Gerbil -*-
;;; © belmarca 2024
;;; The Gerbil LSP Server

(import (only-in :gerbil/gambit pretty-print)
        :std/cli/getopt
        :std/io
        :std/io/dummy
        :std/error
        :std/sugar
        :std/logger
        :std/contract
        :std/os/socket
        :std/text/utf8
        :std/text/json
        :std/net/json-rpc
        (only-in :std/net/httpd/handler read-request-headers read-request-body))

(export main)

;;;
;;; Globals
;;;

(deflogger gxlsp)

(def +lsp-version+        "3.17")
(def +server-name+        "gxlsp")
(def +server-version+     "0.0.1")
(def +server-info+        (hash ("name" +server-name+) ("version" +server-version+)))
(def +initialized+        #f)  ;; Is the server initialized?

(def +request-timeout+    60)
(def +response-timeout+   120)
(def +input-buffer-size+  (expt 2 13))
(def +output-buffer-size+ (expt 2 15))

(def +handlers+           (make-hash-table))
;; TODO: Buffer re-use?

;;;
;;; Misc
;;;

;; Same as in :std/net/json-rpc
(def (bytes->json b) ;; Don't intern JSON keys, using strings
  (parameterize ((json-symbolic-keys #f)) (bytes->json-object b)))

;; IO helper
(def CR (char->integer #\return))
(def LF (char->integer #\linefeed))
(def (write-crlf obuf)
  (using (obuf :- BufferedWriter)
    (obuf.write-u8-inline CR)
    (obuf.write-u8-inline LF)))

;;;
;;; Server API
;;;

;; Start the server.
;; local <- "address:port"
(def (start! local)
  (start-logger!)
  ;; Allow reconnects?
  (using ((srv (tcp-listen local) :- ServerSocket)
          (clisock (srv.accept) :- StreamSocket))
    (infof "Accepted connection from ~a" (clisock.peer-address))
    (lsp-server clisock)))

;; Structures for handling state
(defstruct lsp-request (buf sock json)
  final: #t)
(defstruct lsp-response (buf sock json)
  final: #t)
(defstruct lsp-client-s (processId client-name client-version locale rootPath
                                   rootUri initializationOptions capabilities
                                   trace workspaceFolders
                                   initialized) ;; Is the client initialized?
  final: #t)

;; gxlsp is a single-client server.
;; Launch multiple processes if needed.
(def +lsp-client+ (make-lsp-client-s #f #f #f #f #f #f #f #f #f #f #f))

;; Main entry point.
;; sock <- StreamSocket
;; Creates new BufferedR/Writer with StreamSocket semantics.
;; Processes requests through 'handle-request!.
(def (lsp-server sock)
  (debugf "=== lsp-server")
  (using (sock :- StreamSocket)
    (def ibuf (open-buffered-reader (sock.reader) +input-buffer-size+))
    (def obuf (open-buffered-writer (sock.writer) +output-buffer-size+))
    (let ((req (make-lsp-request ibuf sock #f))
          (res (make-lsp-response obuf sock #f)))
      (using ((req :- lsp-request)
              (res :- lsp-response))
        (sock.set-input-timeout! +request-timeout+)
        (sock.set-output-timeout! +response-timeout+)
        (try
         (while #t
           ;; Buffered IO from sock to req
           (read-request! req)
           ;; Try to handle the Notification/Request
           (serve-json-rpc! res lsp-processor req.json)
           ;; Don't respond to Notifications. Note that in its current state
           ;; the server will call a handler for Notifications as well, just
           ;; not respond. I'm still not sure what actions some Notifications
           ;; will require us to take.
           (if (hash-get req.json "id")
             (write-response! res))
           ;; Reset the buffers but don't close the socket
           (set! req.json #f)
           (set! res.json #f)
           (&BufferedReader-reset! req.buf (sock.reader) #f)
           (&BufferedWriter-reset! res.buf (sock.writer) #f))
         (catch (e)
           (errorf "=== exception raised in lsp-server ~a" e)
           (internal-error e))
         (finally
          ;; TODO: Global buffer re-use, currently useless as these will be GCd
          (&BufferedReader-reset! req.buf (sock.reader))
          (&BufferedWriter-reset! res.buf (sock.writer))))))))

;; Same as in :std/net/json-rpc but store the result in a struct
;; res <- lsp-response
(def (serve-json-rpc! res processor request-json)
  (using (res :- lsp-response)
    (set! res.json (serve-json-rpc processor request-json))))

;; Perform buffered io on the request and parse the body
;; as json, storing it in the req object
;; req <- lsp-request
(def (read-request! req)
  (debugf "=== read-request!")
  (using (req :- lsp-request)
    (try
     (let* ((ibuf req.buf)
            (headers (read-request-headers ibuf))
            (json (bytes->json (read-request-body ibuf headers))))
       (debugf "=== Request ~a" (json-object->string json))
       (set! req.json json))
     (catch (e)
       (debugf "Exception raised in read-request!: ~a" e)
       (internal-error e)))))

;; Buffered IO on the socket
;; res <- lsp-response
(def (write-response! res)
  (def Content-Length (string->bytes "Content-Length: "))
  (def (content-length buf)
    (string->bytes (number->string (u8vector-length buf))))
  (debugf "=== handle-request!")
  ;; TODO: Handle closes
  (using ((res :- lsp-response)
          (obuf res.buf :- BufferedWriter))
    (let ((out (json-object->bytes res.json)))
      (debugf "=== Response ~a" (bytes->string out))
      ;; Headers
      (obuf.write Content-Length)
      (obuf.write (content-length out))
      (write-crlf obuf)
      (write-crlf obuf)
      ;; Body
      (obuf.write (json-object->bytes res.json))
      (write-crlf obuf)
      (obuf.flush))))

;; See :std/net/json-rpc
(def (lsp-processor method params)
  (debugf "=== lsp-processor (~a)" method)
  ;; Special handling required by the LSP protocol
  (if (not +initialized+)
    (pre-init-handler method params)
    ((method-handler method) params)))

;;; Handlers

;; Handlers must return JSON-serializable objects, either an instance
;; of the Request/Notification class they are handling OR a JSON-RPC error.
;; Subclass JSON to be JSON-serializable.

(def (method-handler method)
  (debugf "=== method-handler")
  (hash-ref +handlers+ method method-not-found))

(defrule (defhandler method handler)
  (hash-put! +handlers+ method handler))

;; Initialize Request handler
(defclass (InitializeResult JSON) (capabilities serverInfo)
  constructor: :init!)
(defmethod {:init! InitializeResult}
  (lambda (self capabilities serverInfo)
    (class-instance-init! self capabilities: capabilities serverInfo: serverInfo)))

(defhandler "initialize"
  (lambda (params)
    (debugf "=== initialize handler")
    (if +initialized+
      (internal-error "Server already initialized.")
      (initialize-server params))))

;; A client should complete initialization by sending an 'initialized' Notification.
;; But do we actually want to check this? Not sure how important it is.
(defhandler "initialized"
  (lambda (params)
    ;; No need to return a response as it's a Notification
    (lsp-client-s-initialized-set! +lsp-client+ #t)))

;; TODO: Add more handlers!

(def (pre-init-handler method params)
  (debugf "=== pre-init-handler")
  ;; Notifications are dropped at the JSON-RPC layer
  ;; TODO: Handle shutdown & exit
  (if (equal? "initialize" method)
    ((method-handler "initialize") params)
    (json-rpc-error code: -32002 data: (void) message: "Server is not initialized.")))

;; TODO: Properly do this - need to read the spec
(def (initialize-server params)
  (debugf "=== initialize-server")
  ;; Just crash on void params
  (let/cc return
    (using (lsp-client +lsp-client+ :- lsp-client-s)
      (try
       (let-hash params
         ;; Use the new .$ accessor for string keys
         (when .$clientInfo
           (set! lsp-client.client-name    (hash-get .$clientInfo "name"))
           (set! lsp-client.client-version (hash-get .$clientInfo "version")))
         (set! lsp-client.processId             .$processId)
         (set! lsp-client.locale                .$locale)
         (set! lsp-client.rootPath              .$rootPath)
         (set! lsp-client.rootUri               .$rootUri)
         (set! lsp-client.initializationOptions .$initializationOptions)
         (set! lsp-client.capabilities          .$capabilities)
         (set! lsp-client.trace                 .$trace)
         (set! lsp-client.workspaceFolders      .$workspaceFolders)
         (let (capabilities (generate-capabilities params))
           (set! +initialized+ #t)
           (debugf "=== set up lsp-client struct")
           (return capabilities)))
       (catch (e)
         (errorf "=== exception in initialize-server ~a" e)
         (raise e))))))

(def (generate-capabilities params)
  ;; TODO: What minimum set of features do we support?
  (InitializeResult (hash ("positionEncoding" "utf-8")) +server-info+))

;;; CLI

;; Argument handling
(def address-port-optional-argument
  (optional-argument 'address-port
                     help: "the address:port to bind to"
                     default: "127.0.0.1:12512"))

(def loglevel-option
  (option 'loglevel "-l" "--loglevel"
          help: "logger loglevel"
          value: string->number
          default: 0))

(def (main . args)
  (call-with-getopt gxlsp-main args
    program: "gxlsp"
    help: "The Gerbil LSP Server"
    address-port-optional-argument
    loglevel-option))

(def (gxlsp-main opt)
  (let-hash opt
    (current-logger-options .?loglevel)
    (start! .?address-port)))
