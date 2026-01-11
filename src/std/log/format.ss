;;; -*- Gerbil -*-
;;; © vyzo
;;; log record formatting
(import :std/text/json
        :std/misc/alist
        :std/time
        :std/io
        :std/io/bio
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
    (defrule (space)
      (write-char #\space output))
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

(defmethod {:write-json Record}
  (lambda (self output)
    (cond
     ((try-BufferedWriter output)
      => (lambda ((writer : - BufferedWriter))
           (writer.write-record self)))
     (else
      (using (writer (open-buffered-writer output) :- BufferedWriter)
        (unwind-protect
          (writer.write-record self)
          (writer.flush)))))))

(def (record->json-object (record : Record)) => PureAList
   (wacollectq ts:   (time->string record.ts)
               lvl:  (log-level->string record.level)
               src:  record.source
               msg:  record.msg
               data: record.data))

(defwriter-method (write-record (writer : BufferedWriter)(record : Record))
  (defrule (write-space)
    (writer.write-u8 #x20))
  (defrule (write-newline)
    (writer.write-u8 #x0A))
  (let* ((wr (write-time buffer record.ts))
         (wr (fx+ wr (write-space)))
         (wr (fx+ wr (writer.write-string (log-level->string record.level))))
         (wr (fx+ wr (write-space)))
         (wr (fx+ wr (writer.write-string record.message)))
         (wr (fx+ wr (write-space)))
         (wr (fx+ wr (writer.write-walist record.data)))
         (wr (fx+ wr (Write-newline))))
    wr))

(def (write-record-json (buffer : BufferedWriter) (record : Record)) => :fixnum
  (buffer.write-json (record->json record)))
