;;; -*- Gerbil -*-
;;; © vyzo
;;; log record formatting
(import :std/io
        :std/io/bio/api
        :std/format/io
        :std/format/string
        :std/text/json/io
        :std/time/io
        :std/misc/alist
        :std/misc/alist/io
        ./interface
        ./level)
(export #t)

(def (record->string (record : Record)) => :string
  (to-string record))

(def (record->json-object (record : Record)) => PureAList
   (wacollectq ts:   record.ts
               lvl:  (log-level->string record.level)
               src:  record.source
               msg:  record.msg
               data: record.data))

(defwriter-ext (format-record writer (record : Record) (wenv : WriteEnv))
  (let* ((wr (writer.format-object record.ts wenv))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-string (log-level->string record.level))))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-symbol record.source)))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-string record.message)))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.format-walist record.data wenv)))
         (wr (fx+ wr (writer.write-newline))))
    wr))

(defwriter-ext (write-record-json writer (record : Record) (env : JSONEnv))
  XXX)

(defmethod {format Record}
  (lambda (self writer wenv)
    (writer.format-record self wenv))
  interface: ObjectFormatter)

(defmethod {write-json Record}
  (lambda (self writer env)
    (writer.write-record-json self env))
  interface: JSONWriter)
