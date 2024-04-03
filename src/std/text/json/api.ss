;;; -*- Gerbil -*-
;;; © vyzo
;;; json api
(import ./env ./input ./output ./util)
(export read-json write-json
        string->json-object json-object->string
        bytes->json-object json-object->bytes port->json-object
        json-symbolic-keys json-list-wrapper json-object-walist? json-sort-keys
        trivial-class->json-object trivial-json-object->class
        trivial-struct->json-object trivial-json-object->struct
        JSON JSON::t pretty-json)
