;;; -*- Gerbil -*-
;;; © vyzo
;;; HTTP client request methods
(export #t)
(import :std/error
        :std/net/url
        :std/net/ssl
        ./request)

(defrule (defrequest-method name method)
  (def (name target
             headers:          (headers  : :list := [])      ; AList [string . string]; user supplied headers
             body:             (body     : :u8vector := '#u8()) ; request body
             follow-redirects: (follow?  :  :boolean := #t)  ; follow redirects?
             max-redirects:    (max-redirects : :fixnum := 10)
             ssl-context:      (ssl-ctx :~ SSL_CTX? :- :foreign := (default-client-ssl-context))) ; SSL context for https
    => Request
    (http-request (as-url target)
                  method: method
                  headers: headers
                  body: body
                  follow-redirects: follow?
                  redirect-history: []
                  max-redirects: max-redirects
                  ssl-context: ssl-ctx)))

(defrequest-method http-get "GET")
(defrequest-method http-head "HEAD")
(defrequest-method http-post "POST")
(defrequest-method http-put "PUT")
(defrequest-method http-delete "DELETE")
(defrequest-method http-options "OPTIONS")
