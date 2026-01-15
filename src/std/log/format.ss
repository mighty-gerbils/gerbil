;;; -*- Gerbil -*-
;;; © vyzo
;;; log record formatting
(import :std/io
        :std/io/bio/api
        :std/format/env
        :std/format/io
        :std/format/ioutil
        :std/format/string
        :std/text/json/io
        :std/misc/alist
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

(defformatter Record (format-record writer record env)
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

(defjson-writer (write-record-json writer record env)
  XXX)
