(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1770327919)
  (begin
    (declare (not safe))
    (define gx#current-expander-context (make-parameter '#f))
    (define gx#current-expander-marks (make-parameter '()))
    (define gx#current-expander-phi (make-parameter '0))
    (define gx#current-expander-path (make-parameter '()))
    (define gx#current-expander-eval (make-parameter '#f))
    (define gx#current-expander-compile (make-parameter '#f))
    (define gx#current-expander-module-eval (make-parameter '#f))
    (define gx#current-expander-module-import (make-parameter '#f))
    (define gx#current-expander-module-prelude (make-parameter '#f))
    (define gx#current-expander-allow-rebind? (make-parameter '#f))
    (define gx#current-expander-compiling? (make-parameter '#f))
    (define gx#current-compilation-target (make-parameter '#f))
    (define gx#expander-context::t
      (__make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args144911%_
        (apply make-instance gx#expander-context::t _%$args144911%_)))
    (define gx#expander-context-id
      (__make-class-slot-accessor gx#expander-context::t 'id))
    (define gx#expander-context-table
      (__make-class-slot-accessor gx#expander-context::t 'table))
    (define gx#expander-context-id-set!
      (__make-class-slot-mutator gx#expander-context::t 'id))
    (define gx#expander-context-table-set!
      (__make-class-slot-mutator gx#expander-context::t 'table))
    (define gx#&expander-context-id
      (__make-class-slot-unchecked-accessor gx#expander-context::t 'id))
    (define gx#&expander-context-table
      (__make-class-slot-unchecked-accessor gx#expander-context::t 'table))
    (define gx#&expander-context-id-set!
      (__make-class-slot-unchecked-mutator gx#expander-context::t 'id))
    (define gx#&expander-context-table-set!
      (__make-class-slot-unchecked-mutator gx#expander-context::t 'table))
    (define gx#root-context::t
      (__make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (__make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _%$args144908%_
        (apply make-instance gx#root-context::t _%$args144908%_)))
    (define gx#root-context-id
      (__make-class-slot-accessor gx#root-context::t 'id))
    (define gx#root-context-table
      (__make-class-slot-accessor gx#root-context::t 'table))
    (define gx#root-context-id-set!
      (__make-class-slot-mutator gx#root-context::t 'id))
    (define gx#root-context-table-set!
      (__make-class-slot-mutator gx#root-context::t 'table))
    (define gx#&root-context-id
      (__make-class-slot-unchecked-accessor gx#root-context::t 'id))
    (define gx#&root-context-table
      (__make-class-slot-unchecked-accessor gx#root-context::t 'table))
    (define gx#&root-context-id-set!
      (__make-class-slot-unchecked-mutator gx#root-context::t 'id))
    (define gx#&root-context-table-set!
      (__make-class-slot-unchecked-mutator gx#root-context::t 'table))
    (define gx#phi-context::t
      (__make-class-type
       'gx#phi-context::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args144905%_
        (apply make-instance gx#phi-context::t _%$args144905%_)))
    (define gx#phi-context-super
      (__make-class-slot-accessor gx#phi-context::t 'super))
    (define gx#phi-context-up
      (__make-class-slot-accessor gx#phi-context::t 'up))
    (define gx#phi-context-down
      (__make-class-slot-accessor gx#phi-context::t 'down))
    (define gx#phi-context-id
      (__make-class-slot-accessor gx#phi-context::t 'id))
    (define gx#phi-context-table
      (__make-class-slot-accessor gx#phi-context::t 'table))
    (define gx#phi-context-super-set!
      (__make-class-slot-mutator gx#phi-context::t 'super))
    (define gx#phi-context-up-set!
      (__make-class-slot-mutator gx#phi-context::t 'up))
    (define gx#phi-context-down-set!
      (__make-class-slot-mutator gx#phi-context::t 'down))
    (define gx#phi-context-id-set!
      (__make-class-slot-mutator gx#phi-context::t 'id))
    (define gx#phi-context-table-set!
      (__make-class-slot-mutator gx#phi-context::t 'table))
    (define gx#&phi-context-super
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'super))
    (define gx#&phi-context-up
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'up))
    (define gx#&phi-context-down
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'down))
    (define gx#&phi-context-id
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'id))
    (define gx#&phi-context-table
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'table))
    (define gx#&phi-context-super-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'super))
    (define gx#&phi-context-up-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'up))
    (define gx#&phi-context-down-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'down))
    (define gx#&phi-context-id-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'id))
    (define gx#&phi-context-table-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'table))
    (define gx#top-context::t
      (__make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (__make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _%$args144902%_
        (apply make-instance gx#top-context::t _%$args144902%_)))
    (define gx#top-context-super
      (__make-class-slot-accessor gx#top-context::t 'super))
    (define gx#top-context-up
      (__make-class-slot-accessor gx#top-context::t 'up))
    (define gx#top-context-down
      (__make-class-slot-accessor gx#top-context::t 'down))
    (define gx#top-context-id
      (__make-class-slot-accessor gx#top-context::t 'id))
    (define gx#top-context-table
      (__make-class-slot-accessor gx#top-context::t 'table))
    (define gx#top-context-super-set!
      (__make-class-slot-mutator gx#top-context::t 'super))
    (define gx#top-context-up-set!
      (__make-class-slot-mutator gx#top-context::t 'up))
    (define gx#top-context-down-set!
      (__make-class-slot-mutator gx#top-context::t 'down))
    (define gx#top-context-id-set!
      (__make-class-slot-mutator gx#top-context::t 'id))
    (define gx#top-context-table-set!
      (__make-class-slot-mutator gx#top-context::t 'table))
    (define gx#&top-context-super
      (__make-class-slot-unchecked-accessor gx#top-context::t 'super))
    (define gx#&top-context-up
      (__make-class-slot-unchecked-accessor gx#top-context::t 'up))
    (define gx#&top-context-down
      (__make-class-slot-unchecked-accessor gx#top-context::t 'down))
    (define gx#&top-context-id
      (__make-class-slot-unchecked-accessor gx#top-context::t 'id))
    (define gx#&top-context-table
      (__make-class-slot-unchecked-accessor gx#top-context::t 'table))
    (define gx#&top-context-super-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'super))
    (define gx#&top-context-up-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'up))
    (define gx#&top-context-down-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'down))
    (define gx#&top-context-id-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'id))
    (define gx#&top-context-table-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'table))
    (define gx#module-context::t
      (__make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args144899%_
        (apply make-instance gx#module-context::t _%$args144899%_)))
    (define gx#module-context-ns
      (__make-class-slot-accessor gx#module-context::t 'ns))
    (define gx#module-context-path
      (__make-class-slot-accessor gx#module-context::t 'path))
    (define gx#module-context-import
      (__make-class-slot-accessor gx#module-context::t 'import))
    (define gx#module-context-export
      (__make-class-slot-accessor gx#module-context::t 'export))
    (define gx#module-context-e
      (__make-class-slot-accessor gx#module-context::t 'e))
    (define gx#module-context-code
      (__make-class-slot-accessor gx#module-context::t 'code))
    (define gx#module-context-super
      (__make-class-slot-accessor gx#module-context::t 'super))
    (define gx#module-context-up
      (__make-class-slot-accessor gx#module-context::t 'up))
    (define gx#module-context-down
      (__make-class-slot-accessor gx#module-context::t 'down))
    (define gx#module-context-id
      (__make-class-slot-accessor gx#module-context::t 'id))
    (define gx#module-context-table
      (__make-class-slot-accessor gx#module-context::t 'table))
    (define gx#module-context-ns-set!
      (__make-class-slot-mutator gx#module-context::t 'ns))
    (define gx#module-context-path-set!
      (__make-class-slot-mutator gx#module-context::t 'path))
    (define gx#module-context-import-set!
      (__make-class-slot-mutator gx#module-context::t 'import))
    (define gx#module-context-export-set!
      (__make-class-slot-mutator gx#module-context::t 'export))
    (define gx#module-context-e-set!
      (__make-class-slot-mutator gx#module-context::t 'e))
    (define gx#module-context-code-set!
      (__make-class-slot-mutator gx#module-context::t 'code))
    (define gx#module-context-super-set!
      (__make-class-slot-mutator gx#module-context::t 'super))
    (define gx#module-context-up-set!
      (__make-class-slot-mutator gx#module-context::t 'up))
    (define gx#module-context-down-set!
      (__make-class-slot-mutator gx#module-context::t 'down))
    (define gx#module-context-id-set!
      (__make-class-slot-mutator gx#module-context::t 'id))
    (define gx#module-context-table-set!
      (__make-class-slot-mutator gx#module-context::t 'table))
    (define gx#&module-context-ns
      (__make-class-slot-unchecked-accessor gx#module-context::t 'ns))
    (define gx#&module-context-path
      (__make-class-slot-unchecked-accessor gx#module-context::t 'path))
    (define gx#&module-context-import
      (__make-class-slot-unchecked-accessor gx#module-context::t 'import))
    (define gx#&module-context-export
      (__make-class-slot-unchecked-accessor gx#module-context::t 'export))
    (define gx#&module-context-e
      (__make-class-slot-unchecked-accessor gx#module-context::t 'e))
    (define gx#&module-context-code
      (__make-class-slot-unchecked-accessor gx#module-context::t 'code))
    (define gx#&module-context-super
      (__make-class-slot-unchecked-accessor gx#module-context::t 'super))
    (define gx#&module-context-up
      (__make-class-slot-unchecked-accessor gx#module-context::t 'up))
    (define gx#&module-context-down
      (__make-class-slot-unchecked-accessor gx#module-context::t 'down))
    (define gx#&module-context-id
      (__make-class-slot-unchecked-accessor gx#module-context::t 'id))
    (define gx#&module-context-table
      (__make-class-slot-unchecked-accessor gx#module-context::t 'table))
    (define gx#&module-context-ns-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'ns))
    (define gx#&module-context-path-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'path))
    (define gx#&module-context-import-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'import))
    (define gx#&module-context-export-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'export))
    (define gx#&module-context-e-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'e))
    (define gx#&module-context-code-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'code))
    (define gx#&module-context-super-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'super))
    (define gx#&module-context-up-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'up))
    (define gx#&module-context-down-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'down))
    (define gx#&module-context-id-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'id))
    (define gx#&module-context-table-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'table))
    (define gx#prelude-context::t
      (__make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args144896%_
        (apply make-instance gx#prelude-context::t _%$args144896%_)))
    (define gx#prelude-context-path
      (__make-class-slot-accessor gx#prelude-context::t 'path))
    (define gx#prelude-context-import
      (__make-class-slot-accessor gx#prelude-context::t 'import))
    (define gx#prelude-context-e
      (__make-class-slot-accessor gx#prelude-context::t 'e))
    (define gx#prelude-context-super
      (__make-class-slot-accessor gx#prelude-context::t 'super))
    (define gx#prelude-context-up
      (__make-class-slot-accessor gx#prelude-context::t 'up))
    (define gx#prelude-context-down
      (__make-class-slot-accessor gx#prelude-context::t 'down))
    (define gx#prelude-context-id
      (__make-class-slot-accessor gx#prelude-context::t 'id))
    (define gx#prelude-context-table
      (__make-class-slot-accessor gx#prelude-context::t 'table))
    (define gx#prelude-context-path-set!
      (__make-class-slot-mutator gx#prelude-context::t 'path))
    (define gx#prelude-context-import-set!
      (__make-class-slot-mutator gx#prelude-context::t 'import))
    (define gx#prelude-context-e-set!
      (__make-class-slot-mutator gx#prelude-context::t 'e))
    (define gx#prelude-context-super-set!
      (__make-class-slot-mutator gx#prelude-context::t 'super))
    (define gx#prelude-context-up-set!
      (__make-class-slot-mutator gx#prelude-context::t 'up))
    (define gx#prelude-context-down-set!
      (__make-class-slot-mutator gx#prelude-context::t 'down))
    (define gx#prelude-context-id-set!
      (__make-class-slot-mutator gx#prelude-context::t 'id))
    (define gx#prelude-context-table-set!
      (__make-class-slot-mutator gx#prelude-context::t 'table))
    (define gx#&prelude-context-path
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'path))
    (define gx#&prelude-context-import
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'import))
    (define gx#&prelude-context-e
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'e))
    (define gx#&prelude-context-super
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'super))
    (define gx#&prelude-context-up
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'up))
    (define gx#&prelude-context-down
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'down))
    (define gx#&prelude-context-id
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'id))
    (define gx#&prelude-context-table
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'table))
    (define gx#&prelude-context-path-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'path))
    (define gx#&prelude-context-import-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'import))
    (define gx#&prelude-context-e-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'e))
    (define gx#&prelude-context-super-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'super))
    (define gx#&prelude-context-up-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'up))
    (define gx#&prelude-context-down-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'down))
    (define gx#&prelude-context-id-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'id))
    (define gx#&prelude-context-table-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'table))
    (define gx#local-context::t
      (__make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (__make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _%$args144893%_
        (apply make-instance gx#local-context::t _%$args144893%_)))
    (define gx#local-context-super
      (__make-class-slot-accessor gx#local-context::t 'super))
    (define gx#local-context-up
      (__make-class-slot-accessor gx#local-context::t 'up))
    (define gx#local-context-down
      (__make-class-slot-accessor gx#local-context::t 'down))
    (define gx#local-context-id
      (__make-class-slot-accessor gx#local-context::t 'id))
    (define gx#local-context-table
      (__make-class-slot-accessor gx#local-context::t 'table))
    (define gx#local-context-super-set!
      (__make-class-slot-mutator gx#local-context::t 'super))
    (define gx#local-context-up-set!
      (__make-class-slot-mutator gx#local-context::t 'up))
    (define gx#local-context-down-set!
      (__make-class-slot-mutator gx#local-context::t 'down))
    (define gx#local-context-id-set!
      (__make-class-slot-mutator gx#local-context::t 'id))
    (define gx#local-context-table-set!
      (__make-class-slot-mutator gx#local-context::t 'table))
    (define gx#&local-context-super
      (__make-class-slot-unchecked-accessor gx#local-context::t 'super))
    (define gx#&local-context-up
      (__make-class-slot-unchecked-accessor gx#local-context::t 'up))
    (define gx#&local-context-down
      (__make-class-slot-unchecked-accessor gx#local-context::t 'down))
    (define gx#&local-context-id
      (__make-class-slot-unchecked-accessor gx#local-context::t 'id))
    (define gx#&local-context-table
      (__make-class-slot-unchecked-accessor gx#local-context::t 'table))
    (define gx#&local-context-super-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'super))
    (define gx#&local-context-up-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'up))
    (define gx#&local-context-down-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'down))
    (define gx#&local-context-id-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'id))
    (define gx#&local-context-table-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'table))
    (define gx#phi-context:::init!__%
      (lambda (_%self144866%_ _%id144867%_ _%super144868%_)
        (let ((_%self144871%_ _%self144866%_))
          (if (##fx< '3 (##structure-length _%self144871%_))
              (begin
                (##unchecked-structure-set!
                 _%self144871%_
                 _%id144867%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self144871%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self144871%_
                 _%super144868%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self144871%_
                     '3
                     (##structure-length _%self144871%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self144884%_ _%id144885%_)
        (let ((_%super144887%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self144884%_
           _%id144885%_
           _%super144887%_))))
    (define gx#phi-context:::init!
      (lambda _g144953_
        (let ((_g144954_ (##length _g144953_)))
          (cond ((##fx= _g144954_ 2)
                 (apply gx#phi-context:::init!__0 _g144953_))
                ((##fx= _g144954_ 3)
                 (apply gx#phi-context:::init!__% _g144953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g144953_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self144719%_ _%super144720%_)
        (let ((_%self144723%_ _%self144719%_))
          (if (##fx< '3 (##structure-length _%self144723%_))
              (begin
                (##unchecked-structure-set!
                 _%self144723%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self144723%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self144723%_
                 _%super144720%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self144723%_
                     '3
                     (##structure-length _%self144723%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self144736%_)
        (let ((_%super144738%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self144736%_ _%super144738%_))))
    (define gx#local-context:::init!
      (lambda _g144955_
        (let ((_g144956_ (##length _g144955_)))
          (cond ((##fx= _g144956_ 1)
                 (apply gx#local-context:::init!__0 _g144955_))
                ((##fx= _g144956_ 2)
                 (apply gx#local-context:::init!__% _g144955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g144955_))))))
    (__bind-method!__%
     gx#local-context::t
     ':init!
     gx#local-context:::init!
     '#f)
    (define gx#binding::t
      (__make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi properties)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args144593%_
        (apply make-instance gx#binding::t _%$args144593%_)))
    (define gx#binding-id (__make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (__make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (__make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-properties
      (__make-class-slot-accessor gx#binding::t 'properties))
    (define gx#binding-id-set! (__make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (__make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (__make-class-slot-mutator gx#binding::t 'phi))
    (define gx#binding-properties-set!
      (__make-class-slot-mutator gx#binding::t 'properties))
    (define gx#&binding-id
      (__make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (__make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (__make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-properties
      (__make-class-slot-unchecked-accessor gx#binding::t 'properties))
    (define gx#&binding-id-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#&binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'properties))
    (define gx#binding:::init!
      (lambda (_%self144576%_ _%id144577%_ _%key144578%_ _%phi144579%_)
        (let ((_%self144582%_ _%self144576%_))
          (##unchecked-structure-set! _%self144582%_ _%id144577%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self144582%_ _%key144578%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self144582%_
           _%phi144579%_
           '3
           '#f
           '#f))))
    (__bind-method!__% gx#binding::t ':init! gx#binding:::init! '#f)
    (define gx#runtime-binding::t
      (__make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '(type macro)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args144451%_
        (apply make-instance gx#runtime-binding::t _%$args144451%_)))
    (define gx#runtime-binding-type
      (__make-class-slot-accessor gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro
      (__make-class-slot-accessor gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id
      (__make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (__make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (__make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties
      (__make-class-slot-accessor gx#runtime-binding::t 'properties))
    (define gx#runtime-binding-type-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'properties))
    (define gx#local-binding::t
      (__make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args144448%_
        (apply make-instance gx#local-binding::t _%$args144448%_)))
    (define gx#local-binding-type
      (__make-class-slot-accessor gx#local-binding::t 'type))
    (define gx#local-binding-macro
      (__make-class-slot-accessor gx#local-binding::t 'macro))
    (define gx#local-binding-id
      (__make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (__make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (__make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-properties
      (__make-class-slot-accessor gx#local-binding::t 'properties))
    (define gx#local-binding-type-set!
      (__make-class-slot-mutator gx#local-binding::t 'type))
    (define gx#local-binding-macro-set!
      (__make-class-slot-mutator gx#local-binding::t 'macro))
    (define gx#local-binding-id-set!
      (__make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (__make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (__make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#local-binding-properties-set!
      (__make-class-slot-mutator gx#local-binding::t 'properties))
    (define gx#&local-binding-type
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'type))
    (define gx#&local-binding-macro
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'macro))
    (define gx#&local-binding-id
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-properties
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'properties))
    (define gx#&local-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'type))
    (define gx#&local-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'macro))
    (define gx#&local-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'properties))
    (define gx#top-binding::t
      (__make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args144445%_
        (apply make-instance gx#top-binding::t _%$args144445%_)))
    (define gx#top-binding-type
      (__make-class-slot-accessor gx#top-binding::t 'type))
    (define gx#top-binding-macro
      (__make-class-slot-accessor gx#top-binding::t 'macro))
    (define gx#top-binding-id
      (__make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (__make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (__make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-properties
      (__make-class-slot-accessor gx#top-binding::t 'properties))
    (define gx#top-binding-type-set!
      (__make-class-slot-mutator gx#top-binding::t 'type))
    (define gx#top-binding-macro-set!
      (__make-class-slot-mutator gx#top-binding::t 'macro))
    (define gx#top-binding-id-set!
      (__make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (__make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (__make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#top-binding-properties-set!
      (__make-class-slot-mutator gx#top-binding::t 'properties))
    (define gx#&top-binding-type
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'type))
    (define gx#&top-binding-macro
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'macro))
    (define gx#&top-binding-id
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-properties
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'properties))
    (define gx#&top-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'type))
    (define gx#&top-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'macro))
    (define gx#&top-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'properties))
    (define gx#module-binding::t
      (__make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args144442%_
        (apply make-instance gx#module-binding::t _%$args144442%_)))
    (define gx#module-binding-context
      (__make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-type
      (__make-class-slot-accessor gx#module-binding::t 'type))
    (define gx#module-binding-macro
      (__make-class-slot-accessor gx#module-binding::t 'macro))
    (define gx#module-binding-id
      (__make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (__make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (__make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-properties
      (__make-class-slot-accessor gx#module-binding::t 'properties))
    (define gx#module-binding-context-set!
      (__make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-type-set!
      (__make-class-slot-mutator gx#module-binding::t 'type))
    (define gx#module-binding-macro-set!
      (__make-class-slot-mutator gx#module-binding::t 'macro))
    (define gx#module-binding-id-set!
      (__make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (__make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (__make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#module-binding-properties-set!
      (__make-class-slot-mutator gx#module-binding::t 'properties))
    (define gx#&module-binding-context
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-type
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'type))
    (define gx#&module-binding-macro
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'macro))
    (define gx#&module-binding-id
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-properties
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'properties))
    (define gx#&module-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'type))
    (define gx#&module-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'macro))
    (define gx#&module-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'properties))
    (define gx#extern-binding::t
      (__make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args144439%_
        (apply make-instance gx#extern-binding::t _%$args144439%_)))
    (define gx#extern-binding-type
      (__make-class-slot-accessor gx#extern-binding::t 'type))
    (define gx#extern-binding-macro
      (__make-class-slot-accessor gx#extern-binding::t 'macro))
    (define gx#extern-binding-id
      (__make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (__make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (__make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties
      (__make-class-slot-accessor gx#extern-binding::t 'properties))
    (define gx#extern-binding-type-set!
      (__make-class-slot-mutator gx#extern-binding::t 'type))
    (define gx#extern-binding-macro-set!
      (__make-class-slot-mutator gx#extern-binding::t 'macro))
    (define gx#extern-binding-id-set!
      (__make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (__make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (__make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties-set!
      (__make-class-slot-mutator gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'properties))
    (define gx#runtime-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#runtime-binding::t
     ':init!
     gx#runtime-binding:::init!
     '#f)
    (define gx#local-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#local-binding::t
     ':init!
     gx#local-binding:::init!
     '#f)
    (define gx#top-binding:::init! gx#binding:::init!)
    (__bind-method!__% gx#top-binding::t ':init! gx#top-binding:::init! '#f)
    (define gx#module-binding:::init!
      (lambda (_%self144055%_
               _%id144056%_
               _%key144057%_
               _%phi144058%_
               _%ctx144059%_)
        (let ((_%self144062%_ _%self144055%_))
          (gx#binding:::init!
           _%self144062%_
           _%id144056%_
           _%key144057%_
           _%phi144058%_)
          (##unchecked-structure-set!
           _%self144062%_
           _%ctx144059%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#module-binding::t
     ':init!
     gx#module-binding:::init!
     '#f)
    (define gx#extern-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#extern-binding::t
     ':init!
     gx#extern-binding:::init!
     '#f)
    (define gx#syntax-binding::t
      (__make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args143808%_
        (apply make-instance gx#syntax-binding::t _%$args143808%_)))
    (define gx#syntax-binding-e
      (__make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (__make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (__make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (__make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties
      (__make-class-slot-accessor gx#syntax-binding::t 'properties))
    (define gx#syntax-binding-e-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'properties))
    (define gx#import-binding::t
      (__make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args143805%_
        (apply make-instance gx#import-binding::t _%$args143805%_)))
    (define gx#import-binding-e
      (__make-class-slot-accessor gx#import-binding::t 'e))
    (define gx#import-binding-context
      (__make-class-slot-accessor gx#import-binding::t 'context))
    (define gx#import-binding-weak?
      (__make-class-slot-accessor gx#import-binding::t 'weak?))
    (define gx#import-binding-id
      (__make-class-slot-accessor gx#import-binding::t 'id))
    (define gx#import-binding-key
      (__make-class-slot-accessor gx#import-binding::t 'key))
    (define gx#import-binding-phi
      (__make-class-slot-accessor gx#import-binding::t 'phi))
    (define gx#import-binding-properties
      (__make-class-slot-accessor gx#import-binding::t 'properties))
    (define gx#import-binding-e-set!
      (__make-class-slot-mutator gx#import-binding::t 'e))
    (define gx#import-binding-context-set!
      (__make-class-slot-mutator gx#import-binding::t 'context))
    (define gx#import-binding-weak?-set!
      (__make-class-slot-mutator gx#import-binding::t 'weak?))
    (define gx#import-binding-id-set!
      (__make-class-slot-mutator gx#import-binding::t 'id))
    (define gx#import-binding-key-set!
      (__make-class-slot-mutator gx#import-binding::t 'key))
    (define gx#import-binding-phi-set!
      (__make-class-slot-mutator gx#import-binding::t 'phi))
    (define gx#import-binding-properties-set!
      (__make-class-slot-mutator gx#import-binding::t 'properties))
    (define gx#&import-binding-e
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'e))
    (define gx#&import-binding-context
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'context))
    (define gx#&import-binding-weak?
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'weak?))
    (define gx#&import-binding-id
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'id))
    (define gx#&import-binding-key
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'key))
    (define gx#&import-binding-phi
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'phi))
    (define gx#&import-binding-properties
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'properties))
    (define gx#&import-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'e))
    (define gx#&import-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'context))
    (define gx#&import-binding-weak?-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'weak?))
    (define gx#&import-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'id))
    (define gx#&import-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'key))
    (define gx#&import-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'phi))
    (define gx#&import-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'properties))
    (define gx#alias-binding::t
      (__make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args143802%_
        (apply make-instance gx#alias-binding::t _%$args143802%_)))
    (define gx#alias-binding-e
      (__make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (__make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (__make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (__make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties
      (__make-class-slot-accessor gx#alias-binding::t 'properties))
    (define gx#alias-binding-e-set!
      (__make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (__make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (__make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (__make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties-set!
      (__make-class-slot-mutator gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'properties))
    (define gx#syntax-binding:::init!
      (lambda (_%self143784%_
               _%id143785%_
               _%key143786%_
               _%phi143787%_
               _%e143788%_)
        (let ((_%self143791%_ _%self143784%_))
          (gx#binding:::init!
           _%self143791%_
           _%id143785%_
           _%key143786%_
           _%phi143787%_)
          (##unchecked-structure-set! _%self143791%_ _%e143788%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self143642%_
               _%id143643%_
               _%key143644%_
               _%phi143645%_
               _%e143646%_
               _%ctx143647%_
               _%weak?143648%_)
        (let ((_%self143651%_ _%self143642%_))
          (gx#binding:::init!
           _%self143651%_
           _%id143643%_
           _%key143644%_
           _%phi143645%_)
          (##unchecked-structure-set! _%self143651%_ _%e143646%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self143651%_ _%ctx143647%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self143651%_
           _%weak?143648%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self143502%_
               _%id143503%_
               _%key143504%_
               _%phi143505%_
               _%e143506%_)
        (let ((_%self143509%_ _%self143502%_))
          (gx#binding:::init!
           _%self143509%_
           _%id143503%_
           _%key143504%_
           _%phi143505%_)
          (##unchecked-structure-set! _%self143509%_ _%e143506%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#alias-binding::t
     ':init!
     gx#alias-binding:::init!
     '#f)
    (define gx#expander::t
      (__make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args143377%_
        (apply make-instance gx#expander::t _%$args143377%_)))
    (define gx#expander-e (__make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (__make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (__make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (__make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (__make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args143374%_
        (apply make-instance gx#core-expander::t _%$args143374%_)))
    (define gx#core-expander-id
      (__make-class-slot-accessor gx#core-expander::t 'id))
    (define gx#core-expander-compile-top
      (__make-class-slot-accessor gx#core-expander::t 'compile-top))
    (define gx#core-expander-e
      (__make-class-slot-accessor gx#core-expander::t 'e))
    (define gx#core-expander-id-set!
      (__make-class-slot-mutator gx#core-expander::t 'id))
    (define gx#core-expander-compile-top-set!
      (__make-class-slot-mutator gx#core-expander::t 'compile-top))
    (define gx#core-expander-e-set!
      (__make-class-slot-mutator gx#core-expander::t 'e))
    (define gx#&core-expander-id
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'e))
    (define gx#&core-expander-id-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'e))
    (define gx#expression-form::t
      (__make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (__make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _%$args143371%_
        (apply make-instance gx#expression-form::t _%$args143371%_)))
    (define gx#expression-form-id
      (__make-class-slot-accessor gx#expression-form::t 'id))
    (define gx#expression-form-compile-top
      (__make-class-slot-accessor gx#expression-form::t 'compile-top))
    (define gx#expression-form-e
      (__make-class-slot-accessor gx#expression-form::t 'e))
    (define gx#expression-form-id-set!
      (__make-class-slot-mutator gx#expression-form::t 'id))
    (define gx#expression-form-compile-top-set!
      (__make-class-slot-mutator gx#expression-form::t 'compile-top))
    (define gx#expression-form-e-set!
      (__make-class-slot-mutator gx#expression-form::t 'e))
    (define gx#&expression-form-id
      (__make-class-slot-unchecked-accessor gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#expression-form::t
       'compile-top))
    (define gx#&expression-form-e
      (__make-class-slot-unchecked-accessor gx#expression-form::t 'e))
    (define gx#&expression-form-id-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'e))
    (define gx#special-form::t
      (__make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (__make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _%$args143368%_
        (apply make-instance gx#special-form::t _%$args143368%_)))
    (define gx#special-form-id
      (__make-class-slot-accessor gx#special-form::t 'id))
    (define gx#special-form-compile-top
      (__make-class-slot-accessor gx#special-form::t 'compile-top))
    (define gx#special-form-e
      (__make-class-slot-accessor gx#special-form::t 'e))
    (define gx#special-form-id-set!
      (__make-class-slot-mutator gx#special-form::t 'id))
    (define gx#special-form-compile-top-set!
      (__make-class-slot-mutator gx#special-form::t 'compile-top))
    (define gx#special-form-e-set!
      (__make-class-slot-mutator gx#special-form::t 'e))
    (define gx#&special-form-id
      (__make-class-slot-unchecked-accessor gx#special-form::t 'id))
    (define gx#&special-form-compile-top
      (__make-class-slot-unchecked-accessor gx#special-form::t 'compile-top))
    (define gx#&special-form-e
      (__make-class-slot-unchecked-accessor gx#special-form::t 'e))
    (define gx#&special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'id))
    (define gx#&special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'compile-top))
    (define gx#&special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'e))
    (define gx#definition-form::t
      (__make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (__make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _%$args143365%_
        (apply make-instance gx#definition-form::t _%$args143365%_)))
    (define gx#definition-form-id
      (__make-class-slot-accessor gx#definition-form::t 'id))
    (define gx#definition-form-compile-top
      (__make-class-slot-accessor gx#definition-form::t 'compile-top))
    (define gx#definition-form-e
      (__make-class-slot-accessor gx#definition-form::t 'e))
    (define gx#definition-form-id-set!
      (__make-class-slot-mutator gx#definition-form::t 'id))
    (define gx#definition-form-compile-top-set!
      (__make-class-slot-mutator gx#definition-form::t 'compile-top))
    (define gx#definition-form-e-set!
      (__make-class-slot-mutator gx#definition-form::t 'e))
    (define gx#&definition-form-id
      (__make-class-slot-unchecked-accessor gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#definition-form::t
       'compile-top))
    (define gx#&definition-form-e
      (__make-class-slot-unchecked-accessor gx#definition-form::t 'e))
    (define gx#&definition-form-id-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'e))
    (define gx#top-special-form::t
      (__make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (__make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _%$args143362%_
        (apply make-instance gx#top-special-form::t _%$args143362%_)))
    (define gx#top-special-form-id
      (__make-class-slot-accessor gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top
      (__make-class-slot-accessor gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e
      (__make-class-slot-accessor gx#top-special-form::t 'e))
    (define gx#top-special-form-id-set!
      (__make-class-slot-mutator gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top-set!
      (__make-class-slot-mutator gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e-set!
      (__make-class-slot-mutator gx#top-special-form::t 'e))
    (define gx#&top-special-form-id
      (__make-class-slot-unchecked-accessor gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e
      (__make-class-slot-unchecked-accessor gx#top-special-form::t 'e))
    (define gx#&top-special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#top-special-form::t 'e))
    (define gx#module-special-form::t
      (__make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (__make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _%$args143359%_
        (apply make-instance gx#module-special-form::t _%$args143359%_)))
    (define gx#module-special-form-id
      (__make-class-slot-accessor gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top
      (__make-class-slot-accessor gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e
      (__make-class-slot-accessor gx#module-special-form::t 'e))
    (define gx#module-special-form-id-set!
      (__make-class-slot-mutator gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top-set!
      (__make-class-slot-mutator gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e-set!
      (__make-class-slot-mutator gx#module-special-form::t 'e))
    (define gx#&module-special-form-id
      (__make-class-slot-unchecked-accessor gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e
      (__make-class-slot-unchecked-accessor gx#module-special-form::t 'e))
    (define gx#&module-special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#module-special-form::t 'e))
    (define gx#feature-expander::t
      (__make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (__make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _%$args143356%_
        (apply make-instance gx#feature-expander::t _%$args143356%_)))
    (define gx#feature-expander-e
      (__make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (__make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (__make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (__make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (__make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _%$args143353%_
        (apply make-instance gx#private-feature-expander::t _%$args143353%_)))
    (define gx#private-feature-expander-e
      (__make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (__make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (__make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (__make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (__make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _%$args143350%_
        (apply make-instance gx#reserved-expander::t _%$args143350%_)))
    (define gx#reserved-expander-e
      (__make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (__make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (__make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (__make-class-type
       'gx#macro-expander::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (__make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _%$args143347%_
        (apply make-instance gx#macro-expander::t _%$args143347%_)))
    (define gx#macro-expander-e
      (__make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (__make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (__make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (__make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (__make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _%$args143344%_
        (apply make-instance gx#rename-macro-expander::t _%$args143344%_)))
    (define gx#rename-macro-expander-e
      (__make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (__make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (__make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (__make-class-type
       'gx#user-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args143341%_
        (apply make-instance gx#user-expander::t _%$args143341%_)))
    (define gx#user-expander-context
      (__make-class-slot-accessor gx#user-expander::t 'context))
    (define gx#user-expander-phi
      (__make-class-slot-accessor gx#user-expander::t 'phi))
    (define gx#user-expander-e
      (__make-class-slot-accessor gx#user-expander::t 'e))
    (define gx#user-expander-context-set!
      (__make-class-slot-mutator gx#user-expander::t 'context))
    (define gx#user-expander-phi-set!
      (__make-class-slot-mutator gx#user-expander::t 'phi))
    (define gx#user-expander-e-set!
      (__make-class-slot-mutator gx#user-expander::t 'e))
    (define gx#&user-expander-context
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'context))
    (define gx#&user-expander-phi
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'phi))
    (define gx#&user-expander-e
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'e))
    (define gx#&user-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'context))
    (define gx#&user-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'phi))
    (define gx#&user-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'e))
    (define gx#expander-mark::t
      (__make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args143338%_
        (apply make-instance gx#expander-mark::t _%$args143338%_)))
    (define gx#expander-mark-subst
      (__make-class-slot-accessor gx#expander-mark::t 'subst))
    (define gx#expander-mark-context
      (__make-class-slot-accessor gx#expander-mark::t 'context))
    (define gx#expander-mark-phi
      (__make-class-slot-accessor gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace
      (__make-class-slot-accessor gx#expander-mark::t 'trace))
    (define gx#expander-mark-subst-set!
      (__make-class-slot-mutator gx#expander-mark::t 'subst))
    (define gx#expander-mark-context-set!
      (__make-class-slot-mutator gx#expander-mark::t 'context))
    (define gx#expander-mark-phi-set!
      (__make-class-slot-mutator gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace-set!
      (__make-class-slot-mutator gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'trace))
    (define gx#raise-syntax-error
      (lambda (_%ctx143322%_
               _%message143323%_
               _%stx143324%_
               .
               _%details143325%_)
        (let ((_%ctx143336%_
               (let ((_%$e143327%_ _%ctx143322%_))
                 (if _%$e143327%_
                     _%$e143327%_
                     (let ((_%$e143330%_ (gx#core-context-top__0)))
                       (if _%$e143330%_
                           ((lambda (_%ctx143333%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx143333%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e143330%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message143323%_
                  (cons _%stx143324%_ _%details143325%_)
                  _%ctx143336%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx143309%_ _%expression?143310%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx143309%_ _%expression?143310%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx143315%_)
        (let ((_%expression?143317%_ '#f))
          (gx#eval-syntax__% _%stx143315%_ _%expression?143317%_))))
    (define gx#eval-syntax
      (lambda _g144957_
        (let ((_g144958_ (##length _g144957_)))
          (cond ((##fx= _g144958_ 1) (apply gx#eval-syntax__0 _g144957_))
                ((##fx= _g144958_ 2) (apply gx#eval-syntax__% _g144957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g144957_))))))
    (define gx#eval-syntax*
      (lambda (_%stx143306%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx143306%_))))
    (define gx#core-expand__%
      (lambda (_%stx143293%_ _%expression?143294%_)
        (if _%expression?143294%_
            (gx#core-expand-expression _%stx143293%_)
            (gx#core-expand-top _%stx143293%_))))
    (define gx#core-expand__0
      (lambda (_%stx143299%_)
        (let ((_%expression?143301%_ '#f))
          (gx#core-expand__% _%stx143299%_ _%expression?143301%_))))
    (define gx#core-expand
      (lambda _g144959_
        (let ((_g144960_ (##length _g144959_)))
          (cond ((##fx= _g144960_ 1) (apply gx#core-expand__0 _g144959_))
                ((##fx= _g144960_ 2) (apply gx#core-expand__% _g144959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g144959_))))))
    (define gx#core-expand-top
      (lambda (_%stx143260%_)
        (let* ((_%stx143262%_ (gx#core-expand*__0 _%stx143260%_))
               (_%e143263143270%_ _%stx143262%_)
               (_%E143265143274%_
                (lambda () (gx#core-expand-expression _%stx143262%_)))
               (_%E143264143288%_
                (lambda ()
                  (if (gx#stx-pair? _%e143263143270%_)
                      (let ((_%e143266143278%_
                             (gx#syntax-e _%e143263143270%_)))
                        (let ((_%hd143267143281%_ (##car _%e143266143278%_))
                              (_%tl143268143283%_ (##cdr _%e143266143278%_)))
                          (let ((_%form143286%_ _%hd143267143281%_))
                            (if (gx#core-bound-identifier?__0 _%form143286%_)
                                _%stx143262%_
                                (_%E143265143274%_)))))
                      (_%E143265143274%_)))))
          (_%E143264143288%_))))
    (define gx#core-expand-expression
      (lambda (_%stx143192%_)
        (letrec ((_%sealed-expression?143194%_
                  (lambda (_%hd143230%_)
                    (if (gx#sealed-syntax? _%hd143230%_)
                        (let* ((_%e143231143238%_ _%hd143230%_)
                               (_%E143233143242%_ (lambda () '#f))
                               (_%E143232143256%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e143231143238%_)
                                      (let ((_%e143234143246%_
                                             (gx#syntax-e _%e143231143238%_)))
                                        (let ((_%hd143235143249%_
                                               (##car _%e143234143246%_))
                                              (_%tl143236143251%_
                                               (##cdr _%e143234143246%_)))
                                          (let ((_%form143254%_
                                                 _%hd143235143249%_))
                                            (gx#core-bound-identifier?__%
                                             _%form143254%_
                                             gx#expression-form-binding?))))
                                      (_%E143233143242%_)))))
                          (_%E143232143256%_))
                        '#f)))
                 (_%illegal-expression143195%_
                  (lambda (_%hd143227%_ . _%_143228%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx143192%_
                     _%hd143227%_)))
                 (_%expand-e143196%_
                  (lambda (_%form143219%_ _%hd143220%_)
                    (let ((_%bind143222%_
                           (if (##structure-instance-of?
                                _%form143219%_
                                'gx#binding::t)
                               _%form143219%_
                               (gx#resolve-identifier__0 _%form143219%_))))
                      (if (gx#core-expander-binding? _%bind143222%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind143222%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd143220%_
                            (gx#stx-source _%stx143192%_)))
                          (if (##structure-direct-instance-of?
                               _%bind143222%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind143222%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd143220%_
                                 (gx#stx-source _%stx143192%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx143192%_
                               _%form143219%_)))))))
          (let ((_%hd143198%_ (gx#core-expand-head _%stx143192%_)))
            (if (_%sealed-expression?143194%_ _%hd143198%_)
                _%hd143198%_
                (if (gx#stx-pair? _%hd143198%_)
                    (let* ((_%form143202%_ (gx#stx-car _%hd143198%_))
                           (_%bind143204%_
                            (if (gx#identifier? _%form143202%_)
                                (gx#resolve-identifier__0 _%form143202%_)
                                '#f)))
                      (if (or (not _%bind143204%_)
                              (not (gx#core-expander-binding? _%bind143204%_)))
                          (_%expand-e143196%_
                           '%%app
                           (cons '%%app _%hd143198%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind143204%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd143198%_
                               _%illegal-expression143195%_)
                              (if (gx#expression-form-binding? _%bind143204%_)
                                  (_%expand-e143196%_
                                   _%bind143204%_
                                   _%hd143198%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind143204%_)
                                      (gx#core-expand-expression
                                       (_%expand-e143196%_
                                        _%bind143204%_
                                        _%hd143198%_))
                                      (_%illegal-expression143195%_
                                       _%hd143198%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd143198%_)
                        (_%illegal-expression143195%_ _%hd143198%_)
                        (if (gx#identifier? _%hd143198%_)
                            (_%expand-e143196%_
                             '%%ref
                             (cons '%%ref (cons _%hd143198%_ '())))
                            (if (gx#stx-datum? _%hd143198%_)
                                (_%expand-e143196%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd143198%_ '())))
                                (_%illegal-expression143195%_
                                 _%hd143198%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx143187%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx143190%_ (gx#core-expand-expression _%stx143187%_)))
             (values _%stx143190%_ (gx#eval-syntax* _%stx143190%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx143168%_ _%stop?143169%_)
        (let _%lp143171%_ ((_%stx143173%_ _%stx143168%_))
          (if (_%stop?143169%_ _%stx143173%_)
              _%stx143173%_
              (let ((_%rstx143175%_ (gx#core-expand1 _%stx143173%_)))
                (if (eq? _%stx143173%_ _%rstx143175%_)
                    _%stx143173%_
                    (_%lp143171%_ _%rstx143175%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx143180%_)
        (let ((_%stop?143182%_ false))
          (gx#core-expand*__% _%stx143180%_ _%stop?143182%_))))
    (define gx#core-expand*
      (lambda _g144961_
        (let ((_g144962_ (##length _g144961_)))
          (cond ((##fx= _g144962_ 1) (apply gx#core-expand*__0 _g144961_))
                ((##fx= _g144962_ 2) (apply gx#core-expand*__% _g144961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g144961_))))))
    (define gx#core-expand1
      (lambda (_%stx143120%_)
        (letrec ((_%step143122%_
                  (lambda (_%hd143159%_)
                    (let ((_%bind143161%_
                           (gx#resolve-identifier__0 _%hd143159%_)))
                      (if (##structure-instance-of?
                           _%bind143161%_
                           'gx#runtime-binding::t)
                          _%stx143120%_
                          (if (##structure-direct-instance-of?
                               _%bind143161%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind143161%_
                                '5
                                '#f
                                '#f)
                               _%stx143120%_)
                              (if (not _%bind143161%_)
                                  _%stx143120%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx143120%_))))))))
          (let* ((_%e143123143131%_ _%stx143120%_)
                 (_%E143129143135%_ (lambda () _%stx143120%_))
                 (_%E143125143141%_
                  (lambda ()
                    (let ((_%hd143139%_ _%e143123143131%_))
                      (if (gx#identifier? _%hd143139%_)
                          (_%step143122%_ _%hd143139%_)
                          (_%E143129143135%_)))))
                 (_%E143124143155%_
                  (lambda ()
                    (if (gx#stx-pair? _%e143123143131%_)
                        (let ((_%e143126143145%_
                               (gx#syntax-e _%e143123143131%_)))
                          (let ((_%hd143127143148%_ (##car _%e143126143145%_))
                                (_%tl143128143150%_ (##cdr _%e143126143145%_)))
                            (let ((_%hd143153%_ _%hd143127143148%_))
                              (if (gx#identifier? _%hd143153%_)
                                  (_%step143122%_ _%hd143153%_)
                                  (_%E143125143141%_)))))
                        (_%E143125143141%_)))))
            (_%E143124143155%_)))))
    (define gx#core-expand-head
      (lambda (_%stx143086%_)
        (letrec ((_%stop?143088%_
                  (lambda (_%stx143090%_)
                    (let* ((_%e143091143098%_ _%stx143090%_)
                           (_%E143093143102%_ (lambda () '#f))
                           (_%E143092143116%_
                            (lambda ()
                              (if (gx#stx-pair? _%e143091143098%_)
                                  (let ((_%e143094143106%_
                                         (gx#syntax-e _%e143091143098%_)))
                                    (let ((_%hd143095143109%_
                                           (##car _%e143094143106%_))
                                          (_%tl143096143111%_
                                           (##cdr _%e143094143106%_)))
                                      (let ((_%hd143114%_ _%hd143095143109%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd143114%_))))
                                  (_%E143093143102%_)))))
                      (_%E143092143116%_)))))
          (gx#core-expand*__% _%stx143086%_ _%stop?143088%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx142892%_
               _%expand-special142893%_
               _%begin-form142894%_
               _%expand-e142895%_)
        (letrec ((_%expand-splice142897%_
                  (lambda (_%hd143060%_
                           _%body143061%_
                           _%rest143062%_
                           _%r143063%_)
                    (if (gx#stx-list? _%body143061%_)
                        (_%K142901%_
                         (gx#stx-foldr cons _%rest143062%_ _%body143061%_)
                         _%r143063%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx142892%_
                         _%hd143060%_))))
                 (_%expand-cond-expand142898%_
                  (lambda (_%hd143056%_ _%rest143057%_ _%r143058%_)
                    (_%K142901%_
                     (cons (gx#core-expand-cond-expand% _%hd143056%_)
                           _%rest143057%_)
                     _%r143058%_)))
                 (_%expand-include142899%_
                  (lambda (_%hd143005%_ _%rest143006%_ _%r143007%_)
                    (let* ((_%e143008143018%_ _%hd143005%_)
                           (_%E143010143022%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e143008143018%_)))
                           (_%E143009143052%_
                            (lambda ()
                              (if (gx#stx-pair? _%e143008143018%_)
                                  (let ((_%e143011143026%_
                                         (gx#syntax-e _%e143008143018%_)))
                                    (let ((_%hd143012143029%_
                                           (##car _%e143011143026%_))
                                          (_%tl143013143031%_
                                           (##cdr _%e143011143026%_)))
                                      (if (gx#stx-pair? _%tl143013143031%_)
                                          (let ((_%e143014143034%_
                                                 (gx#syntax-e
                                                  _%tl143013143031%_)))
                                            (let ((_%hd143015143037%_
                                                   (##car _%e143014143034%_))
                                                  (_%tl143016143039%_
                                                   (##cdr _%e143014143034%_)))
                                              (let ((_%path143042%_
                                                     _%hd143015143037%_))
                                                (if (gx#stx-null?
                                                     _%tl143016143039%_)
                                                    (if (gx#stx-string?
                                                         _%path143042%_)
                                                        (let* ((_%rpath143044%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path143042%_
                         (gx#stx-source _%hd143005%_)))
                       (_%block143046%_
                        (gx#core-expand-include%__%
                         _%hd143005%_
                         _%rpath143044%_))
                       (_%rbody143049%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block143046%_
                            _%expand-special142893%_
                            '#f
                            _%expand-e142895%_))
                         gx#current-expander-path
                         (cons _%rpath143044%_ (gx#current-expander-path)))))
                  (_%K142901%_
                   _%rest143006%_
                   (__foldr1 cons _%r143007%_ _%rbody143049%_)))
                (_%E143010143022%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E143010143022%_)))))
                                          (_%E143010143022%_))))
                                  (_%E143010143022%_)))))
                      (_%E143009143052%_))))
                 (_%expand-expression142900%_
                  (lambda (_%hd143001%_ _%rest143002%_ _%r143003%_)
                    (_%K142901%_
                     _%rest143002%_
                     (cons (_%expand-e142895%_ _%hd143001%_) _%r143003%_))))
                 (_%K142901%_
                  (lambda (_%rest142931%_ _%r142932%_)
                    (let* ((_%e142933142940%_ _%rest142931%_)
                           (_%E142935142944%_
                            (lambda ()
                              (if _%begin-form142894%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form142894%_
                                    (reverse _%r142932%_))
                                   (gx#stx-source _%stx142892%_))
                                  _%r142932%_)))
                           (_%E142934142997%_
                            (lambda ()
                              (if (gx#stx-pair? _%e142933142940%_)
                                  (let ((_%e142936142948%_
                                         (gx#syntax-e _%e142933142940%_)))
                                    (let ((_%hd142937142951%_
                                           (##car _%e142936142948%_))
                                          (_%tl142938142953%_
                                           (##cdr _%e142936142948%_)))
                                      (let* ((_%hd142956%_ _%hd142937142951%_)
                                             (_%rest142958%_
                                              _%tl142938142953%_)
                                             (_%hd142960%_
                                              (gx#core-expand-head
                                               _%hd142956%_))
                                             (_%e142961142968%_ _%hd142960%_)
                                             (_%E142963142972%_
                                              (lambda ()
                                                (_%expand-expression142900%_
                                                 _%hd142960%_
                                                 _%rest142958%_
                                                 _%r142932%_)))
                                             (_%E142962142993%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e142961142968%_)
                                                    (let ((_%e142964142976%_
                                                           (gx#syntax-e
                                                            _%e142961142968%_)))
                                                      (let ((_%hd142965142979%_
                                                             (##car _%e142964142976%_))
                                                            (_%tl142966142981%_
                                                             (##cdr _%e142964142976%_)))
                                                        (let* ((_%form142984%_
                                                                _%hd142965142979%_)
                                                               (_%body142986%_
                                                                _%tl142966142981%_)
                                                               (_%bind142988%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form142984%_)
                            (gx#resolve-identifier__0 _%form142984%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind142988%_)
                      (let ((_%$e142990%_
                             (##unchecked-structure-ref
                              _%bind142988%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e142990%_)
                            (_%expand-splice142897%_
                             _%hd142960%_
                             _%body142986%_
                             _%rest142958%_
                             _%r142932%_)
                            (if (eq? '%#cond-expand _%$e142990%_)
                                (_%expand-cond-expand142898%_
                                 _%hd142960%_
                                 _%rest142958%_
                                 _%r142932%_)
                                (if (eq? '%#include _%$e142990%_)
                                    (_%expand-include142899%_
                                     _%hd142960%_
                                     _%rest142958%_
                                     _%r142932%_)
                                    (_%expand-special142893%_
                                     _%hd142960%_
                                     _%K142901%_
                                     _%rest142958%_
                                     _%r142932%_)))))
                      (_%expand-expression142900%_
                       _%hd142960%_
                       _%rest142958%_
                       _%r142932%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E142963142972%_)))))
                                        (_%E142962142993%_))))
                                  (_%E142935142944%_)))))
                      (_%E142934142997%_)))))
          (let* ((_%e142902142909%_ _%stx142892%_)
                 (_%E142904142913%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e142902142909%_)))
                 (_%E142903142927%_
                  (lambda ()
                    (if (gx#stx-pair? _%e142902142909%_)
                        (let ((_%e142905142917%_
                               (gx#syntax-e _%e142902142909%_)))
                          (let ((_%hd142906142920%_ (##car _%e142905142917%_))
                                (_%tl142907142922%_ (##cdr _%e142905142917%_)))
                            (let ((_%body142925%_ _%tl142907142922%_))
                              (if (gx#stx-list? _%body142925%_)
                                  (_%K142901%_ _%body142925%_ '())
                                  (_%E142904142913%_)))))
                        (_%E142904142913%_)))))
            (_%E142903142927%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx143068%_ _%expand-special143069%_)
        (let* ((_%begin-form143071%_ '%#begin)
               (_%expand-e143073%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx143068%_
           _%expand-special143069%_
           _%begin-form143071%_
           _%expand-e143073%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx143075%_ _%expand-special143076%_ _%begin-form143077%_)
        (let ((_%expand-e143079%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx143075%_
           _%expand-special143076%_
           _%begin-form143077%_
           _%expand-e143079%_))))
    (define gx#core-expand-block
      (lambda _g144963_
        (let ((_g144964_ (##length _g144963_)))
          (cond ((##fx= _g144964_ 2) (apply gx#core-expand-block__0 _g144963_))
                ((##fx= _g144964_ 3) (apply gx#core-expand-block__1 _g144963_))
                ((##fx= _g144964_ 4) (apply gx#core-expand-block__% _g144963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g144963_))))))
    (define gx#core-expand-block*
      (lambda (_%stx142840%_ _%expand-special142841%_)
        (let* ((_%g142842142853%_
                (gx#core-expand-block__1
                 _%stx142840%_
                 _%expand-special142841%_
                 '#f))
               (_%E142846142857%_
                (lambda ()
                  (error '"No clause matching"
                         _%g142842142853%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K142851142888%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx142840%_)))
                (_%K142848142874%_ (lambda (_%expr142872%_) _%expr142872%_))
                (_%K142847142863%_
                 (lambda (_%body142861%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body142861%_))
                    (gx#stx-source _%stx142840%_)))))
            (let ((_%try-match142844142884%_
                   (lambda ()
                     (if (pair? _%g142842142853%_)
                         (let ((_%tl142850142879%_ (##cdr _%g142842142853%_))
                               (_%hd142849142877%_ (##car _%g142842142853%_)))
                           (if (null? _%tl142850142879%_)
                               (let ((_%expr142882%_ _%hd142849142877%_))
                                 (_%K142848142874%_ _%expr142882%_))
                               (let ((_%body142866%_ _%g142842142853%_))
                                 (_%K142847142863%_ _%body142866%_))))
                         (let ((_%body142866%_ _%g142842142853%_))
                           (_%K142847142863%_ _%body142866%_))))))
              (if (null? _%g142842142853%_)
                  (_%K142851142888%_)
                  (_%try-match142844142884%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx142665%_)
        (letrec ((_%satisfied?142667%_
                  (lambda (_%condition142768%_)
                    (let* ((_%e142769142784%_ _%condition142768%_)
                           (_%E142779142788%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e142769142784%_)))
                           (_%E142772142807%_
                            (lambda ()
                              (if (gx#stx-pair? _%e142769142784%_)
                                  (let ((_%e142780142792%_
                                         (gx#syntax-e _%e142769142784%_)))
                                    (let ((_%hd142781142795%_
                                           (##car _%e142780142792%_))
                                          (_%tl142782142797%_
                                           (##cdr _%e142780142792%_)))
                                      (let* ((_%combinator142800%_
                                              _%hd142781142795%_)
                                             (_%body142802%_
                                              _%tl142782142797%_))
                                        (if (gx#stx-list? _%body142802%_)
                                            (let ((_%$e142804%_
                                                   (gx#stx-e
                                                    _%combinator142800%_)))
                                              (if (eq? 'not _%$e142804%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?142667%_
                                                        _%body142802%_))
                                                  (if (eq? 'and _%$e142804%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?142667%_
                                                       _%body142802%_)
                                                      (if (eq? 'or
                                                               _%$e142804%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?142667%_
                                                           _%body142802%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e142804%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body142802%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx142665%_
                       _%combinator142800%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E142779142788%_)))))
                                  (_%E142779142788%_))))
                           (_%E142771142830%_
                            (lambda ()
                              (if (gx#stx-pair? _%e142769142784%_)
                                  (let ((_%e142773142811%_
                                         (gx#syntax-e _%e142769142784%_)))
                                    (let ((_%hd142774142814%_
                                           (##car _%e142773142811%_))
                                          (_%tl142775142816%_
                                           (##cdr _%e142773142811%_)))
                                      (if (and (gx#identifier?
                                                _%hd142774142814%_)
                                               (gx#core-identifier=?
                                                _%hd142774142814%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl142775142816%_)
                                              (let ((_%e142776142819%_
                                                     (gx#syntax-e
                                                      _%tl142775142816%_)))
                                                (let ((_%hd142777142822%_
                                                       (##car _%e142776142819%_))
                                                      (_%tl142778142824%_
                                                       (##cdr _%e142776142819%_)))
                                                  (let ((_%expr142827%_
                                                         _%hd142777142822%_))
                                                    (if (gx#stx-null?
                                                         _%tl142778142824%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr142827%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E142772142807%_)))))
                                              (_%E142772142807%_))
                                          (_%E142772142807%_))))
                                  (_%E142772142807%_))))
                           (_%E142770142836%_
                            (lambda ()
                              (let ((_%id142834%_ _%e142769142784%_))
                                (if (gx#identifier? _%id142834%_)
                                    (gx#core-bound-identifier?__%
                                     _%id142834%_
                                     gx#feature-binding?)
                                    (_%E142771142830%_))))))
                      (_%E142770142836%_))))
                 (_%loop142668%_
                  (lambda (_%rest142698%_)
                    (let* ((_%e142699142707%_ _%rest142698%_)
                           (_%E142705142711%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e142699142707%_)))
                           (_%E142701142715%_
                            (lambda ()
                              (if (gx#stx-null? _%e142699142707%_)
                                  '()
                                  (_%E142705142711%_))))
                           (_%E142700142764%_
                            (lambda ()
                              (if (gx#stx-pair? _%e142699142707%_)
                                  (let ((_%e142702142719%_
                                         (gx#syntax-e _%e142699142707%_)))
                                    (let ((_%hd142703142722%_
                                           (##car _%e142702142719%_))
                                          (_%tl142704142724%_
                                           (##cdr _%e142702142719%_)))
                                      (let* ((_%hd142727%_ _%hd142703142722%_)
                                             (_%rest142729%_
                                              _%tl142704142724%_)
                                             (_%e142730142737%_ _%hd142727%_)
                                             (_%E142732142741%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e142730142737%_)))
                                             (_%E142731142760%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e142730142737%_)
                                                    (let ((_%e142733142745%_
                                                           (gx#syntax-e
                                                            _%e142730142737%_)))
                                                      (let ((_%hd142734142748%_
                                                             (##car _%e142733142745%_))
                                                            (_%tl142735142750%_
                                                             (##cdr _%e142733142745%_)))
                                                        (let* ((_%condition142753%_
                                                                _%hd142734142748%_)
                                                               (_%body142755%_
                                                                _%tl142735142750%_))
                                                          (if (gx#stx-eq?
                                                               _%condition142753%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest142729%_)
                          _%body142755%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx142665%_
                           _%hd142727%_))
                      (if (_%satisfied?142667%_ _%condition142753%_)
                          _%body142755%_
                          (_%loop142668%_ _%rest142729%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E142732142741%_)))))
                                        (_%E142731142760%_))))
                                  (_%E142701142715%_)))))
                      (_%E142700142764%_)))))
          (let* ((_%e142669142676%_ _%stx142665%_)
                 (_%E142671142680%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e142669142676%_)))
                 (_%E142670142694%_
                  (lambda ()
                    (if (gx#stx-pair? _%e142669142676%_)
                        (let ((_%e142672142684%_
                               (gx#syntax-e _%e142669142676%_)))
                          (let ((_%hd142673142687%_ (##car _%e142672142684%_))
                                (_%tl142674142689%_ (##cdr _%e142672142684%_)))
                            (let ((_%clauses142692%_ _%tl142674142689%_))
                              (if (gx#stx-list? _%clauses142692%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop142668%_ _%clauses142692%_))
                                  (_%E142671142680%_)))))
                        (_%E142671142680%_)))))
            (_%E142670142694%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx142608%_ _%rpath142609%_)
        (let* ((_%e142610142620%_ _%stx142608%_)
               (_%E142612142624%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142610142620%_)))
               (_%E142611142651%_
                (lambda ()
                  (if (gx#stx-pair? _%e142610142620%_)
                      (let ((_%e142613142628%_
                             (gx#syntax-e _%e142610142620%_)))
                        (let ((_%hd142614142631%_ (##car _%e142613142628%_))
                              (_%tl142615142633%_ (##cdr _%e142613142628%_)))
                          (if (gx#stx-pair? _%tl142615142633%_)
                              (let ((_%e142616142636%_
                                     (gx#syntax-e _%tl142615142633%_)))
                                (let ((_%hd142617142639%_
                                       (##car _%e142616142636%_))
                                      (_%tl142618142641%_
                                       (##cdr _%e142616142636%_)))
                                  (let ((_%path142644%_ _%hd142617142639%_))
                                    (if (gx#stx-null? _%tl142618142641%_)
                                        (if (gx#stx-string? _%path142644%_)
                                            (let ((_%rpath142649%_
                                                   (let ((_%$e142646%_
                                                          _%rpath142609%_))
                                                     (if _%$e142646%_
                                                         _%$e142646%_
                                                         (gx#core-resolve-path__%
                                                          _%path142644%_
                                                          (gx#stx-source
                                                           _%stx142608%_))))))
                                              (if (member _%rpath142649%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx142608%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath142649%_))
                                                    (gx#stx-source
                                                     _%stx142608%_)))))
                                            (_%E142612142624%_))
                                        (_%E142612142624%_)))))
                              (_%E142612142624%_))))
                      (_%E142612142624%_)))))
          (_%E142611142651%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx142658%_)
        (let ((_%rpath142660%_ '#f))
          (gx#core-expand-include%__% _%stx142658%_ _%rpath142660%_))))
    (define gx#core-expand-include%
      (lambda _g144965_
        (let ((_g144966_ (##length _g144965_)))
          (cond ((##fx= _g144966_ 1)
                 (apply gx#core-expand-include%__0 _g144965_))
                ((##fx= _g144966_ 2)
                 (apply gx#core-expand-include%__% _g144965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g144965_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K142574%_ _%stx142575%_ _%method142576%_)
        (if (procedure? _%K142574%_)
            (let ((_%$e142579%_ (gx#stx-source _%stx142575%_)))
              (if _%$e142579%_
                  ((lambda (_%g142581142583%_)
                     (gx#stx-wrap-source
                      (_%K142574%_ _%stx142575%_)
                      _%g142581142583%_))
                   _%$e142579%_)
                  (_%K142574%_ _%stx142575%_)))
            (let ((_%$e142587%_
                   (bound-method-ref _%K142574%_ _%method142576%_)))
              (if _%$e142587%_
                  ((lambda (_%g142589142591%_)
                     (gx#core-apply-expander__%
                      _%g142589142591%_
                      _%stx142575%_
                      _%method142576%_))
                   _%$e142587%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx142575%_
                   _%method142576%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K142598%_ _%stx142599%_)
        (let ((_%method142601%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K142598%_
           _%stx142599%_
           _%method142601%_))))
    (define gx#core-apply-expander
      (lambda _g144967_
        (let ((_g144968_ (##length _g144967_)))
          (cond ((##fx= _g144968_ 2)
                 (apply gx#core-apply-expander__0 _g144967_))
                ((##fx= _g144968_ 3)
                 (apply gx#core-apply-expander__% _g144967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g144967_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self142559%_ _%stx142560%_)
        (let ((_%self142563%_ _%self142559%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx142560%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self142402%_ _%stx142403%_)
        (let* ((_%self142406%_ _%self142402%_)
               (_%self142415142421%_ _%self142406%_)
               (_%E142417142424%_
                (lambda ()
                  (error '"No clause matching"
                         _%self142415142421%_
                         '((macro-expander K)))
                  '#!void))
               (_%K142418142429%_
                (lambda (_%K142427%_)
                  (gx#core-apply-expander__0 _%K142427%_ _%stx142403%_)))
               (_%e142419142432%_
                (##unchecked-structure-ref _%self142415142421%_ '1 '#f '#f))
               (_%K142435%_ _%e142419142432%_))
          (_%K142418142429%_ _%K142435%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self142245%_ _%stx142246%_)
        (let ((_%self142249%_ _%self142245%_))
          (if (gx#sealed-syntax? _%stx142246%_)
              _%stx142246%_
              (let* ((_%self142258142264%_ _%self142249%_)
                     (_%E142260142267%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self142258142264%_
                               '((core-expander K)))
                        '#!void))
                     (_%K142261142272%_
                      (lambda (_%K142270%_)
                        (gx#core-apply-expander__0 _%K142270%_ _%stx142246%_)))
                     (_%e142262142275%_
                      (##unchecked-structure-ref
                       _%self142258142264%_
                       '1
                       '#f
                       '#f))
                     (_%K142278%_ _%e142262142275%_))
                (_%K142261142272%_ _%K142278%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self142096%_ _%stx142097%_ _%top?142098%_)
        (let ((_%self142101%_ _%self142096%_))
          (if (_%top?142098%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self142101%_
               _%stx142097%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx142097%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self142114%_ _%stx142115%_)
        (let ((_%top?142117%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self142114%_
           _%stx142115%_
           _%top?142117%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g144969_
        (let ((_g144970_ (##length _g144969_)))
          (cond ((##fx= _g144970_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g144969_))
                ((##fx= _g144970_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g144969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g144969_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self141959%_ _%stx141960%_)
        (let ((_%self141963%_ _%self141959%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self141963%_
           _%stx141960%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self141774%_ _%stx141775%_)
        (let* ((_%self141778%_ _%self141774%_)
               (_%self141787141793%_ _%self141778%_)
               (_%E141789141796%_
                (lambda ()
                  (error '"No clause matching"
                         _%self141787141793%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K141790141829%_
                (lambda (_%id141799%_)
                  (let* ((_%e141800141807%_ _%stx141775%_)
                         (_%E141802141811%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e141800141807%_)))
                         (_%E141801141825%_
                          (lambda ()
                            (if (gx#stx-pair? _%e141800141807%_)
                                (let ((_%e141803141815%_
                                       (gx#syntax-e _%e141800141807%_)))
                                  (let ((_%hd141804141818%_
                                         (##car _%e141803141815%_))
                                        (_%tl141805141820%_
                                         (##cdr _%e141803141815%_)))
                                    (let ((_%body141823%_ _%tl141805141820%_))
                                      (gx#core-cons
                                       _%id141799%_
                                       _%body141823%_))))
                                (_%E141802141811%_)))))
                    (_%E141801141825%_))))
               (_%e141791141832%_
                (##unchecked-structure-ref _%self141787141793%_ '1 '#f '#f))
               (_%id141835%_ _%e141791141832%_))
          (_%K141790141829%_ _%id141835%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self141601%_ _%stx141602%_ _%method141603%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx141602%_))
              (force-output))
            '#!void)
        (let* ((_%self141604141612%_ _%self141601%_)
               (_%E141606141615%_
                (lambda ()
                  (error '"No clause matching"
                         _%self141604141612%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K141607141622%_
                (lambda (_%phi141618%_ _%ctx141619%_ _%K141620%_)
                  (gx#core-apply-user-macro
                   _%K141620%_
                   _%stx141602%_
                   _%ctx141619%_
                   _%phi141618%_
                   _%method141603%_))))
          (if (##structure-instance-of?
               _%self141604141612%_
               'gx#user-expander::t)
              (let* ((_%e141608141625%_
                      (##unchecked-structure-ref
                       _%self141604141612%_
                       '1
                       '#f
                       '#f))
                     (_%K141628%_ _%e141608141625%_)
                     (_%e141609141630%_
                      (##unchecked-structure-ref
                       _%self141604141612%_
                       '2
                       '#f
                       '#f))
                     (_%ctx141633%_ _%e141609141630%_)
                     (_%e141610141635%_
                      (##unchecked-structure-ref
                       _%self141604141612%_
                       '3
                       '#f
                       '#f))
                     (_%phi141638%_ _%e141610141635%_))
                (_%K141607141622%_ _%phi141638%_ _%ctx141633%_ _%K141628%_))
              (_%E141606141615%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self141643%_ _%stx141644%_)
        (let ((_%method141646%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self141643%_
           _%stx141644%_
           _%method141646%_))))
    (define gx#core-apply-user-expander
      (lambda _g144971_
        (let ((_g144972_ (##length _g144971_)))
          (cond ((##fx= _g144972_ 2)
                 (apply gx#core-apply-user-expander__0 _g144971_))
                ((##fx= _g144972_ 3)
                 (apply gx#core-apply-user-expander__% _g144971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g144971_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K141591%_
               _%stx141592%_
               _%ctx141593%_
               _%phi141594%_
               _%method141595%_)
        (let ((_%mark141597%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx141593%_
                _%phi141594%_
                _%stx141592%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K141591%_
               (gx#stx-apply-mark _%stx141592%_ _%mark141597%_)
               _%method141595%_)
              _%mark141597%_))
           gx#current-expander-marks
           (cons _%mark141597%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx141439%_ _%phi141440%_ _%ctx141441%_)
        (let _%lp141443%_ ((_%bind141445%_
                            (gx#core-resolve-identifier__%
                             _%stx141439%_
                             _%phi141440%_
                             _%ctx141441%_)))
          (if (##structure-direct-instance-of?
               _%bind141445%_
               'gx#import-binding::t)
              (_%lp141443%_
               (##unchecked-structure-ref _%bind141445%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind141445%_
                   'gx#alias-binding::t)
                  (_%lp141443%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind141445%_ '5 '#f '#f)
                    _%phi141440%_
                    _%ctx141441%_))
                  _%bind141445%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx141453%_)
        (let* ((_%phi141455%_ (gx#current-expander-phi))
               (_%ctx141457%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx141453%_
           _%phi141455%_
           _%ctx141457%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx141459%_ _%phi141460%_)
        (let ((_%ctx141462%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx141459%_
           _%phi141460%_
           _%ctx141462%_))))
    (define gx#resolve-identifier
      (lambda _g144973_
        (let ((_g144974_ (##length _g144973_)))
          (cond ((##fx= _g144974_ 1)
                 (apply gx#resolve-identifier__0 _g144973_))
                ((##fx= _g144974_ 2)
                 (apply gx#resolve-identifier__1 _g144973_))
                ((##fx= _g144974_ 3)
                 (apply gx#resolve-identifier__% _g144973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g144973_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx141394%_
               _%val141395%_
               _%rebind?141396%_
               _%phi141397%_
               _%ctx141398%_)
        (let ((_%rebind?141403%_
               (if (not _%rebind?141396%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?141396%_)
                       _%rebind?141396%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx141394%_)
           _%val141395%_
           _%rebind?141403%_
           _%phi141397%_
           _%ctx141398%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx141408%_ _%val141409%_)
        (let* ((_%rebind?141411%_ '#f)
               (_%phi141413%_ (gx#current-expander-phi))
               (_%ctx141415%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx141408%_
           _%val141409%_
           _%rebind?141411%_
           _%phi141413%_
           _%ctx141415%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx141417%_ _%val141418%_ _%rebind?141419%_)
        (let* ((_%phi141421%_ (gx#current-expander-phi))
               (_%ctx141423%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx141417%_
           _%val141418%_
           _%rebind?141419%_
           _%phi141421%_
           _%ctx141423%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx141425%_ _%val141426%_ _%rebind?141427%_ _%phi141428%_)
        (let ((_%ctx141430%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx141425%_
           _%val141426%_
           _%rebind?141427%_
           _%phi141428%_
           _%ctx141430%_))))
    (define gx#bind-identifier!
      (lambda _g144975_
        (let ((_g144976_ (##length _g144975_)))
          (cond ((##fx= _g144976_ 2) (apply gx#bind-identifier!__0 _g144975_))
                ((##fx= _g144976_ 3) (apply gx#bind-identifier!__1 _g144975_))
                ((##fx= _g144976_ 4) (apply gx#bind-identifier!__2 _g144975_))
                ((##fx= _g144976_ 5) (apply gx#bind-identifier!__% _g144975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g144975_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx141360%_ _%phi141361%_ _%ctx141362%_)
        (let _%lp141364%_ ((_%e141366%_ _%stx141360%_)
                           (_%marks141367%_ (gx#current-expander-marks)))
          (if (symbol? _%e141366%_)
              (gx#core-resolve-binding
               _%e141366%_
               _%phi141361%_
               _%phi141361%_
               _%ctx141362%_
               (reverse _%marks141367%_))
              (if (gx#identifier-quote? _%e141366%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e141366%_ '1 '#f '#f)
                   _%phi141361%_
                   '0
                   (##unchecked-structure-ref _%e141366%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e141366%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e141366%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e141366%_ '1 '#f '#f)
                       _%phi141361%_
                       _%phi141361%_
                       _%ctx141362%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e141366%_ '3 '#f '#f)
                        _%marks141367%_))
                      (if (##structure-direct-instance-of?
                           _%e141366%_
                           'gx#syntax-wrap::t)
                          (_%lp141364%_
                           (##unchecked-structure-ref _%e141366%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e141366%_ '3 '#f '#f)
                            _%marks141367%_))
                          (if (##structure-instance-of?
                               _%e141366%_
                               'gerbil#AST::t)
                              (_%lp141364%_
                               (##unchecked-structure-ref
                                _%e141366%_
                                '1
                                '#f
                                '#f)
                               _%marks141367%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx141360%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx141378%_)
        (let* ((_%phi141380%_ (gx#current-expander-phi))
               (_%ctx141382%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx141378%_
           _%phi141380%_
           _%ctx141382%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx141384%_ _%phi141385%_)
        (let ((_%ctx141387%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx141384%_
           _%phi141385%_
           _%ctx141387%_))))
    (define gx#core-resolve-identifier
      (lambda _g144977_
        (let ((_g144978_ (##length _g144977_)))
          (cond ((##fx= _g144978_ 1)
                 (apply gx#core-resolve-identifier__0 _g144977_))
                ((##fx= _g144978_ 2)
                 (apply gx#core-resolve-identifier__1 _g144977_))
                ((##fx= _g144978_ 3)
                 (apply gx#core-resolve-identifier__% _g144977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g144977_))))))
    (define gx#core-resolve-binding
      (lambda (_%id141271%_
               _%phi141272%_
               _%src-phi141273%_
               _%ctx141274%_
               _%marks141275%_)
        (letrec ((_%resolve141277%_
                  (lambda (_%ctx141344%_ _%src-phi141345%_ _%key141346%_)
                    (let _%lp141348%_ ((_%ctx141350%_
                                        (gx#core-context-shift
                                         _%ctx141344%_
                                         _%phi141272%_))
                                       (_%dphi141351%_
                                        (fx- _%phi141272%_ _%src-phi141345%_)))
                      (let ((_%$e141353%_
                             (gx#core-context-resolve
                              _%ctx141350%_
                              _%key141346%_)))
                        (if _%$e141353%_
                            _%$e141353%_
                            (if (fxzero? _%dphi141351%_)
                                '#f
                                (if (fxpositive? _%dphi141351%_)
                                    (_%lp141348%_
                                     (gx#core-context-shift _%ctx141350%_ '-1)
                                     (##fx- _%dphi141351%_ '1))
                                    (_%lp141348%_
                                     (gx#core-context-shift _%ctx141350%_ '1)
                                     (##fx+ _%dphi141351%_ '1))))))))))
          (let _%lp141279%_ ((_%ctx141281%_ _%ctx141274%_)
                             (_%src-phi141282%_ _%src-phi141273%_)
                             (_%rest141283%_ _%marks141275%_))
            (let* ((_%rest141284141292%_ _%rest141283%_)
                   (_%else141286141300%_
                    (lambda ()
                      (_%resolve141277%_
                       _%ctx141281%_
                       _%src-phi141282%_
                       _%id141271%_)))
                   (_%K141288141332%_
                    (lambda (_%rest141303%_ _%hd141304%_)
                      (let* ((_%hd141305141311%_ _%hd141304%_)
                             (_%E141307141314%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd141305141311%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K141308141324%_
                              (lambda (_%subst141317%_)
                                (let ((_%$e141321%_
                                       (let ((_%key141319%_
                                              (if _%subst141317%_
                                                  (hash-get
                                                   _%subst141317%_
                                                   _%id141271%_)
                                                  '#f)))
                                         (if _%key141319%_
                                             (_%resolve141277%_
                                              _%ctx141281%_
                                              _%src-phi141282%_
                                              _%key141319%_)
                                             '#f))))
                                  (if _%$e141321%_
                                      _%$e141321%_
                                      (_%lp141279%_
                                       (##unchecked-structure-ref
                                        _%hd141304%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd141304%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest141303%_))))))
                        (if (##structure-instance-of?
                             _%hd141305141311%_
                             'gx#expander-mark::t)
                            (let* ((_%e141309141327%_
                                    (##unchecked-structure-ref
                                     _%hd141305141311%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst141330%_ _%e141309141327%_))
                              (_%K141308141324%_ _%subst141330%_))
                            (_%E141307141314%_))))))
              (if (pair? _%rest141284141292%_)
                  (let ((_%hd141289141335%_ (##car _%rest141284141292%_))
                        (_%tl141290141337%_ (##cdr _%rest141284141292%_)))
                    (let* ((_%hd141340%_ _%hd141289141335%_)
                           (_%rest141342%_ _%tl141290141337%_))
                      (_%K141288141332%_ _%rest141342%_ _%hd141340%_)))
                  (_%else141286141300%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key141142%_
               _%val141143%_
               _%rebind?141144%_
               _%phi141145%_
               _%ctx141146%_)
        (letrec ((_%update-binding141148%_
                  (lambda (_%xval141220%_)
                    (if (or (_%rebind?141144%_
                             _%ctx141146%_
                             _%xval141220%_
                             _%val141143%_)
                            (and (##structure-direct-instance-of?
                                  _%xval141220%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval141220%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val141143%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val141143%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval141220%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val141143%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val141143%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval141220%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val141143%_
                        (if (and (##structure-direct-instance-of?
                                  _%val141143%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val141143%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval141220%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val141143%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval141220%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval141220%_
                            (if (and (##structure-direct-instance-of?
                                      _%val141143%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval141220%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key141142%_
                                 (cons (##unchecked-structure-ref
                                        _%val141143%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val141143%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval141220%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval141220%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval141220%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval141220%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key141142%_
                                 _%val141143%_
                                 _%xval141220%_))))))
                 (_%gensubst141149%_
                  (lambda (_%subst141215%_ _%id141216%_)
                    (let ((_%eid141218%_
                           (gensym (if (uninterned-symbol? _%id141216%_)
                                       '%
                                       _%id141216%_))))
                      (hash-put! _%subst141215%_ _%id141216%_ _%eid141218%_)
                      _%eid141218%_)))
                 (_%subst!141150%_
                  (lambda (_%key141152%_)
                    (let* ((_%key141153141161%_ _%key141152%_)
                           (_%else141155141169%_ (lambda () _%key141152%_))
                           (_%K141157141203%_
                            (lambda (_%mark141172%_ _%id141173%_)
                              (let* ((_%mark141174141180%_ _%mark141172%_)
                                     (_%E141176141183%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark141174141180%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K141177141195%_
                                      (lambda (_%subst141186%_)
                                        (if (not _%subst141186%_)
                                            (let ((_%subst141189%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark141172%_
                                               _%subst141189%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst141149%_
                                               _%subst141189%_
                                               _%id141173%_))
                                            (let ((_%$e141191%_
                                                   (hash-get
                                                    _%subst141186%_
                                                    _%id141173%_)))
                                              (if _%$e141191%_
                                                  _%$e141191%_
                                                  (_%gensubst141149%_
                                                   _%subst141186%_
                                                   _%id141173%_)))))))
                                (if (##structure-instance-of?
                                     _%mark141174141180%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e141178141198%_
                                            (##unchecked-structure-ref
                                             _%mark141174141180%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst141201%_ _%e141178141198%_))
                                      (_%K141177141195%_ _%subst141201%_))
                                    (_%E141176141183%_))))))
                      (if (pair? _%key141153141161%_)
                          (let ((_%hd141158141206%_
                                 (##car _%key141153141161%_))
                                (_%tl141159141208%_
                                 (##cdr _%key141153141161%_)))
                            (let* ((_%id141211%_ _%hd141158141206%_)
                                   (_%mark141213%_ _%tl141159141208%_))
                              (_%K141157141203%_ _%mark141213%_ _%id141211%_)))
                          (_%else141155141169%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx141146%_ _%phi141145%_)
           (_%subst!141150%_ _%key141142%_)
           _%val141143%_
           _%update-binding141148%_))))
    (define gx#core-bind!__0
      (lambda (_%key141241%_ _%val141242%_)
        (let* ((_%rebind?141244%_ false)
               (_%phi141246%_ (gx#current-expander-phi))
               (_%ctx141248%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key141241%_
           _%val141242%_
           _%rebind?141244%_
           _%phi141246%_
           _%ctx141248%_))))
    (define gx#core-bind!__1
      (lambda (_%key141250%_ _%val141251%_ _%rebind?141252%_)
        (let* ((_%phi141254%_ (gx#current-expander-phi))
               (_%ctx141256%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key141250%_
           _%val141251%_
           _%rebind?141252%_
           _%phi141254%_
           _%ctx141256%_))))
    (define gx#core-bind!__2
      (lambda (_%key141258%_ _%val141259%_ _%rebind?141260%_ _%phi141261%_)
        (let ((_%ctx141263%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key141258%_
           _%val141259%_
           _%rebind?141260%_
           _%phi141261%_
           _%ctx141263%_))))
    (define gx#core-bind!
      (lambda _g144979_
        (let ((_g144980_ (##length _g144979_)))
          (cond ((##fx= _g144980_ 2) (apply gx#core-bind!__0 _g144979_))
                ((##fx= _g144980_ 3) (apply gx#core-bind!__1 _g144979_))
                ((##fx= _g144980_ 4) (apply gx#core-bind!__2 _g144979_))
                ((##fx= _g144980_ 5) (apply gx#core-bind!__% _g144979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g144979_))))))
    (define gx#core-identifier-key
      (lambda (_%stx141073%_)
        (if (symbol? _%stx141073%_)
            (let* ((_%g141075141083%_ (gx#current-expander-marks))
                   (_%else141077141091%_ (lambda () _%stx141073%_))
                   (_%K141079141096%_
                    (lambda (_%hd141094%_) (cons _%stx141073%_ _%hd141094%_))))
              (if (pair? _%g141075141083%_)
                  (let* ((_%hd141080141099%_ (##car _%g141075141083%_))
                         (_%hd141102%_ _%hd141080141099%_))
                    (_%K141079141096%_ _%hd141102%_))
                  (_%else141077141091%_)))
            (if (gx#identifier? _%stx141073%_)
                (let* ((_%id141105%_ (gx#syntax-local-unwrap _%stx141073%_))
                       (_%eid141107%_ (gx#stx-e _%id141105%_))
                       (_%marks141109%_
                        (gx#stx-identifier-marks* _%id141105%_))
                       (_%marks141111141119%_ _%marks141109%_)
                       (_%else141113141127%_ (lambda () _%eid141107%_))
                       (_%K141115141132%_
                        (lambda (_%hd141130%_)
                          (cons _%eid141107%_ _%hd141130%_))))
                  (if (pair? _%marks141111141119%_)
                      (let* ((_%hd141116141135%_ (##car _%marks141111141119%_))
                             (_%hd141138%_ _%hd141116141135%_))
                        (_%K141115141132%_ _%hd141138%_))
                      (_%else141113141127%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx141073%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx141012%_ _%phi141013%_)
        (letrec ((_%make-phi141015%_
                  (lambda (_%super141071%_)
                    (let ((__obj144952
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj144952
                       (##gensym 'phi)
                       _%super141071%_)
                      __obj144952)))
                 (_%make-phi/up141016%_
                  (lambda (_%ctx141066%_ _%super141067%_)
                    (let ((_%ctx+1141069%_
                           (_%make-phi141015%_ _%super141067%_)))
                      (##unchecked-structure-set!
                       _%ctx141066%_
                       _%ctx+1141069%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1141069%_
                       _%ctx141066%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1141069%_)))
                 (_%make-phi/down141017%_
                  (lambda (_%ctx141061%_ _%super141062%_)
                    (let ((_%ctx-1141064%_
                           (_%make-phi141015%_ _%super141062%_)))
                      (##unchecked-structure-set!
                       _%ctx-1141064%_
                       _%ctx141061%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx141061%_
                       _%ctx-1141064%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1141064%_)))
                 (_%shift141018%_
                  (lambda (_%ctx141044%_
                           _%delta141045%_
                           _%make-delta-context141046%_
                           _%phi141047%_
                           _%K141048%_)
                    (let ((_%$e141050%_
                           (##unchecked-structure-ref
                            _%ctx141044%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e141050%_
                          ((lambda (_%super141053%_)
                             (let* ((_%super141055%_
                                     (_%K141048%_
                                      _%super141053%_
                                      _%delta141045%_))
                                    (_%ctx+d141057%_
                                     (_%make-delta-context141046%_
                                      _%ctx141044%_
                                      _%super141055%_)))
                               (_%K141048%_
                                _%ctx+d141057%_
                                (fx- _%phi141047%_ _%delta141045%_))))
                           _%$e141050%_)
                          (error '"Bad context" _%ctx141044%_))))))
          (let _%K141020%_ ((_%ctx141022%_ _%ctx141012%_)
                            (_%phi141023%_ _%phi141013%_))
            (if (fxzero? _%phi141023%_)
                _%ctx141022%_
                (if (##structure-instance-of? _%ctx141022%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi141023%_)
                        (let ((_%$e141027%_
                               (##unchecked-structure-ref
                                _%ctx141022%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e141027%_
                              ((lambda (_%g141029141031%_)
                                 (_%K141020%_
                                  _%g141029141031%_
                                  (##fx- _%phi141023%_ '1)))
                               _%$e141027%_)
                              (_%shift141018%_
                               _%ctx141022%_
                               '1
                               _%make-phi/up141016%_
                               _%phi141023%_
                               _%K141020%_)))
                        (let ((_%$e141035%_
                               (##unchecked-structure-ref
                                _%ctx141022%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e141035%_
                              ((lambda (_%g141037141039%_)
                                 (_%K141020%_
                                  _%g141037141039%_
                                  (##fx+ _%phi141023%_ '1)))
                               _%$e141035%_)
                              (_%shift141018%_
                               _%ctx141022%_
                               '-1
                               _%make-phi/down141017%_
                               _%phi141023%_
                               _%K141020%_))))
                    _%ctx141022%_))))))
    (define gx#core-context-get
      (lambda (_%ctx141009%_ _%key141010%_)
        (hash-get
         (##unchecked-structure-ref _%ctx141009%_ '2 '#f '#f)
         _%key141010%_)))
    (define gx#core-context-put!
      (lambda (_%ctx141005%_ _%key141006%_ _%val141007%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx141005%_ '2 '#f '#f)
         _%key141006%_
         _%val141007%_)
        _%val141007%_))
    (define gx#core-context-resolve
      (lambda (_%ctx140991%_ _%key140992%_)
        (let _%lp140994%_ ((_%ctx140996%_ _%ctx140991%_))
          (let ((_%$e140998%_
                 (gx#core-context-get _%ctx140996%_ _%key140992%_)))
            (if _%$e140998%_
                _%$e140998%_
                (let ((_%$e141001%_
                       (if (##structure-instance-of?
                            _%ctx140996%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx140996%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e141001%_ (_%lp140994%_ _%$e141001%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx140980%_ _%key140981%_ _%val140982%_ _%rebind140983%_)
        (let ((_%$e140985%_ (gx#core-context-get _%ctx140980%_ _%key140981%_)))
          (if _%$e140985%_
              ((lambda (_%xval140988%_)
                 (gx#core-context-put!
                  _%ctx140980%_
                  _%key140981%_
                  (_%rebind140983%_ _%xval140988%_)))
               _%$e140985%_)
              (gx#core-context-put!
               _%ctx140980%_
               _%key140981%_
               _%val140982%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx140955%_ _%stop?140956%_)
        (let _%lp140958%_ ((_%ctx140960%_ _%ctx140955%_))
          (if (_%stop?140956%_ _%ctx140960%_)
              _%ctx140960%_
              (if (##structure-instance-of? _%ctx140960%_ 'gx#phi-context::t)
                  (_%lp140958%_
                   (##unchecked-structure-ref _%ctx140960%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx140969%_ (gx#current-expander-context))
               (_%stop?140971%_ gx#top-context?))
          (gx#core-context-top__% _%ctx140969%_ _%stop?140971%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx140973%_)
        (let ((_%stop?140975%_ gx#top-context?))
          (gx#core-context-top__% _%ctx140973%_ _%stop?140975%_))))
    (define gx#core-context-top
      (lambda _g144981_
        (let ((_g144982_ (##length _g144981_)))
          (cond ((##fx= _g144982_ 0) (apply gx#core-context-top__0 _g144981_))
                ((##fx= _g144982_ 1) (apply gx#core-context-top__1 _g144981_))
                ((##fx= _g144982_ 2) (apply gx#core-context-top__% _g144981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g144981_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx140940%_)
        (let _%lp140942%_ ((_%ctx140944%_ _%ctx140940%_))
          (if (##structure-instance-of? _%ctx140944%_ 'gx#phi-context::t)
              (_%lp140942%_
               (##unchecked-structure-ref _%ctx140944%_ '3 '#f '#f))
              _%ctx140944%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx140950%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx140950%_))))
    (define gx#core-context-root
      (lambda _g144983_
        (let ((_g144984_ (##length _g144983_)))
          (cond ((##fx= _g144984_ 0) (apply gx#core-context-root__0 _g144983_))
                ((##fx= _g144984_ 1) (apply gx#core-context-root__% _g144983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g144983_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx140922%_ . _%ignore140923%_)
        (let ((_%$e140925%_ (gx#current-expander-allow-rebind?)))
          (if _%$e140925%_
              _%$e140925%_
              (if (##structure-instance-of? _%ctx140922%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx140922%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx140922%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx140932%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx140932%_))))
    (define gx#core-context-rebind?
      (lambda _g144985_
        (let ((_g144986_ (##length _g144985_)))
          (cond ((##fx= _g144986_ 0)
                 (apply gx#core-context-rebind?__0 _g144985_))
                ((##fx= _g144986_ 1)
                 (apply gx#core-context-rebind?__% _g144985_))
                ((##fx>= _g144986_ 1)
                 (apply gx#core-context-rebind?__% _g144985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g144985_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx140905%_)
        (let ((_%$e140907%_ (gx#core-context-top__1 _%ctx140905%_)))
          (if _%$e140907%_
              ((lambda (_%ctx140910%_)
                 (if (##structure-instance-of?
                      _%ctx140910%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx140910%_ '6 '#f '#f)
                     '#f))
               _%$e140907%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx140917%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx140917%_))))
    (define gx#core-context-namespace
      (lambda _g144987_
        (let ((_g144988_ (##length _g144987_)))
          (cond ((##fx= _g144988_ 0)
                 (apply gx#core-context-namespace__0 _g144987_))
                ((##fx= _g144988_ 1)
                 (apply gx#core-context-namespace__% _g144987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g144987_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind140891%_ _%is?140892%_)
        (if (##structure-direct-instance-of?
             _%bind140891%_
             'gx#syntax-binding::t)
            (_%is?140892%_
             (##unchecked-structure-ref _%bind140891%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind140897%_)
        (let ((_%is?140899%_ gx#expander?))
          (gx#expander-binding?__% _%bind140897%_ _%is?140899%_))))
    (define gx#expander-binding?
      (lambda _g144989_
        (let ((_g144990_ (##length _g144989_)))
          (cond ((##fx= _g144990_ 1) (apply gx#expander-binding?__0 _g144989_))
                ((##fx= _g144990_ 2) (apply gx#expander-binding?__% _g144989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g144989_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind140888%_)
        (gx#expander-binding?__% _%bind140888%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind140886%_)
        (gx#expander-binding?__% _%bind140886%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind140880%_)
        (letrec ((_%direct-special-form?140882%_
                  (lambda (_%obj140884%_)
                    (##structure-direct-instance-of?
                     _%obj140884%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind140880%_
           _%direct-special-form?140882%_))))
    (define gx#special-form-binding?
      (lambda (_%bind140878%_)
        (gx#expander-binding?__% _%bind140878%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind140869%_)
        (letrec ((_%feature?140871%_
                  (lambda (_%e140873%_)
                    (let ((_%$e140875%_
                           (##structure-instance-of?
                            _%e140873%_
                            'gx#feature-expander::t)))
                      (if _%$e140875%_
                          _%$e140875%_
                          (##structure-instance-of?
                           _%e140873%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind140869%_ _%feature?140871%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind140867%_)
        (gx#expander-binding?__% _%bind140867%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id140854%_ _%bound?140855%_)
        (if (gx#identifier? _%id140854%_)
            (_%bound?140855%_ (gx#resolve-identifier__0 _%id140854%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id140860%_)
        (let ((_%bound?140862%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id140860%_ _%bound?140862%_))))
    (define gx#core-bound-identifier?
      (lambda _g144991_
        (let ((_g144992_ (##length _g144991_)))
          (cond ((##fx= _g144992_ 1)
                 (apply gx#core-bound-identifier?__0 _g144991_))
                ((##fx= _g144992_ 2)
                 (apply gx#core-bound-identifier?__% _g144991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g144991_))))))
    (define gx#core-identifier=?
      (lambda (_%x140844%_ _%y140845%_)
        (letrec ((_%y=?140847%_
                  (lambda (_%xid140851%_)
                    ((if (list? _%y140845%_) memq eq?)
                     _%xid140851%_
                     _%y140845%_))))
          (let ((_%bind140849%_ (gx#resolve-identifier__0 _%x140844%_)))
            (if (##structure-instance-of? _%bind140849%_ 'gx#binding::t)
                (_%y=?140847%_
                 (##unchecked-structure-ref _%bind140849%_ '1 '#f '#f))
                (_%y=?140847%_ (gx#stx-e _%x140844%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e140842%_)
        (if (interned-symbol? _%e140842%_)
            (string-index__0 (symbol->string _%e140842%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx140795%_ _%src140796%_ _%ctx140797%_ _%marks140798%_)
        (if (##structure? _%stx140795%_)
            (let ((_%$e140800%_ (gx#sealed-syntax-unwrap _%stx140795%_)))
              (if _%$e140800%_
                  _%$e140800%_
                  (if (gx#identifier? _%stx140795%_)
                      (let ((_%id140804%_
                             (gx#stx-unwrap__% _%stx140795%_ _%marks140798%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id140804%_ '1 '#f '#f)
                         (let ((_%$e140806%_
                                (##unchecked-structure-ref
                                 _%id140804%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e140806%_ _%$e140806%_ _%src140796%_))
                         _%ctx140797%_
                         (##unchecked-structure-ref _%id140804%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx140795%_)
                       (let ((_%$e140810%_ (gx#stx-source _%stx140795%_)))
                         (if _%$e140810%_ _%$e140810%_ _%src140796%_))
                       _%ctx140797%_
                       (reverse _%marks140798%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx140795%_
             _%src140796%_
             _%ctx140797%_
             (reverse _%marks140798%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx140816%_)
        (let* ((_%src140818%_ '#f)
               (_%ctx140820%_ (gx#current-expander-context))
               (_%marks140822%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx140816%_
           _%src140818%_
           _%ctx140820%_
           _%marks140822%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx140824%_ _%src140825%_)
        (let* ((_%ctx140827%_ (gx#current-expander-context))
               (_%marks140829%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx140824%_
           _%src140825%_
           _%ctx140827%_
           _%marks140829%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx140831%_ _%src140832%_ _%ctx140833%_)
        (let ((_%marks140835%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx140831%_
           _%src140832%_
           _%ctx140833%_
           _%marks140835%_))))
    (define gx#core-quote-syntax
      (lambda _g144993_
        (let ((_g144994_ (##length _g144993_)))
          (cond ((##fx= _g144994_ 1) (apply gx#core-quote-syntax__0 _g144993_))
                ((##fx= _g144994_ 2) (apply gx#core-quote-syntax__1 _g144993_))
                ((##fx= _g144994_ 3) (apply gx#core-quote-syntax__2 _g144993_))
                ((##fx= _g144994_ 4) (apply gx#core-quote-syntax__% _g144993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g144993_))))))
    (define gx#core-cons
      (lambda (_%hd140791%_ _%tl140792%_)
        (cons (gx#core-quote-syntax__0 _%hd140791%_) _%tl140792%_)))
    (define gx#core-list
      (lambda (_%hd140788%_ . _%rest140789%_)
        (cons (gx#core-quote-syntax__0 _%hd140788%_) _%rest140789%_)))
    (define gx#core-cons*
      (lambda (_%hd140785%_ . _%rest140786%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd140785%_) _%rest140786%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path140754%_ _%rel140755%_)
        (let ((_%path140772%_ (gx#stx-e _%stx-path140754%_))
              (_%reldir140773%_
               (let _%lp140757%_ ((_%relsrc140759%_
                                   (let ((_%$e140769%_
                                          (gx#stx-source _%stx-path140754%_)))
                                     (if _%$e140769%_
                                         _%$e140769%_
                                         _%rel140755%_))))
                 (if (##structure-instance-of? _%relsrc140759%_ 'gerbil#AST::t)
                     (_%lp140757%_
                      (let ((_%$e140762%_ (gx#stx-source _%relsrc140759%_)))
                        (if _%$e140762%_
                            _%$e140762%_
                            (gx#stx-e _%relsrc140759%_))))
                     (if (source-location-path? _%relsrc140759%_)
                         (path-directory
                          (source-location-path _%relsrc140759%_))
                         (if (string? _%relsrc140759%_)
                             (path-directory _%relsrc140759%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path140772%_ (path-normalize _%reldir140773%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path140778%_)
        (let ((_%rel140780%_ '#f))
          (gx#core-resolve-path__% _%stx-path140778%_ _%rel140780%_))))
    (define gx#core-resolve-path
      (lambda _g144995_
        (let ((_g144996_ (##length _g144995_)))
          (cond ((##fx= _g144996_ 1) (apply gx#core-resolve-path__0 _g144995_))
                ((##fx= _g144996_ 2) (apply gx#core-resolve-path__% _g144995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g144995_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr140710%_ _%ctx140711%_)
        (let* ((_%repr140712140719%_ _%repr140710%_)
               (_%E140714140723%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr140712140719%_
                         '([phi . subs]))
                  '#!void))
               (_%K140715140731%_
                (lambda (_%subs140726%_ _%phi140727%_)
                  (let ((_%subst140729%_
                         (if (null? _%subs140726%_)
                             '#f
                             (list->hash-table-eq _%subs140726%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst140729%_
                     _%ctx140711%_
                     _%phi140727%_
                     '#f)))))
          (if (pair? _%repr140712140719%_)
              (let ((_%hd140716140734%_ (##car _%repr140712140719%_))
                    (_%tl140717140736%_ (##cdr _%repr140712140719%_)))
                (let* ((_%phi140739%_ _%hd140716140734%_)
                       (_%subs140741%_ _%tl140717140736%_))
                  (_%K140715140731%_ _%subs140741%_ _%phi140739%_)))
              (_%E140714140723%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr140746%_)
        (let ((_%ctx140748%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr140746%_ _%ctx140748%_))))
    (define gx#core-deserialize-mark
      (lambda _g144997_
        (let ((_g144998_ (##length _g144997_)))
          (cond ((##fx= _g144998_ 1)
                 (apply gx#core-deserialize-mark__0 _g144997_))
                ((##fx= _g144998_ 2)
                 (apply gx#core-deserialize-mark__% _g144997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g144997_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx140707%_)
        (gx#stx-rewrap _%stx140707%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx140705%_)
        (gx#stx-unwrap__% _%stx140705%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx140675%_)
        (let* ((_%g140676140684%_ (gx#current-expander-marks))
               (_%else140678140692%_ (lambda () _%stx140675%_))
               (_%K140680140697%_
                (lambda (_%hd140695%_)
                  (gx#stx-apply-mark _%stx140675%_ _%hd140695%_))))
          (if (pair? _%g140676140684%_)
              (let* ((_%hd140681140700%_ (##car _%g140676140684%_))
                     (_%hd140703%_ _%hd140681140700%_))
                (_%K140680140697%_ _%hd140703%_))
              (_%else140678140692%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym140673%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym140673%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx140658%_ _%E140659%_)
        (let ((_%bind140661%_ (gx#resolve-identifier__0 _%stx140658%_)))
          (if (##structure-direct-instance-of?
               _%bind140661%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind140661%_ '5 '#f '#f)
              (_%E140659%_ _%stx140658%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx140666%_)
        (let ((_%E140668%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx140666%_ _%E140668%_))))
    (define gx#syntax-local-e
      (lambda _g144999_
        (let ((_g145000_ (##length _g144999_)))
          (cond ((##fx= _g145000_ 1) (apply gx#syntax-local-e__0 _g144999_))
                ((##fx= _g145000_ 2) (apply gx#syntax-local-e__% _g144999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g144999_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx140642%_ _%E140643%_)
        (let ((_%e140645%_ (gx#syntax-local-e__% _%stx140642%_ _%E140643%_)))
          (if (##structure-instance-of? _%e140645%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e140645%_ '1 '#f '#f)
              _%e140645%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx140650%_)
        (let ((_%E140652%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx140650%_ _%E140652%_))))
    (define gx#syntax-local-value
      (lambda _g145001_
        (let ((_g145002_ (##length _g145001_)))
          (cond ((##fx= _g145002_ 1)
                 (apply gx#syntax-local-value__0 _g145001_))
                ((##fx= _g145002_ 2)
                 (apply gx#syntax-local-value__% _g145001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g145001_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx140639%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx140639%_)))))
