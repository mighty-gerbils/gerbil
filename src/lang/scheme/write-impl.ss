;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme write) library -- implementation details
(import :gerbil/gambit/readtables
        :gerbil/gambit/ports
        :std/sugar)
(export #t)

(cond-expand
  (,(> (system-version) 409001)
   (extern namespace: #f
     write-simple write-shared))
  (else
   (defrules do-write ()
     ((_ obj port sharing?)
      (let (rt (output-port-readtable port))
        (try
         (set! (output-port-readtable port)
           (readtable-sharing-allowed?-set rt sharing?))
         (write obj port)
         (finally
          (set! (output-port-readtable port) rt))))))

   (def (write-simple obj (port (current-output-port)))
     (do-write obj port #f))
   (def (write-shared obj (port (current-output-port)))
     (do-write obj port #t))))
