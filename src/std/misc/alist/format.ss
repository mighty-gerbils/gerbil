;;; -*- Gerbil -*-
;;; © vyzo
;;; alist writer
(import  :std/io
         :std/io/bio/api
         :std/format/io
         :std/text/json/io
         ./wrapped)
(export #t)

(defwriter-ext (format-alist writer (wa : :list) (wenv : WriteEnv))
  XXX
  )

(defwriter-ext (write-alist-json writer (wa : :list) (env : JSONEnv))
  XXX
  )

(defwriter-ext (format-walist writer (wa : ConcreteAList) (wenv : WriteEnv))
  (writer.format-alist wa.alist wenv))

(defwriter-ext (write-walist-json writer (wa : ConcreteAList) (env : JSONEnv))
  (writer.write-alist-json wa.alist env))

(defmethod {format ConcreteAList}
  (lambda (self writer wenv)
    (writer.format-walist self wenv))
  interface: ObjectFormatter)

(defmethod {write-json ConcreteAList}
  (lambda (self writer env)
    (writer.write-walist-json self env))
  interface: JSONWriter)
