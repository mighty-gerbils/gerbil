prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#compile-timestamp (@lambda 0 #f))
  (declare-type gxc#compile-timestamp-nanos (@lambda 0 #f))
  (declare-type gxc#with-output-to-scheme-file (@lambda 2 #f))
  (declare-type gxc#gerbil-gsc (@lambda 0 #f))
  (declare-type gxc#gerbil-gcc (@lambda 0 #f))
  (declare-type gxc#gerbil-ar (@lambda 0 #f))
  (declare-type gxc#delete-directory* (@lambda 1 #f))
  (declare-type gxc#compile-module__% (@lambda 2 #f))
  (declare-type gxc#compile-module__0 (@lambda 1 #f))
  (declare-type
   gxc#compile-module
   (@case-lambda (1 gxc#compile-module__0) (2 gxc#compile-module__%)))
  (declare-type gxc#compile-exe__% (@lambda 2 #f))
  (declare-type gxc#compile-exe__0 (@lambda 1 #f))
  (declare-type
   gxc#compile-exe
   (@case-lambda (1 gxc#compile-exe__0) (2 gxc#compile-exe__%)))
  (declare-type gxc#compile-executable-module (@lambda 2 #f))
  (declare-type gxc#compile-executable-module/separate (@lambda 2 #f))
  (declare-type
   gxc#compile-executable-module/full-program-optimization
   (@lambda 2 #f))
  (declare-type gxc#find-export-binding (@lambda 2 #f))
  (declare-type gxc#find-runtime-symbol (@lambda 2 #f))
  (declare-type gxc#find-runtime-module-deps (@lambda 1 #f))
  (declare-type gxc#find-static-module-file (@lambda 1 #f))
  (declare-type gxc#file-empty? (@lambda 1 #f))
  (declare-type gxc#compile-top-module (@lambda 1 #f))
  (declare-type gxc#collect-bindings (@lambda 1 #f))
  (declare-type gxc#compile-runtime-code (@lambda 1 #f))
  (declare-type gxc#compile-meta-code (@lambda 1 #f))
  (declare-type gxc#compile-ssxi-code (@lambda 1 #f))
  (declare-type gxc#generate-meta-code (@lambda 1 #f))
  (declare-type gxc#generate-runtime-phi (@lambda 1 #f))
  (declare-type gxc#lift-nested-modules (@lambda 1 #f))
  (declare-type gxc#compile-scm-file__% (@lambda 3 #f))
  (declare-type gxc#compile-scm-file__0 (@lambda 2 #f))
  (declare-type
   gxc#compile-scm-file
   (@case-lambda (2 gxc#compile-scm-file__0) (3 gxc#compile-scm-file__%)))
  (declare-type gxc#gsc-debug-options__% (@lambda 1 #f))
  (declare-type gxc#gsc-debug-options__0 (@lambda 0 #f))
  (declare-type
   gxc#gsc-debug-options
   (@case-lambda (0 gxc#gsc-debug-options__0) (1 gxc#gsc-debug-options__%)))
  (declare-type gxc#gsc-compile-file (@lambda 2 #f))
  (declare-type gxc#compile-output-file (@lambda 3 #f))
  (declare-type gxc#compile-static-output-file (@lambda 1 #f))
  (declare-type gxc#compile-exe-output-file (@lambda 2 #f))
  (declare-type gxc#static-module-name (@lambda 1 #f))
  (declare-type gxc#invoke (@lambda 2 #f)))
