;;; -*- Gerbil -*-
;;; © vyzo
;;; time formatting
(import :std/io
        :std/io/bio/api
        :std/format/io
        :std/text/json/io
        ./time)
(export #t)

(defwriter-ext (write-time writer (tm : Time) (wenv : WriteEnv))
  (let (write (get-object-writer tm))
    (write tm writer wenv)))

(defwriter-ext (write-time-coarse writer (tm : CoarseTime) (wenv : WriteEnv))
  XXX
  )

(defwriter-ext (write-time-precise writer (tm : PreciseTime) (wenv : WriteEnv))
  XXX
  )

(defwriter-ext (write-time-inexact writer (tm : InexactTime) (wenv : WriteEnv))
  XXX
  )

(defmethod {write CoarseTime}
  (lambda (self writer wenv)
    (writer.write-time-coarse self wenv))
  interface: ObjectWriter)

(defmethod {write PreciseTime}
  (lambda (self writer wenv)
    (writer.write-time-precise self wenv))
  interface: ObjectWriter)

(defmethod {write InexactTime}
  (lambda (self writer wenv)
    (writer.write-time-inexact self wenv))
  interface: ObjectWriter)

(defwriter-ext (write-time-coarse-json writer (tm : CoarseTime) (wenv : JSONEnv))
  XXX
  )

(defwriter-ext (write-time-precise-json writer (tm : PreciseTime) (wenv : JSONEnv))
  XXX
  )

(defwriter-ext (write-time-inexact-json writer (tm : InexactTime) (wenv : JSONEnv))
  XXX
  )

(defmethod {write-json CoarseTime}
  (lambda (self writer wenv)
    (writer.write-time-coarse-json self wenv))
  interface: JSONWriter)

(defmethod {write-json PreciseTime}
  (lambda (self writer wenv)
    (writer.write-time-precise-json self wenv))
  interface: JSONWriter)

(defmethod {write-json InexactTime}
  (lambda (self writer wenv)
    (writer.write-time-inexact-json self wenv))
  interface: JSONWriter)
