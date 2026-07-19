;;; -*- Gerbil -*-
;;; © vyzo
;;; http server status codes
(import (for-syntax :std/string/misc)
        :std/error
        ./interface)
(export status-code->status
        defstatus-code
        ;; all status codes exported by macro
        )

(def __status-codes
  (make-vector 600 #f))

(defsyntax-case defstatus-code ()
  ((_ (code text))
   (and (stx-fixnum? #'code)
        (stx-string? #'text))
   (with-syntax ((condition
                  (syntax-local-introduce
                   (make-symbol
                    (string-substitute-char (stx-e #'text) #\- #\space)))))
       #'(begin
           (def condition
             (Status code (quote text)))
           (export condition)
           (vector-set! __status-codes code condition)))))

(defrule (defstatus-codes clause ...)
  (begin (defstatus-code clause) ...))

(defstatus-codes
  (100 "Continue")
  (101 "Switching Protocols")
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

(def (status-code->status (status : :fixnum))
  => Status
  (cond
   ((vector-ref __status-codes status)
    => (cut :- <> Status))
   (else
    (raise-bad-argument status->status-code "unknown status code" status))))
