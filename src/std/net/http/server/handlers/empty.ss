;;; -*- Gerbil -*-
;;; © vyzo
;;; empty handlers
(import (for-syntax :std/string/misc)
        :std/interface
        ../interface
        ../status)
(export #t)

(defstruct empty-handler
  ((status : Status)
   ;; body to send with the response, empty by default.
   ;; this allows the application to customize the server, e.g. by
   ;; having a custom 404 handler etc.
   (body   : :u8vector)))

(implement RequestHandler empty-handler
  (handle-request!
   (lambda (self req res)
     (res.write! self.status [] self.body))))

(def (empty-request-handler (status : Status))
  => RequestHandler
  (RequestHandler
   (empty-handler status #u8())))

;; predefined ones
(defsyntax-case defempty-handler ()
  ((_ (code text))
   (with-syntax ((status
                  (syntax-local-introduce
                   (make-symbol
                    (string-substitute-char (stx-e #'text) #\- #\space)))))
     (with-identifier (handler #'status #'status "-handler")
       #'(def handler
           (empty-request-handler status))))))

(defrule (defempty-handlers status ...)
  (begin (defempty-handler status) ...))

(defempty-handlers
  (100 "Continue")
  ;; this cant be empty
  ;; (101 "Switching Protocols")
  (200 "OK")
  (201 "Created")
  (202 "Accepted")
  (203 "Non-Authoritative Information")
  (204 "No Content")
  (205 "Reset Content")
  (206 "Partial Content")
  (300 "Multiple Choices")
  (301 "Moved Permanently")
  (302 "Found")
  (303 "See Other")
  (304 "Not Modified")
  (305 "Use Proxy")
  (307 "Temporary Redirect")
  (400 "Bad Request")
  (401 "Unauthorized")
  (402 "Payment Required")
  (403 "Forbidden")
  (404 "Not Found")
  (405 "Method Not Allowed")
  (406 "Not Acceptable")
  (407 "Proxy Authentication Required")
  (408 "Request Timeout")
  (409 "Conflict")
  (410 "Gone")
  (411 "Length Required")
  (412 "Precondition Failed")
  (413 "Request Entity Too Large")
  (414 "Request-URI Too Long")
  (415 "Unsupported Media Type")
  (416 "Requested Range Not Satisfiable")
  (417 "Expectation Failed")
  (500 "Internal Server Error")
  (501 "Not Implemented")
  (502 "Bad Gateway")
  (503 "Service Unavailable")
  (504 "Gateway Timeout")
  (505 "HTTP Version Not Supported"))
