prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type c4-linearize__% (@lambda 7 #f))
  (declare-type c4-linearize__@ (@lambda (1) #f))
  (declare-type
   c4-linearize
   (@kw-lambda (get-name: struct: get-precedence-list: eq:) c4-linearize__@)))
