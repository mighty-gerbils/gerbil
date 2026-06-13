;;; -*- Gerbil -*-
;;; © vyzo
;;; log record formatting
(import :std/time/precise
        :std/io
        :std/format
        ./interface
        ./level)
(export #t)

(def (format-log-line (writer : BufferedWriter) (record : Record))
  (fprintf writer "%d.%d %a %a %a %s\n"
          (CoarseTime-seconds record.ts)
          (CoarseTime-useconds record.ts)
          (log-level->string record.level)
          record.source
          record.msg
          record.data.alist))
