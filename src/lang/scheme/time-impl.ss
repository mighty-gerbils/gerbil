;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme time) library -- implementation details
package: scheme

(import :scheme/stubs
        :gerbil/gambit)
(export #t)

(def (current-second)
  (time->seconds (current-time)))

;; not supported by Gambit
(defstub current-jiffy)
(defstub jiffies-per-second)
