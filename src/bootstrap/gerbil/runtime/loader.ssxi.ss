prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   __modules
   (optimizer-resolve-class '(typedecl __modules) 't::t))
  (declare-type
   load-path
   (@lambda 0
            #f
            signature:
            (return:
             null::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/loader)))
  (declare-type
   add-load-path!
   (@lambda (0)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/loader)))
  (declare-type
   set-load-path!
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/loader)))
  (declare-type
   load-module
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (string::t)
             unchecked:
             __load-module
             origin:
             gerbil/runtime/loader)))
  (declare-type
   __load-module
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/loader)))
  (declare-type
   reload-module!
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (string::t)
             unchecked:
             __reload-module!
             origin:
             gerbil/runtime/loader)))
  (declare-type
   __reload-module!
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/loader)))
  (declare-type
   __find-library-module
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/loader))))
