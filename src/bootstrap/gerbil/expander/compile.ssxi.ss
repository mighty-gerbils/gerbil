prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-method
   gx#core-expander::t
   compile-top-syntax
   gx#core-expander::compile-top-syntax
   #f)
  (declare-type
   gx#core-compile-top-let-values%
   (@case-lambda
    (1 gx#core-compile-top-let-values%__0)
    (2 gx#core-compile-top-let-values%__opt-lambda12521))))
