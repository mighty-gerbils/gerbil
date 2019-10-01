;;; -*- Gerbil -*-
;;; Gerbil stdlib build configuration
package: std

(import (for-syntax :std/stxutil))

;; feature macro
(defsyntax (enable stx)
  (syntax-case stx ()
    ((_ feature #t)
     (with-syntax ((config-have-feature
                    (format-id #'feature "config-have-~a" #'feature))
                   (config-enable-feature
                    (format-id #'feature "config-enable-~a" #'feature)))
       #'(begin
           (export config-have-feature config-enable-feature)
           (provide config-have-feature)
           (def config-enable-feature #t))))
    ((_ feature #f)
     (with-syntax ((config-enable-feature
                    (format-id #'feature "config-enable-~a" #'feature)))
       #'(begin
           (export config-enable-feature)
           (def config-enable-feature #f))))))

;;; Build Configuration
(include "build-features.ss")
