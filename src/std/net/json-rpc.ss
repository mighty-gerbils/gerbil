;; Support for JSON RPC 2.0 -- https://www.jsonrpc.org/specification
;; JSON RPC over HTTP (historical): https://www.jsonrpc.org/historical/json-rpc-over-http.html
;; In practice, we try to support existing clients and servers,
;; that don't follow various subsets of the specification
;; (especially the HTTP spec, but many clients and servers only do 1.0, 1.1 or 1.2)
;; so we are not too strict in our checking.

(export #t)

(import
  :gerbil/gambit/ports
  :gerbil/gambit/exceptions
  :std/error
  :std/format
  :std/net/httpd
  :std/net/request
  :std/sugar
  :std/text/json)

(defstruct (json-rpc-error <error>) ()
;;  (code    ;; SInt16
;;   message ;; String
;;   data)   ;; (Maybe Bytes)
  transparent: #t constructor: :init!)
(defmethod {:init! json-rpc-error}
  (lambda (self what: (what (void)) where: (where (void))
           code: code ;; SInt16
           message: message ;; String
           data: (data (void))) ;; (Maybe Bytes)
    (def irritants [code message data])
    (struct-instance-init! self what irritants where)))
(def (json-rpc-error-code e)
  (car (error-irritants e)))
(def (json-rpc-error-message e)
  (cadr (error-irritants e)))
(def (json-rpc-error-data e)
  (caddr (error-irritants e)))
(defmethod {:json json-rpc-error}
  (lambda (self)
    (with ([code message data] (error-irritants self))
      (hash ("code" code) ("message" message) ("data" data)))))
(def (json->json-rpc-error json)
  (trivial-json-object->class json-rpc-error::t json))

(def json-rpc-version "2.0")

(defclass (json-rpc-request jsonable)
  (jsonrpc   ;; String, must be the same as json-rpc-version ("2.0"), can undefined for version 1.0
   method    ;; String
   params    ;; Json, array (arguments by position) or object (arguments by name)
   id)       ;; Json, MUST be an number, a string, or JSON null aka Scheme (void). SHOULD be an integer if a number. (void) if no response is required.
  transparent: #t)

(defclass (json-rpc-response jsonable)
  ;; Note: a 2.0 server MUST include only one of result or error.
  ;; But a 1.0 or 1.1 server may leave the other null.
  (jsonrpc   ;; String, must be the same as json-rpc-version ("2.0")
   result    ;; Json, JSON null (Scheme void) if there is an error
   error     ;; Json, JSON null (Scheme void) if there is no error
   id)       ;; Json, MUST be the same as provided in the request.
  transparent: #t
  constructor: :init!)

(defmethod {:init! json-rpc-response}
  (lambda (self jsonrpc: (jsonrpc (void))
           result: (result (void))
           error: (error (void))
           id: (id (void)))
    (class-instance-init! self jsonrpc: jsonrpc result: result error: error id: id)))

;; Global counter to correlate responses and answers in logs.
(def id-counter
  (let (counter 0)
    (lambda ((increment 1))
      (begin0 counter (set! counter (+ counter increment))))))

(def rpc-timeout 10) ;; in seconds --- where is that from?
(def rpc-log #t) ;; do we want a parameter?

;; These functions construct error results to be returned by the json-rpc server to the client.
;; Beware: DO NOT LEAK internal information in such externally returned error messages.
;; Publish only what you must for the user's sake,
;; make sure any secrets are wrapped in structures, accessors and printers that won't leak them.
;; Log what you need, generate a reference as appropriate and include it in the message.
(def (parser-error (e (void)))
  (json-rpc-error code: -32700 data: e
                  message: "An error occurred on the server while parsing the JSON text."))
(def (invalid-request (e (void)))
  (json-rpc-error code: -32600 message: "The JSON sent is not a valid Request object." data: e))
(def (method-not-found (e (void)))
  (json-rpc-error code: -32601 message: "The method does not exist / is not available." data: e))
(def (invalid-params (e (void)))
  (json-rpc-error code: -32602 message: "Invalid method parameter(s)." data: e))
(def (internal-error (e (void)))
  (json-rpc-error code: -32603 message: "Internal JSON-RPC error." data: e))
(def (application-error m (e (void)))
  (json-rpc-error code: -32500 message: m data: e))
(def (system-error m (e (void)))
  (json-rpc-error code: -32400 message: m data: e))
(def (tranport-error m (e (void)))
  (json-rpc-error code: -32300 message: m data: e))

(defclass (malformed-request jsonable Exception) (method params e) transparent: #t)
(defclass (malformed-response jsonable Exception) (request-id response e) transparent: #t)

;;; Client code
(def (json-rpc server-url method (params (void))
               auth: (auth #f)
               headers: (headers #f)
               cookies: (cookies #f)
               result-decoder: (result-decoder identity)
               param-encoder: (param-encoder identity)
               timeout: (timeout rpc-timeout)
               log: (log #f))
  (def id (id-counter))
  (def request-string (request->string method (param-encoder params) id))
  (when log
    (log [to: server-url request: request-string]))
  ;; TODO: implement timeouts, with semi-asynchronous aborts the http-post thread itself.
  (def response-bytes
    (request-response-bytes
     (http-post server-url
                auth: auth
                headers: `(("Content-Type" . "application/json-rpc")
                           ;; ("Accept" . "application/json-rpc, application/json, application/jsonrequest")
                           ,@headers)
                cookies: cookies
                data: (string->bytes request-string))))
  (def response-json
    (try
       (parameterize ((json-symbolic-keys #f)) ;; Don't intern JSON keys, using strings
         (bytes->json-object response-bytes)) ;; todo: move to decode-json-rpc-response ?
       (catch (e) (raise (malformed-response request-id: id response: response-bytes e: e)))))
  (when log
    (log [from: server-url response: (bytes->string response-bytes)]))
  (decode-json-rpc-response
   result-decoder
   (and (hash-table? response-json) (hash-get response-json "id"))
   response-json))

(def (request->string method params id)
  (try (json-object->string
        (json-rpc-request jsonrpc: json-rpc-version method: method params: params id: id))
       (catch (e) (raise (malformed-request method: method params: params e: (error-message e))))))

(def (decode-json-rpc-response decoder request-id response-json)
  (def (mal e)
    (raise (malformed-response request-id: request-id response: response-json e: (error-message e))))
  (def response (with-catch mal (cut trivial-json-object->class json-rpc-response::t response-json)))
  (def jsonrpc (@ response jsonrpc))
  (def result (@ response result))
  (def error (@ response error))
  (def id (@ response id))
  (unless (or (void? jsonrpc) ;; a 1.0 server might fail to include this field
              (equal? jsonrpc json-rpc-version)) ;; but a recent server must reply with same version
    (mal "bad json_rpc_version"))
  (unless (or (void? result) (void? error))
    (mal "result error conflict"))
  (unless (equal? id request-id)
    (mal "bad id"))
  (if (void? error)
    (with-catch mal (cut decoder result))
    (raise (with-catch mal (cut json->json-rpc-error error)))))

;;; Server code

;; Acceptable content-types for json-rpc requests and responses
(def +json-rpc-content-types+
  '(("application/json-rpc" ;; SHOULD be that
     "application/json" "application/jsonrequest"))) ;; MAY be these

;; http handler for json-rpc
;; NB: Be sure to wrap into a condition-handler, or some such.
(def (json-rpc-handler processor)
  (lambda (req res)
    (let/cc return
      (def (bad-request)
        (http-response-write-condition res (Bad-Request))
        (return))
      ;; Skip these checks specified in JSON RPC over HTTP
      #;(let (headers (http-request-headers req))
          (unless (and (member (assget "Content-Type" headers) +json-rpc-content-types+)
                       (assget "Content-Length" headers)
                       (member (assget "Accept" headers) +json-rpc-content-types+))
            (bad-request)))
      (case (http-request-method req)
        ;; TODO: implement GET as per https://www.jsonrpc.org/historical/json-rpc-over-http.html
        #;((GET) (json-rpc-handler/GET req res processor))
        ((POST) (json-rpc-handler/POST req res processor))
        (else (bad-request))))))

(def (json-rpc-handler/POST req res processor)
  (let/cc return
    (def request-json
      (try
       (parameterize ((json-symbolic-keys #f)) ;; Don't intern JSON keys, using strings
         (bytes->json-object (http-request-body req)))
       (catch (_)
         (json-rpc-handler/response-json
          res (hash ("jsonrpc" "2.0") ("error" (parser-error))))
         (return))))
    (json-rpc-handler/JSON res processor request-json)))

(def (json-rpc-handler/JSON res processor request-json)
  (json-rpc-handler/response-json res (serve-json-rpc processor request-json)))

;; The processor either returns a jsonable object, or raise a json-rpc-error
;; Any other error raised will cause an internal error.
(def (serve-json-rpc processor request-json)
  (let/cc return
    (def jsonrpc (hash-ref request-json "jsonrpc" (void)))
    (def id (hash-ref request-json "id" (void)))
    (def (return-error e) (return (hash ("jsonrpc" jsonrpc) ("error" e) ("id" id))))
    (def (invalid-req) (return-error (invalid-request)))
    (for-each (lambda (k) (unless (member k '("jsonrpc" "method" "params" "id")) (invalid-req)))
              (hash-keys request-json))
    (unless (member jsonrpc '(#!void "1.0" "2.0")) (set! jsonrpc "2.0") (invalid-req))
    (def method (hash-ref request-json "method" (void)))
    (unless (string? method) (invalid-req))
    (def params (hash-ref request-json "params" (void)))
    (unless (or (list? params) (hash-table? params) (void? params)) (return-error (invalid-params)))
    (def notification? (not (hash-key? request-json "id")))
    (unless (or (string? id) (number? id) (void? id)) (invalid-req))
    (try
     ;; TODO: either log here, or define parameters that the processor can use to log context.
     ;; Use hash so only one of result: or error: shall be printed
     (def result (processor method params))
     (if notification? (void) (hash ("jsonrpc" jsonrpc) ("id" id) ("result" result)))
     (catch (e) (return-error (if (json-rpc-error? e) e (internal-error)))))))

(def (json-rpc-handler/response-json res response-json)
  (let/cc return
     (def response-text
       (try
        (json-object->string response-json)
        (catch (_)
          (http-response-write-condition res (Internal-Server-Error))
          (return))))
    (http-response-write res 200 `(("Content-Type" . "text/json-rpc")) response-text)))
