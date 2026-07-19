;;; -*- Gerbil -*-
;;; © vyzo
;;; json api
(import ./env
        ./io
        ./writer
        ./reader
        ./util)
(export
 ;; environment
 JSONReadOptions JSONWriteOptions JSONWriteContext
 current-json-read-options current-json-write-options
 default-json-read-options default-json-write-options
 json-read-options json-write-options
 json-write-context make-json-write-context
 ;; buffered writer/reader
 write-json
 read-json
 ;; string / bytes
 string->json
 json->string
 u8vector->json
 json->u8vector
 ;; pretty-print
 pretty-json
 ;; low-level
 write-json-object
 json-key-string
 json-sort-alist)
