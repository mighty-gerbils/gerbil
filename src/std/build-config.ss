;;; -*- Gerbil -*-
;;; Gerbil stdlib build configuration
package: std

;; feature macro
(defsyntax (enable stx)
  (syntax-case stx ()
    ((_ feature #t)
     (with-syntax ((config-have-feature
                    (stx-identifier #'feature "config-have-" #'feature))
                   (config-enable-feature
                    (stx-identifier #'feature "config-enable-" #'feature)))
       #'(begin
           (export config-have-feature config-enable-feature)
           (provide config-have-feature)
           (def config-enable-feature #t))))
    ((_ feature #f)
     (with-syntax ((config-enable-feature
                    (stx-identifier #'feature "config-enable-" #'feature)))
       #'(begin
           (export config-enable-feature)
           (def config-enable-feature #f))))))

;;; Build Configuration

;; build std/xml libraries - requires libxml2
(enable libxml #f)

;; build std/text/yaml library - requires libyaml
(enable libyaml #f)

;; build std/text/zlib library - requires zlib
(enable zlib #f)

;; build std/db/sqlite library -- requires sqlite3
(enable sqlite #f)

;; build std/db/lmdb library -- requires LMDB
(enable lmdb #f)
