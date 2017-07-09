;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: foreign interface functions
package: gerbil/gambit

(export #t)
(extern namespace: #f
  foreign? foreign-tags foreign-address
  foreign-release! foreign-released?)
