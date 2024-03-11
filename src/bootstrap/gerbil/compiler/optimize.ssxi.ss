prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#optimizer-info-init! (@lambda 0 #f))
  (declare-type gxc#optimize! (@lambda 1 #f))
  (declare-type gxc#optimizer-load-builtin-ssxi (@lambda 1 #f))
  (declare-type gxc#optimizer-load-ssxi-deps (@lambda 1 #f))
  (declare-type gxc#optimizer-load-ssxi (@lambda 1 #f))
  (declare-type gxc#optimizer-import-ssxi (@lambda 1 #f))
  (declare-type gxc#optimizer-import-ssxi-by-id (@lambda 1 #f))
  (declare-type gxc#optimize-source (@lambda 1 #f))
  (declare-type
   gxc#::generate-ssxi::&generate-runtime-empty::t
   (@class gxc#::generate-ssxi::&generate-runtime-empty::t
           ()
           ()
           ()
           ()
           #f
           #f
           #t
           #f
           #f))
  (declare-type
   gxc#::generate-ssxi::&generate-runtime-empty?
   (@predicate gxc#::generate-ssxi::&generate-runtime-empty::t))
  (declare-type
   gxc#make-::generate-ssxi::&generate-runtime-empty
   (@constructor gxc#::generate-ssxi::&generate-runtime-empty::t))
  (declare-type gxc#apply-generate-ssxi (@lambda 1 #f))
  (declare-type gxc#generate-ssxi-begin-syntax% (@lambda 2 #f))
  (declare-type gxc#generate-ssxi-module% (@lambda 2 #f))
  (declare-type gxc#generate-ssxi-define-values% (@lambda 2 #f))
  (declare-type gxc#generate-ssxi-call% (@lambda 2 #f))
  (declare-type gxc#!alias::typedecl (@lambda 1 #f))
  (declare-type gxc#!class::typedecl (@lambda 1 #f))
  (declare-type gxc#!predicate::typedecl (@lambda 1 #f))
  (declare-type gxc#!constructor::typedecl (@lambda 1 #f))
  (declare-type gxc#!accessor::typedecl (@lambda 1 #f))
  (declare-type gxc#!mutator::typedecl (@lambda 1 #f))
  (declare-type gxc#!lambda::typedecl (@lambda 1 #f))
  (declare-type gxc#!case-lambda::typedecl (@lambda 1 #f))
  (declare-type gxc#!kw-lambda::typedecl (@lambda 1 #f))
  (declare-type gxc#!kw-lambda-primary::typedecl (@lambda 1 #f)))
