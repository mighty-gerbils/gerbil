;;; -*- Gerbil -*-
;;; © vyzo
;;; json api
(import ./env ./input ./output ./util)
(export read-json write-json
        string->json-object json-object->string
        bytes->json-object json-object->bytes port->json-object
        read-json-key-as-symbol? read-json-object-as-walist? read-json-array-as-vector?
        write-json-sort-keys?
        ;; The following line is old names / aliases, TO BE REMOVED as early as v0.19
        json-symbolic-keys json-sort-keys json-list-wrapper ;; <-- TO BE REMOVED
        trivial-class->json-object trivial-json-object->class
        trivial-struct->json-object trivial-json-object->struct
        JSON JSON::t pretty-json)
