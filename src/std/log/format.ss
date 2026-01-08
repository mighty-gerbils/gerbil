;;; -*- Gerbil -*-
;;; © vyzo
;;; log record formatting
(import :std/text/json
        :std/misc/walist
        :std/time
        :std/string
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

(def (format-record->json (record : Record)) => :string
  (json-object->string
   (record->json record)))

(def (record->json (record : Record)) => PureAList
   (wacollectq ts:   (time->string record.ts)
               lvl:  (log-level->string record.level)
               src:  record.source
               msg:  record.msg
               data: record.data))
