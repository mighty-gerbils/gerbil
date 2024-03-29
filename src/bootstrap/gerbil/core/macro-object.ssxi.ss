prelude: :gerbil/compiler/ssxi
package: gerbil/core

(begin
  (declare-class
   gerbil/core/macro-object#macro-object::t
   (@class gerbil.core#macro-object::t
           ()
           (object::t t::t)
           (macro)
           (macro)
           #f
           #f
           #f
           #f
           #f
           ((apply-macro-expander
             .
             gerbil/core/macro-object#macro-object::apply-macro-expander))))
  (declare-type
   gerbil/core/macro-object#macro-object::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type
   gerbil/core/macro-object#macro-object?
   (@predicate gerbil/core/macro-object#macro-object::t))
  (declare-type
   gerbil/core/macro-object#make-macro-object
   (@constructor gerbil/core/macro-object#macro-object::t))
  (declare-type
   gerbil/core/macro-object#macro-object-macro
   (@accessor gerbil/core/macro-object#macro-object::t macro #t))
  (declare-type
   gerbil/core/macro-object#macro-object-macro-set!
   (@mutator gerbil/core/macro-object#macro-object::t macro #t))
  (declare-type
   gerbil/core/macro-object#&macro-object-macro
   (@accessor gerbil/core/macro-object#macro-object::t macro #f))
  (declare-type
   gerbil/core/macro-object#&macro-object-macro-set!
   (@mutator gerbil/core/macro-object#macro-object::t macro #f))
  (declare-type
   gerbil/core/macro-object#macro-object::apply-macro-expander
   (@lambda 2 #f))
  (declare-type
   gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
   (@lambda 2
            #f
            signature:
            (return: procedure::t effect: #f arguments: #f unchecked: #f))))
