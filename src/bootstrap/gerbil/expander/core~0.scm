(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1756156300)
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
      (lambda _%$args129556%_
        (apply make-instance gx#expander-context::t _%$args129556%_)))
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
      (lambda _%$args129553%_
        (apply make-instance gx#root-context::t _%$args129553%_)))
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
      (lambda _%$args129550%_
        (apply make-instance gx#phi-context::t _%$args129550%_)))
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
      (lambda _%$args129547%_
        (apply make-instance gx#top-context::t _%$args129547%_)))
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
      (lambda _%$args129544%_
        (apply make-instance gx#module-context::t _%$args129544%_)))
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
      (lambda _%$args129541%_
        (apply make-instance gx#prelude-context::t _%$args129541%_)))
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
      (lambda _%$args129538%_
        (apply make-instance gx#local-context::t _%$args129538%_)))
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
      (lambda (_%self129511%_ _%id129512%_ _%super129513%_)
        (let ((_%self129516%_ _%self129511%_))
          (if (##fx< '3 (##structure-length _%self129516%_))
              (begin
                (##unchecked-structure-set!
                 _%self129516%_
                 _%id129512%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129516%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129516%_
                 _%super129513%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129516%_
                     '3
                     (##structure-length _%self129516%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self129529%_ _%id129530%_)
        (let ((_%super129532%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self129529%_
           _%id129530%_
           _%super129532%_))))
    (define gx#phi-context:::init!
      (lambda _g129598_
        (let ((_g129599_ (##length _g129598_)))
          (cond ((##fx= _g129599_ 2)
                 (apply gx#phi-context:::init!__0 _g129598_))
                ((##fx= _g129599_ 3)
                 (apply gx#phi-context:::init!__% _g129598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g129598_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self129364%_ _%super129365%_)
        (let ((_%self129368%_ _%self129364%_))
          (if (##fx< '3 (##structure-length _%self129368%_))
              (begin
                (##unchecked-structure-set!
                 _%self129368%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129368%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129368%_
                 _%super129365%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129368%_
                     '3
                     (##structure-length _%self129368%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self129381%_)
        (let ((_%super129383%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self129381%_ _%super129383%_))))
    (define gx#local-context:::init!
      (lambda _g129600_
        (let ((_g129601_ (##length _g129600_)))
          (cond ((##fx= _g129601_ 1)
                 (apply gx#local-context:::init!__0 _g129600_))
                ((##fx= _g129601_ 2)
                 (apply gx#local-context:::init!__% _g129600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g129600_))))))
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
      (lambda _%$args129238%_
        (apply make-instance gx#binding::t _%$args129238%_)))
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
      (lambda _%$args129235%_
        (apply make-instance gx#runtime-binding::t _%$args129235%_)))
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
      (lambda _%$args129232%_
        (apply make-instance gx#local-binding::t _%$args129232%_)))
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
      (lambda _%$args129229%_
        (apply make-instance gx#top-binding::t _%$args129229%_)))
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
      (lambda _%$args129226%_
        (apply make-instance gx#module-binding::t _%$args129226%_)))
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
      (lambda _%$args129223%_
        (apply make-instance gx#extern-binding::t _%$args129223%_)))
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
      (lambda _%$args129220%_
        (apply make-instance gx#syntax-binding::t _%$args129220%_)))
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
      (lambda _%$args129217%_
        (apply make-instance gx#import-binding::t _%$args129217%_)))
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
      (lambda _%$args129214%_
        (apply make-instance gx#alias-binding::t _%$args129214%_)))
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
      (lambda _%$args129211%_
        (apply make-instance gx#expander::t _%$args129211%_)))
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
      (lambda _%$args129208%_
        (apply make-instance gx#core-expander::t _%$args129208%_)))
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
      (lambda _%$args129205%_
        (apply make-instance gx#expression-form::t _%$args129205%_)))
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
      (lambda _%$args129202%_
        (apply make-instance gx#special-form::t _%$args129202%_)))
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
      (lambda _%$args129199%_
        (apply make-instance gx#definition-form::t _%$args129199%_)))
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
      (lambda _%$args129196%_
        (apply make-instance gx#top-special-form::t _%$args129196%_)))
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
      (lambda _%$args129193%_
        (apply make-instance gx#module-special-form::t _%$args129193%_)))
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
      (lambda _%$args129190%_
        (apply make-instance gx#feature-expander::t _%$args129190%_)))
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
      (lambda _%$args129187%_
        (apply make-instance gx#private-feature-expander::t _%$args129187%_)))
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
      (lambda _%$args129184%_
        (apply make-instance gx#reserved-expander::t _%$args129184%_)))
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
      (lambda _%$args129181%_
        (apply make-instance gx#macro-expander::t _%$args129181%_)))
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
      (lambda _%$args129178%_
        (apply make-instance gx#rename-macro-expander::t _%$args129178%_)))
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
      (lambda _%$args129175%_
        (apply make-instance gx#user-expander::t _%$args129175%_)))
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
      (lambda _%$args129172%_
        (apply make-instance gx#expander-mark::t _%$args129172%_)))
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
      (lambda (_%ctx129156%_
               _%message129157%_
               _%stx129158%_
               .
               _%details129159%_)
        (let ((_%ctx129170%_
               (let ((_%$e129161%_ _%ctx129156%_))
                 (if _%$e129161%_
                     _%$e129161%_
                     (let ((_%$e129164%_ (gx#core-context-top__0)))
                       (if _%$e129164%_
                           ((lambda (_%ctx129167%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx129167%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e129164%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message129157%_
                  (cons _%stx129158%_ _%details129159%_)
                  _%ctx129170%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx129143%_ _%expression?129144%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx129143%_ _%expression?129144%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx129149%_)
        (let ((_%expression?129151%_ '#f))
          (gx#eval-syntax__% _%stx129149%_ _%expression?129151%_))))
    (define gx#eval-syntax
      (lambda _g129602_
        (let ((_g129603_ (##length _g129602_)))
          (cond ((##fx= _g129603_ 1) (apply gx#eval-syntax__0 _g129602_))
                ((##fx= _g129603_ 2) (apply gx#eval-syntax__% _g129602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g129602_))))))
    (define gx#eval-syntax*
      (lambda (_%stx129140%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx129140%_))))
    (define gx#core-expand__%
      (lambda (_%stx129127%_ _%expression?129128%_)
        (if _%expression?129128%_
            (gx#core-expand-expression _%stx129127%_)
            (gx#core-expand-top _%stx129127%_))))
    (define gx#core-expand__0
      (lambda (_%stx129133%_)
        (let ((_%expression?129135%_ '#f))
          (gx#core-expand__% _%stx129133%_ _%expression?129135%_))))
    (define gx#core-expand
      (lambda _g129604_
        (let ((_g129605_ (##length _g129604_)))
          (cond ((##fx= _g129605_ 1) (apply gx#core-expand__0 _g129604_))
                ((##fx= _g129605_ 2) (apply gx#core-expand__% _g129604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g129604_))))))
    (define gx#core-expand-top
      (lambda (_%stx129094%_)
        (let* ((_%stx129096%_ (gx#core-expand*__0 _%stx129094%_))
               (_%e129097129104%_ _%stx129096%_)
               (_%E129099129108%_
                (lambda () (gx#core-expand-expression _%stx129096%_)))
               (_%E129098129122%_
                (lambda ()
                  (if (gx#stx-pair? _%e129097129104%_)
                      (let ((_%e129100129112%_
                             (gx#syntax-e _%e129097129104%_)))
                        (let ((_%hd129101129115%_ (##car _%e129100129112%_))
                              (_%tl129102129117%_ (##cdr _%e129100129112%_)))
                          (let ((_%form129120%_ _%hd129101129115%_))
                            (if (gx#core-bound-identifier?__0 _%form129120%_)
                                _%stx129096%_
                                (_%E129099129108%_)))))
                      (_%E129099129108%_)))))
          (_%E129098129122%_))))
    (define gx#core-expand-expression
      (lambda (_%stx129026%_)
        (letrec ((_%sealed-expression?129028%_
                  (lambda (_%hd129064%_)
                    (if (gx#sealed-syntax? _%hd129064%_)
                        (let* ((_%e129065129072%_ _%hd129064%_)
                               (_%E129067129076%_ (lambda () '#f))
                               (_%E129066129090%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e129065129072%_)
                                      (let ((_%e129068129080%_
                                             (gx#syntax-e _%e129065129072%_)))
                                        (let ((_%hd129069129083%_
                                               (##car _%e129068129080%_))
                                              (_%tl129070129085%_
                                               (##cdr _%e129068129080%_)))
                                          (let ((_%form129088%_
                                                 _%hd129069129083%_))
                                            (gx#core-bound-identifier?__%
                                             _%form129088%_
                                             gx#expression-form-binding?))))
                                      (_%E129067129076%_)))))
                          (_%E129066129090%_))
                        '#f)))
                 (_%illegal-expression129029%_
                  (lambda (_%hd129061%_ . _%_129062%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx129026%_
                     _%hd129061%_)))
                 (_%expand-e129030%_
                  (lambda (_%form129053%_ _%hd129054%_)
                    (let ((_%bind129056%_
                           (if (##structure-instance-of?
                                _%form129053%_
                                'gx#binding::t)
                               _%form129053%_
                               (gx#resolve-identifier__0 _%form129053%_))))
                      (if (gx#core-expander-binding? _%bind129056%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind129056%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd129054%_
                            (gx#stx-source _%stx129026%_)))
                          (if (##structure-direct-instance-of?
                               _%bind129056%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind129056%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd129054%_
                                 (gx#stx-source _%stx129026%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx129026%_
                               _%form129053%_)))))))
          (let ((_%hd129032%_ (gx#core-expand-head _%stx129026%_)))
            (if (_%sealed-expression?129028%_ _%hd129032%_)
                _%hd129032%_
                (if (gx#stx-pair? _%hd129032%_)
                    (let* ((_%form129036%_ (gx#stx-car _%hd129032%_))
                           (_%bind129038%_
                            (if (gx#identifier? _%form129036%_)
                                (gx#resolve-identifier__0 _%form129036%_)
                                '#f)))
                      (if (or (not _%bind129038%_)
                              (not (gx#core-expander-binding? _%bind129038%_)))
                          (_%expand-e129030%_
                           '%%app
                           (cons '%%app _%hd129032%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind129038%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd129032%_
                               _%illegal-expression129029%_)
                              (if (gx#expression-form-binding? _%bind129038%_)
                                  (_%expand-e129030%_
                                   _%bind129038%_
                                   _%hd129032%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind129038%_)
                                      (gx#core-expand-expression
                                       (_%expand-e129030%_
                                        _%bind129038%_
                                        _%hd129032%_))
                                      (_%illegal-expression129029%_
                                       _%hd129032%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd129032%_)
                        (_%illegal-expression129029%_ _%hd129032%_)
                        (if (gx#identifier? _%hd129032%_)
                            (_%expand-e129030%_
                             '%%ref
                             (cons '%%ref (cons _%hd129032%_ '())))
                            (if (gx#stx-datum? _%hd129032%_)
                                (_%expand-e129030%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd129032%_ '())))
                                (_%illegal-expression129029%_
                                 _%hd129032%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx129021%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx129024%_ (gx#core-expand-expression _%stx129021%_)))
             (values _%stx129024%_ (gx#eval-syntax* _%stx129024%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx129002%_ _%stop?129003%_)
        (let _%lp129005%_ ((_%stx129007%_ _%stx129002%_))
          (if (_%stop?129003%_ _%stx129007%_)
              _%stx129007%_
              (let ((_%rstx129009%_ (gx#core-expand1 _%stx129007%_)))
                (if (eq? _%stx129007%_ _%rstx129009%_)
                    _%stx129007%_
                    (_%lp129005%_ _%rstx129009%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx129014%_)
        (let ((_%stop?129016%_ false))
          (gx#core-expand*__% _%stx129014%_ _%stop?129016%_))))
    (define gx#core-expand*
      (lambda _g129606_
        (let ((_g129607_ (##length _g129606_)))
          (cond ((##fx= _g129607_ 1) (apply gx#core-expand*__0 _g129606_))
                ((##fx= _g129607_ 2) (apply gx#core-expand*__% _g129606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g129606_))))))
    (define gx#core-expand1
      (lambda (_%stx128954%_)
        (letrec ((_%step128956%_
                  (lambda (_%hd128993%_)
                    (let ((_%bind128995%_
                           (gx#resolve-identifier__0 _%hd128993%_)))
                      (if (##structure-instance-of?
                           _%bind128995%_
                           'gx#runtime-binding::t)
                          _%stx128954%_
                          (if (##structure-direct-instance-of?
                               _%bind128995%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind128995%_
                                '4
                                '#f
                                '#f)
                               _%stx128954%_)
                              (if (not _%bind128995%_)
                                  _%stx128954%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx128954%_))))))))
          (let* ((_%e128957128965%_ _%stx128954%_)
                 (_%E128963128969%_ (lambda () _%stx128954%_))
                 (_%E128959128975%_
                  (lambda ()
                    (let ((_%hd128973%_ _%e128957128965%_))
                      (if (gx#identifier? _%hd128973%_)
                          (_%step128956%_ _%hd128973%_)
                          (_%E128963128969%_)))))
                 (_%E128958128989%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128957128965%_)
                        (let ((_%e128960128979%_
                               (gx#syntax-e _%e128957128965%_)))
                          (let ((_%hd128961128982%_ (##car _%e128960128979%_))
                                (_%tl128962128984%_ (##cdr _%e128960128979%_)))
                            (let ((_%hd128987%_ _%hd128961128982%_))
                              (if (gx#identifier? _%hd128987%_)
                                  (_%step128956%_ _%hd128987%_)
                                  (_%E128959128975%_)))))
                        (_%E128959128975%_)))))
            (_%E128958128989%_)))))
    (define gx#core-expand-head
      (lambda (_%stx128920%_)
        (letrec ((_%stop?128922%_
                  (lambda (_%stx128924%_)
                    (let* ((_%e128925128932%_ _%stx128924%_)
                           (_%E128927128936%_ (lambda () '#f))
                           (_%E128926128950%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128925128932%_)
                                  (let ((_%e128928128940%_
                                         (gx#syntax-e _%e128925128932%_)))
                                    (let ((_%hd128929128943%_
                                           (##car _%e128928128940%_))
                                          (_%tl128930128945%_
                                           (##cdr _%e128928128940%_)))
                                      (let ((_%hd128948%_ _%hd128929128943%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd128948%_))))
                                  (_%E128927128936%_)))))
                      (_%E128926128950%_)))))
          (gx#core-expand*__% _%stx128920%_ _%stop?128922%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx128726%_
               _%expand-special128727%_
               _%begin-form128728%_
               _%expand-e128729%_)
        (letrec ((_%expand-splice128731%_
                  (lambda (_%hd128894%_
                           _%body128895%_
                           _%rest128896%_
                           _%r128897%_)
                    (if (gx#stx-list? _%body128895%_)
                        (_%K128735%_
                         (gx#stx-foldr cons _%rest128896%_ _%body128895%_)
                         _%r128897%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx128726%_
                         _%hd128894%_))))
                 (_%expand-cond-expand128732%_
                  (lambda (_%hd128890%_ _%rest128891%_ _%r128892%_)
                    (_%K128735%_
                     (cons (gx#core-expand-cond-expand% _%hd128890%_)
                           _%rest128891%_)
                     _%r128892%_)))
                 (_%expand-include128733%_
                  (lambda (_%hd128839%_ _%rest128840%_ _%r128841%_)
                    (let* ((_%e128842128852%_ _%hd128839%_)
                           (_%E128844128856%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e128842128852%_)))
                           (_%E128843128886%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128842128852%_)
                                  (let ((_%e128845128860%_
                                         (gx#syntax-e _%e128842128852%_)))
                                    (let ((_%hd128846128863%_
                                           (##car _%e128845128860%_))
                                          (_%tl128847128865%_
                                           (##cdr _%e128845128860%_)))
                                      (if (gx#stx-pair? _%tl128847128865%_)
                                          (let ((_%e128848128868%_
                                                 (gx#syntax-e
                                                  _%tl128847128865%_)))
                                            (let ((_%hd128849128871%_
                                                   (##car _%e128848128868%_))
                                                  (_%tl128850128873%_
                                                   (##cdr _%e128848128868%_)))
                                              (let ((_%path128876%_
                                                     _%hd128849128871%_))
                                                (if (gx#stx-null?
                                                     _%tl128850128873%_)
                                                    (if (gx#stx-string?
                                                         _%path128876%_)
                                                        (let* ((_%rpath128878%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path128876%_
                         (gx#stx-source _%hd128839%_)))
                       (_%block128880%_
                        (gx#core-expand-include%__%
                         _%hd128839%_
                         _%rpath128878%_))
                       (_%rbody128883%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block128880%_
                            _%expand-special128727%_
                            '#f
                            _%expand-e128729%_))
                         gx#current-expander-path
                         (cons _%rpath128878%_ (gx#current-expander-path)))))
                  (_%K128735%_
                   _%rest128840%_
                   (__foldr1 cons _%r128841%_ _%rbody128883%_)))
                (_%E128844128856%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128844128856%_)))))
                                          (_%E128844128856%_))))
                                  (_%E128844128856%_)))))
                      (_%E128843128886%_))))
                 (_%expand-expression128734%_
                  (lambda (_%hd128835%_ _%rest128836%_ _%r128837%_)
                    (_%K128735%_
                     _%rest128836%_
                     (cons (_%expand-e128729%_ _%hd128835%_) _%r128837%_))))
                 (_%K128735%_
                  (lambda (_%rest128765%_ _%r128766%_)
                    (let* ((_%e128767128774%_ _%rest128765%_)
                           (_%E128769128778%_
                            (lambda ()
                              (if _%begin-form128728%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form128728%_
                                    (reverse _%r128766%_))
                                   (gx#stx-source _%stx128726%_))
                                  _%r128766%_)))
                           (_%E128768128831%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128767128774%_)
                                  (let ((_%e128770128782%_
                                         (gx#syntax-e _%e128767128774%_)))
                                    (let ((_%hd128771128785%_
                                           (##car _%e128770128782%_))
                                          (_%tl128772128787%_
                                           (##cdr _%e128770128782%_)))
                                      (let* ((_%hd128790%_ _%hd128771128785%_)
                                             (_%rest128792%_
                                              _%tl128772128787%_)
                                             (_%hd128794%_
                                              (gx#core-expand-head
                                               _%hd128790%_))
                                             (_%e128795128802%_ _%hd128794%_)
                                             (_%E128797128806%_
                                              (lambda ()
                                                (_%expand-expression128734%_
                                                 _%hd128794%_
                                                 _%rest128792%_
                                                 _%r128766%_)))
                                             (_%E128796128827%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e128795128802%_)
                                                    (let ((_%e128798128810%_
                                                           (gx#syntax-e
                                                            _%e128795128802%_)))
                                                      (let ((_%hd128799128813%_
                                                             (##car _%e128798128810%_))
                                                            (_%tl128800128815%_
                                                             (##cdr _%e128798128810%_)))
                                                        (let* ((_%form128818%_
                                                                _%hd128799128813%_)
                                                               (_%body128820%_
                                                                _%tl128800128815%_)
                                                               (_%bind128822%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form128818%_)
                            (gx#resolve-identifier__0 _%form128818%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind128822%_)
                      (let ((_%$e128824%_
                             (##unchecked-structure-ref
                              _%bind128822%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e128824%_)
                            (_%expand-splice128731%_
                             _%hd128794%_
                             _%body128820%_
                             _%rest128792%_
                             _%r128766%_)
                            (if (eq? '%#cond-expand _%$e128824%_)
                                (_%expand-cond-expand128732%_
                                 _%hd128794%_
                                 _%rest128792%_
                                 _%r128766%_)
                                (if (eq? '%#include _%$e128824%_)
                                    (_%expand-include128733%_
                                     _%hd128794%_
                                     _%rest128792%_
                                     _%r128766%_)
                                    (_%expand-special128727%_
                                     _%hd128794%_
                                     _%K128735%_
                                     _%rest128792%_
                                     _%r128766%_)))))
                      (_%expand-expression128734%_
                       _%hd128794%_
                       _%rest128792%_
                       _%r128766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128797128806%_)))))
                                        (_%E128796128827%_))))
                                  (_%E128769128778%_)))))
                      (_%E128768128831%_)))))
          (let* ((_%e128736128743%_ _%stx128726%_)
                 (_%E128738128747%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e128736128743%_)))
                 (_%E128737128761%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128736128743%_)
                        (let ((_%e128739128751%_
                               (gx#syntax-e _%e128736128743%_)))
                          (let ((_%hd128740128754%_ (##car _%e128739128751%_))
                                (_%tl128741128756%_ (##cdr _%e128739128751%_)))
                            (let ((_%body128759%_ _%tl128741128756%_))
                              (if (gx#stx-list? _%body128759%_)
                                  (_%K128735%_ _%body128759%_ '())
                                  (_%E128738128747%_)))))
                        (_%E128738128747%_)))))
            (_%E128737128761%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx128902%_ _%expand-special128903%_)
        (let* ((_%begin-form128905%_ '%#begin)
               (_%expand-e128907%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx128902%_
           _%expand-special128903%_
           _%begin-form128905%_
           _%expand-e128907%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx128909%_ _%expand-special128910%_ _%begin-form128911%_)
        (let ((_%expand-e128913%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx128909%_
           _%expand-special128910%_
           _%begin-form128911%_
           _%expand-e128913%_))))
    (define gx#core-expand-block
      (lambda _g129608_
        (let ((_g129609_ (##length _g129608_)))
          (cond ((##fx= _g129609_ 2) (apply gx#core-expand-block__0 _g129608_))
                ((##fx= _g129609_ 3) (apply gx#core-expand-block__1 _g129608_))
                ((##fx= _g129609_ 4) (apply gx#core-expand-block__% _g129608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g129608_))))))
    (define gx#core-expand-block*
      (lambda (_%stx128674%_ _%expand-special128675%_)
        (let* ((_%g128676128687%_
                (gx#core-expand-block__1
                 _%stx128674%_
                 _%expand-special128675%_
                 '#f))
               (_%E128680128691%_
                (lambda ()
                  (error '"No clause matching"
                         _%g128676128687%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K128685128722%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx128674%_)))
                (_%K128682128708%_ (lambda (_%expr128706%_) _%expr128706%_))
                (_%K128681128697%_
                 (lambda (_%body128695%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body128695%_))
                    (gx#stx-source _%stx128674%_)))))
            (let ((_%try-match128678128718%_
                   (lambda ()
                     (if (pair? _%g128676128687%_)
                         (let ((_%tl128684128713%_ (##cdr _%g128676128687%_))
                               (_%hd128683128711%_ (##car _%g128676128687%_)))
                           (if (null? _%tl128684128713%_)
                               (let ((_%expr128716%_ _%hd128683128711%_))
                                 (_%K128682128708%_ _%expr128716%_))
                               (let ((_%body128700%_ _%g128676128687%_))
                                 (_%K128681128697%_ _%body128700%_))))
                         (let ((_%body128700%_ _%g128676128687%_))
                           (_%K128681128697%_ _%body128700%_))))))
              (if (null? _%g128676128687%_)
                  (_%K128685128722%_)
                  (_%try-match128678128718%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx128499%_)
        (letrec ((_%satisfied?128501%_
                  (lambda (_%condition128602%_)
                    (let* ((_%e128603128618%_ _%condition128602%_)
                           (_%E128613128622%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e128603128618%_)))
                           (_%E128606128641%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128603128618%_)
                                  (let ((_%e128614128626%_
                                         (gx#syntax-e _%e128603128618%_)))
                                    (let ((_%hd128615128629%_
                                           (##car _%e128614128626%_))
                                          (_%tl128616128631%_
                                           (##cdr _%e128614128626%_)))
                                      (let* ((_%combinator128634%_
                                              _%hd128615128629%_)
                                             (_%body128636%_
                                              _%tl128616128631%_))
                                        (if (gx#stx-list? _%body128636%_)
                                            (let ((_%$e128638%_
                                                   (gx#stx-e
                                                    _%combinator128634%_)))
                                              (if (eq? 'not _%$e128638%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?128501%_
                                                        _%body128636%_))
                                                  (if (eq? 'and _%$e128638%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?128501%_
                                                       _%body128636%_)
                                                      (if (eq? 'or
                                                               _%$e128638%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?128501%_
                                                           _%body128636%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e128638%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body128636%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx128499%_
                       _%combinator128634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E128613128622%_)))))
                                  (_%E128613128622%_))))
                           (_%E128605128664%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128603128618%_)
                                  (let ((_%e128607128645%_
                                         (gx#syntax-e _%e128603128618%_)))
                                    (let ((_%hd128608128648%_
                                           (##car _%e128607128645%_))
                                          (_%tl128609128650%_
                                           (##cdr _%e128607128645%_)))
                                      (if (and (gx#identifier?
                                                _%hd128608128648%_)
                                               (gx#core-identifier=?
                                                _%hd128608128648%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl128609128650%_)
                                              (let ((_%e128610128653%_
                                                     (gx#syntax-e
                                                      _%tl128609128650%_)))
                                                (let ((_%hd128611128656%_
                                                       (##car _%e128610128653%_))
                                                      (_%tl128612128658%_
                                                       (##cdr _%e128610128653%_)))
                                                  (let ((_%expr128661%_
                                                         _%hd128611128656%_))
                                                    (if (gx#stx-null?
                                                         _%tl128612128658%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr128661%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E128606128641%_)))))
                                              (_%E128606128641%_))
                                          (_%E128606128641%_))))
                                  (_%E128606128641%_))))
                           (_%E128604128670%_
                            (lambda ()
                              (let ((_%id128668%_ _%e128603128618%_))
                                (if (gx#identifier? _%id128668%_)
                                    (gx#core-bound-identifier?__%
                                     _%id128668%_
                                     gx#feature-binding?)
                                    (_%E128605128664%_))))))
                      (_%E128604128670%_))))
                 (_%loop128502%_
                  (lambda (_%rest128532%_)
                    (let* ((_%e128533128541%_ _%rest128532%_)
                           (_%E128539128545%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e128533128541%_)))
                           (_%E128535128549%_
                            (lambda ()
                              (if (gx#stx-null? _%e128533128541%_)
                                  '()
                                  (_%E128539128545%_))))
                           (_%E128534128598%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128533128541%_)
                                  (let ((_%e128536128553%_
                                         (gx#syntax-e _%e128533128541%_)))
                                    (let ((_%hd128537128556%_
                                           (##car _%e128536128553%_))
                                          (_%tl128538128558%_
                                           (##cdr _%e128536128553%_)))
                                      (let* ((_%hd128561%_ _%hd128537128556%_)
                                             (_%rest128563%_
                                              _%tl128538128558%_)
                                             (_%e128564128571%_ _%hd128561%_)
                                             (_%E128566128575%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e128564128571%_)))
                                             (_%E128565128594%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e128564128571%_)
                                                    (let ((_%e128567128579%_
                                                           (gx#syntax-e
                                                            _%e128564128571%_)))
                                                      (let ((_%hd128568128582%_
                                                             (##car _%e128567128579%_))
                                                            (_%tl128569128584%_
                                                             (##cdr _%e128567128579%_)))
                                                        (let* ((_%condition128587%_
                                                                _%hd128568128582%_)
                                                               (_%body128589%_
                                                                _%tl128569128584%_))
                                                          (if (gx#stx-eq?
                                                               _%condition128587%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest128563%_)
                          _%body128589%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx128499%_
                           _%hd128561%_))
                      (if (_%satisfied?128501%_ _%condition128587%_)
                          _%body128589%_
                          (_%loop128502%_ _%rest128563%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128566128575%_)))))
                                        (_%E128565128594%_))))
                                  (_%E128535128549%_)))))
                      (_%E128534128598%_)))))
          (let* ((_%e128503128510%_ _%stx128499%_)
                 (_%E128505128514%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e128503128510%_)))
                 (_%E128504128528%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128503128510%_)
                        (let ((_%e128506128518%_
                               (gx#syntax-e _%e128503128510%_)))
                          (let ((_%hd128507128521%_ (##car _%e128506128518%_))
                                (_%tl128508128523%_ (##cdr _%e128506128518%_)))
                            (let ((_%clauses128526%_ _%tl128508128523%_))
                              (if (gx#stx-list? _%clauses128526%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop128502%_ _%clauses128526%_))
                                  (_%E128505128514%_)))))
                        (_%E128505128514%_)))))
            (_%E128504128528%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx128442%_ _%rpath128443%_)
        (let* ((_%e128444128454%_ _%stx128442%_)
               (_%E128446128458%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128444128454%_)))
               (_%E128445128485%_
                (lambda ()
                  (if (gx#stx-pair? _%e128444128454%_)
                      (let ((_%e128447128462%_
                             (gx#syntax-e _%e128444128454%_)))
                        (let ((_%hd128448128465%_ (##car _%e128447128462%_))
                              (_%tl128449128467%_ (##cdr _%e128447128462%_)))
                          (if (gx#stx-pair? _%tl128449128467%_)
                              (let ((_%e128450128470%_
                                     (gx#syntax-e _%tl128449128467%_)))
                                (let ((_%hd128451128473%_
                                       (##car _%e128450128470%_))
                                      (_%tl128452128475%_
                                       (##cdr _%e128450128470%_)))
                                  (let ((_%path128478%_ _%hd128451128473%_))
                                    (if (gx#stx-null? _%tl128452128475%_)
                                        (if (gx#stx-string? _%path128478%_)
                                            (let ((_%rpath128483%_
                                                   (let ((_%$e128480%_
                                                          _%rpath128443%_))
                                                     (if _%$e128480%_
                                                         _%$e128480%_
                                                         (gx#core-resolve-path__%
                                                          _%path128478%_
                                                          (gx#stx-source
                                                           _%stx128442%_))))))
                                              (if (member _%rpath128483%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx128442%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath128483%_))
                                                    (gx#stx-source
                                                     _%stx128442%_)))))
                                            (_%E128446128458%_))
                                        (_%E128446128458%_)))))
                              (_%E128446128458%_))))
                      (_%E128446128458%_)))))
          (_%E128445128485%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx128492%_)
        (let ((_%rpath128494%_ '#f))
          (gx#core-expand-include%__% _%stx128492%_ _%rpath128494%_))))
    (define gx#core-expand-include%
      (lambda _g129610_
        (let ((_g129611_ (##length _g129610_)))
          (cond ((##fx= _g129611_ 1)
                 (apply gx#core-expand-include%__0 _g129610_))
                ((##fx= _g129611_ 2)
                 (apply gx#core-expand-include%__% _g129610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g129610_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K128408%_ _%stx128409%_ _%method128410%_)
        (if (procedure? _%K128408%_)
            (let ((_%$e128413%_ (gx#stx-source _%stx128409%_)))
              (if _%$e128413%_
                  ((lambda (_%g128415128417%_)
                     (gx#stx-wrap-source
                      (_%K128408%_ _%stx128409%_)
                      _%g128415128417%_))
                   _%$e128413%_)
                  (_%K128408%_ _%stx128409%_)))
            (let ((_%$e128421%_
                   (bound-method-ref _%K128408%_ _%method128410%_)))
              (if _%$e128421%_
                  ((lambda (_%g128423128425%_)
                     (gx#core-apply-expander__%
                      _%g128423128425%_
                      _%stx128409%_
                      _%method128410%_))
                   _%$e128421%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx128409%_
                   _%method128410%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K128432%_ _%stx128433%_)
        (let ((_%method128435%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K128432%_
           _%stx128433%_
           _%method128435%_))))
    (define gx#core-apply-expander
      (lambda _g129612_
        (let ((_g129613_ (##length _g129612_)))
          (cond ((##fx= _g129613_ 2)
                 (apply gx#core-apply-expander__0 _g129612_))
                ((##fx= _g129613_ 3)
                 (apply gx#core-apply-expander__% _g129612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g129612_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self128393%_ _%stx128394%_)
        (let ((_%self128397%_ _%self128393%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx128394%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self128235%_ _%stx128236%_)
        (let* ((_%self128239%_ _%self128235%_)
               (_%self128248128254%_ _%self128239%_)
               (_%E128250128258%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128248128254%_
                         '((macro-expander K)))
                  '#!void))
               (_%K128251128263%_
                (lambda (_%K128261%_)
                  (gx#core-apply-expander__0 _%K128261%_ _%stx128236%_)))
               (_%e128252128266%_
                (##unchecked-structure-ref _%self128248128254%_ '1 '#f '#f))
               (_%K128269%_ _%e128252128266%_))
          (_%K128251128263%_ _%K128269%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self128077%_ _%stx128078%_)
        (let ((_%self128081%_ _%self128077%_))
          (if (gx#sealed-syntax? _%stx128078%_)
              _%stx128078%_
              (let* ((_%self128090128096%_ _%self128081%_)
                     (_%E128092128100%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self128090128096%_
                               '((core-expander K)))
                        '#!void))
                     (_%K128093128105%_
                      (lambda (_%K128103%_)
                        (gx#core-apply-expander__0 _%K128103%_ _%stx128078%_)))
                     (_%e128094128108%_
                      (##unchecked-structure-ref
                       _%self128090128096%_
                       '1
                       '#f
                       '#f))
                     (_%K128111%_ _%e128094128108%_))
                (_%K128093128105%_ _%K128111%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self127928%_ _%stx127929%_ _%top?127930%_)
        (let ((_%self127933%_ _%self127928%_))
          (if (_%top?127930%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self127933%_
               _%stx127929%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx127929%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self127946%_ _%stx127947%_)
        (let ((_%top?127949%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self127946%_
           _%stx127947%_
           _%top?127949%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g129614_
        (let ((_g129615_ (##length _g129614_)))
          (cond ((##fx= _g129615_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g129614_))
                ((##fx= _g129615_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g129614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g129614_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self127791%_ _%stx127792%_)
        (let ((_%self127795%_ _%self127791%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self127795%_
           _%stx127792%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self127605%_ _%stx127606%_)
        (let* ((_%self127609%_ _%self127605%_)
               (_%self127618127624%_ _%self127609%_)
               (_%E127620127628%_
                (lambda ()
                  (error '"No clause matching"
                         _%self127618127624%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K127621127661%_
                (lambda (_%id127631%_)
                  (let* ((_%e127632127639%_ _%stx127606%_)
                         (_%E127634127643%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e127632127639%_)))
                         (_%E127633127657%_
                          (lambda ()
                            (if (gx#stx-pair? _%e127632127639%_)
                                (let ((_%e127635127647%_
                                       (gx#syntax-e _%e127632127639%_)))
                                  (let ((_%hd127636127650%_
                                         (##car _%e127635127647%_))
                                        (_%tl127637127652%_
                                         (##cdr _%e127635127647%_)))
                                    (let ((_%body127655%_ _%tl127637127652%_))
                                      (gx#core-cons
                                       _%id127631%_
                                       _%body127655%_))))
                                (_%E127634127643%_)))))
                    (_%E127633127657%_))))
               (_%e127622127664%_
                (##unchecked-structure-ref _%self127618127624%_ '1 '#f '#f))
               (_%id127667%_ _%e127622127664%_))
          (_%K127621127661%_ _%id127667%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self127431%_ _%stx127432%_ _%method127433%_)
        (let* ((_%self127434127442%_ _%self127431%_)
               (_%E127436127446%_
                (lambda ()
                  (error '"No clause matching"
                         _%self127434127442%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K127437127453%_
                (lambda (_%phi127449%_ _%ctx127450%_ _%K127451%_)
                  (gx#core-apply-user-macro
                   _%K127451%_
                   _%stx127432%_
                   _%ctx127450%_
                   _%phi127449%_
                   _%method127433%_))))
          (if (##structure-instance-of?
               _%self127434127442%_
               'gx#user-expander::t)
              (let* ((_%e127438127456%_
                      (##unchecked-structure-ref
                       _%self127434127442%_
                       '1
                       '#f
                       '#f))
                     (_%K127459%_ _%e127438127456%_)
                     (_%e127439127461%_
                      (##unchecked-structure-ref
                       _%self127434127442%_
                       '2
                       '#f
                       '#f))
                     (_%ctx127464%_ _%e127439127461%_)
                     (_%e127440127466%_
                      (##unchecked-structure-ref
                       _%self127434127442%_
                       '3
                       '#f
                       '#f))
                     (_%phi127469%_ _%e127440127466%_))
                (_%K127437127453%_ _%phi127469%_ _%ctx127464%_ _%K127459%_))
              (_%E127436127446%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self127474%_ _%stx127475%_)
        (let ((_%method127477%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self127474%_
           _%stx127475%_
           _%method127477%_))))
    (define gx#core-apply-user-expander
      (lambda _g129616_
        (let ((_g129617_ (##length _g129616_)))
          (cond ((##fx= _g129617_ 2)
                 (apply gx#core-apply-user-expander__0 _g129616_))
                ((##fx= _g129617_ 3)
                 (apply gx#core-apply-user-expander__% _g129616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g129616_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K127421%_
               _%stx127422%_
               _%ctx127423%_
               _%phi127424%_
               _%method127425%_)
        (let ((_%mark127427%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx127423%_
                _%phi127424%_
                _%stx127422%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K127421%_
               (gx#stx-apply-mark _%stx127422%_ _%mark127427%_)
               _%method127425%_)
              _%mark127427%_))
           gx#current-expander-marks
           (cons _%mark127427%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx127269%_ _%phi127270%_ _%ctx127271%_)
        (let _%lp127273%_ ((_%bind127275%_
                            (gx#core-resolve-identifier__%
                             _%stx127269%_
                             _%phi127270%_
                             _%ctx127271%_)))
          (if (##structure-direct-instance-of?
               _%bind127275%_
               'gx#import-binding::t)
              (_%lp127273%_
               (##unchecked-structure-ref _%bind127275%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind127275%_
                   'gx#alias-binding::t)
                  (_%lp127273%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind127275%_ '4 '#f '#f)
                    _%phi127270%_
                    _%ctx127271%_))
                  _%bind127275%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx127283%_)
        (let* ((_%phi127285%_ (gx#current-expander-phi))
               (_%ctx127287%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx127283%_
           _%phi127285%_
           _%ctx127287%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx127289%_ _%phi127290%_)
        (let ((_%ctx127292%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx127289%_
           _%phi127290%_
           _%ctx127292%_))))
    (define gx#resolve-identifier
      (lambda _g129618_
        (let ((_g129619_ (##length _g129618_)))
          (cond ((##fx= _g129619_ 1)
                 (apply gx#resolve-identifier__0 _g129618_))
                ((##fx= _g129619_ 2)
                 (apply gx#resolve-identifier__1 _g129618_))
                ((##fx= _g129619_ 3)
                 (apply gx#resolve-identifier__% _g129618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g129618_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx127224%_
               _%val127225%_
               _%rebind?127226%_
               _%phi127227%_
               _%ctx127228%_)
        (let ((_%rebind?127233%_
               (if (not _%rebind?127226%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?127226%_)
                       _%rebind?127226%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx127224%_)
           _%val127225%_
           _%rebind?127233%_
           _%phi127227%_
           _%ctx127228%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx127238%_ _%val127239%_)
        (let* ((_%rebind?127241%_ '#f)
               (_%phi127243%_ (gx#current-expander-phi))
               (_%ctx127245%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127238%_
           _%val127239%_
           _%rebind?127241%_
           _%phi127243%_
           _%ctx127245%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx127247%_ _%val127248%_ _%rebind?127249%_)
        (let* ((_%phi127251%_ (gx#current-expander-phi))
               (_%ctx127253%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127247%_
           _%val127248%_
           _%rebind?127249%_
           _%phi127251%_
           _%ctx127253%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx127255%_ _%val127256%_ _%rebind?127257%_ _%phi127258%_)
        (let ((_%ctx127260%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127255%_
           _%val127256%_
           _%rebind?127257%_
           _%phi127258%_
           _%ctx127260%_))))
    (define gx#bind-identifier!
      (lambda _g129620_
        (let ((_g129621_ (##length _g129620_)))
          (cond ((##fx= _g129621_ 2) (apply gx#bind-identifier!__0 _g129620_))
                ((##fx= _g129621_ 3) (apply gx#bind-identifier!__1 _g129620_))
                ((##fx= _g129621_ 4) (apply gx#bind-identifier!__2 _g129620_))
                ((##fx= _g129621_ 5) (apply gx#bind-identifier!__% _g129620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g129620_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx127190%_ _%phi127191%_ _%ctx127192%_)
        (let _%lp127194%_ ((_%e127196%_ _%stx127190%_)
                           (_%marks127197%_ (gx#current-expander-marks)))
          (if (symbol? _%e127196%_)
              (gx#core-resolve-binding
               _%e127196%_
               _%phi127191%_
               _%phi127191%_
               _%ctx127192%_
               (reverse _%marks127197%_))
              (if (gx#identifier-quote? _%e127196%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e127196%_ '1 '#f '#f)
                   _%phi127191%_
                   '0
                   (##unchecked-structure-ref _%e127196%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e127196%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e127196%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e127196%_ '1 '#f '#f)
                       _%phi127191%_
                       _%phi127191%_
                       _%ctx127192%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e127196%_ '3 '#f '#f)
                        _%marks127197%_))
                      (if (##structure-direct-instance-of?
                           _%e127196%_
                           'gx#syntax-wrap::t)
                          (_%lp127194%_
                           (##unchecked-structure-ref _%e127196%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e127196%_ '3 '#f '#f)
                            _%marks127197%_))
                          (if (##structure-instance-of?
                               _%e127196%_
                               'gerbil#AST::t)
                              (_%lp127194%_
                               (##unchecked-structure-ref
                                _%e127196%_
                                '1
                                '#f
                                '#f)
                               _%marks127197%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx127190%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx127208%_)
        (let* ((_%phi127210%_ (gx#current-expander-phi))
               (_%ctx127212%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx127208%_
           _%phi127210%_
           _%ctx127212%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx127214%_ _%phi127215%_)
        (let ((_%ctx127217%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx127214%_
           _%phi127215%_
           _%ctx127217%_))))
    (define gx#core-resolve-identifier
      (lambda _g129622_
        (let ((_g129623_ (##length _g129622_)))
          (cond ((##fx= _g129623_ 1)
                 (apply gx#core-resolve-identifier__0 _g129622_))
                ((##fx= _g129623_ 2)
                 (apply gx#core-resolve-identifier__1 _g129622_))
                ((##fx= _g129623_ 3)
                 (apply gx#core-resolve-identifier__% _g129622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g129622_))))))
    (define gx#core-resolve-binding
      (lambda (_%id127100%_
               _%phi127101%_
               _%src-phi127102%_
               _%ctx127103%_
               _%marks127104%_)
        (letrec ((_%resolve127106%_
                  (lambda (_%ctx127174%_ _%src-phi127175%_ _%key127176%_)
                    (let _%lp127178%_ ((_%ctx127180%_
                                        (gx#core-context-shift
                                         _%ctx127174%_
                                         _%phi127101%_))
                                       (_%dphi127181%_
                                        (fx- _%phi127101%_ _%src-phi127175%_)))
                      (let ((_%$e127183%_
                             (gx#core-context-resolve
                              _%ctx127180%_
                              _%key127176%_)))
                        (if _%$e127183%_
                            _%$e127183%_
                            (if (fxzero? _%dphi127181%_)
                                '#f
                                (if (fxpositive? _%dphi127181%_)
                                    (_%lp127178%_
                                     (gx#core-context-shift _%ctx127180%_ '-1)
                                     (##fx- _%dphi127181%_ '1))
                                    (_%lp127178%_
                                     (gx#core-context-shift _%ctx127180%_ '1)
                                     (##fx+ _%dphi127181%_ '1))))))))))
          (let _%lp127108%_ ((_%ctx127110%_ _%ctx127103%_)
                             (_%src-phi127111%_ _%src-phi127102%_)
                             (_%rest127112%_ _%marks127104%_))
            (let* ((_%rest127113127121%_ _%rest127112%_)
                   (_%else127115127129%_
                    (lambda ()
                      (_%resolve127106%_
                       _%ctx127110%_
                       _%src-phi127111%_
                       _%id127100%_)))
                   (_%K127117127162%_
                    (lambda (_%rest127132%_ _%hd127133%_)
                      (let* ((_%hd127134127140%_ _%hd127133%_)
                             (_%E127136127144%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd127134127140%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K127137127154%_
                              (lambda (_%subst127147%_)
                                (let ((_%$e127151%_
                                       (let ((_%key127149%_
                                              (if _%subst127147%_
                                                  (hash-get
                                                   _%subst127147%_
                                                   _%id127100%_)
                                                  '#f)))
                                         (if _%key127149%_
                                             (_%resolve127106%_
                                              _%ctx127110%_
                                              _%src-phi127111%_
                                              _%key127149%_)
                                             '#f))))
                                  (if _%$e127151%_
                                      _%$e127151%_
                                      (_%lp127108%_
                                       (##unchecked-structure-ref
                                        _%hd127133%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd127133%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest127132%_))))))
                        (if (##structure-instance-of?
                             _%hd127134127140%_
                             'gx#expander-mark::t)
                            (let* ((_%e127138127157%_
                                    (##unchecked-structure-ref
                                     _%hd127134127140%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst127160%_ _%e127138127157%_))
                              (_%K127137127154%_ _%subst127160%_))
                            (_%E127136127144%_))))))
              (if (pair? _%rest127113127121%_)
                  (let ((_%hd127118127165%_ (##car _%rest127113127121%_))
                        (_%tl127119127167%_ (##cdr _%rest127113127121%_)))
                    (let* ((_%hd127170%_ _%hd127118127165%_)
                           (_%rest127172%_ _%tl127119127167%_))
                      (_%K127117127162%_ _%rest127172%_ _%hd127170%_)))
                  (_%else127115127129%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key126970%_
               _%val126971%_
               _%rebind?126972%_
               _%phi126973%_
               _%ctx126974%_)
        (letrec ((_%update-binding126976%_
                  (lambda (_%xval127049%_)
                    (if (or (_%rebind?126972%_
                             _%ctx126974%_
                             _%xval127049%_
                             _%val126971%_)
                            (and (##structure-direct-instance-of?
                                  _%xval127049%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval127049%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val126971%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val126971%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval127049%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val126971%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val126971%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval127049%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val126971%_
                        (if (and (##structure-direct-instance-of?
                                  _%val126971%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val126971%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval127049%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val126971%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval127049%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval127049%_
                            (if (and (##structure-direct-instance-of?
                                      _%val126971%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval127049%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key126970%_
                                 (cons (##unchecked-structure-ref
                                        _%val126971%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val126971%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval127049%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval127049%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval127049%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval127049%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key126970%_
                                 _%val126971%_
                                 _%xval127049%_))))))
                 (_%gensubst126977%_
                  (lambda (_%subst127044%_ _%id127045%_)
                    (let ((_%eid127047%_
                           (gensym (if (uninterned-symbol? _%id127045%_)
                                       '%
                                       _%id127045%_))))
                      (hash-put! _%subst127044%_ _%id127045%_ _%eid127047%_)
                      _%eid127047%_)))
                 (_%subst!126978%_
                  (lambda (_%key126980%_)
                    (let* ((_%key126981126989%_ _%key126980%_)
                           (_%else126983126997%_ (lambda () _%key126980%_))
                           (_%K126985127032%_
                            (lambda (_%mark127000%_ _%id127001%_)
                              (let* ((_%mark127002127008%_ _%mark127000%_)
                                     (_%E127004127012%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark127002127008%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K127005127024%_
                                      (lambda (_%subst127015%_)
                                        (if (not _%subst127015%_)
                                            (let ((_%subst127018%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark127000%_
                                               _%subst127018%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst126977%_
                                               _%subst127018%_
                                               _%id127001%_))
                                            (let ((_%$e127020%_
                                                   (hash-get
                                                    _%subst127015%_
                                                    _%id127001%_)))
                                              (if _%$e127020%_
                                                  _%$e127020%_
                                                  (_%gensubst126977%_
                                                   _%subst127015%_
                                                   _%id127001%_)))))))
                                (if (##structure-instance-of?
                                     _%mark127002127008%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e127006127027%_
                                            (##unchecked-structure-ref
                                             _%mark127002127008%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst127030%_ _%e127006127027%_))
                                      (_%K127005127024%_ _%subst127030%_))
                                    (_%E127004127012%_))))))
                      (if (pair? _%key126981126989%_)
                          (let ((_%hd126986127035%_
                                 (##car _%key126981126989%_))
                                (_%tl126987127037%_
                                 (##cdr _%key126981126989%_)))
                            (let* ((_%id127040%_ _%hd126986127035%_)
                                   (_%mark127042%_ _%tl126987127037%_))
                              (_%K126985127032%_ _%mark127042%_ _%id127040%_)))
                          (_%else126983126997%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx126974%_ _%phi126973%_)
           (_%subst!126978%_ _%key126970%_)
           _%val126971%_
           _%update-binding126976%_))))
    (define gx#core-bind!__0
      (lambda (_%key127070%_ _%val127071%_)
        (let* ((_%rebind?127073%_ false)
               (_%phi127075%_ (gx#current-expander-phi))
               (_%ctx127077%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127070%_
           _%val127071%_
           _%rebind?127073%_
           _%phi127075%_
           _%ctx127077%_))))
    (define gx#core-bind!__1
      (lambda (_%key127079%_ _%val127080%_ _%rebind?127081%_)
        (let* ((_%phi127083%_ (gx#current-expander-phi))
               (_%ctx127085%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127079%_
           _%val127080%_
           _%rebind?127081%_
           _%phi127083%_
           _%ctx127085%_))))
    (define gx#core-bind!__2
      (lambda (_%key127087%_ _%val127088%_ _%rebind?127089%_ _%phi127090%_)
        (let ((_%ctx127092%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127087%_
           _%val127088%_
           _%rebind?127089%_
           _%phi127090%_
           _%ctx127092%_))))
    (define gx#core-bind!
      (lambda _g129624_
        (let ((_g129625_ (##length _g129624_)))
          (cond ((##fx= _g129625_ 2) (apply gx#core-bind!__0 _g129624_))
                ((##fx= _g129625_ 3) (apply gx#core-bind!__1 _g129624_))
                ((##fx= _g129625_ 4) (apply gx#core-bind!__2 _g129624_))
                ((##fx= _g129625_ 5) (apply gx#core-bind!__% _g129624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g129624_))))))
    (define gx#core-identifier-key
      (lambda (_%stx126901%_)
        (if (symbol? _%stx126901%_)
            (let* ((_%g126903126911%_ (gx#current-expander-marks))
                   (_%else126905126919%_ (lambda () _%stx126901%_))
                   (_%K126907126924%_
                    (lambda (_%hd126922%_) (cons _%stx126901%_ _%hd126922%_))))
              (if (pair? _%g126903126911%_)
                  (let* ((_%hd126908126927%_ (##car _%g126903126911%_))
                         (_%hd126930%_ _%hd126908126927%_))
                    (_%K126907126924%_ _%hd126930%_))
                  (_%else126905126919%_)))
            (if (gx#identifier? _%stx126901%_)
                (let* ((_%id126933%_ (gx#syntax-local-unwrap _%stx126901%_))
                       (_%eid126935%_ (gx#stx-e _%id126933%_))
                       (_%marks126937%_
                        (gx#stx-identifier-marks* _%id126933%_))
                       (_%marks126939126947%_ _%marks126937%_)
                       (_%else126941126955%_ (lambda () _%eid126935%_))
                       (_%K126943126960%_
                        (lambda (_%hd126958%_)
                          (cons _%eid126935%_ _%hd126958%_))))
                  (if (pair? _%marks126939126947%_)
                      (let* ((_%hd126944126963%_ (##car _%marks126939126947%_))
                             (_%hd126966%_ _%hd126944126963%_))
                        (_%K126943126960%_ _%hd126966%_))
                      (_%else126941126955%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx126901%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx126840%_ _%phi126841%_)
        (letrec ((_%make-phi126843%_
                  (lambda (_%super126899%_)
                    (let ((__obj129597
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj129597
                       (##gensym 'phi)
                       _%super126899%_)
                      __obj129597)))
                 (_%make-phi/up126844%_
                  (lambda (_%ctx126894%_ _%super126895%_)
                    (let ((_%ctx+1126897%_
                           (_%make-phi126843%_ _%super126895%_)))
                      (##unchecked-structure-set!
                       _%ctx126894%_
                       _%ctx+1126897%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1126897%_
                       _%ctx126894%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1126897%_)))
                 (_%make-phi/down126845%_
                  (lambda (_%ctx126889%_ _%super126890%_)
                    (let ((_%ctx-1126892%_
                           (_%make-phi126843%_ _%super126890%_)))
                      (##unchecked-structure-set!
                       _%ctx-1126892%_
                       _%ctx126889%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx126889%_
                       _%ctx-1126892%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1126892%_)))
                 (_%shift126846%_
                  (lambda (_%ctx126872%_
                           _%delta126873%_
                           _%make-delta-context126874%_
                           _%phi126875%_
                           _%K126876%_)
                    (let ((_%$e126878%_
                           (##unchecked-structure-ref
                            _%ctx126872%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e126878%_
                          ((lambda (_%super126881%_)
                             (let* ((_%super126883%_
                                     (_%K126876%_
                                      _%super126881%_
                                      _%delta126873%_))
                                    (_%ctx+d126885%_
                                     (_%make-delta-context126874%_
                                      _%ctx126872%_
                                      _%super126883%_)))
                               (_%K126876%_
                                _%ctx+d126885%_
                                (fx- _%phi126875%_ _%delta126873%_))))
                           _%$e126878%_)
                          (error '"Bad context" _%ctx126872%_))))))
          (let _%K126848%_ ((_%ctx126850%_ _%ctx126840%_)
                            (_%phi126851%_ _%phi126841%_))
            (if (fxzero? _%phi126851%_)
                _%ctx126850%_
                (if (##structure-instance-of? _%ctx126850%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi126851%_)
                        (let ((_%$e126855%_
                               (##unchecked-structure-ref
                                _%ctx126850%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e126855%_
                              ((lambda (_%g126857126859%_)
                                 (_%K126848%_
                                  _%g126857126859%_
                                  (##fx- _%phi126851%_ '1)))
                               _%$e126855%_)
                              (_%shift126846%_
                               _%ctx126850%_
                               '1
                               _%make-phi/up126844%_
                               _%phi126851%_
                               _%K126848%_)))
                        (let ((_%$e126863%_
                               (##unchecked-structure-ref
                                _%ctx126850%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e126863%_
                              ((lambda (_%g126865126867%_)
                                 (_%K126848%_
                                  _%g126865126867%_
                                  (##fx+ _%phi126851%_ '1)))
                               _%$e126863%_)
                              (_%shift126846%_
                               _%ctx126850%_
                               '-1
                               _%make-phi/down126845%_
                               _%phi126851%_
                               _%K126848%_))))
                    _%ctx126850%_))))))
    (define gx#core-context-get
      (lambda (_%ctx126837%_ _%key126838%_)
        (hash-get
         (##unchecked-structure-ref _%ctx126837%_ '2 '#f '#f)
         _%key126838%_)))
    (define gx#core-context-put!
      (lambda (_%ctx126833%_ _%key126834%_ _%val126835%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx126833%_ '2 '#f '#f)
         _%key126834%_
         _%val126835%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx126819%_ _%key126820%_)
        (let _%lp126822%_ ((_%ctx126824%_ _%ctx126819%_))
          (let ((_%$e126826%_
                 (gx#core-context-get _%ctx126824%_ _%key126820%_)))
            (if _%$e126826%_
                _%$e126826%_
                (let ((_%$e126829%_
                       (if (##structure-instance-of?
                            _%ctx126824%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx126824%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e126829%_ (_%lp126822%_ _%$e126829%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx126808%_ _%key126809%_ _%val126810%_ _%rebind126811%_)
        (let ((_%$e126813%_ (gx#core-context-get _%ctx126808%_ _%key126809%_)))
          (if _%$e126813%_
              ((lambda (_%xval126816%_)
                 (gx#core-context-put!
                  _%ctx126808%_
                  _%key126809%_
                  (_%rebind126811%_ _%xval126816%_)))
               _%$e126813%_)
              (gx#core-context-put!
               _%ctx126808%_
               _%key126809%_
               _%val126810%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx126783%_ _%stop?126784%_)
        (let _%lp126786%_ ((_%ctx126788%_ _%ctx126783%_))
          (if (_%stop?126784%_ _%ctx126788%_)
              _%ctx126788%_
              (if (##structure-instance-of? _%ctx126788%_ 'gx#phi-context::t)
                  (_%lp126786%_
                   (##unchecked-structure-ref _%ctx126788%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx126797%_ (gx#current-expander-context))
               (_%stop?126799%_ gx#top-context?))
          (gx#core-context-top__% _%ctx126797%_ _%stop?126799%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx126801%_)
        (let ((_%stop?126803%_ gx#top-context?))
          (gx#core-context-top__% _%ctx126801%_ _%stop?126803%_))))
    (define gx#core-context-top
      (lambda _g129626_
        (let ((_g129627_ (##length _g129626_)))
          (cond ((##fx= _g129627_ 0) (apply gx#core-context-top__0 _g129626_))
                ((##fx= _g129627_ 1) (apply gx#core-context-top__1 _g129626_))
                ((##fx= _g129627_ 2) (apply gx#core-context-top__% _g129626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g129626_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx126768%_)
        (let _%lp126770%_ ((_%ctx126772%_ _%ctx126768%_))
          (if (##structure-instance-of? _%ctx126772%_ 'gx#phi-context::t)
              (_%lp126770%_
               (##unchecked-structure-ref _%ctx126772%_ '3 '#f '#f))
              _%ctx126772%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx126778%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx126778%_))))
    (define gx#core-context-root
      (lambda _g129628_
        (let ((_g129629_ (##length _g129628_)))
          (cond ((##fx= _g129629_ 0) (apply gx#core-context-root__0 _g129628_))
                ((##fx= _g129629_ 1) (apply gx#core-context-root__% _g129628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g129628_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx126750%_ . _%ignore126751%_)
        (let ((_%$e126753%_ (gx#current-expander-allow-rebind?)))
          (if _%$e126753%_
              _%$e126753%_
              (if (##structure-instance-of? _%ctx126750%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx126750%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx126750%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx126760%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx126760%_))))
    (define gx#core-context-rebind?
      (lambda _g129630_
        (let ((_g129631_ (##length _g129630_)))
          (cond ((##fx= _g129631_ 0)
                 (apply gx#core-context-rebind?__0 _g129630_))
                ((##fx= _g129631_ 1)
                 (apply gx#core-context-rebind?__% _g129630_))
                ((##fx>= _g129631_ 1)
                 (apply gx#core-context-rebind?__% _g129630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g129630_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx126733%_)
        (let ((_%$e126735%_ (gx#core-context-top__1 _%ctx126733%_)))
          (if _%$e126735%_
              ((lambda (_%ctx126738%_)
                 (if (##structure-instance-of?
                      _%ctx126738%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx126738%_ '6 '#f '#f)
                     '#f))
               _%$e126735%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx126745%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx126745%_))))
    (define gx#core-context-namespace
      (lambda _g129632_
        (let ((_g129633_ (##length _g129632_)))
          (cond ((##fx= _g129633_ 0)
                 (apply gx#core-context-namespace__0 _g129632_))
                ((##fx= _g129633_ 1)
                 (apply gx#core-context-namespace__% _g129632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g129632_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind126719%_ _%is?126720%_)
        (if (##structure-direct-instance-of?
             _%bind126719%_
             'gx#syntax-binding::t)
            (_%is?126720%_
             (##unchecked-structure-ref _%bind126719%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind126725%_)
        (let ((_%is?126727%_ gx#expander?))
          (gx#expander-binding?__% _%bind126725%_ _%is?126727%_))))
    (define gx#expander-binding?
      (lambda _g129634_
        (let ((_g129635_ (##length _g129634_)))
          (cond ((##fx= _g129635_ 1) (apply gx#expander-binding?__0 _g129634_))
                ((##fx= _g129635_ 2) (apply gx#expander-binding?__% _g129634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g129634_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind126716%_)
        (gx#expander-binding?__% _%bind126716%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind126714%_)
        (gx#expander-binding?__% _%bind126714%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind126708%_)
        (letrec ((_%direct-special-form?126710%_
                  (lambda (_%obj126712%_)
                    (##structure-direct-instance-of?
                     _%obj126712%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind126708%_
           _%direct-special-form?126710%_))))
    (define gx#special-form-binding?
      (lambda (_%bind126706%_)
        (gx#expander-binding?__% _%bind126706%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind126697%_)
        (letrec ((_%feature?126699%_
                  (lambda (_%e126701%_)
                    (let ((_%$e126703%_
                           (##structure-instance-of?
                            _%e126701%_
                            'gx#feature-expander::t)))
                      (if _%$e126703%_
                          _%$e126703%_
                          (##structure-instance-of?
                           _%e126701%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind126697%_ _%feature?126699%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind126695%_)
        (gx#expander-binding?__% _%bind126695%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id126682%_ _%bound?126683%_)
        (if (gx#identifier? _%id126682%_)
            (_%bound?126683%_ (gx#resolve-identifier__0 _%id126682%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id126688%_)
        (let ((_%bound?126690%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id126688%_ _%bound?126690%_))))
    (define gx#core-bound-identifier?
      (lambda _g129636_
        (let ((_g129637_ (##length _g129636_)))
          (cond ((##fx= _g129637_ 1)
                 (apply gx#core-bound-identifier?__0 _g129636_))
                ((##fx= _g129637_ 2)
                 (apply gx#core-bound-identifier?__% _g129636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g129636_))))))
    (define gx#core-identifier=?
      (lambda (_%x126672%_ _%y126673%_)
        (letrec ((_%y=?126675%_
                  (lambda (_%xid126679%_)
                    ((if (list? _%y126673%_) memq eq?)
                     _%xid126679%_
                     _%y126673%_))))
          (let ((_%bind126677%_ (gx#resolve-identifier__0 _%x126672%_)))
            (if (##structure-instance-of? _%bind126677%_ 'gx#binding::t)
                (_%y=?126675%_
                 (##unchecked-structure-ref _%bind126677%_ '1 '#f '#f))
                (_%y=?126675%_ (gx#stx-e _%x126672%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e126670%_)
        (if (interned-symbol? _%e126670%_)
            (string-index__0 (symbol->string _%e126670%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx126623%_ _%src126624%_ _%ctx126625%_ _%marks126626%_)
        (if (##structure? _%stx126623%_)
            (let ((_%$e126628%_ (gx#sealed-syntax-unwrap _%stx126623%_)))
              (if _%$e126628%_
                  _%$e126628%_
                  (if (gx#identifier? _%stx126623%_)
                      (let ((_%id126632%_
                             (gx#stx-unwrap__% _%stx126623%_ _%marks126626%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id126632%_ '1 '#f '#f)
                         (let ((_%$e126634%_
                                (##unchecked-structure-ref
                                 _%id126632%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e126634%_ _%$e126634%_ _%src126624%_))
                         _%ctx126625%_
                         (##unchecked-structure-ref _%id126632%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx126623%_)
                       (let ((_%$e126638%_ (gx#stx-source _%stx126623%_)))
                         (if _%$e126638%_ _%$e126638%_ _%src126624%_))
                       _%ctx126625%_
                       (reverse _%marks126626%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx126623%_
             _%src126624%_
             _%ctx126625%_
             (reverse _%marks126626%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx126644%_)
        (let* ((_%src126646%_ '#f)
               (_%ctx126648%_ (gx#current-expander-context))
               (_%marks126650%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx126644%_
           _%src126646%_
           _%ctx126648%_
           _%marks126650%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx126652%_ _%src126653%_)
        (let* ((_%ctx126655%_ (gx#current-expander-context))
               (_%marks126657%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx126652%_
           _%src126653%_
           _%ctx126655%_
           _%marks126657%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx126659%_ _%src126660%_ _%ctx126661%_)
        (let ((_%marks126663%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx126659%_
           _%src126660%_
           _%ctx126661%_
           _%marks126663%_))))
    (define gx#core-quote-syntax
      (lambda _g129638_
        (let ((_g129639_ (##length _g129638_)))
          (cond ((##fx= _g129639_ 1) (apply gx#core-quote-syntax__0 _g129638_))
                ((##fx= _g129639_ 2) (apply gx#core-quote-syntax__1 _g129638_))
                ((##fx= _g129639_ 3) (apply gx#core-quote-syntax__2 _g129638_))
                ((##fx= _g129639_ 4) (apply gx#core-quote-syntax__% _g129638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g129638_))))))
    (define gx#core-cons
      (lambda (_%hd126619%_ _%tl126620%_)
        (cons (gx#core-quote-syntax__0 _%hd126619%_) _%tl126620%_)))
    (define gx#core-list
      (lambda (_%hd126616%_ . _%rest126617%_)
        (cons (gx#core-quote-syntax__0 _%hd126616%_) _%rest126617%_)))
    (define gx#core-cons*
      (lambda (_%hd126613%_ . _%rest126614%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd126613%_) _%rest126614%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path126582%_ _%rel126583%_)
        (let ((_%path126600%_ (gx#stx-e _%stx-path126582%_))
              (_%reldir126601%_
               (let _%lp126585%_ ((_%relsrc126587%_
                                   (let ((_%$e126597%_
                                          (gx#stx-source _%stx-path126582%_)))
                                     (if _%$e126597%_
                                         _%$e126597%_
                                         _%rel126583%_))))
                 (if (##structure-instance-of? _%relsrc126587%_ 'gerbil#AST::t)
                     (_%lp126585%_
                      (let ((_%$e126590%_ (gx#stx-source _%relsrc126587%_)))
                        (if _%$e126590%_
                            _%$e126590%_
                            (gx#stx-e _%relsrc126587%_))))
                     (if (source-location-path? _%relsrc126587%_)
                         (path-directory
                          (source-location-path _%relsrc126587%_))
                         (if (string? _%relsrc126587%_)
                             (path-directory _%relsrc126587%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path126600%_ (path-normalize _%reldir126601%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path126606%_)
        (let ((_%rel126608%_ '#f))
          (gx#core-resolve-path__% _%stx-path126606%_ _%rel126608%_))))
    (define gx#core-resolve-path
      (lambda _g129640_
        (let ((_g129641_ (##length _g129640_)))
          (cond ((##fx= _g129641_ 1) (apply gx#core-resolve-path__0 _g129640_))
                ((##fx= _g129641_ 2) (apply gx#core-resolve-path__% _g129640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g129640_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr126538%_ _%ctx126539%_)
        (let* ((_%repr126540126547%_ _%repr126538%_)
               (_%E126542126551%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr126540126547%_
                         '([phi . subs]))
                  '#!void))
               (_%K126543126559%_
                (lambda (_%subs126554%_ _%phi126555%_)
                  (let ((_%subst126557%_
                         (if (null? _%subs126554%_)
                             '#f
                             (list->hash-table-eq _%subs126554%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst126557%_
                     _%ctx126539%_
                     _%phi126555%_
                     '#f)))))
          (if (pair? _%repr126540126547%_)
              (let ((_%hd126544126562%_ (##car _%repr126540126547%_))
                    (_%tl126545126564%_ (##cdr _%repr126540126547%_)))
                (let* ((_%phi126567%_ _%hd126544126562%_)
                       (_%subs126569%_ _%tl126545126564%_))
                  (_%K126543126559%_ _%subs126569%_ _%phi126567%_)))
              (_%E126542126551%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr126574%_)
        (let ((_%ctx126576%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr126574%_ _%ctx126576%_))))
    (define gx#core-deserialize-mark
      (lambda _g129642_
        (let ((_g129643_ (##length _g129642_)))
          (cond ((##fx= _g129643_ 1)
                 (apply gx#core-deserialize-mark__0 _g129642_))
                ((##fx= _g129643_ 2)
                 (apply gx#core-deserialize-mark__% _g129642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g129642_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx126535%_)
        (gx#stx-rewrap _%stx126535%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx126533%_)
        (gx#stx-unwrap__% _%stx126533%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx126503%_)
        (let* ((_%g126504126512%_ (gx#current-expander-marks))
               (_%else126506126520%_ (lambda () _%stx126503%_))
               (_%K126508126525%_
                (lambda (_%hd126523%_)
                  (gx#stx-apply-mark _%stx126503%_ _%hd126523%_))))
          (if (pair? _%g126504126512%_)
              (let* ((_%hd126509126528%_ (##car _%g126504126512%_))
                     (_%hd126531%_ _%hd126509126528%_))
                (_%K126508126525%_ _%hd126531%_))
              (_%else126506126520%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx126488%_ _%E126489%_)
        (let ((_%bind126491%_ (gx#resolve-identifier__0 _%stx126488%_)))
          (if (##structure-direct-instance-of?
               _%bind126491%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind126491%_ '4 '#f '#f)
              (_%E126489%_ _%stx126488%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx126496%_)
        (let ((_%E126498%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx126496%_ _%E126498%_))))
    (define gx#syntax-local-e
      (lambda _g129644_
        (let ((_g129645_ (##length _g129644_)))
          (cond ((##fx= _g129645_ 1) (apply gx#syntax-local-e__0 _g129644_))
                ((##fx= _g129645_ 2) (apply gx#syntax-local-e__% _g129644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g129644_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx126472%_ _%E126473%_)
        (let ((_%e126475%_ (gx#syntax-local-e__% _%stx126472%_ _%E126473%_)))
          (if (##structure-instance-of? _%e126475%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e126475%_ '1 '#f '#f)
              _%e126475%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx126480%_)
        (let ((_%E126482%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx126480%_ _%E126482%_))))
    (define gx#syntax-local-value
      (lambda _g129646_
        (let ((_g129647_ (##length _g129646_)))
          (cond ((##fx= _g129647_ 1)
                 (apply gx#syntax-local-value__0 _g129646_))
                ((##fx= _g129647_ 2)
                 (apply gx#syntax-local-value__% _g129646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g129646_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx126469%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx126469%_)))))
