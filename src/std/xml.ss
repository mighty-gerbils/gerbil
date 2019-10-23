;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; XML interface

(import :std/build-config
        :std/xml/ssax
        :std/xml/sxpath
        :std/xml/sxml
        :std/xml/print)
(export (import: :std/xml/ssax
                 :std/xml/sxpath
                 :std/xml/sxml
                 :std/xml/print))
(cond-expand
  (config-have-libxml
   (import :std/xml/libxml)
   (export (import: :std/xml/libxml))))
