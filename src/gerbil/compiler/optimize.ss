;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        :gerbil/compiler/base
        :gerbil/compiler/compile)
(export #t)

(def current-compile-optimizer-info
  (make-parameter #f))

(defstruct optimizer-info (type ssxi)
  constructor: :init!)

(defmethod {:init! optimizer-info}
  (lambda (self)
    (direct-struct-instance-init!
     self (make-hash-table-eq) (make-hash-table-eq))))

;; sticky to persist across batch compilation and avoid reloading ssxi modules
(def (optimizer-info-init!)
  (unless (current-compile-optimizer-info)
    (current-compile-optimizer-info (make-optimizer-info))))


;; optimizer entry point
(def (optimize! ctx)
  ;; TODO load ssxi deps
  (let (code (optimize-source (module-context-code ctx)))
    (set! (module-context-code ctx) code)))

(def (optimize-source stx)
  ;; TODO actually optimize
  stx
  )
