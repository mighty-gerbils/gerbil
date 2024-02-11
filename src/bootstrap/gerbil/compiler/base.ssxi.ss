prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#symbol-table::t
   (@class gxc#symbol-table::t
           ()
           ()
           (gensyms bindings)
           (gensyms bindings)
           :init!
           #f
           #f
           ((:init! . gxc#symbol-table:::init!))))
  (declare-type gxc#symbol-table? (@predicate gxc#symbol-table::t))
  (declare-type gxc#make-symbol-table (@constructor gxc#symbol-table::t))
  (declare-type
   gxc#symbol-table-gensyms
   (@accessor gxc#symbol-table::t gensyms #t))
  (declare-type
   gxc#symbol-table-bindings
   (@accessor gxc#symbol-table::t bindings #t))
  (declare-type
   gxc#symbol-table-gensyms-set!
   (@mutator gxc#symbol-table::t gensyms #t))
  (declare-type
   gxc#symbol-table-bindings-set!
   (@mutator gxc#symbol-table::t bindings #t))
  (declare-type
   gxc#&symbol-table-gensyms
   (@accessor gxc#symbol-table::t gensyms #f))
  (declare-type
   gxc#&symbol-table-bindings
   (@accessor gxc#symbol-table::t bindings #f))
  (declare-type
   gxc#&symbol-table-gensyms-set!
   (@mutator gxc#symbol-table::t gensyms #f))
  (declare-type
   gxc#&symbol-table-bindings-set!
   (@mutator gxc#symbol-table::t bindings #f))
  (declare-type gxc#symbol-table:::init! (@lambda 1 #f))
  (declare-type gxc#raise-compile-error (@lambda (2) #f))
  (declare-type gxc#verbose (@lambda (0) #f))
  (declare-type gxc#module-id->path-string (@lambda 1 #f)))
