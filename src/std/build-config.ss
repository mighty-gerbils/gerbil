;;; -*- Gerbil -*-
;;; Gerbil stdlib build configuration

(export #t)

;; build xml libraries - requires libxml2
(def config-enable-libxml #t)

;; build std/text/yaml library - requires libyaml
(def config-enable-libyaml #f)

;; build std/dbi/sqlite library -- requires sqlite3
(def config-enable-sqlite #f)
