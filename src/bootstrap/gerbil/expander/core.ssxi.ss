prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-type
   gx#current-expander-context
   (optimizer-resolve-class
    '(typedecl gx#current-expander-context)
    'procedure::t))
  (declare-type
   gx#current-expander-marks
   (optimizer-resolve-class
    '(typedecl gx#current-expander-marks)
    'procedure::t))
  (declare-type
   gx#current-expander-phi
   (optimizer-resolve-class '(typedecl gx#current-expander-phi) 'procedure::t))
  (declare-type
   gx#current-expander-path
   (optimizer-resolve-class
    '(typedecl gx#current-expander-path)
    'procedure::t))
  (declare-type
   gx#current-expander-eval
   (optimizer-resolve-class
    '(typedecl gx#current-expander-eval)
    'procedure::t))
  (declare-type
   gx#current-expander-compile
   (optimizer-resolve-class
    '(typedecl gx#current-expander-compile)
    'procedure::t))
  (declare-type
   gx#current-expander-module-eval
   (optimizer-resolve-class
    '(typedecl gx#current-expander-module-eval)
    'procedure::t))
  (declare-type
   gx#current-expander-module-import
   (optimizer-resolve-class
    '(typedecl gx#current-expander-module-import)
    'procedure::t))
  (declare-type
   gx#current-expander-module-prelude
   (optimizer-resolve-class
    '(typedecl gx#current-expander-module-prelude)
    'procedure::t))
  (declare-type
   gx#current-expander-allow-rebind?
   (optimizer-resolve-class
    '(typedecl gx#current-expander-allow-rebind?)
    'procedure::t))
  (declare-type
   gx#current-expander-compiling?
   (optimizer-resolve-class
    '(typedecl gx#current-expander-compiling?)
    'procedure::t))
  (declare-class
   gx#expander-context::t
   (@class gx#expander-context::t
           ()
           (object::t t::t)
           (id table)
           (id table)
           :init!
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#expander-context::t
   (optimizer-resolve-class '(typedecl gx#expander-context::t) 'class::t))
  (declare-type gx#expander-context? (@predicate gx#expander-context::t))
  (declare-type gx#make-expander-context (@constructor gx#expander-context::t))
  (declare-type
   gx#expander-context-id
   (@accessor gx#expander-context::t id #t))
  (declare-type
   gx#expander-context-table
   (@accessor gx#expander-context::t table #t))
  (declare-type
   gx#expander-context-id-set!
   (@mutator gx#expander-context::t id #t))
  (declare-type
   gx#expander-context-table-set!
   (@mutator gx#expander-context::t table #t))
  (declare-type
   gx#&expander-context-id
   (@accessor gx#expander-context::t id #f))
  (declare-type
   gx#&expander-context-table
   (@accessor gx#expander-context::t table #f))
  (declare-type
   gx#&expander-context-id-set!
   (@mutator gx#expander-context::t id #f))
  (declare-type
   gx#&expander-context-table-set!
   (@mutator gx#expander-context::t table #f))
  (declare-class
   gx#root-context::t
   (@class gx#root-context::t
           (gx#expander-context::t)
           (gx#expander-context::t object::t t::t)
           ()
           (id table)
           :init!
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#root-context::t
   (optimizer-resolve-class '(typedecl gx#root-context::t) 'class::t))
  (declare-type gx#root-context? (@predicate gx#root-context::t))
  (declare-type gx#make-root-context (@constructor gx#root-context::t))
  (declare-type gx#root-context-id (@accessor gx#root-context::t id #t))
  (declare-type gx#root-context-table (@accessor gx#root-context::t table #t))
  (declare-type gx#root-context-id-set! (@mutator gx#root-context::t id #t))
  (declare-type
   gx#root-context-table-set!
   (@mutator gx#root-context::t table #t))
  (declare-type gx#&root-context-id (@accessor gx#root-context::t id #f))
  (declare-type gx#&root-context-table (@accessor gx#root-context::t table #f))
  (declare-type gx#&root-context-id-set! (@mutator gx#root-context::t id #f))
  (declare-type
   gx#&root-context-table-set!
   (@mutator gx#root-context::t table #f))
  (declare-class
   gx#phi-context::t
   (@class gx#phi-context::t
           (gx#expander-context::t)
           (gx#expander-context::t object::t t::t)
           (super up down)
           (id table super up down)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gx#phi-context:::init!))))
  (declare-type
   gx#phi-context::t
   (optimizer-resolve-class '(typedecl gx#phi-context::t) 'class::t))
  (declare-type gx#phi-context? (@predicate gx#phi-context::t))
  (declare-type gx#make-phi-context (@constructor gx#phi-context::t))
  (declare-type gx#phi-context-super (@accessor gx#phi-context::t super #t))
  (declare-type gx#phi-context-up (@accessor gx#phi-context::t up #t))
  (declare-type gx#phi-context-down (@accessor gx#phi-context::t down #t))
  (declare-type gx#phi-context-id (@accessor gx#phi-context::t id #t))
  (declare-type gx#phi-context-table (@accessor gx#phi-context::t table #t))
  (declare-type
   gx#phi-context-super-set!
   (@mutator gx#phi-context::t super #t))
  (declare-type gx#phi-context-up-set! (@mutator gx#phi-context::t up #t))
  (declare-type gx#phi-context-down-set! (@mutator gx#phi-context::t down #t))
  (declare-type gx#phi-context-id-set! (@mutator gx#phi-context::t id #t))
  (declare-type
   gx#phi-context-table-set!
   (@mutator gx#phi-context::t table #t))
  (declare-type gx#&phi-context-super (@accessor gx#phi-context::t super #f))
  (declare-type gx#&phi-context-up (@accessor gx#phi-context::t up #f))
  (declare-type gx#&phi-context-down (@accessor gx#phi-context::t down #f))
  (declare-type gx#&phi-context-id (@accessor gx#phi-context::t id #f))
  (declare-type gx#&phi-context-table (@accessor gx#phi-context::t table #f))
  (declare-type
   gx#&phi-context-super-set!
   (@mutator gx#phi-context::t super #f))
  (declare-type gx#&phi-context-up-set! (@mutator gx#phi-context::t up #f))
  (declare-type gx#&phi-context-down-set! (@mutator gx#phi-context::t down #f))
  (declare-type gx#&phi-context-id-set! (@mutator gx#phi-context::t id #f))
  (declare-type
   gx#&phi-context-table-set!
   (@mutator gx#phi-context::t table #f))
  (declare-class
   gx#top-context::t
   (@class gx#top-context::t
           (gx#phi-context::t)
           (gx#phi-context::t gx#expander-context::t object::t t::t)
           ()
           (id table super up down)
           :init!
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#top-context::t
   (optimizer-resolve-class '(typedecl gx#top-context::t) 'class::t))
  (declare-type gx#top-context? (@predicate gx#top-context::t))
  (declare-type gx#make-top-context (@constructor gx#top-context::t))
  (declare-type gx#top-context-super (@accessor gx#top-context::t super #t))
  (declare-type gx#top-context-up (@accessor gx#top-context::t up #t))
  (declare-type gx#top-context-down (@accessor gx#top-context::t down #t))
  (declare-type gx#top-context-id (@accessor gx#top-context::t id #t))
  (declare-type gx#top-context-table (@accessor gx#top-context::t table #t))
  (declare-type
   gx#top-context-super-set!
   (@mutator gx#top-context::t super #t))
  (declare-type gx#top-context-up-set! (@mutator gx#top-context::t up #t))
  (declare-type gx#top-context-down-set! (@mutator gx#top-context::t down #t))
  (declare-type gx#top-context-id-set! (@mutator gx#top-context::t id #t))
  (declare-type
   gx#top-context-table-set!
   (@mutator gx#top-context::t table #t))
  (declare-type gx#&top-context-super (@accessor gx#top-context::t super #f))
  (declare-type gx#&top-context-up (@accessor gx#top-context::t up #f))
  (declare-type gx#&top-context-down (@accessor gx#top-context::t down #f))
  (declare-type gx#&top-context-id (@accessor gx#top-context::t id #f))
  (declare-type gx#&top-context-table (@accessor gx#top-context::t table #f))
  (declare-type
   gx#&top-context-super-set!
   (@mutator gx#top-context::t super #f))
  (declare-type gx#&top-context-up-set! (@mutator gx#top-context::t up #f))
  (declare-type gx#&top-context-down-set! (@mutator gx#top-context::t down #f))
  (declare-type gx#&top-context-id-set! (@mutator gx#top-context::t id #f))
  (declare-type
   gx#&top-context-table-set!
   (@mutator gx#top-context::t table #f))
  (declare-class
   gx#module-context::t
   (@class gx#module-context::t
           (gx#top-context::t)
           (gx#top-context::t
            gx#phi-context::t
            gx#expander-context::t
            object::t
            t::t)
           (ns path import export e code)
           (id table super up down ns path import export e code)
           :init!
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#module-context::t
   (optimizer-resolve-class '(typedecl gx#module-context::t) 'class::t))
  (declare-type gx#module-context? (@predicate gx#module-context::t))
  (declare-type gx#make-module-context (@constructor gx#module-context::t))
  (declare-type gx#module-context-ns (@accessor gx#module-context::t ns #t))
  (declare-type
   gx#module-context-path
   (@accessor gx#module-context::t path #t))
  (declare-type
   gx#module-context-import
   (@accessor gx#module-context::t import #t))
  (declare-type
   gx#module-context-export
   (@accessor gx#module-context::t export #t))
  (declare-type gx#module-context-e (@accessor gx#module-context::t e #t))
  (declare-type
   gx#module-context-code
   (@accessor gx#module-context::t code #t))
  (declare-type
   gx#module-context-super
   (@accessor gx#module-context::t super #t))
  (declare-type gx#module-context-up (@accessor gx#module-context::t up #t))
  (declare-type
   gx#module-context-down
   (@accessor gx#module-context::t down #t))
  (declare-type gx#module-context-id (@accessor gx#module-context::t id #t))
  (declare-type
   gx#module-context-table
   (@accessor gx#module-context::t table #t))
  (declare-type
   gx#module-context-ns-set!
   (@mutator gx#module-context::t ns #t))
  (declare-type
   gx#module-context-path-set!
   (@mutator gx#module-context::t path #t))
  (declare-type
   gx#module-context-import-set!
   (@mutator gx#module-context::t import #t))
  (declare-type
   gx#module-context-export-set!
   (@mutator gx#module-context::t export #t))
  (declare-type gx#module-context-e-set! (@mutator gx#module-context::t e #t))
  (declare-type
   gx#module-context-code-set!
   (@mutator gx#module-context::t code #t))
  (declare-type
   gx#module-context-super-set!
   (@mutator gx#module-context::t super #t))
  (declare-type
   gx#module-context-up-set!
   (@mutator gx#module-context::t up #t))
  (declare-type
   gx#module-context-down-set!
   (@mutator gx#module-context::t down #t))
  (declare-type
   gx#module-context-id-set!
   (@mutator gx#module-context::t id #t))
  (declare-type
   gx#module-context-table-set!
   (@mutator gx#module-context::t table #t))
  (declare-type gx#&module-context-ns (@accessor gx#module-context::t ns #f))
  (declare-type
   gx#&module-context-path
   (@accessor gx#module-context::t path #f))
  (declare-type
   gx#&module-context-import
   (@accessor gx#module-context::t import #f))
  (declare-type
   gx#&module-context-export
   (@accessor gx#module-context::t export #f))
  (declare-type gx#&module-context-e (@accessor gx#module-context::t e #f))
  (declare-type
   gx#&module-context-code
   (@accessor gx#module-context::t code #f))
  (declare-type
   gx#&module-context-super
   (@accessor gx#module-context::t super #f))
  (declare-type gx#&module-context-up (@accessor gx#module-context::t up #f))
  (declare-type
   gx#&module-context-down
   (@accessor gx#module-context::t down #f))
  (declare-type gx#&module-context-id (@accessor gx#module-context::t id #f))
  (declare-type
   gx#&module-context-table
   (@accessor gx#module-context::t table #f))
  (declare-type
   gx#&module-context-ns-set!
   (@mutator gx#module-context::t ns #f))
  (declare-type
   gx#&module-context-path-set!
   (@mutator gx#module-context::t path #f))
  (declare-type
   gx#&module-context-import-set!
   (@mutator gx#module-context::t import #f))
  (declare-type
   gx#&module-context-export-set!
   (@mutator gx#module-context::t export #f))
  (declare-type gx#&module-context-e-set! (@mutator gx#module-context::t e #f))
  (declare-type
   gx#&module-context-code-set!
   (@mutator gx#module-context::t code #f))
  (declare-type
   gx#&module-context-super-set!
   (@mutator gx#module-context::t super #f))
  (declare-type
   gx#&module-context-up-set!
   (@mutator gx#module-context::t up #f))
  (declare-type
   gx#&module-context-down-set!
   (@mutator gx#module-context::t down #f))
  (declare-type
   gx#&module-context-id-set!
   (@mutator gx#module-context::t id #f))
  (declare-type
   gx#&module-context-table-set!
   (@mutator gx#module-context::t table #f))
  (declare-class
   gx#prelude-context::t
   (@class gx#prelude-context::t
           (gx#top-context::t)
           (gx#top-context::t
            gx#phi-context::t
            gx#expander-context::t
            object::t
            t::t)
           (path import e)
           (id table super up down path import e)
           :init!
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#prelude-context::t
   (optimizer-resolve-class '(typedecl gx#prelude-context::t) 'class::t))
  (declare-type gx#prelude-context? (@predicate gx#prelude-context::t))
  (declare-type gx#make-prelude-context (@constructor gx#prelude-context::t))
  (declare-type
   gx#prelude-context-path
   (@accessor gx#prelude-context::t path #t))
  (declare-type
   gx#prelude-context-import
   (@accessor gx#prelude-context::t import #t))
  (declare-type gx#prelude-context-e (@accessor gx#prelude-context::t e #t))
  (declare-type
   gx#prelude-context-super
   (@accessor gx#prelude-context::t super #t))
  (declare-type gx#prelude-context-up (@accessor gx#prelude-context::t up #t))
  (declare-type
   gx#prelude-context-down
   (@accessor gx#prelude-context::t down #t))
  (declare-type gx#prelude-context-id (@accessor gx#prelude-context::t id #t))
  (declare-type
   gx#prelude-context-table
   (@accessor gx#prelude-context::t table #t))
  (declare-type
   gx#prelude-context-path-set!
   (@mutator gx#prelude-context::t path #t))
  (declare-type
   gx#prelude-context-import-set!
   (@mutator gx#prelude-context::t import #t))
  (declare-type
   gx#prelude-context-e-set!
   (@mutator gx#prelude-context::t e #t))
  (declare-type
   gx#prelude-context-super-set!
   (@mutator gx#prelude-context::t super #t))
  (declare-type
   gx#prelude-context-up-set!
   (@mutator gx#prelude-context::t up #t))
  (declare-type
   gx#prelude-context-down-set!
   (@mutator gx#prelude-context::t down #t))
  (declare-type
   gx#prelude-context-id-set!
   (@mutator gx#prelude-context::t id #t))
  (declare-type
   gx#prelude-context-table-set!
   (@mutator gx#prelude-context::t table #t))
  (declare-type
   gx#&prelude-context-path
   (@accessor gx#prelude-context::t path #f))
  (declare-type
   gx#&prelude-context-import
   (@accessor gx#prelude-context::t import #f))
  (declare-type gx#&prelude-context-e (@accessor gx#prelude-context::t e #f))
  (declare-type
   gx#&prelude-context-super
   (@accessor gx#prelude-context::t super #f))
  (declare-type gx#&prelude-context-up (@accessor gx#prelude-context::t up #f))
  (declare-type
   gx#&prelude-context-down
   (@accessor gx#prelude-context::t down #f))
  (declare-type gx#&prelude-context-id (@accessor gx#prelude-context::t id #f))
  (declare-type
   gx#&prelude-context-table
   (@accessor gx#prelude-context::t table #f))
  (declare-type
   gx#&prelude-context-path-set!
   (@mutator gx#prelude-context::t path #f))
  (declare-type
   gx#&prelude-context-import-set!
   (@mutator gx#prelude-context::t import #f))
  (declare-type
   gx#&prelude-context-e-set!
   (@mutator gx#prelude-context::t e #f))
  (declare-type
   gx#&prelude-context-super-set!
   (@mutator gx#prelude-context::t super #f))
  (declare-type
   gx#&prelude-context-up-set!
   (@mutator gx#prelude-context::t up #f))
  (declare-type
   gx#&prelude-context-down-set!
   (@mutator gx#prelude-context::t down #f))
  (declare-type
   gx#&prelude-context-id-set!
   (@mutator gx#prelude-context::t id #f))
  (declare-type
   gx#&prelude-context-table-set!
   (@mutator gx#prelude-context::t table #f))
  (declare-class
   gx#local-context::t
   (@class gx#local-context::t
           (gx#phi-context::t)
           (gx#phi-context::t gx#expander-context::t object::t t::t)
           ()
           (id table super up down)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gx#local-context:::init!))))
  (declare-type
   gx#local-context::t
   (optimizer-resolve-class '(typedecl gx#local-context::t) 'class::t))
  (declare-type gx#local-context? (@predicate gx#local-context::t))
  (declare-type gx#make-local-context (@constructor gx#local-context::t))
  (declare-type
   gx#local-context-super
   (@accessor gx#local-context::t super #t))
  (declare-type gx#local-context-up (@accessor gx#local-context::t up #t))
  (declare-type gx#local-context-down (@accessor gx#local-context::t down #t))
  (declare-type gx#local-context-id (@accessor gx#local-context::t id #t))
  (declare-type
   gx#local-context-table
   (@accessor gx#local-context::t table #t))
  (declare-type
   gx#local-context-super-set!
   (@mutator gx#local-context::t super #t))
  (declare-type gx#local-context-up-set! (@mutator gx#local-context::t up #t))
  (declare-type
   gx#local-context-down-set!
   (@mutator gx#local-context::t down #t))
  (declare-type gx#local-context-id-set! (@mutator gx#local-context::t id #t))
  (declare-type
   gx#local-context-table-set!
   (@mutator gx#local-context::t table #t))
  (declare-type
   gx#&local-context-super
   (@accessor gx#local-context::t super #f))
  (declare-type gx#&local-context-up (@accessor gx#local-context::t up #f))
  (declare-type gx#&local-context-down (@accessor gx#local-context::t down #f))
  (declare-type gx#&local-context-id (@accessor gx#local-context::t id #f))
  (declare-type
   gx#&local-context-table
   (@accessor gx#local-context::t table #f))
  (declare-type
   gx#&local-context-super-set!
   (@mutator gx#local-context::t super #f))
  (declare-type gx#&local-context-up-set! (@mutator gx#local-context::t up #f))
  (declare-type
   gx#&local-context-down-set!
   (@mutator gx#local-context::t down #f))
  (declare-type gx#&local-context-id-set! (@mutator gx#local-context::t id #f))
  (declare-type
   gx#&local-context-table-set!
   (@mutator gx#local-context::t table #f))
  (declare-type
   gx#phi-context:::init!__%
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gx#phi-context:::init!__0
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#phi-context:::init!
   (@case-lambda
    (2
     gx#phi-context:::init!__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (3
     gx#phi-context:::init!__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gx#local-context:::init!__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gx#local-context:::init!__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#local-context:::init!
   (@case-lambda
    (1
     gx#local-context:::init!__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     gx#local-context:::init!__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-class
   gx#binding::t
   (@class gx#binding::t
           ()
           (object::t t::t)
           (id key phi)
           (id key phi)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#binding::t
   (optimizer-resolve-class '(typedecl gx#binding::t) 'class::t))
  (declare-type gx#binding? (@predicate gx#binding::t))
  (declare-type gx#make-binding (@constructor gx#binding::t))
  (declare-type gx#binding-id (@accessor gx#binding::t id #t))
  (declare-type gx#binding-key (@accessor gx#binding::t key #t))
  (declare-type gx#binding-phi (@accessor gx#binding::t phi #t))
  (declare-type gx#binding-id-set! (@mutator gx#binding::t id #t))
  (declare-type gx#binding-key-set! (@mutator gx#binding::t key #t))
  (declare-type gx#binding-phi-set! (@mutator gx#binding::t phi #t))
  (declare-type gx#&binding-id (@accessor gx#binding::t id #f))
  (declare-type gx#&binding-key (@accessor gx#binding::t key #f))
  (declare-type gx#&binding-phi (@accessor gx#binding::t phi #f))
  (declare-type gx#&binding-id-set! (@mutator gx#binding::t id #f))
  (declare-type gx#&binding-key-set! (@mutator gx#binding::t key #f))
  (declare-type gx#&binding-phi-set! (@mutator gx#binding::t phi #f))
  (declare-class
   gx#runtime-binding::t
   (@class gx#runtime-binding::t
           (gx#binding::t)
           (gx#binding::t object::t t::t)
           ()
           (id key phi)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#runtime-binding::t
   (optimizer-resolve-class '(typedecl gx#runtime-binding::t) 'class::t))
  (declare-type gx#runtime-binding? (@predicate gx#runtime-binding::t))
  (declare-type gx#make-runtime-binding (@constructor gx#runtime-binding::t))
  (declare-type gx#runtime-binding-id (@accessor gx#runtime-binding::t id #t))
  (declare-type
   gx#runtime-binding-key
   (@accessor gx#runtime-binding::t key #t))
  (declare-type
   gx#runtime-binding-phi
   (@accessor gx#runtime-binding::t phi #t))
  (declare-type
   gx#runtime-binding-id-set!
   (@mutator gx#runtime-binding::t id #t))
  (declare-type
   gx#runtime-binding-key-set!
   (@mutator gx#runtime-binding::t key #t))
  (declare-type
   gx#runtime-binding-phi-set!
   (@mutator gx#runtime-binding::t phi #t))
  (declare-type gx#&runtime-binding-id (@accessor gx#runtime-binding::t id #f))
  (declare-type
   gx#&runtime-binding-key
   (@accessor gx#runtime-binding::t key #f))
  (declare-type
   gx#&runtime-binding-phi
   (@accessor gx#runtime-binding::t phi #f))
  (declare-type
   gx#&runtime-binding-id-set!
   (@mutator gx#runtime-binding::t id #f))
  (declare-type
   gx#&runtime-binding-key-set!
   (@mutator gx#runtime-binding::t key #f))
  (declare-type
   gx#&runtime-binding-phi-set!
   (@mutator gx#runtime-binding::t phi #f))
  (declare-class
   gx#local-binding::t
   (@class gx#local-binding::t
           (gx#runtime-binding::t)
           (gx#runtime-binding::t gx#binding::t object::t t::t)
           ()
           (id key phi)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#local-binding::t
   (optimizer-resolve-class '(typedecl gx#local-binding::t) 'class::t))
  (declare-type gx#local-binding? (@predicate gx#local-binding::t))
  (declare-type gx#make-local-binding (@constructor gx#local-binding::t))
  (declare-type gx#local-binding-id (@accessor gx#local-binding::t id #t))
  (declare-type gx#local-binding-key (@accessor gx#local-binding::t key #t))
  (declare-type gx#local-binding-phi (@accessor gx#local-binding::t phi #t))
  (declare-type gx#local-binding-id-set! (@mutator gx#local-binding::t id #t))
  (declare-type
   gx#local-binding-key-set!
   (@mutator gx#local-binding::t key #t))
  (declare-type
   gx#local-binding-phi-set!
   (@mutator gx#local-binding::t phi #t))
  (declare-type gx#&local-binding-id (@accessor gx#local-binding::t id #f))
  (declare-type gx#&local-binding-key (@accessor gx#local-binding::t key #f))
  (declare-type gx#&local-binding-phi (@accessor gx#local-binding::t phi #f))
  (declare-type gx#&local-binding-id-set! (@mutator gx#local-binding::t id #f))
  (declare-type
   gx#&local-binding-key-set!
   (@mutator gx#local-binding::t key #f))
  (declare-type
   gx#&local-binding-phi-set!
   (@mutator gx#local-binding::t phi #f))
  (declare-class
   gx#top-binding::t
   (@class gx#top-binding::t
           (gx#runtime-binding::t)
           (gx#runtime-binding::t gx#binding::t object::t t::t)
           ()
           (id key phi)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#top-binding::t
   (optimizer-resolve-class '(typedecl gx#top-binding::t) 'class::t))
  (declare-type gx#top-binding? (@predicate gx#top-binding::t))
  (declare-type gx#make-top-binding (@constructor gx#top-binding::t))
  (declare-type gx#top-binding-id (@accessor gx#top-binding::t id #t))
  (declare-type gx#top-binding-key (@accessor gx#top-binding::t key #t))
  (declare-type gx#top-binding-phi (@accessor gx#top-binding::t phi #t))
  (declare-type gx#top-binding-id-set! (@mutator gx#top-binding::t id #t))
  (declare-type gx#top-binding-key-set! (@mutator gx#top-binding::t key #t))
  (declare-type gx#top-binding-phi-set! (@mutator gx#top-binding::t phi #t))
  (declare-type gx#&top-binding-id (@accessor gx#top-binding::t id #f))
  (declare-type gx#&top-binding-key (@accessor gx#top-binding::t key #f))
  (declare-type gx#&top-binding-phi (@accessor gx#top-binding::t phi #f))
  (declare-type gx#&top-binding-id-set! (@mutator gx#top-binding::t id #f))
  (declare-type gx#&top-binding-key-set! (@mutator gx#top-binding::t key #f))
  (declare-type gx#&top-binding-phi-set! (@mutator gx#top-binding::t phi #f))
  (declare-class
   gx#module-binding::t
   (@class gx#module-binding::t
           (gx#top-binding::t)
           (gx#top-binding::t
            gx#runtime-binding::t
            gx#binding::t
            object::t
            t::t)
           (context)
           (id key phi context)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#module-binding::t
   (optimizer-resolve-class '(typedecl gx#module-binding::t) 'class::t))
  (declare-type gx#module-binding? (@predicate gx#module-binding::t))
  (declare-type gx#make-module-binding (@constructor gx#module-binding::t))
  (declare-type
   gx#module-binding-context
   (@accessor gx#module-binding::t context #t))
  (declare-type gx#module-binding-id (@accessor gx#module-binding::t id #t))
  (declare-type gx#module-binding-key (@accessor gx#module-binding::t key #t))
  (declare-type gx#module-binding-phi (@accessor gx#module-binding::t phi #t))
  (declare-type
   gx#module-binding-context-set!
   (@mutator gx#module-binding::t context #t))
  (declare-type
   gx#module-binding-id-set!
   (@mutator gx#module-binding::t id #t))
  (declare-type
   gx#module-binding-key-set!
   (@mutator gx#module-binding::t key #t))
  (declare-type
   gx#module-binding-phi-set!
   (@mutator gx#module-binding::t phi #t))
  (declare-type
   gx#&module-binding-context
   (@accessor gx#module-binding::t context #f))
  (declare-type gx#&module-binding-id (@accessor gx#module-binding::t id #f))
  (declare-type gx#&module-binding-key (@accessor gx#module-binding::t key #f))
  (declare-type gx#&module-binding-phi (@accessor gx#module-binding::t phi #f))
  (declare-type
   gx#&module-binding-context-set!
   (@mutator gx#module-binding::t context #f))
  (declare-type
   gx#&module-binding-id-set!
   (@mutator gx#module-binding::t id #f))
  (declare-type
   gx#&module-binding-key-set!
   (@mutator gx#module-binding::t key #f))
  (declare-type
   gx#&module-binding-phi-set!
   (@mutator gx#module-binding::t phi #f))
  (declare-class
   gx#extern-binding::t
   (@class gx#extern-binding::t
           (gx#top-binding::t)
           (gx#top-binding::t
            gx#runtime-binding::t
            gx#binding::t
            object::t
            t::t)
           ()
           (id key phi)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#extern-binding::t
   (optimizer-resolve-class '(typedecl gx#extern-binding::t) 'class::t))
  (declare-type gx#extern-binding? (@predicate gx#extern-binding::t))
  (declare-type gx#make-extern-binding (@constructor gx#extern-binding::t))
  (declare-type gx#extern-binding-id (@accessor gx#extern-binding::t id #t))
  (declare-type gx#extern-binding-key (@accessor gx#extern-binding::t key #t))
  (declare-type gx#extern-binding-phi (@accessor gx#extern-binding::t phi #t))
  (declare-type
   gx#extern-binding-id-set!
   (@mutator gx#extern-binding::t id #t))
  (declare-type
   gx#extern-binding-key-set!
   (@mutator gx#extern-binding::t key #t))
  (declare-type
   gx#extern-binding-phi-set!
   (@mutator gx#extern-binding::t phi #t))
  (declare-type gx#&extern-binding-id (@accessor gx#extern-binding::t id #f))
  (declare-type gx#&extern-binding-key (@accessor gx#extern-binding::t key #f))
  (declare-type gx#&extern-binding-phi (@accessor gx#extern-binding::t phi #f))
  (declare-type
   gx#&extern-binding-id-set!
   (@mutator gx#extern-binding::t id #f))
  (declare-type
   gx#&extern-binding-key-set!
   (@mutator gx#extern-binding::t key #f))
  (declare-type
   gx#&extern-binding-phi-set!
   (@mutator gx#extern-binding::t phi #f))
  (declare-class
   gx#syntax-binding::t
   (@class gx#syntax-binding::t
           (gx#binding::t)
           (gx#binding::t object::t t::t)
           (e)
           (id key phi e)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#syntax-binding::t
   (optimizer-resolve-class '(typedecl gx#syntax-binding::t) 'class::t))
  (declare-type gx#syntax-binding? (@predicate gx#syntax-binding::t))
  (declare-type gx#make-syntax-binding (@constructor gx#syntax-binding::t))
  (declare-type gx#syntax-binding-e (@accessor gx#syntax-binding::t e #t))
  (declare-type gx#syntax-binding-id (@accessor gx#syntax-binding::t id #t))
  (declare-type gx#syntax-binding-key (@accessor gx#syntax-binding::t key #t))
  (declare-type gx#syntax-binding-phi (@accessor gx#syntax-binding::t phi #t))
  (declare-type gx#syntax-binding-e-set! (@mutator gx#syntax-binding::t e #t))
  (declare-type
   gx#syntax-binding-id-set!
   (@mutator gx#syntax-binding::t id #t))
  (declare-type
   gx#syntax-binding-key-set!
   (@mutator gx#syntax-binding::t key #t))
  (declare-type
   gx#syntax-binding-phi-set!
   (@mutator gx#syntax-binding::t phi #t))
  (declare-type gx#&syntax-binding-e (@accessor gx#syntax-binding::t e #f))
  (declare-type gx#&syntax-binding-id (@accessor gx#syntax-binding::t id #f))
  (declare-type gx#&syntax-binding-key (@accessor gx#syntax-binding::t key #f))
  (declare-type gx#&syntax-binding-phi (@accessor gx#syntax-binding::t phi #f))
  (declare-type gx#&syntax-binding-e-set! (@mutator gx#syntax-binding::t e #f))
  (declare-type
   gx#&syntax-binding-id-set!
   (@mutator gx#syntax-binding::t id #f))
  (declare-type
   gx#&syntax-binding-key-set!
   (@mutator gx#syntax-binding::t key #f))
  (declare-type
   gx#&syntax-binding-phi-set!
   (@mutator gx#syntax-binding::t phi #f))
  (declare-class
   gx#import-binding::t
   (@class gx#import-binding::t
           (gx#binding::t)
           (gx#binding::t object::t t::t)
           (e context weak?)
           (id key phi e context weak?)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#import-binding::t
   (optimizer-resolve-class '(typedecl gx#import-binding::t) 'class::t))
  (declare-type gx#import-binding? (@predicate gx#import-binding::t))
  (declare-type gx#make-import-binding (@constructor gx#import-binding::t))
  (declare-type gx#import-binding-e (@accessor gx#import-binding::t e #t))
  (declare-type
   gx#import-binding-context
   (@accessor gx#import-binding::t context #t))
  (declare-type
   gx#import-binding-weak?
   (@accessor gx#import-binding::t weak? #t))
  (declare-type gx#import-binding-id (@accessor gx#import-binding::t id #t))
  (declare-type gx#import-binding-key (@accessor gx#import-binding::t key #t))
  (declare-type gx#import-binding-phi (@accessor gx#import-binding::t phi #t))
  (declare-type gx#import-binding-e-set! (@mutator gx#import-binding::t e #t))
  (declare-type
   gx#import-binding-context-set!
   (@mutator gx#import-binding::t context #t))
  (declare-type
   gx#import-binding-weak?-set!
   (@mutator gx#import-binding::t weak? #t))
  (declare-type
   gx#import-binding-id-set!
   (@mutator gx#import-binding::t id #t))
  (declare-type
   gx#import-binding-key-set!
   (@mutator gx#import-binding::t key #t))
  (declare-type
   gx#import-binding-phi-set!
   (@mutator gx#import-binding::t phi #t))
  (declare-type gx#&import-binding-e (@accessor gx#import-binding::t e #f))
  (declare-type
   gx#&import-binding-context
   (@accessor gx#import-binding::t context #f))
  (declare-type
   gx#&import-binding-weak?
   (@accessor gx#import-binding::t weak? #f))
  (declare-type gx#&import-binding-id (@accessor gx#import-binding::t id #f))
  (declare-type gx#&import-binding-key (@accessor gx#import-binding::t key #f))
  (declare-type gx#&import-binding-phi (@accessor gx#import-binding::t phi #f))
  (declare-type gx#&import-binding-e-set! (@mutator gx#import-binding::t e #f))
  (declare-type
   gx#&import-binding-context-set!
   (@mutator gx#import-binding::t context #f))
  (declare-type
   gx#&import-binding-weak?-set!
   (@mutator gx#import-binding::t weak? #f))
  (declare-type
   gx#&import-binding-id-set!
   (@mutator gx#import-binding::t id #f))
  (declare-type
   gx#&import-binding-key-set!
   (@mutator gx#import-binding::t key #f))
  (declare-type
   gx#&import-binding-phi-set!
   (@mutator gx#import-binding::t phi #f))
  (declare-class
   gx#alias-binding::t
   (@class gx#alias-binding::t
           (gx#binding::t)
           (gx#binding::t object::t t::t)
           (e)
           (id key phi e)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#alias-binding::t
   (optimizer-resolve-class '(typedecl gx#alias-binding::t) 'class::t))
  (declare-type gx#alias-binding? (@predicate gx#alias-binding::t))
  (declare-type gx#make-alias-binding (@constructor gx#alias-binding::t))
  (declare-type gx#alias-binding-e (@accessor gx#alias-binding::t e #t))
  (declare-type gx#alias-binding-id (@accessor gx#alias-binding::t id #t))
  (declare-type gx#alias-binding-key (@accessor gx#alias-binding::t key #t))
  (declare-type gx#alias-binding-phi (@accessor gx#alias-binding::t phi #t))
  (declare-type gx#alias-binding-e-set! (@mutator gx#alias-binding::t e #t))
  (declare-type gx#alias-binding-id-set! (@mutator gx#alias-binding::t id #t))
  (declare-type
   gx#alias-binding-key-set!
   (@mutator gx#alias-binding::t key #t))
  (declare-type
   gx#alias-binding-phi-set!
   (@mutator gx#alias-binding::t phi #t))
  (declare-type gx#&alias-binding-e (@accessor gx#alias-binding::t e #f))
  (declare-type gx#&alias-binding-id (@accessor gx#alias-binding::t id #f))
  (declare-type gx#&alias-binding-key (@accessor gx#alias-binding::t key #f))
  (declare-type gx#&alias-binding-phi (@accessor gx#alias-binding::t phi #f))
  (declare-type gx#&alias-binding-e-set! (@mutator gx#alias-binding::t e #f))
  (declare-type gx#&alias-binding-id-set! (@mutator gx#alias-binding::t id #f))
  (declare-type
   gx#&alias-binding-key-set!
   (@mutator gx#alias-binding::t key #f))
  (declare-type
   gx#&alias-binding-phi-set!
   (@mutator gx#alias-binding::t phi #f))
  (declare-class
   gx#expander::t
   (@class gx#expander::t
           ()
           (object::t t::t)
           (e)
           (e)
           #f
           #t
           #f
           #f
           #f
           ((apply-macro-expander . gx#expander::apply-macro-expander))))
  (declare-type
   gx#expander::t
   (optimizer-resolve-class '(typedecl gx#expander::t) 'class::t))
  (declare-type gx#expander? (@predicate gx#expander::t))
  (declare-type gx#make-expander (@constructor gx#expander::t))
  (declare-type gx#expander-e (@accessor gx#expander::t e #t))
  (declare-type gx#expander-e-set! (@mutator gx#expander::t e #t))
  (declare-type gx#&expander-e (@accessor gx#expander::t e #f))
  (declare-type gx#&expander-e-set! (@mutator gx#expander::t e #f))
  (declare-class
   gx#core-expander::t
   (@class gx#core-expander::t
           (gx#expander::t)
           (gx#expander::t object::t t::t)
           (id compile-top)
           (e id compile-top)
           #f
           #t
           #f
           #f
           #f
           ((apply-macro-expander . gx#core-expander::apply-macro-expander))))
  (declare-type
   gx#core-expander::t
   (optimizer-resolve-class '(typedecl gx#core-expander::t) 'class::t))
  (declare-type gx#core-expander? (@predicate gx#core-expander::t))
  (declare-type gx#make-core-expander (@constructor gx#core-expander::t))
  (declare-type gx#core-expander-id (@accessor gx#core-expander::t id #t))
  (declare-type
   gx#core-expander-compile-top
   (@accessor gx#core-expander::t compile-top #t))
  (declare-type gx#core-expander-e (@accessor gx#core-expander::t e #t))
  (declare-type gx#core-expander-id-set! (@mutator gx#core-expander::t id #t))
  (declare-type
   gx#core-expander-compile-top-set!
   (@mutator gx#core-expander::t compile-top #t))
  (declare-type gx#core-expander-e-set! (@mutator gx#core-expander::t e #t))
  (declare-type gx#&core-expander-id (@accessor gx#core-expander::t id #f))
  (declare-type
   gx#&core-expander-compile-top
   (@accessor gx#core-expander::t compile-top #f))
  (declare-type gx#&core-expander-e (@accessor gx#core-expander::t e #f))
  (declare-type gx#&core-expander-id-set! (@mutator gx#core-expander::t id #f))
  (declare-type
   gx#&core-expander-compile-top-set!
   (@mutator gx#core-expander::t compile-top #f))
  (declare-type gx#&core-expander-e-set! (@mutator gx#core-expander::t e #f))
  (declare-class
   gx#expression-form::t
   (@class gx#expression-form::t
           (gx#core-expander::t)
           (gx#core-expander::t gx#expander::t object::t t::t)
           ()
           (e id compile-top)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#expression-form::t
   (optimizer-resolve-class '(typedecl gx#expression-form::t) 'class::t))
  (declare-type gx#expression-form? (@predicate gx#expression-form::t))
  (declare-type gx#make-expression-form (@constructor gx#expression-form::t))
  (declare-type gx#expression-form-id (@accessor gx#expression-form::t id #t))
  (declare-type
   gx#expression-form-compile-top
   (@accessor gx#expression-form::t compile-top #t))
  (declare-type gx#expression-form-e (@accessor gx#expression-form::t e #t))
  (declare-type
   gx#expression-form-id-set!
   (@mutator gx#expression-form::t id #t))
  (declare-type
   gx#expression-form-compile-top-set!
   (@mutator gx#expression-form::t compile-top #t))
  (declare-type
   gx#expression-form-e-set!
   (@mutator gx#expression-form::t e #t))
  (declare-type gx#&expression-form-id (@accessor gx#expression-form::t id #f))
  (declare-type
   gx#&expression-form-compile-top
   (@accessor gx#expression-form::t compile-top #f))
  (declare-type gx#&expression-form-e (@accessor gx#expression-form::t e #f))
  (declare-type
   gx#&expression-form-id-set!
   (@mutator gx#expression-form::t id #f))
  (declare-type
   gx#&expression-form-compile-top-set!
   (@mutator gx#expression-form::t compile-top #f))
  (declare-type
   gx#&expression-form-e-set!
   (@mutator gx#expression-form::t e #f))
  (declare-class
   gx#special-form::t
   (@class gx#special-form::t
           (gx#core-expander::t)
           (gx#core-expander::t gx#expander::t object::t t::t)
           ()
           (e id compile-top)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#special-form::t
   (optimizer-resolve-class '(typedecl gx#special-form::t) 'class::t))
  (declare-type gx#special-form? (@predicate gx#special-form::t))
  (declare-type gx#make-special-form (@constructor gx#special-form::t))
  (declare-type gx#special-form-id (@accessor gx#special-form::t id #t))
  (declare-type
   gx#special-form-compile-top
   (@accessor gx#special-form::t compile-top #t))
  (declare-type gx#special-form-e (@accessor gx#special-form::t e #t))
  (declare-type gx#special-form-id-set! (@mutator gx#special-form::t id #t))
  (declare-type
   gx#special-form-compile-top-set!
   (@mutator gx#special-form::t compile-top #t))
  (declare-type gx#special-form-e-set! (@mutator gx#special-form::t e #t))
  (declare-type gx#&special-form-id (@accessor gx#special-form::t id #f))
  (declare-type
   gx#&special-form-compile-top
   (@accessor gx#special-form::t compile-top #f))
  (declare-type gx#&special-form-e (@accessor gx#special-form::t e #f))
  (declare-type gx#&special-form-id-set! (@mutator gx#special-form::t id #f))
  (declare-type
   gx#&special-form-compile-top-set!
   (@mutator gx#special-form::t compile-top #f))
  (declare-type gx#&special-form-e-set! (@mutator gx#special-form::t e #f))
  (declare-class
   gx#definition-form::t
   (@class gx#definition-form::t
           (gx#special-form::t)
           (gx#special-form::t
            gx#core-expander::t
            gx#expander::t
            object::t
            t::t)
           ()
           (e id compile-top)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#definition-form::t
   (optimizer-resolve-class '(typedecl gx#definition-form::t) 'class::t))
  (declare-type gx#definition-form? (@predicate gx#definition-form::t))
  (declare-type gx#make-definition-form (@constructor gx#definition-form::t))
  (declare-type gx#definition-form-id (@accessor gx#definition-form::t id #t))
  (declare-type
   gx#definition-form-compile-top
   (@accessor gx#definition-form::t compile-top #t))
  (declare-type gx#definition-form-e (@accessor gx#definition-form::t e #t))
  (declare-type
   gx#definition-form-id-set!
   (@mutator gx#definition-form::t id #t))
  (declare-type
   gx#definition-form-compile-top-set!
   (@mutator gx#definition-form::t compile-top #t))
  (declare-type
   gx#definition-form-e-set!
   (@mutator gx#definition-form::t e #t))
  (declare-type gx#&definition-form-id (@accessor gx#definition-form::t id #f))
  (declare-type
   gx#&definition-form-compile-top
   (@accessor gx#definition-form::t compile-top #f))
  (declare-type gx#&definition-form-e (@accessor gx#definition-form::t e #f))
  (declare-type
   gx#&definition-form-id-set!
   (@mutator gx#definition-form::t id #f))
  (declare-type
   gx#&definition-form-compile-top-set!
   (@mutator gx#definition-form::t compile-top #f))
  (declare-type
   gx#&definition-form-e-set!
   (@mutator gx#definition-form::t e #f))
  (declare-class
   gx#top-special-form::t
   (@class gx#top-special-form::t
           (gx#special-form::t)
           (gx#special-form::t
            gx#core-expander::t
            gx#expander::t
            object::t
            t::t)
           ()
           (e id compile-top)
           #f
           #t
           #f
           #f
           #f
           ((apply-macro-expander
             .
             gx#top-special-form::apply-macro-expander))))
  (declare-type
   gx#top-special-form::t
   (optimizer-resolve-class '(typedecl gx#top-special-form::t) 'class::t))
  (declare-type gx#top-special-form? (@predicate gx#top-special-form::t))
  (declare-type gx#make-top-special-form (@constructor gx#top-special-form::t))
  (declare-type
   gx#top-special-form-id
   (@accessor gx#top-special-form::t id #t))
  (declare-type
   gx#top-special-form-compile-top
   (@accessor gx#top-special-form::t compile-top #t))
  (declare-type gx#top-special-form-e (@accessor gx#top-special-form::t e #t))
  (declare-type
   gx#top-special-form-id-set!
   (@mutator gx#top-special-form::t id #t))
  (declare-type
   gx#top-special-form-compile-top-set!
   (@mutator gx#top-special-form::t compile-top #t))
  (declare-type
   gx#top-special-form-e-set!
   (@mutator gx#top-special-form::t e #t))
  (declare-type
   gx#&top-special-form-id
   (@accessor gx#top-special-form::t id #f))
  (declare-type
   gx#&top-special-form-compile-top
   (@accessor gx#top-special-form::t compile-top #f))
  (declare-type gx#&top-special-form-e (@accessor gx#top-special-form::t e #f))
  (declare-type
   gx#&top-special-form-id-set!
   (@mutator gx#top-special-form::t id #f))
  (declare-type
   gx#&top-special-form-compile-top-set!
   (@mutator gx#top-special-form::t compile-top #f))
  (declare-type
   gx#&top-special-form-e-set!
   (@mutator gx#top-special-form::t e #f))
  (declare-class
   gx#module-special-form::t
   (@class gx#module-special-form::t
           (gx#top-special-form::t)
           (gx#top-special-form::t
            gx#special-form::t
            gx#core-expander::t
            gx#expander::t
            object::t
            t::t)
           ()
           (e id compile-top)
           #f
           #t
           #f
           #f
           #f
           ((apply-macro-expander
             .
             gx#module-special-form::apply-macro-expander))))
  (declare-type
   gx#module-special-form::t
   (optimizer-resolve-class '(typedecl gx#module-special-form::t) 'class::t))
  (declare-type gx#module-special-form? (@predicate gx#module-special-form::t))
  (declare-type
   gx#make-module-special-form
   (@constructor gx#module-special-form::t))
  (declare-type
   gx#module-special-form-id
   (@accessor gx#module-special-form::t id #t))
  (declare-type
   gx#module-special-form-compile-top
   (@accessor gx#module-special-form::t compile-top #t))
  (declare-type
   gx#module-special-form-e
   (@accessor gx#module-special-form::t e #t))
  (declare-type
   gx#module-special-form-id-set!
   (@mutator gx#module-special-form::t id #t))
  (declare-type
   gx#module-special-form-compile-top-set!
   (@mutator gx#module-special-form::t compile-top #t))
  (declare-type
   gx#module-special-form-e-set!
   (@mutator gx#module-special-form::t e #t))
  (declare-type
   gx#&module-special-form-id
   (@accessor gx#module-special-form::t id #f))
  (declare-type
   gx#&module-special-form-compile-top
   (@accessor gx#module-special-form::t compile-top #f))
  (declare-type
   gx#&module-special-form-e
   (@accessor gx#module-special-form::t e #f))
  (declare-type
   gx#&module-special-form-id-set!
   (@mutator gx#module-special-form::t id #f))
  (declare-type
   gx#&module-special-form-compile-top-set!
   (@mutator gx#module-special-form::t compile-top #f))
  (declare-type
   gx#&module-special-form-e-set!
   (@mutator gx#module-special-form::t e #f))
  (declare-class
   gx#feature-expander::t
   (@class gx#feature-expander::t
           (gx#expander::t)
           (gx#expander::t object::t t::t)
           ()
           (e)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#feature-expander::t
   (optimizer-resolve-class '(typedecl gx#feature-expander::t) 'class::t))
  (declare-type gx#feature-expander? (@predicate gx#feature-expander::t))
  (declare-type gx#make-feature-expander (@constructor gx#feature-expander::t))
  (declare-type gx#feature-expander-e (@accessor gx#feature-expander::t e #t))
  (declare-type
   gx#feature-expander-e-set!
   (@mutator gx#feature-expander::t e #t))
  (declare-type gx#&feature-expander-e (@accessor gx#feature-expander::t e #f))
  (declare-type
   gx#&feature-expander-e-set!
   (@mutator gx#feature-expander::t e #f))
  (declare-class
   gx#private-feature-expander::t
   (@class gx#private-feature-expander::t
           (gx#feature-expander::t)
           (gx#feature-expander::t gx#expander::t object::t t::t)
           ()
           (e)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#private-feature-expander::t
   (optimizer-resolve-class
    '(typedecl gx#private-feature-expander::t)
    'class::t))
  (declare-type
   gx#private-feature-expander?
   (@predicate gx#private-feature-expander::t))
  (declare-type
   gx#make-private-feature-expander
   (@constructor gx#private-feature-expander::t))
  (declare-type
   gx#private-feature-expander-e
   (@accessor gx#private-feature-expander::t e #t))
  (declare-type
   gx#private-feature-expander-e-set!
   (@mutator gx#private-feature-expander::t e #t))
  (declare-type
   gx#&private-feature-expander-e
   (@accessor gx#private-feature-expander::t e #f))
  (declare-type
   gx#&private-feature-expander-e-set!
   (@mutator gx#private-feature-expander::t e #f))
  (declare-class
   gx#reserved-expander::t
   (@class gx#reserved-expander::t
           (gx#expander::t)
           (gx#expander::t object::t t::t)
           ()
           (e)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#reserved-expander::t
   (optimizer-resolve-class '(typedecl gx#reserved-expander::t) 'class::t))
  (declare-type gx#reserved-expander? (@predicate gx#reserved-expander::t))
  (declare-type
   gx#make-reserved-expander
   (@constructor gx#reserved-expander::t))
  (declare-type
   gx#reserved-expander-e
   (@accessor gx#reserved-expander::t e #t))
  (declare-type
   gx#reserved-expander-e-set!
   (@mutator gx#reserved-expander::t e #t))
  (declare-type
   gx#&reserved-expander-e
   (@accessor gx#reserved-expander::t e #f))
  (declare-type
   gx#&reserved-expander-e-set!
   (@mutator gx#reserved-expander::t e #f))
  (declare-class
   gx#macro-expander::t
   (@class gx#macro-expander::t
           (gx#expander::t)
           (gx#expander::t object::t t::t)
           ()
           (e)
           #f
           #t
           #f
           #f
           #f
           ((apply-macro-expander . gx#macro-expander::apply-macro-expander))))
  (declare-type
   gx#macro-expander::t
   (optimizer-resolve-class '(typedecl gx#macro-expander::t) 'class::t))
  (declare-type gx#macro-expander? (@predicate gx#macro-expander::t))
  (declare-type gx#make-macro-expander (@constructor gx#macro-expander::t))
  (declare-type gx#macro-expander-e (@accessor gx#macro-expander::t e #t))
  (declare-type gx#macro-expander-e-set! (@mutator gx#macro-expander::t e #t))
  (declare-type gx#&macro-expander-e (@accessor gx#macro-expander::t e #f))
  (declare-type gx#&macro-expander-e-set! (@mutator gx#macro-expander::t e #f))
  (declare-class
   gx#rename-macro-expander::t
   (@class gx#rename-macro-expander::t
           (gx#macro-expander::t)
           (gx#macro-expander::t gx#expander::t object::t t::t)
           ()
           (e)
           #f
           #t
           #f
           #f
           #f
           ((apply-macro-expander
             .
             gx#rename-macro-expander::apply-macro-expander))))
  (declare-type
   gx#rename-macro-expander::t
   (optimizer-resolve-class '(typedecl gx#rename-macro-expander::t) 'class::t))
  (declare-type
   gx#rename-macro-expander?
   (@predicate gx#rename-macro-expander::t))
  (declare-type
   gx#make-rename-macro-expander
   (@constructor gx#rename-macro-expander::t))
  (declare-type
   gx#rename-macro-expander-e
   (@accessor gx#rename-macro-expander::t e #t))
  (declare-type
   gx#rename-macro-expander-e-set!
   (@mutator gx#rename-macro-expander::t e #t))
  (declare-type
   gx#&rename-macro-expander-e
   (@accessor gx#rename-macro-expander::t e #f))
  (declare-type
   gx#&rename-macro-expander-e-set!
   (@mutator gx#rename-macro-expander::t e #f))
  (declare-class
   gx#user-expander::t
   (@class gx#user-expander::t
           (gx#macro-expander::t)
           (gx#macro-expander::t gx#expander::t object::t t::t)
           (context phi)
           (e context phi)
           #f
           #t
           #f
           #f
           #f
           ((apply-macro-expander . gx#user-expander::apply-macro-expander))))
  (declare-type
   gx#user-expander::t
   (optimizer-resolve-class '(typedecl gx#user-expander::t) 'class::t))
  (declare-type gx#user-expander? (@predicate gx#user-expander::t))
  (declare-type gx#make-user-expander (@constructor gx#user-expander::t))
  (declare-type
   gx#user-expander-context
   (@accessor gx#user-expander::t context #t))
  (declare-type gx#user-expander-phi (@accessor gx#user-expander::t phi #t))
  (declare-type gx#user-expander-e (@accessor gx#user-expander::t e #t))
  (declare-type
   gx#user-expander-context-set!
   (@mutator gx#user-expander::t context #t))
  (declare-type
   gx#user-expander-phi-set!
   (@mutator gx#user-expander::t phi #t))
  (declare-type gx#user-expander-e-set! (@mutator gx#user-expander::t e #t))
  (declare-type
   gx#&user-expander-context
   (@accessor gx#user-expander::t context #f))
  (declare-type gx#&user-expander-phi (@accessor gx#user-expander::t phi #f))
  (declare-type gx#&user-expander-e (@accessor gx#user-expander::t e #f))
  (declare-type
   gx#&user-expander-context-set!
   (@mutator gx#user-expander::t context #f))
  (declare-type
   gx#&user-expander-phi-set!
   (@mutator gx#user-expander::t phi #f))
  (declare-type gx#&user-expander-e-set! (@mutator gx#user-expander::t e #f))
  (declare-class
   gx#expander-mark::t
   (@class gx#expander-mark::t
           ()
           (object::t t::t)
           (subst context phi trace)
           (subst context phi trace)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gx#expander-mark::t
   (optimizer-resolve-class '(typedecl gx#expander-mark::t) 'class::t))
  (declare-type gx#expander-mark? (@predicate gx#expander-mark::t))
  (declare-type gx#make-expander-mark (@constructor gx#expander-mark::t))
  (declare-type
   gx#expander-mark-subst
   (@accessor gx#expander-mark::t subst #t))
  (declare-type
   gx#expander-mark-context
   (@accessor gx#expander-mark::t context #t))
  (declare-type gx#expander-mark-phi (@accessor gx#expander-mark::t phi #t))
  (declare-type
   gx#expander-mark-trace
   (@accessor gx#expander-mark::t trace #t))
  (declare-type
   gx#expander-mark-subst-set!
   (@mutator gx#expander-mark::t subst #t))
  (declare-type
   gx#expander-mark-context-set!
   (@mutator gx#expander-mark::t context #t))
  (declare-type
   gx#expander-mark-phi-set!
   (@mutator gx#expander-mark::t phi #t))
  (declare-type
   gx#expander-mark-trace-set!
   (@mutator gx#expander-mark::t trace #t))
  (declare-type
   gx#&expander-mark-subst
   (@accessor gx#expander-mark::t subst #f))
  (declare-type
   gx#&expander-mark-context
   (@accessor gx#expander-mark::t context #f))
  (declare-type gx#&expander-mark-phi (@accessor gx#expander-mark::t phi #f))
  (declare-type
   gx#&expander-mark-trace
   (@accessor gx#expander-mark::t trace #f))
  (declare-type
   gx#&expander-mark-subst-set!
   (@mutator gx#expander-mark::t subst #f))
  (declare-type
   gx#&expander-mark-context-set!
   (@mutator gx#expander-mark::t context #f))
  (declare-type
   gx#&expander-mark-phi-set!
   (@mutator gx#expander-mark::t phi #f))
  (declare-type
   gx#&expander-mark-trace-set!
   (@mutator gx#expander-mark::t trace #f))
  (declare-type gx#raise-syntax-error (@lambda (3) #f))
  (declare-type gx#eval-syntax__% (@lambda 2 #f))
  (declare-type gx#eval-syntax__0 (@lambda 1 #f))
  (declare-type
   gx#eval-syntax
   (@case-lambda (1 gx#eval-syntax__0) (2 gx#eval-syntax__%)))
  (declare-type gx#eval-syntax* (@lambda 1 #f))
  (declare-type gx#core-expand__% (@lambda 2 #f))
  (declare-type gx#core-expand__0 (@lambda 1 #f))
  (declare-type
   gx#core-expand
   (@case-lambda (1 gx#core-expand__0) (2 gx#core-expand__%)))
  (declare-type gx#core-expand-top (@lambda 1 #f))
  (declare-type gx#core-expand-expression (@lambda 1 #f))
  (declare-type
   gx#core-expand-expression+1
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#core-expand*__% (@lambda 2 #f))
  (declare-type gx#core-expand*__0 (@lambda 1 #f))
  (declare-type
   gx#core-expand*
   (@case-lambda (1 gx#core-expand*__0) (2 gx#core-expand*__%)))
  (declare-type gx#core-expand1 (@lambda 1 #f))
  (declare-type gx#core-expand-head (@lambda 1 #f))
  (declare-type gx#core-expand-block__% (@lambda 4 #f))
  (declare-type gx#core-expand-block__0 (@lambda 2 #f))
  (declare-type gx#core-expand-block__1 (@lambda 3 #f))
  (declare-type
   gx#core-expand-block
   (@case-lambda
    (2 gx#core-expand-block__0)
    (3 gx#core-expand-block__1)
    (4 gx#core-expand-block__%)))
  (declare-type gx#core-expand-block* (@lambda 2 #f))
  (declare-type gx#core-expand-cond-expand% (@lambda 1 #f))
  (declare-type gx#core-expand-include%__% (@lambda 2 #f))
  (declare-type gx#core-expand-include%__0 (@lambda 1 #f))
  (declare-type
   gx#core-expand-include%
   (@case-lambda
    (1 gx#core-expand-include%__0)
    (2 gx#core-expand-include%__%)))
  (declare-type gx#core-apply-expander__% (@lambda 3 #f))
  (declare-type gx#core-apply-expander__0 (@lambda 2 #f))
  (declare-type
   gx#core-apply-expander
   (@case-lambda (2 gx#core-apply-expander__0) (3 gx#core-apply-expander__%)))
  (declare-type
   gx#expander::apply-macro-expander
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gx#macro-expander::apply-macro-expander
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gx#core-expander::apply-macro-expander
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gx#top-special-form::apply-macro-expander__%
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gx#top-special-form::apply-macro-expander__0
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#top-special-form::apply-macro-expander
   (@case-lambda
    (2
     gx#top-special-form::apply-macro-expander__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (3
     gx#top-special-form::apply-macro-expander__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gx#module-special-form::apply-macro-expander
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gx#rename-macro-expander::apply-macro-expander
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type gx#core-apply-user-expander__% (@lambda 3 #f))
  (declare-type gx#core-apply-user-expander__0 (@lambda 2 #f))
  (declare-type
   gx#core-apply-user-expander
   (@case-lambda
    (2 gx#core-apply-user-expander__0)
    (3 gx#core-apply-user-expander__%)))
  (declare-type
   gx#core-apply-user-macro
   (@lambda 5
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#user-expander::apply-macro-expander
   (@case-lambda
    (2 gx#core-apply-user-expander__0)
    (3 gx#core-apply-user-expander__%)))
  (declare-type gx#resolve-identifier__% (@lambda 3 #f))
  (declare-type gx#resolve-identifier__0 (@lambda 1 #f))
  (declare-type gx#resolve-identifier__1 (@lambda 2 #f))
  (declare-type
   gx#resolve-identifier
   (@case-lambda
    (1 gx#resolve-identifier__0)
    (2 gx#resolve-identifier__1)
    (3 gx#resolve-identifier__%)))
  (declare-type gx#bind-identifier!__% (@lambda 5 #f))
  (declare-type gx#bind-identifier!__0 (@lambda 2 #f))
  (declare-type gx#bind-identifier!__1 (@lambda 3 #f))
  (declare-type gx#bind-identifier!__2 (@lambda 4 #f))
  (declare-type
   gx#bind-identifier!
   (@case-lambda
    (2 gx#bind-identifier!__0)
    (3 gx#bind-identifier!__1)
    (4 gx#bind-identifier!__2)
    (5 gx#bind-identifier!__%)))
  (declare-type gx#core-resolve-identifier__% (@lambda 3 #f))
  (declare-type gx#core-resolve-identifier__0 (@lambda 1 #f))
  (declare-type gx#core-resolve-identifier__1 (@lambda 2 #f))
  (declare-type
   gx#core-resolve-identifier
   (@case-lambda
    (1 gx#core-resolve-identifier__0)
    (2 gx#core-resolve-identifier__1)
    (3 gx#core-resolve-identifier__%)))
  (declare-type gx#core-resolve-binding (@lambda 5 #f))
  (declare-type gx#core-bind!__% (@lambda 5 #f))
  (declare-type gx#core-bind!__0 (@lambda 2 #f))
  (declare-type gx#core-bind!__1 (@lambda 3 #f))
  (declare-type gx#core-bind!__2 (@lambda 4 #f))
  (declare-type
   gx#core-bind!
   (@case-lambda
    (2 gx#core-bind!__0)
    (3 gx#core-bind!__1)
    (4 gx#core-bind!__2)
    (5 gx#core-bind!__%)))
  (declare-type gx#core-identifier-key (@lambda 1 #f))
  (declare-type gx#&phi-context? (@predicate gx#phi-context::t))
  (declare-type gx#core-context-shift (@lambda 2 #f))
  (declare-type
   gx#core-context-get
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-context-put!
   (@lambda 3
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#core-context-resolve (@lambda 2 #f))
  (declare-type
   gx#core-context-bind!
   (@lambda 4
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#core-context-top__% (@lambda 2 #f))
  (declare-type gx#core-context-top__0 (@lambda 0 #f))
  (declare-type gx#core-context-top__1 (@lambda 1 #f))
  (declare-type
   gx#core-context-top
   (@case-lambda
    (0 gx#core-context-top__0)
    (1 gx#core-context-top__1)
    (2 gx#core-context-top__%)))
  (declare-type gx#core-context-root__% (@lambda 1 #f))
  (declare-type gx#core-context-root__0 (@lambda 0 #f))
  (declare-type
   gx#core-context-root
   (@case-lambda (0 gx#core-context-root__0) (1 gx#core-context-root__%)))
  (declare-type gx#core-context-rebind?__% (@lambda (1) #f))
  (declare-type gx#core-context-rebind?__0 (@lambda 0 #f))
  (declare-type
   gx#core-context-rebind?
   (@case-lambda
    (0 gx#core-context-rebind?__0)
    (1 gx#core-context-rebind?__%)
    ((1) gx#core-context-rebind?__%)))
  (declare-type
   gx#core-context-namespace__%
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-context-namespace__0
   (@lambda 0
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-context-namespace
   (@case-lambda
    (0
     gx#core-context-namespace__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (1
     gx#core-context-namespace__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type gx#expander-binding?__% (@lambda 2 #f))
  (declare-type gx#expander-binding?__0 (@lambda 1 #f))
  (declare-type
   gx#expander-binding?
   (@case-lambda (1 gx#expander-binding?__0) (2 gx#expander-binding?__%)))
  (declare-type gx#core-expander-binding? (@lambda 1 #f))
  (declare-type gx#expression-form-binding? (@lambda 1 #f))
  (declare-type gx#direct-special-form-binding? (@lambda 1 #f))
  (declare-type gx#special-form-binding? (@lambda 1 #f))
  (declare-type gx#feature-binding? (@lambda 1 #f))
  (declare-type gx#private-feature-binding? (@lambda 1 #f))
  (declare-type gx#core-bound-identifier?__% (@lambda 2 #f))
  (declare-type gx#core-bound-identifier?__0 (@lambda 1 #f))
  (declare-type
   gx#core-bound-identifier?
   (@case-lambda
    (1 gx#core-bound-identifier?__0)
    (2 gx#core-bound-identifier?__%)))
  (declare-type
   gx#core-identifier=?
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-extern-symbol?
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-quote-syntax__%
   (@lambda 4
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-quote-syntax__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-quote-syntax__1
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-quote-syntax__2
   (@lambda 3
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-quote-syntax
   (@case-lambda
    (1
     gx#core-quote-syntax__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     gx#core-quote-syntax__1
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (3
     gx#core-quote-syntax__2
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (4
     gx#core-quote-syntax__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gx#core-cons
   (@lambda 2
            #f
            signature:
            (return: pair::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-list
   (@lambda (1)
            #f
            signature:
            (return: pair::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-cons*
   (@lambda (1)
            #f
            signature:
            (return: pair::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-resolve-path__%
   (@lambda 2
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-resolve-path__0
   (@lambda 1
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#core-resolve-path
   (@case-lambda
    (1
     gx#core-resolve-path__0
     signature:
     (return: string::t effect: #f arguments: #f unchecked: #f))
    (2
     gx#core-resolve-path__%
     signature:
     (return: string::t effect: #f arguments: #f unchecked: #f))))
  (declare-type gx#core-deserialize-mark__% (@lambda 2 #f))
  (declare-type gx#core-deserialize-mark__0 (@lambda 1 #f))
  (declare-type
   gx#core-deserialize-mark
   (@case-lambda
    (1 gx#core-deserialize-mark__0)
    (2 gx#core-deserialize-mark__%)))
  (declare-type
   gx#syntax-local-rewrap
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#syntax-local-unwrap (@lambda 1 #f))
  (declare-type gx#syntax-local-introduce (@lambda 1 #f))
  (declare-type gx#syntax-local-e__% (@lambda 2 #f))
  (declare-type gx#syntax-local-e__0 (@lambda 1 #f))
  (declare-type
   gx#syntax-local-e
   (@case-lambda (1 gx#syntax-local-e__0) (2 gx#syntax-local-e__%)))
  (declare-type gx#syntax-local-value__% (@lambda 2 #f))
  (declare-type gx#syntax-local-value__0 (@lambda 1 #f))
  (declare-type
   gx#syntax-local-value
   (@case-lambda (1 gx#syntax-local-value__0) (2 gx#syntax-local-value__%)))
  (declare-type gx#raise-syntax-ref-error (@lambda 1 #f)))
