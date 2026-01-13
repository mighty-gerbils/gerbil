;;; -*- Gerbil -*-
;;; © vyzo
;;; alist writer
(import  :std/io
         :std/io/bio/api
         :std/format/io
         :std/text/json/io
         ./wrapped)
(export #t)

(defwriter-ext (write-alist writer (wa : :list) (wenv : WriteEnv))
  XXX
  )

(defwriter-ext (write-alist-json writer (wa : :list) (env : JSONEnv))
  XXX
  )

(defwriter-ext (write-walist writer (wa : ConcreteAList) (wenv : WriteEnv))
  (writer.write-alist wa.alist wenv))

(defwriter-ext (write-walist-json writer (wa : ConcreteAList) (env : JSONEnv))
  (writer.write-alist-json wa.alist env))

(defmethod {write ConcreteAList}
  (lambda (self writer wenv)
    (writer.write-walist self wenv))
  interface: ObjectWriter)

(defmethod {write-json ConcreteAList}
  (lambda (self writer env)
    (writer.write-walist-json self env))
  interface: JSONWriter)
