;;; -*- Gerbil -*-
;;; © fare
;;; JSON RPC interfaces

;; Support for JSON RPC 2.0 -- https://www.jsonrpc.org/specification
;; JSON RPC over HTTP (historical): https://www.jsonrpc.org/historical/json-rpc-over-http.html
;; See also https://www.simple-is-better.org/json-rpc/transport_http.html#get-request
;; In practice, we try to support existing clients and servers,
;; that don't follow various subsets of the specification
;; (especially the HTTP spec, but many clients and servers only do 1.0, 1.1 or 1.2)
;; so we are not too strict in our checking.

(export
  ;; Main user-visible functions
  json-rpc json-rpc-handler serve-json-rpc

  ;; Error handling
  json-rpc-error json-rpc-error? json-rpc-error-code json-rpc-error-message json-rpc-error-data
  json-rpc-version
  parser-error invalid-request method-not-found invalid-params internal-error
  application-error system-error tranport-error
  MalformedRequest? malformed-request?
  MalformedResponse? malformed-response?)

(import
  :gerbil/gambit/continuations
  :std/error
  (only-in :std/misc/atom atomic-counter)
  (only-in :std/net/httpd http-response-write http-response-write-condition
           http-request-body http-request-params http-request-method
           Bad-Request Internal-Server-Error)
  (only-in :std/net/request http-post http-get request-response-bytes)
  (only-in :std/net/ssl default-client-ssl-context)
  (only-in :std/net/uri form-url-decode uri-decode)
  (only-in :std/sugar try catch hash)
  (only-in :std/text/base64 u8vector->base64-string base64-string->u8vector)
  (only-in :std/text/json trivial-json-object->class JSON json-symbolic-keys
           bytes->json-object json-object->bytes json-object->string))

(deferror-class (JSON-RPCError IOError) () json-rpc-error?
  ;;  (code    ;; SInt16
  ;;   message ;; String
  ;;   data)   ;; (Maybe Bytes)
  (lambda (self what: (what "JSON RPC error") where: (where 'json-rpc)
           code: code ;; SInt16
           message: message ;; String
           data: (data (void))) ;; (Maybe Bytes)
    (let (irritants [code message data])
      (Error:::init! self what irritants: irritants where: where))))
(def json-rpc-error make-JSON-RPCError)

(def (json-rpc-error-code e)
  (car (Error-irritants e)))
(def (json-rpc-error-message e)
  (cadr (Error-irritants e)))
(def (json-rpc-error-data e)
  (caddr (Error-irritants e)))

(defmethod {:json JSON-RPCError}
  (lambda (self)
    (with ([code message data] (Error-irritants self))
      (hash ("code" code) ("message" message) ("data" data)))))
(def (json->json-rpc-error json)
  (trivial-json-object->class JSON-RPCError::t json))

(def json-rpc-version "2.0")

(defclass (json-rpc-request JSON)
  (jsonrpc   ;; String, must be the same as json-rpc-version ("2.0"), can undefined for version 1.0
   method    ;; String
   params    ;; Json, array (arguments by position) or object (arguments by name)
   id)       ;; Json, MUST be an number, a string, or JSON null aka Scheme (void). SHOULD be an integer if a number. (void) if no response is required.
  transparent: #t)

(defclass (json-rpc-response JSON)
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
(def id-counter (atomic-counter))

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

(def (malformed-request/response-init! self . args)
  (class-instance-init! self args)
  (Error:::init! self (@ self message)))
(deferror-class (MalformedRequest JSON StackTrace Error) (method params message)
  malformed-request?
  malformed-request/response-init!)
(deferror-class (MalformedResponse JSON StackTrace Error) (request-id response message)
  malformed-response?
  malformed-request/response-init!)

(def (bytes->json b) ;; Don't intern JSON keys, using strings
  (parameterize ((json-symbolic-keys #f)) (bytes->json-object b)))

;;; Client code
;; TODO: implement timeouts, with semi-asynchronous shutdown of the http-post thread itself.
(def (json-rpc server-url method (params (void))
               auth: (auth #f)
               headers: (headers #f)
               cookies: (cookies #f)
               ssl-context: (ssl-context (default-client-ssl-context))
               result-decoder: (result-decoder identity)
               param-encoder: (param-encoder identity)
               log: (log #f)
               http-method: (http-method 'POST))
  (def id (id-counter))
  (when log
    (log [json-rpc: server-url method: method params: params id: id]))
  (def response-bytes
    (request-response-bytes
     (case http-method
       ((POST) ;; POST is the recommended http-method, and the only one supported by many servers.
        (let (data
              (try (json-object->bytes
                    (json-rpc-request jsonrpc: json-rpc-version
                                      method: method params: params id: id))
                   (catch (e) (raise (MalformedRequest method: method params: params
                                                       message: (error-message e))))))
          (http-post server-url
                     auth: auth
                     headers: `(("Content-Type" . "application/json-rpc")
                                ;; The JSON RPC over HTTP standard says we MUST send
                                ;; some variant of the Accept header below, but actually
                                ;; no client bothers sending it, no server bothers checking it,
                                ;; and it can only make things slower and trigger unwanted
                                ;; edge cases, so we don't bother sending it either.
                                ;; ("Accept" . "application/json-rpc, application/json, application/jsonrequest")
                                ,@headers)
                     ssl-context: ssl-context
                     cookies: cookies
                     data: data)))
       ;; NB: the GET http-method is strongly disrecommended:
       ;; It is only supported by few servers,
       ;; only appropriate for calls to safe and idempotent methods
       ;; that may or may not be cached on the way to the actual server,
       ;; when the encoded parameters lead to a URI length too long (> 255 bytes ?)
       ;; for the caches and proxies sitting between client and server.
       ((GET)
        (set! id (number->string id)) ;; GET method wants string id.
        (let* ((base64-params
                (try (u8vector->base64-string (json-object->bytes params))
                     (catch (e) (raise (MalformedRequest
                                        method: method params: params
                                        message: (error-message e))))))
               (uri-params
                `(("jsonrpc" .,json-rpc-version)
                  ("method" .,method)
                  ("params" .,base64-params)
                  ("id" .,id))))
          (http-get server-url
                    auth: auth
                    headers: `(("Content-Type" . "application/json-rpc")
                               ;; NB: we don't bother with an Accept header here, either.
                               ,@headers)
                    params: uri-params
                    ssl-context: ssl-context
                    cookies: cookies)))
       (else (raise-bad-argument 'json-rpc "http method: invalid" http-method)))))
  (def response-json
    (try
     (bytes->json response-bytes) ;; todo: move to decode-json-rpc-response ?
     (catch (e)
       (raise (MalformedResponse request-id: id response: response-bytes
                                 message: (error-message e))))))
  (when log
    (log [from: server-url response: (bytes->string response-bytes)]))
  (decode-json-rpc-response
   result-decoder
   (and (hash-table? response-json) (hash-get response-json "id"))
   response-json))

(def (decode-json-rpc-response decoder request-id response-json)
  (def (mal! e)
    (raise (MalformedResponse request-id: request-id response: response-json
                              message: (error-message e))))
  (def response (with-catch mal! (cut trivial-json-object->class json-rpc-response::t response-json)))
  (def jsonrpc (@ response jsonrpc))
  (def result (@ response result))
  (def error (@ response error))
  (def id (@ response id))
  (unless (or (void? jsonrpc) ;; a 1.0 server might fail to include this field
              (equal? jsonrpc json-rpc-version)) ;; but a recent server must reply with same version
    (mal! "bad json_rpc_version"))
  (unless (or (void? result) (void? error))
    (mal! "result error conflict"))
  (unless (equal? id request-id)
    (mal! "bad id"))
  (if (void? error)
    (with-catch mal! (cut decoder result))
    (raise (with-catch mal! (cut json->json-rpc-error error)))))

;;; Server code

;; http handler for json-rpc
;; NB: This will catch any exception raised and convert it into an error notified to the client.
;; TODO: have an optional parameter to specify a logging facility for those errors we find.
(def (json-rpc-handler processor log: (log #f))
  (lambda (req res)
    ;; NB: the JSON RPC over HTTP says that the client MUST specify
    ;; application/json-rpc (preferrably) or else application/json or application/jsonrequest
    ;; in a Content-Type header, and MUST specify and Accept header with one (or many) of them
    ;; and that a Content-Length header MUST be present... but frankly, no one bothers,
    ;; and enforcing any of it would make the server needlessly incompatible with clients,
    ;; so we don't bother either.
    (def http-method (http-request-method req))
    (case http-method
      ((POST) (json-rpc-handler/POST req res processor log)) ;; preferred method
      ((GET) (json-rpc-handler/GET req res processor log)) ;; mostly for testing
      (else
       (when log (log [json-rpc-handler: 'BAD-HTTP-METHOD http-method]))
       (http-response-write-condition res Bad-Request)))))

(def (json-rpc-handler/POST req res processor log)
  (let/cc return
    (def request-json
      (try
       (bytes->json (http-request-body req))
       (catch (_)
         (json-rpc-handler/response
          res log 'BAD-POST
          (hash ("jsonrpc" json-rpc-version) ("error" (parser-error))))
         (return))))
    (json-rpc-handler/JSON res processor log request-json)))

(def (json-rpc-handler/GET req res processor log)
  (let/cc return
    (def request-json
      (try
       (def url-params (form-url-decode (http-request-params req)))
       (def method (assget "method" url-params (void)))
       (unless method (raise 'parser-error))
       (def params (bytes->json
                    (base64-string->u8vector
                     (uri-decode (assget "params" url-params)))))
       (def json (hash ("method" method) ("params" params)))
       (alet (jsonrpc (assget "jsonrpc" url-params))
         (hash-put! json "jsonrpc" jsonrpc))
       (alet (id (assget "id" url-params))
         (hash-put! json "id" id))
       json
       (catch (_)
         (json-rpc-handler/response
          res log 'BAD-GET (hash ("jsonrpc" json-rpc-version) ("error" (parser-error))))
         (return))))
    (json-rpc-handler/JSON res processor log request-json)))

(def (json-rpc-handler/JSON res processor log request-json)
  (json-rpc-handler/response res log request-json (serve-json-rpc processor request-json)))

;; The processor either returns a JSON object, or raise a json-rpc-error
;; Any other error raised will cause an internal error.
;; This function can conceivably be called over a transport other than HTTP.
(def (serve-json-rpc processor request-json)
  (let/cc return
    (def jsonrpc (hash-ref request-json "jsonrpc" (void)))
    (def id (hash-ref request-json "id" (void)))
    (def (return-error e) (return (hash ("jsonrpc" jsonrpc) ("error" e) ("id" id))))
    (def (invalid-req) (return-error (invalid-request)))
    (for-each (lambda (k) (unless (member k '("jsonrpc" "method" "params" "id")) (invalid-req)))
              (hash-keys request-json))
    (unless (member jsonrpc '(#!void "1.0" "2.0")) (set! jsonrpc json-rpc-version) (invalid-req))
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

(def (json-rpc-handler/response res log request-json response-json)
  (let/cc return
    (def response-text
      (try
       (json-object->string response-json)
       (catch (_)
         (when log (log [json-rpc-handler: request-json 'BAD-JSON-RESPONSE]))
         (http-response-write-condition res Internal-Server-Error)
         (return))))
    (when log (log [json-rpc-handler: request-json response-json]))
    (http-response-write res 200 `(("Content-Type" . "text/json-rpc")) response-text)))
