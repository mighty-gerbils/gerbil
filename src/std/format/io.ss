;;; -*- Gerbil -*-
;;; © vyzo
(import :std/io/interface
        :std/serde/interface
        :std/serde/serialize
        :std/serde/deserialize
        ./env
        ./ioutil
        ./writer
        ./reader)
(export #t)

(def (format-write (writer : BufferedWriter) obj (ctx : WriteContext))
  => :fixnum
  (writer.serialize obj (@format-env ctx (style: FORMAT-WRITE))))

(def (format-display (writer : BufferedWriter) obj (ctx : WriteContext))
  => :fixnum
  (writer.serialize obj (@format-env ctx (style: FORMAT-DISPLAY))))

(def (format-debug (writer : BufferedWriter) obj (ctx : WriteContext))
  => :fixnum
  (writer.serialize obj (@format-env ctx (style: FORMAT-DEBUG))))

(def (format-println (writer : BufferedWriter) obj (ctx : WriteContext))
  => :fixnum
  (do-write (wr 0)
    (writer.serialize obj ctx)
    (writer.write-newline)
    (begin
      (writer.flush)
      wr)))

(def (format-read (reader : BufferedReader) (env : ReaderEnv))
  (using (top (top-anchor) : Anchor)
    (parse reader env top)
    (top.resolve! env.ctx)))
