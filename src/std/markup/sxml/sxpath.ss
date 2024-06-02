;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; SXPath interface

(import :std/error)
(export (import: oleg-SXpath))

(extern namespace: #f pretty-print)

(module oleg-myenv
  (export #t)
  (include "oleg/myenv-gerbil.scm"))

(module oleg-SXpath
  (import oleg-myenv)
  (export #t)
  (include "oleg/SXPath.scm"))

(import oleg-SXpath)