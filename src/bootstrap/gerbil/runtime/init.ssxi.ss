prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   __scheme-source
   (optimizer-resolve-class
    '(typedecl __scheme-source)
    '#<!class #11389 id: procedure super: () precedence-list: (t::t)>))
  (declare-type
   __load-gxi
   (@lambda 0
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __gxi-init-interactive!
   (@lambda 1
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   load-scheme
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type __expand-source (@lambda 1 #f))
  (declare-type __macro-descr (@lambda 2 #f))
  (declare-type __source->syntax (@lambda 1 #f))
  (declare-type
   __compile-top-source
   (@lambda 1
            #f
            signature:
            (return: pair::t effect: #f arguments: #f unchecked: #f)))
  (declare-type __compile-top (@lambda 1 #f))
  (declare-type __eval-import (@lambda 1 #f))
  (declare-type __eval-module (@lambda 1 gx#core-eval-module))
  (declare-type gerbil-runtime-init! (@lambda 1 #f))
  (declare-type
   __runtime-initialized
   (optimizer-resolve-class
    '(typedecl __runtime-initialized)
    '#<!class #13889
              id: false
              super: (boolean::t atom::t)
              precedence-list: (boolean::t atom::t immediate::t t::t)>))
  (declare-type gerbil-load-expander! (@lambda 0 #f)))
