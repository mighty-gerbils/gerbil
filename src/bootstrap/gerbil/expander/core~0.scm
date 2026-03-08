(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1773012985)
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
      (lambda _%$args178795%_
        (apply make-instance gx#expander-context::t _%$args178795%_)))
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
      (lambda _%$args178792%_
        (apply make-instance gx#root-context::t _%$args178792%_)))
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
      (lambda _%$args178789%_
        (apply make-instance gx#phi-context::t _%$args178789%_)))
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
      (lambda _%$args178786%_
        (apply make-instance gx#top-context::t _%$args178786%_)))
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
      (lambda _%$args178783%_
        (apply make-instance gx#module-context::t _%$args178783%_)))
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
      (lambda _%$args178780%_
        (apply make-instance gx#prelude-context::t _%$args178780%_)))
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
      (lambda _%$args178777%_
        (apply make-instance gx#local-context::t _%$args178777%_)))
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
      (lambda (_%self178750%_ _%id178751%_ _%super178752%_)
        (let ((_%self178755%_ _%self178750%_))
          (if (##fx< '3 (##structure-length _%self178755%_))
              (begin
                (##unchecked-structure-set!
                 _%self178755%_
                 _%id178751%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178755%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178755%_
                 _%super178752%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178755%_
                     '3
                     (##structure-length _%self178755%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self178768%_ _%id178769%_)
        (let ((_%super178771%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self178768%_
           _%id178769%_
           _%super178771%_))))
    (define gx#phi-context:::init!
      (lambda _g178837_
        (let ((_g178838_ (##length _g178837_)))
          (cond ((##fx= _g178838_ 2)
                 (apply gx#phi-context:::init!__0 _g178837_))
                ((##fx= _g178838_ 3)
                 (apply gx#phi-context:::init!__% _g178837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g178837_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self178603%_ _%super178604%_)
        (let ((_%self178607%_ _%self178603%_))
          (if (##fx< '3 (##structure-length _%self178607%_))
              (begin
                (##unchecked-structure-set!
                 _%self178607%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178607%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178607%_
                 _%super178604%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178607%_
                     '3
                     (##structure-length _%self178607%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self178620%_)
        (let ((_%super178622%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self178620%_ _%super178622%_))))
    (define gx#local-context:::init!
      (lambda _g178839_
        (let ((_g178840_ (##length _g178839_)))
          (cond ((##fx= _g178840_ 1)
                 (apply gx#local-context:::init!__0 _g178839_))
                ((##fx= _g178840_ 2)
                 (apply gx#local-context:::init!__% _g178839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g178839_))))))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args178477%_
        (apply make-instance gx#binding::t _%$args178477%_)))
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
      (lambda (_%self178460%_ _%id178461%_ _%key178462%_ _%phi178463%_)
        (let ((_%self178466%_ _%self178460%_))
          (##unchecked-structure-set! _%self178466%_ _%id178461%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self178466%_ _%key178462%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self178466%_
           _%phi178463%_
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args178335%_
        (apply make-instance gx#runtime-binding::t _%$args178335%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args178332%_
        (apply make-instance gx#local-binding::t _%$args178332%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args178329%_
        (apply make-instance gx#top-binding::t _%$args178329%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args178326%_
        (apply make-instance gx#module-binding::t _%$args178326%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args178323%_
        (apply make-instance gx#extern-binding::t _%$args178323%_)))
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
      (lambda (_%self177939%_
               _%id177940%_
               _%key177941%_
               _%phi177942%_
               _%ctx177943%_)
        (let ((_%self177946%_ _%self177939%_))
          (gx#binding:::init!
           _%self177946%_
           _%id177940%_
           _%key177941%_
           _%phi177942%_)
          (##unchecked-structure-set!
           _%self177946%_
           _%ctx177943%_
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args177692%_
        (apply make-instance gx#syntax-binding::t _%$args177692%_)))
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args177689%_
        (apply make-instance gx#import-binding::t _%$args177689%_)))
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args177686%_
        (apply make-instance gx#alias-binding::t _%$args177686%_)))
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
      (lambda (_%self177668%_
               _%id177669%_
               _%key177670%_
               _%phi177671%_
               _%e177672%_)
        (let ((_%self177675%_ _%self177668%_))
          (gx#binding:::init!
           _%self177675%_
           _%id177669%_
           _%key177670%_
           _%phi177671%_)
          (##unchecked-structure-set! _%self177675%_ _%e177672%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self177526%_
               _%id177527%_
               _%key177528%_
               _%phi177529%_
               _%e177530%_
               _%ctx177531%_
               _%weak?177532%_)
        (let ((_%self177535%_ _%self177526%_))
          (gx#binding:::init!
           _%self177535%_
           _%id177527%_
           _%key177528%_
           _%phi177529%_)
          (##unchecked-structure-set! _%self177535%_ _%e177530%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self177535%_ _%ctx177531%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self177535%_
           _%weak?177532%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self177386%_
               _%id177387%_
               _%key177388%_
               _%phi177389%_
               _%e177390%_)
        (let ((_%self177393%_ _%self177386%_))
          (gx#binding:::init!
           _%self177393%_
           _%id177387%_
           _%key177388%_
           _%phi177389%_)
          (##unchecked-structure-set! _%self177393%_ _%e177390%_ '5 '#f '#f))))
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
      (lambda _%$args177261%_
        (apply make-instance gx#expander::t _%$args177261%_)))
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
      (lambda _%$args177258%_
        (apply make-instance gx#core-expander::t _%$args177258%_)))
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
      (lambda _%$args177255%_
        (apply make-instance gx#expression-form::t _%$args177255%_)))
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
      (lambda _%$args177252%_
        (apply make-instance gx#special-form::t _%$args177252%_)))
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
      (lambda _%$args177249%_
        (apply make-instance gx#definition-form::t _%$args177249%_)))
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
      (lambda _%$args177246%_
        (apply make-instance gx#top-special-form::t _%$args177246%_)))
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
      (lambda _%$args177243%_
        (apply make-instance gx#module-special-form::t _%$args177243%_)))
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
      (lambda _%$args177240%_
        (apply make-instance gx#feature-expander::t _%$args177240%_)))
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
      (lambda _%$args177237%_
        (apply make-instance gx#private-feature-expander::t _%$args177237%_)))
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
      (lambda _%$args177234%_
        (apply make-instance gx#reserved-expander::t _%$args177234%_)))
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
      (lambda _%$args177231%_
        (apply make-instance gx#macro-expander::t _%$args177231%_)))
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
      (lambda _%$args177228%_
        (apply make-instance gx#rename-macro-expander::t _%$args177228%_)))
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
      (lambda _%$args177225%_
        (apply make-instance gx#user-expander::t _%$args177225%_)))
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
      (lambda _%$args177222%_
        (apply make-instance gx#expander-mark::t _%$args177222%_)))
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
      (lambda (_%ctx177206%_
               _%message177207%_
               _%stx177208%_
               .
               _%details177209%_)
        (let ((_%ctx177220%_
               (let ((_%$e177211%_ _%ctx177206%_))
                 (if _%$e177211%_
                     _%$e177211%_
                     (let ((_%$e177214%_ (gx#core-context-top__0)))
                       (if _%$e177214%_
                           ((lambda (_%ctx177217%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx177217%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e177214%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message177207%_
                  (cons _%stx177208%_ _%details177209%_)
                  _%ctx177220%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx177193%_ _%expression?177194%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx177193%_ _%expression?177194%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx177199%_)
        (let ((_%expression?177201%_ '#f))
          (gx#eval-syntax__% _%stx177199%_ _%expression?177201%_))))
    (define gx#eval-syntax
      (lambda _g178841_
        (let ((_g178842_ (##length _g178841_)))
          (cond ((##fx= _g178842_ 1) (apply gx#eval-syntax__0 _g178841_))
                ((##fx= _g178842_ 2) (apply gx#eval-syntax__% _g178841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g178841_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx177178%_ _%expression?177179%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx177178%_ _%expression?177179%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx177185%_)
        (let ((_%expression?177187%_ '#f))
          (gx#eval-syntax+1__% _%stx177185%_ _%expression?177187%_))))
    (define gx#eval-syntax+1
      (lambda _g178843_
        (let ((_g178844_ (##length _g178843_)))
          (cond ((##fx= _g178844_ 1) (apply gx#eval-syntax+1__0 _g178843_))
                ((##fx= _g178844_ 2) (apply gx#eval-syntax+1__% _g178843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g178843_))))))
    (define gx#eval-expression+1
      (lambda (_%stx177175%_) (gx#eval-syntax+1__% _%stx177175%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx177173%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx177173%_))))
    (define gx#core-expand__%
      (lambda (_%stx177160%_ _%expression?177161%_)
        (if _%expression?177161%_
            (gx#core-expand-expression _%stx177160%_)
            (gx#core-expand-top _%stx177160%_))))
    (define gx#core-expand__0
      (lambda (_%stx177166%_)
        (let ((_%expression?177168%_ '#f))
          (gx#core-expand__% _%stx177166%_ _%expression?177168%_))))
    (define gx#core-expand
      (lambda _g178845_
        (let ((_g178846_ (##length _g178845_)))
          (cond ((##fx= _g178846_ 1) (apply gx#core-expand__0 _g178845_))
                ((##fx= _g178846_ 2) (apply gx#core-expand__% _g178845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g178845_))))))
    (define gx#core-expand-top
      (lambda (_%stx177127%_)
        (let* ((_%stx177129%_ (gx#core-expand*__0 _%stx177127%_))
               (_%e177130177137%_ _%stx177129%_)
               (_%E177132177141%_
                (lambda () (gx#core-expand-expression _%stx177129%_)))
               (_%E177131177155%_
                (lambda ()
                  (if (gx#stx-pair? _%e177130177137%_)
                      (let ((_%e177133177145%_
                             (gx#syntax-e _%e177130177137%_)))
                        (let ((_%hd177134177148%_ (##car _%e177133177145%_))
                              (_%tl177135177150%_ (##cdr _%e177133177145%_)))
                          (let ((_%form177153%_ _%hd177134177148%_))
                            (if (gx#core-bound-identifier?__0 _%form177153%_)
                                _%stx177129%_
                                (_%E177132177141%_)))))
                      (_%E177132177141%_)))))
          (_%E177131177155%_))))
    (define gx#core-expand-expression
      (lambda (_%stx177059%_)
        (letrec ((_%sealed-expression?177061%_
                  (lambda (_%hd177097%_)
                    (if (gx#sealed-syntax? _%hd177097%_)
                        (let* ((_%e177098177105%_ _%hd177097%_)
                               (_%E177100177109%_ (lambda () '#f))
                               (_%E177099177123%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e177098177105%_)
                                      (let ((_%e177101177113%_
                                             (gx#syntax-e _%e177098177105%_)))
                                        (let ((_%hd177102177116%_
                                               (##car _%e177101177113%_))
                                              (_%tl177103177118%_
                                               (##cdr _%e177101177113%_)))
                                          (let ((_%form177121%_
                                                 _%hd177102177116%_))
                                            (gx#core-bound-identifier?__%
                                             _%form177121%_
                                             gx#expression-form-binding?))))
                                      (_%E177100177109%_)))))
                          (_%E177099177123%_))
                        '#f)))
                 (_%illegal-expression177062%_
                  (lambda (_%hd177094%_ . _%_177095%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx177059%_
                     _%hd177094%_)))
                 (_%expand-e177063%_
                  (lambda (_%form177086%_ _%hd177087%_)
                    (let ((_%bind177089%_
                           (if (##structure-instance-of?
                                _%form177086%_
                                'gx#binding::t)
                               _%form177086%_
                               (gx#resolve-identifier__0 _%form177086%_))))
                      (if (gx#core-expander-binding? _%bind177089%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind177089%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd177087%_
                            (gx#stx-source _%stx177059%_)))
                          (if (##structure-direct-instance-of?
                               _%bind177089%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind177089%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd177087%_
                                 (gx#stx-source _%stx177059%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx177059%_
                               _%form177086%_)))))))
          (let ((_%hd177065%_ (gx#core-expand-head _%stx177059%_)))
            (if (_%sealed-expression?177061%_ _%hd177065%_)
                _%hd177065%_
                (if (gx#stx-pair? _%hd177065%_)
                    (let* ((_%form177069%_ (gx#stx-car _%hd177065%_))
                           (_%bind177071%_
                            (if (gx#identifier? _%form177069%_)
                                (gx#resolve-identifier__0 _%form177069%_)
                                '#f)))
                      (if (or (not _%bind177071%_)
                              (not (gx#core-expander-binding? _%bind177071%_)))
                          (_%expand-e177063%_
                           '%%app
                           (cons '%%app _%hd177065%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind177071%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd177065%_
                               _%illegal-expression177062%_)
                              (if (gx#expression-form-binding? _%bind177071%_)
                                  (_%expand-e177063%_
                                   _%bind177071%_
                                   _%hd177065%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind177071%_)
                                      (gx#core-expand-expression
                                       (_%expand-e177063%_
                                        _%bind177071%_
                                        _%hd177065%_))
                                      (_%illegal-expression177062%_
                                       _%hd177065%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd177065%_)
                        (_%illegal-expression177062%_ _%hd177065%_)
                        (if (gx#identifier? _%hd177065%_)
                            (_%expand-e177063%_
                             '%%ref
                             (cons '%%ref (cons _%hd177065%_ '())))
                            (if (gx#stx-datum? _%hd177065%_)
                                (_%expand-e177063%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd177065%_ '())))
                                (_%illegal-expression177062%_
                                 _%hd177065%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx177054%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx177057%_ (gx#core-expand-expression _%stx177054%_)))
             (values _%stx177057%_ (gx#eval-syntax* _%stx177057%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx177035%_ _%stop?177036%_)
        (let _%lp177038%_ ((_%stx177040%_ _%stx177035%_))
          (if (_%stop?177036%_ _%stx177040%_)
              _%stx177040%_
              (let ((_%rstx177042%_ (gx#core-expand1 _%stx177040%_)))
                (if (eq? _%stx177040%_ _%rstx177042%_)
                    _%stx177040%_
                    (_%lp177038%_ _%rstx177042%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx177047%_)
        (let ((_%stop?177049%_ false))
          (gx#core-expand*__% _%stx177047%_ _%stop?177049%_))))
    (define gx#core-expand*
      (lambda _g178847_
        (let ((_g178848_ (##length _g178847_)))
          (cond ((##fx= _g178848_ 1) (apply gx#core-expand*__0 _g178847_))
                ((##fx= _g178848_ 2) (apply gx#core-expand*__% _g178847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g178847_))))))
    (define gx#core-expand1
      (lambda (_%stx176987%_)
        (letrec ((_%step176989%_
                  (lambda (_%hd177026%_)
                    (let ((_%bind177028%_
                           (gx#resolve-identifier__0 _%hd177026%_)))
                      (if (##structure-instance-of?
                           _%bind177028%_
                           'gx#runtime-binding::t)
                          _%stx176987%_
                          (if (##structure-direct-instance-of?
                               _%bind177028%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind177028%_
                                '5
                                '#f
                                '#f)
                               _%stx176987%_)
                              (if (not _%bind177028%_)
                                  _%stx176987%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx176987%_))))))))
          (let* ((_%e176990176998%_ _%stx176987%_)
                 (_%E176996177002%_ (lambda () _%stx176987%_))
                 (_%E176992177008%_
                  (lambda ()
                    (let ((_%hd177006%_ _%e176990176998%_))
                      (if (gx#identifier? _%hd177006%_)
                          (_%step176989%_ _%hd177006%_)
                          (_%E176996177002%_)))))
                 (_%E176991177022%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176990176998%_)
                        (let ((_%e176993177012%_
                               (gx#syntax-e _%e176990176998%_)))
                          (let ((_%hd176994177015%_ (##car _%e176993177012%_))
                                (_%tl176995177017%_ (##cdr _%e176993177012%_)))
                            (let ((_%hd177020%_ _%hd176994177015%_))
                              (if (gx#identifier? _%hd177020%_)
                                  (_%step176989%_ _%hd177020%_)
                                  (_%E176992177008%_)))))
                        (_%E176992177008%_)))))
            (_%E176991177022%_)))))
    (define gx#core-expand-head
      (lambda (_%stx176953%_)
        (letrec ((_%stop?176955%_
                  (lambda (_%stx176957%_)
                    (let* ((_%e176958176965%_ _%stx176957%_)
                           (_%E176960176969%_ (lambda () '#f))
                           (_%E176959176983%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176958176965%_)
                                  (let ((_%e176961176973%_
                                         (gx#syntax-e _%e176958176965%_)))
                                    (let ((_%hd176962176976%_
                                           (##car _%e176961176973%_))
                                          (_%tl176963176978%_
                                           (##cdr _%e176961176973%_)))
                                      (let ((_%hd176981%_ _%hd176962176976%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd176981%_))))
                                  (_%E176960176969%_)))))
                      (_%E176959176983%_)))))
          (gx#core-expand*__% _%stx176953%_ _%stop?176955%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx176759%_
               _%expand-special176760%_
               _%begin-form176761%_
               _%expand-e176762%_)
        (letrec ((_%expand-splice176764%_
                  (lambda (_%hd176927%_
                           _%body176928%_
                           _%rest176929%_
                           _%r176930%_)
                    (if (gx#stx-list? _%body176928%_)
                        (_%K176768%_
                         (gx#stx-foldr cons _%rest176929%_ _%body176928%_)
                         _%r176930%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx176759%_
                         _%hd176927%_))))
                 (_%expand-cond-expand176765%_
                  (lambda (_%hd176923%_ _%rest176924%_ _%r176925%_)
                    (_%K176768%_
                     (cons (gx#core-expand-cond-expand% _%hd176923%_)
                           _%rest176924%_)
                     _%r176925%_)))
                 (_%expand-include176766%_
                  (lambda (_%hd176872%_ _%rest176873%_ _%r176874%_)
                    (let* ((_%e176875176885%_ _%hd176872%_)
                           (_%E176877176889%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176875176885%_)))
                           (_%E176876176919%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176875176885%_)
                                  (let ((_%e176878176893%_
                                         (gx#syntax-e _%e176875176885%_)))
                                    (let ((_%hd176879176896%_
                                           (##car _%e176878176893%_))
                                          (_%tl176880176898%_
                                           (##cdr _%e176878176893%_)))
                                      (if (gx#stx-pair? _%tl176880176898%_)
                                          (let ((_%e176881176901%_
                                                 (gx#syntax-e
                                                  _%tl176880176898%_)))
                                            (let ((_%hd176882176904%_
                                                   (##car _%e176881176901%_))
                                                  (_%tl176883176906%_
                                                   (##cdr _%e176881176901%_)))
                                              (let ((_%path176909%_
                                                     _%hd176882176904%_))
                                                (if (gx#stx-null?
                                                     _%tl176883176906%_)
                                                    (if (gx#stx-string?
                                                         _%path176909%_)
                                                        (let* ((_%rpath176911%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path176909%_
                         (gx#stx-source _%hd176872%_)))
                       (_%block176913%_
                        (gx#core-expand-include%__%
                         _%hd176872%_
                         _%rpath176911%_))
                       (_%rbody176916%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block176913%_
                            _%expand-special176760%_
                            '#f
                            _%expand-e176762%_))
                         gx#current-expander-path
                         (cons _%rpath176911%_ (gx#current-expander-path)))))
                  (_%K176768%_
                   _%rest176873%_
                   (foldr__0 cons _%r176874%_ _%rbody176916%_)))
                (_%E176877176889%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176877176889%_)))))
                                          (_%E176877176889%_))))
                                  (_%E176877176889%_)))))
                      (_%E176876176919%_))))
                 (_%expand-expression176767%_
                  (lambda (_%hd176868%_ _%rest176869%_ _%r176870%_)
                    (_%K176768%_
                     _%rest176869%_
                     (cons (_%expand-e176762%_ _%hd176868%_) _%r176870%_))))
                 (_%K176768%_
                  (lambda (_%rest176798%_ _%r176799%_)
                    (let* ((_%e176800176807%_ _%rest176798%_)
                           (_%E176802176811%_
                            (lambda ()
                              (if _%begin-form176761%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form176761%_
                                    (reverse _%r176799%_))
                                   (gx#stx-source _%stx176759%_))
                                  _%r176799%_)))
                           (_%E176801176864%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176800176807%_)
                                  (let ((_%e176803176815%_
                                         (gx#syntax-e _%e176800176807%_)))
                                    (let ((_%hd176804176818%_
                                           (##car _%e176803176815%_))
                                          (_%tl176805176820%_
                                           (##cdr _%e176803176815%_)))
                                      (let* ((_%hd176823%_ _%hd176804176818%_)
                                             (_%rest176825%_
                                              _%tl176805176820%_)
                                             (_%hd176827%_
                                              (gx#core-expand-head
                                               _%hd176823%_))
                                             (_%e176828176835%_ _%hd176827%_)
                                             (_%E176830176839%_
                                              (lambda ()
                                                (_%expand-expression176767%_
                                                 _%hd176827%_
                                                 _%rest176825%_
                                                 _%r176799%_)))
                                             (_%E176829176860%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e176828176835%_)
                                                    (let ((_%e176831176843%_
                                                           (gx#syntax-e
                                                            _%e176828176835%_)))
                                                      (let ((_%hd176832176846%_
                                                             (##car _%e176831176843%_))
                                                            (_%tl176833176848%_
                                                             (##cdr _%e176831176843%_)))
                                                        (let* ((_%form176851%_
                                                                _%hd176832176846%_)
                                                               (_%body176853%_
                                                                _%tl176833176848%_)
                                                               (_%bind176855%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form176851%_)
                            (gx#resolve-identifier__0 _%form176851%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind176855%_)
                      (let ((_%$e176857%_
                             (##unchecked-structure-ref
                              _%bind176855%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e176857%_)
                            (_%expand-splice176764%_
                             _%hd176827%_
                             _%body176853%_
                             _%rest176825%_
                             _%r176799%_)
                            (if (eq? '%#cond-expand _%$e176857%_)
                                (_%expand-cond-expand176765%_
                                 _%hd176827%_
                                 _%rest176825%_
                                 _%r176799%_)
                                (if (eq? '%#include _%$e176857%_)
                                    (_%expand-include176766%_
                                     _%hd176827%_
                                     _%rest176825%_
                                     _%r176799%_)
                                    (_%expand-special176760%_
                                     _%hd176827%_
                                     _%K176768%_
                                     _%rest176825%_
                                     _%r176799%_)))))
                      (_%expand-expression176767%_
                       _%hd176827%_
                       _%rest176825%_
                       _%r176799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176830176839%_)))))
                                        (_%E176829176860%_))))
                                  (_%E176802176811%_)))))
                      (_%E176801176864%_)))))
          (let* ((_%e176769176776%_ _%stx176759%_)
                 (_%E176771176780%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176769176776%_)))
                 (_%E176770176794%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176769176776%_)
                        (let ((_%e176772176784%_
                               (gx#syntax-e _%e176769176776%_)))
                          (let ((_%hd176773176787%_ (##car _%e176772176784%_))
                                (_%tl176774176789%_ (##cdr _%e176772176784%_)))
                            (let ((_%body176792%_ _%tl176774176789%_))
                              (if (gx#stx-list? _%body176792%_)
                                  (_%K176768%_ _%body176792%_ '())
                                  (_%E176771176780%_)))))
                        (_%E176771176780%_)))))
            (_%E176770176794%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx176935%_ _%expand-special176936%_)
        (let* ((_%begin-form176938%_ '%#begin)
               (_%expand-e176940%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176935%_
           _%expand-special176936%_
           _%begin-form176938%_
           _%expand-e176940%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx176942%_ _%expand-special176943%_ _%begin-form176944%_)
        (let ((_%expand-e176946%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176942%_
           _%expand-special176943%_
           _%begin-form176944%_
           _%expand-e176946%_))))
    (define gx#core-expand-block
      (lambda _g178849_
        (let ((_g178850_ (##length _g178849_)))
          (cond ((##fx= _g178850_ 2) (apply gx#core-expand-block__0 _g178849_))
                ((##fx= _g178850_ 3) (apply gx#core-expand-block__1 _g178849_))
                ((##fx= _g178850_ 4) (apply gx#core-expand-block__% _g178849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g178849_))))))
    (define gx#core-expand-block*
      (lambda (_%stx176707%_ _%expand-special176708%_)
        (let* ((_%g176709176720%_
                (gx#core-expand-block__1
                 _%stx176707%_
                 _%expand-special176708%_
                 '#f))
               (_%E176713176724%_
                (lambda ()
                  (error '"No clause matching"
                         _%g176709176720%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K176718176755%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx176707%_)))
                (_%K176715176741%_ (lambda (_%expr176739%_) _%expr176739%_))
                (_%K176714176730%_
                 (lambda (_%body176728%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body176728%_))
                    (gx#stx-source _%stx176707%_)))))
            (let ((_%try-match176711176751%_
                   (lambda ()
                     (if (pair? _%g176709176720%_)
                         (let ((_%tl176717176746%_ (##cdr _%g176709176720%_))
                               (_%hd176716176744%_ (##car _%g176709176720%_)))
                           (if (null? _%tl176717176746%_)
                               (let ((_%expr176749%_ _%hd176716176744%_))
                                 (_%K176715176741%_ _%expr176749%_))
                               (let ((_%body176733%_ _%g176709176720%_))
                                 (_%K176714176730%_ _%body176733%_))))
                         (let ((_%body176733%_ _%g176709176720%_))
                           (_%K176714176730%_ _%body176733%_))))))
              (if (null? _%g176709176720%_)
                  (_%K176718176755%_)
                  (_%try-match176711176751%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx176533%_)
        (letrec ((_%satisfied?176535%_
                  (lambda (_%condition176636%_)
                    (let* ((_%e176637176652%_ _%condition176636%_)
                           (_%E176647176656%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176637176652%_)))
                           (_%E176640176675%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176637176652%_)
                                  (let ((_%e176648176660%_
                                         (gx#syntax-e _%e176637176652%_)))
                                    (let ((_%hd176649176663%_
                                           (##car _%e176648176660%_))
                                          (_%tl176650176665%_
                                           (##cdr _%e176648176660%_)))
                                      (let* ((_%combinator176668%_
                                              _%hd176649176663%_)
                                             (_%body176670%_
                                              _%tl176650176665%_))
                                        (if (gx#stx-list? _%body176670%_)
                                            (let ((_%$e176672%_
                                                   (gx#stx-e
                                                    _%combinator176668%_)))
                                              (if (eq? 'not _%$e176672%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?176535%_
                                                        _%body176670%_))
                                                  (if (eq? 'and _%$e176672%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?176535%_
                                                       _%body176670%_)
                                                      (if (eq? 'or
                                                               _%$e176672%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?176535%_
                                                           _%body176670%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e176672%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body176670%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx176533%_
                       _%combinator176668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176647176656%_)))))
                                  (_%E176647176656%_))))
                           (_%E176639176697%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176637176652%_)
                                  (let ((_%e176641176679%_
                                         (gx#syntax-e _%e176637176652%_)))
                                    (let ((_%hd176642176682%_
                                           (##car _%e176641176679%_))
                                          (_%tl176643176684%_
                                           (##cdr _%e176641176679%_)))
                                      (if (and (gx#identifier?
                                                _%hd176642176682%_)
                                               (gx#core-identifier=?
                                                _%hd176642176682%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl176643176684%_)
                                              (let ((_%e176644176687%_
                                                     (gx#syntax-e
                                                      _%tl176643176684%_)))
                                                (let ((_%hd176645176690%_
                                                       (##car _%e176644176687%_))
                                                      (_%tl176646176692%_
                                                       (##cdr _%e176644176687%_)))
                                                  (let ((_%expr176695%_
                                                         _%hd176645176690%_))
                                                    (if (gx#stx-null?
                                                         _%tl176646176692%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr176695%_)
                                                        (_%E176640176675%_)))))
                                              (_%E176640176675%_))
                                          (_%E176640176675%_))))
                                  (_%E176640176675%_))))
                           (_%E176638176703%_
                            (lambda ()
                              (let ((_%id176701%_ _%e176637176652%_))
                                (if (gx#identifier? _%id176701%_)
                                    (gx#core-bound-identifier?__%
                                     _%id176701%_
                                     gx#feature-binding?)
                                    (_%E176639176697%_))))))
                      (_%E176638176703%_))))
                 (_%loop176536%_
                  (lambda (_%rest176566%_)
                    (let* ((_%e176567176575%_ _%rest176566%_)
                           (_%E176573176579%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176567176575%_)))
                           (_%E176569176583%_
                            (lambda ()
                              (if (gx#stx-null? _%e176567176575%_)
                                  '()
                                  (_%E176573176579%_))))
                           (_%E176568176632%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176567176575%_)
                                  (let ((_%e176570176587%_
                                         (gx#syntax-e _%e176567176575%_)))
                                    (let ((_%hd176571176590%_
                                           (##car _%e176570176587%_))
                                          (_%tl176572176592%_
                                           (##cdr _%e176570176587%_)))
                                      (let* ((_%hd176595%_ _%hd176571176590%_)
                                             (_%rest176597%_
                                              _%tl176572176592%_)
                                             (_%e176598176605%_ _%hd176595%_)
                                             (_%E176600176609%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e176598176605%_)))
                                             (_%E176599176628%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e176598176605%_)
                                                    (let ((_%e176601176613%_
                                                           (gx#syntax-e
                                                            _%e176598176605%_)))
                                                      (let ((_%hd176602176616%_
                                                             (##car _%e176601176613%_))
                                                            (_%tl176603176618%_
                                                             (##cdr _%e176601176613%_)))
                                                        (let* ((_%condition176621%_
                                                                _%hd176602176616%_)
                                                               (_%body176623%_
                                                                _%tl176603176618%_))
                                                          (if (gx#stx-eq?
                                                               _%condition176621%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest176597%_)
                          _%body176623%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx176533%_
                           _%hd176595%_))
                      (if (_%satisfied?176535%_ _%condition176621%_)
                          _%body176623%_
                          (_%loop176536%_ _%rest176597%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176600176609%_)))))
                                        (_%E176599176628%_))))
                                  (_%E176569176583%_)))))
                      (_%E176568176632%_)))))
          (let* ((_%e176537176544%_ _%stx176533%_)
                 (_%E176539176548%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176537176544%_)))
                 (_%E176538176562%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176537176544%_)
                        (let ((_%e176540176552%_
                               (gx#syntax-e _%e176537176544%_)))
                          (let ((_%hd176541176555%_ (##car _%e176540176552%_))
                                (_%tl176542176557%_ (##cdr _%e176540176552%_)))
                            (let ((_%clauses176560%_ _%tl176542176557%_))
                              (if (gx#stx-list? _%clauses176560%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop176536%_ _%clauses176560%_))
                                  (_%E176539176548%_)))))
                        (_%E176539176548%_)))))
            (_%E176538176562%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx176476%_ _%rpath176477%_)
        (let* ((_%e176478176488%_ _%stx176476%_)
               (_%E176480176492%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176478176488%_)))
               (_%E176479176519%_
                (lambda ()
                  (if (gx#stx-pair? _%e176478176488%_)
                      (let ((_%e176481176496%_
                             (gx#syntax-e _%e176478176488%_)))
                        (let ((_%hd176482176499%_ (##car _%e176481176496%_))
                              (_%tl176483176501%_ (##cdr _%e176481176496%_)))
                          (if (gx#stx-pair? _%tl176483176501%_)
                              (let ((_%e176484176504%_
                                     (gx#syntax-e _%tl176483176501%_)))
                                (let ((_%hd176485176507%_
                                       (##car _%e176484176504%_))
                                      (_%tl176486176509%_
                                       (##cdr _%e176484176504%_)))
                                  (let ((_%path176512%_ _%hd176485176507%_))
                                    (if (gx#stx-null? _%tl176486176509%_)
                                        (if (gx#stx-string? _%path176512%_)
                                            (let ((_%rpath176517%_
                                                   (let ((_%$e176514%_
                                                          _%rpath176477%_))
                                                     (if _%$e176514%_
                                                         _%$e176514%_
                                                         (gx#core-resolve-path__%
                                                          _%path176512%_
                                                          (gx#stx-source
                                                           _%stx176476%_))))))
                                              (if (member _%rpath176517%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx176476%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath176517%_))
                                                    (gx#stx-source
                                                     _%stx176476%_)))))
                                            (_%E176480176492%_))
                                        (_%E176480176492%_)))))
                              (_%E176480176492%_))))
                      (_%E176480176492%_)))))
          (_%E176479176519%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx176526%_)
        (let ((_%rpath176528%_ '#f))
          (gx#core-expand-include%__% _%stx176526%_ _%rpath176528%_))))
    (define gx#core-expand-include%
      (lambda _g178851_
        (let ((_g178852_ (##length _g178851_)))
          (cond ((##fx= _g178852_ 1)
                 (apply gx#core-expand-include%__0 _g178851_))
                ((##fx= _g178852_ 2)
                 (apply gx#core-expand-include%__% _g178851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g178851_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K176442%_ _%stx176443%_ _%method176444%_)
        (if (procedure? _%K176442%_)
            (let ((_%$e176447%_ (gx#stx-source _%stx176443%_)))
              (if _%$e176447%_
                  ((lambda (_%g176449176451%_)
                     (gx#stx-wrap-source
                      (_%K176442%_ _%stx176443%_)
                      _%g176449176451%_))
                   _%$e176447%_)
                  (_%K176442%_ _%stx176443%_)))
            (let ((_%$e176455%_
                   (bound-method-ref _%K176442%_ _%method176444%_)))
              (if _%$e176455%_
                  ((lambda (_%g176457176459%_)
                     (gx#core-apply-expander__%
                      _%g176457176459%_
                      _%stx176443%_
                      _%method176444%_))
                   _%$e176455%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx176443%_
                   _%method176444%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K176466%_ _%stx176467%_)
        (let ((_%method176469%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K176466%_
           _%stx176467%_
           _%method176469%_))))
    (define gx#core-apply-expander
      (lambda _g178853_
        (let ((_g178854_ (##length _g178853_)))
          (cond ((##fx= _g178854_ 2)
                 (apply gx#core-apply-expander__0 _g178853_))
                ((##fx= _g178854_ 3)
                 (apply gx#core-apply-expander__% _g178853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g178853_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self176427%_ _%stx176428%_)
        (let ((_%self176431%_ _%self176427%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx176428%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self176270%_ _%stx176271%_)
        (let* ((_%self176274%_ _%self176270%_)
               (_%self176283176289%_ _%self176274%_)
               (_%E176285176292%_
                (lambda ()
                  (error '"No clause matching"
                         _%self176283176289%_
                         '((macro-expander K)))
                  '#!void))
               (_%K176286176297%_
                (lambda (_%K176295%_)
                  (gx#core-apply-expander__0 _%K176295%_ _%stx176271%_)))
               (_%e176287176300%_
                (##unchecked-structure-ref _%self176283176289%_ '1 '#f '#f))
               (_%K176303%_ _%e176287176300%_))
          (_%K176286176297%_ _%K176303%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self176113%_ _%stx176114%_)
        (let ((_%self176117%_ _%self176113%_))
          (if (gx#sealed-syntax? _%stx176114%_)
              _%stx176114%_
              (let* ((_%self176126176132%_ _%self176117%_)
                     (_%E176128176135%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self176126176132%_
                               '((core-expander K)))
                        '#!void))
                     (_%K176129176140%_
                      (lambda (_%K176138%_)
                        (gx#core-apply-expander__0 _%K176138%_ _%stx176114%_)))
                     (_%e176130176143%_
                      (##unchecked-structure-ref
                       _%self176126176132%_
                       '1
                       '#f
                       '#f))
                     (_%K176146%_ _%e176130176143%_))
                (_%K176129176140%_ _%K176146%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self175964%_ _%stx175965%_ _%top?175966%_)
        (let ((_%self175969%_ _%self175964%_))
          (if (_%top?175966%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self175969%_
               _%stx175965%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx175965%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self175982%_ _%stx175983%_)
        (let ((_%top?175985%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self175982%_
           _%stx175983%_
           _%top?175985%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g178855_
        (let ((_g178856_ (##length _g178855_)))
          (cond ((##fx= _g178856_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g178855_))
                ((##fx= _g178856_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g178855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g178855_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self175827%_ _%stx175828%_)
        (let ((_%self175831%_ _%self175827%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self175831%_
           _%stx175828%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self175642%_ _%stx175643%_)
        (let* ((_%self175646%_ _%self175642%_)
               (_%self175655175661%_ _%self175646%_)
               (_%E175657175664%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175655175661%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K175658175697%_
                (lambda (_%id175667%_)
                  (let* ((_%e175668175675%_ _%stx175643%_)
                         (_%E175670175679%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e175668175675%_)))
                         (_%E175669175693%_
                          (lambda ()
                            (if (gx#stx-pair? _%e175668175675%_)
                                (let ((_%e175671175683%_
                                       (gx#syntax-e _%e175668175675%_)))
                                  (let ((_%hd175672175686%_
                                         (##car _%e175671175683%_))
                                        (_%tl175673175688%_
                                         (##cdr _%e175671175683%_)))
                                    (let ((_%body175691%_ _%tl175673175688%_))
                                      (gx#core-cons
                                       _%id175667%_
                                       _%body175691%_))))
                                (_%E175670175679%_)))))
                    (_%E175669175693%_))))
               (_%e175659175700%_
                (##unchecked-structure-ref _%self175655175661%_ '1 '#f '#f))
               (_%id175703%_ _%e175659175700%_))
          (_%K175658175697%_ _%id175703%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self175469%_ _%stx175470%_ _%method175471%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx175470%_))
              (force-output))
            '#!void)
        (let* ((_%self175472175480%_ _%self175469%_)
               (_%E175474175483%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175472175480%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K175475175490%_
                (lambda (_%phi175486%_ _%ctx175487%_ _%K175488%_)
                  (gx#core-apply-user-macro
                   _%K175488%_
                   _%stx175470%_
                   _%ctx175487%_
                   _%phi175486%_
                   _%method175471%_))))
          (if (##structure-instance-of?
               _%self175472175480%_
               'gx#user-expander::t)
              (let* ((_%e175476175493%_
                      (##unchecked-structure-ref
                       _%self175472175480%_
                       '1
                       '#f
                       '#f))
                     (_%K175496%_ _%e175476175493%_)
                     (_%e175477175498%_
                      (##unchecked-structure-ref
                       _%self175472175480%_
                       '2
                       '#f
                       '#f))
                     (_%ctx175501%_ _%e175477175498%_)
                     (_%e175478175503%_
                      (##unchecked-structure-ref
                       _%self175472175480%_
                       '3
                       '#f
                       '#f))
                     (_%phi175506%_ _%e175478175503%_))
                (_%K175475175490%_ _%phi175506%_ _%ctx175501%_ _%K175496%_))
              (_%E175474175483%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self175511%_ _%stx175512%_)
        (let ((_%method175514%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self175511%_
           _%stx175512%_
           _%method175514%_))))
    (define gx#core-apply-user-expander
      (lambda _g178857_
        (let ((_g178858_ (##length _g178857_)))
          (cond ((##fx= _g178858_ 2)
                 (apply gx#core-apply-user-expander__0 _g178857_))
                ((##fx= _g178858_ 3)
                 (apply gx#core-apply-user-expander__% _g178857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g178857_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K175459%_
               _%stx175460%_
               _%ctx175461%_
               _%phi175462%_
               _%method175463%_)
        (let ((_%mark175465%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx175461%_
                _%phi175462%_
                _%stx175460%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K175459%_
               (gx#stx-apply-mark _%stx175460%_ _%mark175465%_)
               _%method175463%_)
              _%mark175465%_))
           gx#current-expander-marks
           (cons _%mark175465%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx175307%_ _%phi175308%_ _%ctx175309%_)
        (let _%lp175311%_ ((_%bind175313%_
                            (gx#core-resolve-identifier__%
                             _%stx175307%_
                             _%phi175308%_
                             _%ctx175309%_)))
          (if (##structure-direct-instance-of?
               _%bind175313%_
               'gx#import-binding::t)
              (_%lp175311%_
               (##unchecked-structure-ref _%bind175313%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind175313%_
                   'gx#alias-binding::t)
                  (_%lp175311%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind175313%_ '5 '#f '#f)
                    _%phi175308%_
                    _%ctx175309%_))
                  _%bind175313%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx175321%_)
        (let* ((_%phi175323%_ (gx#current-expander-phi))
               (_%ctx175325%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx175321%_
           _%phi175323%_
           _%ctx175325%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx175327%_ _%phi175328%_)
        (let ((_%ctx175330%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx175327%_
           _%phi175328%_
           _%ctx175330%_))))
    (define gx#resolve-identifier
      (lambda _g178859_
        (let ((_g178860_ (##length _g178859_)))
          (cond ((##fx= _g178860_ 1)
                 (apply gx#resolve-identifier__0 _g178859_))
                ((##fx= _g178860_ 2)
                 (apply gx#resolve-identifier__1 _g178859_))
                ((##fx= _g178860_ 3)
                 (apply gx#resolve-identifier__% _g178859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g178859_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx175262%_
               _%val175263%_
               _%rebind?175264%_
               _%phi175265%_
               _%ctx175266%_)
        (let ((_%rebind?175271%_
               (if (not _%rebind?175264%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?175264%_)
                       _%rebind?175264%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx175262%_)
           _%val175263%_
           _%rebind?175271%_
           _%phi175265%_
           _%ctx175266%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx175276%_ _%val175277%_)
        (let* ((_%rebind?175279%_ '#f)
               (_%phi175281%_ (gx#current-expander-phi))
               (_%ctx175283%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx175276%_
           _%val175277%_
           _%rebind?175279%_
           _%phi175281%_
           _%ctx175283%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx175285%_ _%val175286%_ _%rebind?175287%_)
        (let* ((_%phi175289%_ (gx#current-expander-phi))
               (_%ctx175291%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx175285%_
           _%val175286%_
           _%rebind?175287%_
           _%phi175289%_
           _%ctx175291%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx175293%_ _%val175294%_ _%rebind?175295%_ _%phi175296%_)
        (let ((_%ctx175298%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx175293%_
           _%val175294%_
           _%rebind?175295%_
           _%phi175296%_
           _%ctx175298%_))))
    (define gx#bind-identifier!
      (lambda _g178861_
        (let ((_g178862_ (##length _g178861_)))
          (cond ((##fx= _g178862_ 2) (apply gx#bind-identifier!__0 _g178861_))
                ((##fx= _g178862_ 3) (apply gx#bind-identifier!__1 _g178861_))
                ((##fx= _g178862_ 4) (apply gx#bind-identifier!__2 _g178861_))
                ((##fx= _g178862_ 5) (apply gx#bind-identifier!__% _g178861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g178861_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx175228%_ _%phi175229%_ _%ctx175230%_)
        (let _%lp175232%_ ((_%e175234%_ _%stx175228%_)
                           (_%marks175235%_ (gx#current-expander-marks)))
          (if (symbol? _%e175234%_)
              (gx#core-resolve-binding
               _%e175234%_
               _%phi175229%_
               _%phi175229%_
               _%ctx175230%_
               (reverse _%marks175235%_))
              (if (gx#identifier-quote? _%e175234%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e175234%_ '1 '#f '#f)
                   _%phi175229%_
                   '0
                   (##unchecked-structure-ref _%e175234%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e175234%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e175234%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e175234%_ '1 '#f '#f)
                       _%phi175229%_
                       _%phi175229%_
                       _%ctx175230%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e175234%_ '3 '#f '#f)
                        _%marks175235%_))
                      (if (##structure-direct-instance-of?
                           _%e175234%_
                           'gx#syntax-wrap::t)
                          (_%lp175232%_
                           (##unchecked-structure-ref _%e175234%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e175234%_ '3 '#f '#f)
                            _%marks175235%_))
                          (if (##structure-instance-of?
                               _%e175234%_
                               'gerbil#AST::t)
                              (_%lp175232%_
                               (##unchecked-structure-ref
                                _%e175234%_
                                '1
                                '#f
                                '#f)
                               _%marks175235%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx175228%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx175246%_)
        (let* ((_%phi175248%_ (gx#current-expander-phi))
               (_%ctx175250%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx175246%_
           _%phi175248%_
           _%ctx175250%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx175252%_ _%phi175253%_)
        (let ((_%ctx175255%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx175252%_
           _%phi175253%_
           _%ctx175255%_))))
    (define gx#core-resolve-identifier
      (lambda _g178863_
        (let ((_g178864_ (##length _g178863_)))
          (cond ((##fx= _g178864_ 1)
                 (apply gx#core-resolve-identifier__0 _g178863_))
                ((##fx= _g178864_ 2)
                 (apply gx#core-resolve-identifier__1 _g178863_))
                ((##fx= _g178864_ 3)
                 (apply gx#core-resolve-identifier__% _g178863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g178863_))))))
    (define gx#core-resolve-binding
      (lambda (_%id175139%_
               _%phi175140%_
               _%src-phi175141%_
               _%ctx175142%_
               _%marks175143%_)
        (letrec ((_%resolve175145%_
                  (lambda (_%ctx175212%_ _%src-phi175213%_ _%key175214%_)
                    (let _%lp175216%_ ((_%ctx175218%_
                                        (gx#core-context-shift
                                         _%ctx175212%_
                                         _%phi175140%_))
                                       (_%dphi175219%_
                                        (fx- _%phi175140%_ _%src-phi175213%_)))
                      (let ((_%$e175221%_
                             (gx#core-context-resolve
                              _%ctx175218%_
                              _%key175214%_)))
                        (if _%$e175221%_
                            _%$e175221%_
                            (if (fxzero? _%dphi175219%_)
                                '#f
                                (if (fxpositive? _%dphi175219%_)
                                    (_%lp175216%_
                                     (gx#core-context-shift _%ctx175218%_ '-1)
                                     (##fx- _%dphi175219%_ '1))
                                    (_%lp175216%_
                                     (gx#core-context-shift _%ctx175218%_ '1)
                                     (##fx+ _%dphi175219%_ '1))))))))))
          (let _%lp175147%_ ((_%ctx175149%_ _%ctx175142%_)
                             (_%src-phi175150%_ _%src-phi175141%_)
                             (_%rest175151%_ _%marks175143%_))
            (let* ((_%rest175152175160%_ _%rest175151%_)
                   (_%else175154175168%_
                    (lambda ()
                      (_%resolve175145%_
                       _%ctx175149%_
                       _%src-phi175150%_
                       _%id175139%_)))
                   (_%K175156175200%_
                    (lambda (_%rest175171%_ _%hd175172%_)
                      (let* ((_%hd175173175179%_ _%hd175172%_)
                             (_%E175175175182%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd175173175179%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K175176175192%_
                              (lambda (_%subst175185%_)
                                (let ((_%$e175189%_
                                       (let ((_%key175187%_
                                              (if _%subst175185%_
                                                  (hash-get
                                                   _%subst175185%_
                                                   _%id175139%_)
                                                  '#f)))
                                         (if _%key175187%_
                                             (_%resolve175145%_
                                              _%ctx175149%_
                                              _%src-phi175150%_
                                              _%key175187%_)
                                             '#f))))
                                  (if _%$e175189%_
                                      _%$e175189%_
                                      (_%lp175147%_
                                       (##unchecked-structure-ref
                                        _%hd175172%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd175172%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest175171%_))))))
                        (if (##structure-instance-of?
                             _%hd175173175179%_
                             'gx#expander-mark::t)
                            (let* ((_%e175177175195%_
                                    (##unchecked-structure-ref
                                     _%hd175173175179%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst175198%_ _%e175177175195%_))
                              (_%K175176175192%_ _%subst175198%_))
                            (_%E175175175182%_))))))
              (if (pair? _%rest175152175160%_)
                  (let ((_%hd175157175203%_ (##car _%rest175152175160%_))
                        (_%tl175158175205%_ (##cdr _%rest175152175160%_)))
                    (let* ((_%hd175208%_ _%hd175157175203%_)
                           (_%rest175210%_ _%tl175158175205%_))
                      (_%K175156175200%_ _%rest175210%_ _%hd175208%_)))
                  (_%else175154175168%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key175010%_
               _%val175011%_
               _%rebind?175012%_
               _%phi175013%_
               _%ctx175014%_)
        (letrec ((_%update-binding175016%_
                  (lambda (_%xval175088%_)
                    (if (or (_%rebind?175012%_
                             _%ctx175014%_
                             _%xval175088%_
                             _%val175011%_)
                            (and (##structure-direct-instance-of?
                                  _%xval175088%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval175088%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val175011%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val175011%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval175088%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val175011%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val175011%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval175088%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val175011%_
                        (if (and (##structure-direct-instance-of?
                                  _%val175011%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val175011%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval175088%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val175011%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval175088%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval175088%_
                            (if (and (##structure-direct-instance-of?
                                      _%val175011%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval175088%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key175010%_
                                 (cons (##unchecked-structure-ref
                                        _%val175011%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val175011%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval175088%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval175088%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval175088%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval175088%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key175010%_
                                 _%val175011%_
                                 _%xval175088%_))))))
                 (_%gensubst175017%_
                  (lambda (_%subst175083%_ _%id175084%_)
                    (let ((_%eid175086%_
                           (gensym (if (uninterned-symbol? _%id175084%_)
                                       '%
                                       _%id175084%_))))
                      (hash-put! _%subst175083%_ _%id175084%_ _%eid175086%_)
                      _%eid175086%_)))
                 (_%subst!175018%_
                  (lambda (_%key175020%_)
                    (let* ((_%key175021175029%_ _%key175020%_)
                           (_%else175023175037%_ (lambda () _%key175020%_))
                           (_%K175025175071%_
                            (lambda (_%mark175040%_ _%id175041%_)
                              (let* ((_%mark175042175048%_ _%mark175040%_)
                                     (_%E175044175051%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark175042175048%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K175045175063%_
                                      (lambda (_%subst175054%_)
                                        (if (not _%subst175054%_)
                                            (let ((_%subst175057%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark175040%_
                                               _%subst175057%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst175017%_
                                               _%subst175057%_
                                               _%id175041%_))
                                            (let ((_%$e175059%_
                                                   (hash-get
                                                    _%subst175054%_
                                                    _%id175041%_)))
                                              (if _%$e175059%_
                                                  _%$e175059%_
                                                  (_%gensubst175017%_
                                                   _%subst175054%_
                                                   _%id175041%_)))))))
                                (if (##structure-instance-of?
                                     _%mark175042175048%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e175046175066%_
                                            (##unchecked-structure-ref
                                             _%mark175042175048%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst175069%_ _%e175046175066%_))
                                      (_%K175045175063%_ _%subst175069%_))
                                    (_%E175044175051%_))))))
                      (if (pair? _%key175021175029%_)
                          (let ((_%hd175026175074%_
                                 (##car _%key175021175029%_))
                                (_%tl175027175076%_
                                 (##cdr _%key175021175029%_)))
                            (let* ((_%id175079%_ _%hd175026175074%_)
                                   (_%mark175081%_ _%tl175027175076%_))
                              (_%K175025175071%_ _%mark175081%_ _%id175079%_)))
                          (_%else175023175037%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx175014%_ _%phi175013%_)
           (_%subst!175018%_ _%key175010%_)
           _%val175011%_
           _%update-binding175016%_))))
    (define gx#core-bind!__0
      (lambda (_%key175109%_ _%val175110%_)
        (let* ((_%rebind?175112%_ false)
               (_%phi175114%_ (gx#current-expander-phi))
               (_%ctx175116%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175109%_
           _%val175110%_
           _%rebind?175112%_
           _%phi175114%_
           _%ctx175116%_))))
    (define gx#core-bind!__1
      (lambda (_%key175118%_ _%val175119%_ _%rebind?175120%_)
        (let* ((_%phi175122%_ (gx#current-expander-phi))
               (_%ctx175124%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175118%_
           _%val175119%_
           _%rebind?175120%_
           _%phi175122%_
           _%ctx175124%_))))
    (define gx#core-bind!__2
      (lambda (_%key175126%_ _%val175127%_ _%rebind?175128%_ _%phi175129%_)
        (let ((_%ctx175131%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175126%_
           _%val175127%_
           _%rebind?175128%_
           _%phi175129%_
           _%ctx175131%_))))
    (define gx#core-bind!
      (lambda _g178865_
        (let ((_g178866_ (##length _g178865_)))
          (cond ((##fx= _g178866_ 2) (apply gx#core-bind!__0 _g178865_))
                ((##fx= _g178866_ 3) (apply gx#core-bind!__1 _g178865_))
                ((##fx= _g178866_ 4) (apply gx#core-bind!__2 _g178865_))
                ((##fx= _g178866_ 5) (apply gx#core-bind!__% _g178865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g178865_))))))
    (define gx#core-identifier-key
      (lambda (_%stx174941%_)
        (if (symbol? _%stx174941%_)
            (let* ((_%g174943174951%_ (gx#current-expander-marks))
                   (_%else174945174959%_ (lambda () _%stx174941%_))
                   (_%K174947174964%_
                    (lambda (_%hd174962%_) (cons _%stx174941%_ _%hd174962%_))))
              (if (pair? _%g174943174951%_)
                  (let* ((_%hd174948174967%_ (##car _%g174943174951%_))
                         (_%hd174970%_ _%hd174948174967%_))
                    (_%K174947174964%_ _%hd174970%_))
                  (_%else174945174959%_)))
            (if (gx#identifier? _%stx174941%_)
                (let* ((_%id174973%_ (gx#syntax-local-unwrap _%stx174941%_))
                       (_%eid174975%_ (gx#stx-e _%id174973%_))
                       (_%marks174977%_
                        (gx#stx-identifier-marks* _%id174973%_))
                       (_%marks174979174987%_ _%marks174977%_)
                       (_%else174981174995%_ (lambda () _%eid174975%_))
                       (_%K174983175000%_
                        (lambda (_%hd174998%_)
                          (cons _%eid174975%_ _%hd174998%_))))
                  (if (pair? _%marks174979174987%_)
                      (let* ((_%hd174984175003%_ (##car _%marks174979174987%_))
                             (_%hd175006%_ _%hd174984175003%_))
                        (_%K174983175000%_ _%hd175006%_))
                      (_%else174981174995%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx174941%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx174880%_ _%phi174881%_)
        (letrec ((_%make-phi174883%_
                  (lambda (_%super174939%_)
                    (let ((__obj178836
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj178836
                       (##gensym 'phi)
                       _%super174939%_)
                      __obj178836)))
                 (_%make-phi/up174884%_
                  (lambda (_%ctx174934%_ _%super174935%_)
                    (let ((_%ctx+1174937%_
                           (_%make-phi174883%_ _%super174935%_)))
                      (##unchecked-structure-set!
                       _%ctx174934%_
                       _%ctx+1174937%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1174937%_
                       _%ctx174934%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1174937%_)))
                 (_%make-phi/down174885%_
                  (lambda (_%ctx174929%_ _%super174930%_)
                    (let ((_%ctx-1174932%_
                           (_%make-phi174883%_ _%super174930%_)))
                      (##unchecked-structure-set!
                       _%ctx-1174932%_
                       _%ctx174929%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx174929%_
                       _%ctx-1174932%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1174932%_)))
                 (_%shift174886%_
                  (lambda (_%ctx174912%_
                           _%delta174913%_
                           _%make-delta-context174914%_
                           _%phi174915%_
                           _%K174916%_)
                    (let ((_%$e174918%_
                           (##unchecked-structure-ref
                            _%ctx174912%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e174918%_
                          ((lambda (_%super174921%_)
                             (let* ((_%super174923%_
                                     (_%K174916%_
                                      _%super174921%_
                                      _%delta174913%_))
                                    (_%ctx+d174925%_
                                     (_%make-delta-context174914%_
                                      _%ctx174912%_
                                      _%super174923%_)))
                               (_%K174916%_
                                _%ctx+d174925%_
                                (fx- _%phi174915%_ _%delta174913%_))))
                           _%$e174918%_)
                          (error '"Bad context" _%ctx174912%_))))))
          (let _%K174888%_ ((_%ctx174890%_ _%ctx174880%_)
                            (_%phi174891%_ _%phi174881%_))
            (if (fxzero? _%phi174891%_)
                _%ctx174890%_
                (if (##structure-instance-of? _%ctx174890%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi174891%_)
                        (let ((_%$e174895%_
                               (##unchecked-structure-ref
                                _%ctx174890%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e174895%_
                              ((lambda (_%g174897174899%_)
                                 (_%K174888%_
                                  _%g174897174899%_
                                  (##fx- _%phi174891%_ '1)))
                               _%$e174895%_)
                              (_%shift174886%_
                               _%ctx174890%_
                               '1
                               _%make-phi/up174884%_
                               _%phi174891%_
                               _%K174888%_)))
                        (let ((_%$e174903%_
                               (##unchecked-structure-ref
                                _%ctx174890%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e174903%_
                              ((lambda (_%g174905174907%_)
                                 (_%K174888%_
                                  _%g174905174907%_
                                  (##fx+ _%phi174891%_ '1)))
                               _%$e174903%_)
                              (_%shift174886%_
                               _%ctx174890%_
                               '-1
                               _%make-phi/down174885%_
                               _%phi174891%_
                               _%K174888%_))))
                    _%ctx174890%_))))))
    (define gx#core-context-get
      (lambda (_%ctx174877%_ _%key174878%_)
        (hash-get
         (##unchecked-structure-ref _%ctx174877%_ '2 '#f '#f)
         _%key174878%_)))
    (define gx#core-context-put!
      (lambda (_%ctx174873%_ _%key174874%_ _%val174875%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx174873%_ '2 '#f '#f)
         _%key174874%_
         _%val174875%_)
        _%val174875%_))
    (define gx#core-context-resolve
      (lambda (_%ctx174859%_ _%key174860%_)
        (let _%lp174862%_ ((_%ctx174864%_ _%ctx174859%_))
          (let ((_%$e174866%_
                 (gx#core-context-get _%ctx174864%_ _%key174860%_)))
            (if _%$e174866%_
                _%$e174866%_
                (let ((_%$e174869%_
                       (if (##structure-instance-of?
                            _%ctx174864%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx174864%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e174869%_ (_%lp174862%_ _%$e174869%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx174848%_ _%key174849%_ _%val174850%_ _%rebind174851%_)
        (let ((_%$e174853%_ (gx#core-context-get _%ctx174848%_ _%key174849%_)))
          (if _%$e174853%_
              ((lambda (_%xval174856%_)
                 (gx#core-context-put!
                  _%ctx174848%_
                  _%key174849%_
                  (_%rebind174851%_ _%xval174856%_)))
               _%$e174853%_)
              (gx#core-context-put!
               _%ctx174848%_
               _%key174849%_
               _%val174850%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx174823%_ _%stop?174824%_)
        (let _%lp174826%_ ((_%ctx174828%_ _%ctx174823%_))
          (if (_%stop?174824%_ _%ctx174828%_)
              _%ctx174828%_
              (if (##structure-instance-of? _%ctx174828%_ 'gx#phi-context::t)
                  (_%lp174826%_
                   (##unchecked-structure-ref _%ctx174828%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx174837%_ (gx#current-expander-context))
               (_%stop?174839%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174837%_ _%stop?174839%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx174841%_)
        (let ((_%stop?174843%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174841%_ _%stop?174843%_))))
    (define gx#core-context-top
      (lambda _g178867_
        (let ((_g178868_ (##length _g178867_)))
          (cond ((##fx= _g178868_ 0) (apply gx#core-context-top__0 _g178867_))
                ((##fx= _g178868_ 1) (apply gx#core-context-top__1 _g178867_))
                ((##fx= _g178868_ 2) (apply gx#core-context-top__% _g178867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g178867_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx174808%_)
        (let _%lp174810%_ ((_%ctx174812%_ _%ctx174808%_))
          (if (##structure-instance-of? _%ctx174812%_ 'gx#phi-context::t)
              (_%lp174810%_
               (##unchecked-structure-ref _%ctx174812%_ '3 '#f '#f))
              _%ctx174812%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx174818%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx174818%_))))
    (define gx#core-context-root
      (lambda _g178869_
        (let ((_g178870_ (##length _g178869_)))
          (cond ((##fx= _g178870_ 0) (apply gx#core-context-root__0 _g178869_))
                ((##fx= _g178870_ 1) (apply gx#core-context-root__% _g178869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g178869_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx174790%_ . _%ignore174791%_)
        (let ((_%$e174793%_ (gx#current-expander-allow-rebind?)))
          (if _%$e174793%_
              _%$e174793%_
              (if (##structure-instance-of? _%ctx174790%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx174790%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx174790%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx174800%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx174800%_))))
    (define gx#core-context-rebind?
      (lambda _g178871_
        (let ((_g178872_ (##length _g178871_)))
          (cond ((##fx= _g178872_ 0)
                 (apply gx#core-context-rebind?__0 _g178871_))
                ((##fx= _g178872_ 1)
                 (apply gx#core-context-rebind?__% _g178871_))
                ((##fx>= _g178872_ 1)
                 (apply gx#core-context-rebind?__% _g178871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g178871_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx174773%_)
        (let ((_%$e174775%_ (gx#core-context-top__1 _%ctx174773%_)))
          (if _%$e174775%_
              ((lambda (_%ctx174778%_)
                 (if (##structure-instance-of?
                      _%ctx174778%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx174778%_ '6 '#f '#f)
                     '#f))
               _%$e174775%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx174785%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx174785%_))))
    (define gx#core-context-namespace
      (lambda _g178873_
        (let ((_g178874_ (##length _g178873_)))
          (cond ((##fx= _g178874_ 0)
                 (apply gx#core-context-namespace__0 _g178873_))
                ((##fx= _g178874_ 1)
                 (apply gx#core-context-namespace__% _g178873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g178873_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind174759%_ _%is?174760%_)
        (if (##structure-direct-instance-of?
             _%bind174759%_
             'gx#syntax-binding::t)
            (_%is?174760%_
             (##unchecked-structure-ref _%bind174759%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind174765%_)
        (let ((_%is?174767%_ gx#expander?))
          (gx#expander-binding?__% _%bind174765%_ _%is?174767%_))))
    (define gx#expander-binding?
      (lambda _g178875_
        (let ((_g178876_ (##length _g178875_)))
          (cond ((##fx= _g178876_ 1) (apply gx#expander-binding?__0 _g178875_))
                ((##fx= _g178876_ 2) (apply gx#expander-binding?__% _g178875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g178875_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind174756%_)
        (gx#expander-binding?__% _%bind174756%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind174754%_)
        (gx#expander-binding?__% _%bind174754%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind174748%_)
        (letrec ((_%direct-special-form?174750%_
                  (lambda (_%obj174752%_)
                    (##structure-direct-instance-of?
                     _%obj174752%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind174748%_
           _%direct-special-form?174750%_))))
    (define gx#special-form-binding?
      (lambda (_%bind174746%_)
        (gx#expander-binding?__% _%bind174746%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind174737%_)
        (letrec ((_%feature?174739%_
                  (lambda (_%e174741%_)
                    (let ((_%$e174743%_
                           (##structure-instance-of?
                            _%e174741%_
                            'gx#feature-expander::t)))
                      (if _%$e174743%_
                          _%$e174743%_
                          (##structure-instance-of?
                           _%e174741%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind174737%_ _%feature?174739%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind174735%_)
        (gx#expander-binding?__% _%bind174735%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id174722%_ _%bound?174723%_)
        (if (gx#identifier? _%id174722%_)
            (_%bound?174723%_ (gx#resolve-identifier__0 _%id174722%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id174728%_)
        (let ((_%bound?174730%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id174728%_ _%bound?174730%_))))
    (define gx#core-bound-identifier?
      (lambda _g178877_
        (let ((_g178878_ (##length _g178877_)))
          (cond ((##fx= _g178878_ 1)
                 (apply gx#core-bound-identifier?__0 _g178877_))
                ((##fx= _g178878_ 2)
                 (apply gx#core-bound-identifier?__% _g178877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g178877_))))))
    (define gx#core-identifier=?
      (lambda (_%x174712%_ _%y174713%_)
        (letrec ((_%y=?174715%_
                  (lambda (_%xid174719%_)
                    ((if (list? _%y174713%_) memq eq?)
                     _%xid174719%_
                     _%y174713%_))))
          (let ((_%bind174717%_ (gx#resolve-identifier__0 _%x174712%_)))
            (if (##structure-instance-of? _%bind174717%_ 'gx#binding::t)
                (_%y=?174715%_
                 (##unchecked-structure-ref _%bind174717%_ '1 '#f '#f))
                (_%y=?174715%_ (gx#stx-e _%x174712%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e174710%_)
        (if (interned-symbol? _%e174710%_)
            (string-index__0 (symbol->string _%e174710%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx174663%_ _%src174664%_ _%ctx174665%_ _%marks174666%_)
        (if (##structure? _%stx174663%_)
            (let ((_%$e174668%_ (gx#sealed-syntax-unwrap _%stx174663%_)))
              (if _%$e174668%_
                  _%$e174668%_
                  (if (gx#identifier? _%stx174663%_)
                      (let ((_%id174672%_
                             (gx#stx-unwrap__% _%stx174663%_ _%marks174666%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id174672%_ '1 '#f '#f)
                         (let ((_%$e174674%_
                                (##unchecked-structure-ref
                                 _%id174672%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e174674%_ _%$e174674%_ _%src174664%_))
                         _%ctx174665%_
                         (##unchecked-structure-ref _%id174672%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx174663%_)
                       (let ((_%$e174678%_ (gx#stx-source _%stx174663%_)))
                         (if _%$e174678%_ _%$e174678%_ _%src174664%_))
                       _%ctx174665%_
                       (reverse _%marks174666%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx174663%_
             _%src174664%_
             _%ctx174665%_
             (reverse _%marks174666%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx174684%_)
        (let* ((_%src174686%_ '#f)
               (_%ctx174688%_ (gx#current-expander-context))
               (_%marks174690%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174684%_
           _%src174686%_
           _%ctx174688%_
           _%marks174690%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx174692%_ _%src174693%_)
        (let* ((_%ctx174695%_ (gx#current-expander-context))
               (_%marks174697%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174692%_
           _%src174693%_
           _%ctx174695%_
           _%marks174697%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx174699%_ _%src174700%_ _%ctx174701%_)
        (let ((_%marks174703%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174699%_
           _%src174700%_
           _%ctx174701%_
           _%marks174703%_))))
    (define gx#core-quote-syntax
      (lambda _g178879_
        (let ((_g178880_ (##length _g178879_)))
          (cond ((##fx= _g178880_ 1) (apply gx#core-quote-syntax__0 _g178879_))
                ((##fx= _g178880_ 2) (apply gx#core-quote-syntax__1 _g178879_))
                ((##fx= _g178880_ 3) (apply gx#core-quote-syntax__2 _g178879_))
                ((##fx= _g178880_ 4) (apply gx#core-quote-syntax__% _g178879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g178879_))))))
    (define gx#core-cons
      (lambda (_%hd174659%_ _%tl174660%_)
        (cons (gx#core-quote-syntax__0 _%hd174659%_) _%tl174660%_)))
    (define gx#core-list
      (lambda (_%hd174656%_ . _%rest174657%_)
        (cons (gx#core-quote-syntax__0 _%hd174656%_) _%rest174657%_)))
    (define gx#core-cons*
      (lambda (_%hd174653%_ . _%rest174654%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd174653%_) _%rest174654%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path174622%_ _%rel174623%_)
        (let ((_%path174640%_ (gx#stx-e _%stx-path174622%_))
              (_%reldir174641%_
               (let _%lp174625%_ ((_%relsrc174627%_
                                   (let ((_%$e174637%_
                                          (gx#stx-source _%stx-path174622%_)))
                                     (if _%$e174637%_
                                         _%$e174637%_
                                         _%rel174623%_))))
                 (if (##structure-instance-of? _%relsrc174627%_ 'gerbil#AST::t)
                     (_%lp174625%_
                      (let ((_%$e174630%_ (gx#stx-source _%relsrc174627%_)))
                        (if _%$e174630%_
                            _%$e174630%_
                            (gx#stx-e _%relsrc174627%_))))
                     (if (source-location-path? _%relsrc174627%_)
                         (path-directory
                          (source-location-path _%relsrc174627%_))
                         (if (string? _%relsrc174627%_)
                             (path-directory _%relsrc174627%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path174640%_ (path-normalize _%reldir174641%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path174646%_)
        (let ((_%rel174648%_ '#f))
          (gx#core-resolve-path__% _%stx-path174646%_ _%rel174648%_))))
    (define gx#core-resolve-path
      (lambda _g178881_
        (let ((_g178882_ (##length _g178881_)))
          (cond ((##fx= _g178882_ 1) (apply gx#core-resolve-path__0 _g178881_))
                ((##fx= _g178882_ 2) (apply gx#core-resolve-path__% _g178881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g178881_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr174578%_ _%ctx174579%_)
        (let* ((_%repr174580174587%_ _%repr174578%_)
               (_%E174582174591%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr174580174587%_
                         '([phi . subs]))
                  '#!void))
               (_%K174583174599%_
                (lambda (_%subs174594%_ _%phi174595%_)
                  (let ((_%subst174597%_
                         (if (null? _%subs174594%_)
                             '#f
                             (list->hash-table-eq _%subs174594%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst174597%_
                     _%ctx174579%_
                     _%phi174595%_
                     '#f)))))
          (if (pair? _%repr174580174587%_)
              (let ((_%hd174584174602%_ (##car _%repr174580174587%_))
                    (_%tl174585174604%_ (##cdr _%repr174580174587%_)))
                (let* ((_%phi174607%_ _%hd174584174602%_)
                       (_%subs174609%_ _%tl174585174604%_))
                  (_%K174583174599%_ _%subs174609%_ _%phi174607%_)))
              (_%E174582174591%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr174614%_)
        (let ((_%ctx174616%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr174614%_ _%ctx174616%_))))
    (define gx#core-deserialize-mark
      (lambda _g178883_
        (let ((_g178884_ (##length _g178883_)))
          (cond ((##fx= _g178884_ 1)
                 (apply gx#core-deserialize-mark__0 _g178883_))
                ((##fx= _g178884_ 2)
                 (apply gx#core-deserialize-mark__% _g178883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g178883_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx174575%_)
        (gx#stx-rewrap _%stx174575%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx174573%_)
        (gx#stx-unwrap__% _%stx174573%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx174543%_)
        (let* ((_%g174544174552%_ (gx#current-expander-marks))
               (_%else174546174560%_ (lambda () _%stx174543%_))
               (_%K174548174565%_
                (lambda (_%hd174563%_)
                  (gx#stx-apply-mark _%stx174543%_ _%hd174563%_))))
          (if (pair? _%g174544174552%_)
              (let* ((_%hd174549174568%_ (##car _%g174544174552%_))
                     (_%hd174571%_ _%hd174549174568%_))
                (_%K174548174565%_ _%hd174571%_))
              (_%else174546174560%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym174541%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym174541%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx174526%_ _%E174527%_)
        (let ((_%bind174529%_ (gx#resolve-identifier__0 _%stx174526%_)))
          (if (##structure-direct-instance-of?
               _%bind174529%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind174529%_ '5 '#f '#f)
              (_%E174527%_ _%stx174526%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx174534%_)
        (let ((_%E174536%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx174534%_ _%E174536%_))))
    (define gx#syntax-local-e
      (lambda _g178885_
        (let ((_g178886_ (##length _g178885_)))
          (cond ((##fx= _g178886_ 1) (apply gx#syntax-local-e__0 _g178885_))
                ((##fx= _g178886_ 2) (apply gx#syntax-local-e__% _g178885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g178885_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx174510%_ _%E174511%_)
        (let ((_%e174513%_ (gx#syntax-local-e__% _%stx174510%_ _%E174511%_)))
          (if (##structure-instance-of? _%e174513%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e174513%_ '1 '#f '#f)
              _%e174513%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx174518%_)
        (let ((_%E174520%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx174518%_ _%E174520%_))))
    (define gx#syntax-local-value
      (lambda _g178887_
        (let ((_g178888_ (##length _g178887_)))
          (cond ((##fx= _g178888_ 1)
                 (apply gx#syntax-local-value__0 _g178887_))
                ((##fx= _g178888_ 2)
                 (apply gx#syntax-local-value__% _g178887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g178887_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx174507%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx174507%_)))))
