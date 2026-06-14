;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan serde mechanisms
(import :std/error
        ./type)
(export #t)

(def (read-capability-context-from-file (path : :string)
                                        (key  : :u8vector))
  => capability-context
  (TODO read-capability-context-from-file))

(def (write-capability-context-to-file (path : :string)
                                         (key  : :u8vector))
  => capability-context
  (TODO write-capability-context-to-file))
