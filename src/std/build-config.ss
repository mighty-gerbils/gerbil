;;; -*- Gerbil -*-
;;; Gerbil stdlib build configuration

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
(include "build-features.ss")
