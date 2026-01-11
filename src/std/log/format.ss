;;; -*- Gerbil -*-
;;; © vyzo
;;; log record formatting
(import :std/text/json
        :std/misc/alist
        :std/time
        :std/io
        :std/io/bio/api
        :std/format/string
        :std/format/io
        :std/text/json
        ./interface
        ./level)
(export #t)

(def (format-record (record : Record)) => :string
  (let (output (open-output-string))
    (defrule (str o)
      (write-string o output))
    (defrule (char c)
      (write-char c output))
    (defrule (space)
      (char #\space))
    (str (time->string record.ts))
    (space)
    (str (log-level->string record.level))
    (space)
    (str record.message)
    (space)
    (str (to-string record.data))
    (get-output-string output)))

(defmethod {:to-string Record}
  __format-record)

(def (record->json-string (record : Record)) => :string
  (json-object->string
   (record->json record)))

(def (record->json-object (record : Record)) => PureAList
   (wacollectq ts:   (time->string record.ts)
               lvl:  (log-level->string record.level)
               src:  record.source
               msg:  record.msg
               data: record.data))

(defwriter-ext (write-record (writer : BufferedWriter)(record : Record))
  (let* ((wr (write-time buffer record.ts))
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

(defmethod {:write Record}
  (lambda (self output)
    (using (writer output : BufferedWriter)
      (writer.write-record self))))

(def (write-record-json (buffer : BufferedWriter) (record : Record)) => :fixnum
  (buffer.write-json (record->json record)))

(defmethod {:write-json Record}
  (lambda (self output)
    (using (writer output : BufferedWriter)
      (writer.write-record-json self))))
