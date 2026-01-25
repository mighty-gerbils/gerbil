(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1769382894)
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
      (lambda _%$args133679%_
        (apply make-instance gx#expander-context::t _%$args133679%_)))
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
      (lambda _%$args133676%_
        (apply make-instance gx#root-context::t _%$args133676%_)))
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
      (lambda _%$args133673%_
        (apply make-instance gx#phi-context::t _%$args133673%_)))
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
      (lambda _%$args133670%_
        (apply make-instance gx#top-context::t _%$args133670%_)))
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
      (lambda _%$args133667%_
        (apply make-instance gx#module-context::t _%$args133667%_)))
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
      (lambda _%$args133664%_
        (apply make-instance gx#prelude-context::t _%$args133664%_)))
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
      (lambda _%$args133661%_
        (apply make-instance gx#local-context::t _%$args133661%_)))
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
      (lambda (_%self133634%_ _%id133635%_ _%super133636%_)
        (let ((_%self133639%_ _%self133634%_))
          (if (##fx< '3 (##structure-length _%self133639%_))
              (begin
                (##unchecked-structure-set!
                 _%self133639%_
                 _%id133635%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133639%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133639%_
                 _%super133636%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133639%_
                     '3
                     (##structure-length _%self133639%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self133652%_ _%id133653%_)
        (let ((_%super133655%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self133652%_
           _%id133653%_
           _%super133655%_))))
    (define gx#phi-context:::init!
      (lambda _g133721_
        (let ((_g133722_ (##length _g133721_)))
          (cond ((##fx= _g133722_ 2)
                 (apply gx#phi-context:::init!__0 _g133721_))
                ((##fx= _g133722_ 3)
                 (apply gx#phi-context:::init!__% _g133721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g133721_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self133487%_ _%super133488%_)
        (let ((_%self133491%_ _%self133487%_))
          (if (##fx< '3 (##structure-length _%self133491%_))
              (begin
                (##unchecked-structure-set!
                 _%self133491%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133491%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133491%_
                 _%super133488%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133491%_
                     '3
                     (##structure-length _%self133491%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self133504%_)
        (let ((_%super133506%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self133504%_ _%super133506%_))))
    (define gx#local-context:::init!
      (lambda _g133723_
        (let ((_g133724_ (##length _g133723_)))
          (cond ((##fx= _g133724_ 1)
                 (apply gx#local-context:::init!__0 _g133723_))
                ((##fx= _g133724_ 2)
                 (apply gx#local-context:::init!__% _g133723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g133723_))))))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args133361%_
        (apply make-instance gx#binding::t _%$args133361%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args133358%_
        (apply make-instance gx#runtime-binding::t _%$args133358%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args133355%_
        (apply make-instance gx#local-binding::t _%$args133355%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args133352%_
        (apply make-instance gx#top-binding::t _%$args133352%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args133349%_
        (apply make-instance gx#module-binding::t _%$args133349%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args133346%_
        (apply make-instance gx#extern-binding::t _%$args133346%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args133343%_
        (apply make-instance gx#syntax-binding::t _%$args133343%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args133340%_
        (apply make-instance gx#import-binding::t _%$args133340%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args133337%_
        (apply make-instance gx#alias-binding::t _%$args133337%_)))
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
      (lambda _%$args133334%_
        (apply make-instance gx#expander::t _%$args133334%_)))
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
      (lambda _%$args133331%_
        (apply make-instance gx#core-expander::t _%$args133331%_)))
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
      (lambda _%$args133328%_
        (apply make-instance gx#expression-form::t _%$args133328%_)))
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
      (lambda _%$args133325%_
        (apply make-instance gx#special-form::t _%$args133325%_)))
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
      (lambda _%$args133322%_
        (apply make-instance gx#definition-form::t _%$args133322%_)))
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
      (lambda _%$args133319%_
        (apply make-instance gx#top-special-form::t _%$args133319%_)))
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
      (lambda _%$args133316%_
        (apply make-instance gx#module-special-form::t _%$args133316%_)))
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
      (lambda _%$args133313%_
        (apply make-instance gx#feature-expander::t _%$args133313%_)))
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
      (lambda _%$args133310%_
        (apply make-instance gx#private-feature-expander::t _%$args133310%_)))
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
      (lambda _%$args133307%_
        (apply make-instance gx#reserved-expander::t _%$args133307%_)))
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
      (lambda _%$args133304%_
        (apply make-instance gx#macro-expander::t _%$args133304%_)))
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
      (lambda _%$args133301%_
        (apply make-instance gx#rename-macro-expander::t _%$args133301%_)))
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
      (lambda _%$args133298%_
        (apply make-instance gx#user-expander::t _%$args133298%_)))
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
      (lambda _%$args133295%_
        (apply make-instance gx#expander-mark::t _%$args133295%_)))
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
      (lambda (_%ctx133279%_
               _%message133280%_
               _%stx133281%_
               .
               _%details133282%_)
        (let ((_%ctx133293%_
               (let ((_%$e133284%_ _%ctx133279%_))
                 (if _%$e133284%_
                     _%$e133284%_
                     (let ((_%$e133287%_ (gx#core-context-top__0)))
                       (if _%$e133287%_
                           ((lambda (_%ctx133290%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx133290%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e133287%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message133280%_
                  (cons _%stx133281%_ _%details133282%_)
                  _%ctx133293%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx133266%_ _%expression?133267%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx133266%_ _%expression?133267%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx133272%_)
        (let ((_%expression?133274%_ '#f))
          (gx#eval-syntax__% _%stx133272%_ _%expression?133274%_))))
    (define gx#eval-syntax
      (lambda _g133725_
        (let ((_g133726_ (##length _g133725_)))
          (cond ((##fx= _g133726_ 1) (apply gx#eval-syntax__0 _g133725_))
                ((##fx= _g133726_ 2) (apply gx#eval-syntax__% _g133725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g133725_))))))
    (define gx#eval-syntax*
      (lambda (_%stx133263%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx133263%_))))
    (define gx#core-expand__%
      (lambda (_%stx133250%_ _%expression?133251%_)
        (if _%expression?133251%_
            (gx#core-expand-expression _%stx133250%_)
            (gx#core-expand-top _%stx133250%_))))
    (define gx#core-expand__0
      (lambda (_%stx133256%_)
        (let ((_%expression?133258%_ '#f))
          (gx#core-expand__% _%stx133256%_ _%expression?133258%_))))
    (define gx#core-expand
      (lambda _g133727_
        (let ((_g133728_ (##length _g133727_)))
          (cond ((##fx= _g133728_ 1) (apply gx#core-expand__0 _g133727_))
                ((##fx= _g133728_ 2) (apply gx#core-expand__% _g133727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g133727_))))))
    (define gx#core-expand-top
      (lambda (_%stx133217%_)
        (let* ((_%stx133219%_ (gx#core-expand*__0 _%stx133217%_))
               (_%e133220133227%_ _%stx133219%_)
               (_%E133222133231%_
                (lambda () (gx#core-expand-expression _%stx133219%_)))
               (_%E133221133245%_
                (lambda ()
                  (if (gx#stx-pair? _%e133220133227%_)
                      (let ((_%e133223133235%_
                             (gx#syntax-e _%e133220133227%_)))
                        (let ((_%hd133224133238%_ (##car _%e133223133235%_))
                              (_%tl133225133240%_ (##cdr _%e133223133235%_)))
                          (let ((_%form133243%_ _%hd133224133238%_))
                            (if (gx#core-bound-identifier?__0 _%form133243%_)
                                _%stx133219%_
                                (_%E133222133231%_)))))
                      (_%E133222133231%_)))))
          (_%E133221133245%_))))
    (define gx#core-expand-expression
      (lambda (_%stx133149%_)
        (letrec ((_%sealed-expression?133151%_
                  (lambda (_%hd133187%_)
                    (if (gx#sealed-syntax? _%hd133187%_)
                        (let* ((_%e133188133195%_ _%hd133187%_)
                               (_%E133190133199%_ (lambda () '#f))
                               (_%E133189133213%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e133188133195%_)
                                      (let ((_%e133191133203%_
                                             (gx#syntax-e _%e133188133195%_)))
                                        (let ((_%hd133192133206%_
                                               (##car _%e133191133203%_))
                                              (_%tl133193133208%_
                                               (##cdr _%e133191133203%_)))
                                          (let ((_%form133211%_
                                                 _%hd133192133206%_))
                                            (gx#core-bound-identifier?__%
                                             _%form133211%_
                                             gx#expression-form-binding?))))
                                      (_%E133190133199%_)))))
                          (_%E133189133213%_))
                        '#f)))
                 (_%illegal-expression133152%_
                  (lambda (_%hd133184%_ . _%_133185%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx133149%_
                     _%hd133184%_)))
                 (_%expand-e133153%_
                  (lambda (_%form133176%_ _%hd133177%_)
                    (let ((_%bind133179%_
                           (if (##structure-instance-of?
                                _%form133176%_
                                'gx#binding::t)
                               _%form133176%_
                               (gx#resolve-identifier__0 _%form133176%_))))
                      (if (gx#core-expander-binding? _%bind133179%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind133179%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd133177%_
                            (gx#stx-source _%stx133149%_)))
                          (if (##structure-direct-instance-of?
                               _%bind133179%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind133179%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd133177%_
                                 (gx#stx-source _%stx133149%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx133149%_
                               _%form133176%_)))))))
          (let ((_%hd133155%_ (gx#core-expand-head _%stx133149%_)))
            (if (_%sealed-expression?133151%_ _%hd133155%_)
                _%hd133155%_
                (if (gx#stx-pair? _%hd133155%_)
                    (let* ((_%form133159%_ (gx#stx-car _%hd133155%_))
                           (_%bind133161%_
                            (if (gx#identifier? _%form133159%_)
                                (gx#resolve-identifier__0 _%form133159%_)
                                '#f)))
                      (if (or (not _%bind133161%_)
                              (not (gx#core-expander-binding? _%bind133161%_)))
                          (_%expand-e133153%_
                           '%%app
                           (cons '%%app _%hd133155%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind133161%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd133155%_
                               _%illegal-expression133152%_)
                              (if (gx#expression-form-binding? _%bind133161%_)
                                  (_%expand-e133153%_
                                   _%bind133161%_
                                   _%hd133155%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind133161%_)
                                      (gx#core-expand-expression
                                       (_%expand-e133153%_
                                        _%bind133161%_
                                        _%hd133155%_))
                                      (_%illegal-expression133152%_
                                       _%hd133155%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd133155%_)
                        (_%illegal-expression133152%_ _%hd133155%_)
                        (if (gx#identifier? _%hd133155%_)
                            (_%expand-e133153%_
                             '%%ref
                             (cons '%%ref (cons _%hd133155%_ '())))
                            (if (gx#stx-datum? _%hd133155%_)
                                (_%expand-e133153%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd133155%_ '())))
                                (_%illegal-expression133152%_
                                 _%hd133155%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx133144%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx133147%_ (gx#core-expand-expression _%stx133144%_)))
             (values _%stx133147%_ (gx#eval-syntax* _%stx133147%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx133125%_ _%stop?133126%_)
        (let _%lp133128%_ ((_%stx133130%_ _%stx133125%_))
          (if (_%stop?133126%_ _%stx133130%_)
              _%stx133130%_
              (let ((_%rstx133132%_ (gx#core-expand1 _%stx133130%_)))
                (if (eq? _%stx133130%_ _%rstx133132%_)
                    _%stx133130%_
                    (_%lp133128%_ _%rstx133132%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx133137%_)
        (let ((_%stop?133139%_ false))
          (gx#core-expand*__% _%stx133137%_ _%stop?133139%_))))
    (define gx#core-expand*
      (lambda _g133729_
        (let ((_g133730_ (##length _g133729_)))
          (cond ((##fx= _g133730_ 1) (apply gx#core-expand*__0 _g133729_))
                ((##fx= _g133730_ 2) (apply gx#core-expand*__% _g133729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g133729_))))))
    (define gx#core-expand1
      (lambda (_%stx133077%_)
        (letrec ((_%step133079%_
                  (lambda (_%hd133116%_)
                    (let ((_%bind133118%_
                           (gx#resolve-identifier__0 _%hd133116%_)))
                      (if (##structure-instance-of?
                           _%bind133118%_
                           'gx#runtime-binding::t)
                          _%stx133077%_
                          (if (##structure-direct-instance-of?
                               _%bind133118%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind133118%_
                                '4
                                '#f
                                '#f)
                               _%stx133077%_)
                              (if (not _%bind133118%_)
                                  _%stx133077%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx133077%_))))))))
          (let* ((_%e133080133088%_ _%stx133077%_)
                 (_%E133086133092%_ (lambda () _%stx133077%_))
                 (_%E133082133098%_
                  (lambda ()
                    (let ((_%hd133096%_ _%e133080133088%_))
                      (if (gx#identifier? _%hd133096%_)
                          (_%step133079%_ _%hd133096%_)
                          (_%E133086133092%_)))))
                 (_%E133081133112%_
                  (lambda ()
                    (if (gx#stx-pair? _%e133080133088%_)
                        (let ((_%e133083133102%_
                               (gx#syntax-e _%e133080133088%_)))
                          (let ((_%hd133084133105%_ (##car _%e133083133102%_))
                                (_%tl133085133107%_ (##cdr _%e133083133102%_)))
                            (let ((_%hd133110%_ _%hd133084133105%_))
                              (if (gx#identifier? _%hd133110%_)
                                  (_%step133079%_ _%hd133110%_)
                                  (_%E133082133098%_)))))
                        (_%E133082133098%_)))))
            (_%E133081133112%_)))))
    (define gx#core-expand-head
      (lambda (_%stx133043%_)
        (letrec ((_%stop?133045%_
                  (lambda (_%stx133047%_)
                    (let* ((_%e133048133055%_ _%stx133047%_)
                           (_%E133050133059%_ (lambda () '#f))
                           (_%E133049133073%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133048133055%_)
                                  (let ((_%e133051133063%_
                                         (gx#syntax-e _%e133048133055%_)))
                                    (let ((_%hd133052133066%_
                                           (##car _%e133051133063%_))
                                          (_%tl133053133068%_
                                           (##cdr _%e133051133063%_)))
                                      (let ((_%hd133071%_ _%hd133052133066%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd133071%_))))
                                  (_%E133050133059%_)))))
                      (_%E133049133073%_)))))
          (gx#core-expand*__% _%stx133043%_ _%stop?133045%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx132849%_
               _%expand-special132850%_
               _%begin-form132851%_
               _%expand-e132852%_)
        (letrec ((_%expand-splice132854%_
                  (lambda (_%hd133017%_
                           _%body133018%_
                           _%rest133019%_
                           _%r133020%_)
                    (if (gx#stx-list? _%body133018%_)
                        (_%K132858%_
                         (gx#stx-foldr cons _%rest133019%_ _%body133018%_)
                         _%r133020%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx132849%_
                         _%hd133017%_))))
                 (_%expand-cond-expand132855%_
                  (lambda (_%hd133013%_ _%rest133014%_ _%r133015%_)
                    (_%K132858%_
                     (cons (gx#core-expand-cond-expand% _%hd133013%_)
                           _%rest133014%_)
                     _%r133015%_)))
                 (_%expand-include132856%_
                  (lambda (_%hd132962%_ _%rest132963%_ _%r132964%_)
                    (let* ((_%e132965132975%_ _%hd132962%_)
                           (_%E132967132979%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132965132975%_)))
                           (_%E132966133009%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132965132975%_)
                                  (let ((_%e132968132983%_
                                         (gx#syntax-e _%e132965132975%_)))
                                    (let ((_%hd132969132986%_
                                           (##car _%e132968132983%_))
                                          (_%tl132970132988%_
                                           (##cdr _%e132968132983%_)))
                                      (if (gx#stx-pair? _%tl132970132988%_)
                                          (let ((_%e132971132991%_
                                                 (gx#syntax-e
                                                  _%tl132970132988%_)))
                                            (let ((_%hd132972132994%_
                                                   (##car _%e132971132991%_))
                                                  (_%tl132973132996%_
                                                   (##cdr _%e132971132991%_)))
                                              (let ((_%path132999%_
                                                     _%hd132972132994%_))
                                                (if (gx#stx-null?
                                                     _%tl132973132996%_)
                                                    (if (gx#stx-string?
                                                         _%path132999%_)
                                                        (let* ((_%rpath133001%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path132999%_
                         (gx#stx-source _%hd132962%_)))
                       (_%block133003%_
                        (gx#core-expand-include%__%
                         _%hd132962%_
                         _%rpath133001%_))
                       (_%rbody133006%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block133003%_
                            _%expand-special132850%_
                            '#f
                            _%expand-e132852%_))
                         gx#current-expander-path
                         (cons _%rpath133001%_ (gx#current-expander-path)))))
                  (_%K132858%_
                   _%rest132963%_
                   (__foldr1 cons _%r132964%_ _%rbody133006%_)))
                (_%E132967132979%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132967132979%_)))))
                                          (_%E132967132979%_))))
                                  (_%E132967132979%_)))))
                      (_%E132966133009%_))))
                 (_%expand-expression132857%_
                  (lambda (_%hd132958%_ _%rest132959%_ _%r132960%_)
                    (_%K132858%_
                     _%rest132959%_
                     (cons (_%expand-e132852%_ _%hd132958%_) _%r132960%_))))
                 (_%K132858%_
                  (lambda (_%rest132888%_ _%r132889%_)
                    (let* ((_%e132890132897%_ _%rest132888%_)
                           (_%E132892132901%_
                            (lambda ()
                              (if _%begin-form132851%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form132851%_
                                    (reverse _%r132889%_))
                                   (gx#stx-source _%stx132849%_))
                                  _%r132889%_)))
                           (_%E132891132954%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132890132897%_)
                                  (let ((_%e132893132905%_
                                         (gx#syntax-e _%e132890132897%_)))
                                    (let ((_%hd132894132908%_
                                           (##car _%e132893132905%_))
                                          (_%tl132895132910%_
                                           (##cdr _%e132893132905%_)))
                                      (let* ((_%hd132913%_ _%hd132894132908%_)
                                             (_%rest132915%_
                                              _%tl132895132910%_)
                                             (_%hd132917%_
                                              (gx#core-expand-head
                                               _%hd132913%_))
                                             (_%e132918132925%_ _%hd132917%_)
                                             (_%E132920132929%_
                                              (lambda ()
                                                (_%expand-expression132857%_
                                                 _%hd132917%_
                                                 _%rest132915%_
                                                 _%r132889%_)))
                                             (_%E132919132950%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132918132925%_)
                                                    (let ((_%e132921132933%_
                                                           (gx#syntax-e
                                                            _%e132918132925%_)))
                                                      (let ((_%hd132922132936%_
                                                             (##car _%e132921132933%_))
                                                            (_%tl132923132938%_
                                                             (##cdr _%e132921132933%_)))
                                                        (let* ((_%form132941%_
                                                                _%hd132922132936%_)
                                                               (_%body132943%_
                                                                _%tl132923132938%_)
                                                               (_%bind132945%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form132941%_)
                            (gx#resolve-identifier__0 _%form132941%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind132945%_)
                      (let ((_%$e132947%_
                             (##unchecked-structure-ref
                              _%bind132945%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e132947%_)
                            (_%expand-splice132854%_
                             _%hd132917%_
                             _%body132943%_
                             _%rest132915%_
                             _%r132889%_)
                            (if (eq? '%#cond-expand _%$e132947%_)
                                (_%expand-cond-expand132855%_
                                 _%hd132917%_
                                 _%rest132915%_
                                 _%r132889%_)
                                (if (eq? '%#include _%$e132947%_)
                                    (_%expand-include132856%_
                                     _%hd132917%_
                                     _%rest132915%_
                                     _%r132889%_)
                                    (_%expand-special132850%_
                                     _%hd132917%_
                                     _%K132858%_
                                     _%rest132915%_
                                     _%r132889%_)))))
                      (_%expand-expression132857%_
                       _%hd132917%_
                       _%rest132915%_
                       _%r132889%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132920132929%_)))))
                                        (_%E132919132950%_))))
                                  (_%E132892132901%_)))))
                      (_%E132891132954%_)))))
          (let* ((_%e132859132866%_ _%stx132849%_)
                 (_%E132861132870%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132859132866%_)))
                 (_%E132860132884%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132859132866%_)
                        (let ((_%e132862132874%_
                               (gx#syntax-e _%e132859132866%_)))
                          (let ((_%hd132863132877%_ (##car _%e132862132874%_))
                                (_%tl132864132879%_ (##cdr _%e132862132874%_)))
                            (let ((_%body132882%_ _%tl132864132879%_))
                              (if (gx#stx-list? _%body132882%_)
                                  (_%K132858%_ _%body132882%_ '())
                                  (_%E132861132870%_)))))
                        (_%E132861132870%_)))))
            (_%E132860132884%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx133025%_ _%expand-special133026%_)
        (let* ((_%begin-form133028%_ '%#begin)
               (_%expand-e133030%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx133025%_
           _%expand-special133026%_
           _%begin-form133028%_
           _%expand-e133030%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx133032%_ _%expand-special133033%_ _%begin-form133034%_)
        (let ((_%expand-e133036%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx133032%_
           _%expand-special133033%_
           _%begin-form133034%_
           _%expand-e133036%_))))
    (define gx#core-expand-block
      (lambda _g133731_
        (let ((_g133732_ (##length _g133731_)))
          (cond ((##fx= _g133732_ 2) (apply gx#core-expand-block__0 _g133731_))
                ((##fx= _g133732_ 3) (apply gx#core-expand-block__1 _g133731_))
                ((##fx= _g133732_ 4) (apply gx#core-expand-block__% _g133731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g133731_))))))
    (define gx#core-expand-block*
      (lambda (_%stx132797%_ _%expand-special132798%_)
        (let* ((_%g132799132810%_
                (gx#core-expand-block__1
                 _%stx132797%_
                 _%expand-special132798%_
                 '#f))
               (_%E132803132814%_
                (lambda ()
                  (error '"No clause matching"
                         _%g132799132810%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K132808132845%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx132797%_)))
                (_%K132805132831%_ (lambda (_%expr132829%_) _%expr132829%_))
                (_%K132804132820%_
                 (lambda (_%body132818%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body132818%_))
                    (gx#stx-source _%stx132797%_)))))
            (let ((_%try-match132801132841%_
                   (lambda ()
                     (if (pair? _%g132799132810%_)
                         (let ((_%tl132807132836%_ (##cdr _%g132799132810%_))
                               (_%hd132806132834%_ (##car _%g132799132810%_)))
                           (if (null? _%tl132807132836%_)
                               (let ((_%expr132839%_ _%hd132806132834%_))
                                 (_%K132805132831%_ _%expr132839%_))
                               (let ((_%body132823%_ _%g132799132810%_))
                                 (_%K132804132820%_ _%body132823%_))))
                         (let ((_%body132823%_ _%g132799132810%_))
                           (_%K132804132820%_ _%body132823%_))))))
              (if (null? _%g132799132810%_)
                  (_%K132808132845%_)
                  (_%try-match132801132841%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx132622%_)
        (letrec ((_%satisfied?132624%_
                  (lambda (_%condition132725%_)
                    (let* ((_%e132726132741%_ _%condition132725%_)
                           (_%E132736132745%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132726132741%_)))
                           (_%E132729132764%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132726132741%_)
                                  (let ((_%e132737132749%_
                                         (gx#syntax-e _%e132726132741%_)))
                                    (let ((_%hd132738132752%_
                                           (##car _%e132737132749%_))
                                          (_%tl132739132754%_
                                           (##cdr _%e132737132749%_)))
                                      (let* ((_%combinator132757%_
                                              _%hd132738132752%_)
                                             (_%body132759%_
                                              _%tl132739132754%_))
                                        (if (gx#stx-list? _%body132759%_)
                                            (let ((_%$e132761%_
                                                   (gx#stx-e
                                                    _%combinator132757%_)))
                                              (if (eq? 'not _%$e132761%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?132624%_
                                                        _%body132759%_))
                                                  (if (eq? 'and _%$e132761%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?132624%_
                                                       _%body132759%_)
                                                      (if (eq? 'or
                                                               _%$e132761%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?132624%_
                                                           _%body132759%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132761%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body132759%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx132622%_
                       _%combinator132757%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E132736132745%_)))))
                                  (_%E132736132745%_))))
                           (_%E132728132787%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132726132741%_)
                                  (let ((_%e132730132768%_
                                         (gx#syntax-e _%e132726132741%_)))
                                    (let ((_%hd132731132771%_
                                           (##car _%e132730132768%_))
                                          (_%tl132732132773%_
                                           (##cdr _%e132730132768%_)))
                                      (if (and (gx#identifier?
                                                _%hd132731132771%_)
                                               (gx#core-identifier=?
                                                _%hd132731132771%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl132732132773%_)
                                              (let ((_%e132733132776%_
                                                     (gx#syntax-e
                                                      _%tl132732132773%_)))
                                                (let ((_%hd132734132779%_
                                                       (##car _%e132733132776%_))
                                                      (_%tl132735132781%_
                                                       (##cdr _%e132733132776%_)))
                                                  (let ((_%expr132784%_
                                                         _%hd132734132779%_))
                                                    (if (gx#stx-null?
                                                         _%tl132735132781%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr132784%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E132729132764%_)))))
                                              (_%E132729132764%_))
                                          (_%E132729132764%_))))
                                  (_%E132729132764%_))))
                           (_%E132727132793%_
                            (lambda ()
                              (let ((_%id132791%_ _%e132726132741%_))
                                (if (gx#identifier? _%id132791%_)
                                    (gx#core-bound-identifier?__%
                                     _%id132791%_
                                     gx#feature-binding?)
                                    (_%E132728132787%_))))))
                      (_%E132727132793%_))))
                 (_%loop132625%_
                  (lambda (_%rest132655%_)
                    (let* ((_%e132656132664%_ _%rest132655%_)
                           (_%E132662132668%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132656132664%_)))
                           (_%E132658132672%_
                            (lambda ()
                              (if (gx#stx-null? _%e132656132664%_)
                                  '()
                                  (_%E132662132668%_))))
                           (_%E132657132721%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132656132664%_)
                                  (let ((_%e132659132676%_
                                         (gx#syntax-e _%e132656132664%_)))
                                    (let ((_%hd132660132679%_
                                           (##car _%e132659132676%_))
                                          (_%tl132661132681%_
                                           (##cdr _%e132659132676%_)))
                                      (let* ((_%hd132684%_ _%hd132660132679%_)
                                             (_%rest132686%_
                                              _%tl132661132681%_)
                                             (_%e132687132694%_ _%hd132684%_)
                                             (_%E132689132698%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e132687132694%_)))
                                             (_%E132688132717%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132687132694%_)
                                                    (let ((_%e132690132702%_
                                                           (gx#syntax-e
                                                            _%e132687132694%_)))
                                                      (let ((_%hd132691132705%_
                                                             (##car _%e132690132702%_))
                                                            (_%tl132692132707%_
                                                             (##cdr _%e132690132702%_)))
                                                        (let* ((_%condition132710%_
                                                                _%hd132691132705%_)
                                                               (_%body132712%_
                                                                _%tl132692132707%_))
                                                          (if (gx#stx-eq?
                                                               _%condition132710%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest132686%_)
                          _%body132712%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx132622%_
                           _%hd132684%_))
                      (if (_%satisfied?132624%_ _%condition132710%_)
                          _%body132712%_
                          (_%loop132625%_ _%rest132686%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132689132698%_)))))
                                        (_%E132688132717%_))))
                                  (_%E132658132672%_)))))
                      (_%E132657132721%_)))))
          (let* ((_%e132626132633%_ _%stx132622%_)
                 (_%E132628132637%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132626132633%_)))
                 (_%E132627132651%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132626132633%_)
                        (let ((_%e132629132641%_
                               (gx#syntax-e _%e132626132633%_)))
                          (let ((_%hd132630132644%_ (##car _%e132629132641%_))
                                (_%tl132631132646%_ (##cdr _%e132629132641%_)))
                            (let ((_%clauses132649%_ _%tl132631132646%_))
                              (if (gx#stx-list? _%clauses132649%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop132625%_ _%clauses132649%_))
                                  (_%E132628132637%_)))))
                        (_%E132628132637%_)))))
            (_%E132627132651%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx132565%_ _%rpath132566%_)
        (let* ((_%e132567132577%_ _%stx132565%_)
               (_%E132569132581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132567132577%_)))
               (_%E132568132608%_
                (lambda ()
                  (if (gx#stx-pair? _%e132567132577%_)
                      (let ((_%e132570132585%_
                             (gx#syntax-e _%e132567132577%_)))
                        (let ((_%hd132571132588%_ (##car _%e132570132585%_))
                              (_%tl132572132590%_ (##cdr _%e132570132585%_)))
                          (if (gx#stx-pair? _%tl132572132590%_)
                              (let ((_%e132573132593%_
                                     (gx#syntax-e _%tl132572132590%_)))
                                (let ((_%hd132574132596%_
                                       (##car _%e132573132593%_))
                                      (_%tl132575132598%_
                                       (##cdr _%e132573132593%_)))
                                  (let ((_%path132601%_ _%hd132574132596%_))
                                    (if (gx#stx-null? _%tl132575132598%_)
                                        (if (gx#stx-string? _%path132601%_)
                                            (let ((_%rpath132606%_
                                                   (let ((_%$e132603%_
                                                          _%rpath132566%_))
                                                     (if _%$e132603%_
                                                         _%$e132603%_
                                                         (gx#core-resolve-path__%
                                                          _%path132601%_
                                                          (gx#stx-source
                                                           _%stx132565%_))))))
                                              (if (member _%rpath132606%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx132565%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath132606%_))
                                                    (gx#stx-source
                                                     _%stx132565%_)))))
                                            (_%E132569132581%_))
                                        (_%E132569132581%_)))))
                              (_%E132569132581%_))))
                      (_%E132569132581%_)))))
          (_%E132568132608%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx132615%_)
        (let ((_%rpath132617%_ '#f))
          (gx#core-expand-include%__% _%stx132615%_ _%rpath132617%_))))
    (define gx#core-expand-include%
      (lambda _g133733_
        (let ((_g133734_ (##length _g133733_)))
          (cond ((##fx= _g133734_ 1)
                 (apply gx#core-expand-include%__0 _g133733_))
                ((##fx= _g133734_ 2)
                 (apply gx#core-expand-include%__% _g133733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g133733_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K132531%_ _%stx132532%_ _%method132533%_)
        (if (procedure? _%K132531%_)
            (let ((_%$e132536%_ (gx#stx-source _%stx132532%_)))
              (if _%$e132536%_
                  ((lambda (_%g132538132540%_)
                     (gx#stx-wrap-source
                      (_%K132531%_ _%stx132532%_)
                      _%g132538132540%_))
                   _%$e132536%_)
                  (_%K132531%_ _%stx132532%_)))
            (let ((_%$e132544%_
                   (bound-method-ref _%K132531%_ _%method132533%_)))
              (if _%$e132544%_
                  ((lambda (_%g132546132548%_)
                     (gx#core-apply-expander__%
                      _%g132546132548%_
                      _%stx132532%_
                      _%method132533%_))
                   _%$e132544%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx132532%_
                   _%method132533%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K132555%_ _%stx132556%_)
        (let ((_%method132558%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K132555%_
           _%stx132556%_
           _%method132558%_))))
    (define gx#core-apply-expander
      (lambda _g133735_
        (let ((_g133736_ (##length _g133735_)))
          (cond ((##fx= _g133736_ 2)
                 (apply gx#core-apply-expander__0 _g133735_))
                ((##fx= _g133736_ 3)
                 (apply gx#core-apply-expander__% _g133735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g133735_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self132516%_ _%stx132517%_)
        (let ((_%self132520%_ _%self132516%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx132517%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self132359%_ _%stx132360%_)
        (let* ((_%self132363%_ _%self132359%_)
               (_%self132372132378%_ _%self132363%_)
               (_%E132374132381%_
                (lambda ()
                  (error '"No clause matching"
                         _%self132372132378%_
                         '((macro-expander K)))
                  '#!void))
               (_%K132375132386%_
                (lambda (_%K132384%_)
                  (gx#core-apply-expander__0 _%K132384%_ _%stx132360%_)))
               (_%e132376132389%_
                (##unchecked-structure-ref _%self132372132378%_ '1 '#f '#f))
               (_%K132392%_ _%e132376132389%_))
          (_%K132375132386%_ _%K132392%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self132202%_ _%stx132203%_)
        (let ((_%self132206%_ _%self132202%_))
          (if (gx#sealed-syntax? _%stx132203%_)
              _%stx132203%_
              (let* ((_%self132215132221%_ _%self132206%_)
                     (_%E132217132224%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self132215132221%_
                               '((core-expander K)))
                        '#!void))
                     (_%K132218132229%_
                      (lambda (_%K132227%_)
                        (gx#core-apply-expander__0 _%K132227%_ _%stx132203%_)))
                     (_%e132219132232%_
                      (##unchecked-structure-ref
                       _%self132215132221%_
                       '1
                       '#f
                       '#f))
                     (_%K132235%_ _%e132219132232%_))
                (_%K132218132229%_ _%K132235%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self132053%_ _%stx132054%_ _%top?132055%_)
        (let ((_%self132058%_ _%self132053%_))
          (if (_%top?132055%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self132058%_
               _%stx132054%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx132054%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self132071%_ _%stx132072%_)
        (let ((_%top?132074%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self132071%_
           _%stx132072%_
           _%top?132074%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g133737_
        (let ((_g133738_ (##length _g133737_)))
          (cond ((##fx= _g133738_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g133737_))
                ((##fx= _g133738_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g133737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g133737_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self131916%_ _%stx131917%_)
        (let ((_%self131920%_ _%self131916%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self131920%_
           _%stx131917%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self131731%_ _%stx131732%_)
        (let* ((_%self131735%_ _%self131731%_)
               (_%self131744131750%_ _%self131735%_)
               (_%E131746131753%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131744131750%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K131747131786%_
                (lambda (_%id131756%_)
                  (let* ((_%e131757131764%_ _%stx131732%_)
                         (_%E131759131768%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e131757131764%_)))
                         (_%E131758131782%_
                          (lambda ()
                            (if (gx#stx-pair? _%e131757131764%_)
                                (let ((_%e131760131772%_
                                       (gx#syntax-e _%e131757131764%_)))
                                  (let ((_%hd131761131775%_
                                         (##car _%e131760131772%_))
                                        (_%tl131762131777%_
                                         (##cdr _%e131760131772%_)))
                                    (let ((_%body131780%_ _%tl131762131777%_))
                                      (gx#core-cons
                                       _%id131756%_
                                       _%body131780%_))))
                                (_%E131759131768%_)))))
                    (_%E131758131782%_))))
               (_%e131748131789%_
                (##unchecked-structure-ref _%self131744131750%_ '1 '#f '#f))
               (_%id131792%_ _%e131748131789%_))
          (_%K131747131786%_ _%id131792%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self131558%_ _%stx131559%_ _%method131560%_)
        (let* ((_%self131561131569%_ _%self131558%_)
               (_%E131563131572%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131561131569%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K131564131579%_
                (lambda (_%phi131575%_ _%ctx131576%_ _%K131577%_)
                  (gx#core-apply-user-macro
                   _%K131577%_
                   _%stx131559%_
                   _%ctx131576%_
                   _%phi131575%_
                   _%method131560%_))))
          (if (##structure-instance-of?
               _%self131561131569%_
               'gx#user-expander::t)
              (let* ((_%e131565131582%_
                      (##unchecked-structure-ref
                       _%self131561131569%_
                       '1
                       '#f
                       '#f))
                     (_%K131585%_ _%e131565131582%_)
                     (_%e131566131587%_
                      (##unchecked-structure-ref
                       _%self131561131569%_
                       '2
                       '#f
                       '#f))
                     (_%ctx131590%_ _%e131566131587%_)
                     (_%e131567131592%_
                      (##unchecked-structure-ref
                       _%self131561131569%_
                       '3
                       '#f
                       '#f))
                     (_%phi131595%_ _%e131567131592%_))
                (_%K131564131579%_ _%phi131595%_ _%ctx131590%_ _%K131585%_))
              (_%E131563131572%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self131600%_ _%stx131601%_)
        (let ((_%method131603%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self131600%_
           _%stx131601%_
           _%method131603%_))))
    (define gx#core-apply-user-expander
      (lambda _g133739_
        (let ((_g133740_ (##length _g133739_)))
          (cond ((##fx= _g133740_ 2)
                 (apply gx#core-apply-user-expander__0 _g133739_))
                ((##fx= _g133740_ 3)
                 (apply gx#core-apply-user-expander__% _g133739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g133739_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K131548%_
               _%stx131549%_
               _%ctx131550%_
               _%phi131551%_
               _%method131552%_)
        (let ((_%mark131554%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx131550%_
                _%phi131551%_
                _%stx131549%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K131548%_
               (gx#stx-apply-mark _%stx131549%_ _%mark131554%_)
               _%method131552%_)
              _%mark131554%_))
           gx#current-expander-marks
           (cons _%mark131554%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx131396%_ _%phi131397%_ _%ctx131398%_)
        (let _%lp131400%_ ((_%bind131402%_
                            (gx#core-resolve-identifier__%
                             _%stx131396%_
                             _%phi131397%_
                             _%ctx131398%_)))
          (if (##structure-direct-instance-of?
               _%bind131402%_
               'gx#import-binding::t)
              (_%lp131400%_
               (##unchecked-structure-ref _%bind131402%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind131402%_
                   'gx#alias-binding::t)
                  (_%lp131400%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind131402%_ '4 '#f '#f)
                    _%phi131397%_
                    _%ctx131398%_))
                  _%bind131402%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx131410%_)
        (let* ((_%phi131412%_ (gx#current-expander-phi))
               (_%ctx131414%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx131410%_
           _%phi131412%_
           _%ctx131414%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx131416%_ _%phi131417%_)
        (let ((_%ctx131419%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx131416%_
           _%phi131417%_
           _%ctx131419%_))))
    (define gx#resolve-identifier
      (lambda _g133741_
        (let ((_g133742_ (##length _g133741_)))
          (cond ((##fx= _g133742_ 1)
                 (apply gx#resolve-identifier__0 _g133741_))
                ((##fx= _g133742_ 2)
                 (apply gx#resolve-identifier__1 _g133741_))
                ((##fx= _g133742_ 3)
                 (apply gx#resolve-identifier__% _g133741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g133741_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx131351%_
               _%val131352%_
               _%rebind?131353%_
               _%phi131354%_
               _%ctx131355%_)
        (let ((_%rebind?131360%_
               (if (not _%rebind?131353%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?131353%_)
                       _%rebind?131353%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx131351%_)
           _%val131352%_
           _%rebind?131360%_
           _%phi131354%_
           _%ctx131355%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx131365%_ _%val131366%_)
        (let* ((_%rebind?131368%_ '#f)
               (_%phi131370%_ (gx#current-expander-phi))
               (_%ctx131372%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx131365%_
           _%val131366%_
           _%rebind?131368%_
           _%phi131370%_
           _%ctx131372%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx131374%_ _%val131375%_ _%rebind?131376%_)
        (let* ((_%phi131378%_ (gx#current-expander-phi))
               (_%ctx131380%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx131374%_
           _%val131375%_
           _%rebind?131376%_
           _%phi131378%_
           _%ctx131380%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx131382%_ _%val131383%_ _%rebind?131384%_ _%phi131385%_)
        (let ((_%ctx131387%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx131382%_
           _%val131383%_
           _%rebind?131384%_
           _%phi131385%_
           _%ctx131387%_))))
    (define gx#bind-identifier!
      (lambda _g133743_
        (let ((_g133744_ (##length _g133743_)))
          (cond ((##fx= _g133744_ 2) (apply gx#bind-identifier!__0 _g133743_))
                ((##fx= _g133744_ 3) (apply gx#bind-identifier!__1 _g133743_))
                ((##fx= _g133744_ 4) (apply gx#bind-identifier!__2 _g133743_))
                ((##fx= _g133744_ 5) (apply gx#bind-identifier!__% _g133743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g133743_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx131317%_ _%phi131318%_ _%ctx131319%_)
        (let _%lp131321%_ ((_%e131323%_ _%stx131317%_)
                           (_%marks131324%_ (gx#current-expander-marks)))
          (if (symbol? _%e131323%_)
              (gx#core-resolve-binding
               _%e131323%_
               _%phi131318%_
               _%phi131318%_
               _%ctx131319%_
               (reverse _%marks131324%_))
              (if (gx#identifier-quote? _%e131323%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e131323%_ '1 '#f '#f)
                   _%phi131318%_
                   '0
                   (##unchecked-structure-ref _%e131323%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e131323%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e131323%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e131323%_ '1 '#f '#f)
                       _%phi131318%_
                       _%phi131318%_
                       _%ctx131319%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e131323%_ '3 '#f '#f)
                        _%marks131324%_))
                      (if (##structure-direct-instance-of?
                           _%e131323%_
                           'gx#syntax-wrap::t)
                          (_%lp131321%_
                           (##unchecked-structure-ref _%e131323%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e131323%_ '3 '#f '#f)
                            _%marks131324%_))
                          (if (##structure-instance-of?
                               _%e131323%_
                               'gerbil#AST::t)
                              (_%lp131321%_
                               (##unchecked-structure-ref
                                _%e131323%_
                                '1
                                '#f
                                '#f)
                               _%marks131324%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx131317%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx131335%_)
        (let* ((_%phi131337%_ (gx#current-expander-phi))
               (_%ctx131339%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx131335%_
           _%phi131337%_
           _%ctx131339%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx131341%_ _%phi131342%_)
        (let ((_%ctx131344%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx131341%_
           _%phi131342%_
           _%ctx131344%_))))
    (define gx#core-resolve-identifier
      (lambda _g133745_
        (let ((_g133746_ (##length _g133745_)))
          (cond ((##fx= _g133746_ 1)
                 (apply gx#core-resolve-identifier__0 _g133745_))
                ((##fx= _g133746_ 2)
                 (apply gx#core-resolve-identifier__1 _g133745_))
                ((##fx= _g133746_ 3)
                 (apply gx#core-resolve-identifier__% _g133745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g133745_))))))
    (define gx#core-resolve-binding
      (lambda (_%id131228%_
               _%phi131229%_
               _%src-phi131230%_
               _%ctx131231%_
               _%marks131232%_)
        (letrec ((_%resolve131234%_
                  (lambda (_%ctx131301%_ _%src-phi131302%_ _%key131303%_)
                    (let _%lp131305%_ ((_%ctx131307%_
                                        (gx#core-context-shift
                                         _%ctx131301%_
                                         _%phi131229%_))
                                       (_%dphi131308%_
                                        (fx- _%phi131229%_ _%src-phi131302%_)))
                      (let ((_%$e131310%_
                             (gx#core-context-resolve
                              _%ctx131307%_
                              _%key131303%_)))
                        (if _%$e131310%_
                            _%$e131310%_
                            (if (fxzero? _%dphi131308%_)
                                '#f
                                (if (fxpositive? _%dphi131308%_)
                                    (_%lp131305%_
                                     (gx#core-context-shift _%ctx131307%_ '-1)
                                     (##fx- _%dphi131308%_ '1))
                                    (_%lp131305%_
                                     (gx#core-context-shift _%ctx131307%_ '1)
                                     (##fx+ _%dphi131308%_ '1))))))))))
          (let _%lp131236%_ ((_%ctx131238%_ _%ctx131231%_)
                             (_%src-phi131239%_ _%src-phi131230%_)
                             (_%rest131240%_ _%marks131232%_))
            (let* ((_%rest131241131249%_ _%rest131240%_)
                   (_%else131243131257%_
                    (lambda ()
                      (_%resolve131234%_
                       _%ctx131238%_
                       _%src-phi131239%_
                       _%id131228%_)))
                   (_%K131245131289%_
                    (lambda (_%rest131260%_ _%hd131261%_)
                      (let* ((_%hd131262131268%_ _%hd131261%_)
                             (_%E131264131271%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd131262131268%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K131265131281%_
                              (lambda (_%subst131274%_)
                                (let ((_%$e131278%_
                                       (let ((_%key131276%_
                                              (if _%subst131274%_
                                                  (hash-get
                                                   _%subst131274%_
                                                   _%id131228%_)
                                                  '#f)))
                                         (if _%key131276%_
                                             (_%resolve131234%_
                                              _%ctx131238%_
                                              _%src-phi131239%_
                                              _%key131276%_)
                                             '#f))))
                                  (if _%$e131278%_
                                      _%$e131278%_
                                      (_%lp131236%_
                                       (##unchecked-structure-ref
                                        _%hd131261%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd131261%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest131260%_))))))
                        (if (##structure-instance-of?
                             _%hd131262131268%_
                             'gx#expander-mark::t)
                            (let* ((_%e131266131284%_
                                    (##unchecked-structure-ref
                                     _%hd131262131268%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst131287%_ _%e131266131284%_))
                              (_%K131265131281%_ _%subst131287%_))
                            (_%E131264131271%_))))))
              (if (pair? _%rest131241131249%_)
                  (let ((_%hd131246131292%_ (##car _%rest131241131249%_))
                        (_%tl131247131294%_ (##cdr _%rest131241131249%_)))
                    (let* ((_%hd131297%_ _%hd131246131292%_)
                           (_%rest131299%_ _%tl131247131294%_))
                      (_%K131245131289%_ _%rest131299%_ _%hd131297%_)))
                  (_%else131243131257%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key131099%_
               _%val131100%_
               _%rebind?131101%_
               _%phi131102%_
               _%ctx131103%_)
        (letrec ((_%update-binding131105%_
                  (lambda (_%xval131177%_)
                    (if (or (_%rebind?131101%_
                             _%ctx131103%_
                             _%xval131177%_
                             _%val131100%_)
                            (and (##structure-direct-instance-of?
                                  _%xval131177%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval131177%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val131100%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val131100%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval131177%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val131100%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val131100%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval131177%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val131100%_
                        (if (and (##structure-direct-instance-of?
                                  _%val131100%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val131100%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval131177%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val131100%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval131177%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval131177%_
                            (if (and (##structure-direct-instance-of?
                                      _%val131100%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval131177%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key131099%_
                                 (cons (##unchecked-structure-ref
                                        _%val131100%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val131100%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval131177%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval131177%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval131177%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval131177%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key131099%_
                                 _%val131100%_
                                 _%xval131177%_))))))
                 (_%gensubst131106%_
                  (lambda (_%subst131172%_ _%id131173%_)
                    (let ((_%eid131175%_
                           (gensym (if (uninterned-symbol? _%id131173%_)
                                       '%
                                       _%id131173%_))))
                      (hash-put! _%subst131172%_ _%id131173%_ _%eid131175%_)
                      _%eid131175%_)))
                 (_%subst!131107%_
                  (lambda (_%key131109%_)
                    (let* ((_%key131110131118%_ _%key131109%_)
                           (_%else131112131126%_ (lambda () _%key131109%_))
                           (_%K131114131160%_
                            (lambda (_%mark131129%_ _%id131130%_)
                              (let* ((_%mark131131131137%_ _%mark131129%_)
                                     (_%E131133131140%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark131131131137%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K131134131152%_
                                      (lambda (_%subst131143%_)
                                        (if (not _%subst131143%_)
                                            (let ((_%subst131146%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark131129%_
                                               _%subst131146%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst131106%_
                                               _%subst131146%_
                                               _%id131130%_))
                                            (let ((_%$e131148%_
                                                   (hash-get
                                                    _%subst131143%_
                                                    _%id131130%_)))
                                              (if _%$e131148%_
                                                  _%$e131148%_
                                                  (_%gensubst131106%_
                                                   _%subst131143%_
                                                   _%id131130%_)))))))
                                (if (##structure-instance-of?
                                     _%mark131131131137%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e131135131155%_
                                            (##unchecked-structure-ref
                                             _%mark131131131137%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst131158%_ _%e131135131155%_))
                                      (_%K131134131152%_ _%subst131158%_))
                                    (_%E131133131140%_))))))
                      (if (pair? _%key131110131118%_)
                          (let ((_%hd131115131163%_
                                 (##car _%key131110131118%_))
                                (_%tl131116131165%_
                                 (##cdr _%key131110131118%_)))
                            (let* ((_%id131168%_ _%hd131115131163%_)
                                   (_%mark131170%_ _%tl131116131165%_))
                              (_%K131114131160%_ _%mark131170%_ _%id131168%_)))
                          (_%else131112131126%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx131103%_ _%phi131102%_)
           (_%subst!131107%_ _%key131099%_)
           _%val131100%_
           _%update-binding131105%_))))
    (define gx#core-bind!__0
      (lambda (_%key131198%_ _%val131199%_)
        (let* ((_%rebind?131201%_ false)
               (_%phi131203%_ (gx#current-expander-phi))
               (_%ctx131205%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key131198%_
           _%val131199%_
           _%rebind?131201%_
           _%phi131203%_
           _%ctx131205%_))))
    (define gx#core-bind!__1
      (lambda (_%key131207%_ _%val131208%_ _%rebind?131209%_)
        (let* ((_%phi131211%_ (gx#current-expander-phi))
               (_%ctx131213%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key131207%_
           _%val131208%_
           _%rebind?131209%_
           _%phi131211%_
           _%ctx131213%_))))
    (define gx#core-bind!__2
      (lambda (_%key131215%_ _%val131216%_ _%rebind?131217%_ _%phi131218%_)
        (let ((_%ctx131220%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key131215%_
           _%val131216%_
           _%rebind?131217%_
           _%phi131218%_
           _%ctx131220%_))))
    (define gx#core-bind!
      (lambda _g133747_
        (let ((_g133748_ (##length _g133747_)))
          (cond ((##fx= _g133748_ 2) (apply gx#core-bind!__0 _g133747_))
                ((##fx= _g133748_ 3) (apply gx#core-bind!__1 _g133747_))
                ((##fx= _g133748_ 4) (apply gx#core-bind!__2 _g133747_))
                ((##fx= _g133748_ 5) (apply gx#core-bind!__% _g133747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g133747_))))))
    (define gx#core-identifier-key
      (lambda (_%stx131030%_)
        (if (symbol? _%stx131030%_)
            (let* ((_%g131032131040%_ (gx#current-expander-marks))
                   (_%else131034131048%_ (lambda () _%stx131030%_))
                   (_%K131036131053%_
                    (lambda (_%hd131051%_) (cons _%stx131030%_ _%hd131051%_))))
              (if (pair? _%g131032131040%_)
                  (let* ((_%hd131037131056%_ (##car _%g131032131040%_))
                         (_%hd131059%_ _%hd131037131056%_))
                    (_%K131036131053%_ _%hd131059%_))
                  (_%else131034131048%_)))
            (if (gx#identifier? _%stx131030%_)
                (let* ((_%id131062%_ (gx#syntax-local-unwrap _%stx131030%_))
                       (_%eid131064%_ (gx#stx-e _%id131062%_))
                       (_%marks131066%_
                        (gx#stx-identifier-marks* _%id131062%_))
                       (_%marks131068131076%_ _%marks131066%_)
                       (_%else131070131084%_ (lambda () _%eid131064%_))
                       (_%K131072131089%_
                        (lambda (_%hd131087%_)
                          (cons _%eid131064%_ _%hd131087%_))))
                  (if (pair? _%marks131068131076%_)
                      (let* ((_%hd131073131092%_ (##car _%marks131068131076%_))
                             (_%hd131095%_ _%hd131073131092%_))
                        (_%K131072131089%_ _%hd131095%_))
                      (_%else131070131084%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx131030%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx130969%_ _%phi130970%_)
        (letrec ((_%make-phi130972%_
                  (lambda (_%super131028%_)
                    (let ((__obj133720
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj133720
                       (##gensym 'phi)
                       _%super131028%_)
                      __obj133720)))
                 (_%make-phi/up130973%_
                  (lambda (_%ctx131023%_ _%super131024%_)
                    (let ((_%ctx+1131026%_
                           (_%make-phi130972%_ _%super131024%_)))
                      (##unchecked-structure-set!
                       _%ctx131023%_
                       _%ctx+1131026%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1131026%_
                       _%ctx131023%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1131026%_)))
                 (_%make-phi/down130974%_
                  (lambda (_%ctx131018%_ _%super131019%_)
                    (let ((_%ctx-1131021%_
                           (_%make-phi130972%_ _%super131019%_)))
                      (##unchecked-structure-set!
                       _%ctx-1131021%_
                       _%ctx131018%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx131018%_
                       _%ctx-1131021%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1131021%_)))
                 (_%shift130975%_
                  (lambda (_%ctx131001%_
                           _%delta131002%_
                           _%make-delta-context131003%_
                           _%phi131004%_
                           _%K131005%_)
                    (let ((_%$e131007%_
                           (##unchecked-structure-ref
                            _%ctx131001%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e131007%_
                          ((lambda (_%super131010%_)
                             (let* ((_%super131012%_
                                     (_%K131005%_
                                      _%super131010%_
                                      _%delta131002%_))
                                    (_%ctx+d131014%_
                                     (_%make-delta-context131003%_
                                      _%ctx131001%_
                                      _%super131012%_)))
                               (_%K131005%_
                                _%ctx+d131014%_
                                (fx- _%phi131004%_ _%delta131002%_))))
                           _%$e131007%_)
                          (error '"Bad context" _%ctx131001%_))))))
          (let _%K130977%_ ((_%ctx130979%_ _%ctx130969%_)
                            (_%phi130980%_ _%phi130970%_))
            (if (fxzero? _%phi130980%_)
                _%ctx130979%_
                (if (##structure-instance-of? _%ctx130979%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi130980%_)
                        (let ((_%$e130984%_
                               (##unchecked-structure-ref
                                _%ctx130979%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e130984%_
                              ((lambda (_%g130986130988%_)
                                 (_%K130977%_
                                  _%g130986130988%_
                                  (##fx- _%phi130980%_ '1)))
                               _%$e130984%_)
                              (_%shift130975%_
                               _%ctx130979%_
                               '1
                               _%make-phi/up130973%_
                               _%phi130980%_
                               _%K130977%_)))
                        (let ((_%$e130992%_
                               (##unchecked-structure-ref
                                _%ctx130979%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e130992%_
                              ((lambda (_%g130994130996%_)
                                 (_%K130977%_
                                  _%g130994130996%_
                                  (##fx+ _%phi130980%_ '1)))
                               _%$e130992%_)
                              (_%shift130975%_
                               _%ctx130979%_
                               '-1
                               _%make-phi/down130974%_
                               _%phi130980%_
                               _%K130977%_))))
                    _%ctx130979%_))))))
    (define gx#core-context-get
      (lambda (_%ctx130966%_ _%key130967%_)
        (hash-get
         (##unchecked-structure-ref _%ctx130966%_ '2 '#f '#f)
         _%key130967%_)))
    (define gx#core-context-put!
      (lambda (_%ctx130962%_ _%key130963%_ _%val130964%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx130962%_ '2 '#f '#f)
         _%key130963%_
         _%val130964%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx130948%_ _%key130949%_)
        (let _%lp130951%_ ((_%ctx130953%_ _%ctx130948%_))
          (let ((_%$e130955%_
                 (gx#core-context-get _%ctx130953%_ _%key130949%_)))
            (if _%$e130955%_
                _%$e130955%_
                (let ((_%$e130958%_
                       (if (##structure-instance-of?
                            _%ctx130953%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx130953%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e130958%_ (_%lp130951%_ _%$e130958%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx130937%_ _%key130938%_ _%val130939%_ _%rebind130940%_)
        (let ((_%$e130942%_ (gx#core-context-get _%ctx130937%_ _%key130938%_)))
          (if _%$e130942%_
              ((lambda (_%xval130945%_)
                 (gx#core-context-put!
                  _%ctx130937%_
                  _%key130938%_
                  (_%rebind130940%_ _%xval130945%_)))
               _%$e130942%_)
              (gx#core-context-put!
               _%ctx130937%_
               _%key130938%_
               _%val130939%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx130912%_ _%stop?130913%_)
        (let _%lp130915%_ ((_%ctx130917%_ _%ctx130912%_))
          (if (_%stop?130913%_ _%ctx130917%_)
              _%ctx130917%_
              (if (##structure-instance-of? _%ctx130917%_ 'gx#phi-context::t)
                  (_%lp130915%_
                   (##unchecked-structure-ref _%ctx130917%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx130926%_ (gx#current-expander-context))
               (_%stop?130928%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130926%_ _%stop?130928%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx130930%_)
        (let ((_%stop?130932%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130930%_ _%stop?130932%_))))
    (define gx#core-context-top
      (lambda _g133749_
        (let ((_g133750_ (##length _g133749_)))
          (cond ((##fx= _g133750_ 0) (apply gx#core-context-top__0 _g133749_))
                ((##fx= _g133750_ 1) (apply gx#core-context-top__1 _g133749_))
                ((##fx= _g133750_ 2) (apply gx#core-context-top__% _g133749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g133749_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx130897%_)
        (let _%lp130899%_ ((_%ctx130901%_ _%ctx130897%_))
          (if (##structure-instance-of? _%ctx130901%_ 'gx#phi-context::t)
              (_%lp130899%_
               (##unchecked-structure-ref _%ctx130901%_ '3 '#f '#f))
              _%ctx130901%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx130907%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx130907%_))))
    (define gx#core-context-root
      (lambda _g133751_
        (let ((_g133752_ (##length _g133751_)))
          (cond ((##fx= _g133752_ 0) (apply gx#core-context-root__0 _g133751_))
                ((##fx= _g133752_ 1) (apply gx#core-context-root__% _g133751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g133751_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx130879%_ . _%ignore130880%_)
        (let ((_%$e130882%_ (gx#current-expander-allow-rebind?)))
          (if _%$e130882%_
              _%$e130882%_
              (if (##structure-instance-of? _%ctx130879%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx130879%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx130879%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx130889%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx130889%_))))
    (define gx#core-context-rebind?
      (lambda _g133753_
        (let ((_g133754_ (##length _g133753_)))
          (cond ((##fx= _g133754_ 0)
                 (apply gx#core-context-rebind?__0 _g133753_))
                ((##fx= _g133754_ 1)
                 (apply gx#core-context-rebind?__% _g133753_))
                ((##fx>= _g133754_ 1)
                 (apply gx#core-context-rebind?__% _g133753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g133753_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx130862%_)
        (let ((_%$e130864%_ (gx#core-context-top__1 _%ctx130862%_)))
          (if _%$e130864%_
              ((lambda (_%ctx130867%_)
                 (if (##structure-instance-of?
                      _%ctx130867%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx130867%_ '6 '#f '#f)
                     '#f))
               _%$e130864%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx130874%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx130874%_))))
    (define gx#core-context-namespace
      (lambda _g133755_
        (let ((_g133756_ (##length _g133755_)))
          (cond ((##fx= _g133756_ 0)
                 (apply gx#core-context-namespace__0 _g133755_))
                ((##fx= _g133756_ 1)
                 (apply gx#core-context-namespace__% _g133755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g133755_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind130848%_ _%is?130849%_)
        (if (##structure-direct-instance-of?
             _%bind130848%_
             'gx#syntax-binding::t)
            (_%is?130849%_
             (##unchecked-structure-ref _%bind130848%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind130854%_)
        (let ((_%is?130856%_ gx#expander?))
          (gx#expander-binding?__% _%bind130854%_ _%is?130856%_))))
    (define gx#expander-binding?
      (lambda _g133757_
        (let ((_g133758_ (##length _g133757_)))
          (cond ((##fx= _g133758_ 1) (apply gx#expander-binding?__0 _g133757_))
                ((##fx= _g133758_ 2) (apply gx#expander-binding?__% _g133757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g133757_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind130845%_)
        (gx#expander-binding?__% _%bind130845%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind130843%_)
        (gx#expander-binding?__% _%bind130843%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind130837%_)
        (letrec ((_%direct-special-form?130839%_
                  (lambda (_%obj130841%_)
                    (##structure-direct-instance-of?
                     _%obj130841%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind130837%_
           _%direct-special-form?130839%_))))
    (define gx#special-form-binding?
      (lambda (_%bind130835%_)
        (gx#expander-binding?__% _%bind130835%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind130826%_)
        (letrec ((_%feature?130828%_
                  (lambda (_%e130830%_)
                    (let ((_%$e130832%_
                           (##structure-instance-of?
                            _%e130830%_
                            'gx#feature-expander::t)))
                      (if _%$e130832%_
                          _%$e130832%_
                          (##structure-instance-of?
                           _%e130830%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind130826%_ _%feature?130828%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind130824%_)
        (gx#expander-binding?__% _%bind130824%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id130811%_ _%bound?130812%_)
        (if (gx#identifier? _%id130811%_)
            (_%bound?130812%_ (gx#resolve-identifier__0 _%id130811%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id130817%_)
        (let ((_%bound?130819%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id130817%_ _%bound?130819%_))))
    (define gx#core-bound-identifier?
      (lambda _g133759_
        (let ((_g133760_ (##length _g133759_)))
          (cond ((##fx= _g133760_ 1)
                 (apply gx#core-bound-identifier?__0 _g133759_))
                ((##fx= _g133760_ 2)
                 (apply gx#core-bound-identifier?__% _g133759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g133759_))))))
    (define gx#core-identifier=?
      (lambda (_%x130801%_ _%y130802%_)
        (letrec ((_%y=?130804%_
                  (lambda (_%xid130808%_)
                    ((if (list? _%y130802%_) memq eq?)
                     _%xid130808%_
                     _%y130802%_))))
          (let ((_%bind130806%_ (gx#resolve-identifier__0 _%x130801%_)))
            (if (##structure-instance-of? _%bind130806%_ 'gx#binding::t)
                (_%y=?130804%_
                 (##unchecked-structure-ref _%bind130806%_ '1 '#f '#f))
                (_%y=?130804%_ (gx#stx-e _%x130801%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e130799%_)
        (if (interned-symbol? _%e130799%_)
            (string-index__0 (symbol->string _%e130799%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx130752%_ _%src130753%_ _%ctx130754%_ _%marks130755%_)
        (if (##structure? _%stx130752%_)
            (let ((_%$e130757%_ (gx#sealed-syntax-unwrap _%stx130752%_)))
              (if _%$e130757%_
                  _%$e130757%_
                  (if (gx#identifier? _%stx130752%_)
                      (let ((_%id130761%_
                             (gx#stx-unwrap__% _%stx130752%_ _%marks130755%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id130761%_ '1 '#f '#f)
                         (let ((_%$e130763%_
                                (##unchecked-structure-ref
                                 _%id130761%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e130763%_ _%$e130763%_ _%src130753%_))
                         _%ctx130754%_
                         (##unchecked-structure-ref _%id130761%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx130752%_)
                       (let ((_%$e130767%_ (gx#stx-source _%stx130752%_)))
                         (if _%$e130767%_ _%$e130767%_ _%src130753%_))
                       _%ctx130754%_
                       (reverse _%marks130755%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx130752%_
             _%src130753%_
             _%ctx130754%_
             (reverse _%marks130755%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx130773%_)
        (let* ((_%src130775%_ '#f)
               (_%ctx130777%_ (gx#current-expander-context))
               (_%marks130779%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130773%_
           _%src130775%_
           _%ctx130777%_
           _%marks130779%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx130781%_ _%src130782%_)
        (let* ((_%ctx130784%_ (gx#current-expander-context))
               (_%marks130786%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130781%_
           _%src130782%_
           _%ctx130784%_
           _%marks130786%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx130788%_ _%src130789%_ _%ctx130790%_)
        (let ((_%marks130792%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130788%_
           _%src130789%_
           _%ctx130790%_
           _%marks130792%_))))
    (define gx#core-quote-syntax
      (lambda _g133761_
        (let ((_g133762_ (##length _g133761_)))
          (cond ((##fx= _g133762_ 1) (apply gx#core-quote-syntax__0 _g133761_))
                ((##fx= _g133762_ 2) (apply gx#core-quote-syntax__1 _g133761_))
                ((##fx= _g133762_ 3) (apply gx#core-quote-syntax__2 _g133761_))
                ((##fx= _g133762_ 4) (apply gx#core-quote-syntax__% _g133761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g133761_))))))
    (define gx#core-cons
      (lambda (_%hd130748%_ _%tl130749%_)
        (cons (gx#core-quote-syntax__0 _%hd130748%_) _%tl130749%_)))
    (define gx#core-list
      (lambda (_%hd130745%_ . _%rest130746%_)
        (cons (gx#core-quote-syntax__0 _%hd130745%_) _%rest130746%_)))
    (define gx#core-cons*
      (lambda (_%hd130742%_ . _%rest130743%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd130742%_) _%rest130743%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path130711%_ _%rel130712%_)
        (let ((_%path130729%_ (gx#stx-e _%stx-path130711%_))
              (_%reldir130730%_
               (let _%lp130714%_ ((_%relsrc130716%_
                                   (let ((_%$e130726%_
                                          (gx#stx-source _%stx-path130711%_)))
                                     (if _%$e130726%_
                                         _%$e130726%_
                                         _%rel130712%_))))
                 (if (##structure-instance-of? _%relsrc130716%_ 'gerbil#AST::t)
                     (_%lp130714%_
                      (let ((_%$e130719%_ (gx#stx-source _%relsrc130716%_)))
                        (if _%$e130719%_
                            _%$e130719%_
                            (gx#stx-e _%relsrc130716%_))))
                     (if (source-location-path? _%relsrc130716%_)
                         (path-directory
                          (source-location-path _%relsrc130716%_))
                         (if (string? _%relsrc130716%_)
                             (path-directory _%relsrc130716%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path130729%_ (path-normalize _%reldir130730%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path130735%_)
        (let ((_%rel130737%_ '#f))
          (gx#core-resolve-path__% _%stx-path130735%_ _%rel130737%_))))
    (define gx#core-resolve-path
      (lambda _g133763_
        (let ((_g133764_ (##length _g133763_)))
          (cond ((##fx= _g133764_ 1) (apply gx#core-resolve-path__0 _g133763_))
                ((##fx= _g133764_ 2) (apply gx#core-resolve-path__% _g133763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g133763_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr130667%_ _%ctx130668%_)
        (let* ((_%repr130669130676%_ _%repr130667%_)
               (_%E130671130680%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr130669130676%_
                         '([phi . subs]))
                  '#!void))
               (_%K130672130688%_
                (lambda (_%subs130683%_ _%phi130684%_)
                  (let ((_%subst130686%_
                         (if (null? _%subs130683%_)
                             '#f
                             (list->hash-table-eq _%subs130683%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst130686%_
                     _%ctx130668%_
                     _%phi130684%_
                     '#f)))))
          (if (pair? _%repr130669130676%_)
              (let ((_%hd130673130691%_ (##car _%repr130669130676%_))
                    (_%tl130674130693%_ (##cdr _%repr130669130676%_)))
                (let* ((_%phi130696%_ _%hd130673130691%_)
                       (_%subs130698%_ _%tl130674130693%_))
                  (_%K130672130688%_ _%subs130698%_ _%phi130696%_)))
              (_%E130671130680%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr130703%_)
        (let ((_%ctx130705%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr130703%_ _%ctx130705%_))))
    (define gx#core-deserialize-mark
      (lambda _g133765_
        (let ((_g133766_ (##length _g133765_)))
          (cond ((##fx= _g133766_ 1)
                 (apply gx#core-deserialize-mark__0 _g133765_))
                ((##fx= _g133766_ 2)
                 (apply gx#core-deserialize-mark__% _g133765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g133765_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx130664%_)
        (gx#stx-rewrap _%stx130664%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx130662%_)
        (gx#stx-unwrap__% _%stx130662%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx130632%_)
        (let* ((_%g130633130641%_ (gx#current-expander-marks))
               (_%else130635130649%_ (lambda () _%stx130632%_))
               (_%K130637130654%_
                (lambda (_%hd130652%_)
                  (gx#stx-apply-mark _%stx130632%_ _%hd130652%_))))
          (if (pair? _%g130633130641%_)
              (let* ((_%hd130638130657%_ (##car _%g130633130641%_))
                     (_%hd130660%_ _%hd130638130657%_))
                (_%K130637130654%_ _%hd130660%_))
              (_%else130635130649%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym130630%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym130630%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx130615%_ _%E130616%_)
        (let ((_%bind130618%_ (gx#resolve-identifier__0 _%stx130615%_)))
          (if (##structure-direct-instance-of?
               _%bind130618%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind130618%_ '4 '#f '#f)
              (_%E130616%_ _%stx130615%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx130623%_)
        (let ((_%E130625%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx130623%_ _%E130625%_))))
    (define gx#syntax-local-e
      (lambda _g133767_
        (let ((_g133768_ (##length _g133767_)))
          (cond ((##fx= _g133768_ 1) (apply gx#syntax-local-e__0 _g133767_))
                ((##fx= _g133768_ 2) (apply gx#syntax-local-e__% _g133767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g133767_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx130599%_ _%E130600%_)
        (let ((_%e130602%_ (gx#syntax-local-e__% _%stx130599%_ _%E130600%_)))
          (if (##structure-instance-of? _%e130602%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e130602%_ '1 '#f '#f)
              _%e130602%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx130607%_)
        (let ((_%E130609%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx130607%_ _%E130609%_))))
    (define gx#syntax-local-value
      (lambda _g133769_
        (let ((_g133770_ (##length _g133769_)))
          (cond ((##fx= _g133770_ 1)
                 (apply gx#syntax-local-value__0 _g133769_))
                ((##fx= _g133770_ 2)
                 (apply gx#syntax-local-value__% _g133769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g133769_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx130596%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx130596%_)))))
