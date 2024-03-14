prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type load-path (@lambda 0 #f))
  (declare-type add-load-path! (@lambda (0) #f))
  (declare-type set-load-path! (@lambda 1 ##set-module-search-order!))
  (declare-type reset-load-path! (@lambda 0 #f))
  (declare-type
   load-module
   (@case-lambda (1 load-module__0) (2 load-module__%)))
  (declare-type __load-module (@lambda 1 #f))
  (declare-type register-builtin-modules! (@lambda 1 #f))
  (declare-type load-module/compat__% (@lambda 2 #f))
  (declare-type load-module/compat__0 (@lambda 1 #f))
  (declare-type
   load-module/compat
   (@case-lambda (1 load-module/compat__0) (2 load-module/compat__%)))
  (declare-type find-library-module (@lambda 1 #f)))
