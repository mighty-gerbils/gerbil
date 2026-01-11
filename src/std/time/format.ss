;;; -*- Gerbil -*-
;;; © vyzo
;;; time formatting
(import :std/io
        :std/string
        ./time)
(export #t)

(def (time->string (tm : Time)) => :string
  XXX
  )

(defmethod {:to-string Time}
  time->string)

(def (write-time (buffer : BufferedWriter) (tm : Time)) => :fixnum
  XXX
  )
