prelude: :gerbil/compiler/ssxi
package: gerbil/core

(begin
  (declare-type
   |gerbil/core/more-sugar[1]#setq-macro::t|
   (@class gerbil.core#setq-macro::t
           (gerbil/core/macro-object#macro-object::t)
           (gerbil/core/macro-object#macro-object::t)
           ()
           (macro)
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   |gerbil/core/more-sugar[1]#setq-macro?|
   (@predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
  (declare-type
   |gerbil/core/more-sugar[1]#make-setq-macro|
   (@constructor |gerbil/core/more-sugar[1]#setq-macro::t|))
  (declare-type
   |gerbil/core/more-sugar[1]#setq-macro-macro|
   (@accessor |gerbil/core/more-sugar[1]#setq-macro::t| macro #t))
  (declare-type
   |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
   (@mutator |gerbil/core/more-sugar[1]#setq-macro::t| macro #t))
  (declare-type
   |gerbil/core/more-sugar[1]#&setq-macro-macro|
   (@accessor |gerbil/core/more-sugar[1]#setq-macro::t| macro #f))
  (declare-type
   |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
   (@mutator |gerbil/core/more-sugar[1]#setq-macro::t| macro #f))
  (declare-type
   |gerbil/core/more-sugar[1]#setf-macro::t|
   (@class gerbil.core#setf-macro::t
           (gerbil/core/macro-object#macro-object::t)
           (gerbil/core/macro-object#macro-object::t)
           ()
           (macro)
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   |gerbil/core/more-sugar[1]#setf-macro?|
   (@predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
  (declare-type
   |gerbil/core/more-sugar[1]#make-setf-macro|
   (@constructor |gerbil/core/more-sugar[1]#setf-macro::t|))
  (declare-type
   |gerbil/core/more-sugar[1]#setf-macro-macro|
   (@accessor |gerbil/core/more-sugar[1]#setf-macro::t| macro #t))
  (declare-type
   |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
   (@mutator |gerbil/core/more-sugar[1]#setf-macro::t| macro #t))
  (declare-type
   |gerbil/core/more-sugar[1]#&setf-macro-macro|
   (@accessor |gerbil/core/more-sugar[1]#setf-macro::t| macro #f))
  (declare-type
   |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
   (@mutator |gerbil/core/more-sugar[1]#setf-macro::t| macro #f))
  (declare-type
   |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
   (@lambda 1 #f))
  (declare-type
   |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
   (@lambda 1 #f)))
