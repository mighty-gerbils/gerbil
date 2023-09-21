prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type gx#root-context:::init!__% (@lambda 2 #f))
  (declare-type gx#root-context:::init!__0 (@lambda 1 #f))
  (declare-type
   gx#root-context:::init!
   (@case-lambda
    (1 gx#root-context:::init!__0)
    (2 gx#root-context:::init!__%)))
  (declare-type gx#root-context:::init!::specialize (@lambda 1 #f))
  (declare-type gx#top-context:::init!__% (@lambda 2 #f))
  (declare-type gx#top-context:::init!__0 (@lambda 1 #f))
  (declare-type
   gx#top-context:::init!
   (@case-lambda (1 gx#top-context:::init!__0) (2 gx#top-context:::init!__%)))
  (declare-type
   gx#expander-context::bind-core-syntax-expanders!__%
   (@lambda 2 #f))
  (declare-type
   gx#expander-context::bind-core-syntax-expanders!__0
   (@lambda 1 #f))
  (declare-type
   gx#expander-context::bind-core-syntax-expanders!
   (@case-lambda
    (1 gx#expander-context::bind-core-syntax-expanders!__0)
    (2 gx#expander-context::bind-core-syntax-expanders!__%)))
  (declare-type
   gx#expander-context::bind-core-macro-expanders!__%
   (@lambda 2 #f))
  (declare-type
   gx#expander-context::bind-core-macro-expanders!__0
   (@lambda 1 #f))
  (declare-type
   gx#expander-context::bind-core-macro-expanders!
   (@case-lambda
    (1 gx#expander-context::bind-core-macro-expanders!__0)
    (2 gx#expander-context::bind-core-macro-expanders!__%)))
  (declare-type gx#expander-context::bind-core-features! (@lambda 1 #f)))
