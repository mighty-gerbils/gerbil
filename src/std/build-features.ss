;; This file is meant to be include'd by build-config.ss

;; build deprecated packaages
(enable deprecated #f)

;; build std/xml libraries - requires libxml2
(enable libxml #f)

;; build std/text/yaml library - requires libyaml
(enable libyaml #f)

;; build std/text/zlib library - requires zlib
(enable zlib #t)

;; build std/db/sqlite library -- requires sqlite3
(enable sqlite #t)

;; build std/db/lmdb library -- requires LMDB
(enable lmdb #f)

;; build std/db/leveldb library -- requires LevelDB
(enable leveldb #f)
