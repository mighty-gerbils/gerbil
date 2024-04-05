prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   load-path
   (@lambda 0
            #f
            signature:
            (return: null::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   add-load-path!
   (@lambda (0)
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type set-load-path! (@lambda 1 #f))
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
             __load-module)))
  (declare-type
   __load-module
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
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
             __reload-module!)))
  (declare-type
   __reload-module!
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type __find-library-module (@lambda 1 #f)))
