;;; -*- Gerbil -*-
;;; © vyzo
;;; alist writer
(import  :std/io
         :std/format/io
         :std/format/ioutil
         :std/text/json/io
         ./wrapped)
(export #t)

(defformatter ConcreteAList (format-walist writer wa env)
  XXX
  )

(defjson-writer ConcreteAList (write-walist-json writer wa env)
  XXX
  )
