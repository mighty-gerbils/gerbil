prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type c4-linearize__% (@lambda 7 #f))
  (declare-type
   c4-linearize__@
   (@kw-lambda-dispatch
    (get-precedence-list: struct: eq: get-name:)
    c4-linearize__%))
  (declare-type
   c4-linearize
   (@kw-lambda (get-name: struct: get-precedence-list: eq:) c4-linearize__@))
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
   (@kw-lambda-dispatch (struct:) c3-linearize__%))
  (declare-type c3-linearize (@kw-lambda (struct:) c3-linearize__@)))
