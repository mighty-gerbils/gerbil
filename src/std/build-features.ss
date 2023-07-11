;; This file is meant to be include'd by build-config.ss

;; build std/xml libraries - requires libxml2
(enable libxml #t)

;; build std/text/yaml library - requires libyaml
(enable libyaml #t)

;; build std/text/zlib library - requires zlib
(enable zlib #t)

;; build std/db/sqlite library -- requires sqlite3
(enable sqlite #t)

;; build std/db/mysql library -- requires mysql (libmysqlclient)
(enable mysql #t)

;; build std/db/lmdb library -- requires LMDB
(enable lmdb #t)

;; build std/db/leveldb library -- requires LevelDB
(enable leveldb #t)
