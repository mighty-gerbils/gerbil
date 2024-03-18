prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type __load-gxi (@lambda 0 #f))
  (declare-type __gxi-init-interactive! (@lambda 1 #f))
  (declare-type load-scheme (@lambda 1 #f))
  (declare-type __expand-source (@lambda 1 #f))
  (declare-type __macro-descr (@lambda 2 #f))
  (declare-type __source->syntax (@lambda 1 #f))
  (declare-type __compile-top-source (@lambda 1 #f))
  (declare-type __compile-top (@lambda 1 #f))
  (declare-type __eval-import (@lambda 1 #f))
  (declare-type gerbil-runtime-init! (@lambda 1 #f))
  (declare-type gerbil-load-expander! (@lambda 0 #f)))
