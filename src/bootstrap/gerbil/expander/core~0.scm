(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1756224515)
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
      (lambda _%$args129559%_
        (apply make-instance gx#expander-context::t _%$args129559%_)))
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
      (lambda _%$args129556%_
        (apply make-instance gx#root-context::t _%$args129556%_)))
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
      (lambda _%$args129553%_
        (apply make-instance gx#phi-context::t _%$args129553%_)))
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
      (lambda _%$args129550%_
        (apply make-instance gx#top-context::t _%$args129550%_)))
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
      (lambda _%$args129547%_
        (apply make-instance gx#module-context::t _%$args129547%_)))
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
      (lambda _%$args129544%_
        (apply make-instance gx#prelude-context::t _%$args129544%_)))
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
      (lambda _%$args129541%_
        (apply make-instance gx#local-context::t _%$args129541%_)))
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
      (lambda (_%self129514%_ _%id129515%_ _%super129516%_)
        (let ((_%self129519%_ _%self129514%_))
          (if (##fx< '3 (##structure-length _%self129519%_))
              (begin
                (##unchecked-structure-set!
                 _%self129519%_
                 _%id129515%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129519%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129519%_
                 _%super129516%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129519%_
                     '3
                     (##structure-length _%self129519%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self129532%_ _%id129533%_)
        (let ((_%super129535%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self129532%_
           _%id129533%_
           _%super129535%_))))
    (define gx#phi-context:::init!
      (lambda _g129601_
        (let ((_g129602_ (##length _g129601_)))
          (cond ((##fx= _g129602_ 2)
                 (apply gx#phi-context:::init!__0 _g129601_))
                ((##fx= _g129602_ 3)
                 (apply gx#phi-context:::init!__% _g129601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g129601_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self129367%_ _%super129368%_)
        (let ((_%self129371%_ _%self129367%_))
          (if (##fx< '3 (##structure-length _%self129371%_))
              (begin
                (##unchecked-structure-set!
                 _%self129371%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129371%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129371%_
                 _%super129368%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129371%_
                     '3
                     (##structure-length _%self129371%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self129384%_)
        (let ((_%super129386%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self129384%_ _%super129386%_))))
    (define gx#local-context:::init!
      (lambda _g129603_
        (let ((_g129604_ (##length _g129603_)))
          (cond ((##fx= _g129604_ 1)
                 (apply gx#local-context:::init!__0 _g129603_))
                ((##fx= _g129604_ 2)
                 (apply gx#local-context:::init!__% _g129603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g129603_))))))
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
      (lambda _%$args129241%_
        (apply make-instance gx#binding::t _%$args129241%_)))
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
      (lambda _%$args129238%_
        (apply make-instance gx#runtime-binding::t _%$args129238%_)))
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
      (lambda _%$args129235%_
        (apply make-instance gx#local-binding::t _%$args129235%_)))
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
      (lambda _%$args129232%_
        (apply make-instance gx#top-binding::t _%$args129232%_)))
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
      (lambda _%$args129229%_
        (apply make-instance gx#module-binding::t _%$args129229%_)))
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
      (lambda _%$args129226%_
        (apply make-instance gx#extern-binding::t _%$args129226%_)))
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
      (lambda _%$args129223%_
        (apply make-instance gx#syntax-binding::t _%$args129223%_)))
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
      (lambda _%$args129220%_
        (apply make-instance gx#import-binding::t _%$args129220%_)))
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
      (lambda _%$args129217%_
        (apply make-instance gx#alias-binding::t _%$args129217%_)))
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
      (lambda _%$args129214%_
        (apply make-instance gx#expander::t _%$args129214%_)))
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
      (lambda _%$args129211%_
        (apply make-instance gx#core-expander::t _%$args129211%_)))
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
      (lambda _%$args129208%_
        (apply make-instance gx#expression-form::t _%$args129208%_)))
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
      (lambda _%$args129205%_
        (apply make-instance gx#special-form::t _%$args129205%_)))
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
      (lambda _%$args129202%_
        (apply make-instance gx#definition-form::t _%$args129202%_)))
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
      (lambda _%$args129199%_
        (apply make-instance gx#top-special-form::t _%$args129199%_)))
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
      (lambda _%$args129196%_
        (apply make-instance gx#module-special-form::t _%$args129196%_)))
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
      (lambda _%$args129193%_
        (apply make-instance gx#feature-expander::t _%$args129193%_)))
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
      (lambda _%$args129190%_
        (apply make-instance gx#private-feature-expander::t _%$args129190%_)))
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
      (lambda _%$args129187%_
        (apply make-instance gx#reserved-expander::t _%$args129187%_)))
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
      (lambda _%$args129184%_
        (apply make-instance gx#macro-expander::t _%$args129184%_)))
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
      (lambda _%$args129181%_
        (apply make-instance gx#rename-macro-expander::t _%$args129181%_)))
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
      (lambda _%$args129178%_
        (apply make-instance gx#user-expander::t _%$args129178%_)))
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
      (lambda _%$args129175%_
        (apply make-instance gx#expander-mark::t _%$args129175%_)))
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
      (lambda (_%ctx129159%_
               _%message129160%_
               _%stx129161%_
               .
               _%details129162%_)
        (let ((_%ctx129173%_
               (let ((_%$e129164%_ _%ctx129159%_))
                 (if _%$e129164%_
                     _%$e129164%_
                     (let ((_%$e129167%_ (gx#core-context-top__0)))
                       (if _%$e129167%_
                           ((lambda (_%ctx129170%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx129170%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e129167%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message129160%_
                  (cons _%stx129161%_ _%details129162%_)
                  _%ctx129173%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx129146%_ _%expression?129147%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx129146%_ _%expression?129147%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx129152%_)
        (let ((_%expression?129154%_ '#f))
          (gx#eval-syntax__% _%stx129152%_ _%expression?129154%_))))
    (define gx#eval-syntax
      (lambda _g129605_
        (let ((_g129606_ (##length _g129605_)))
          (cond ((##fx= _g129606_ 1) (apply gx#eval-syntax__0 _g129605_))
                ((##fx= _g129606_ 2) (apply gx#eval-syntax__% _g129605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g129605_))))))
    (define gx#eval-syntax*
      (lambda (_%stx129143%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx129143%_))))
    (define gx#core-expand__%
      (lambda (_%stx129130%_ _%expression?129131%_)
        (if _%expression?129131%_
            (gx#core-expand-expression _%stx129130%_)
            (gx#core-expand-top _%stx129130%_))))
    (define gx#core-expand__0
      (lambda (_%stx129136%_)
        (let ((_%expression?129138%_ '#f))
          (gx#core-expand__% _%stx129136%_ _%expression?129138%_))))
    (define gx#core-expand
      (lambda _g129607_
        (let ((_g129608_ (##length _g129607_)))
          (cond ((##fx= _g129608_ 1) (apply gx#core-expand__0 _g129607_))
                ((##fx= _g129608_ 2) (apply gx#core-expand__% _g129607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g129607_))))))
    (define gx#core-expand-top
      (lambda (_%stx129097%_)
        (let* ((_%stx129099%_ (gx#core-expand*__0 _%stx129097%_))
               (_%e129100129107%_ _%stx129099%_)
               (_%E129102129111%_
                (lambda () (gx#core-expand-expression _%stx129099%_)))
               (_%E129101129125%_
                (lambda ()
                  (if (gx#stx-pair? _%e129100129107%_)
                      (let ((_%e129103129115%_
                             (gx#syntax-e _%e129100129107%_)))
                        (let ((_%hd129104129118%_ (##car _%e129103129115%_))
                              (_%tl129105129120%_ (##cdr _%e129103129115%_)))
                          (let ((_%form129123%_ _%hd129104129118%_))
                            (if (gx#core-bound-identifier?__0 _%form129123%_)
                                _%stx129099%_
                                (_%E129102129111%_)))))
                      (_%E129102129111%_)))))
          (_%E129101129125%_))))
    (define gx#core-expand-expression
      (lambda (_%stx129029%_)
        (letrec ((_%sealed-expression?129031%_
                  (lambda (_%hd129067%_)
                    (if (gx#sealed-syntax? _%hd129067%_)
                        (let* ((_%e129068129075%_ _%hd129067%_)
                               (_%E129070129079%_ (lambda () '#f))
                               (_%E129069129093%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e129068129075%_)
                                      (let ((_%e129071129083%_
                                             (gx#syntax-e _%e129068129075%_)))
                                        (let ((_%hd129072129086%_
                                               (##car _%e129071129083%_))
                                              (_%tl129073129088%_
                                               (##cdr _%e129071129083%_)))
                                          (let ((_%form129091%_
                                                 _%hd129072129086%_))
                                            (gx#core-bound-identifier?__%
                                             _%form129091%_
                                             gx#expression-form-binding?))))
                                      (_%E129070129079%_)))))
                          (_%E129069129093%_))
                        '#f)))
                 (_%illegal-expression129032%_
                  (lambda (_%hd129064%_ . _%_129065%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx129029%_
                     _%hd129064%_)))
                 (_%expand-e129033%_
                  (lambda (_%form129056%_ _%hd129057%_)
                    (let ((_%bind129059%_
                           (if (##structure-instance-of?
                                _%form129056%_
                                'gx#binding::t)
                               _%form129056%_
                               (gx#resolve-identifier__0 _%form129056%_))))
                      (if (gx#core-expander-binding? _%bind129059%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind129059%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd129057%_
                            (gx#stx-source _%stx129029%_)))
                          (if (##structure-direct-instance-of?
                               _%bind129059%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind129059%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd129057%_
                                 (gx#stx-source _%stx129029%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx129029%_
                               _%form129056%_)))))))
          (let ((_%hd129035%_ (gx#core-expand-head _%stx129029%_)))
            (if (_%sealed-expression?129031%_ _%hd129035%_)
                _%hd129035%_
                (if (gx#stx-pair? _%hd129035%_)
                    (let* ((_%form129039%_ (gx#stx-car _%hd129035%_))
                           (_%bind129041%_
                            (if (gx#identifier? _%form129039%_)
                                (gx#resolve-identifier__0 _%form129039%_)
                                '#f)))
                      (if (or (not _%bind129041%_)
                              (not (gx#core-expander-binding? _%bind129041%_)))
                          (_%expand-e129033%_
                           '%%app
                           (cons '%%app _%hd129035%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind129041%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd129035%_
                               _%illegal-expression129032%_)
                              (if (gx#expression-form-binding? _%bind129041%_)
                                  (_%expand-e129033%_
                                   _%bind129041%_
                                   _%hd129035%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind129041%_)
                                      (gx#core-expand-expression
                                       (_%expand-e129033%_
                                        _%bind129041%_
                                        _%hd129035%_))
                                      (_%illegal-expression129032%_
                                       _%hd129035%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd129035%_)
                        (_%illegal-expression129032%_ _%hd129035%_)
                        (if (gx#identifier? _%hd129035%_)
                            (_%expand-e129033%_
                             '%%ref
                             (cons '%%ref (cons _%hd129035%_ '())))
                            (if (gx#stx-datum? _%hd129035%_)
                                (_%expand-e129033%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd129035%_ '())))
                                (_%illegal-expression129032%_
                                 _%hd129035%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx129024%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx129027%_ (gx#core-expand-expression _%stx129024%_)))
             (values _%stx129027%_ (gx#eval-syntax* _%stx129027%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx129005%_ _%stop?129006%_)
        (let _%lp129008%_ ((_%stx129010%_ _%stx129005%_))
          (if (_%stop?129006%_ _%stx129010%_)
              _%stx129010%_
              (let ((_%rstx129012%_ (gx#core-expand1 _%stx129010%_)))
                (if (eq? _%stx129010%_ _%rstx129012%_)
                    _%stx129010%_
                    (_%lp129008%_ _%rstx129012%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx129017%_)
        (let ((_%stop?129019%_ false))
          (gx#core-expand*__% _%stx129017%_ _%stop?129019%_))))
    (define gx#core-expand*
      (lambda _g129609_
        (let ((_g129610_ (##length _g129609_)))
          (cond ((##fx= _g129610_ 1) (apply gx#core-expand*__0 _g129609_))
                ((##fx= _g129610_ 2) (apply gx#core-expand*__% _g129609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g129609_))))))
    (define gx#core-expand1
      (lambda (_%stx128957%_)
        (letrec ((_%step128959%_
                  (lambda (_%hd128996%_)
                    (let ((_%bind128998%_
                           (gx#resolve-identifier__0 _%hd128996%_)))
                      (if (##structure-instance-of?
                           _%bind128998%_
                           'gx#runtime-binding::t)
                          _%stx128957%_
                          (if (##structure-direct-instance-of?
                               _%bind128998%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind128998%_
                                '4
                                '#f
                                '#f)
                               _%stx128957%_)
                              (if (not _%bind128998%_)
                                  _%stx128957%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx128957%_))))))))
          (let* ((_%e128960128968%_ _%stx128957%_)
                 (_%E128966128972%_ (lambda () _%stx128957%_))
                 (_%E128962128978%_
                  (lambda ()
                    (let ((_%hd128976%_ _%e128960128968%_))
                      (if (gx#identifier? _%hd128976%_)
                          (_%step128959%_ _%hd128976%_)
                          (_%E128966128972%_)))))
                 (_%E128961128992%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128960128968%_)
                        (let ((_%e128963128982%_
                               (gx#syntax-e _%e128960128968%_)))
                          (let ((_%hd128964128985%_ (##car _%e128963128982%_))
                                (_%tl128965128987%_ (##cdr _%e128963128982%_)))
                            (let ((_%hd128990%_ _%hd128964128985%_))
                              (if (gx#identifier? _%hd128990%_)
                                  (_%step128959%_ _%hd128990%_)
                                  (_%E128962128978%_)))))
                        (_%E128962128978%_)))))
            (_%E128961128992%_)))))
    (define gx#core-expand-head
      (lambda (_%stx128923%_)
        (letrec ((_%stop?128925%_
                  (lambda (_%stx128927%_)
                    (let* ((_%e128928128935%_ _%stx128927%_)
                           (_%E128930128939%_ (lambda () '#f))
                           (_%E128929128953%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128928128935%_)
                                  (let ((_%e128931128943%_
                                         (gx#syntax-e _%e128928128935%_)))
                                    (let ((_%hd128932128946%_
                                           (##car _%e128931128943%_))
                                          (_%tl128933128948%_
                                           (##cdr _%e128931128943%_)))
                                      (let ((_%hd128951%_ _%hd128932128946%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd128951%_))))
                                  (_%E128930128939%_)))))
                      (_%E128929128953%_)))))
          (gx#core-expand*__% _%stx128923%_ _%stop?128925%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx128729%_
               _%expand-special128730%_
               _%begin-form128731%_
               _%expand-e128732%_)
        (letrec ((_%expand-splice128734%_
                  (lambda (_%hd128897%_
                           _%body128898%_
                           _%rest128899%_
                           _%r128900%_)
                    (if (gx#stx-list? _%body128898%_)
                        (_%K128738%_
                         (gx#stx-foldr cons _%rest128899%_ _%body128898%_)
                         _%r128900%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx128729%_
                         _%hd128897%_))))
                 (_%expand-cond-expand128735%_
                  (lambda (_%hd128893%_ _%rest128894%_ _%r128895%_)
                    (_%K128738%_
                     (cons (gx#core-expand-cond-expand% _%hd128893%_)
                           _%rest128894%_)
                     _%r128895%_)))
                 (_%expand-include128736%_
                  (lambda (_%hd128842%_ _%rest128843%_ _%r128844%_)
                    (let* ((_%e128845128855%_ _%hd128842%_)
                           (_%E128847128859%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e128845128855%_)))
                           (_%E128846128889%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128845128855%_)
                                  (let ((_%e128848128863%_
                                         (gx#syntax-e _%e128845128855%_)))
                                    (let ((_%hd128849128866%_
                                           (##car _%e128848128863%_))
                                          (_%tl128850128868%_
                                           (##cdr _%e128848128863%_)))
                                      (if (gx#stx-pair? _%tl128850128868%_)
                                          (let ((_%e128851128871%_
                                                 (gx#syntax-e
                                                  _%tl128850128868%_)))
                                            (let ((_%hd128852128874%_
                                                   (##car _%e128851128871%_))
                                                  (_%tl128853128876%_
                                                   (##cdr _%e128851128871%_)))
                                              (let ((_%path128879%_
                                                     _%hd128852128874%_))
                                                (if (gx#stx-null?
                                                     _%tl128853128876%_)
                                                    (if (gx#stx-string?
                                                         _%path128879%_)
                                                        (let* ((_%rpath128881%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path128879%_
                         (gx#stx-source _%hd128842%_)))
                       (_%block128883%_
                        (gx#core-expand-include%__%
                         _%hd128842%_
                         _%rpath128881%_))
                       (_%rbody128886%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block128883%_
                            _%expand-special128730%_
                            '#f
                            _%expand-e128732%_))
                         gx#current-expander-path
                         (cons _%rpath128881%_ (gx#current-expander-path)))))
                  (_%K128738%_
                   _%rest128843%_
                   (__foldr1 cons _%r128844%_ _%rbody128886%_)))
                (_%E128847128859%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128847128859%_)))))
                                          (_%E128847128859%_))))
                                  (_%E128847128859%_)))))
                      (_%E128846128889%_))))
                 (_%expand-expression128737%_
                  (lambda (_%hd128838%_ _%rest128839%_ _%r128840%_)
                    (_%K128738%_
                     _%rest128839%_
                     (cons (_%expand-e128732%_ _%hd128838%_) _%r128840%_))))
                 (_%K128738%_
                  (lambda (_%rest128768%_ _%r128769%_)
                    (let* ((_%e128770128777%_ _%rest128768%_)
                           (_%E128772128781%_
                            (lambda ()
                              (if _%begin-form128731%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form128731%_
                                    (reverse _%r128769%_))
                                   (gx#stx-source _%stx128729%_))
                                  _%r128769%_)))
                           (_%E128771128834%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128770128777%_)
                                  (let ((_%e128773128785%_
                                         (gx#syntax-e _%e128770128777%_)))
                                    (let ((_%hd128774128788%_
                                           (##car _%e128773128785%_))
                                          (_%tl128775128790%_
                                           (##cdr _%e128773128785%_)))
                                      (let* ((_%hd128793%_ _%hd128774128788%_)
                                             (_%rest128795%_
                                              _%tl128775128790%_)
                                             (_%hd128797%_
                                              (gx#core-expand-head
                                               _%hd128793%_))
                                             (_%e128798128805%_ _%hd128797%_)
                                             (_%E128800128809%_
                                              (lambda ()
                                                (_%expand-expression128737%_
                                                 _%hd128797%_
                                                 _%rest128795%_
                                                 _%r128769%_)))
                                             (_%E128799128830%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e128798128805%_)
                                                    (let ((_%e128801128813%_
                                                           (gx#syntax-e
                                                            _%e128798128805%_)))
                                                      (let ((_%hd128802128816%_
                                                             (##car _%e128801128813%_))
                                                            (_%tl128803128818%_
                                                             (##cdr _%e128801128813%_)))
                                                        (let* ((_%form128821%_
                                                                _%hd128802128816%_)
                                                               (_%body128823%_
                                                                _%tl128803128818%_)
                                                               (_%bind128825%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form128821%_)
                            (gx#resolve-identifier__0 _%form128821%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind128825%_)
                      (let ((_%$e128827%_
                             (##unchecked-structure-ref
                              _%bind128825%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e128827%_)
                            (_%expand-splice128734%_
                             _%hd128797%_
                             _%body128823%_
                             _%rest128795%_
                             _%r128769%_)
                            (if (eq? '%#cond-expand _%$e128827%_)
                                (_%expand-cond-expand128735%_
                                 _%hd128797%_
                                 _%rest128795%_
                                 _%r128769%_)
                                (if (eq? '%#include _%$e128827%_)
                                    (_%expand-include128736%_
                                     _%hd128797%_
                                     _%rest128795%_
                                     _%r128769%_)
                                    (_%expand-special128730%_
                                     _%hd128797%_
                                     _%K128738%_
                                     _%rest128795%_
                                     _%r128769%_)))))
                      (_%expand-expression128737%_
                       _%hd128797%_
                       _%rest128795%_
                       _%r128769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128800128809%_)))))
                                        (_%E128799128830%_))))
                                  (_%E128772128781%_)))))
                      (_%E128771128834%_)))))
          (let* ((_%e128739128746%_ _%stx128729%_)
                 (_%E128741128750%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e128739128746%_)))
                 (_%E128740128764%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128739128746%_)
                        (let ((_%e128742128754%_
                               (gx#syntax-e _%e128739128746%_)))
                          (let ((_%hd128743128757%_ (##car _%e128742128754%_))
                                (_%tl128744128759%_ (##cdr _%e128742128754%_)))
                            (let ((_%body128762%_ _%tl128744128759%_))
                              (if (gx#stx-list? _%body128762%_)
                                  (_%K128738%_ _%body128762%_ '())
                                  (_%E128741128750%_)))))
                        (_%E128741128750%_)))))
            (_%E128740128764%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx128905%_ _%expand-special128906%_)
        (let* ((_%begin-form128908%_ '%#begin)
               (_%expand-e128910%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx128905%_
           _%expand-special128906%_
           _%begin-form128908%_
           _%expand-e128910%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx128912%_ _%expand-special128913%_ _%begin-form128914%_)
        (let ((_%expand-e128916%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx128912%_
           _%expand-special128913%_
           _%begin-form128914%_
           _%expand-e128916%_))))
    (define gx#core-expand-block
      (lambda _g129611_
        (let ((_g129612_ (##length _g129611_)))
          (cond ((##fx= _g129612_ 2) (apply gx#core-expand-block__0 _g129611_))
                ((##fx= _g129612_ 3) (apply gx#core-expand-block__1 _g129611_))
                ((##fx= _g129612_ 4) (apply gx#core-expand-block__% _g129611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g129611_))))))
    (define gx#core-expand-block*
      (lambda (_%stx128677%_ _%expand-special128678%_)
        (let* ((_%g128679128690%_
                (gx#core-expand-block__1
                 _%stx128677%_
                 _%expand-special128678%_
                 '#f))
               (_%E128683128694%_
                (lambda ()
                  (error '"No clause matching"
                         _%g128679128690%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K128688128725%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx128677%_)))
                (_%K128685128711%_ (lambda (_%expr128709%_) _%expr128709%_))
                (_%K128684128700%_
                 (lambda (_%body128698%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body128698%_))
                    (gx#stx-source _%stx128677%_)))))
            (let ((_%try-match128681128721%_
                   (lambda ()
                     (if (pair? _%g128679128690%_)
                         (let ((_%tl128687128716%_ (##cdr _%g128679128690%_))
                               (_%hd128686128714%_ (##car _%g128679128690%_)))
                           (if (null? _%tl128687128716%_)
                               (let ((_%expr128719%_ _%hd128686128714%_))
                                 (_%K128685128711%_ _%expr128719%_))
                               (let ((_%body128703%_ _%g128679128690%_))
                                 (_%K128684128700%_ _%body128703%_))))
                         (let ((_%body128703%_ _%g128679128690%_))
                           (_%K128684128700%_ _%body128703%_))))))
              (if (null? _%g128679128690%_)
                  (_%K128688128725%_)
                  (_%try-match128681128721%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx128502%_)
        (letrec ((_%satisfied?128504%_
                  (lambda (_%condition128605%_)
                    (let* ((_%e128606128621%_ _%condition128605%_)
                           (_%E128616128625%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e128606128621%_)))
                           (_%E128609128644%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128606128621%_)
                                  (let ((_%e128617128629%_
                                         (gx#syntax-e _%e128606128621%_)))
                                    (let ((_%hd128618128632%_
                                           (##car _%e128617128629%_))
                                          (_%tl128619128634%_
                                           (##cdr _%e128617128629%_)))
                                      (let* ((_%combinator128637%_
                                              _%hd128618128632%_)
                                             (_%body128639%_
                                              _%tl128619128634%_))
                                        (if (gx#stx-list? _%body128639%_)
                                            (let ((_%$e128641%_
                                                   (gx#stx-e
                                                    _%combinator128637%_)))
                                              (if (eq? 'not _%$e128641%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?128504%_
                                                        _%body128639%_))
                                                  (if (eq? 'and _%$e128641%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?128504%_
                                                       _%body128639%_)
                                                      (if (eq? 'or
                                                               _%$e128641%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?128504%_
                                                           _%body128639%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e128641%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body128639%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx128502%_
                       _%combinator128637%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E128616128625%_)))))
                                  (_%E128616128625%_))))
                           (_%E128608128667%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128606128621%_)
                                  (let ((_%e128610128648%_
                                         (gx#syntax-e _%e128606128621%_)))
                                    (let ((_%hd128611128651%_
                                           (##car _%e128610128648%_))
                                          (_%tl128612128653%_
                                           (##cdr _%e128610128648%_)))
                                      (if (and (gx#identifier?
                                                _%hd128611128651%_)
                                               (gx#core-identifier=?
                                                _%hd128611128651%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl128612128653%_)
                                              (let ((_%e128613128656%_
                                                     (gx#syntax-e
                                                      _%tl128612128653%_)))
                                                (let ((_%hd128614128659%_
                                                       (##car _%e128613128656%_))
                                                      (_%tl128615128661%_
                                                       (##cdr _%e128613128656%_)))
                                                  (let ((_%expr128664%_
                                                         _%hd128614128659%_))
                                                    (if (gx#stx-null?
                                                         _%tl128615128661%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr128664%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E128609128644%_)))))
                                              (_%E128609128644%_))
                                          (_%E128609128644%_))))
                                  (_%E128609128644%_))))
                           (_%E128607128673%_
                            (lambda ()
                              (let ((_%id128671%_ _%e128606128621%_))
                                (if (gx#identifier? _%id128671%_)
                                    (gx#core-bound-identifier?__%
                                     _%id128671%_
                                     gx#feature-binding?)
                                    (_%E128608128667%_))))))
                      (_%E128607128673%_))))
                 (_%loop128505%_
                  (lambda (_%rest128535%_)
                    (let* ((_%e128536128544%_ _%rest128535%_)
                           (_%E128542128548%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e128536128544%_)))
                           (_%E128538128552%_
                            (lambda ()
                              (if (gx#stx-null? _%e128536128544%_)
                                  '()
                                  (_%E128542128548%_))))
                           (_%E128537128601%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128536128544%_)
                                  (let ((_%e128539128556%_
                                         (gx#syntax-e _%e128536128544%_)))
                                    (let ((_%hd128540128559%_
                                           (##car _%e128539128556%_))
                                          (_%tl128541128561%_
                                           (##cdr _%e128539128556%_)))
                                      (let* ((_%hd128564%_ _%hd128540128559%_)
                                             (_%rest128566%_
                                              _%tl128541128561%_)
                                             (_%e128567128574%_ _%hd128564%_)
                                             (_%E128569128578%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e128567128574%_)))
                                             (_%E128568128597%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e128567128574%_)
                                                    (let ((_%e128570128582%_
                                                           (gx#syntax-e
                                                            _%e128567128574%_)))
                                                      (let ((_%hd128571128585%_
                                                             (##car _%e128570128582%_))
                                                            (_%tl128572128587%_
                                                             (##cdr _%e128570128582%_)))
                                                        (let* ((_%condition128590%_
                                                                _%hd128571128585%_)
                                                               (_%body128592%_
                                                                _%tl128572128587%_))
                                                          (if (gx#stx-eq?
                                                               _%condition128590%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest128566%_)
                          _%body128592%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx128502%_
                           _%hd128564%_))
                      (if (_%satisfied?128504%_ _%condition128590%_)
                          _%body128592%_
                          (_%loop128505%_ _%rest128566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128569128578%_)))))
                                        (_%E128568128597%_))))
                                  (_%E128538128552%_)))))
                      (_%E128537128601%_)))))
          (let* ((_%e128506128513%_ _%stx128502%_)
                 (_%E128508128517%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e128506128513%_)))
                 (_%E128507128531%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128506128513%_)
                        (let ((_%e128509128521%_
                               (gx#syntax-e _%e128506128513%_)))
                          (let ((_%hd128510128524%_ (##car _%e128509128521%_))
                                (_%tl128511128526%_ (##cdr _%e128509128521%_)))
                            (let ((_%clauses128529%_ _%tl128511128526%_))
                              (if (gx#stx-list? _%clauses128529%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop128505%_ _%clauses128529%_))
                                  (_%E128508128517%_)))))
                        (_%E128508128517%_)))))
            (_%E128507128531%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx128445%_ _%rpath128446%_)
        (let* ((_%e128447128457%_ _%stx128445%_)
               (_%E128449128461%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128447128457%_)))
               (_%E128448128488%_
                (lambda ()
                  (if (gx#stx-pair? _%e128447128457%_)
                      (let ((_%e128450128465%_
                             (gx#syntax-e _%e128447128457%_)))
                        (let ((_%hd128451128468%_ (##car _%e128450128465%_))
                              (_%tl128452128470%_ (##cdr _%e128450128465%_)))
                          (if (gx#stx-pair? _%tl128452128470%_)
                              (let ((_%e128453128473%_
                                     (gx#syntax-e _%tl128452128470%_)))
                                (let ((_%hd128454128476%_
                                       (##car _%e128453128473%_))
                                      (_%tl128455128478%_
                                       (##cdr _%e128453128473%_)))
                                  (let ((_%path128481%_ _%hd128454128476%_))
                                    (if (gx#stx-null? _%tl128455128478%_)
                                        (if (gx#stx-string? _%path128481%_)
                                            (let ((_%rpath128486%_
                                                   (let ((_%$e128483%_
                                                          _%rpath128446%_))
                                                     (if _%$e128483%_
                                                         _%$e128483%_
                                                         (gx#core-resolve-path__%
                                                          _%path128481%_
                                                          (gx#stx-source
                                                           _%stx128445%_))))))
                                              (if (member _%rpath128486%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx128445%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath128486%_))
                                                    (gx#stx-source
                                                     _%stx128445%_)))))
                                            (_%E128449128461%_))
                                        (_%E128449128461%_)))))
                              (_%E128449128461%_))))
                      (_%E128449128461%_)))))
          (_%E128448128488%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx128495%_)
        (let ((_%rpath128497%_ '#f))
          (gx#core-expand-include%__% _%stx128495%_ _%rpath128497%_))))
    (define gx#core-expand-include%
      (lambda _g129613_
        (let ((_g129614_ (##length _g129613_)))
          (cond ((##fx= _g129614_ 1)
                 (apply gx#core-expand-include%__0 _g129613_))
                ((##fx= _g129614_ 2)
                 (apply gx#core-expand-include%__% _g129613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g129613_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K128411%_ _%stx128412%_ _%method128413%_)
        (if (procedure? _%K128411%_)
            (let ((_%$e128416%_ (gx#stx-source _%stx128412%_)))
              (if _%$e128416%_
                  ((lambda (_%g128418128420%_)
                     (gx#stx-wrap-source
                      (_%K128411%_ _%stx128412%_)
                      _%g128418128420%_))
                   _%$e128416%_)
                  (_%K128411%_ _%stx128412%_)))
            (let ((_%$e128424%_
                   (bound-method-ref _%K128411%_ _%method128413%_)))
              (if _%$e128424%_
                  ((lambda (_%g128426128428%_)
                     (gx#core-apply-expander__%
                      _%g128426128428%_
                      _%stx128412%_
                      _%method128413%_))
                   _%$e128424%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx128412%_
                   _%method128413%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K128435%_ _%stx128436%_)
        (let ((_%method128438%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K128435%_
           _%stx128436%_
           _%method128438%_))))
    (define gx#core-apply-expander
      (lambda _g129615_
        (let ((_g129616_ (##length _g129615_)))
          (cond ((##fx= _g129616_ 2)
                 (apply gx#core-apply-expander__0 _g129615_))
                ((##fx= _g129616_ 3)
                 (apply gx#core-apply-expander__% _g129615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g129615_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self128396%_ _%stx128397%_)
        (let ((_%self128400%_ _%self128396%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx128397%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self128238%_ _%stx128239%_)
        (let* ((_%self128242%_ _%self128238%_)
               (_%self128251128257%_ _%self128242%_)
               (_%E128253128261%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128251128257%_
                         '((macro-expander K)))
                  '#!void))
               (_%K128254128266%_
                (lambda (_%K128264%_)
                  (gx#core-apply-expander__0 _%K128264%_ _%stx128239%_)))
               (_%e128255128269%_
                (##unchecked-structure-ref _%self128251128257%_ '1 '#f '#f))
               (_%K128272%_ _%e128255128269%_))
          (_%K128254128266%_ _%K128272%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self128080%_ _%stx128081%_)
        (let ((_%self128084%_ _%self128080%_))
          (if (gx#sealed-syntax? _%stx128081%_)
              _%stx128081%_
              (let* ((_%self128093128099%_ _%self128084%_)
                     (_%E128095128103%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self128093128099%_
                               '((core-expander K)))
                        '#!void))
                     (_%K128096128108%_
                      (lambda (_%K128106%_)
                        (gx#core-apply-expander__0 _%K128106%_ _%stx128081%_)))
                     (_%e128097128111%_
                      (##unchecked-structure-ref
                       _%self128093128099%_
                       '1
                       '#f
                       '#f))
                     (_%K128114%_ _%e128097128111%_))
                (_%K128096128108%_ _%K128114%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self127931%_ _%stx127932%_ _%top?127933%_)
        (let ((_%self127936%_ _%self127931%_))
          (if (_%top?127933%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self127936%_
               _%stx127932%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx127932%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self127949%_ _%stx127950%_)
        (let ((_%top?127952%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self127949%_
           _%stx127950%_
           _%top?127952%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g129617_
        (let ((_g129618_ (##length _g129617_)))
          (cond ((##fx= _g129618_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g129617_))
                ((##fx= _g129618_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g129617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g129617_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self127794%_ _%stx127795%_)
        (let ((_%self127798%_ _%self127794%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self127798%_
           _%stx127795%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self127608%_ _%stx127609%_)
        (let* ((_%self127612%_ _%self127608%_)
               (_%self127621127627%_ _%self127612%_)
               (_%E127623127631%_
                (lambda ()
                  (error '"No clause matching"
                         _%self127621127627%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K127624127664%_
                (lambda (_%id127634%_)
                  (let* ((_%e127635127642%_ _%stx127609%_)
                         (_%E127637127646%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e127635127642%_)))
                         (_%E127636127660%_
                          (lambda ()
                            (if (gx#stx-pair? _%e127635127642%_)
                                (let ((_%e127638127650%_
                                       (gx#syntax-e _%e127635127642%_)))
                                  (let ((_%hd127639127653%_
                                         (##car _%e127638127650%_))
                                        (_%tl127640127655%_
                                         (##cdr _%e127638127650%_)))
                                    (let ((_%body127658%_ _%tl127640127655%_))
                                      (gx#core-cons
                                       _%id127634%_
                                       _%body127658%_))))
                                (_%E127637127646%_)))))
                    (_%E127636127660%_))))
               (_%e127625127667%_
                (##unchecked-structure-ref _%self127621127627%_ '1 '#f '#f))
               (_%id127670%_ _%e127625127667%_))
          (_%K127624127664%_ _%id127670%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self127434%_ _%stx127435%_ _%method127436%_)
        (let* ((_%self127437127445%_ _%self127434%_)
               (_%E127439127449%_
                (lambda ()
                  (error '"No clause matching"
                         _%self127437127445%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K127440127456%_
                (lambda (_%phi127452%_ _%ctx127453%_ _%K127454%_)
                  (gx#core-apply-user-macro
                   _%K127454%_
                   _%stx127435%_
                   _%ctx127453%_
                   _%phi127452%_
                   _%method127436%_))))
          (if (##structure-instance-of?
               _%self127437127445%_
               'gx#user-expander::t)
              (let* ((_%e127441127459%_
                      (##unchecked-structure-ref
                       _%self127437127445%_
                       '1
                       '#f
                       '#f))
                     (_%K127462%_ _%e127441127459%_)
                     (_%e127442127464%_
                      (##unchecked-structure-ref
                       _%self127437127445%_
                       '2
                       '#f
                       '#f))
                     (_%ctx127467%_ _%e127442127464%_)
                     (_%e127443127469%_
                      (##unchecked-structure-ref
                       _%self127437127445%_
                       '3
                       '#f
                       '#f))
                     (_%phi127472%_ _%e127443127469%_))
                (_%K127440127456%_ _%phi127472%_ _%ctx127467%_ _%K127462%_))
              (_%E127439127449%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self127477%_ _%stx127478%_)
        (let ((_%method127480%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self127477%_
           _%stx127478%_
           _%method127480%_))))
    (define gx#core-apply-user-expander
      (lambda _g129619_
        (let ((_g129620_ (##length _g129619_)))
          (cond ((##fx= _g129620_ 2)
                 (apply gx#core-apply-user-expander__0 _g129619_))
                ((##fx= _g129620_ 3)
                 (apply gx#core-apply-user-expander__% _g129619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g129619_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K127424%_
               _%stx127425%_
               _%ctx127426%_
               _%phi127427%_
               _%method127428%_)
        (let ((_%mark127430%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx127426%_
                _%phi127427%_
                _%stx127425%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K127424%_
               (gx#stx-apply-mark _%stx127425%_ _%mark127430%_)
               _%method127428%_)
              _%mark127430%_))
           gx#current-expander-marks
           (cons _%mark127430%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx127272%_ _%phi127273%_ _%ctx127274%_)
        (let _%lp127276%_ ((_%bind127278%_
                            (gx#core-resolve-identifier__%
                             _%stx127272%_
                             _%phi127273%_
                             _%ctx127274%_)))
          (if (##structure-direct-instance-of?
               _%bind127278%_
               'gx#import-binding::t)
              (_%lp127276%_
               (##unchecked-structure-ref _%bind127278%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind127278%_
                   'gx#alias-binding::t)
                  (_%lp127276%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind127278%_ '4 '#f '#f)
                    _%phi127273%_
                    _%ctx127274%_))
                  _%bind127278%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx127286%_)
        (let* ((_%phi127288%_ (gx#current-expander-phi))
               (_%ctx127290%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx127286%_
           _%phi127288%_
           _%ctx127290%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx127292%_ _%phi127293%_)
        (let ((_%ctx127295%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx127292%_
           _%phi127293%_
           _%ctx127295%_))))
    (define gx#resolve-identifier
      (lambda _g129621_
        (let ((_g129622_ (##length _g129621_)))
          (cond ((##fx= _g129622_ 1)
                 (apply gx#resolve-identifier__0 _g129621_))
                ((##fx= _g129622_ 2)
                 (apply gx#resolve-identifier__1 _g129621_))
                ((##fx= _g129622_ 3)
                 (apply gx#resolve-identifier__% _g129621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g129621_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx127227%_
               _%val127228%_
               _%rebind?127229%_
               _%phi127230%_
               _%ctx127231%_)
        (let ((_%rebind?127236%_
               (if (not _%rebind?127229%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?127229%_)
                       _%rebind?127229%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx127227%_)
           _%val127228%_
           _%rebind?127236%_
           _%phi127230%_
           _%ctx127231%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx127241%_ _%val127242%_)
        (let* ((_%rebind?127244%_ '#f)
               (_%phi127246%_ (gx#current-expander-phi))
               (_%ctx127248%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127241%_
           _%val127242%_
           _%rebind?127244%_
           _%phi127246%_
           _%ctx127248%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx127250%_ _%val127251%_ _%rebind?127252%_)
        (let* ((_%phi127254%_ (gx#current-expander-phi))
               (_%ctx127256%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127250%_
           _%val127251%_
           _%rebind?127252%_
           _%phi127254%_
           _%ctx127256%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx127258%_ _%val127259%_ _%rebind?127260%_ _%phi127261%_)
        (let ((_%ctx127263%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127258%_
           _%val127259%_
           _%rebind?127260%_
           _%phi127261%_
           _%ctx127263%_))))
    (define gx#bind-identifier!
      (lambda _g129623_
        (let ((_g129624_ (##length _g129623_)))
          (cond ((##fx= _g129624_ 2) (apply gx#bind-identifier!__0 _g129623_))
                ((##fx= _g129624_ 3) (apply gx#bind-identifier!__1 _g129623_))
                ((##fx= _g129624_ 4) (apply gx#bind-identifier!__2 _g129623_))
                ((##fx= _g129624_ 5) (apply gx#bind-identifier!__% _g129623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g129623_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx127193%_ _%phi127194%_ _%ctx127195%_)
        (let _%lp127197%_ ((_%e127199%_ _%stx127193%_)
                           (_%marks127200%_ (gx#current-expander-marks)))
          (if (symbol? _%e127199%_)
              (gx#core-resolve-binding
               _%e127199%_
               _%phi127194%_
               _%phi127194%_
               _%ctx127195%_
               (reverse _%marks127200%_))
              (if (gx#identifier-quote? _%e127199%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e127199%_ '1 '#f '#f)
                   _%phi127194%_
                   '0
                   (##unchecked-structure-ref _%e127199%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e127199%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e127199%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e127199%_ '1 '#f '#f)
                       _%phi127194%_
                       _%phi127194%_
                       _%ctx127195%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e127199%_ '3 '#f '#f)
                        _%marks127200%_))
                      (if (##structure-direct-instance-of?
                           _%e127199%_
                           'gx#syntax-wrap::t)
                          (_%lp127197%_
                           (##unchecked-structure-ref _%e127199%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e127199%_ '3 '#f '#f)
                            _%marks127200%_))
                          (if (##structure-instance-of?
                               _%e127199%_
                               'gerbil#AST::t)
                              (_%lp127197%_
                               (##unchecked-structure-ref
                                _%e127199%_
                                '1
                                '#f
                                '#f)
                               _%marks127200%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx127193%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx127211%_)
        (let* ((_%phi127213%_ (gx#current-expander-phi))
               (_%ctx127215%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx127211%_
           _%phi127213%_
           _%ctx127215%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx127217%_ _%phi127218%_)
        (let ((_%ctx127220%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx127217%_
           _%phi127218%_
           _%ctx127220%_))))
    (define gx#core-resolve-identifier
      (lambda _g129625_
        (let ((_g129626_ (##length _g129625_)))
          (cond ((##fx= _g129626_ 1)
                 (apply gx#core-resolve-identifier__0 _g129625_))
                ((##fx= _g129626_ 2)
                 (apply gx#core-resolve-identifier__1 _g129625_))
                ((##fx= _g129626_ 3)
                 (apply gx#core-resolve-identifier__% _g129625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g129625_))))))
    (define gx#core-resolve-binding
      (lambda (_%id127103%_
               _%phi127104%_
               _%src-phi127105%_
               _%ctx127106%_
               _%marks127107%_)
        (letrec ((_%resolve127109%_
                  (lambda (_%ctx127177%_ _%src-phi127178%_ _%key127179%_)
                    (let _%lp127181%_ ((_%ctx127183%_
                                        (gx#core-context-shift
                                         _%ctx127177%_
                                         _%phi127104%_))
                                       (_%dphi127184%_
                                        (fx- _%phi127104%_ _%src-phi127178%_)))
                      (let ((_%$e127186%_
                             (gx#core-context-resolve
                              _%ctx127183%_
                              _%key127179%_)))
                        (if _%$e127186%_
                            _%$e127186%_
                            (if (fxzero? _%dphi127184%_)
                                '#f
                                (if (fxpositive? _%dphi127184%_)
                                    (_%lp127181%_
                                     (gx#core-context-shift _%ctx127183%_ '-1)
                                     (##fx- _%dphi127184%_ '1))
                                    (_%lp127181%_
                                     (gx#core-context-shift _%ctx127183%_ '1)
                                     (##fx+ _%dphi127184%_ '1))))))))))
          (let _%lp127111%_ ((_%ctx127113%_ _%ctx127106%_)
                             (_%src-phi127114%_ _%src-phi127105%_)
                             (_%rest127115%_ _%marks127107%_))
            (let* ((_%rest127116127124%_ _%rest127115%_)
                   (_%else127118127132%_
                    (lambda ()
                      (_%resolve127109%_
                       _%ctx127113%_
                       _%src-phi127114%_
                       _%id127103%_)))
                   (_%K127120127165%_
                    (lambda (_%rest127135%_ _%hd127136%_)
                      (let* ((_%hd127137127143%_ _%hd127136%_)
                             (_%E127139127147%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd127137127143%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K127140127157%_
                              (lambda (_%subst127150%_)
                                (let ((_%$e127154%_
                                       (let ((_%key127152%_
                                              (if _%subst127150%_
                                                  (hash-get
                                                   _%subst127150%_
                                                   _%id127103%_)
                                                  '#f)))
                                         (if _%key127152%_
                                             (_%resolve127109%_
                                              _%ctx127113%_
                                              _%src-phi127114%_
                                              _%key127152%_)
                                             '#f))))
                                  (if _%$e127154%_
                                      _%$e127154%_
                                      (_%lp127111%_
                                       (##unchecked-structure-ref
                                        _%hd127136%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd127136%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest127135%_))))))
                        (if (##structure-instance-of?
                             _%hd127137127143%_
                             'gx#expander-mark::t)
                            (let* ((_%e127141127160%_
                                    (##unchecked-structure-ref
                                     _%hd127137127143%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst127163%_ _%e127141127160%_))
                              (_%K127140127157%_ _%subst127163%_))
                            (_%E127139127147%_))))))
              (if (pair? _%rest127116127124%_)
                  (let ((_%hd127121127168%_ (##car _%rest127116127124%_))
                        (_%tl127122127170%_ (##cdr _%rest127116127124%_)))
                    (let* ((_%hd127173%_ _%hd127121127168%_)
                           (_%rest127175%_ _%tl127122127170%_))
                      (_%K127120127165%_ _%rest127175%_ _%hd127173%_)))
                  (_%else127118127132%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key126973%_
               _%val126974%_
               _%rebind?126975%_
               _%phi126976%_
               _%ctx126977%_)
        (letrec ((_%update-binding126979%_
                  (lambda (_%xval127052%_)
                    (if (or (_%rebind?126975%_
                             _%ctx126977%_
                             _%xval127052%_
                             _%val126974%_)
                            (and (##structure-direct-instance-of?
                                  _%xval127052%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval127052%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val126974%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val126974%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval127052%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val126974%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val126974%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval127052%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val126974%_
                        (if (and (##structure-direct-instance-of?
                                  _%val126974%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val126974%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval127052%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val126974%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval127052%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval127052%_
                            (if (and (##structure-direct-instance-of?
                                      _%val126974%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval127052%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key126973%_
                                 (cons (##unchecked-structure-ref
                                        _%val126974%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val126974%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval127052%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval127052%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval127052%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval127052%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key126973%_
                                 _%val126974%_
                                 _%xval127052%_))))))
                 (_%gensubst126980%_
                  (lambda (_%subst127047%_ _%id127048%_)
                    (let ((_%eid127050%_
                           (gensym (if (uninterned-symbol? _%id127048%_)
                                       '%
                                       _%id127048%_))))
                      (hash-put! _%subst127047%_ _%id127048%_ _%eid127050%_)
                      _%eid127050%_)))
                 (_%subst!126981%_
                  (lambda (_%key126983%_)
                    (let* ((_%key126984126992%_ _%key126983%_)
                           (_%else126986127000%_ (lambda () _%key126983%_))
                           (_%K126988127035%_
                            (lambda (_%mark127003%_ _%id127004%_)
                              (let* ((_%mark127005127011%_ _%mark127003%_)
                                     (_%E127007127015%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark127005127011%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K127008127027%_
                                      (lambda (_%subst127018%_)
                                        (if (not _%subst127018%_)
                                            (let ((_%subst127021%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark127003%_
                                               _%subst127021%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst126980%_
                                               _%subst127021%_
                                               _%id127004%_))
                                            (let ((_%$e127023%_
                                                   (hash-get
                                                    _%subst127018%_
                                                    _%id127004%_)))
                                              (if _%$e127023%_
                                                  _%$e127023%_
                                                  (_%gensubst126980%_
                                                   _%subst127018%_
                                                   _%id127004%_)))))))
                                (if (##structure-instance-of?
                                     _%mark127005127011%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e127009127030%_
                                            (##unchecked-structure-ref
                                             _%mark127005127011%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst127033%_ _%e127009127030%_))
                                      (_%K127008127027%_ _%subst127033%_))
                                    (_%E127007127015%_))))))
                      (if (pair? _%key126984126992%_)
                          (let ((_%hd126989127038%_
                                 (##car _%key126984126992%_))
                                (_%tl126990127040%_
                                 (##cdr _%key126984126992%_)))
                            (let* ((_%id127043%_ _%hd126989127038%_)
                                   (_%mark127045%_ _%tl126990127040%_))
                              (_%K126988127035%_ _%mark127045%_ _%id127043%_)))
                          (_%else126986127000%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx126977%_ _%phi126976%_)
           (_%subst!126981%_ _%key126973%_)
           _%val126974%_
           _%update-binding126979%_))))
    (define gx#core-bind!__0
      (lambda (_%key127073%_ _%val127074%_)
        (let* ((_%rebind?127076%_ false)
               (_%phi127078%_ (gx#current-expander-phi))
               (_%ctx127080%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127073%_
           _%val127074%_
           _%rebind?127076%_
           _%phi127078%_
           _%ctx127080%_))))
    (define gx#core-bind!__1
      (lambda (_%key127082%_ _%val127083%_ _%rebind?127084%_)
        (let* ((_%phi127086%_ (gx#current-expander-phi))
               (_%ctx127088%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127082%_
           _%val127083%_
           _%rebind?127084%_
           _%phi127086%_
           _%ctx127088%_))))
    (define gx#core-bind!__2
      (lambda (_%key127090%_ _%val127091%_ _%rebind?127092%_ _%phi127093%_)
        (let ((_%ctx127095%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127090%_
           _%val127091%_
           _%rebind?127092%_
           _%phi127093%_
           _%ctx127095%_))))
    (define gx#core-bind!
      (lambda _g129627_
        (let ((_g129628_ (##length _g129627_)))
          (cond ((##fx= _g129628_ 2) (apply gx#core-bind!__0 _g129627_))
                ((##fx= _g129628_ 3) (apply gx#core-bind!__1 _g129627_))
                ((##fx= _g129628_ 4) (apply gx#core-bind!__2 _g129627_))
                ((##fx= _g129628_ 5) (apply gx#core-bind!__% _g129627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g129627_))))))
    (define gx#core-identifier-key
      (lambda (_%stx126904%_)
        (if (symbol? _%stx126904%_)
            (let* ((_%g126906126914%_ (gx#current-expander-marks))
                   (_%else126908126922%_ (lambda () _%stx126904%_))
                   (_%K126910126927%_
                    (lambda (_%hd126925%_) (cons _%stx126904%_ _%hd126925%_))))
              (if (pair? _%g126906126914%_)
                  (let* ((_%hd126911126930%_ (##car _%g126906126914%_))
                         (_%hd126933%_ _%hd126911126930%_))
                    (_%K126910126927%_ _%hd126933%_))
                  (_%else126908126922%_)))
            (if (gx#identifier? _%stx126904%_)
                (let* ((_%id126936%_ (gx#syntax-local-unwrap _%stx126904%_))
                       (_%eid126938%_ (gx#stx-e _%id126936%_))
                       (_%marks126940%_
                        (gx#stx-identifier-marks* _%id126936%_))
                       (_%marks126942126950%_ _%marks126940%_)
                       (_%else126944126958%_ (lambda () _%eid126938%_))
                       (_%K126946126963%_
                        (lambda (_%hd126961%_)
                          (cons _%eid126938%_ _%hd126961%_))))
                  (if (pair? _%marks126942126950%_)
                      (let* ((_%hd126947126966%_ (##car _%marks126942126950%_))
                             (_%hd126969%_ _%hd126947126966%_))
                        (_%K126946126963%_ _%hd126969%_))
                      (_%else126944126958%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx126904%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx126843%_ _%phi126844%_)
        (letrec ((_%make-phi126846%_
                  (lambda (_%super126902%_)
                    (let ((__obj129600
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj129600
                       (##gensym 'phi)
                       _%super126902%_)
                      __obj129600)))
                 (_%make-phi/up126847%_
                  (lambda (_%ctx126897%_ _%super126898%_)
                    (let ((_%ctx+1126900%_
                           (_%make-phi126846%_ _%super126898%_)))
                      (##unchecked-structure-set!
                       _%ctx126897%_
                       _%ctx+1126900%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1126900%_
                       _%ctx126897%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1126900%_)))
                 (_%make-phi/down126848%_
                  (lambda (_%ctx126892%_ _%super126893%_)
                    (let ((_%ctx-1126895%_
                           (_%make-phi126846%_ _%super126893%_)))
                      (##unchecked-structure-set!
                       _%ctx-1126895%_
                       _%ctx126892%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx126892%_
                       _%ctx-1126895%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1126895%_)))
                 (_%shift126849%_
                  (lambda (_%ctx126875%_
                           _%delta126876%_
                           _%make-delta-context126877%_
                           _%phi126878%_
                           _%K126879%_)
                    (let ((_%$e126881%_
                           (##unchecked-structure-ref
                            _%ctx126875%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e126881%_
                          ((lambda (_%super126884%_)
                             (let* ((_%super126886%_
                                     (_%K126879%_
                                      _%super126884%_
                                      _%delta126876%_))
                                    (_%ctx+d126888%_
                                     (_%make-delta-context126877%_
                                      _%ctx126875%_
                                      _%super126886%_)))
                               (_%K126879%_
                                _%ctx+d126888%_
                                (fx- _%phi126878%_ _%delta126876%_))))
                           _%$e126881%_)
                          (error '"Bad context" _%ctx126875%_))))))
          (let _%K126851%_ ((_%ctx126853%_ _%ctx126843%_)
                            (_%phi126854%_ _%phi126844%_))
            (if (fxzero? _%phi126854%_)
                _%ctx126853%_
                (if (##structure-instance-of? _%ctx126853%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi126854%_)
                        (let ((_%$e126858%_
                               (##unchecked-structure-ref
                                _%ctx126853%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e126858%_
                              ((lambda (_%g126860126862%_)
                                 (_%K126851%_
                                  _%g126860126862%_
                                  (##fx- _%phi126854%_ '1)))
                               _%$e126858%_)
                              (_%shift126849%_
                               _%ctx126853%_
                               '1
                               _%make-phi/up126847%_
                               _%phi126854%_
                               _%K126851%_)))
                        (let ((_%$e126866%_
                               (##unchecked-structure-ref
                                _%ctx126853%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e126866%_
                              ((lambda (_%g126868126870%_)
                                 (_%K126851%_
                                  _%g126868126870%_
                                  (##fx+ _%phi126854%_ '1)))
                               _%$e126866%_)
                              (_%shift126849%_
                               _%ctx126853%_
                               '-1
                               _%make-phi/down126848%_
                               _%phi126854%_
                               _%K126851%_))))
                    _%ctx126853%_))))))
    (define gx#core-context-get
      (lambda (_%ctx126840%_ _%key126841%_)
        (hash-get
         (##unchecked-structure-ref _%ctx126840%_ '2 '#f '#f)
         _%key126841%_)))
    (define gx#core-context-put!
      (lambda (_%ctx126836%_ _%key126837%_ _%val126838%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx126836%_ '2 '#f '#f)
         _%key126837%_
         _%val126838%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx126822%_ _%key126823%_)
        (let _%lp126825%_ ((_%ctx126827%_ _%ctx126822%_))
          (let ((_%$e126829%_
                 (gx#core-context-get _%ctx126827%_ _%key126823%_)))
            (if _%$e126829%_
                _%$e126829%_
                (let ((_%$e126832%_
                       (if (##structure-instance-of?
                            _%ctx126827%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx126827%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e126832%_ (_%lp126825%_ _%$e126832%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx126811%_ _%key126812%_ _%val126813%_ _%rebind126814%_)
        (let ((_%$e126816%_ (gx#core-context-get _%ctx126811%_ _%key126812%_)))
          (if _%$e126816%_
              ((lambda (_%xval126819%_)
                 (gx#core-context-put!
                  _%ctx126811%_
                  _%key126812%_
                  (_%rebind126814%_ _%xval126819%_)))
               _%$e126816%_)
              (gx#core-context-put!
               _%ctx126811%_
               _%key126812%_
               _%val126813%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx126786%_ _%stop?126787%_)
        (let _%lp126789%_ ((_%ctx126791%_ _%ctx126786%_))
          (if (_%stop?126787%_ _%ctx126791%_)
              _%ctx126791%_
              (if (##structure-instance-of? _%ctx126791%_ 'gx#phi-context::t)
                  (_%lp126789%_
                   (##unchecked-structure-ref _%ctx126791%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx126800%_ (gx#current-expander-context))
               (_%stop?126802%_ gx#top-context?))
          (gx#core-context-top__% _%ctx126800%_ _%stop?126802%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx126804%_)
        (let ((_%stop?126806%_ gx#top-context?))
          (gx#core-context-top__% _%ctx126804%_ _%stop?126806%_))))
    (define gx#core-context-top
      (lambda _g129629_
        (let ((_g129630_ (##length _g129629_)))
          (cond ((##fx= _g129630_ 0) (apply gx#core-context-top__0 _g129629_))
                ((##fx= _g129630_ 1) (apply gx#core-context-top__1 _g129629_))
                ((##fx= _g129630_ 2) (apply gx#core-context-top__% _g129629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g129629_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx126771%_)
        (let _%lp126773%_ ((_%ctx126775%_ _%ctx126771%_))
          (if (##structure-instance-of? _%ctx126775%_ 'gx#phi-context::t)
              (_%lp126773%_
               (##unchecked-structure-ref _%ctx126775%_ '3 '#f '#f))
              _%ctx126775%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx126781%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx126781%_))))
    (define gx#core-context-root
      (lambda _g129631_
        (let ((_g129632_ (##length _g129631_)))
          (cond ((##fx= _g129632_ 0) (apply gx#core-context-root__0 _g129631_))
                ((##fx= _g129632_ 1) (apply gx#core-context-root__% _g129631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g129631_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx126753%_ . _%ignore126754%_)
        (let ((_%$e126756%_ (gx#current-expander-allow-rebind?)))
          (if _%$e126756%_
              _%$e126756%_
              (if (##structure-instance-of? _%ctx126753%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx126753%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx126753%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx126763%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx126763%_))))
    (define gx#core-context-rebind?
      (lambda _g129633_
        (let ((_g129634_ (##length _g129633_)))
          (cond ((##fx= _g129634_ 0)
                 (apply gx#core-context-rebind?__0 _g129633_))
                ((##fx= _g129634_ 1)
                 (apply gx#core-context-rebind?__% _g129633_))
                ((##fx>= _g129634_ 1)
                 (apply gx#core-context-rebind?__% _g129633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g129633_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx126736%_)
        (let ((_%$e126738%_ (gx#core-context-top__1 _%ctx126736%_)))
          (if _%$e126738%_
              ((lambda (_%ctx126741%_)
                 (if (##structure-instance-of?
                      _%ctx126741%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx126741%_ '6 '#f '#f)
                     '#f))
               _%$e126738%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx126748%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx126748%_))))
    (define gx#core-context-namespace
      (lambda _g129635_
        (let ((_g129636_ (##length _g129635_)))
          (cond ((##fx= _g129636_ 0)
                 (apply gx#core-context-namespace__0 _g129635_))
                ((##fx= _g129636_ 1)
                 (apply gx#core-context-namespace__% _g129635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g129635_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind126722%_ _%is?126723%_)
        (if (##structure-direct-instance-of?
             _%bind126722%_
             'gx#syntax-binding::t)
            (_%is?126723%_
             (##unchecked-structure-ref _%bind126722%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind126728%_)
        (let ((_%is?126730%_ gx#expander?))
          (gx#expander-binding?__% _%bind126728%_ _%is?126730%_))))
    (define gx#expander-binding?
      (lambda _g129637_
        (let ((_g129638_ (##length _g129637_)))
          (cond ((##fx= _g129638_ 1) (apply gx#expander-binding?__0 _g129637_))
                ((##fx= _g129638_ 2) (apply gx#expander-binding?__% _g129637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g129637_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind126719%_)
        (gx#expander-binding?__% _%bind126719%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind126717%_)
        (gx#expander-binding?__% _%bind126717%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind126711%_)
        (letrec ((_%direct-special-form?126713%_
                  (lambda (_%obj126715%_)
                    (##structure-direct-instance-of?
                     _%obj126715%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind126711%_
           _%direct-special-form?126713%_))))
    (define gx#special-form-binding?
      (lambda (_%bind126709%_)
        (gx#expander-binding?__% _%bind126709%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind126700%_)
        (letrec ((_%feature?126702%_
                  (lambda (_%e126704%_)
                    (let ((_%$e126706%_
                           (##structure-instance-of?
                            _%e126704%_
                            'gx#feature-expander::t)))
                      (if _%$e126706%_
                          _%$e126706%_
                          (##structure-instance-of?
                           _%e126704%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind126700%_ _%feature?126702%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind126698%_)
        (gx#expander-binding?__% _%bind126698%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id126685%_ _%bound?126686%_)
        (if (gx#identifier? _%id126685%_)
            (_%bound?126686%_ (gx#resolve-identifier__0 _%id126685%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id126691%_)
        (let ((_%bound?126693%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id126691%_ _%bound?126693%_))))
    (define gx#core-bound-identifier?
      (lambda _g129639_
        (let ((_g129640_ (##length _g129639_)))
          (cond ((##fx= _g129640_ 1)
                 (apply gx#core-bound-identifier?__0 _g129639_))
                ((##fx= _g129640_ 2)
                 (apply gx#core-bound-identifier?__% _g129639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g129639_))))))
    (define gx#core-identifier=?
      (lambda (_%x126675%_ _%y126676%_)
        (letrec ((_%y=?126678%_
                  (lambda (_%xid126682%_)
                    ((if (list? _%y126676%_) memq eq?)
                     _%xid126682%_
                     _%y126676%_))))
          (let ((_%bind126680%_ (gx#resolve-identifier__0 _%x126675%_)))
            (if (##structure-instance-of? _%bind126680%_ 'gx#binding::t)
                (_%y=?126678%_
                 (##unchecked-structure-ref _%bind126680%_ '1 '#f '#f))
                (_%y=?126678%_ (gx#stx-e _%x126675%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e126673%_)
        (if (interned-symbol? _%e126673%_)
            (string-index__0 (symbol->string _%e126673%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx126626%_ _%src126627%_ _%ctx126628%_ _%marks126629%_)
        (if (##structure? _%stx126626%_)
            (let ((_%$e126631%_ (gx#sealed-syntax-unwrap _%stx126626%_)))
              (if _%$e126631%_
                  _%$e126631%_
                  (if (gx#identifier? _%stx126626%_)
                      (let ((_%id126635%_
                             (gx#stx-unwrap__% _%stx126626%_ _%marks126629%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id126635%_ '1 '#f '#f)
                         (let ((_%$e126637%_
                                (##unchecked-structure-ref
                                 _%id126635%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e126637%_ _%$e126637%_ _%src126627%_))
                         _%ctx126628%_
                         (##unchecked-structure-ref _%id126635%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx126626%_)
                       (let ((_%$e126641%_ (gx#stx-source _%stx126626%_)))
                         (if _%$e126641%_ _%$e126641%_ _%src126627%_))
                       _%ctx126628%_
                       (reverse _%marks126629%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx126626%_
             _%src126627%_
             _%ctx126628%_
             (reverse _%marks126629%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx126647%_)
        (let* ((_%src126649%_ '#f)
               (_%ctx126651%_ (gx#current-expander-context))
               (_%marks126653%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx126647%_
           _%src126649%_
           _%ctx126651%_
           _%marks126653%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx126655%_ _%src126656%_)
        (let* ((_%ctx126658%_ (gx#current-expander-context))
               (_%marks126660%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx126655%_
           _%src126656%_
           _%ctx126658%_
           _%marks126660%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx126662%_ _%src126663%_ _%ctx126664%_)
        (let ((_%marks126666%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx126662%_
           _%src126663%_
           _%ctx126664%_
           _%marks126666%_))))
    (define gx#core-quote-syntax
      (lambda _g129641_
        (let ((_g129642_ (##length _g129641_)))
          (cond ((##fx= _g129642_ 1) (apply gx#core-quote-syntax__0 _g129641_))
                ((##fx= _g129642_ 2) (apply gx#core-quote-syntax__1 _g129641_))
                ((##fx= _g129642_ 3) (apply gx#core-quote-syntax__2 _g129641_))
                ((##fx= _g129642_ 4) (apply gx#core-quote-syntax__% _g129641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g129641_))))))
    (define gx#core-cons
      (lambda (_%hd126622%_ _%tl126623%_)
        (cons (gx#core-quote-syntax__0 _%hd126622%_) _%tl126623%_)))
    (define gx#core-list
      (lambda (_%hd126619%_ . _%rest126620%_)
        (cons (gx#core-quote-syntax__0 _%hd126619%_) _%rest126620%_)))
    (define gx#core-cons*
      (lambda (_%hd126616%_ . _%rest126617%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd126616%_) _%rest126617%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path126585%_ _%rel126586%_)
        (let ((_%path126603%_ (gx#stx-e _%stx-path126585%_))
              (_%reldir126604%_
               (let _%lp126588%_ ((_%relsrc126590%_
                                   (let ((_%$e126600%_
                                          (gx#stx-source _%stx-path126585%_)))
                                     (if _%$e126600%_
                                         _%$e126600%_
                                         _%rel126586%_))))
                 (if (##structure-instance-of? _%relsrc126590%_ 'gerbil#AST::t)
                     (_%lp126588%_
                      (let ((_%$e126593%_ (gx#stx-source _%relsrc126590%_)))
                        (if _%$e126593%_
                            _%$e126593%_
                            (gx#stx-e _%relsrc126590%_))))
                     (if (source-location-path? _%relsrc126590%_)
                         (path-directory
                          (source-location-path _%relsrc126590%_))
                         (if (string? _%relsrc126590%_)
                             (path-directory _%relsrc126590%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path126603%_ (path-normalize _%reldir126604%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path126609%_)
        (let ((_%rel126611%_ '#f))
          (gx#core-resolve-path__% _%stx-path126609%_ _%rel126611%_))))
    (define gx#core-resolve-path
      (lambda _g129643_
        (let ((_g129644_ (##length _g129643_)))
          (cond ((##fx= _g129644_ 1) (apply gx#core-resolve-path__0 _g129643_))
                ((##fx= _g129644_ 2) (apply gx#core-resolve-path__% _g129643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g129643_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr126541%_ _%ctx126542%_)
        (let* ((_%repr126543126550%_ _%repr126541%_)
               (_%E126545126554%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr126543126550%_
                         '([phi . subs]))
                  '#!void))
               (_%K126546126562%_
                (lambda (_%subs126557%_ _%phi126558%_)
                  (let ((_%subst126560%_
                         (if (null? _%subs126557%_)
                             '#f
                             (list->hash-table-eq _%subs126557%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst126560%_
                     _%ctx126542%_
                     _%phi126558%_
                     '#f)))))
          (if (pair? _%repr126543126550%_)
              (let ((_%hd126547126565%_ (##car _%repr126543126550%_))
                    (_%tl126548126567%_ (##cdr _%repr126543126550%_)))
                (let* ((_%phi126570%_ _%hd126547126565%_)
                       (_%subs126572%_ _%tl126548126567%_))
                  (_%K126546126562%_ _%subs126572%_ _%phi126570%_)))
              (_%E126545126554%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr126577%_)
        (let ((_%ctx126579%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr126577%_ _%ctx126579%_))))
    (define gx#core-deserialize-mark
      (lambda _g129645_
        (let ((_g129646_ (##length _g129645_)))
          (cond ((##fx= _g129646_ 1)
                 (apply gx#core-deserialize-mark__0 _g129645_))
                ((##fx= _g129646_ 2)
                 (apply gx#core-deserialize-mark__% _g129645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g129645_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx126538%_)
        (gx#stx-rewrap _%stx126538%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx126536%_)
        (gx#stx-unwrap__% _%stx126536%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx126506%_)
        (let* ((_%g126507126515%_ (gx#current-expander-marks))
               (_%else126509126523%_ (lambda () _%stx126506%_))
               (_%K126511126528%_
                (lambda (_%hd126526%_)
                  (gx#stx-apply-mark _%stx126506%_ _%hd126526%_))))
          (if (pair? _%g126507126515%_)
              (let* ((_%hd126512126531%_ (##car _%g126507126515%_))
                     (_%hd126534%_ _%hd126512126531%_))
                (_%K126511126528%_ _%hd126534%_))
              (_%else126509126523%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx126491%_ _%E126492%_)
        (let ((_%bind126494%_ (gx#resolve-identifier__0 _%stx126491%_)))
          (if (##structure-direct-instance-of?
               _%bind126494%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind126494%_ '4 '#f '#f)
              (_%E126492%_ _%stx126491%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx126499%_)
        (let ((_%E126501%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx126499%_ _%E126501%_))))
    (define gx#syntax-local-e
      (lambda _g129647_
        (let ((_g129648_ (##length _g129647_)))
          (cond ((##fx= _g129648_ 1) (apply gx#syntax-local-e__0 _g129647_))
                ((##fx= _g129648_ 2) (apply gx#syntax-local-e__% _g129647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g129647_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx126475%_ _%E126476%_)
        (let ((_%e126478%_ (gx#syntax-local-e__% _%stx126475%_ _%E126476%_)))
          (if (##structure-instance-of? _%e126478%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e126478%_ '1 '#f '#f)
              _%e126478%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx126483%_)
        (let ((_%E126485%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx126483%_ _%E126485%_))))
    (define gx#syntax-local-value
      (lambda _g129649_
        (let ((_g129650_ (##length _g129649_)))
          (cond ((##fx= _g129650_ 1)
                 (apply gx#syntax-local-value__0 _g129649_))
                ((##fx= _g129650_ 2)
                 (apply gx#syntax-local-value__% _g129649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g129649_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx126472%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx126472%_)))))
