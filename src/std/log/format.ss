;;; -*- Gerbil -*-
;;; © vyzo
;;; log record formatting
(import :std/io
        :std/io/bio/api
        :std/format/io
        :std/format/ioutil
        :std/format/string
        :std/text/json/io
        :std/time/format
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

(def (log-record (writer :- BufferedWriter) (record :- Record)) => :fixnum
  (let* ((env XXX)
         (wr (writer.format-record record env))
         (wr (fx+ wr (writer.write-newline))))
    wr))

(def (log-record-json (writer :- BufferedWriter) (record :- Record)) => :fixnum
  (let* ((env XXX)
         (wr (writer.format-record-json record env))
         (wr (fx+ wr (writer.write-newline))))
    wr))

(defwriter-ext (format-record writer (record : Record) (env : WriteEnv))
  (let* ((wr (writer.format-object record.ts env))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-string (log-level->string record.level))))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-symbol record.source env)))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-string record.message env)))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.format-object record.data env)))
         (wr (fx+ wr (writer.write-newline))))
    wr))

(defwriter-ext (write-record-json writer (record : Record) (env : JSONEnv))
  XXX)

(defmethod {scan! Record}
  (lambda (self env)
    (scan-object self.data))
  interface: ObjectScanner)

(defmethod {format Record}
  (lambda (self writer env)
    (writer.format-record self env))
  interface: ObjectFormatter)

(defmethod {write-json Record}
  (lambda (self writer env)
    (writer.write-record-json self env))
  interface: JSONWriter)
