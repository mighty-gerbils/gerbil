(import :std/misc/string :std/swank/api :std/swank/message :std/sugar)
(export #t)
(def swank-presentations-table (make-hash-table-eq))
(defstruct swank-presentation (client n vector))

(def (swank-present-object object (writer #f))
  (unless writer (set! writer (current-slime-writer)))
  (write-message writer
    `(:write-string ,(##object->string object) :repl-result)))

(def-swank (swank:init-presentations) [])
