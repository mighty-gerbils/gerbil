prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#symbol-table::t
   (@struct-type gxc#symbol-table::t #f 2 :init! ()))
  (declare-type gxc#symbol-table? (@struct-pred gxc#symbol-table::t))
  (declare-type gxc#make-symbol-table (@struct-cons gxc#symbol-table::t))
  (declare-type
   gxc#symbol-table-gensyms
   (@struct-getf gxc#symbol-table::t 0 #f))
  (declare-type
   gxc#symbol-table-bindings
   (@struct-getf gxc#symbol-table::t 1 #f))
  (declare-type
   gxc#symbol-table-gensyms-set!
   (@struct-setf gxc#symbol-table::t 0 #f))
  (declare-type
   gxc#symbol-table-bindings-set!
   (@struct-setf gxc#symbol-table::t 1 #f))
  (declare-type gxc#symbol-table:::init! (@lambda 1 #f))
  (declare-method gxc#symbol-table::t :init! gxc#symbol-table:::init! #f)
  (declare-type gxc#raise-compile-error (@lambda (2) #f))
  (declare-type gxc#verbose (@lambda (0) #f))
  (declare-type gxc#module-id->path-string (@lambda 1 #f)))
