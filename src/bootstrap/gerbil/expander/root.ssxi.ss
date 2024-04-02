prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type
   gx#*core-syntax-expanders*
   (optimizer-resolve-class '(typedecl gx#*core-syntax-expanders*) 'pair::t))
  (declare-type
   gx#*core-macro-expanders*
   (optimizer-resolve-class '(typedecl gx#*core-macro-expanders*) 'pair::t))
  (declare-type
   gx#root-context:::init!__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gx#root-context:::init!__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#root-context:::init!
   (@case-lambda
    (1
     gx#root-context:::init!__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     gx#root-context:::init!__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gx#top-context:::init!__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gx#top-context:::init!__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#top-context:::init!
   (@case-lambda
    (1
     gx#top-context:::init!__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     gx#top-context:::init!__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gx#expander-context::bind-core-syntax-expanders!__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gx#expander-context::bind-core-syntax-expanders!__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#expander-context::bind-core-syntax-expanders!
   (@case-lambda
    (1
     gx#expander-context::bind-core-syntax-expanders!__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     gx#expander-context::bind-core-syntax-expanders!__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gx#expander-context::bind-core-macro-expanders!__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gx#expander-context::bind-core-macro-expanders!__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#expander-context::bind-core-macro-expanders!
   (@case-lambda
    (1
     gx#expander-context::bind-core-macro-expanders!__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     gx#expander-context::bind-core-macro-expanders!__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gx#expander-context::bind-core-features!
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t) unchecked: #f))))
