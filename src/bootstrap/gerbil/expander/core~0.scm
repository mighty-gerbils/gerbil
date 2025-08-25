(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1756142919)
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
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args128574%_
        (apply make-instance gx#expander-context::t _%$args128574%_)))
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
      (lambda _%$args128571%_
        (apply make-instance gx#root-context::t _%$args128571%_)))
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
      (lambda _%$args128568%_
        (apply make-instance gx#phi-context::t _%$args128568%_)))
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
      (lambda _%$args128565%_
        (apply make-instance gx#top-context::t _%$args128565%_)))
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
      (lambda _%$args128562%_
        (apply make-instance gx#module-context::t _%$args128562%_)))
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
      (lambda _%$args128559%_
        (apply make-instance gx#prelude-context::t _%$args128559%_)))
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
      (lambda _%$args128556%_
        (apply make-instance gx#local-context::t _%$args128556%_)))
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
      (lambda (_%self128529%_ _%id128530%_ _%super128531%_)
        (let ((_%self128534%_ _%self128529%_))
          (if (##fx< '3 (##structure-length _%self128534%_))
              (begin
                (##unchecked-structure-set!
                 _%self128534%_
                 _%id128530%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128534%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128534%_
                 _%super128531%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128534%_
                     '3
                     (##structure-length _%self128534%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self128547%_ _%id128548%_)
        (let ((_%super128550%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self128547%_
           _%id128548%_
           _%super128550%_))))
    (define gx#phi-context:::init!
      (lambda _g128616_
        (let ((_g128617_ (##length _g128616_)))
          (cond ((##fx= _g128617_ 2)
                 (apply gx#phi-context:::init!__0 _g128616_))
                ((##fx= _g128617_ 3)
                 (apply gx#phi-context:::init!__% _g128616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g128616_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self128382%_ _%super128383%_)
        (let ((_%self128386%_ _%self128382%_))
          (if (##fx< '3 (##structure-length _%self128386%_))
              (begin
                (##unchecked-structure-set!
                 _%self128386%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128386%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128386%_
                 _%super128383%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128386%_
                     '3
                     (##structure-length _%self128386%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self128399%_)
        (let ((_%super128401%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self128399%_ _%super128401%_))))
    (define gx#local-context:::init!
      (lambda _g128618_
        (let ((_g128619_ (##length _g128618_)))
          (cond ((##fx= _g128619_ 1)
                 (apply gx#local-context:::init!__0 _g128618_))
                ((##fx= _g128619_ 2)
                 (apply gx#local-context:::init!__% _g128618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g128618_))))))
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
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args128256%_
        (apply make-instance gx#binding::t _%$args128256%_)))
    (define gx#binding-id (__make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (__make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (__make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-id-set! (__make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (__make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (__make-class-slot-mutator gx#binding::t 'phi))
    (define gx#&binding-id
      (__make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (__make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (__make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-id-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#runtime-binding::t
      (__make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args128253%_
        (apply make-instance gx#runtime-binding::t _%$args128253%_)))
    (define gx#runtime-binding-id
      (__make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (__make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (__make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-id-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#local-binding::t
      (__make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args128250%_
        (apply make-instance gx#local-binding::t _%$args128250%_)))
    (define gx#local-binding-id
      (__make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (__make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (__make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-id-set!
      (__make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (__make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (__make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-id
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#top-binding::t
      (__make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args128247%_
        (apply make-instance gx#top-binding::t _%$args128247%_)))
    (define gx#top-binding-id
      (__make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (__make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (__make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-id-set!
      (__make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (__make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (__make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-id
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#module-binding::t
      (__make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args128244%_
        (apply make-instance gx#module-binding::t _%$args128244%_)))
    (define gx#module-binding-context
      (__make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-id
      (__make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (__make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (__make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-context-set!
      (__make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-id-set!
      (__make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (__make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (__make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-context
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-id
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#extern-binding::t
      (__make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args128241%_
        (apply make-instance gx#extern-binding::t _%$args128241%_)))
    (define gx#extern-binding-id
      (__make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (__make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (__make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-id-set!
      (__make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (__make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (__make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#syntax-binding::t
      (__make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args128238%_
        (apply make-instance gx#syntax-binding::t _%$args128238%_)))
    (define gx#syntax-binding-e
      (__make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (__make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (__make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (__make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-e-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#import-binding::t
      (__make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args128235%_
        (apply make-instance gx#import-binding::t _%$args128235%_)))
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
    (define gx#alias-binding::t
      (__make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args128232%_
        (apply make-instance gx#alias-binding::t _%$args128232%_)))
    (define gx#alias-binding-e
      (__make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (__make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (__make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (__make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-e-set!
      (__make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (__make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (__make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (__make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
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
      (lambda _%$args128229%_
        (apply make-instance gx#expander::t _%$args128229%_)))
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
      (lambda _%$args128226%_
        (apply make-instance gx#core-expander::t _%$args128226%_)))
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
      (lambda _%$args128223%_
        (apply make-instance gx#expression-form::t _%$args128223%_)))
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
      (lambda _%$args128220%_
        (apply make-instance gx#special-form::t _%$args128220%_)))
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
      (lambda _%$args128217%_
        (apply make-instance gx#definition-form::t _%$args128217%_)))
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
      (lambda _%$args128214%_
        (apply make-instance gx#top-special-form::t _%$args128214%_)))
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
      (lambda _%$args128211%_
        (apply make-instance gx#module-special-form::t _%$args128211%_)))
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
      (lambda _%$args128208%_
        (apply make-instance gx#feature-expander::t _%$args128208%_)))
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
      (lambda _%$args128205%_
        (apply make-instance gx#private-feature-expander::t _%$args128205%_)))
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
      (lambda _%$args128202%_
        (apply make-instance gx#reserved-expander::t _%$args128202%_)))
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
      (lambda _%$args128199%_
        (apply make-instance gx#macro-expander::t _%$args128199%_)))
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
      (lambda _%$args128196%_
        (apply make-instance gx#rename-macro-expander::t _%$args128196%_)))
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
      (lambda _%$args128193%_
        (apply make-instance gx#user-expander::t _%$args128193%_)))
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
      (lambda _%$args128190%_
        (apply make-instance gx#expander-mark::t _%$args128190%_)))
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
      (lambda (_%ctx128174%_
               _%message128175%_
               _%stx128176%_
               .
               _%details128177%_)
        (let ((_%ctx128188%_
               (let ((_%$e128179%_ _%ctx128174%_))
                 (if _%$e128179%_
                     _%$e128179%_
                     (let ((_%$e128182%_ (gx#core-context-top__0)))
                       (if _%$e128182%_
                           ((lambda (_%ctx128185%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx128185%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e128182%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message128175%_
                  (cons _%stx128176%_ _%details128177%_)
                  _%ctx128188%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx128161%_ _%expression?128162%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx128161%_ _%expression?128162%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx128167%_)
        (let ((_%expression?128169%_ '#f))
          (gx#eval-syntax__% _%stx128167%_ _%expression?128169%_))))
    (define gx#eval-syntax
      (lambda _g128620_
        (let ((_g128621_ (##length _g128620_)))
          (cond ((##fx= _g128621_ 1) (apply gx#eval-syntax__0 _g128620_))
                ((##fx= _g128621_ 2) (apply gx#eval-syntax__% _g128620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g128620_))))))
    (define gx#eval-syntax*
      (lambda (_%stx128158%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx128158%_))))
    (define gx#core-expand__%
      (lambda (_%stx128145%_ _%expression?128146%_)
        (if _%expression?128146%_
            (gx#core-expand-expression _%stx128145%_)
            (gx#core-expand-top _%stx128145%_))))
    (define gx#core-expand__0
      (lambda (_%stx128151%_)
        (let ((_%expression?128153%_ '#f))
          (gx#core-expand__% _%stx128151%_ _%expression?128153%_))))
    (define gx#core-expand
      (lambda _g128622_
        (let ((_g128623_ (##length _g128622_)))
          (cond ((##fx= _g128623_ 1) (apply gx#core-expand__0 _g128622_))
                ((##fx= _g128623_ 2) (apply gx#core-expand__% _g128622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g128622_))))))
    (define gx#core-expand-top
      (lambda (_%stx128112%_)
        (let* ((_%stx128114%_ (gx#core-expand*__0 _%stx128112%_))
               (_%e128115128122%_ _%stx128114%_)
               (_%E128117128126%_
                (lambda () (gx#core-expand-expression _%stx128114%_)))
               (_%E128116128140%_
                (lambda ()
                  (if (gx#stx-pair? _%e128115128122%_)
                      (let ((_%e128118128130%_
                             (gx#syntax-e _%e128115128122%_)))
                        (let ((_%hd128119128133%_ (##car _%e128118128130%_))
                              (_%tl128120128135%_ (##cdr _%e128118128130%_)))
                          (let ((_%form128138%_ _%hd128119128133%_))
                            (if (gx#core-bound-identifier?__0 _%form128138%_)
                                _%stx128114%_
                                (_%E128117128126%_)))))
                      (_%E128117128126%_)))))
          (_%E128116128140%_))))
    (define gx#core-expand-expression
      (lambda (_%stx128044%_)
        (letrec ((_%sealed-expression?128046%_
                  (lambda (_%hd128082%_)
                    (if (gx#sealed-syntax? _%hd128082%_)
                        (let* ((_%e128083128090%_ _%hd128082%_)
                               (_%E128085128094%_ (lambda () '#f))
                               (_%E128084128108%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e128083128090%_)
                                      (let ((_%e128086128098%_
                                             (gx#syntax-e _%e128083128090%_)))
                                        (let ((_%hd128087128101%_
                                               (##car _%e128086128098%_))
                                              (_%tl128088128103%_
                                               (##cdr _%e128086128098%_)))
                                          (let ((_%form128106%_
                                                 _%hd128087128101%_))
                                            (gx#core-bound-identifier?__%
                                             _%form128106%_
                                             gx#expression-form-binding?))))
                                      (_%E128085128094%_)))))
                          (_%E128084128108%_))
                        '#f)))
                 (_%illegal-expression128047%_
                  (lambda (_%hd128079%_ . _%_128080%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx128044%_
                     _%hd128079%_)))
                 (_%expand-e128048%_
                  (lambda (_%form128071%_ _%hd128072%_)
                    (let ((_%bind128074%_
                           (if (##structure-instance-of?
                                _%form128071%_
                                'gx#binding::t)
                               _%form128071%_
                               (gx#resolve-identifier__0 _%form128071%_))))
                      (if (gx#core-expander-binding? _%bind128074%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind128074%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd128072%_
                            (gx#stx-source _%stx128044%_)))
                          (if (##structure-direct-instance-of?
                               _%bind128074%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind128074%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd128072%_
                                 (gx#stx-source _%stx128044%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx128044%_
                               _%form128071%_)))))))
          (let ((_%hd128050%_ (gx#core-expand-head _%stx128044%_)))
            (if (_%sealed-expression?128046%_ _%hd128050%_)
                _%hd128050%_
                (if (gx#stx-pair? _%hd128050%_)
                    (let* ((_%form128054%_ (gx#stx-car _%hd128050%_))
                           (_%bind128056%_
                            (if (gx#identifier? _%form128054%_)
                                (gx#resolve-identifier__0 _%form128054%_)
                                '#f)))
                      (if (or (not _%bind128056%_)
                              (not (gx#core-expander-binding? _%bind128056%_)))
                          (_%expand-e128048%_
                           '%%app
                           (cons '%%app _%hd128050%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind128056%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd128050%_
                               _%illegal-expression128047%_)
                              (if (gx#expression-form-binding? _%bind128056%_)
                                  (_%expand-e128048%_
                                   _%bind128056%_
                                   _%hd128050%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind128056%_)
                                      (gx#core-expand-expression
                                       (_%expand-e128048%_
                                        _%bind128056%_
                                        _%hd128050%_))
                                      (_%illegal-expression128047%_
                                       _%hd128050%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd128050%_)
                        (_%illegal-expression128047%_ _%hd128050%_)
                        (if (gx#identifier? _%hd128050%_)
                            (_%expand-e128048%_
                             '%%ref
                             (cons '%%ref (cons _%hd128050%_ '())))
                            (if (gx#stx-datum? _%hd128050%_)
                                (_%expand-e128048%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd128050%_ '())))
                                (_%illegal-expression128047%_
                                 _%hd128050%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx128039%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx128042%_ (gx#core-expand-expression _%stx128039%_)))
             (values _%stx128042%_ (gx#eval-syntax* _%stx128042%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx128020%_ _%stop?128021%_)
        (let _%lp128023%_ ((_%stx128025%_ _%stx128020%_))
          (if (_%stop?128021%_ _%stx128025%_)
              _%stx128025%_
              (let ((_%rstx128027%_ (gx#core-expand1 _%stx128025%_)))
                (if (eq? _%stx128025%_ _%rstx128027%_)
                    _%stx128025%_
                    (_%lp128023%_ _%rstx128027%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx128032%_)
        (let ((_%stop?128034%_ false))
          (gx#core-expand*__% _%stx128032%_ _%stop?128034%_))))
    (define gx#core-expand*
      (lambda _g128624_
        (let ((_g128625_ (##length _g128624_)))
          (cond ((##fx= _g128625_ 1) (apply gx#core-expand*__0 _g128624_))
                ((##fx= _g128625_ 2) (apply gx#core-expand*__% _g128624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g128624_))))))
    (define gx#core-expand1
      (lambda (_%stx127972%_)
        (letrec ((_%step127974%_
                  (lambda (_%hd128011%_)
                    (let ((_%bind128013%_
                           (gx#resolve-identifier__0 _%hd128011%_)))
                      (if (##structure-instance-of?
                           _%bind128013%_
                           'gx#runtime-binding::t)
                          _%stx127972%_
                          (if (##structure-direct-instance-of?
                               _%bind128013%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind128013%_
                                '4
                                '#f
                                '#f)
                               _%stx127972%_)
                              (if (not _%bind128013%_)
                                  _%stx127972%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx127972%_))))))))
          (let* ((_%e127975127983%_ _%stx127972%_)
                 (_%E127981127987%_ (lambda () _%stx127972%_))
                 (_%E127977127993%_
                  (lambda ()
                    (let ((_%hd127991%_ _%e127975127983%_))
                      (if (gx#identifier? _%hd127991%_)
                          (_%step127974%_ _%hd127991%_)
                          (_%E127981127987%_)))))
                 (_%E127976128007%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127975127983%_)
                        (let ((_%e127978127997%_
                               (gx#syntax-e _%e127975127983%_)))
                          (let ((_%hd127979128000%_ (##car _%e127978127997%_))
                                (_%tl127980128002%_ (##cdr _%e127978127997%_)))
                            (let ((_%hd128005%_ _%hd127979128000%_))
                              (if (gx#identifier? _%hd128005%_)
                                  (_%step127974%_ _%hd128005%_)
                                  (_%E127977127993%_)))))
                        (_%E127977127993%_)))))
            (_%E127976128007%_)))))
    (define gx#core-expand-head
      (lambda (_%stx127938%_)
        (letrec ((_%stop?127940%_
                  (lambda (_%stx127942%_)
                    (let* ((_%e127943127950%_ _%stx127942%_)
                           (_%E127945127954%_ (lambda () '#f))
                           (_%E127944127968%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127943127950%_)
                                  (let ((_%e127946127958%_
                                         (gx#syntax-e _%e127943127950%_)))
                                    (let ((_%hd127947127961%_
                                           (##car _%e127946127958%_))
                                          (_%tl127948127963%_
                                           (##cdr _%e127946127958%_)))
                                      (let ((_%hd127966%_ _%hd127947127961%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd127966%_))))
                                  (_%E127945127954%_)))))
                      (_%E127944127968%_)))))
          (gx#core-expand*__% _%stx127938%_ _%stop?127940%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx127744%_
               _%expand-special127745%_
               _%begin-form127746%_
               _%expand-e127747%_)
        (letrec ((_%expand-splice127749%_
                  (lambda (_%hd127912%_
                           _%body127913%_
                           _%rest127914%_
                           _%r127915%_)
                    (if (gx#stx-list? _%body127913%_)
                        (_%K127753%_
                         (gx#stx-foldr cons _%rest127914%_ _%body127913%_)
                         _%r127915%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx127744%_
                         _%hd127912%_))))
                 (_%expand-cond-expand127750%_
                  (lambda (_%hd127908%_ _%rest127909%_ _%r127910%_)
                    (_%K127753%_
                     (cons (gx#core-expand-cond-expand% _%hd127908%_)
                           _%rest127909%_)
                     _%r127910%_)))
                 (_%expand-include127751%_
                  (lambda (_%hd127857%_ _%rest127858%_ _%r127859%_)
                    (let* ((_%e127860127870%_ _%hd127857%_)
                           (_%E127862127874%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127860127870%_)))
                           (_%E127861127904%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127860127870%_)
                                  (let ((_%e127863127878%_
                                         (gx#syntax-e _%e127860127870%_)))
                                    (let ((_%hd127864127881%_
                                           (##car _%e127863127878%_))
                                          (_%tl127865127883%_
                                           (##cdr _%e127863127878%_)))
                                      (if (gx#stx-pair? _%tl127865127883%_)
                                          (let ((_%e127866127886%_
                                                 (gx#syntax-e
                                                  _%tl127865127883%_)))
                                            (let ((_%hd127867127889%_
                                                   (##car _%e127866127886%_))
                                                  (_%tl127868127891%_
                                                   (##cdr _%e127866127886%_)))
                                              (let ((_%path127894%_
                                                     _%hd127867127889%_))
                                                (if (gx#stx-null?
                                                     _%tl127868127891%_)
                                                    (if (gx#stx-string?
                                                         _%path127894%_)
                                                        (let* ((_%rpath127896%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path127894%_
                         (gx#stx-source _%hd127857%_)))
                       (_%block127898%_
                        (gx#core-expand-include%__%
                         _%hd127857%_
                         _%rpath127896%_))
                       (_%rbody127901%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block127898%_
                            _%expand-special127745%_
                            '#f
                            _%expand-e127747%_))
                         gx#current-expander-path
                         (cons _%rpath127896%_ (gx#current-expander-path)))))
                  (_%K127753%_
                   _%rest127858%_
                   (__foldr1 cons _%r127859%_ _%rbody127901%_)))
                (_%E127862127874%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E127862127874%_)))))
                                          (_%E127862127874%_))))
                                  (_%E127862127874%_)))))
                      (_%E127861127904%_))))
                 (_%expand-expression127752%_
                  (lambda (_%hd127853%_ _%rest127854%_ _%r127855%_)
                    (_%K127753%_
                     _%rest127854%_
                     (cons (_%expand-e127747%_ _%hd127853%_) _%r127855%_))))
                 (_%K127753%_
                  (lambda (_%rest127783%_ _%r127784%_)
                    (let* ((_%e127785127792%_ _%rest127783%_)
                           (_%E127787127796%_
                            (lambda ()
                              (if _%begin-form127746%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form127746%_
                                    (reverse _%r127784%_))
                                   (gx#stx-source _%stx127744%_))
                                  _%r127784%_)))
                           (_%E127786127849%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127785127792%_)
                                  (let ((_%e127788127800%_
                                         (gx#syntax-e _%e127785127792%_)))
                                    (let ((_%hd127789127803%_
                                           (##car _%e127788127800%_))
                                          (_%tl127790127805%_
                                           (##cdr _%e127788127800%_)))
                                      (let* ((_%hd127808%_ _%hd127789127803%_)
                                             (_%rest127810%_
                                              _%tl127790127805%_)
                                             (_%hd127812%_
                                              (gx#core-expand-head
                                               _%hd127808%_))
                                             (_%e127813127820%_ _%hd127812%_)
                                             (_%E127815127824%_
                                              (lambda ()
                                                (_%expand-expression127752%_
                                                 _%hd127812%_
                                                 _%rest127810%_
                                                 _%r127784%_)))
                                             (_%E127814127845%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e127813127820%_)
                                                    (let ((_%e127816127828%_
                                                           (gx#syntax-e
                                                            _%e127813127820%_)))
                                                      (let ((_%hd127817127831%_
                                                             (##car _%e127816127828%_))
                                                            (_%tl127818127833%_
                                                             (##cdr _%e127816127828%_)))
                                                        (let* ((_%form127836%_
                                                                _%hd127817127831%_)
                                                               (_%body127838%_
                                                                _%tl127818127833%_)
                                                               (_%bind127840%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form127836%_)
                            (gx#resolve-identifier__0 _%form127836%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind127840%_)
                      (let ((_%$e127842%_
                             (##unchecked-structure-ref
                              _%bind127840%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e127842%_)
                            (_%expand-splice127749%_
                             _%hd127812%_
                             _%body127838%_
                             _%rest127810%_
                             _%r127784%_)
                            (if (eq? '%#cond-expand _%$e127842%_)
                                (_%expand-cond-expand127750%_
                                 _%hd127812%_
                                 _%rest127810%_
                                 _%r127784%_)
                                (if (eq? '%#include _%$e127842%_)
                                    (_%expand-include127751%_
                                     _%hd127812%_
                                     _%rest127810%_
                                     _%r127784%_)
                                    (_%expand-special127745%_
                                     _%hd127812%_
                                     _%K127753%_
                                     _%rest127810%_
                                     _%r127784%_)))))
                      (_%expand-expression127752%_
                       _%hd127812%_
                       _%rest127810%_
                       _%r127784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E127815127824%_)))))
                                        (_%E127814127845%_))))
                                  (_%E127787127796%_)))))
                      (_%E127786127849%_)))))
          (let* ((_%e127754127761%_ _%stx127744%_)
                 (_%E127756127765%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127754127761%_)))
                 (_%E127755127779%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127754127761%_)
                        (let ((_%e127757127769%_
                               (gx#syntax-e _%e127754127761%_)))
                          (let ((_%hd127758127772%_ (##car _%e127757127769%_))
                                (_%tl127759127774%_ (##cdr _%e127757127769%_)))
                            (let ((_%body127777%_ _%tl127759127774%_))
                              (if (gx#stx-list? _%body127777%_)
                                  (_%K127753%_ _%body127777%_ '())
                                  (_%E127756127765%_)))))
                        (_%E127756127765%_)))))
            (_%E127755127779%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx127920%_ _%expand-special127921%_)
        (let* ((_%begin-form127923%_ '%#begin)
               (_%expand-e127925%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx127920%_
           _%expand-special127921%_
           _%begin-form127923%_
           _%expand-e127925%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx127927%_ _%expand-special127928%_ _%begin-form127929%_)
        (let ((_%expand-e127931%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx127927%_
           _%expand-special127928%_
           _%begin-form127929%_
           _%expand-e127931%_))))
    (define gx#core-expand-block
      (lambda _g128626_
        (let ((_g128627_ (##length _g128626_)))
          (cond ((##fx= _g128627_ 2) (apply gx#core-expand-block__0 _g128626_))
                ((##fx= _g128627_ 3) (apply gx#core-expand-block__1 _g128626_))
                ((##fx= _g128627_ 4) (apply gx#core-expand-block__% _g128626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g128626_))))))
    (define gx#core-expand-block*
      (lambda (_%stx127692%_ _%expand-special127693%_)
        (let* ((_%g127694127705%_
                (gx#core-expand-block__1
                 _%stx127692%_
                 _%expand-special127693%_
                 '#f))
               (_%E127698127709%_
                (lambda ()
                  (error '"No clause matching"
                         _%g127694127705%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K127703127740%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx127692%_)))
                (_%K127700127726%_ (lambda (_%expr127724%_) _%expr127724%_))
                (_%K127699127715%_
                 (lambda (_%body127713%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body127713%_))
                    (gx#stx-source _%stx127692%_)))))
            (let ((_%try-match127696127736%_
                   (lambda ()
                     (if (pair? _%g127694127705%_)
                         (let ((_%tl127702127731%_ (##cdr _%g127694127705%_))
                               (_%hd127701127729%_ (##car _%g127694127705%_)))
                           (if (null? _%tl127702127731%_)
                               (let ((_%expr127734%_ _%hd127701127729%_))
                                 (_%K127700127726%_ _%expr127734%_))
                               (let ((_%body127718%_ _%g127694127705%_))
                                 (_%K127699127715%_ _%body127718%_))))
                         (let ((_%body127718%_ _%g127694127705%_))
                           (_%K127699127715%_ _%body127718%_))))))
              (if (null? _%g127694127705%_)
                  (_%K127703127740%_)
                  (_%try-match127696127736%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx127517%_)
        (letrec ((_%satisfied?127519%_
                  (lambda (_%condition127620%_)
                    (let* ((_%e127621127636%_ _%condition127620%_)
                           (_%E127631127640%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127621127636%_)))
                           (_%E127624127659%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127621127636%_)
                                  (let ((_%e127632127644%_
                                         (gx#syntax-e _%e127621127636%_)))
                                    (let ((_%hd127633127647%_
                                           (##car _%e127632127644%_))
                                          (_%tl127634127649%_
                                           (##cdr _%e127632127644%_)))
                                      (let* ((_%combinator127652%_
                                              _%hd127633127647%_)
                                             (_%body127654%_
                                              _%tl127634127649%_))
                                        (if (gx#stx-list? _%body127654%_)
                                            (let ((_%$e127656%_
                                                   (gx#stx-e
                                                    _%combinator127652%_)))
                                              (if (eq? 'not _%$e127656%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?127519%_
                                                        _%body127654%_))
                                                  (if (eq? 'and _%$e127656%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?127519%_
                                                       _%body127654%_)
                                                      (if (eq? 'or
                                                               _%$e127656%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?127519%_
                                                           _%body127654%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e127656%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body127654%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx127517%_
                       _%combinator127652%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E127631127640%_)))))
                                  (_%E127631127640%_))))
                           (_%E127623127682%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127621127636%_)
                                  (let ((_%e127625127663%_
                                         (gx#syntax-e _%e127621127636%_)))
                                    (let ((_%hd127626127666%_
                                           (##car _%e127625127663%_))
                                          (_%tl127627127668%_
                                           (##cdr _%e127625127663%_)))
                                      (if (and (gx#identifier?
                                                _%hd127626127666%_)
                                               (gx#core-identifier=?
                                                _%hd127626127666%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl127627127668%_)
                                              (let ((_%e127628127671%_
                                                     (gx#syntax-e
                                                      _%tl127627127668%_)))
                                                (let ((_%hd127629127674%_
                                                       (##car _%e127628127671%_))
                                                      (_%tl127630127676%_
                                                       (##cdr _%e127628127671%_)))
                                                  (let ((_%expr127679%_
                                                         _%hd127629127674%_))
                                                    (if (gx#stx-null?
                                                         _%tl127630127676%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr127679%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E127624127659%_)))))
                                              (_%E127624127659%_))
                                          (_%E127624127659%_))))
                                  (_%E127624127659%_))))
                           (_%E127622127688%_
                            (lambda ()
                              (let ((_%id127686%_ _%e127621127636%_))
                                (if (gx#identifier? _%id127686%_)
                                    (gx#core-bound-identifier?__%
                                     _%id127686%_
                                     gx#feature-binding?)
                                    (_%E127623127682%_))))))
                      (_%E127622127688%_))))
                 (_%loop127520%_
                  (lambda (_%rest127550%_)
                    (let* ((_%e127551127559%_ _%rest127550%_)
                           (_%E127557127563%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127551127559%_)))
                           (_%E127553127567%_
                            (lambda ()
                              (if (gx#stx-null? _%e127551127559%_)
                                  '()
                                  (_%E127557127563%_))))
                           (_%E127552127616%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127551127559%_)
                                  (let ((_%e127554127571%_
                                         (gx#syntax-e _%e127551127559%_)))
                                    (let ((_%hd127555127574%_
                                           (##car _%e127554127571%_))
                                          (_%tl127556127576%_
                                           (##cdr _%e127554127571%_)))
                                      (let* ((_%hd127579%_ _%hd127555127574%_)
                                             (_%rest127581%_
                                              _%tl127556127576%_)
                                             (_%e127582127589%_ _%hd127579%_)
                                             (_%E127584127593%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e127582127589%_)))
                                             (_%E127583127612%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e127582127589%_)
                                                    (let ((_%e127585127597%_
                                                           (gx#syntax-e
                                                            _%e127582127589%_)))
                                                      (let ((_%hd127586127600%_
                                                             (##car _%e127585127597%_))
                                                            (_%tl127587127602%_
                                                             (##cdr _%e127585127597%_)))
                                                        (let* ((_%condition127605%_
                                                                _%hd127586127600%_)
                                                               (_%body127607%_
                                                                _%tl127587127602%_))
                                                          (if (gx#stx-eq?
                                                               _%condition127605%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest127581%_)
                          _%body127607%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx127517%_
                           _%hd127579%_))
                      (if (_%satisfied?127519%_ _%condition127605%_)
                          _%body127607%_
                          (_%loop127520%_ _%rest127581%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E127584127593%_)))))
                                        (_%E127583127612%_))))
                                  (_%E127553127567%_)))))
                      (_%E127552127616%_)))))
          (let* ((_%e127521127528%_ _%stx127517%_)
                 (_%E127523127532%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127521127528%_)))
                 (_%E127522127546%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127521127528%_)
                        (let ((_%e127524127536%_
                               (gx#syntax-e _%e127521127528%_)))
                          (let ((_%hd127525127539%_ (##car _%e127524127536%_))
                                (_%tl127526127541%_ (##cdr _%e127524127536%_)))
                            (let ((_%clauses127544%_ _%tl127526127541%_))
                              (if (gx#stx-list? _%clauses127544%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop127520%_ _%clauses127544%_))
                                  (_%E127523127532%_)))))
                        (_%E127523127532%_)))))
            (_%E127522127546%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx127460%_ _%rpath127461%_)
        (let* ((_%e127462127472%_ _%stx127460%_)
               (_%E127464127476%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127462127472%_)))
               (_%E127463127503%_
                (lambda ()
                  (if (gx#stx-pair? _%e127462127472%_)
                      (let ((_%e127465127480%_
                             (gx#syntax-e _%e127462127472%_)))
                        (let ((_%hd127466127483%_ (##car _%e127465127480%_))
                              (_%tl127467127485%_ (##cdr _%e127465127480%_)))
                          (if (gx#stx-pair? _%tl127467127485%_)
                              (let ((_%e127468127488%_
                                     (gx#syntax-e _%tl127467127485%_)))
                                (let ((_%hd127469127491%_
                                       (##car _%e127468127488%_))
                                      (_%tl127470127493%_
                                       (##cdr _%e127468127488%_)))
                                  (let ((_%path127496%_ _%hd127469127491%_))
                                    (if (gx#stx-null? _%tl127470127493%_)
                                        (if (gx#stx-string? _%path127496%_)
                                            (let ((_%rpath127501%_
                                                   (let ((_%$e127498%_
                                                          _%rpath127461%_))
                                                     (if _%$e127498%_
                                                         _%$e127498%_
                                                         (gx#core-resolve-path__%
                                                          _%path127496%_
                                                          (gx#stx-source
                                                           _%stx127460%_))))))
                                              (if (member _%rpath127501%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx127460%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath127501%_))
                                                    (gx#stx-source
                                                     _%stx127460%_)))))
                                            (_%E127464127476%_))
                                        (_%E127464127476%_)))))
                              (_%E127464127476%_))))
                      (_%E127464127476%_)))))
          (_%E127463127503%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx127510%_)
        (let ((_%rpath127512%_ '#f))
          (gx#core-expand-include%__% _%stx127510%_ _%rpath127512%_))))
    (define gx#core-expand-include%
      (lambda _g128628_
        (let ((_g128629_ (##length _g128628_)))
          (cond ((##fx= _g128629_ 1)
                 (apply gx#core-expand-include%__0 _g128628_))
                ((##fx= _g128629_ 2)
                 (apply gx#core-expand-include%__% _g128628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g128628_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K127426%_ _%stx127427%_ _%method127428%_)
        (if (procedure? _%K127426%_)
            (let ((_%$e127431%_ (gx#stx-source _%stx127427%_)))
              (if _%$e127431%_
                  ((lambda (_%g127433127435%_)
                     (gx#stx-wrap-source
                      (_%K127426%_ _%stx127427%_)
                      _%g127433127435%_))
                   _%$e127431%_)
                  (_%K127426%_ _%stx127427%_)))
            (let ((_%$e127439%_
                   (bound-method-ref _%K127426%_ _%method127428%_)))
              (if _%$e127439%_
                  ((lambda (_%g127441127443%_)
                     (gx#core-apply-expander__%
                      _%g127441127443%_
                      _%stx127427%_
                      _%method127428%_))
                   _%$e127439%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx127427%_
                   _%method127428%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K127450%_ _%stx127451%_)
        (let ((_%method127453%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K127450%_
           _%stx127451%_
           _%method127453%_))))
    (define gx#core-apply-expander
      (lambda _g128630_
        (let ((_g128631_ (##length _g128630_)))
          (cond ((##fx= _g128631_ 2)
                 (apply gx#core-apply-expander__0 _g128630_))
                ((##fx= _g128631_ 3)
                 (apply gx#core-apply-expander__% _g128630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g128630_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self127411%_ _%stx127412%_)
        (let ((_%self127415%_ _%self127411%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx127412%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self127253%_ _%stx127254%_)
        (let* ((_%self127257%_ _%self127253%_)
               (_%self127266127272%_ _%self127257%_)
               (_%E127268127276%_
                (lambda ()
                  (error '"No clause matching"
                         _%self127266127272%_
                         '((macro-expander K)))
                  '#!void))
               (_%K127269127281%_
                (lambda (_%K127279%_)
                  (gx#core-apply-expander__0 _%K127279%_ _%stx127254%_)))
               (_%e127270127284%_
                (##unchecked-structure-ref _%self127266127272%_ '1 '#f '#f))
               (_%K127287%_ _%e127270127284%_))
          (_%K127269127281%_ _%K127287%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self127095%_ _%stx127096%_)
        (let ((_%self127099%_ _%self127095%_))
          (if (gx#sealed-syntax? _%stx127096%_)
              _%stx127096%_
              (let* ((_%self127108127114%_ _%self127099%_)
                     (_%E127110127118%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self127108127114%_
                               '((core-expander K)))
                        '#!void))
                     (_%K127111127123%_
                      (lambda (_%K127121%_)
                        (gx#core-apply-expander__0 _%K127121%_ _%stx127096%_)))
                     (_%e127112127126%_
                      (##unchecked-structure-ref
                       _%self127108127114%_
                       '1
                       '#f
                       '#f))
                     (_%K127129%_ _%e127112127126%_))
                (_%K127111127123%_ _%K127129%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self126946%_ _%stx126947%_ _%top?126948%_)
        (let ((_%self126951%_ _%self126946%_))
          (if (_%top?126948%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self126951%_
               _%stx126947%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx126947%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self126964%_ _%stx126965%_)
        (let ((_%top?126967%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self126964%_
           _%stx126965%_
           _%top?126967%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g128632_
        (let ((_g128633_ (##length _g128632_)))
          (cond ((##fx= _g128633_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g128632_))
                ((##fx= _g128633_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g128632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g128632_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self126809%_ _%stx126810%_)
        (let ((_%self126813%_ _%self126809%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self126813%_
           _%stx126810%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self126623%_ _%stx126624%_)
        (let* ((_%self126627%_ _%self126623%_)
               (_%self126636126642%_ _%self126627%_)
               (_%E126638126646%_
                (lambda ()
                  (error '"No clause matching"
                         _%self126636126642%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K126639126679%_
                (lambda (_%id126649%_)
                  (let* ((_%e126650126657%_ _%stx126624%_)
                         (_%E126652126661%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e126650126657%_)))
                         (_%E126651126675%_
                          (lambda ()
                            (if (gx#stx-pair? _%e126650126657%_)
                                (let ((_%e126653126665%_
                                       (gx#syntax-e _%e126650126657%_)))
                                  (let ((_%hd126654126668%_
                                         (##car _%e126653126665%_))
                                        (_%tl126655126670%_
                                         (##cdr _%e126653126665%_)))
                                    (let ((_%body126673%_ _%tl126655126670%_))
                                      (gx#core-cons
                                       _%id126649%_
                                       _%body126673%_))))
                                (_%E126652126661%_)))))
                    (_%E126651126675%_))))
               (_%e126640126682%_
                (##unchecked-structure-ref _%self126636126642%_ '1 '#f '#f))
               (_%id126685%_ _%e126640126682%_))
          (_%K126639126679%_ _%id126685%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self126449%_ _%stx126450%_ _%method126451%_)
        (let* ((_%self126452126460%_ _%self126449%_)
               (_%E126454126464%_
                (lambda ()
                  (error '"No clause matching"
                         _%self126452126460%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K126455126471%_
                (lambda (_%phi126467%_ _%ctx126468%_ _%K126469%_)
                  (gx#core-apply-user-macro
                   _%K126469%_
                   _%stx126450%_
                   _%ctx126468%_
                   _%phi126467%_
                   _%method126451%_))))
          (if (##structure-instance-of?
               _%self126452126460%_
               'gx#user-expander::t)
              (let* ((_%e126456126474%_
                      (##unchecked-structure-ref
                       _%self126452126460%_
                       '1
                       '#f
                       '#f))
                     (_%K126477%_ _%e126456126474%_)
                     (_%e126457126479%_
                      (##unchecked-structure-ref
                       _%self126452126460%_
                       '2
                       '#f
                       '#f))
                     (_%ctx126482%_ _%e126457126479%_)
                     (_%e126458126484%_
                      (##unchecked-structure-ref
                       _%self126452126460%_
                       '3
                       '#f
                       '#f))
                     (_%phi126487%_ _%e126458126484%_))
                (_%K126455126471%_ _%phi126487%_ _%ctx126482%_ _%K126477%_))
              (_%E126454126464%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self126492%_ _%stx126493%_)
        (let ((_%method126495%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self126492%_
           _%stx126493%_
           _%method126495%_))))
    (define gx#core-apply-user-expander
      (lambda _g128634_
        (let ((_g128635_ (##length _g128634_)))
          (cond ((##fx= _g128635_ 2)
                 (apply gx#core-apply-user-expander__0 _g128634_))
                ((##fx= _g128635_ 3)
                 (apply gx#core-apply-user-expander__% _g128634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g128634_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K126439%_
               _%stx126440%_
               _%ctx126441%_
               _%phi126442%_
               _%method126443%_)
        (let ((_%mark126445%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx126441%_
                _%phi126442%_
                _%stx126440%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K126439%_
               (gx#stx-apply-mark _%stx126440%_ _%mark126445%_)
               _%method126443%_)
              _%mark126445%_))
           gx#current-expander-marks
           (cons _%mark126445%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx126287%_ _%phi126288%_ _%ctx126289%_)
        (let _%lp126291%_ ((_%bind126293%_
                            (gx#core-resolve-identifier__%
                             _%stx126287%_
                             _%phi126288%_
                             _%ctx126289%_)))
          (if (##structure-direct-instance-of?
               _%bind126293%_
               'gx#import-binding::t)
              (_%lp126291%_
               (##unchecked-structure-ref _%bind126293%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind126293%_
                   'gx#alias-binding::t)
                  (_%lp126291%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind126293%_ '4 '#f '#f)
                    _%phi126288%_
                    _%ctx126289%_))
                  _%bind126293%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx126301%_)
        (let* ((_%phi126303%_ (gx#current-expander-phi))
               (_%ctx126305%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx126301%_
           _%phi126303%_
           _%ctx126305%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx126307%_ _%phi126308%_)
        (let ((_%ctx126310%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx126307%_
           _%phi126308%_
           _%ctx126310%_))))
    (define gx#resolve-identifier
      (lambda _g128636_
        (let ((_g128637_ (##length _g128636_)))
          (cond ((##fx= _g128637_ 1)
                 (apply gx#resolve-identifier__0 _g128636_))
                ((##fx= _g128637_ 2)
                 (apply gx#resolve-identifier__1 _g128636_))
                ((##fx= _g128637_ 3)
                 (apply gx#resolve-identifier__% _g128636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g128636_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx126242%_
               _%val126243%_
               _%rebind?126244%_
               _%phi126245%_
               _%ctx126246%_)
        (let ((_%rebind?126251%_
               (if (not _%rebind?126244%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?126244%_)
                       _%rebind?126244%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx126242%_)
           _%val126243%_
           _%rebind?126251%_
           _%phi126245%_
           _%ctx126246%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx126256%_ _%val126257%_)
        (let* ((_%rebind?126259%_ '#f)
               (_%phi126261%_ (gx#current-expander-phi))
               (_%ctx126263%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx126256%_
           _%val126257%_
           _%rebind?126259%_
           _%phi126261%_
           _%ctx126263%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx126265%_ _%val126266%_ _%rebind?126267%_)
        (let* ((_%phi126269%_ (gx#current-expander-phi))
               (_%ctx126271%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx126265%_
           _%val126266%_
           _%rebind?126267%_
           _%phi126269%_
           _%ctx126271%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx126273%_ _%val126274%_ _%rebind?126275%_ _%phi126276%_)
        (let ((_%ctx126278%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx126273%_
           _%val126274%_
           _%rebind?126275%_
           _%phi126276%_
           _%ctx126278%_))))
    (define gx#bind-identifier!
      (lambda _g128638_
        (let ((_g128639_ (##length _g128638_)))
          (cond ((##fx= _g128639_ 2) (apply gx#bind-identifier!__0 _g128638_))
                ((##fx= _g128639_ 3) (apply gx#bind-identifier!__1 _g128638_))
                ((##fx= _g128639_ 4) (apply gx#bind-identifier!__2 _g128638_))
                ((##fx= _g128639_ 5) (apply gx#bind-identifier!__% _g128638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g128638_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx126208%_ _%phi126209%_ _%ctx126210%_)
        (let _%lp126212%_ ((_%e126214%_ _%stx126208%_)
                           (_%marks126215%_ (gx#current-expander-marks)))
          (if (symbol? _%e126214%_)
              (gx#core-resolve-binding
               _%e126214%_
               _%phi126209%_
               _%phi126209%_
               _%ctx126210%_
               (reverse _%marks126215%_))
              (if (gx#identifier-quote? _%e126214%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e126214%_ '1 '#f '#f)
                   _%phi126209%_
                   '0
                   (##unchecked-structure-ref _%e126214%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e126214%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e126214%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e126214%_ '1 '#f '#f)
                       _%phi126209%_
                       _%phi126209%_
                       _%ctx126210%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e126214%_ '3 '#f '#f)
                        _%marks126215%_))
                      (if (##structure-direct-instance-of?
                           _%e126214%_
                           'gx#syntax-wrap::t)
                          (_%lp126212%_
                           (##unchecked-structure-ref _%e126214%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e126214%_ '3 '#f '#f)
                            _%marks126215%_))
                          (if (##structure-instance-of?
                               _%e126214%_
                               'gerbil#AST::t)
                              (_%lp126212%_
                               (##unchecked-structure-ref
                                _%e126214%_
                                '1
                                '#f
                                '#f)
                               _%marks126215%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx126208%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx126226%_)
        (let* ((_%phi126228%_ (gx#current-expander-phi))
               (_%ctx126230%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx126226%_
           _%phi126228%_
           _%ctx126230%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx126232%_ _%phi126233%_)
        (let ((_%ctx126235%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx126232%_
           _%phi126233%_
           _%ctx126235%_))))
    (define gx#core-resolve-identifier
      (lambda _g128640_
        (let ((_g128641_ (##length _g128640_)))
          (cond ((##fx= _g128641_ 1)
                 (apply gx#core-resolve-identifier__0 _g128640_))
                ((##fx= _g128641_ 2)
                 (apply gx#core-resolve-identifier__1 _g128640_))
                ((##fx= _g128641_ 3)
                 (apply gx#core-resolve-identifier__% _g128640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g128640_))))))
    (define gx#core-resolve-binding
      (lambda (_%id126118%_
               _%phi126119%_
               _%src-phi126120%_
               _%ctx126121%_
               _%marks126122%_)
        (letrec ((_%resolve126124%_
                  (lambda (_%ctx126192%_ _%src-phi126193%_ _%key126194%_)
                    (let _%lp126196%_ ((_%ctx126198%_
                                        (gx#core-context-shift
                                         _%ctx126192%_
                                         _%phi126119%_))
                                       (_%dphi126199%_
                                        (fx- _%phi126119%_ _%src-phi126193%_)))
                      (let ((_%$e126201%_
                             (gx#core-context-resolve
                              _%ctx126198%_
                              _%key126194%_)))
                        (if _%$e126201%_
                            _%$e126201%_
                            (if (fxzero? _%dphi126199%_)
                                '#f
                                (if (fxpositive? _%dphi126199%_)
                                    (_%lp126196%_
                                     (gx#core-context-shift _%ctx126198%_ '-1)
                                     (##fx- _%dphi126199%_ '1))
                                    (_%lp126196%_
                                     (gx#core-context-shift _%ctx126198%_ '1)
                                     (##fx+ _%dphi126199%_ '1))))))))))
          (let _%lp126126%_ ((_%ctx126128%_ _%ctx126121%_)
                             (_%src-phi126129%_ _%src-phi126120%_)
                             (_%rest126130%_ _%marks126122%_))
            (let* ((_%rest126131126139%_ _%rest126130%_)
                   (_%else126133126147%_
                    (lambda ()
                      (_%resolve126124%_
                       _%ctx126128%_
                       _%src-phi126129%_
                       _%id126118%_)))
                   (_%K126135126180%_
                    (lambda (_%rest126150%_ _%hd126151%_)
                      (let* ((_%hd126152126158%_ _%hd126151%_)
                             (_%E126154126162%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd126152126158%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K126155126172%_
                              (lambda (_%subst126165%_)
                                (let ((_%$e126169%_
                                       (let ((_%key126167%_
                                              (if _%subst126165%_
                                                  (hash-get
                                                   _%subst126165%_
                                                   _%id126118%_)
                                                  '#f)))
                                         (if _%key126167%_
                                             (_%resolve126124%_
                                              _%ctx126128%_
                                              _%src-phi126129%_
                                              _%key126167%_)
                                             '#f))))
                                  (if _%$e126169%_
                                      _%$e126169%_
                                      (_%lp126126%_
                                       (##unchecked-structure-ref
                                        _%hd126151%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd126151%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest126150%_))))))
                        (if (##structure-instance-of?
                             _%hd126152126158%_
                             'gx#expander-mark::t)
                            (let* ((_%e126156126175%_
                                    (##unchecked-structure-ref
                                     _%hd126152126158%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst126178%_ _%e126156126175%_))
                              (_%K126155126172%_ _%subst126178%_))
                            (_%E126154126162%_))))))
              (if (pair? _%rest126131126139%_)
                  (let ((_%hd126136126183%_ (##car _%rest126131126139%_))
                        (_%tl126137126185%_ (##cdr _%rest126131126139%_)))
                    (let* ((_%hd126188%_ _%hd126136126183%_)
                           (_%rest126190%_ _%tl126137126185%_))
                      (_%K126135126180%_ _%rest126190%_ _%hd126188%_)))
                  (_%else126133126147%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key125988%_
               _%val125989%_
               _%rebind?125990%_
               _%phi125991%_
               _%ctx125992%_)
        (letrec ((_%update-binding125994%_
                  (lambda (_%xval126067%_)
                    (if (or (_%rebind?125990%_
                             _%ctx125992%_
                             _%xval126067%_
                             _%val125989%_)
                            (and (##structure-direct-instance-of?
                                  _%xval126067%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval126067%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val125989%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val125989%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval126067%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val125989%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val125989%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval126067%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val125989%_
                        (if (and (##structure-direct-instance-of?
                                  _%val125989%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val125989%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval126067%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val125989%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval126067%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval126067%_
                            (if (and (##structure-direct-instance-of?
                                      _%val125989%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval126067%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key125988%_
                                 (cons (##unchecked-structure-ref
                                        _%val125989%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val125989%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval126067%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval126067%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval126067%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval126067%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key125988%_
                                 _%val125989%_
                                 _%xval126067%_))))))
                 (_%gensubst125995%_
                  (lambda (_%subst126062%_ _%id126063%_)
                    (let ((_%eid126065%_
                           (gensym (if (uninterned-symbol? _%id126063%_)
                                       '%
                                       _%id126063%_))))
                      (hash-put! _%subst126062%_ _%id126063%_ _%eid126065%_)
                      _%eid126065%_)))
                 (_%subst!125996%_
                  (lambda (_%key125998%_)
                    (let* ((_%key125999126007%_ _%key125998%_)
                           (_%else126001126015%_ (lambda () _%key125998%_))
                           (_%K126003126050%_
                            (lambda (_%mark126018%_ _%id126019%_)
                              (let* ((_%mark126020126026%_ _%mark126018%_)
                                     (_%E126022126030%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark126020126026%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K126023126042%_
                                      (lambda (_%subst126033%_)
                                        (if (not _%subst126033%_)
                                            (let ((_%subst126036%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark126018%_
                                               _%subst126036%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst125995%_
                                               _%subst126036%_
                                               _%id126019%_))
                                            (let ((_%$e126038%_
                                                   (hash-get
                                                    _%subst126033%_
                                                    _%id126019%_)))
                                              (if _%$e126038%_
                                                  _%$e126038%_
                                                  (_%gensubst125995%_
                                                   _%subst126033%_
                                                   _%id126019%_)))))))
                                (if (##structure-instance-of?
                                     _%mark126020126026%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e126024126045%_
                                            (##unchecked-structure-ref
                                             _%mark126020126026%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst126048%_ _%e126024126045%_))
                                      (_%K126023126042%_ _%subst126048%_))
                                    (_%E126022126030%_))))))
                      (if (pair? _%key125999126007%_)
                          (let ((_%hd126004126053%_
                                 (##car _%key125999126007%_))
                                (_%tl126005126055%_
                                 (##cdr _%key125999126007%_)))
                            (let* ((_%id126058%_ _%hd126004126053%_)
                                   (_%mark126060%_ _%tl126005126055%_))
                              (_%K126003126050%_ _%mark126060%_ _%id126058%_)))
                          (_%else126001126015%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx125992%_ _%phi125991%_)
           (_%subst!125996%_ _%key125988%_)
           _%val125989%_
           _%update-binding125994%_))))
    (define gx#core-bind!__0
      (lambda (_%key126088%_ _%val126089%_)
        (let* ((_%rebind?126091%_ false)
               (_%phi126093%_ (gx#current-expander-phi))
               (_%ctx126095%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key126088%_
           _%val126089%_
           _%rebind?126091%_
           _%phi126093%_
           _%ctx126095%_))))
    (define gx#core-bind!__1
      (lambda (_%key126097%_ _%val126098%_ _%rebind?126099%_)
        (let* ((_%phi126101%_ (gx#current-expander-phi))
               (_%ctx126103%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key126097%_
           _%val126098%_
           _%rebind?126099%_
           _%phi126101%_
           _%ctx126103%_))))
    (define gx#core-bind!__2
      (lambda (_%key126105%_ _%val126106%_ _%rebind?126107%_ _%phi126108%_)
        (let ((_%ctx126110%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key126105%_
           _%val126106%_
           _%rebind?126107%_
           _%phi126108%_
           _%ctx126110%_))))
    (define gx#core-bind!
      (lambda _g128642_
        (let ((_g128643_ (##length _g128642_)))
          (cond ((##fx= _g128643_ 2) (apply gx#core-bind!__0 _g128642_))
                ((##fx= _g128643_ 3) (apply gx#core-bind!__1 _g128642_))
                ((##fx= _g128643_ 4) (apply gx#core-bind!__2 _g128642_))
                ((##fx= _g128643_ 5) (apply gx#core-bind!__% _g128642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g128642_))))))
    (define gx#core-identifier-key
      (lambda (_%stx125919%_)
        (if (symbol? _%stx125919%_)
            (let* ((_%g125921125929%_ (gx#current-expander-marks))
                   (_%else125923125937%_ (lambda () _%stx125919%_))
                   (_%K125925125942%_
                    (lambda (_%hd125940%_) (cons _%stx125919%_ _%hd125940%_))))
              (if (pair? _%g125921125929%_)
                  (let* ((_%hd125926125945%_ (##car _%g125921125929%_))
                         (_%hd125948%_ _%hd125926125945%_))
                    (_%K125925125942%_ _%hd125948%_))
                  (_%else125923125937%_)))
            (if (gx#identifier? _%stx125919%_)
                (let* ((_%id125951%_ (gx#syntax-local-unwrap _%stx125919%_))
                       (_%eid125953%_ (gx#stx-e _%id125951%_))
                       (_%marks125955%_
                        (gx#stx-identifier-marks* _%id125951%_))
                       (_%marks125957125965%_ _%marks125955%_)
                       (_%else125959125973%_ (lambda () _%eid125953%_))
                       (_%K125961125978%_
                        (lambda (_%hd125976%_)
                          (cons _%eid125953%_ _%hd125976%_))))
                  (if (pair? _%marks125957125965%_)
                      (let* ((_%hd125962125981%_ (##car _%marks125957125965%_))
                             (_%hd125984%_ _%hd125962125981%_))
                        (_%K125961125978%_ _%hd125984%_))
                      (_%else125959125973%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx125919%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx125858%_ _%phi125859%_)
        (letrec ((_%make-phi125861%_
                  (lambda (_%super125917%_)
                    (let ((__obj128615
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj128615
                       (##gensym 'phi)
                       _%super125917%_)
                      __obj128615)))
                 (_%make-phi/up125862%_
                  (lambda (_%ctx125912%_ _%super125913%_)
                    (let ((_%ctx+1125915%_
                           (_%make-phi125861%_ _%super125913%_)))
                      (##unchecked-structure-set!
                       _%ctx125912%_
                       _%ctx+1125915%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1125915%_
                       _%ctx125912%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1125915%_)))
                 (_%make-phi/down125863%_
                  (lambda (_%ctx125907%_ _%super125908%_)
                    (let ((_%ctx-1125910%_
                           (_%make-phi125861%_ _%super125908%_)))
                      (##unchecked-structure-set!
                       _%ctx-1125910%_
                       _%ctx125907%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx125907%_
                       _%ctx-1125910%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1125910%_)))
                 (_%shift125864%_
                  (lambda (_%ctx125890%_
                           _%delta125891%_
                           _%make-delta-context125892%_
                           _%phi125893%_
                           _%K125894%_)
                    (let ((_%$e125896%_
                           (##unchecked-structure-ref
                            _%ctx125890%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e125896%_
                          ((lambda (_%super125899%_)
                             (let* ((_%super125901%_
                                     (_%K125894%_
                                      _%super125899%_
                                      _%delta125891%_))
                                    (_%ctx+d125903%_
                                     (_%make-delta-context125892%_
                                      _%ctx125890%_
                                      _%super125901%_)))
                               (_%K125894%_
                                _%ctx+d125903%_
                                (fx- _%phi125893%_ _%delta125891%_))))
                           _%$e125896%_)
                          (error '"Bad context" _%ctx125890%_))))))
          (let _%K125866%_ ((_%ctx125868%_ _%ctx125858%_)
                            (_%phi125869%_ _%phi125859%_))
            (if (fxzero? _%phi125869%_)
                _%ctx125868%_
                (if (##structure-instance-of? _%ctx125868%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi125869%_)
                        (let ((_%$e125873%_
                               (##unchecked-structure-ref
                                _%ctx125868%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e125873%_
                              ((lambda (_%g125875125877%_)
                                 (_%K125866%_
                                  _%g125875125877%_
                                  (##fx- _%phi125869%_ '1)))
                               _%$e125873%_)
                              (_%shift125864%_
                               _%ctx125868%_
                               '1
                               _%make-phi/up125862%_
                               _%phi125869%_
                               _%K125866%_)))
                        (let ((_%$e125881%_
                               (##unchecked-structure-ref
                                _%ctx125868%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e125881%_
                              ((lambda (_%g125883125885%_)
                                 (_%K125866%_
                                  _%g125883125885%_
                                  (##fx+ _%phi125869%_ '1)))
                               _%$e125881%_)
                              (_%shift125864%_
                               _%ctx125868%_
                               '-1
                               _%make-phi/down125863%_
                               _%phi125869%_
                               _%K125866%_))))
                    _%ctx125868%_))))))
    (define gx#core-context-get
      (lambda (_%ctx125855%_ _%key125856%_)
        (hash-get
         (##unchecked-structure-ref _%ctx125855%_ '2 '#f '#f)
         _%key125856%_)))
    (define gx#core-context-put!
      (lambda (_%ctx125851%_ _%key125852%_ _%val125853%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx125851%_ '2 '#f '#f)
         _%key125852%_
         _%val125853%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx125837%_ _%key125838%_)
        (let _%lp125840%_ ((_%ctx125842%_ _%ctx125837%_))
          (let ((_%$e125844%_
                 (gx#core-context-get _%ctx125842%_ _%key125838%_)))
            (if _%$e125844%_
                _%$e125844%_
                (let ((_%$e125847%_
                       (if (##structure-instance-of?
                            _%ctx125842%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx125842%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e125847%_ (_%lp125840%_ _%$e125847%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx125826%_ _%key125827%_ _%val125828%_ _%rebind125829%_)
        (let ((_%$e125831%_ (gx#core-context-get _%ctx125826%_ _%key125827%_)))
          (if _%$e125831%_
              ((lambda (_%xval125834%_)
                 (gx#core-context-put!
                  _%ctx125826%_
                  _%key125827%_
                  (_%rebind125829%_ _%xval125834%_)))
               _%$e125831%_)
              (gx#core-context-put!
               _%ctx125826%_
               _%key125827%_
               _%val125828%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx125801%_ _%stop?125802%_)
        (let _%lp125804%_ ((_%ctx125806%_ _%ctx125801%_))
          (if (_%stop?125802%_ _%ctx125806%_)
              _%ctx125806%_
              (if (##structure-instance-of? _%ctx125806%_ 'gx#phi-context::t)
                  (_%lp125804%_
                   (##unchecked-structure-ref _%ctx125806%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx125815%_ (gx#current-expander-context))
               (_%stop?125817%_ gx#top-context?))
          (gx#core-context-top__% _%ctx125815%_ _%stop?125817%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx125819%_)
        (let ((_%stop?125821%_ gx#top-context?))
          (gx#core-context-top__% _%ctx125819%_ _%stop?125821%_))))
    (define gx#core-context-top
      (lambda _g128644_
        (let ((_g128645_ (##length _g128644_)))
          (cond ((##fx= _g128645_ 0) (apply gx#core-context-top__0 _g128644_))
                ((##fx= _g128645_ 1) (apply gx#core-context-top__1 _g128644_))
                ((##fx= _g128645_ 2) (apply gx#core-context-top__% _g128644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g128644_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx125786%_)
        (let _%lp125788%_ ((_%ctx125790%_ _%ctx125786%_))
          (if (##structure-instance-of? _%ctx125790%_ 'gx#phi-context::t)
              (_%lp125788%_
               (##unchecked-structure-ref _%ctx125790%_ '3 '#f '#f))
              _%ctx125790%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx125796%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx125796%_))))
    (define gx#core-context-root
      (lambda _g128646_
        (let ((_g128647_ (##length _g128646_)))
          (cond ((##fx= _g128647_ 0) (apply gx#core-context-root__0 _g128646_))
                ((##fx= _g128647_ 1) (apply gx#core-context-root__% _g128646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g128646_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx125768%_ . _%ignore125769%_)
        (let ((_%$e125771%_ (gx#current-expander-allow-rebind?)))
          (if _%$e125771%_
              _%$e125771%_
              (if (##structure-instance-of? _%ctx125768%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx125768%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx125768%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx125778%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx125778%_))))
    (define gx#core-context-rebind?
      (lambda _g128648_
        (let ((_g128649_ (##length _g128648_)))
          (cond ((##fx= _g128649_ 0)
                 (apply gx#core-context-rebind?__0 _g128648_))
                ((##fx= _g128649_ 1)
                 (apply gx#core-context-rebind?__% _g128648_))
                ((##fx>= _g128649_ 1)
                 (apply gx#core-context-rebind?__% _g128648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g128648_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx125751%_)
        (let ((_%$e125753%_ (gx#core-context-top__1 _%ctx125751%_)))
          (if _%$e125753%_
              ((lambda (_%ctx125756%_)
                 (if (##structure-instance-of?
                      _%ctx125756%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx125756%_ '6 '#f '#f)
                     '#f))
               _%$e125753%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx125763%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx125763%_))))
    (define gx#core-context-namespace
      (lambda _g128650_
        (let ((_g128651_ (##length _g128650_)))
          (cond ((##fx= _g128651_ 0)
                 (apply gx#core-context-namespace__0 _g128650_))
                ((##fx= _g128651_ 1)
                 (apply gx#core-context-namespace__% _g128650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g128650_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind125737%_ _%is?125738%_)
        (if (##structure-direct-instance-of?
             _%bind125737%_
             'gx#syntax-binding::t)
            (_%is?125738%_
             (##unchecked-structure-ref _%bind125737%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind125743%_)
        (let ((_%is?125745%_ gx#expander?))
          (gx#expander-binding?__% _%bind125743%_ _%is?125745%_))))
    (define gx#expander-binding?
      (lambda _g128652_
        (let ((_g128653_ (##length _g128652_)))
          (cond ((##fx= _g128653_ 1) (apply gx#expander-binding?__0 _g128652_))
                ((##fx= _g128653_ 2) (apply gx#expander-binding?__% _g128652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g128652_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind125734%_)
        (gx#expander-binding?__% _%bind125734%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind125732%_)
        (gx#expander-binding?__% _%bind125732%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind125726%_)
        (letrec ((_%direct-special-form?125728%_
                  (lambda (_%obj125730%_)
                    (##structure-direct-instance-of?
                     _%obj125730%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind125726%_
           _%direct-special-form?125728%_))))
    (define gx#special-form-binding?
      (lambda (_%bind125724%_)
        (gx#expander-binding?__% _%bind125724%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind125715%_)
        (letrec ((_%feature?125717%_
                  (lambda (_%e125719%_)
                    (let ((_%$e125721%_
                           (##structure-instance-of?
                            _%e125719%_
                            'gx#feature-expander::t)))
                      (if _%$e125721%_
                          _%$e125721%_
                          (##structure-instance-of?
                           _%e125719%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind125715%_ _%feature?125717%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind125713%_)
        (gx#expander-binding?__% _%bind125713%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id125700%_ _%bound?125701%_)
        (if (gx#identifier? _%id125700%_)
            (_%bound?125701%_ (gx#resolve-identifier__0 _%id125700%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id125706%_)
        (let ((_%bound?125708%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id125706%_ _%bound?125708%_))))
    (define gx#core-bound-identifier?
      (lambda _g128654_
        (let ((_g128655_ (##length _g128654_)))
          (cond ((##fx= _g128655_ 1)
                 (apply gx#core-bound-identifier?__0 _g128654_))
                ((##fx= _g128655_ 2)
                 (apply gx#core-bound-identifier?__% _g128654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g128654_))))))
    (define gx#core-identifier=?
      (lambda (_%x125690%_ _%y125691%_)
        (letrec ((_%y=?125693%_
                  (lambda (_%xid125697%_)
                    ((if (list? _%y125691%_) memq eq?)
                     _%xid125697%_
                     _%y125691%_))))
          (let ((_%bind125695%_ (gx#resolve-identifier__0 _%x125690%_)))
            (if (##structure-instance-of? _%bind125695%_ 'gx#binding::t)
                (_%y=?125693%_
                 (##unchecked-structure-ref _%bind125695%_ '1 '#f '#f))
                (_%y=?125693%_ (gx#stx-e _%x125690%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e125688%_)
        (if (interned-symbol? _%e125688%_)
            (string-index__0 (symbol->string _%e125688%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx125641%_ _%src125642%_ _%ctx125643%_ _%marks125644%_)
        (if (##structure? _%stx125641%_)
            (let ((_%$e125646%_ (gx#sealed-syntax-unwrap _%stx125641%_)))
              (if _%$e125646%_
                  _%$e125646%_
                  (if (gx#identifier? _%stx125641%_)
                      (let ((_%id125650%_
                             (gx#stx-unwrap__% _%stx125641%_ _%marks125644%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id125650%_ '1 '#f '#f)
                         (let ((_%$e125652%_
                                (##unchecked-structure-ref
                                 _%id125650%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e125652%_ _%$e125652%_ _%src125642%_))
                         _%ctx125643%_
                         (##unchecked-structure-ref _%id125650%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx125641%_)
                       (let ((_%$e125656%_ (gx#stx-source _%stx125641%_)))
                         (if _%$e125656%_ _%$e125656%_ _%src125642%_))
                       _%ctx125643%_
                       (reverse _%marks125644%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx125641%_
             _%src125642%_
             _%ctx125643%_
             (reverse _%marks125644%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx125662%_)
        (let* ((_%src125664%_ '#f)
               (_%ctx125666%_ (gx#current-expander-context))
               (_%marks125668%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx125662%_
           _%src125664%_
           _%ctx125666%_
           _%marks125668%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx125670%_ _%src125671%_)
        (let* ((_%ctx125673%_ (gx#current-expander-context))
               (_%marks125675%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx125670%_
           _%src125671%_
           _%ctx125673%_
           _%marks125675%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx125677%_ _%src125678%_ _%ctx125679%_)
        (let ((_%marks125681%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx125677%_
           _%src125678%_
           _%ctx125679%_
           _%marks125681%_))))
    (define gx#core-quote-syntax
      (lambda _g128656_
        (let ((_g128657_ (##length _g128656_)))
          (cond ((##fx= _g128657_ 1) (apply gx#core-quote-syntax__0 _g128656_))
                ((##fx= _g128657_ 2) (apply gx#core-quote-syntax__1 _g128656_))
                ((##fx= _g128657_ 3) (apply gx#core-quote-syntax__2 _g128656_))
                ((##fx= _g128657_ 4) (apply gx#core-quote-syntax__% _g128656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g128656_))))))
    (define gx#core-cons
      (lambda (_%hd125637%_ _%tl125638%_)
        (cons (gx#core-quote-syntax__0 _%hd125637%_) _%tl125638%_)))
    (define gx#core-list
      (lambda (_%hd125634%_ . _%rest125635%_)
        (cons (gx#core-quote-syntax__0 _%hd125634%_) _%rest125635%_)))
    (define gx#core-cons*
      (lambda (_%hd125631%_ . _%rest125632%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd125631%_) _%rest125632%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path125600%_ _%rel125601%_)
        (let ((_%path125618%_ (gx#stx-e _%stx-path125600%_))
              (_%reldir125619%_
               (let _%lp125603%_ ((_%relsrc125605%_
                                   (let ((_%$e125615%_
                                          (gx#stx-source _%stx-path125600%_)))
                                     (if _%$e125615%_
                                         _%$e125615%_
                                         _%rel125601%_))))
                 (if (##structure-instance-of? _%relsrc125605%_ 'gerbil#AST::t)
                     (_%lp125603%_
                      (let ((_%$e125608%_ (gx#stx-source _%relsrc125605%_)))
                        (if _%$e125608%_
                            _%$e125608%_
                            (gx#stx-e _%relsrc125605%_))))
                     (if (source-location-path? _%relsrc125605%_)
                         (path-directory
                          (source-location-path _%relsrc125605%_))
                         (if (string? _%relsrc125605%_)
                             (path-directory _%relsrc125605%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path125618%_ (path-normalize _%reldir125619%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path125624%_)
        (let ((_%rel125626%_ '#f))
          (gx#core-resolve-path__% _%stx-path125624%_ _%rel125626%_))))
    (define gx#core-resolve-path
      (lambda _g128658_
        (let ((_g128659_ (##length _g128658_)))
          (cond ((##fx= _g128659_ 1) (apply gx#core-resolve-path__0 _g128658_))
                ((##fx= _g128659_ 2) (apply gx#core-resolve-path__% _g128658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g128658_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr125556%_ _%ctx125557%_)
        (let* ((_%repr125558125565%_ _%repr125556%_)
               (_%E125560125569%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr125558125565%_
                         '([phi . subs]))
                  '#!void))
               (_%K125561125577%_
                (lambda (_%subs125572%_ _%phi125573%_)
                  (let ((_%subst125575%_
                         (if (null? _%subs125572%_)
                             '#f
                             (list->hash-table-eq _%subs125572%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst125575%_
                     _%ctx125557%_
                     _%phi125573%_
                     '#f)))))
          (if (pair? _%repr125558125565%_)
              (let ((_%hd125562125580%_ (##car _%repr125558125565%_))
                    (_%tl125563125582%_ (##cdr _%repr125558125565%_)))
                (let* ((_%phi125585%_ _%hd125562125580%_)
                       (_%subs125587%_ _%tl125563125582%_))
                  (_%K125561125577%_ _%subs125587%_ _%phi125585%_)))
              (_%E125560125569%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr125592%_)
        (let ((_%ctx125594%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr125592%_ _%ctx125594%_))))
    (define gx#core-deserialize-mark
      (lambda _g128660_
        (let ((_g128661_ (##length _g128660_)))
          (cond ((##fx= _g128661_ 1)
                 (apply gx#core-deserialize-mark__0 _g128660_))
                ((##fx= _g128661_ 2)
                 (apply gx#core-deserialize-mark__% _g128660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g128660_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx125553%_)
        (gx#stx-rewrap _%stx125553%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx125551%_)
        (gx#stx-unwrap__% _%stx125551%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx125521%_)
        (let* ((_%g125522125530%_ (gx#current-expander-marks))
               (_%else125524125538%_ (lambda () _%stx125521%_))
               (_%K125526125543%_
                (lambda (_%hd125541%_)
                  (gx#stx-apply-mark _%stx125521%_ _%hd125541%_))))
          (if (pair? _%g125522125530%_)
              (let* ((_%hd125527125546%_ (##car _%g125522125530%_))
                     (_%hd125549%_ _%hd125527125546%_))
                (_%K125526125543%_ _%hd125549%_))
              (_%else125524125538%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx125506%_ _%E125507%_)
        (let ((_%bind125509%_ (gx#resolve-identifier__0 _%stx125506%_)))
          (if (##structure-direct-instance-of?
               _%bind125509%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind125509%_ '4 '#f '#f)
              (_%E125507%_ _%stx125506%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx125514%_)
        (let ((_%E125516%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx125514%_ _%E125516%_))))
    (define gx#syntax-local-e
      (lambda _g128662_
        (let ((_g128663_ (##length _g128662_)))
          (cond ((##fx= _g128663_ 1) (apply gx#syntax-local-e__0 _g128662_))
                ((##fx= _g128663_ 2) (apply gx#syntax-local-e__% _g128662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g128662_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx125490%_ _%E125491%_)
        (let ((_%e125493%_ (gx#syntax-local-e__% _%stx125490%_ _%E125491%_)))
          (if (##structure-instance-of? _%e125493%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e125493%_ '1 '#f '#f)
              _%e125493%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx125498%_)
        (let ((_%E125500%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx125498%_ _%E125500%_))))
    (define gx#syntax-local-value
      (lambda _g128664_
        (let ((_g128665_ (##length _g128664_)))
          (cond ((##fx= _g128665_ 1)
                 (apply gx#syntax-local-value__0 _g128664_))
                ((##fx= _g128665_ 2)
                 (apply gx#syntax-local-value__% _g128664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g128664_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx125487%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx125487%_)))))
