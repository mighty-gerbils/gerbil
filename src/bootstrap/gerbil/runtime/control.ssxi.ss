prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   make-promise
   (@lambda 1
            #f
            signature:
            (return:
             promise::t
             effect:
             #f
             arguments:
             (procedure::t)
             unchecked:
             __make-promise
             origin:
             gerbil/runtime/control)))
  (declare-type
   __make-promise
   (@lambda 1
            #f
            signature:
            (return:
             promise::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/control)))
  (declare-type
   call-with-parameters
   (@lambda (1)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t . t::t)
             unchecked:
             __call-with-parameters
             origin:
             gerbil/runtime/control)))
  (declare-type
   __call-with-parameters
   (@lambda (1)
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
             gerbil/runtime/control)))
  (declare-type
   with-unwind-protect
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t procedure::t)
             unchecked:
             __with-unwind-protect
             origin:
             gerbil/runtime/control)))
  (declare-type
   __with-unwind-protect
   (@lambda 2
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
             gerbil/runtime/control)))
  (declare-type
   keyword-dispatch
   (@lambda (2)
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
             gerbil/runtime/control)))
  (declare-type
   keyword-rest
   (@lambda (1)
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
             gerbil/runtime/control))))
