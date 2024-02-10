prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type c4-linearize__% (@lambda 7 #f))
  (declare-type
   c4-linearize__@
   (@kw-lambda-dispatch
    (get-precedence-list: single-inheritance?: eqpred: get-name:)
    c4-linearize__%))
  (declare-type
   c4-linearize
   (@kw-lambda
    (eqpred: get-name: get-precedence-list: single-inheritance?:)
    c4-linearize__@))
  (declare-type c3-linearize__%__% (@lambda 7 #f))
  (declare-type c3-linearize__%__0 (@lambda 5 #f))
  (declare-type c3-linearize__%__1 (@lambda 6 #f))
  (declare-type
   c3-linearize__%
   (@case-lambda
    (5 c3-linearize__%__0)
    (6 c3-linearize__%__1)
    (7 c3-linearize__%__%)))
  (declare-type
   c3-linearize__@
   (@kw-lambda-dispatch (single-inheritance?:) c3-linearize__%))
  (declare-type
   c3-linearize
   (@kw-lambda (single-inheritance?:) c3-linearize__@)))
