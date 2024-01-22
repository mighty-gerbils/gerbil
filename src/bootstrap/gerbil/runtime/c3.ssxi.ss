prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type c3-linearize__% (@lambda 5 #f))
  (declare-type c3-linearize__0 (@lambda 3 #f))
  (declare-type c3-linearize__1 (@lambda 4 #f))
  (declare-type
   c3-linearize
   (@case-lambda (3 c3-linearize__0) (4 c3-linearize__1) (5 c3-linearize__%)))
  (declare-type c3-linearize-loop__% (@lambda 4 #f))
  (declare-type c3-linearize-loop__0 (@lambda 2 #f))
  (declare-type c3-linearize-loop__1 (@lambda 3 #f))
  (declare-type
   c3-linearize-loop
   (@case-lambda
    (2 c3-linearize-loop__0)
    (3 c3-linearize-loop__1)
    (4 c3-linearize-loop__%)))
  (declare-type c3-select-next (@lambda 3 #f))
  (declare-type remove-next!__% (@lambda 3 #f))
  (declare-type remove-next!__0 (@lambda 2 #f))
  (declare-type
   remove-next!
   (@case-lambda (2 remove-next!__0) (3 remove-next!__%))))
