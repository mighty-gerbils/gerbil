prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type __init-gx! (@lambda 0 #f))
  (declare-type __load-gxi (@lambda 0 #f))
  (declare-type __gxi-init-interactive! (@lambda 1 #f))
  (declare-type load-scheme (@lambda 1 #f))
  (declare-type load-path (@lambda 0 #f))
  (declare-type library-load-path (@lambda 0 current-module-library-path))
  (declare-type
   expander-load-path
   (@lambda 0 gx#current-expander-module-library-path))
  (declare-type add-load-path (@lambda (0) #f))
  (declare-type add-library-load-path (@lambda (0) #f))
  (declare-type add-expander-load-path (@lambda (0) #f))
  (declare-type cons-load-path (@lambda (0) #f))
  (declare-type cons-library-load-path (@lambda (0) #f))
  (declare-type cons-expander-load-path (@lambda (0) #f))
  (declare-type with-cons-load-path (@lambda (1) #f))
  (declare-type with-cons-library-load-path (@lambda (1) #f))
  (declare-type with-cons-expander-load-path (@lambda (1) #f))
  (declare-type __expand-source (@lambda 1 #f))
  (declare-type __macro-descr (@lambda 2 #f))
  (declare-type __source->syntax (@lambda 1 #f))
  (declare-type __compile-top-source (@lambda 1 #f))
  (declare-type __compile-top (@lambda 1 #f))
  (declare-type __eval-import (@lambda 1 #f))
  (declare-type gerbil-runtime-init! (@lambda 1 #f))
  (declare-type gerbil-load-expander! (@lambda 0 #f)))
