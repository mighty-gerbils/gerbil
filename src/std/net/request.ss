;;; -*- Gerbil -*-
;;; © vyzo
;;; HTTP requests -- v0.18 compatible api
(import :std/error
        :std/io
        :std/net/http/client
        :std/deprecation)
(export
  http-connect
  http-head http-get http-post http-put http-delete http-options
  request? request-url request-status request-status-text
  request-headers
  request-content
  request-text
  request-json
  request-cookies
  request-close
  request-socket
  request-socket-reader
  request-socket-writer)

(module-deprecation-warning!)

(def request? Request?)
(def (request-url (req : Request))
  => :string
  req.url.string)
(def request-status Request-status)
(def request-status-text Request-status-line)
(def request-headers Request-headers)
(def request-content Request-content)
(def (request-text (req : Request))
  => :string
  (utf8->string (Request-content req)))
(def (request-json (req : Request))
  (TODO request-json))
(def (request-cookies (req : Request))
  (TODO request-cookies))
(def request-close Request-close)
(def request-socket Request-sock)
(def request-socket-reader Request-reader)
(def request-socket-writer Request-writer)
