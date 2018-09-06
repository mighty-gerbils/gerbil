#!/usr/bin/env gxi
;;; -*- Gerbil -*-
;;; Given a scheme source file, dump the defined symbols
;;; It could be clever and only dump exports, but kiss.

(def (main file)
  (call-with-input-file file
    (lambda (port)
      (for-each
        snarf-symbol!
        (read-all port read)))))

(def (snarf-symbol! token)
  (def (snarf! head)
    (match head
      ([(? symbol? id) . args]
       (displayln id))
      ((? symbol? id)
       (displayln id))
      (else (void))))

  (match token
    ([defn head . body]
     (case defn
       ((def def* define defstruct defclass defsyntax defrules)
        (snarf! head))))
    (else (void))))
