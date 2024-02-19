prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type load-module__% (@lambda 2 #f))
  (declare-type load-module__0 (@lambda 1 #f))
  (declare-type
   load-module
   (@case-lambda (1 load-module__0) (2 load-module__%)))
  (declare-type find-library-module (@lambda 1 #f)))
