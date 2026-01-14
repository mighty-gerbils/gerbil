;;; -*- Gerbil -*-
;;; © vyzo
;;; time formatting
(import :std/io
        :std/io/bio/api
        :std/format/io
        :std/text/json/io
        ./time)
(export #t)

(defwriter-ext (format-time-coarse writer (tm : CoarseTime) (env : FormatEnv))
  XXX
  )

(defwriter-ext (format-time-precise writer (tm : PreciseTime) (env : FormatEnv))
  XXX
  )

(defwriter-ext (format-time-inexact writer (tm : InexactTime) (env : FormatEnv))
  XXX
  )

(defmethod {format CoarseTime}
  (lambda (self writer env)
    (writer.format-time-coarse self env))
  interface: ObjectFormatter)

(defmethod {format PreciseTime}
  (lambda (self writer env)
    (writer.format-time-precise self env))
  interface: ObjectFormatter)

(defmethod {format InexactTime}
  (lambda (self writer env)
    (writer.format-time-inexact self env))
  interface: ObjectFormatter)

(defwriter-ext (write-time-coarse-json writer (tm : CoarseTime) (env : JSONEnv))
  XXX
  )

(defwriter-ext (write-time-precise-json writer (tm : PreciseTime) (env : JSONEnv))
  XXX
  )

(defwriter-ext (write-time-inexact-json writer (tm : InexactTime) (env : JSONEnv))
  XXX
  )

(defmethod {write-json CoarseTime}
  (lambda (self writer env)
    (writer.write-time-coarse-json self env))
  interface: JSONWriter)

(defmethod {write-json PreciseTime}
  (lambda (self writer env)
    (writer.write-time-precise-json self env))
  interface: JSONWriter)

(defmethod {write-json InexactTime}
  (lambda (self writer env)
    (writer.write-time-inexact-json self env))
  interface: JSONWriter)
