;;; -*- Gerbil -*-
;;; © vyzo
;;; log record formatting
(import :std/text/json
        :std/tex/utf8
        :std/misc/alist
        :std/time
        :std/io
        :std/io/bio/api
        :std/format/io
        :std/text/json
        ./interface
        ./level)
(export #t)

(def (record->string (record : Record)) => :string
  (using (writer (open-buffered-writer #f very-small-buffer-size) :- BufferedWriter)
    (writer.write-record writer)
    (get-buffer-output-string writer)))

(def (record->json-object (record : Record)) => PureAList
   (wacollectq ts:   record.ts
               lvl:  (log-level->string record.level)
               src:  record.source
               msg:  record.msg
               data: record.data))

(defwriter-ext (write-record writer (record : Record))
  (let* ((wr (writer.write-time record.ts))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-string (log-level->string record.level))))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-symbol record.source)))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-string record.message)))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-walist record.data)))
         (wr (fx+ wr (writer.write-newline))))
    wr))

(defwriter-ext (write-record-json writer (record : Record))
  (writer.write-json (record->json-object record)))

(defmethod {:write Record}
  (lambda (self output)
    (using (writer output : BufferedWriter)
      (writer.write-record self))))

(defmethod {:write-json Record}
  (lambda (self output)
    (using (writer output : BufferedWriter)
      (writer.write-record-json self))))

(defmethod {:to-string Record}
  __record->string)
