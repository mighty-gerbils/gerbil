;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan capability utilities
(export #t)

(def (capability-includes? (cap   : :string)
                           (other : :string))
  => :boolean
  (or (equal? cap other)
      (and (fx< (string-length cap) (string-length other))
           (string-prefix? cap other)
           (eq? (##string-ref other (string-length cap))
                #\/))))
