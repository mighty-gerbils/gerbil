;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio object output
(import :std/interface
        :std/io
        :std/io/bio)
(export #t)

(defstruct WriteEnv () XXX)

(interface ObjectWriter
  (write (writer : BufferedWriter) (wenv : WriteEnv)) => :fixnum)

(defwriter-ext (write-object writer obj (wenv : WriteEnv)) => :fixnum
  (let (method (get-object-writer obj))
    (method obj writer wenv)))

(def (get-object-writer obj) => :procedure
  (get-interface-method-by-index ObjectWriter::interface
                                 obj
                                 (@interface-method-index ObjectWriter write)))

(def (default-write-environment) => WriteEnv
  XXX
  )
