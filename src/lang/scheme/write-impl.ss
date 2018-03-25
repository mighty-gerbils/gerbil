;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme write) library -- implementation details
package: scheme

(import :gerbil/gambit/readtables
        :gerbil/gambit/ports
        :std/sugar)
(export #t)

(def (write-shared obj (port (current-output-port)))
  (let (rt (output-port-readtable port))
    (try
     (set! (output-port-readtable port)
       (readtable-sharing-allowed?-set rt #t))
     (write obj port)
     (finally
      (set! (output-port-readtable port) rt)))))
