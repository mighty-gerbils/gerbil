;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; SSAX parser inerface

(import :std/error
        :std/srfi/13)

(export read-xml)

;; ns is an assoc or a hash table of mapping uri (string) -> namespace (string)
;;  same interface as parse-xml so that implementations can be swapped
(def (read-xml source namespaces: (ns []))
  (let* ((ns (if (hash-table? ns)
               (hash->list ns)
               ns))
         (ns (map (match <> ([uri . id] (cons (string->symbol id) uri)))
                  ns)))
    (cond
     ((input-port? source)
      (ssax:xml->sxml source ns))
     ((string? source)
      (call-with-input-string source (cut ssax:xml->sxml <> ns)))
     ((u8vector? source)
      (call-with-input-u8vector source (cut ssax:xml->sxml <> ns)))
     (else
      (error "Bad input source; expected port, string, or u8vector" source)))))

(def ssax:warn void)

(include "oleg/myenv-gerbil.scm")
(include "oleg/char-encoding.scm")
(include "oleg/define-opt.scm")
(include "oleg/parser-errors-vanilla.scm")
(include "oleg/input-parse.scm")
(include "oleg/look-for-str.scm")
(include "oleg/SSAX.scm")
