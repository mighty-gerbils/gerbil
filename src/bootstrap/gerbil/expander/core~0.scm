(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1781697561)
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
      (lambda _%$args182635%_
        (apply make-instance gx#expander-context::t _%$args182635%_)))
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
      (lambda _%$args182632%_
        (apply make-instance gx#root-context::t _%$args182632%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args182629%_
        (apply make-instance gx#phi-context::t _%$args182629%_)))
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
      (lambda _%$args182626%_
        (apply make-instance gx#top-context::t _%$args182626%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args182623%_
        (apply make-instance gx#module-context::t _%$args182623%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args182620%_
        (apply make-instance gx#prelude-context::t _%$args182620%_)))
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
      (lambda _%$args182617%_
        (apply make-instance gx#local-context::t _%$args182617%_)))
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
      (lambda (_%self182590%_ _%id182591%_ _%super182592%_)
        (let ((_%self182595%_ _%self182590%_))
          (if (##fx< '3 (##structure-length _%self182595%_))
              (begin
                (##unchecked-structure-set!
                 _%self182595%_
                 _%id182591%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182595%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182595%_
                 _%super182592%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self182595%_
                     '3
                     (##structure-length _%self182595%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self182608%_ _%id182609%_)
        (let ((_%super182611%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self182608%_
           _%id182609%_
           _%super182611%_))))
    (define gx#phi-context:::init!
      (lambda _g182677_
        (let ((_g182678_ (##length _g182677_)))
          (cond ((##fx= _g182678_ 2)
                 (apply gx#phi-context:::init!__0 _g182677_))
                ((##fx= _g182678_ 3)
                 (apply gx#phi-context:::init!__% _g182677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g182677_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self182443%_ _%super182444%_)
        (let ((_%self182447%_ _%self182443%_))
          (if (##fx< '3 (##structure-length _%self182447%_))
              (begin
                (##unchecked-structure-set!
                 _%self182447%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182447%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self182447%_
                 _%super182444%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self182447%_
                     '3
                     (##structure-length _%self182447%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self182460%_)
        (let ((_%super182462%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self182460%_ _%super182462%_))))
    (define gx#local-context:::init!
      (lambda _g182679_
        (let ((_g182680_ (##length _g182679_)))
          (cond ((##fx= _g182680_ 1)
                 (apply gx#local-context:::init!__0 _g182679_))
                ((##fx= _g182680_ 2)
                 (apply gx#local-context:::init!__% _g182679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g182679_))))))
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
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args182317%_
        (apply make-instance gx#binding::t _%$args182317%_)))
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
      (lambda (_%self182300%_ _%id182301%_ _%key182302%_ _%phi182303%_)
        (let ((_%self182306%_ _%self182300%_))
          (##unchecked-structure-set! _%self182306%_ _%id182301%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self182306%_ _%key182302%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self182306%_
           _%phi182303%_
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args182175%_
        (apply make-instance gx#runtime-binding::t _%$args182175%_)))
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
      (lambda _%$args182172%_
        (apply make-instance gx#local-binding::t _%$args182172%_)))
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
      (lambda _%$args182169%_
        (apply make-instance gx#top-binding::t _%$args182169%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args182166%_
        (apply make-instance gx#module-binding::t _%$args182166%_)))
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
      (lambda _%$args182163%_
        (apply make-instance gx#extern-binding::t _%$args182163%_)))
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
      (lambda (_%self181779%_
               _%id181780%_
               _%key181781%_
               _%phi181782%_
               _%ctx181783%_)
        (let ((_%self181786%_ _%self181779%_))
          (gx#binding:::init!
           _%self181786%_
           _%id181780%_
           _%key181781%_
           _%phi181782%_)
          (##unchecked-structure-set!
           _%self181786%_
           _%ctx181783%_
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args181532%_
        (apply make-instance gx#syntax-binding::t _%$args181532%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args181529%_
        (apply make-instance gx#import-binding::t _%$args181529%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: e))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args181526%_
        (apply make-instance gx#alias-binding::t _%$args181526%_)))
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
      (lambda (_%self181508%_
               _%id181509%_
               _%key181510%_
               _%phi181511%_
               _%e181512%_)
        (let ((_%self181515%_ _%self181508%_))
          (gx#binding:::init!
           _%self181515%_
           _%id181509%_
           _%key181510%_
           _%phi181511%_)
          (##unchecked-structure-set! _%self181515%_ _%e181512%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self181366%_
               _%id181367%_
               _%key181368%_
               _%phi181369%_
               _%e181370%_
               _%ctx181371%_
               _%weak?181372%_)
        (let ((_%self181375%_ _%self181366%_))
          (gx#binding:::init!
           _%self181375%_
           _%id181367%_
           _%key181368%_
           _%phi181369%_)
          (##unchecked-structure-set! _%self181375%_ _%e181370%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self181375%_ _%ctx181371%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self181375%_
           _%weak?181372%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self181226%_
               _%id181227%_
               _%key181228%_
               _%phi181229%_
               _%e181230%_)
        (let ((_%self181233%_ _%self181226%_))
          (gx#binding:::init!
           _%self181233%_
           _%id181227%_
           _%key181228%_
           _%phi181229%_)
          (##unchecked-structure-set! _%self181233%_ _%e181230%_ '5 '#f '#f))))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args181101%_
        (apply make-instance gx#expander::t _%$args181101%_)))
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
       (cons (cons 'struct: '#t) '((print: id)))
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args181098%_
        (apply make-instance gx#core-expander::t _%$args181098%_)))
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
      (lambda _%$args181095%_
        (apply make-instance gx#expression-form::t _%$args181095%_)))
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
      (lambda _%$args181092%_
        (apply make-instance gx#special-form::t _%$args181092%_)))
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
      (lambda _%$args181089%_
        (apply make-instance gx#definition-form::t _%$args181089%_)))
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
      (lambda _%$args181086%_
        (apply make-instance gx#top-special-form::t _%$args181086%_)))
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
      (lambda _%$args181083%_
        (apply make-instance gx#module-special-form::t _%$args181083%_)))
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
      (lambda _%$args181080%_
        (apply make-instance gx#feature-expander::t _%$args181080%_)))
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
      (lambda _%$args181077%_
        (apply make-instance gx#private-feature-expander::t _%$args181077%_)))
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
      (lambda _%$args181074%_
        (apply make-instance gx#reserved-expander::t _%$args181074%_)))
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
      (lambda _%$args181071%_
        (apply make-instance gx#macro-expander::t _%$args181071%_)))
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
      (lambda _%$args181068%_
        (apply make-instance gx#rename-macro-expander::t _%$args181068%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args181065%_
        (apply make-instance gx#user-expander::t _%$args181065%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args181062%_
        (apply make-instance gx#expander-mark::t _%$args181062%_)))
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
      (lambda (_%ctx181046%_
               _%message181047%_
               _%stx181048%_
               .
               _%details181049%_)
        (let ((_%ctx181060%_
               (let ((_%$e181051%_ _%ctx181046%_))
                 (if _%$e181051%_
                     _%$e181051%_
                     (let ((_%$e181054%_ (gx#core-context-top__0)))
                       (if _%$e181054%_
                           (cons 'expand
                                 (cons (##structure-ref
                                        _%$e181054%_
                                        '1
                                        gx#expander-context::t
                                        '#f)
                                       '()))
                           '#f))))))
          (raise (make-syntax-error
                  _%message181047%_
                  (cons _%stx181048%_ _%details181049%_)
                  _%ctx181060%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx181033%_ _%expression?181034%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx181033%_ _%expression?181034%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx181039%_)
        (let ((_%expression?181041%_ '#f))
          (gx#eval-syntax__% _%stx181039%_ _%expression?181041%_))))
    (define gx#eval-syntax
      (lambda _g182681_
        (let ((_g182682_ (##length _g182681_)))
          (cond ((##fx= _g182682_ 1) (apply gx#eval-syntax__0 _g182681_))
                ((##fx= _g182682_ 2) (apply gx#eval-syntax__% _g182681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g182681_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx181018%_ _%expression?181019%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx181018%_ _%expression?181019%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx181025%_)
        (let ((_%expression?181027%_ '#f))
          (gx#eval-syntax+1__% _%stx181025%_ _%expression?181027%_))))
    (define gx#eval-syntax+1
      (lambda _g182683_
        (let ((_g182684_ (##length _g182683_)))
          (cond ((##fx= _g182684_ 1) (apply gx#eval-syntax+1__0 _g182683_))
                ((##fx= _g182684_ 2) (apply gx#eval-syntax+1__% _g182683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g182683_))))))
    (define gx#eval-expression+1
      (lambda (_%stx181015%_) (gx#eval-syntax+1__% _%stx181015%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx181013%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx181013%_))))
    (define gx#core-expand__%
      (lambda (_%stx181000%_ _%expression?181001%_)
        (if _%expression?181001%_
            (gx#core-expand-expression _%stx181000%_)
            (gx#core-expand-top _%stx181000%_))))
    (define gx#core-expand__0
      (lambda (_%stx181006%_)
        (let ((_%expression?181008%_ '#f))
          (gx#core-expand__% _%stx181006%_ _%expression?181008%_))))
    (define gx#core-expand
      (lambda _g182685_
        (let ((_g182686_ (##length _g182685_)))
          (cond ((##fx= _g182686_ 1) (apply gx#core-expand__0 _g182685_))
                ((##fx= _g182686_ 2) (apply gx#core-expand__% _g182685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g182685_))))))
    (define gx#core-expand-top
      (lambda (_%stx180967%_)
        (let* ((_%stx180969%_ (gx#core-expand*__0 _%stx180967%_))
               (_%$%e180970180977%_ _%stx180969%_)
               (_%$%E180972180981%_
                (lambda () (gx#core-expand-expression _%stx180969%_)))
               (_%$%E180971180995%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e180970180977%_)
                      (let ((_%$%e180973180985%_
                             (gx#syntax-e _%$%e180970180977%_)))
                        (let ((_%$%hd180974180988%_
                               (##car _%$%e180973180985%_))
                              (_%$%tl180975180990%_
                               (##cdr _%$%e180973180985%_)))
                          (let ((_%form180993%_ _%$%hd180974180988%_))
                            (if (gx#core-bound-identifier?__0 _%form180993%_)
                                _%stx180969%_
                                (_%$%E180972180981%_)))))
                      (_%$%E180972180981%_)))))
          (_%$%E180971180995%_))))
    (define gx#core-expand-expression
      (lambda (_%stx180899%_)
        (letrec ((_%sealed-expression?180901%_
                  (lambda (_%hd180937%_)
                    (if (gx#sealed-syntax? _%hd180937%_)
                        (let* ((_%$%e180938180945%_ _%hd180937%_)
                               (_%$%E180940180949%_ (lambda () '#f))
                               (_%$%E180939180963%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e180938180945%_)
                                      (let ((_%$%e180941180953%_
                                             (gx#syntax-e
                                              _%$%e180938180945%_)))
                                        (let ((_%$%hd180942180956%_
                                               (##car _%$%e180941180953%_))
                                              (_%$%tl180943180958%_
                                               (##cdr _%$%e180941180953%_)))
                                          (let ((_%form180961%_
                                                 _%$%hd180942180956%_))
                                            (gx#core-bound-identifier?__%
                                             _%form180961%_
                                             gx#expression-form-binding?))))
                                      (_%$%E180940180949%_)))))
                          (_%$%E180939180963%_))
                        '#f)))
                 (_%illegal-expression180902%_
                  (lambda (_%hd180934%_ . _%_180935%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx180899%_
                     _%hd180934%_)))
                 (_%expand-e180903%_
                  (lambda (_%form180926%_ _%hd180927%_)
                    (let ((_%bind180929%_
                           (if (##structure-instance-of?
                                _%form180926%_
                                'gx#binding::t)
                               _%form180926%_
                               (gx#resolve-identifier__0 _%form180926%_))))
                      (if (gx#core-expander-binding? _%bind180929%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind180929%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd180927%_
                            (gx#stx-source _%stx180899%_)))
                          (if (##structure-direct-instance-of?
                               _%bind180929%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind180929%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd180927%_
                                 (gx#stx-source _%stx180899%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx180899%_
                               _%form180926%_)))))))
          (let ((_%hd180905%_ (gx#core-expand-head _%stx180899%_)))
            (if (_%sealed-expression?180901%_ _%hd180905%_)
                _%hd180905%_
                (if (gx#stx-pair? _%hd180905%_)
                    (let* ((_%form180909%_ (gx#stx-car _%hd180905%_))
                           (_%bind180911%_
                            (if (gx#identifier? _%form180909%_)
                                (gx#resolve-identifier__0 _%form180909%_)
                                '#f)))
                      (if (or (not _%bind180911%_)
                              (not (gx#core-expander-binding? _%bind180911%_)))
                          (_%expand-e180903%_
                           '%%app
                           (cons '%%app _%hd180905%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind180911%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd180905%_
                               _%illegal-expression180902%_)
                              (if (gx#expression-form-binding? _%bind180911%_)
                                  (_%expand-e180903%_
                                   _%bind180911%_
                                   _%hd180905%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind180911%_)
                                      (gx#core-expand-expression
                                       (_%expand-e180903%_
                                        _%bind180911%_
                                        _%hd180905%_))
                                      (_%illegal-expression180902%_
                                       _%hd180905%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd180905%_)
                        (_%illegal-expression180902%_ _%hd180905%_)
                        (if (gx#identifier? _%hd180905%_)
                            (_%expand-e180903%_
                             '%%ref
                             (cons '%%ref (cons _%hd180905%_ '())))
                            (if (gx#stx-datum? _%hd180905%_)
                                (_%expand-e180903%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd180905%_ '())))
                                (_%illegal-expression180902%_
                                 _%hd180905%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx180894%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx180897%_ (gx#core-expand-expression _%stx180894%_)))
             (values _%stx180897%_ (gx#eval-syntax* _%stx180897%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx180875%_ _%stop?180876%_)
        (let _%lp180878%_ ((_%stx180880%_ _%stx180875%_))
          (if (_%stop?180876%_ _%stx180880%_)
              _%stx180880%_
              (let ((_%rstx180882%_ (gx#core-expand1 _%stx180880%_)))
                (if (eq? _%stx180880%_ _%rstx180882%_)
                    _%stx180880%_
                    (_%lp180878%_ _%rstx180882%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx180887%_)
        (let ((_%stop?180889%_ false))
          (gx#core-expand*__% _%stx180887%_ _%stop?180889%_))))
    (define gx#core-expand*
      (lambda _g182687_
        (let ((_g182688_ (##length _g182687_)))
          (cond ((##fx= _g182688_ 1) (apply gx#core-expand*__0 _g182687_))
                ((##fx= _g182688_ 2) (apply gx#core-expand*__% _g182687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g182687_))))))
    (define gx#core-expand1
      (lambda (_%stx180827%_)
        (letrec ((_%step180829%_
                  (lambda (_%hd180866%_)
                    (let ((_%bind180868%_
                           (gx#resolve-identifier__0 _%hd180866%_)))
                      (if (##structure-instance-of?
                           _%bind180868%_
                           'gx#runtime-binding::t)
                          _%stx180827%_
                          (if (##structure-direct-instance-of?
                               _%bind180868%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind180868%_
                                '5
                                '#f
                                '#f)
                               _%stx180827%_)
                              (if (not _%bind180868%_)
                                  _%stx180827%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx180827%_))))))))
          (let* ((_%$%e180830180838%_ _%stx180827%_)
                 (_%$%E180836180842%_ (lambda () _%stx180827%_))
                 (_%$%E180832180848%_
                  (lambda ()
                    (let ((_%hd180846%_ _%$%e180830180838%_))
                      (if (gx#identifier? _%hd180846%_)
                          (_%step180829%_ _%hd180846%_)
                          (_%$%E180836180842%_)))))
                 (_%$%E180831180862%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e180830180838%_)
                        (let ((_%$%e180833180852%_
                               (gx#syntax-e _%$%e180830180838%_)))
                          (let ((_%$%hd180834180855%_
                                 (##car _%$%e180833180852%_))
                                (_%$%tl180835180857%_
                                 (##cdr _%$%e180833180852%_)))
                            (let ((_%hd180860%_ _%$%hd180834180855%_))
                              (if (gx#identifier? _%hd180860%_)
                                  (_%step180829%_ _%hd180860%_)
                                  (_%$%E180832180848%_)))))
                        (_%$%E180832180848%_)))))
            (_%$%E180831180862%_)))))
    (define gx#core-expand-head
      (lambda (_%stx180793%_)
        (letrec ((_%stop?180795%_
                  (lambda (_%stx180797%_)
                    (let* ((_%$%e180798180805%_ _%stx180797%_)
                           (_%$%E180800180809%_ (lambda () '#f))
                           (_%$%E180799180823%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e180798180805%_)
                                  (let ((_%$%e180801180813%_
                                         (gx#syntax-e _%$%e180798180805%_)))
                                    (let ((_%$%hd180802180816%_
                                           (##car _%$%e180801180813%_))
                                          (_%$%tl180803180818%_
                                           (##cdr _%$%e180801180813%_)))
                                      (let ((_%hd180821%_
                                             _%$%hd180802180816%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd180821%_))))
                                  (_%$%E180800180809%_)))))
                      (_%$%E180799180823%_)))))
          (gx#core-expand*__% _%stx180793%_ _%stop?180795%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx180599%_
               _%expand-special180600%_
               _%begin-form180601%_
               _%expand-e180602%_)
        (letrec ((_%expand-splice180604%_
                  (lambda (_%hd180767%_
                           _%body180768%_
                           _%rest180769%_
                           _%r180770%_)
                    (if (gx#stx-list? _%body180768%_)
                        (_%K180608%_
                         (gx#stx-foldr cons _%rest180769%_ _%body180768%_)
                         _%r180770%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx180599%_
                         _%hd180767%_))))
                 (_%expand-cond-expand180605%_
                  (lambda (_%hd180763%_ _%rest180764%_ _%r180765%_)
                    (_%K180608%_
                     (cons (gx#core-expand-cond-expand% _%hd180763%_)
                           _%rest180764%_)
                     _%r180765%_)))
                 (_%expand-include180606%_
                  (lambda (_%hd180712%_ _%rest180713%_ _%r180714%_)
                    (let* ((_%$%e180715180725%_ _%hd180712%_)
                           (_%$%E180717180729%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e180715180725%_)))
                           (_%$%E180716180759%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e180715180725%_)
                                  (let ((_%$%e180718180733%_
                                         (gx#syntax-e _%$%e180715180725%_)))
                                    (let ((_%$%hd180719180736%_
                                           (##car _%$%e180718180733%_))
                                          (_%$%tl180720180738%_
                                           (##cdr _%$%e180718180733%_)))
                                      (if (gx#stx-pair? _%$%tl180720180738%_)
                                          (let ((_%$%e180721180741%_
                                                 (gx#syntax-e
                                                  _%$%tl180720180738%_)))
                                            (let ((_%$%hd180722180744%_
                                                   (##car _%$%e180721180741%_))
                                                  (_%$%tl180723180746%_
                                                   (##cdr _%$%e180721180741%_)))
                                              (let ((_%path180749%_
                                                     _%$%hd180722180744%_))
                                                (if (gx#stx-null?
                                                     _%$%tl180723180746%_)
                                                    (if (gx#stx-string?
                                                         _%path180749%_)
                                                        (let* ((_%rpath180751%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path180749%_
                         (gx#stx-source _%hd180712%_)))
                       (_%block180753%_
                        (gx#core-expand-include%__%
                         _%hd180712%_
                         _%rpath180751%_))
                       (_%rbody180756%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block180753%_
                            _%expand-special180600%_
                            '#f
                            _%expand-e180602%_))
                         gx#current-expander-path
                         (cons _%rpath180751%_ (gx#current-expander-path)))))
                  (_%K180608%_
                   _%rest180713%_
                   (foldr__0 cons _%r180714%_ _%rbody180756%_)))
                (_%$%E180717180729%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E180717180729%_)))))
                                          (_%$%E180717180729%_))))
                                  (_%$%E180717180729%_)))))
                      (_%$%E180716180759%_))))
                 (_%expand-expression180607%_
                  (lambda (_%hd180708%_ _%rest180709%_ _%r180710%_)
                    (_%K180608%_
                     _%rest180709%_
                     (cons (_%expand-e180602%_ _%hd180708%_) _%r180710%_))))
                 (_%K180608%_
                  (lambda (_%rest180638%_ _%r180639%_)
                    (let* ((_%$%e180640180647%_ _%rest180638%_)
                           (_%$%E180642180651%_
                            (lambda ()
                              (if _%begin-form180601%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form180601%_
                                    (reverse _%r180639%_))
                                   (gx#stx-source _%stx180599%_))
                                  _%r180639%_)))
                           (_%$%E180641180704%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e180640180647%_)
                                  (let ((_%$%e180643180655%_
                                         (gx#syntax-e _%$%e180640180647%_)))
                                    (let ((_%$%hd180644180658%_
                                           (##car _%$%e180643180655%_))
                                          (_%$%tl180645180660%_
                                           (##cdr _%$%e180643180655%_)))
                                      (let* ((_%hd180663%_
                                              _%$%hd180644180658%_)
                                             (_%rest180665%_
                                              _%$%tl180645180660%_)
                                             (_%hd180667%_
                                              (gx#core-expand-head
                                               _%hd180663%_))
                                             (_%$%e180668180675%_ _%hd180667%_)
                                             (_%$%E180670180679%_
                                              (lambda ()
                                                (_%expand-expression180607%_
                                                 _%hd180667%_
                                                 _%rest180665%_
                                                 _%r180639%_)))
                                             (_%$%E180669180700%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e180668180675%_)
                                                    (let ((_%$%e180671180683%_
                                                           (gx#syntax-e
                                                            _%$%e180668180675%_)))
                                                      (let ((_%$%hd180672180686%_
                                                             (##car _%$%e180671180683%_))
                                                            (_%$%tl180673180688%_
                                                             (##cdr _%$%e180671180683%_)))
                                                        (let* ((_%form180691%_
                                                                _%$%hd180672180686%_)
                                                               (_%body180693%_
                                                                _%$%tl180673180688%_)
                                                               (_%bind180695%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form180691%_)
                            (gx#resolve-identifier__0 _%form180691%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind180695%_)
                      (let ((_%$e180697%_
                             (##unchecked-structure-ref
                              _%bind180695%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e180697%_)
                            (_%expand-splice180604%_
                             _%hd180667%_
                             _%body180693%_
                             _%rest180665%_
                             _%r180639%_)
                            (if (eq? '%#cond-expand _%$e180697%_)
                                (_%expand-cond-expand180605%_
                                 _%hd180667%_
                                 _%rest180665%_
                                 _%r180639%_)
                                (if (eq? '%#include _%$e180697%_)
                                    (_%expand-include180606%_
                                     _%hd180667%_
                                     _%rest180665%_
                                     _%r180639%_)
                                    (_%expand-special180600%_
                                     _%hd180667%_
                                     _%K180608%_
                                     _%rest180665%_
                                     _%r180639%_)))))
                      (_%expand-expression180607%_
                       _%hd180667%_
                       _%rest180665%_
                       _%r180639%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E180670180679%_)))))
                                        (_%$%E180669180700%_))))
                                  (_%$%E180642180651%_)))))
                      (_%$%E180641180704%_)))))
          (let* ((_%$%e180609180616%_ _%stx180599%_)
                 (_%$%E180611180620%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e180609180616%_)))
                 (_%$%E180610180634%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e180609180616%_)
                        (let ((_%$%e180612180624%_
                               (gx#syntax-e _%$%e180609180616%_)))
                          (let ((_%$%hd180613180627%_
                                 (##car _%$%e180612180624%_))
                                (_%$%tl180614180629%_
                                 (##cdr _%$%e180612180624%_)))
                            (let ((_%body180632%_ _%$%tl180614180629%_))
                              (if (gx#stx-list? _%body180632%_)
                                  (_%K180608%_ _%body180632%_ '())
                                  (_%$%E180611180620%_)))))
                        (_%$%E180611180620%_)))))
            (_%$%E180610180634%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx180775%_ _%expand-special180776%_)
        (let* ((_%begin-form180778%_ '%#begin)
               (_%expand-e180780%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx180775%_
           _%expand-special180776%_
           _%begin-form180778%_
           _%expand-e180780%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx180782%_ _%expand-special180783%_ _%begin-form180784%_)
        (let ((_%expand-e180786%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx180782%_
           _%expand-special180783%_
           _%begin-form180784%_
           _%expand-e180786%_))))
    (define gx#core-expand-block
      (lambda _g182689_
        (let ((_g182690_ (##length _g182689_)))
          (cond ((##fx= _g182690_ 2) (apply gx#core-expand-block__0 _g182689_))
                ((##fx= _g182690_ 3) (apply gx#core-expand-block__1 _g182689_))
                ((##fx= _g182690_ 4) (apply gx#core-expand-block__% _g182689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g182689_))))))
    (define gx#core-expand-block*
      (lambda (_%stx180547%_ _%expand-special180548%_)
        (let* ((_%$%g180549180560%_
                (gx#core-expand-block__1
                 _%stx180547%_
                 _%expand-special180548%_
                 '#f))
               (_%$%E180553180564%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g180549180560%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K180558180595%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx180547%_)))
                (_%$%K180555180581%_ (lambda (_%expr180579%_) _%expr180579%_))
                (_%$%K180554180570%_
                 (lambda (_%body180568%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body180568%_))
                    (gx#stx-source _%stx180547%_)))))
            (let ((_%$%try-match180551180591%_
                   (lambda ()
                     (if (pair? _%$%g180549180560%_)
                         (let ((_%$%tl180557180586%_
                                (##cdr _%$%g180549180560%_))
                               (_%$%hd180556180584%_
                                (##car _%$%g180549180560%_)))
                           (if (null? _%$%tl180557180586%_)
                               (let ((_%expr180589%_ _%$%hd180556180584%_))
                                 (_%$%K180555180581%_ _%expr180589%_))
                               (let ((_%body180573%_ _%$%g180549180560%_))
                                 (_%$%K180554180570%_ _%body180573%_))))
                         (let ((_%body180573%_ _%$%g180549180560%_))
                           (_%$%K180554180570%_ _%body180573%_))))))
              (if (null? _%$%g180549180560%_)
                  (_%$%K180558180595%_)
                  (_%$%try-match180551180591%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx180373%_)
        (letrec ((_%satisfied?180375%_
                  (lambda (_%condition180476%_)
                    (let* ((_%$%e180477180492%_ _%condition180476%_)
                           (_%$%E180487180496%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e180477180492%_)))
                           (_%$%E180480180515%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e180477180492%_)
                                  (let ((_%$%e180488180500%_
                                         (gx#syntax-e _%$%e180477180492%_)))
                                    (let ((_%$%hd180489180503%_
                                           (##car _%$%e180488180500%_))
                                          (_%$%tl180490180505%_
                                           (##cdr _%$%e180488180500%_)))
                                      (let* ((_%combinator180508%_
                                              _%$%hd180489180503%_)
                                             (_%body180510%_
                                              _%$%tl180490180505%_))
                                        (if (gx#stx-list? _%body180510%_)
                                            (let ((_%$e180512%_
                                                   (gx#stx-e
                                                    _%combinator180508%_)))
                                              (if (eq? 'not _%$e180512%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?180375%_
                                                        _%body180510%_))
                                                  (if (eq? 'and _%$e180512%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?180375%_
                                                       _%body180510%_)
                                                      (if (eq? 'or
                                                               _%$e180512%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?180375%_
                                                           _%body180510%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e180512%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body180510%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx180373%_
                       _%combinator180508%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E180487180496%_)))))
                                  (_%$%E180487180496%_))))
                           (_%$%E180479180537%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e180477180492%_)
                                  (let ((_%$%e180481180519%_
                                         (gx#syntax-e _%$%e180477180492%_)))
                                    (let ((_%$%hd180482180522%_
                                           (##car _%$%e180481180519%_))
                                          (_%$%tl180483180524%_
                                           (##cdr _%$%e180481180519%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd180482180522%_)
                                               (gx#core-identifier=?
                                                _%$%hd180482180522%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl180483180524%_)
                                              (let ((_%$%e180484180527%_
                                                     (gx#syntax-e
                                                      _%$%tl180483180524%_)))
                                                (let ((_%$%hd180485180530%_
                                                       (##car _%$%e180484180527%_))
                                                      (_%$%tl180486180532%_
                                                       (##cdr _%$%e180484180527%_)))
                                                  (let ((_%expr180535%_
                                                         _%$%hd180485180530%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl180486180532%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr180535%_)
                                                        (_%$%E180480180515%_)))))
                                              (_%$%E180480180515%_))
                                          (_%$%E180480180515%_))))
                                  (_%$%E180480180515%_))))
                           (_%$%E180478180543%_
                            (lambda ()
                              (let ((_%id180541%_ _%$%e180477180492%_))
                                (if (gx#identifier? _%id180541%_)
                                    (gx#core-bound-identifier?__%
                                     _%id180541%_
                                     gx#feature-binding?)
                                    (_%$%E180479180537%_))))))
                      (_%$%E180478180543%_))))
                 (_%loop180376%_
                  (lambda (_%rest180406%_)
                    (let* ((_%$%e180407180415%_ _%rest180406%_)
                           (_%$%E180413180419%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e180407180415%_)))
                           (_%$%E180409180423%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e180407180415%_)
                                  '()
                                  (_%$%E180413180419%_))))
                           (_%$%E180408180472%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e180407180415%_)
                                  (let ((_%$%e180410180427%_
                                         (gx#syntax-e _%$%e180407180415%_)))
                                    (let ((_%$%hd180411180430%_
                                           (##car _%$%e180410180427%_))
                                          (_%$%tl180412180432%_
                                           (##cdr _%$%e180410180427%_)))
                                      (let* ((_%hd180435%_
                                              _%$%hd180411180430%_)
                                             (_%rest180437%_
                                              _%$%tl180412180432%_)
                                             (_%$%e180438180445%_ _%hd180435%_)
                                             (_%$%E180440180449%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e180438180445%_)))
                                             (_%$%E180439180468%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e180438180445%_)
                                                    (let ((_%$%e180441180453%_
                                                           (gx#syntax-e
                                                            _%$%e180438180445%_)))
                                                      (let ((_%$%hd180442180456%_
                                                             (##car _%$%e180441180453%_))
                                                            (_%$%tl180443180458%_
                                                             (##cdr _%$%e180441180453%_)))
                                                        (let* ((_%condition180461%_
                                                                _%$%hd180442180456%_)
                                                               (_%body180463%_
                                                                _%$%tl180443180458%_))
                                                          (if (gx#stx-eq?
                                                               _%condition180461%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest180437%_)
                          _%body180463%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx180373%_
                           _%hd180435%_))
                      (if (_%satisfied?180375%_ _%condition180461%_)
                          _%body180463%_
                          (_%loop180376%_ _%rest180437%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E180440180449%_)))))
                                        (_%$%E180439180468%_))))
                                  (_%$%E180409180423%_)))))
                      (_%$%E180408180472%_)))))
          (let* ((_%$%e180377180384%_ _%stx180373%_)
                 (_%$%E180379180388%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e180377180384%_)))
                 (_%$%E180378180402%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e180377180384%_)
                        (let ((_%$%e180380180392%_
                               (gx#syntax-e _%$%e180377180384%_)))
                          (let ((_%$%hd180381180395%_
                                 (##car _%$%e180380180392%_))
                                (_%$%tl180382180397%_
                                 (##cdr _%$%e180380180392%_)))
                            (let ((_%clauses180400%_ _%$%tl180382180397%_))
                              (if (gx#stx-list? _%clauses180400%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop180376%_ _%clauses180400%_))
                                  (_%$%E180379180388%_)))))
                        (_%$%E180379180388%_)))))
            (_%$%E180378180402%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx180316%_ _%rpath180317%_)
        (let* ((_%$%e180318180328%_ _%stx180316%_)
               (_%$%E180320180332%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e180318180328%_)))
               (_%$%E180319180359%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e180318180328%_)
                      (let ((_%$%e180321180336%_
                             (gx#syntax-e _%$%e180318180328%_)))
                        (let ((_%$%hd180322180339%_
                               (##car _%$%e180321180336%_))
                              (_%$%tl180323180341%_
                               (##cdr _%$%e180321180336%_)))
                          (if (gx#stx-pair? _%$%tl180323180341%_)
                              (let ((_%$%e180324180344%_
                                     (gx#syntax-e _%$%tl180323180341%_)))
                                (let ((_%$%hd180325180347%_
                                       (##car _%$%e180324180344%_))
                                      (_%$%tl180326180349%_
                                       (##cdr _%$%e180324180344%_)))
                                  (let ((_%path180352%_ _%$%hd180325180347%_))
                                    (if (gx#stx-null? _%$%tl180326180349%_)
                                        (if (gx#stx-string? _%path180352%_)
                                            (let ((_%rpath180357%_
                                                   (let ((_%$e180354%_
                                                          _%rpath180317%_))
                                                     (if _%$e180354%_
                                                         _%$e180354%_
                                                         (gx#core-resolve-path__%
                                                          _%path180352%_
                                                          (gx#stx-source
                                                           _%stx180316%_))))))
                                              (if (member _%rpath180357%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx180316%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath180357%_))
                                                    (gx#stx-source
                                                     _%stx180316%_)))))
                                            (_%$%E180320180332%_))
                                        (_%$%E180320180332%_)))))
                              (_%$%E180320180332%_))))
                      (_%$%E180320180332%_)))))
          (_%$%E180319180359%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx180366%_)
        (let ((_%rpath180368%_ '#f))
          (gx#core-expand-include%__% _%stx180366%_ _%rpath180368%_))))
    (define gx#core-expand-include%
      (lambda _g182691_
        (let ((_g182692_ (##length _g182691_)))
          (cond ((##fx= _g182692_ 1)
                 (apply gx#core-expand-include%__0 _g182691_))
                ((##fx= _g182692_ 2)
                 (apply gx#core-expand-include%__% _g182691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g182691_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K180282%_ _%stx180283%_ _%method180284%_)
        (if (procedure? _%K180282%_)
            (let ((_%$e180287%_ (gx#stx-source _%stx180283%_)))
              (if _%$e180287%_
                  (gx#stx-wrap-source (_%K180282%_ _%stx180283%_) _%$e180287%_)
                  (_%K180282%_ _%stx180283%_)))
            (let ((_%$e180295%_
                   (bound-method-ref _%K180282%_ _%method180284%_)))
              (if _%$e180295%_
                  (gx#core-apply-expander__%
                   _%$e180295%_
                   _%stx180283%_
                   _%method180284%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx180283%_
                   _%method180284%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K180306%_ _%stx180307%_)
        (let ((_%method180309%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K180306%_
           _%stx180307%_
           _%method180309%_))))
    (define gx#core-apply-expander
      (lambda _g182693_
        (let ((_g182694_ (##length _g182693_)))
          (cond ((##fx= _g182694_ 2)
                 (apply gx#core-apply-expander__0 _g182693_))
                ((##fx= _g182694_ 3)
                 (apply gx#core-apply-expander__% _g182693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g182693_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self180267%_ _%stx180268%_)
        (let ((_%self180271%_ _%self180267%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx180268%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self180110%_ _%stx180111%_)
        (let* ((_%self180114%_ _%self180110%_)
               (_%$%self180123180129%_ _%self180114%_)
               (_%$%E180125180132%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self180123180129%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K180126180137%_
                (lambda (_%K180135%_)
                  (gx#core-apply-expander__0 _%K180135%_ _%stx180111%_)))
               (_%$%e180127180140%_
                (##unchecked-structure-ref _%$%self180123180129%_ '1 '#f '#f))
               (_%K180143%_ _%$%e180127180140%_))
          (_%$%K180126180137%_ _%K180143%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self179953%_ _%stx179954%_)
        (let ((_%self179957%_ _%self179953%_))
          (if (gx#sealed-syntax? _%stx179954%_)
              _%stx179954%_
              (let* ((_%$%self179966179972%_ _%self179957%_)
                     (_%$%E179968179975%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self179966179972%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K179969179980%_
                      (lambda (_%K179978%_)
                        (gx#core-apply-expander__0 _%K179978%_ _%stx179954%_)))
                     (_%$%e179970179983%_
                      (##unchecked-structure-ref
                       _%$%self179966179972%_
                       '1
                       '#f
                       '#f))
                     (_%K179986%_ _%$%e179970179983%_))
                (_%$%K179969179980%_ _%K179986%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self179803%_ _%stx179804%_ _%top?179805%_)
        (let ((_%self179808%_ _%self179803%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx179804%_))
                (force-output))
              '#!void)
          (if (_%top?179805%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self179808%_
               _%stx179804%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx179804%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self179822%_ _%stx179823%_)
        (let ((_%top?179825%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self179822%_
           _%stx179823%_
           _%top?179825%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g182695_
        (let ((_g182696_ (##length _g182695_)))
          (cond ((##fx= _g182696_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g182695_))
                ((##fx= _g182696_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g182695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g182695_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self179666%_ _%stx179667%_)
        (let ((_%self179670%_ _%self179666%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self179670%_
           _%stx179667%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self179481%_ _%stx179482%_)
        (let* ((_%self179485%_ _%self179481%_)
               (_%$%self179494179500%_ _%self179485%_)
               (_%$%E179496179503%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self179494179500%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K179497179536%_
                (lambda (_%id179506%_)
                  (let* ((_%$%e179507179514%_ _%stx179482%_)
                         (_%$%E179509179518%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e179507179514%_)))
                         (_%$%E179508179532%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e179507179514%_)
                                (let ((_%$%e179510179522%_
                                       (gx#syntax-e _%$%e179507179514%_)))
                                  (let ((_%$%hd179511179525%_
                                         (##car _%$%e179510179522%_))
                                        (_%$%tl179512179527%_
                                         (##cdr _%$%e179510179522%_)))
                                    (let ((_%body179530%_
                                           _%$%tl179512179527%_))
                                      (gx#core-cons
                                       _%id179506%_
                                       _%body179530%_))))
                                (_%$%E179509179518%_)))))
                    (_%$%E179508179532%_))))
               (_%$%e179498179539%_
                (##unchecked-structure-ref _%$%self179494179500%_ '1 '#f '#f))
               (_%id179542%_ _%$%e179498179539%_))
          (_%$%K179497179536%_ _%id179542%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self179308%_ _%stx179309%_ _%method179310%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx179309%_))
              (force-output))
            '#!void)
        (let* ((_%$%self179311179319%_ _%self179308%_)
               (_%$%E179313179322%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self179311179319%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K179314179329%_
                (lambda (_%phi179325%_ _%ctx179326%_ _%K179327%_)
                  (gx#core-apply-user-macro
                   _%K179327%_
                   _%stx179309%_
                   _%ctx179326%_
                   _%phi179325%_
                   _%method179310%_))))
          (if (##structure-instance-of?
               _%$%self179311179319%_
               'gx#user-expander::t)
              (let* ((_%$%e179315179332%_
                      (##unchecked-structure-ref
                       _%$%self179311179319%_
                       '1
                       '#f
                       '#f))
                     (_%K179335%_ _%$%e179315179332%_)
                     (_%$%e179316179337%_
                      (##unchecked-structure-ref
                       _%$%self179311179319%_
                       '2
                       '#f
                       '#f))
                     (_%ctx179340%_ _%$%e179316179337%_)
                     (_%$%e179317179342%_
                      (##unchecked-structure-ref
                       _%$%self179311179319%_
                       '3
                       '#f
                       '#f))
                     (_%phi179345%_ _%$%e179317179342%_))
                (_%$%K179314179329%_ _%phi179345%_ _%ctx179340%_ _%K179335%_))
              (_%$%E179313179322%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self179350%_ _%stx179351%_)
        (let ((_%method179353%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self179350%_
           _%stx179351%_
           _%method179353%_))))
    (define gx#core-apply-user-expander
      (lambda _g182697_
        (let ((_g182698_ (##length _g182697_)))
          (cond ((##fx= _g182698_ 2)
                 (apply gx#core-apply-user-expander__0 _g182697_))
                ((##fx= _g182698_ 3)
                 (apply gx#core-apply-user-expander__% _g182697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g182697_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K179298%_
               _%stx179299%_
               _%ctx179300%_
               _%phi179301%_
               _%method179302%_)
        (let ((_%mark179304%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx179300%_
                _%phi179301%_
                _%stx179299%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K179298%_
               (gx#stx-apply-mark _%stx179299%_ _%mark179304%_)
               _%method179302%_)
              _%mark179304%_))
           gx#current-expander-marks
           (cons _%mark179304%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx179146%_ _%phi179147%_ _%ctx179148%_)
        (let _%lp179150%_ ((_%bind179152%_
                            (gx#core-resolve-identifier__%
                             _%stx179146%_
                             _%phi179147%_
                             _%ctx179148%_)))
          (if (##structure-direct-instance-of?
               _%bind179152%_
               'gx#import-binding::t)
              (_%lp179150%_
               (##unchecked-structure-ref _%bind179152%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind179152%_
                   'gx#alias-binding::t)
                  (_%lp179150%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind179152%_ '5 '#f '#f)
                    _%phi179147%_
                    _%ctx179148%_))
                  _%bind179152%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx179160%_)
        (let* ((_%phi179162%_ (gx#current-expander-phi))
               (_%ctx179164%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx179160%_
           _%phi179162%_
           _%ctx179164%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx179166%_ _%phi179167%_)
        (let ((_%ctx179169%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx179166%_
           _%phi179167%_
           _%ctx179169%_))))
    (define gx#resolve-identifier
      (lambda _g182699_
        (let ((_g182700_ (##length _g182699_)))
          (cond ((##fx= _g182700_ 1)
                 (apply gx#resolve-identifier__0 _g182699_))
                ((##fx= _g182700_ 2)
                 (apply gx#resolve-identifier__1 _g182699_))
                ((##fx= _g182700_ 3)
                 (apply gx#resolve-identifier__% _g182699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g182699_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx179101%_
               _%val179102%_
               _%rebind?179103%_
               _%phi179104%_
               _%ctx179105%_)
        (let ((_%rebind?179110%_
               (if (not _%rebind?179103%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?179103%_)
                       _%rebind?179103%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx179101%_)
           _%val179102%_
           _%rebind?179110%_
           _%phi179104%_
           _%ctx179105%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx179115%_ _%val179116%_)
        (let* ((_%rebind?179118%_ '#f)
               (_%phi179120%_ (gx#current-expander-phi))
               (_%ctx179122%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx179115%_
           _%val179116%_
           _%rebind?179118%_
           _%phi179120%_
           _%ctx179122%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx179124%_ _%val179125%_ _%rebind?179126%_)
        (let* ((_%phi179128%_ (gx#current-expander-phi))
               (_%ctx179130%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx179124%_
           _%val179125%_
           _%rebind?179126%_
           _%phi179128%_
           _%ctx179130%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx179132%_ _%val179133%_ _%rebind?179134%_ _%phi179135%_)
        (let ((_%ctx179137%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx179132%_
           _%val179133%_
           _%rebind?179134%_
           _%phi179135%_
           _%ctx179137%_))))
    (define gx#bind-identifier!
      (lambda _g182701_
        (let ((_g182702_ (##length _g182701_)))
          (cond ((##fx= _g182702_ 2) (apply gx#bind-identifier!__0 _g182701_))
                ((##fx= _g182702_ 3) (apply gx#bind-identifier!__1 _g182701_))
                ((##fx= _g182702_ 4) (apply gx#bind-identifier!__2 _g182701_))
                ((##fx= _g182702_ 5) (apply gx#bind-identifier!__% _g182701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g182701_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx179067%_ _%phi179068%_ _%ctx179069%_)
        (let _%lp179071%_ ((_%e179073%_ _%stx179067%_)
                           (_%marks179074%_ (gx#current-expander-marks)))
          (if (symbol? _%e179073%_)
              (gx#core-resolve-binding
               _%e179073%_
               _%phi179068%_
               _%phi179068%_
               _%ctx179069%_
               (reverse _%marks179074%_))
              (if (gx#identifier-quote? _%e179073%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e179073%_ '1 '#f '#f)
                   _%phi179068%_
                   '0
                   (##unchecked-structure-ref _%e179073%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e179073%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e179073%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e179073%_ '1 '#f '#f)
                       _%phi179068%_
                       _%phi179068%_
                       _%ctx179069%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e179073%_ '3 '#f '#f)
                        _%marks179074%_))
                      (if (##structure-direct-instance-of?
                           _%e179073%_
                           'gx#syntax-wrap::t)
                          (_%lp179071%_
                           (##unchecked-structure-ref _%e179073%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e179073%_ '3 '#f '#f)
                            _%marks179074%_))
                          (if (##structure-instance-of?
                               _%e179073%_
                               'gerbil#AST::t)
                              (_%lp179071%_
                               (##unchecked-structure-ref
                                _%e179073%_
                                '1
                                '#f
                                '#f)
                               _%marks179074%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx179067%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx179085%_)
        (let* ((_%phi179087%_ (gx#current-expander-phi))
               (_%ctx179089%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx179085%_
           _%phi179087%_
           _%ctx179089%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx179091%_ _%phi179092%_)
        (let ((_%ctx179094%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx179091%_
           _%phi179092%_
           _%ctx179094%_))))
    (define gx#core-resolve-identifier
      (lambda _g182703_
        (let ((_g182704_ (##length _g182703_)))
          (cond ((##fx= _g182704_ 1)
                 (apply gx#core-resolve-identifier__0 _g182703_))
                ((##fx= _g182704_ 2)
                 (apply gx#core-resolve-identifier__1 _g182703_))
                ((##fx= _g182704_ 3)
                 (apply gx#core-resolve-identifier__% _g182703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g182703_))))))
    (define gx#core-resolve-binding
      (lambda (_%id178978%_
               _%phi178979%_
               _%src-phi178980%_
               _%ctx178981%_
               _%marks178982%_)
        (letrec ((_%resolve178984%_
                  (lambda (_%ctx179051%_ _%src-phi179052%_ _%key179053%_)
                    (let _%lp179055%_ ((_%ctx179057%_
                                        (gx#core-context-shift
                                         _%ctx179051%_
                                         _%phi178979%_))
                                       (_%dphi179058%_
                                        (fx- _%phi178979%_ _%src-phi179052%_)))
                      (let ((_%$e179060%_
                             (gx#core-context-resolve
                              _%ctx179057%_
                              _%key179053%_)))
                        (if _%$e179060%_
                            _%$e179060%_
                            (if (fxzero? _%dphi179058%_)
                                '#f
                                (if (fxpositive? _%dphi179058%_)
                                    (_%lp179055%_
                                     (gx#core-context-shift _%ctx179057%_ '-1)
                                     (##fx- _%dphi179058%_ '1))
                                    (_%lp179055%_
                                     (gx#core-context-shift _%ctx179057%_ '1)
                                     (##fx+ _%dphi179058%_ '1))))))))))
          (let _%lp178986%_ ((_%ctx178988%_ _%ctx178981%_)
                             (_%src-phi178989%_ _%src-phi178980%_)
                             (_%rest178990%_ _%marks178982%_))
            (let* ((_%$%rest178991178999%_ _%rest178990%_)
                   (_%$%else178993179007%_
                    (lambda ()
                      (_%resolve178984%_
                       _%ctx178988%_
                       _%src-phi178989%_
                       _%id178978%_)))
                   (_%$%K178995179039%_
                    (lambda (_%rest179010%_ _%hd179011%_)
                      (let* ((_%$%hd179012179018%_ _%hd179011%_)
                             (_%$%E179014179021%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd179012179018%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K179015179031%_
                              (lambda (_%subst179024%_)
                                (let ((_%$e179028%_
                                       (let ((_%key179026%_
                                              (if _%subst179024%_
                                                  (hash-get
                                                   _%subst179024%_
                                                   _%id178978%_)
                                                  '#f)))
                                         (if _%key179026%_
                                             (_%resolve178984%_
                                              _%ctx178988%_
                                              _%src-phi178989%_
                                              _%key179026%_)
                                             '#f))))
                                  (if _%$e179028%_
                                      _%$e179028%_
                                      (_%lp178986%_
                                       (##unchecked-structure-ref
                                        _%hd179011%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd179011%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest179010%_))))))
                        (if (##structure-instance-of?
                             _%$%hd179012179018%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e179016179034%_
                                    (##unchecked-structure-ref
                                     _%$%hd179012179018%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst179037%_ _%$%e179016179034%_))
                              (_%$%K179015179031%_ _%subst179037%_))
                            (_%$%E179014179021%_))))))
              (if (pair? _%$%rest178991178999%_)
                  (let ((_%$%hd178996179042%_ (##car _%$%rest178991178999%_))
                        (_%$%tl178997179044%_ (##cdr _%$%rest178991178999%_)))
                    (let* ((_%hd179047%_ _%$%hd178996179042%_)
                           (_%rest179049%_ _%$%tl178997179044%_))
                      (_%$%K178995179039%_ _%rest179049%_ _%hd179047%_)))
                  (_%$%else178993179007%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key178849%_
               _%val178850%_
               _%rebind?178851%_
               _%phi178852%_
               _%ctx178853%_)
        (letrec ((_%update-binding178855%_
                  (lambda (_%xval178927%_)
                    (if (or (_%rebind?178851%_
                             _%ctx178853%_
                             _%xval178927%_
                             _%val178850%_)
                            (and (##structure-direct-instance-of?
                                  _%xval178927%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval178927%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val178850%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val178850%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval178927%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val178850%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val178850%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval178927%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val178850%_
                        (if (and (##structure-direct-instance-of?
                                  _%val178850%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val178850%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval178927%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val178850%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval178927%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval178927%_
                            (if (and (##structure-direct-instance-of?
                                      _%val178850%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval178927%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key178849%_
                                 (cons (##unchecked-structure-ref
                                        _%val178850%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val178850%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval178927%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval178927%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval178927%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval178927%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key178849%_
                                 _%val178850%_
                                 _%xval178927%_))))))
                 (_%gensubst178856%_
                  (lambda (_%subst178922%_ _%id178923%_)
                    (let ((_%eid178925%_
                           (gensym (if (uninterned-symbol? _%id178923%_)
                                       '%
                                       _%id178923%_))))
                      (hash-put! _%subst178922%_ _%id178923%_ _%eid178925%_)
                      _%eid178925%_)))
                 (_%subst!178857%_
                  (lambda (_%key178859%_)
                    (let* ((_%$%key178860178868%_ _%key178859%_)
                           (_%$%else178862178876%_ (lambda () _%key178859%_))
                           (_%$%K178864178910%_
                            (lambda (_%mark178879%_ _%id178880%_)
                              (let* ((_%$%mark178881178887%_ _%mark178879%_)
                                     (_%$%E178883178890%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark178881178887%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K178884178902%_
                                      (lambda (_%subst178893%_)
                                        (if (not _%subst178893%_)
                                            (let ((_%subst178896%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark178879%_
                                               _%subst178896%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst178856%_
                                               _%subst178896%_
                                               _%id178880%_))
                                            (let ((_%$e178898%_
                                                   (hash-get
                                                    _%subst178893%_
                                                    _%id178880%_)))
                                              (if _%$e178898%_
                                                  _%$e178898%_
                                                  (_%gensubst178856%_
                                                   _%subst178893%_
                                                   _%id178880%_)))))))
                                (if (##structure-instance-of?
                                     _%$%mark178881178887%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e178885178905%_
                                            (##unchecked-structure-ref
                                             _%$%mark178881178887%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst178908%_
                                            _%$%e178885178905%_))
                                      (_%$%K178884178902%_ _%subst178908%_))
                                    (_%$%E178883178890%_))))))
                      (if (pair? _%$%key178860178868%_)
                          (let ((_%$%hd178865178913%_
                                 (##car _%$%key178860178868%_))
                                (_%$%tl178866178915%_
                                 (##cdr _%$%key178860178868%_)))
                            (let* ((_%id178918%_ _%$%hd178865178913%_)
                                   (_%mark178920%_ _%$%tl178866178915%_))
                              (_%$%K178864178910%_
                               _%mark178920%_
                               _%id178918%_)))
                          (_%$%else178862178876%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key178849%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx178853%_ _%phi178852%_)
           (_%subst!178857%_ _%key178849%_)
           _%val178850%_
           _%update-binding178855%_))))
    (define gx#core-bind!__0
      (lambda (_%key178948%_ _%val178949%_)
        (let* ((_%rebind?178951%_ false)
               (_%phi178953%_ (gx#current-expander-phi))
               (_%ctx178955%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key178948%_
           _%val178949%_
           _%rebind?178951%_
           _%phi178953%_
           _%ctx178955%_))))
    (define gx#core-bind!__1
      (lambda (_%key178957%_ _%val178958%_ _%rebind?178959%_)
        (let* ((_%phi178961%_ (gx#current-expander-phi))
               (_%ctx178963%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key178957%_
           _%val178958%_
           _%rebind?178959%_
           _%phi178961%_
           _%ctx178963%_))))
    (define gx#core-bind!__2
      (lambda (_%key178965%_ _%val178966%_ _%rebind?178967%_ _%phi178968%_)
        (let ((_%ctx178970%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key178965%_
           _%val178966%_
           _%rebind?178967%_
           _%phi178968%_
           _%ctx178970%_))))
    (define gx#core-bind!
      (lambda _g182705_
        (let ((_g182706_ (##length _g182705_)))
          (cond ((##fx= _g182706_ 2) (apply gx#core-bind!__0 _g182705_))
                ((##fx= _g182706_ 3) (apply gx#core-bind!__1 _g182705_))
                ((##fx= _g182706_ 4) (apply gx#core-bind!__2 _g182705_))
                ((##fx= _g182706_ 5) (apply gx#core-bind!__% _g182705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g182705_))))))
    (define gx#core-identifier-key
      (lambda (_%stx178780%_)
        (if (symbol? _%stx178780%_)
            (let* ((_%$%g178782178790%_ (gx#current-expander-marks))
                   (_%$%else178784178798%_ (lambda () _%stx178780%_))
                   (_%$%K178786178803%_
                    (lambda (_%hd178801%_) (cons _%stx178780%_ _%hd178801%_))))
              (if (pair? _%$%g178782178790%_)
                  (let* ((_%$%hd178787178806%_ (##car _%$%g178782178790%_))
                         (_%hd178809%_ _%$%hd178787178806%_))
                    (_%$%K178786178803%_ _%hd178809%_))
                  (_%$%else178784178798%_)))
            (if (gx#identifier? _%stx178780%_)
                (let* ((_%id178812%_ (gx#syntax-local-unwrap _%stx178780%_))
                       (_%eid178814%_ (gx#stx-e _%id178812%_))
                       (_%marks178816%_
                        (gx#stx-identifier-marks* _%id178812%_))
                       (_%$%marks178818178826%_ _%marks178816%_)
                       (_%$%else178820178834%_ (lambda () _%eid178814%_))
                       (_%$%K178822178839%_
                        (lambda (_%hd178837%_)
                          (cons _%eid178814%_ _%hd178837%_))))
                  (if (pair? _%$%marks178818178826%_)
                      (let* ((_%$%hd178823178842%_
                              (##car _%$%marks178818178826%_))
                             (_%hd178845%_ _%$%hd178823178842%_))
                        (_%$%K178822178839%_ _%hd178845%_))
                      (_%$%else178820178834%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx178780%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx178719%_ _%phi178720%_)
        (letrec ((_%make-phi178722%_
                  (lambda (_%super178778%_)
                    (let ((__obj182676
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj182676
                       (##gensym 'phi)
                       _%super178778%_)
                      __obj182676)))
                 (_%make-phi/up178723%_
                  (lambda (_%ctx178773%_ _%super178774%_)
                    (let ((_%ctx+1178776%_
                           (_%make-phi178722%_ _%super178774%_)))
                      (##unchecked-structure-set!
                       _%ctx178773%_
                       _%ctx+1178776%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1178776%_
                       _%ctx178773%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1178776%_)))
                 (_%make-phi/down178724%_
                  (lambda (_%ctx178768%_ _%super178769%_)
                    (let ((_%ctx-1178771%_
                           (_%make-phi178722%_ _%super178769%_)))
                      (##unchecked-structure-set!
                       _%ctx-1178771%_
                       _%ctx178768%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx178768%_
                       _%ctx-1178771%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1178771%_)))
                 (_%shift178725%_
                  (lambda (_%ctx178751%_
                           _%delta178752%_
                           _%make-delta-context178753%_
                           _%phi178754%_
                           _%K178755%_)
                    (let ((_%$e178757%_
                           (##unchecked-structure-ref
                            _%ctx178751%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e178757%_
                          (let* ((_%super178762%_
                                  (_%K178755%_ _%$e178757%_ _%delta178752%_))
                                 (_%ctx+d178764%_
                                  (_%make-delta-context178753%_
                                   _%ctx178751%_
                                   _%super178762%_)))
                            (_%K178755%_
                             _%ctx+d178764%_
                             (fx- _%phi178754%_ _%delta178752%_)))
                          (error '"Bad context" _%ctx178751%_))))))
          (let _%K178727%_ ((_%ctx178729%_ _%ctx178719%_)
                            (_%phi178730%_ _%phi178720%_))
            (if (fxzero? _%phi178730%_)
                _%ctx178729%_
                (if (##structure-instance-of? _%ctx178729%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi178730%_)
                        (let ((_%$e178734%_
                               (##unchecked-structure-ref
                                _%ctx178729%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e178734%_
                              (_%K178727%_
                               _%$e178734%_
                               (##fx- _%phi178730%_ '1))
                              (_%shift178725%_
                               _%ctx178729%_
                               '1
                               _%make-phi/up178723%_
                               _%phi178730%_
                               _%K178727%_)))
                        (let ((_%$e178742%_
                               (##unchecked-structure-ref
                                _%ctx178729%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e178742%_
                              (_%K178727%_
                               _%$e178742%_
                               (##fx+ _%phi178730%_ '1))
                              (_%shift178725%_
                               _%ctx178729%_
                               '-1
                               _%make-phi/down178724%_
                               _%phi178730%_
                               _%K178727%_))))
                    _%ctx178729%_))))))
    (define gx#core-context-get
      (lambda (_%ctx178716%_ _%key178717%_)
        (hash-get
         (##unchecked-structure-ref _%ctx178716%_ '2 '#f '#f)
         _%key178717%_)))
    (define gx#core-context-put!
      (lambda (_%ctx178712%_ _%key178713%_ _%val178714%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx178712%_ '2 '#f '#f)
         _%key178713%_
         _%val178714%_)
        _%val178714%_))
    (define gx#core-context-resolve
      (lambda (_%ctx178698%_ _%key178699%_)
        (let _%lp178701%_ ((_%ctx178703%_ _%ctx178698%_))
          (let ((_%$e178705%_
                 (gx#core-context-get _%ctx178703%_ _%key178699%_)))
            (if _%$e178705%_
                _%$e178705%_
                (let ((_%$e178708%_
                       (if (##structure-instance-of?
                            _%ctx178703%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx178703%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e178708%_ (_%lp178701%_ _%$e178708%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx178687%_ _%key178688%_ _%val178689%_ _%rebind178690%_)
        (let ((_%$e178692%_ (gx#core-context-get _%ctx178687%_ _%key178688%_)))
          (if _%$e178692%_
              (gx#core-context-put!
               _%ctx178687%_
               _%key178688%_
               (_%rebind178690%_ _%$e178692%_))
              (gx#core-context-put!
               _%ctx178687%_
               _%key178688%_
               _%val178689%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx178662%_ _%stop?178663%_)
        (let _%lp178665%_ ((_%ctx178667%_ _%ctx178662%_))
          (if (_%stop?178663%_ _%ctx178667%_)
              _%ctx178667%_
              (if (##structure-instance-of? _%ctx178667%_ 'gx#phi-context::t)
                  (_%lp178665%_
                   (##unchecked-structure-ref _%ctx178667%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx178676%_ (gx#current-expander-context))
               (_%stop?178678%_ gx#top-context?))
          (gx#core-context-top__% _%ctx178676%_ _%stop?178678%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx178680%_)
        (let ((_%stop?178682%_ gx#top-context?))
          (gx#core-context-top__% _%ctx178680%_ _%stop?178682%_))))
    (define gx#core-context-top
      (lambda _g182707_
        (let ((_g182708_ (##length _g182707_)))
          (cond ((##fx= _g182708_ 0) (apply gx#core-context-top__0 _g182707_))
                ((##fx= _g182708_ 1) (apply gx#core-context-top__1 _g182707_))
                ((##fx= _g182708_ 2) (apply gx#core-context-top__% _g182707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g182707_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx178647%_)
        (let _%lp178649%_ ((_%ctx178651%_ _%ctx178647%_))
          (if (##structure-instance-of? _%ctx178651%_ 'gx#phi-context::t)
              (_%lp178649%_
               (##unchecked-structure-ref _%ctx178651%_ '3 '#f '#f))
              _%ctx178651%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx178657%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx178657%_))))
    (define gx#core-context-root
      (lambda _g182709_
        (let ((_g182710_ (##length _g182709_)))
          (cond ((##fx= _g182710_ 0) (apply gx#core-context-root__0 _g182709_))
                ((##fx= _g182710_ 1) (apply gx#core-context-root__% _g182709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g182709_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx178629%_ . _%ignore178630%_)
        (let ((_%$e178632%_ (gx#current-expander-allow-rebind?)))
          (if _%$e178632%_
              _%$e178632%_
              (if (##structure-instance-of? _%ctx178629%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx178629%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx178629%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx178639%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx178639%_))))
    (define gx#core-context-rebind?
      (lambda _g182711_
        (let ((_g182712_ (##length _g182711_)))
          (cond ((##fx= _g182712_ 0)
                 (apply gx#core-context-rebind?__0 _g182711_))
                ((##fx= _g182712_ 1)
                 (apply gx#core-context-rebind?__% _g182711_))
                ((##fx>= _g182712_ 1)
                 (apply gx#core-context-rebind?__% _g182711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g182711_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx178612%_)
        (let ((_%$e178614%_ (gx#core-context-top__1 _%ctx178612%_)))
          (if _%$e178614%_
              (if (##structure-instance-of? _%$e178614%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e178614%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx178624%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx178624%_))))
    (define gx#core-context-namespace
      (lambda _g182713_
        (let ((_g182714_ (##length _g182713_)))
          (cond ((##fx= _g182714_ 0)
                 (apply gx#core-context-namespace__0 _g182713_))
                ((##fx= _g182714_ 1)
                 (apply gx#core-context-namespace__% _g182713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g182713_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind178598%_ _%is?178599%_)
        (if (##structure-direct-instance-of?
             _%bind178598%_
             'gx#syntax-binding::t)
            (_%is?178599%_
             (##unchecked-structure-ref _%bind178598%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind178604%_)
        (let ((_%is?178606%_ gx#expander?))
          (gx#expander-binding?__% _%bind178604%_ _%is?178606%_))))
    (define gx#expander-binding?
      (lambda _g182715_
        (let ((_g182716_ (##length _g182715_)))
          (cond ((##fx= _g182716_ 1) (apply gx#expander-binding?__0 _g182715_))
                ((##fx= _g182716_ 2) (apply gx#expander-binding?__% _g182715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g182715_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind178595%_)
        (gx#expander-binding?__% _%bind178595%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind178593%_)
        (gx#expander-binding?__% _%bind178593%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind178587%_)
        (letrec ((_%direct-special-form?178589%_
                  (lambda (_%obj178591%_)
                    (##structure-direct-instance-of?
                     _%obj178591%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind178587%_
           _%direct-special-form?178589%_))))
    (define gx#special-form-binding?
      (lambda (_%bind178585%_)
        (gx#expander-binding?__% _%bind178585%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind178576%_)
        (letrec ((_%feature?178578%_
                  (lambda (_%e178580%_)
                    (let ((_%$e178582%_
                           (##structure-instance-of?
                            _%e178580%_
                            'gx#feature-expander::t)))
                      (if _%$e178582%_
                          _%$e178582%_
                          (##structure-instance-of?
                           _%e178580%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind178576%_ _%feature?178578%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind178574%_)
        (gx#expander-binding?__% _%bind178574%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id178561%_ _%bound?178562%_)
        (if (gx#identifier? _%id178561%_)
            (_%bound?178562%_ (gx#resolve-identifier__0 _%id178561%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id178567%_)
        (let ((_%bound?178569%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id178567%_ _%bound?178569%_))))
    (define gx#core-bound-identifier?
      (lambda _g182717_
        (let ((_g182718_ (##length _g182717_)))
          (cond ((##fx= _g182718_ 1)
                 (apply gx#core-bound-identifier?__0 _g182717_))
                ((##fx= _g182718_ 2)
                 (apply gx#core-bound-identifier?__% _g182717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g182717_))))))
    (define gx#core-identifier=?
      (lambda (_%x178551%_ _%y178552%_)
        (letrec ((_%y=?178554%_
                  (lambda (_%xid178558%_)
                    ((if (list? _%y178552%_) memq eq?)
                     _%xid178558%_
                     _%y178552%_))))
          (let ((_%bind178556%_ (gx#resolve-identifier__0 _%x178551%_)))
            (if (##structure-instance-of? _%bind178556%_ 'gx#binding::t)
                (_%y=?178554%_
                 (##unchecked-structure-ref _%bind178556%_ '1 '#f '#f))
                (_%y=?178554%_ (gx#stx-e _%x178551%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e178549%_)
        (if (interned-symbol? _%e178549%_)
            (string-index__0 (symbol->string _%e178549%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx178502%_ _%src178503%_ _%ctx178504%_ _%marks178505%_)
        (if (##structure? _%stx178502%_)
            (let ((_%$e178507%_ (gx#sealed-syntax-unwrap _%stx178502%_)))
              (if _%$e178507%_
                  _%$e178507%_
                  (if (gx#identifier? _%stx178502%_)
                      (let ((_%id178511%_
                             (gx#stx-unwrap__% _%stx178502%_ _%marks178505%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id178511%_ '1 '#f '#f)
                         (let ((_%$e178513%_
                                (##unchecked-structure-ref
                                 _%id178511%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e178513%_ _%$e178513%_ _%src178503%_))
                         _%ctx178504%_
                         (##unchecked-structure-ref _%id178511%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx178502%_)
                       (let ((_%$e178517%_ (gx#stx-source _%stx178502%_)))
                         (if _%$e178517%_ _%$e178517%_ _%src178503%_))
                       _%ctx178504%_
                       (reverse _%marks178505%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx178502%_
             _%src178503%_
             _%ctx178504%_
             (reverse _%marks178505%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx178523%_)
        (let* ((_%src178525%_ '#f)
               (_%ctx178527%_ (gx#current-expander-context))
               (_%marks178529%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx178523%_
           _%src178525%_
           _%ctx178527%_
           _%marks178529%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx178531%_ _%src178532%_)
        (let* ((_%ctx178534%_ (gx#current-expander-context))
               (_%marks178536%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx178531%_
           _%src178532%_
           _%ctx178534%_
           _%marks178536%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx178538%_ _%src178539%_ _%ctx178540%_)
        (let ((_%marks178542%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx178538%_
           _%src178539%_
           _%ctx178540%_
           _%marks178542%_))))
    (define gx#core-quote-syntax
      (lambda _g182719_
        (let ((_g182720_ (##length _g182719_)))
          (cond ((##fx= _g182720_ 1) (apply gx#core-quote-syntax__0 _g182719_))
                ((##fx= _g182720_ 2) (apply gx#core-quote-syntax__1 _g182719_))
                ((##fx= _g182720_ 3) (apply gx#core-quote-syntax__2 _g182719_))
                ((##fx= _g182720_ 4) (apply gx#core-quote-syntax__% _g182719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g182719_))))))
    (define gx#core-cons
      (lambda (_%hd178498%_ _%tl178499%_)
        (cons (gx#core-quote-syntax__0 _%hd178498%_) _%tl178499%_)))
    (define gx#core-list
      (lambda (_%hd178495%_ . _%rest178496%_)
        (cons (gx#core-quote-syntax__0 _%hd178495%_) _%rest178496%_)))
    (define gx#core-cons*
      (lambda (_%hd178492%_ . _%rest178493%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd178492%_) _%rest178493%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path178461%_ _%rel178462%_)
        (let ((_%path178479%_ (gx#stx-e _%stx-path178461%_))
              (_%reldir178480%_
               (let _%lp178464%_ ((_%relsrc178466%_
                                   (let ((_%$e178476%_
                                          (gx#stx-source _%stx-path178461%_)))
                                     (if _%$e178476%_
                                         _%$e178476%_
                                         _%rel178462%_))))
                 (if (##structure-instance-of? _%relsrc178466%_ 'gerbil#AST::t)
                     (_%lp178464%_
                      (let ((_%$e178469%_ (gx#stx-source _%relsrc178466%_)))
                        (if _%$e178469%_
                            _%$e178469%_
                            (gx#stx-e _%relsrc178466%_))))
                     (if (source-location-path? _%relsrc178466%_)
                         (path-directory
                          (source-location-path _%relsrc178466%_))
                         (if (string? _%relsrc178466%_)
                             (path-directory _%relsrc178466%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path178479%_ (path-normalize _%reldir178480%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path178485%_)
        (let ((_%rel178487%_ '#f))
          (gx#core-resolve-path__% _%stx-path178485%_ _%rel178487%_))))
    (define gx#core-resolve-path
      (lambda _g182721_
        (let ((_g182722_ (##length _g182721_)))
          (cond ((##fx= _g182722_ 1) (apply gx#core-resolve-path__0 _g182721_))
                ((##fx= _g182722_ 2) (apply gx#core-resolve-path__% _g182721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g182721_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr178417%_ _%ctx178418%_)
        (let* ((_%$%repr178419178426%_ _%repr178417%_)
               (_%$%E178421178430%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr178419178426%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K178422178438%_
                (lambda (_%subs178433%_ _%phi178434%_)
                  (let ((_%subst178436%_
                         (if (null? _%subs178433%_)
                             '#f
                             (list->hash-table-eq _%subs178433%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst178436%_
                     _%ctx178418%_
                     _%phi178434%_
                     '#f)))))
          (if (pair? _%$%repr178419178426%_)
              (let ((_%$%hd178423178441%_ (##car _%$%repr178419178426%_))
                    (_%$%tl178424178443%_ (##cdr _%$%repr178419178426%_)))
                (let* ((_%phi178446%_ _%$%hd178423178441%_)
                       (_%subs178448%_ _%$%tl178424178443%_))
                  (_%$%K178422178438%_ _%subs178448%_ _%phi178446%_)))
              (_%$%E178421178430%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr178453%_)
        (let ((_%ctx178455%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr178453%_ _%ctx178455%_))))
    (define gx#core-deserialize-mark
      (lambda _g182723_
        (let ((_g182724_ (##length _g182723_)))
          (cond ((##fx= _g182724_ 1)
                 (apply gx#core-deserialize-mark__0 _g182723_))
                ((##fx= _g182724_ 2)
                 (apply gx#core-deserialize-mark__% _g182723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g182723_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx178414%_)
        (gx#stx-rewrap _%stx178414%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx178412%_)
        (gx#stx-unwrap__% _%stx178412%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx178382%_)
        (let* ((_%$%g178383178391%_ (gx#current-expander-marks))
               (_%$%else178385178399%_ (lambda () _%stx178382%_))
               (_%$%K178387178404%_
                (lambda (_%hd178402%_)
                  (gx#stx-apply-mark _%stx178382%_ _%hd178402%_))))
          (if (pair? _%$%g178383178391%_)
              (let* ((_%$%hd178388178407%_ (##car _%$%g178383178391%_))
                     (_%hd178410%_ _%$%hd178388178407%_))
                (_%$%K178387178404%_ _%hd178410%_))
              (_%$%else178385178399%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym178380%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym178380%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx178365%_ _%E178366%_)
        (let ((_%bind178368%_ (gx#resolve-identifier__0 _%stx178365%_)))
          (if (##structure-direct-instance-of?
               _%bind178368%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind178368%_ '5 '#f '#f)
              (_%E178366%_ _%stx178365%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx178373%_)
        (let ((_%E178375%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx178373%_ _%E178375%_))))
    (define gx#syntax-local-e
      (lambda _g182725_
        (let ((_g182726_ (##length _g182725_)))
          (cond ((##fx= _g182726_ 1) (apply gx#syntax-local-e__0 _g182725_))
                ((##fx= _g182726_ 2) (apply gx#syntax-local-e__% _g182725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g182725_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx178349%_ _%E178350%_)
        (let ((_%e178352%_ (gx#syntax-local-e__% _%stx178349%_ _%E178350%_)))
          (if (##structure-instance-of? _%e178352%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e178352%_ '1 '#f '#f)
              _%e178352%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx178357%_)
        (let ((_%E178359%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx178357%_ _%E178359%_))))
    (define gx#syntax-local-value
      (lambda _g182727_
        (let ((_g182728_ (##length _g182727_)))
          (cond ((##fx= _g182728_ 1)
                 (apply gx#syntax-local-value__0 _g182727_))
                ((##fx= _g182728_ 2)
                 (apply gx#syntax-local-value__% _g182727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g182727_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx178346%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx178346%_)))))
