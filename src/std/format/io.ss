;;; -*- Gerbil -*-
;;; © vyzo
(import :std/io/interface
	:std/serde/interface
        :std/serde/serialize
        ./env
        ./ioutil)
(export #t)

(def (format-write (writer : BufferedWriter) obj (env : WriteEnv))
  => :fixnum
  (writer.serialize obj (@format-env env (style: FORMAT-WRITE))))

(def (format-display (writer : BufferedWriter) obj (env : WriteEnv))
  => :fixnum
  (writer.serialize obj (@format-env env (style: FORMAT-DISPLAY))))

(def (format-debug (writer : BufferedWriter) obj (env : WriteEnv))
  => :fixnum
  (writer.serialize obj (@format-env env (style: FORMAT-DEBUG))))

(def (format-println (writer : BufferedWriter) obj (env : WriteEnv))
  => :fixnum
  (do-write (wr 0)
    (writer.serialize obj env)
    (writer.write-newline)
    (begin
      (writer.flush)
      wr)))
