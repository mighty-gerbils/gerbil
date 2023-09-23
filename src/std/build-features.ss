;; This file is meant to be include'd by build-config.ss

;; build deprecated packaages
(enable deprecated #f)

;; build std/text/zlib library - requires zlib
(enable zlib #t)

;; build std/db/sqlite library -- requires sqlite3
(enable sqlite #t)
