;;; -*- Gerbil -*-
;;; Gerbil stdlib build configuration

(export #t)

;; feature macro
(defsyntax (enable stx)
  (syntax-case stx ()
    ((_ feature #t)
     (with-syntax ((config-have-feature
                    (stx-identifier #'feature "config-have-" #'feature))
                   (config-enable-feature
                    (stx-identifier #'feature "config-enable-" #'feature)))
       #'(begin
           (provide config-have-feature)
           (def config-enable-feature #t))))
    ((_ feature #f)
     (with-syntax ((config-enable-feature
                    (stx-identifier #'feature "config-enable-" #'feature)))
       #'(def config-enable-feature #f)))))

;;; Build Configuration

;; build xml libraries - requires libxml2
(enable libxml #t)

;; build std/text/yaml library - requires libyaml
(enable libyaml #f)

;; build std/dbi/sqlite library -- requires sqlite3
(enable sqlite #f)
