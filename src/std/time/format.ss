;;; -*- Gerbil -*-
;;; © vyzo
;;; time formatting
(import :std/io
        :std/io/bio/api
        :std/format/io
        :std/format/ioutil
        :std/text/json/io
        ./time)
(export #t)

(defformatter CoarseTime (format-time-coarse writer tm env)
  XXX
  )

(defformatter PreciseTime (format-time-precise writer tm env)
  XXX
  )

(defformatter InexactTime (format-time-inexact writer tm env)
  XXX
  )

(defjson-writer CoarseTime (write-time-coarse-json writer tm env)
  XXX
  )

(defjson-writer PreciseTime (write-time-precise-json writer tm env)
  XXX
  )

(defjson-writer InexactTime (write-time-inexact-json writer tm env)
  XXX
  )
