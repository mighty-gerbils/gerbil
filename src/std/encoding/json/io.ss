;;; -*- Gerbil -*-
;;; © vyzo
;;; json io interface
(import :std/io
        :std/io/bio/api
        ./env
        ./writer
        ./reader)
(export #t)

(defwriter-ext (write-json writer obj (ctx : JSONWriteContext))
  (write-json-object writer obj ctx))

(defreader-ext (parse-json reader (opt : JSONReadOptions))
  (parse-json reader opt))
