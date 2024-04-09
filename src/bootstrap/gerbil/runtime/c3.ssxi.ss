prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   c4-linearize__%
   (@lambda 7
            #f
            signature:
            (return: values::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   c4-linearize__@
   (@kw-lambda-dispatch
    (get-precedence-list: struct: eq: get-name:)
    c4-linearize__%))
  (declare-type
   c4-linearize
   (@kw-lambda (get-name: struct: get-precedence-list: eq:) c4-linearize__@)))
