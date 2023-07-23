;;; -*- Gerbil -*-
;;; © vyzo
;;; json library
;;; JSON - scheme correspondence:
;;; JSON encoding: the following objects can be converted to json:
;;;  - booleans
;;;  - void (corresponding to js's null)
;;;  - real numbers
;;;  - strings
;;;  - proper lists
;;;  - vectors (encoded as lists)
;;;  - hashes with symbolic or string keys mapping to json encodable objects
;;;  - any object that defines a :json method producing a json encodable objects
;;; JSON decoding produces JSON-encodable objects with the following.
;;; Note that JSON null is decoded as #!void and JSON lists are decoded as
;;;  Scheme lists
(import ./json/api)
(export (import: ./json/api))
