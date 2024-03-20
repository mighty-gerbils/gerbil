prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type load-path (@lambda 0 #f))
  (declare-type add-load-path! (@lambda (0) #f))
  (declare-type set-load-path! (@lambda 1 #f))
  (declare-type load-module (@lambda 1 #f))
  (declare-type reload-module! (@lambda 1 #f))
  (declare-type find-library-module (@lambda 1 #f)))
