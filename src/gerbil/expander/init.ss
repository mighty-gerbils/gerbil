;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil.expander initialization
prelude: "../core"
package: gerbil/expander
namespace: gx

(import "../runtime" "core" "module" "top" "root")

(current-expander-context (make-top-context))
(current-expander-module-import core-import-module)
(current-expander-module-eval   core-eval-module)
(current-expander-compile       __compile-top)
(current-expander-eval          ##eval)
(core-bind-root-syntax! ':<root> (make-prelude-context #f) #t)
