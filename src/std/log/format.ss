;;; -*- Gerbil -*-
;;; © vyzo
;;; log record formatting
(import :std/object
        :std/io/interface
        :std/io/bio/api
        :std/format/env
        :std/format/io
        :std/format/ioutil
        :std/format/string
        :std/format/object
        :std/text/json/io
        :std/misc/alist
        ./interface
        ./level)
(export #t)

(def __timestamp-format-env
  (FormatEnv
   (FormatSettings
    allow-cycles?: #f
    check-cycles?: #f
    compress?: #f
    display?: #t
    precision: 3)))

(def __log-line-format-settings
  (FormatSettings
   allow-cycles?: #t
   check-cycles?: #t
   compress?: #f
   display?: #f
   precision: 3))

(def (make-log-line-format-env) => FormatEnv
  (format-environment __log-line-format-settings))

(def (reset-log-line-format-env! (env : FormatEnv))
  (when env.scan
    (reset-scan-env! env.scan)))

(def (make-log-json-env) => JSONEnv
  XXX
  )

(def (reset-log-json-env! (env : JSONEnv))
  XXX
  )

(defobject-cache __format-env FormatEnv
  make-log-line-format-env
  reset-log-line-format-env!)
(defobject-cache __json-env   JSONEnv
  make-log-json-env
  reset-log-json-env!)

(def (record->string (record : Record)) => :string
  (let* (env (__format-env.get))
    (using (writer (open-buffered-writer #f very-small-buffer-size) :- BufferedWriter)
      (log-record writer record)
      (get-buffer-output-string-utf8 writer))))

(def (log-record (writer :- BufferedWriter) (record :- Record)) => :fixnum
  (let* ((env (__format-env.get))
         (wr  (writer.format-record-line record env))
         (wr  (fx+ wr (writer.write-newline))))
    (__format-env.put! env)
    wr))

(def (log-record-json (writer :- BufferedWriter) (record :- Record)) => :fixnum
  (let* ((env (__json-env.get))
         (wr (writer.write-json record env))
         (wr (fx+ wr (writer.write-newline))))
    (__json-env.put! env)
    wr))

(defwriter-ext (format-record-line writer record env)
  (let* ((wr (writer.format record.ts __timestamp-format-env))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-string (log-level->string record.level))))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-symbol record.source)))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-string record.message)))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.format (walist->list record.data) env))))
    wr))
