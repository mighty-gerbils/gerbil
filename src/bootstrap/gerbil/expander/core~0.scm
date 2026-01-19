(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1768865823)
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
      (lambda _%$args133279%_
        (apply make-instance gx#expander-context::t _%$args133279%_)))
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
      (lambda _%$args133276%_
        (apply make-instance gx#root-context::t _%$args133276%_)))
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
      (lambda _%$args133273%_
        (apply make-instance gx#phi-context::t _%$args133273%_)))
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
      (lambda _%$args133270%_
        (apply make-instance gx#top-context::t _%$args133270%_)))
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
      (lambda _%$args133267%_
        (apply make-instance gx#module-context::t _%$args133267%_)))
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
      (lambda _%$args133264%_
        (apply make-instance gx#prelude-context::t _%$args133264%_)))
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
      (lambda _%$args133261%_
        (apply make-instance gx#local-context::t _%$args133261%_)))
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
      (lambda (_%self133234%_ _%id133235%_ _%super133236%_)
        (let ((_%self133239%_ _%self133234%_))
          (if (##fx< '3 (##structure-length _%self133239%_))
              (begin
                (##unchecked-structure-set!
                 _%self133239%_
                 _%id133235%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133239%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133239%_
                 _%super133236%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133239%_
                     '3
                     (##structure-length _%self133239%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self133252%_ _%id133253%_)
        (let ((_%super133255%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self133252%_
           _%id133253%_
           _%super133255%_))))
    (define gx#phi-context:::init!
      (lambda _g133321_
        (let ((_g133322_ (##length _g133321_)))
          (cond ((##fx= _g133322_ 2)
                 (apply gx#phi-context:::init!__0 _g133321_))
                ((##fx= _g133322_ 3)
                 (apply gx#phi-context:::init!__% _g133321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g133321_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self133087%_ _%super133088%_)
        (let ((_%self133091%_ _%self133087%_))
          (if (##fx< '3 (##structure-length _%self133091%_))
              (begin
                (##unchecked-structure-set!
                 _%self133091%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133091%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133091%_
                 _%super133088%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133091%_
                     '3
                     (##structure-length _%self133091%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self133104%_)
        (let ((_%super133106%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self133104%_ _%super133106%_))))
    (define gx#local-context:::init!
      (lambda _g133323_
        (let ((_g133324_ (##length _g133323_)))
          (cond ((##fx= _g133324_ 1)
                 (apply gx#local-context:::init!__0 _g133323_))
                ((##fx= _g133324_ 2)
                 (apply gx#local-context:::init!__% _g133323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g133323_))))))
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
      (lambda _%$args132961%_
        (apply make-instance gx#binding::t _%$args132961%_)))
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
      (lambda _%$args132958%_
        (apply make-instance gx#runtime-binding::t _%$args132958%_)))
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
      (lambda _%$args132955%_
        (apply make-instance gx#local-binding::t _%$args132955%_)))
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
      (lambda _%$args132952%_
        (apply make-instance gx#top-binding::t _%$args132952%_)))
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
      (lambda _%$args132949%_
        (apply make-instance gx#module-binding::t _%$args132949%_)))
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
      (lambda _%$args132946%_
        (apply make-instance gx#extern-binding::t _%$args132946%_)))
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
      (lambda _%$args132943%_
        (apply make-instance gx#syntax-binding::t _%$args132943%_)))
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
      (lambda _%$args132940%_
        (apply make-instance gx#import-binding::t _%$args132940%_)))
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
      (lambda _%$args132937%_
        (apply make-instance gx#alias-binding::t _%$args132937%_)))
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
      (lambda _%$args132934%_
        (apply make-instance gx#expander::t _%$args132934%_)))
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
      (lambda _%$args132931%_
        (apply make-instance gx#core-expander::t _%$args132931%_)))
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
      (lambda _%$args132928%_
        (apply make-instance gx#expression-form::t _%$args132928%_)))
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
      (lambda _%$args132925%_
        (apply make-instance gx#special-form::t _%$args132925%_)))
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
      (lambda _%$args132922%_
        (apply make-instance gx#definition-form::t _%$args132922%_)))
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
      (lambda _%$args132919%_
        (apply make-instance gx#top-special-form::t _%$args132919%_)))
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
      (lambda _%$args132916%_
        (apply make-instance gx#module-special-form::t _%$args132916%_)))
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
      (lambda _%$args132913%_
        (apply make-instance gx#feature-expander::t _%$args132913%_)))
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
      (lambda _%$args132910%_
        (apply make-instance gx#private-feature-expander::t _%$args132910%_)))
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
      (lambda _%$args132907%_
        (apply make-instance gx#reserved-expander::t _%$args132907%_)))
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
      (lambda _%$args132904%_
        (apply make-instance gx#macro-expander::t _%$args132904%_)))
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
      (lambda _%$args132901%_
        (apply make-instance gx#rename-macro-expander::t _%$args132901%_)))
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
      (lambda _%$args132898%_
        (apply make-instance gx#user-expander::t _%$args132898%_)))
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
      (lambda _%$args132895%_
        (apply make-instance gx#expander-mark::t _%$args132895%_)))
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
      (lambda (_%ctx132879%_
               _%message132880%_
               _%stx132881%_
               .
               _%details132882%_)
        (let ((_%ctx132893%_
               (let ((_%$e132884%_ _%ctx132879%_))
                 (if _%$e132884%_
                     _%$e132884%_
                     (let ((_%$e132887%_ (gx#core-context-top__0)))
                       (if _%$e132887%_
                           ((lambda (_%ctx132890%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx132890%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e132887%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message132880%_
                  (cons _%stx132881%_ _%details132882%_)
                  _%ctx132893%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx132866%_ _%expression?132867%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx132866%_ _%expression?132867%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx132872%_)
        (let ((_%expression?132874%_ '#f))
          (gx#eval-syntax__% _%stx132872%_ _%expression?132874%_))))
    (define gx#eval-syntax
      (lambda _g133325_
        (let ((_g133326_ (##length _g133325_)))
          (cond ((##fx= _g133326_ 1) (apply gx#eval-syntax__0 _g133325_))
                ((##fx= _g133326_ 2) (apply gx#eval-syntax__% _g133325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g133325_))))))
    (define gx#eval-syntax*
      (lambda (_%stx132863%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx132863%_))))
    (define gx#core-expand__%
      (lambda (_%stx132850%_ _%expression?132851%_)
        (if _%expression?132851%_
            (gx#core-expand-expression _%stx132850%_)
            (gx#core-expand-top _%stx132850%_))))
    (define gx#core-expand__0
      (lambda (_%stx132856%_)
        (let ((_%expression?132858%_ '#f))
          (gx#core-expand__% _%stx132856%_ _%expression?132858%_))))
    (define gx#core-expand
      (lambda _g133327_
        (let ((_g133328_ (##length _g133327_)))
          (cond ((##fx= _g133328_ 1) (apply gx#core-expand__0 _g133327_))
                ((##fx= _g133328_ 2) (apply gx#core-expand__% _g133327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g133327_))))))
    (define gx#core-expand-top
      (lambda (_%stx132817%_)
        (let* ((_%stx132819%_ (gx#core-expand*__0 _%stx132817%_))
               (_%e132820132827%_ _%stx132819%_)
               (_%E132822132831%_
                (lambda () (gx#core-expand-expression _%stx132819%_)))
               (_%E132821132845%_
                (lambda ()
                  (if (gx#stx-pair? _%e132820132827%_)
                      (let ((_%e132823132835%_
                             (gx#syntax-e _%e132820132827%_)))
                        (let ((_%hd132824132838%_ (##car _%e132823132835%_))
                              (_%tl132825132840%_ (##cdr _%e132823132835%_)))
                          (let ((_%form132843%_ _%hd132824132838%_))
                            (if (gx#core-bound-identifier?__0 _%form132843%_)
                                _%stx132819%_
                                (_%E132822132831%_)))))
                      (_%E132822132831%_)))))
          (_%E132821132845%_))))
    (define gx#core-expand-expression
      (lambda (_%stx132749%_)
        (letrec ((_%sealed-expression?132751%_
                  (lambda (_%hd132787%_)
                    (if (gx#sealed-syntax? _%hd132787%_)
                        (let* ((_%e132788132795%_ _%hd132787%_)
                               (_%E132790132799%_ (lambda () '#f))
                               (_%E132789132813%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e132788132795%_)
                                      (let ((_%e132791132803%_
                                             (gx#syntax-e _%e132788132795%_)))
                                        (let ((_%hd132792132806%_
                                               (##car _%e132791132803%_))
                                              (_%tl132793132808%_
                                               (##cdr _%e132791132803%_)))
                                          (let ((_%form132811%_
                                                 _%hd132792132806%_))
                                            (gx#core-bound-identifier?__%
                                             _%form132811%_
                                             gx#expression-form-binding?))))
                                      (_%E132790132799%_)))))
                          (_%E132789132813%_))
                        '#f)))
                 (_%illegal-expression132752%_
                  (lambda (_%hd132784%_ . _%_132785%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx132749%_
                     _%hd132784%_)))
                 (_%expand-e132753%_
                  (lambda (_%form132776%_ _%hd132777%_)
                    (let ((_%bind132779%_
                           (if (##structure-instance-of?
                                _%form132776%_
                                'gx#binding::t)
                               _%form132776%_
                               (gx#resolve-identifier__0 _%form132776%_))))
                      (if (gx#core-expander-binding? _%bind132779%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind132779%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd132777%_
                            (gx#stx-source _%stx132749%_)))
                          (if (##structure-direct-instance-of?
                               _%bind132779%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind132779%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd132777%_
                                 (gx#stx-source _%stx132749%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx132749%_
                               _%form132776%_)))))))
          (let ((_%hd132755%_ (gx#core-expand-head _%stx132749%_)))
            (if (_%sealed-expression?132751%_ _%hd132755%_)
                _%hd132755%_
                (if (gx#stx-pair? _%hd132755%_)
                    (let* ((_%form132759%_ (gx#stx-car _%hd132755%_))
                           (_%bind132761%_
                            (if (gx#identifier? _%form132759%_)
                                (gx#resolve-identifier__0 _%form132759%_)
                                '#f)))
                      (if (or (not _%bind132761%_)
                              (not (gx#core-expander-binding? _%bind132761%_)))
                          (_%expand-e132753%_
                           '%%app
                           (cons '%%app _%hd132755%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind132761%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd132755%_
                               _%illegal-expression132752%_)
                              (if (gx#expression-form-binding? _%bind132761%_)
                                  (_%expand-e132753%_
                                   _%bind132761%_
                                   _%hd132755%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind132761%_)
                                      (gx#core-expand-expression
                                       (_%expand-e132753%_
                                        _%bind132761%_
                                        _%hd132755%_))
                                      (_%illegal-expression132752%_
                                       _%hd132755%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd132755%_)
                        (_%illegal-expression132752%_ _%hd132755%_)
                        (if (gx#identifier? _%hd132755%_)
                            (_%expand-e132753%_
                             '%%ref
                             (cons '%%ref (cons _%hd132755%_ '())))
                            (if (gx#stx-datum? _%hd132755%_)
                                (_%expand-e132753%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd132755%_ '())))
                                (_%illegal-expression132752%_
                                 _%hd132755%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx132744%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx132747%_ (gx#core-expand-expression _%stx132744%_)))
             (values _%stx132747%_ (gx#eval-syntax* _%stx132747%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx132725%_ _%stop?132726%_)
        (let _%lp132728%_ ((_%stx132730%_ _%stx132725%_))
          (if (_%stop?132726%_ _%stx132730%_)
              _%stx132730%_
              (let ((_%rstx132732%_ (gx#core-expand1 _%stx132730%_)))
                (if (eq? _%stx132730%_ _%rstx132732%_)
                    _%stx132730%_
                    (_%lp132728%_ _%rstx132732%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx132737%_)
        (let ((_%stop?132739%_ false))
          (gx#core-expand*__% _%stx132737%_ _%stop?132739%_))))
    (define gx#core-expand*
      (lambda _g133329_
        (let ((_g133330_ (##length _g133329_)))
          (cond ((##fx= _g133330_ 1) (apply gx#core-expand*__0 _g133329_))
                ((##fx= _g133330_ 2) (apply gx#core-expand*__% _g133329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g133329_))))))
    (define gx#core-expand1
      (lambda (_%stx132677%_)
        (letrec ((_%step132679%_
                  (lambda (_%hd132716%_)
                    (let ((_%bind132718%_
                           (gx#resolve-identifier__0 _%hd132716%_)))
                      (if (##structure-instance-of?
                           _%bind132718%_
                           'gx#runtime-binding::t)
                          _%stx132677%_
                          (if (##structure-direct-instance-of?
                               _%bind132718%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind132718%_
                                '4
                                '#f
                                '#f)
                               _%stx132677%_)
                              (if (not _%bind132718%_)
                                  _%stx132677%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx132677%_))))))))
          (let* ((_%e132680132688%_ _%stx132677%_)
                 (_%E132686132692%_ (lambda () _%stx132677%_))
                 (_%E132682132698%_
                  (lambda ()
                    (let ((_%hd132696%_ _%e132680132688%_))
                      (if (gx#identifier? _%hd132696%_)
                          (_%step132679%_ _%hd132696%_)
                          (_%E132686132692%_)))))
                 (_%E132681132712%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132680132688%_)
                        (let ((_%e132683132702%_
                               (gx#syntax-e _%e132680132688%_)))
                          (let ((_%hd132684132705%_ (##car _%e132683132702%_))
                                (_%tl132685132707%_ (##cdr _%e132683132702%_)))
                            (let ((_%hd132710%_ _%hd132684132705%_))
                              (if (gx#identifier? _%hd132710%_)
                                  (_%step132679%_ _%hd132710%_)
                                  (_%E132682132698%_)))))
                        (_%E132682132698%_)))))
            (_%E132681132712%_)))))
    (define gx#core-expand-head
      (lambda (_%stx132643%_)
        (letrec ((_%stop?132645%_
                  (lambda (_%stx132647%_)
                    (let* ((_%e132648132655%_ _%stx132647%_)
                           (_%E132650132659%_ (lambda () '#f))
                           (_%E132649132673%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132648132655%_)
                                  (let ((_%e132651132663%_
                                         (gx#syntax-e _%e132648132655%_)))
                                    (let ((_%hd132652132666%_
                                           (##car _%e132651132663%_))
                                          (_%tl132653132668%_
                                           (##cdr _%e132651132663%_)))
                                      (let ((_%hd132671%_ _%hd132652132666%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd132671%_))))
                                  (_%E132650132659%_)))))
                      (_%E132649132673%_)))))
          (gx#core-expand*__% _%stx132643%_ _%stop?132645%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx132449%_
               _%expand-special132450%_
               _%begin-form132451%_
               _%expand-e132452%_)
        (letrec ((_%expand-splice132454%_
                  (lambda (_%hd132617%_
                           _%body132618%_
                           _%rest132619%_
                           _%r132620%_)
                    (if (gx#stx-list? _%body132618%_)
                        (_%K132458%_
                         (gx#stx-foldr cons _%rest132619%_ _%body132618%_)
                         _%r132620%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx132449%_
                         _%hd132617%_))))
                 (_%expand-cond-expand132455%_
                  (lambda (_%hd132613%_ _%rest132614%_ _%r132615%_)
                    (_%K132458%_
                     (cons (gx#core-expand-cond-expand% _%hd132613%_)
                           _%rest132614%_)
                     _%r132615%_)))
                 (_%expand-include132456%_
                  (lambda (_%hd132562%_ _%rest132563%_ _%r132564%_)
                    (let* ((_%e132565132575%_ _%hd132562%_)
                           (_%E132567132579%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132565132575%_)))
                           (_%E132566132609%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132565132575%_)
                                  (let ((_%e132568132583%_
                                         (gx#syntax-e _%e132565132575%_)))
                                    (let ((_%hd132569132586%_
                                           (##car _%e132568132583%_))
                                          (_%tl132570132588%_
                                           (##cdr _%e132568132583%_)))
                                      (if (gx#stx-pair? _%tl132570132588%_)
                                          (let ((_%e132571132591%_
                                                 (gx#syntax-e
                                                  _%tl132570132588%_)))
                                            (let ((_%hd132572132594%_
                                                   (##car _%e132571132591%_))
                                                  (_%tl132573132596%_
                                                   (##cdr _%e132571132591%_)))
                                              (let ((_%path132599%_
                                                     _%hd132572132594%_))
                                                (if (gx#stx-null?
                                                     _%tl132573132596%_)
                                                    (if (gx#stx-string?
                                                         _%path132599%_)
                                                        (let* ((_%rpath132601%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path132599%_
                         (gx#stx-source _%hd132562%_)))
                       (_%block132603%_
                        (gx#core-expand-include%__%
                         _%hd132562%_
                         _%rpath132601%_))
                       (_%rbody132606%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block132603%_
                            _%expand-special132450%_
                            '#f
                            _%expand-e132452%_))
                         gx#current-expander-path
                         (cons _%rpath132601%_ (gx#current-expander-path)))))
                  (_%K132458%_
                   _%rest132563%_
                   (__foldr1 cons _%r132564%_ _%rbody132606%_)))
                (_%E132567132579%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132567132579%_)))))
                                          (_%E132567132579%_))))
                                  (_%E132567132579%_)))))
                      (_%E132566132609%_))))
                 (_%expand-expression132457%_
                  (lambda (_%hd132558%_ _%rest132559%_ _%r132560%_)
                    (_%K132458%_
                     _%rest132559%_
                     (cons (_%expand-e132452%_ _%hd132558%_) _%r132560%_))))
                 (_%K132458%_
                  (lambda (_%rest132488%_ _%r132489%_)
                    (let* ((_%e132490132497%_ _%rest132488%_)
                           (_%E132492132501%_
                            (lambda ()
                              (if _%begin-form132451%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form132451%_
                                    (reverse _%r132489%_))
                                   (gx#stx-source _%stx132449%_))
                                  _%r132489%_)))
                           (_%E132491132554%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132490132497%_)
                                  (let ((_%e132493132505%_
                                         (gx#syntax-e _%e132490132497%_)))
                                    (let ((_%hd132494132508%_
                                           (##car _%e132493132505%_))
                                          (_%tl132495132510%_
                                           (##cdr _%e132493132505%_)))
                                      (let* ((_%hd132513%_ _%hd132494132508%_)
                                             (_%rest132515%_
                                              _%tl132495132510%_)
                                             (_%hd132517%_
                                              (gx#core-expand-head
                                               _%hd132513%_))
                                             (_%e132518132525%_ _%hd132517%_)
                                             (_%E132520132529%_
                                              (lambda ()
                                                (_%expand-expression132457%_
                                                 _%hd132517%_
                                                 _%rest132515%_
                                                 _%r132489%_)))
                                             (_%E132519132550%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132518132525%_)
                                                    (let ((_%e132521132533%_
                                                           (gx#syntax-e
                                                            _%e132518132525%_)))
                                                      (let ((_%hd132522132536%_
                                                             (##car _%e132521132533%_))
                                                            (_%tl132523132538%_
                                                             (##cdr _%e132521132533%_)))
                                                        (let* ((_%form132541%_
                                                                _%hd132522132536%_)
                                                               (_%body132543%_
                                                                _%tl132523132538%_)
                                                               (_%bind132545%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form132541%_)
                            (gx#resolve-identifier__0 _%form132541%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind132545%_)
                      (let ((_%$e132547%_
                             (##unchecked-structure-ref
                              _%bind132545%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e132547%_)
                            (_%expand-splice132454%_
                             _%hd132517%_
                             _%body132543%_
                             _%rest132515%_
                             _%r132489%_)
                            (if (eq? '%#cond-expand _%$e132547%_)
                                (_%expand-cond-expand132455%_
                                 _%hd132517%_
                                 _%rest132515%_
                                 _%r132489%_)
                                (if (eq? '%#include _%$e132547%_)
                                    (_%expand-include132456%_
                                     _%hd132517%_
                                     _%rest132515%_
                                     _%r132489%_)
                                    (_%expand-special132450%_
                                     _%hd132517%_
                                     _%K132458%_
                                     _%rest132515%_
                                     _%r132489%_)))))
                      (_%expand-expression132457%_
                       _%hd132517%_
                       _%rest132515%_
                       _%r132489%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132520132529%_)))))
                                        (_%E132519132550%_))))
                                  (_%E132492132501%_)))))
                      (_%E132491132554%_)))))
          (let* ((_%e132459132466%_ _%stx132449%_)
                 (_%E132461132470%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132459132466%_)))
                 (_%E132460132484%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132459132466%_)
                        (let ((_%e132462132474%_
                               (gx#syntax-e _%e132459132466%_)))
                          (let ((_%hd132463132477%_ (##car _%e132462132474%_))
                                (_%tl132464132479%_ (##cdr _%e132462132474%_)))
                            (let ((_%body132482%_ _%tl132464132479%_))
                              (if (gx#stx-list? _%body132482%_)
                                  (_%K132458%_ _%body132482%_ '())
                                  (_%E132461132470%_)))))
                        (_%E132461132470%_)))))
            (_%E132460132484%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx132625%_ _%expand-special132626%_)
        (let* ((_%begin-form132628%_ '%#begin)
               (_%expand-e132630%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx132625%_
           _%expand-special132626%_
           _%begin-form132628%_
           _%expand-e132630%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx132632%_ _%expand-special132633%_ _%begin-form132634%_)
        (let ((_%expand-e132636%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx132632%_
           _%expand-special132633%_
           _%begin-form132634%_
           _%expand-e132636%_))))
    (define gx#core-expand-block
      (lambda _g133331_
        (let ((_g133332_ (##length _g133331_)))
          (cond ((##fx= _g133332_ 2) (apply gx#core-expand-block__0 _g133331_))
                ((##fx= _g133332_ 3) (apply gx#core-expand-block__1 _g133331_))
                ((##fx= _g133332_ 4) (apply gx#core-expand-block__% _g133331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g133331_))))))
    (define gx#core-expand-block*
      (lambda (_%stx132397%_ _%expand-special132398%_)
        (let* ((_%g132399132410%_
                (gx#core-expand-block__1
                 _%stx132397%_
                 _%expand-special132398%_
                 '#f))
               (_%E132403132414%_
                (lambda ()
                  (error '"No clause matching"
                         _%g132399132410%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K132408132445%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx132397%_)))
                (_%K132405132431%_ (lambda (_%expr132429%_) _%expr132429%_))
                (_%K132404132420%_
                 (lambda (_%body132418%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body132418%_))
                    (gx#stx-source _%stx132397%_)))))
            (let ((_%try-match132401132441%_
                   (lambda ()
                     (if (pair? _%g132399132410%_)
                         (let ((_%tl132407132436%_ (##cdr _%g132399132410%_))
                               (_%hd132406132434%_ (##car _%g132399132410%_)))
                           (if (null? _%tl132407132436%_)
                               (let ((_%expr132439%_ _%hd132406132434%_))
                                 (_%K132405132431%_ _%expr132439%_))
                               (let ((_%body132423%_ _%g132399132410%_))
                                 (_%K132404132420%_ _%body132423%_))))
                         (let ((_%body132423%_ _%g132399132410%_))
                           (_%K132404132420%_ _%body132423%_))))))
              (if (null? _%g132399132410%_)
                  (_%K132408132445%_)
                  (_%try-match132401132441%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx132222%_)
        (letrec ((_%satisfied?132224%_
                  (lambda (_%condition132325%_)
                    (let* ((_%e132326132341%_ _%condition132325%_)
                           (_%E132336132345%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132326132341%_)))
                           (_%E132329132364%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132326132341%_)
                                  (let ((_%e132337132349%_
                                         (gx#syntax-e _%e132326132341%_)))
                                    (let ((_%hd132338132352%_
                                           (##car _%e132337132349%_))
                                          (_%tl132339132354%_
                                           (##cdr _%e132337132349%_)))
                                      (let* ((_%combinator132357%_
                                              _%hd132338132352%_)
                                             (_%body132359%_
                                              _%tl132339132354%_))
                                        (if (gx#stx-list? _%body132359%_)
                                            (let ((_%$e132361%_
                                                   (gx#stx-e
                                                    _%combinator132357%_)))
                                              (if (eq? 'not _%$e132361%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?132224%_
                                                        _%body132359%_))
                                                  (if (eq? 'and _%$e132361%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?132224%_
                                                       _%body132359%_)
                                                      (if (eq? 'or
                                                               _%$e132361%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?132224%_
                                                           _%body132359%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132361%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body132359%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx132222%_
                       _%combinator132357%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E132336132345%_)))))
                                  (_%E132336132345%_))))
                           (_%E132328132387%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132326132341%_)
                                  (let ((_%e132330132368%_
                                         (gx#syntax-e _%e132326132341%_)))
                                    (let ((_%hd132331132371%_
                                           (##car _%e132330132368%_))
                                          (_%tl132332132373%_
                                           (##cdr _%e132330132368%_)))
                                      (if (and (gx#identifier?
                                                _%hd132331132371%_)
                                               (gx#core-identifier=?
                                                _%hd132331132371%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl132332132373%_)
                                              (let ((_%e132333132376%_
                                                     (gx#syntax-e
                                                      _%tl132332132373%_)))
                                                (let ((_%hd132334132379%_
                                                       (##car _%e132333132376%_))
                                                      (_%tl132335132381%_
                                                       (##cdr _%e132333132376%_)))
                                                  (let ((_%expr132384%_
                                                         _%hd132334132379%_))
                                                    (if (gx#stx-null?
                                                         _%tl132335132381%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr132384%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E132329132364%_)))))
                                              (_%E132329132364%_))
                                          (_%E132329132364%_))))
                                  (_%E132329132364%_))))
                           (_%E132327132393%_
                            (lambda ()
                              (let ((_%id132391%_ _%e132326132341%_))
                                (if (gx#identifier? _%id132391%_)
                                    (gx#core-bound-identifier?__%
                                     _%id132391%_
                                     gx#feature-binding?)
                                    (_%E132328132387%_))))))
                      (_%E132327132393%_))))
                 (_%loop132225%_
                  (lambda (_%rest132255%_)
                    (let* ((_%e132256132264%_ _%rest132255%_)
                           (_%E132262132268%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132256132264%_)))
                           (_%E132258132272%_
                            (lambda ()
                              (if (gx#stx-null? _%e132256132264%_)
                                  '()
                                  (_%E132262132268%_))))
                           (_%E132257132321%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132256132264%_)
                                  (let ((_%e132259132276%_
                                         (gx#syntax-e _%e132256132264%_)))
                                    (let ((_%hd132260132279%_
                                           (##car _%e132259132276%_))
                                          (_%tl132261132281%_
                                           (##cdr _%e132259132276%_)))
                                      (let* ((_%hd132284%_ _%hd132260132279%_)
                                             (_%rest132286%_
                                              _%tl132261132281%_)
                                             (_%e132287132294%_ _%hd132284%_)
                                             (_%E132289132298%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e132287132294%_)))
                                             (_%E132288132317%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132287132294%_)
                                                    (let ((_%e132290132302%_
                                                           (gx#syntax-e
                                                            _%e132287132294%_)))
                                                      (let ((_%hd132291132305%_
                                                             (##car _%e132290132302%_))
                                                            (_%tl132292132307%_
                                                             (##cdr _%e132290132302%_)))
                                                        (let* ((_%condition132310%_
                                                                _%hd132291132305%_)
                                                               (_%body132312%_
                                                                _%tl132292132307%_))
                                                          (if (gx#stx-eq?
                                                               _%condition132310%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest132286%_)
                          _%body132312%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx132222%_
                           _%hd132284%_))
                      (if (_%satisfied?132224%_ _%condition132310%_)
                          _%body132312%_
                          (_%loop132225%_ _%rest132286%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132289132298%_)))))
                                        (_%E132288132317%_))))
                                  (_%E132258132272%_)))))
                      (_%E132257132321%_)))))
          (let* ((_%e132226132233%_ _%stx132222%_)
                 (_%E132228132237%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132226132233%_)))
                 (_%E132227132251%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132226132233%_)
                        (let ((_%e132229132241%_
                               (gx#syntax-e _%e132226132233%_)))
                          (let ((_%hd132230132244%_ (##car _%e132229132241%_))
                                (_%tl132231132246%_ (##cdr _%e132229132241%_)))
                            (let ((_%clauses132249%_ _%tl132231132246%_))
                              (if (gx#stx-list? _%clauses132249%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop132225%_ _%clauses132249%_))
                                  (_%E132228132237%_)))))
                        (_%E132228132237%_)))))
            (_%E132227132251%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx132165%_ _%rpath132166%_)
        (let* ((_%e132167132177%_ _%stx132165%_)
               (_%E132169132181%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132167132177%_)))
               (_%E132168132208%_
                (lambda ()
                  (if (gx#stx-pair? _%e132167132177%_)
                      (let ((_%e132170132185%_
                             (gx#syntax-e _%e132167132177%_)))
                        (let ((_%hd132171132188%_ (##car _%e132170132185%_))
                              (_%tl132172132190%_ (##cdr _%e132170132185%_)))
                          (if (gx#stx-pair? _%tl132172132190%_)
                              (let ((_%e132173132193%_
                                     (gx#syntax-e _%tl132172132190%_)))
                                (let ((_%hd132174132196%_
                                       (##car _%e132173132193%_))
                                      (_%tl132175132198%_
                                       (##cdr _%e132173132193%_)))
                                  (let ((_%path132201%_ _%hd132174132196%_))
                                    (if (gx#stx-null? _%tl132175132198%_)
                                        (if (gx#stx-string? _%path132201%_)
                                            (let ((_%rpath132206%_
                                                   (let ((_%$e132203%_
                                                          _%rpath132166%_))
                                                     (if _%$e132203%_
                                                         _%$e132203%_
                                                         (gx#core-resolve-path__%
                                                          _%path132201%_
                                                          (gx#stx-source
                                                           _%stx132165%_))))))
                                              (if (member _%rpath132206%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx132165%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath132206%_))
                                                    (gx#stx-source
                                                     _%stx132165%_)))))
                                            (_%E132169132181%_))
                                        (_%E132169132181%_)))))
                              (_%E132169132181%_))))
                      (_%E132169132181%_)))))
          (_%E132168132208%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx132215%_)
        (let ((_%rpath132217%_ '#f))
          (gx#core-expand-include%__% _%stx132215%_ _%rpath132217%_))))
    (define gx#core-expand-include%
      (lambda _g133333_
        (let ((_g133334_ (##length _g133333_)))
          (cond ((##fx= _g133334_ 1)
                 (apply gx#core-expand-include%__0 _g133333_))
                ((##fx= _g133334_ 2)
                 (apply gx#core-expand-include%__% _g133333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g133333_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K132131%_ _%stx132132%_ _%method132133%_)
        (if (procedure? _%K132131%_)
            (let ((_%$e132136%_ (gx#stx-source _%stx132132%_)))
              (if _%$e132136%_
                  ((lambda (_%g132138132140%_)
                     (gx#stx-wrap-source
                      (_%K132131%_ _%stx132132%_)
                      _%g132138132140%_))
                   _%$e132136%_)
                  (_%K132131%_ _%stx132132%_)))
            (let ((_%$e132144%_
                   (bound-method-ref _%K132131%_ _%method132133%_)))
              (if _%$e132144%_
                  ((lambda (_%g132146132148%_)
                     (gx#core-apply-expander__%
                      _%g132146132148%_
                      _%stx132132%_
                      _%method132133%_))
                   _%$e132144%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx132132%_
                   _%method132133%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K132155%_ _%stx132156%_)
        (let ((_%method132158%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K132155%_
           _%stx132156%_
           _%method132158%_))))
    (define gx#core-apply-expander
      (lambda _g133335_
        (let ((_g133336_ (##length _g133335_)))
          (cond ((##fx= _g133336_ 2)
                 (apply gx#core-apply-expander__0 _g133335_))
                ((##fx= _g133336_ 3)
                 (apply gx#core-apply-expander__% _g133335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g133335_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self132116%_ _%stx132117%_)
        (let ((_%self132120%_ _%self132116%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx132117%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self131958%_ _%stx131959%_)
        (let* ((_%self131962%_ _%self131958%_)
               (_%self131971131977%_ _%self131962%_)
               (_%E131973131981%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131971131977%_
                         '((macro-expander K)))
                  '#!void))
               (_%K131974131986%_
                (lambda (_%K131984%_)
                  (gx#core-apply-expander__0 _%K131984%_ _%stx131959%_)))
               (_%e131975131989%_
                (##unchecked-structure-ref _%self131971131977%_ '1 '#f '#f))
               (_%K131992%_ _%e131975131989%_))
          (_%K131974131986%_ _%K131992%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self131800%_ _%stx131801%_)
        (let ((_%self131804%_ _%self131800%_))
          (if (gx#sealed-syntax? _%stx131801%_)
              _%stx131801%_
              (let* ((_%self131813131819%_ _%self131804%_)
                     (_%E131815131823%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self131813131819%_
                               '((core-expander K)))
                        '#!void))
                     (_%K131816131828%_
                      (lambda (_%K131826%_)
                        (gx#core-apply-expander__0 _%K131826%_ _%stx131801%_)))
                     (_%e131817131831%_
                      (##unchecked-structure-ref
                       _%self131813131819%_
                       '1
                       '#f
                       '#f))
                     (_%K131834%_ _%e131817131831%_))
                (_%K131816131828%_ _%K131834%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self131651%_ _%stx131652%_ _%top?131653%_)
        (let ((_%self131656%_ _%self131651%_))
          (if (_%top?131653%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self131656%_
               _%stx131652%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx131652%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self131669%_ _%stx131670%_)
        (let ((_%top?131672%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self131669%_
           _%stx131670%_
           _%top?131672%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g133337_
        (let ((_g133338_ (##length _g133337_)))
          (cond ((##fx= _g133338_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g133337_))
                ((##fx= _g133338_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g133337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g133337_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self131514%_ _%stx131515%_)
        (let ((_%self131518%_ _%self131514%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self131518%_
           _%stx131515%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self131328%_ _%stx131329%_)
        (let* ((_%self131332%_ _%self131328%_)
               (_%self131341131347%_ _%self131332%_)
               (_%E131343131351%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131341131347%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K131344131384%_
                (lambda (_%id131354%_)
                  (let* ((_%e131355131362%_ _%stx131329%_)
                         (_%E131357131366%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e131355131362%_)))
                         (_%E131356131380%_
                          (lambda ()
                            (if (gx#stx-pair? _%e131355131362%_)
                                (let ((_%e131358131370%_
                                       (gx#syntax-e _%e131355131362%_)))
                                  (let ((_%hd131359131373%_
                                         (##car _%e131358131370%_))
                                        (_%tl131360131375%_
                                         (##cdr _%e131358131370%_)))
                                    (let ((_%body131378%_ _%tl131360131375%_))
                                      (gx#core-cons
                                       _%id131354%_
                                       _%body131378%_))))
                                (_%E131357131366%_)))))
                    (_%E131356131380%_))))
               (_%e131345131387%_
                (##unchecked-structure-ref _%self131341131347%_ '1 '#f '#f))
               (_%id131390%_ _%e131345131387%_))
          (_%K131344131384%_ _%id131390%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self131154%_ _%stx131155%_ _%method131156%_)
        (let* ((_%self131157131165%_ _%self131154%_)
               (_%E131159131169%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131157131165%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K131160131176%_
                (lambda (_%phi131172%_ _%ctx131173%_ _%K131174%_)
                  (gx#core-apply-user-macro
                   _%K131174%_
                   _%stx131155%_
                   _%ctx131173%_
                   _%phi131172%_
                   _%method131156%_))))
          (if (##structure-instance-of?
               _%self131157131165%_
               'gx#user-expander::t)
              (let* ((_%e131161131179%_
                      (##unchecked-structure-ref
                       _%self131157131165%_
                       '1
                       '#f
                       '#f))
                     (_%K131182%_ _%e131161131179%_)
                     (_%e131162131184%_
                      (##unchecked-structure-ref
                       _%self131157131165%_
                       '2
                       '#f
                       '#f))
                     (_%ctx131187%_ _%e131162131184%_)
                     (_%e131163131189%_
                      (##unchecked-structure-ref
                       _%self131157131165%_
                       '3
                       '#f
                       '#f))
                     (_%phi131192%_ _%e131163131189%_))
                (_%K131160131176%_ _%phi131192%_ _%ctx131187%_ _%K131182%_))
              (_%E131159131169%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self131197%_ _%stx131198%_)
        (let ((_%method131200%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self131197%_
           _%stx131198%_
           _%method131200%_))))
    (define gx#core-apply-user-expander
      (lambda _g133339_
        (let ((_g133340_ (##length _g133339_)))
          (cond ((##fx= _g133340_ 2)
                 (apply gx#core-apply-user-expander__0 _g133339_))
                ((##fx= _g133340_ 3)
                 (apply gx#core-apply-user-expander__% _g133339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g133339_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K131144%_
               _%stx131145%_
               _%ctx131146%_
               _%phi131147%_
               _%method131148%_)
        (let ((_%mark131150%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx131146%_
                _%phi131147%_
                _%stx131145%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K131144%_
               (gx#stx-apply-mark _%stx131145%_ _%mark131150%_)
               _%method131148%_)
              _%mark131150%_))
           gx#current-expander-marks
           (cons _%mark131150%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx130992%_ _%phi130993%_ _%ctx130994%_)
        (let _%lp130996%_ ((_%bind130998%_
                            (gx#core-resolve-identifier__%
                             _%stx130992%_
                             _%phi130993%_
                             _%ctx130994%_)))
          (if (##structure-direct-instance-of?
               _%bind130998%_
               'gx#import-binding::t)
              (_%lp130996%_
               (##unchecked-structure-ref _%bind130998%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind130998%_
                   'gx#alias-binding::t)
                  (_%lp130996%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind130998%_ '4 '#f '#f)
                    _%phi130993%_
                    _%ctx130994%_))
                  _%bind130998%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx131006%_)
        (let* ((_%phi131008%_ (gx#current-expander-phi))
               (_%ctx131010%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx131006%_
           _%phi131008%_
           _%ctx131010%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx131012%_ _%phi131013%_)
        (let ((_%ctx131015%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx131012%_
           _%phi131013%_
           _%ctx131015%_))))
    (define gx#resolve-identifier
      (lambda _g133341_
        (let ((_g133342_ (##length _g133341_)))
          (cond ((##fx= _g133342_ 1)
                 (apply gx#resolve-identifier__0 _g133341_))
                ((##fx= _g133342_ 2)
                 (apply gx#resolve-identifier__1 _g133341_))
                ((##fx= _g133342_ 3)
                 (apply gx#resolve-identifier__% _g133341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g133341_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx130947%_
               _%val130948%_
               _%rebind?130949%_
               _%phi130950%_
               _%ctx130951%_)
        (let ((_%rebind?130956%_
               (if (not _%rebind?130949%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?130949%_)
                       _%rebind?130949%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx130947%_)
           _%val130948%_
           _%rebind?130956%_
           _%phi130950%_
           _%ctx130951%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx130961%_ _%val130962%_)
        (let* ((_%rebind?130964%_ '#f)
               (_%phi130966%_ (gx#current-expander-phi))
               (_%ctx130968%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx130961%_
           _%val130962%_
           _%rebind?130964%_
           _%phi130966%_
           _%ctx130968%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx130970%_ _%val130971%_ _%rebind?130972%_)
        (let* ((_%phi130974%_ (gx#current-expander-phi))
               (_%ctx130976%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx130970%_
           _%val130971%_
           _%rebind?130972%_
           _%phi130974%_
           _%ctx130976%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx130978%_ _%val130979%_ _%rebind?130980%_ _%phi130981%_)
        (let ((_%ctx130983%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx130978%_
           _%val130979%_
           _%rebind?130980%_
           _%phi130981%_
           _%ctx130983%_))))
    (define gx#bind-identifier!
      (lambda _g133343_
        (let ((_g133344_ (##length _g133343_)))
          (cond ((##fx= _g133344_ 2) (apply gx#bind-identifier!__0 _g133343_))
                ((##fx= _g133344_ 3) (apply gx#bind-identifier!__1 _g133343_))
                ((##fx= _g133344_ 4) (apply gx#bind-identifier!__2 _g133343_))
                ((##fx= _g133344_ 5) (apply gx#bind-identifier!__% _g133343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g133343_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx130913%_ _%phi130914%_ _%ctx130915%_)
        (let _%lp130917%_ ((_%e130919%_ _%stx130913%_)
                           (_%marks130920%_ (gx#current-expander-marks)))
          (if (symbol? _%e130919%_)
              (gx#core-resolve-binding
               _%e130919%_
               _%phi130914%_
               _%phi130914%_
               _%ctx130915%_
               (reverse _%marks130920%_))
              (if (gx#identifier-quote? _%e130919%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e130919%_ '1 '#f '#f)
                   _%phi130914%_
                   '0
                   (##unchecked-structure-ref _%e130919%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e130919%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e130919%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e130919%_ '1 '#f '#f)
                       _%phi130914%_
                       _%phi130914%_
                       _%ctx130915%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e130919%_ '3 '#f '#f)
                        _%marks130920%_))
                      (if (##structure-direct-instance-of?
                           _%e130919%_
                           'gx#syntax-wrap::t)
                          (_%lp130917%_
                           (##unchecked-structure-ref _%e130919%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e130919%_ '3 '#f '#f)
                            _%marks130920%_))
                          (if (##structure-instance-of?
                               _%e130919%_
                               'gerbil#AST::t)
                              (_%lp130917%_
                               (##unchecked-structure-ref
                                _%e130919%_
                                '1
                                '#f
                                '#f)
                               _%marks130920%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx130913%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx130931%_)
        (let* ((_%phi130933%_ (gx#current-expander-phi))
               (_%ctx130935%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx130931%_
           _%phi130933%_
           _%ctx130935%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx130937%_ _%phi130938%_)
        (let ((_%ctx130940%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx130937%_
           _%phi130938%_
           _%ctx130940%_))))
    (define gx#core-resolve-identifier
      (lambda _g133345_
        (let ((_g133346_ (##length _g133345_)))
          (cond ((##fx= _g133346_ 1)
                 (apply gx#core-resolve-identifier__0 _g133345_))
                ((##fx= _g133346_ 2)
                 (apply gx#core-resolve-identifier__1 _g133345_))
                ((##fx= _g133346_ 3)
                 (apply gx#core-resolve-identifier__% _g133345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g133345_))))))
    (define gx#core-resolve-binding
      (lambda (_%id130823%_
               _%phi130824%_
               _%src-phi130825%_
               _%ctx130826%_
               _%marks130827%_)
        (letrec ((_%resolve130829%_
                  (lambda (_%ctx130897%_ _%src-phi130898%_ _%key130899%_)
                    (let _%lp130901%_ ((_%ctx130903%_
                                        (gx#core-context-shift
                                         _%ctx130897%_
                                         _%phi130824%_))
                                       (_%dphi130904%_
                                        (fx- _%phi130824%_ _%src-phi130898%_)))
                      (let ((_%$e130906%_
                             (gx#core-context-resolve
                              _%ctx130903%_
                              _%key130899%_)))
                        (if _%$e130906%_
                            _%$e130906%_
                            (if (fxzero? _%dphi130904%_)
                                '#f
                                (if (fxpositive? _%dphi130904%_)
                                    (_%lp130901%_
                                     (gx#core-context-shift _%ctx130903%_ '-1)
                                     (##fx- _%dphi130904%_ '1))
                                    (_%lp130901%_
                                     (gx#core-context-shift _%ctx130903%_ '1)
                                     (##fx+ _%dphi130904%_ '1))))))))))
          (let _%lp130831%_ ((_%ctx130833%_ _%ctx130826%_)
                             (_%src-phi130834%_ _%src-phi130825%_)
                             (_%rest130835%_ _%marks130827%_))
            (let* ((_%rest130836130844%_ _%rest130835%_)
                   (_%else130838130852%_
                    (lambda ()
                      (_%resolve130829%_
                       _%ctx130833%_
                       _%src-phi130834%_
                       _%id130823%_)))
                   (_%K130840130885%_
                    (lambda (_%rest130855%_ _%hd130856%_)
                      (let* ((_%hd130857130863%_ _%hd130856%_)
                             (_%E130859130867%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd130857130863%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K130860130877%_
                              (lambda (_%subst130870%_)
                                (let ((_%$e130874%_
                                       (let ((_%key130872%_
                                              (if _%subst130870%_
                                                  (hash-get
                                                   _%subst130870%_
                                                   _%id130823%_)
                                                  '#f)))
                                         (if _%key130872%_
                                             (_%resolve130829%_
                                              _%ctx130833%_
                                              _%src-phi130834%_
                                              _%key130872%_)
                                             '#f))))
                                  (if _%$e130874%_
                                      _%$e130874%_
                                      (_%lp130831%_
                                       (##unchecked-structure-ref
                                        _%hd130856%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd130856%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest130855%_))))))
                        (if (##structure-instance-of?
                             _%hd130857130863%_
                             'gx#expander-mark::t)
                            (let* ((_%e130861130880%_
                                    (##unchecked-structure-ref
                                     _%hd130857130863%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst130883%_ _%e130861130880%_))
                              (_%K130860130877%_ _%subst130883%_))
                            (_%E130859130867%_))))))
              (if (pair? _%rest130836130844%_)
                  (let ((_%hd130841130888%_ (##car _%rest130836130844%_))
                        (_%tl130842130890%_ (##cdr _%rest130836130844%_)))
                    (let* ((_%hd130893%_ _%hd130841130888%_)
                           (_%rest130895%_ _%tl130842130890%_))
                      (_%K130840130885%_ _%rest130895%_ _%hd130893%_)))
                  (_%else130838130852%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key130693%_
               _%val130694%_
               _%rebind?130695%_
               _%phi130696%_
               _%ctx130697%_)
        (letrec ((_%update-binding130699%_
                  (lambda (_%xval130772%_)
                    (if (or (_%rebind?130695%_
                             _%ctx130697%_
                             _%xval130772%_
                             _%val130694%_)
                            (and (##structure-direct-instance-of?
                                  _%xval130772%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval130772%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val130694%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val130694%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval130772%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val130694%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val130694%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval130772%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val130694%_
                        (if (and (##structure-direct-instance-of?
                                  _%val130694%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val130694%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval130772%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val130694%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval130772%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval130772%_
                            (if (and (##structure-direct-instance-of?
                                      _%val130694%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval130772%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key130693%_
                                 (cons (##unchecked-structure-ref
                                        _%val130694%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val130694%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval130772%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval130772%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval130772%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval130772%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key130693%_
                                 _%val130694%_
                                 _%xval130772%_))))))
                 (_%gensubst130700%_
                  (lambda (_%subst130767%_ _%id130768%_)
                    (let ((_%eid130770%_
                           (gensym (if (uninterned-symbol? _%id130768%_)
                                       '%
                                       _%id130768%_))))
                      (hash-put! _%subst130767%_ _%id130768%_ _%eid130770%_)
                      _%eid130770%_)))
                 (_%subst!130701%_
                  (lambda (_%key130703%_)
                    (let* ((_%key130704130712%_ _%key130703%_)
                           (_%else130706130720%_ (lambda () _%key130703%_))
                           (_%K130708130755%_
                            (lambda (_%mark130723%_ _%id130724%_)
                              (let* ((_%mark130725130731%_ _%mark130723%_)
                                     (_%E130727130735%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark130725130731%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K130728130747%_
                                      (lambda (_%subst130738%_)
                                        (if (not _%subst130738%_)
                                            (let ((_%subst130741%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark130723%_
                                               _%subst130741%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst130700%_
                                               _%subst130741%_
                                               _%id130724%_))
                                            (let ((_%$e130743%_
                                                   (hash-get
                                                    _%subst130738%_
                                                    _%id130724%_)))
                                              (if _%$e130743%_
                                                  _%$e130743%_
                                                  (_%gensubst130700%_
                                                   _%subst130738%_
                                                   _%id130724%_)))))))
                                (if (##structure-instance-of?
                                     _%mark130725130731%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e130729130750%_
                                            (##unchecked-structure-ref
                                             _%mark130725130731%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst130753%_ _%e130729130750%_))
                                      (_%K130728130747%_ _%subst130753%_))
                                    (_%E130727130735%_))))))
                      (if (pair? _%key130704130712%_)
                          (let ((_%hd130709130758%_
                                 (##car _%key130704130712%_))
                                (_%tl130710130760%_
                                 (##cdr _%key130704130712%_)))
                            (let* ((_%id130763%_ _%hd130709130758%_)
                                   (_%mark130765%_ _%tl130710130760%_))
                              (_%K130708130755%_ _%mark130765%_ _%id130763%_)))
                          (_%else130706130720%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx130697%_ _%phi130696%_)
           (_%subst!130701%_ _%key130693%_)
           _%val130694%_
           _%update-binding130699%_))))
    (define gx#core-bind!__0
      (lambda (_%key130793%_ _%val130794%_)
        (let* ((_%rebind?130796%_ false)
               (_%phi130798%_ (gx#current-expander-phi))
               (_%ctx130800%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key130793%_
           _%val130794%_
           _%rebind?130796%_
           _%phi130798%_
           _%ctx130800%_))))
    (define gx#core-bind!__1
      (lambda (_%key130802%_ _%val130803%_ _%rebind?130804%_)
        (let* ((_%phi130806%_ (gx#current-expander-phi))
               (_%ctx130808%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key130802%_
           _%val130803%_
           _%rebind?130804%_
           _%phi130806%_
           _%ctx130808%_))))
    (define gx#core-bind!__2
      (lambda (_%key130810%_ _%val130811%_ _%rebind?130812%_ _%phi130813%_)
        (let ((_%ctx130815%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key130810%_
           _%val130811%_
           _%rebind?130812%_
           _%phi130813%_
           _%ctx130815%_))))
    (define gx#core-bind!
      (lambda _g133347_
        (let ((_g133348_ (##length _g133347_)))
          (cond ((##fx= _g133348_ 2) (apply gx#core-bind!__0 _g133347_))
                ((##fx= _g133348_ 3) (apply gx#core-bind!__1 _g133347_))
                ((##fx= _g133348_ 4) (apply gx#core-bind!__2 _g133347_))
                ((##fx= _g133348_ 5) (apply gx#core-bind!__% _g133347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g133347_))))))
    (define gx#core-identifier-key
      (lambda (_%stx130624%_)
        (if (symbol? _%stx130624%_)
            (let* ((_%g130626130634%_ (gx#current-expander-marks))
                   (_%else130628130642%_ (lambda () _%stx130624%_))
                   (_%K130630130647%_
                    (lambda (_%hd130645%_) (cons _%stx130624%_ _%hd130645%_))))
              (if (pair? _%g130626130634%_)
                  (let* ((_%hd130631130650%_ (##car _%g130626130634%_))
                         (_%hd130653%_ _%hd130631130650%_))
                    (_%K130630130647%_ _%hd130653%_))
                  (_%else130628130642%_)))
            (if (gx#identifier? _%stx130624%_)
                (let* ((_%id130656%_ (gx#syntax-local-unwrap _%stx130624%_))
                       (_%eid130658%_ (gx#stx-e _%id130656%_))
                       (_%marks130660%_
                        (gx#stx-identifier-marks* _%id130656%_))
                       (_%marks130662130670%_ _%marks130660%_)
                       (_%else130664130678%_ (lambda () _%eid130658%_))
                       (_%K130666130683%_
                        (lambda (_%hd130681%_)
                          (cons _%eid130658%_ _%hd130681%_))))
                  (if (pair? _%marks130662130670%_)
                      (let* ((_%hd130667130686%_ (##car _%marks130662130670%_))
                             (_%hd130689%_ _%hd130667130686%_))
                        (_%K130666130683%_ _%hd130689%_))
                      (_%else130664130678%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx130624%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx130563%_ _%phi130564%_)
        (letrec ((_%make-phi130566%_
                  (lambda (_%super130622%_)
                    (let ((__obj133320
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj133320
                       (##gensym 'phi)
                       _%super130622%_)
                      __obj133320)))
                 (_%make-phi/up130567%_
                  (lambda (_%ctx130617%_ _%super130618%_)
                    (let ((_%ctx+1130620%_
                           (_%make-phi130566%_ _%super130618%_)))
                      (##unchecked-structure-set!
                       _%ctx130617%_
                       _%ctx+1130620%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1130620%_
                       _%ctx130617%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1130620%_)))
                 (_%make-phi/down130568%_
                  (lambda (_%ctx130612%_ _%super130613%_)
                    (let ((_%ctx-1130615%_
                           (_%make-phi130566%_ _%super130613%_)))
                      (##unchecked-structure-set!
                       _%ctx-1130615%_
                       _%ctx130612%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx130612%_
                       _%ctx-1130615%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1130615%_)))
                 (_%shift130569%_
                  (lambda (_%ctx130595%_
                           _%delta130596%_
                           _%make-delta-context130597%_
                           _%phi130598%_
                           _%K130599%_)
                    (let ((_%$e130601%_
                           (##unchecked-structure-ref
                            _%ctx130595%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e130601%_
                          ((lambda (_%super130604%_)
                             (let* ((_%super130606%_
                                     (_%K130599%_
                                      _%super130604%_
                                      _%delta130596%_))
                                    (_%ctx+d130608%_
                                     (_%make-delta-context130597%_
                                      _%ctx130595%_
                                      _%super130606%_)))
                               (_%K130599%_
                                _%ctx+d130608%_
                                (fx- _%phi130598%_ _%delta130596%_))))
                           _%$e130601%_)
                          (error '"Bad context" _%ctx130595%_))))))
          (let _%K130571%_ ((_%ctx130573%_ _%ctx130563%_)
                            (_%phi130574%_ _%phi130564%_))
            (if (fxzero? _%phi130574%_)
                _%ctx130573%_
                (if (##structure-instance-of? _%ctx130573%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi130574%_)
                        (let ((_%$e130578%_
                               (##unchecked-structure-ref
                                _%ctx130573%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e130578%_
                              ((lambda (_%g130580130582%_)
                                 (_%K130571%_
                                  _%g130580130582%_
                                  (##fx- _%phi130574%_ '1)))
                               _%$e130578%_)
                              (_%shift130569%_
                               _%ctx130573%_
                               '1
                               _%make-phi/up130567%_
                               _%phi130574%_
                               _%K130571%_)))
                        (let ((_%$e130586%_
                               (##unchecked-structure-ref
                                _%ctx130573%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e130586%_
                              ((lambda (_%g130588130590%_)
                                 (_%K130571%_
                                  _%g130588130590%_
                                  (##fx+ _%phi130574%_ '1)))
                               _%$e130586%_)
                              (_%shift130569%_
                               _%ctx130573%_
                               '-1
                               _%make-phi/down130568%_
                               _%phi130574%_
                               _%K130571%_))))
                    _%ctx130573%_))))))
    (define gx#core-context-get
      (lambda (_%ctx130560%_ _%key130561%_)
        (hash-get
         (##unchecked-structure-ref _%ctx130560%_ '2 '#f '#f)
         _%key130561%_)))
    (define gx#core-context-put!
      (lambda (_%ctx130556%_ _%key130557%_ _%val130558%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx130556%_ '2 '#f '#f)
         _%key130557%_
         _%val130558%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx130542%_ _%key130543%_)
        (let _%lp130545%_ ((_%ctx130547%_ _%ctx130542%_))
          (let ((_%$e130549%_
                 (gx#core-context-get _%ctx130547%_ _%key130543%_)))
            (if _%$e130549%_
                _%$e130549%_
                (let ((_%$e130552%_
                       (if (##structure-instance-of?
                            _%ctx130547%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx130547%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e130552%_ (_%lp130545%_ _%$e130552%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx130531%_ _%key130532%_ _%val130533%_ _%rebind130534%_)
        (let ((_%$e130536%_ (gx#core-context-get _%ctx130531%_ _%key130532%_)))
          (if _%$e130536%_
              ((lambda (_%xval130539%_)
                 (gx#core-context-put!
                  _%ctx130531%_
                  _%key130532%_
                  (_%rebind130534%_ _%xval130539%_)))
               _%$e130536%_)
              (gx#core-context-put!
               _%ctx130531%_
               _%key130532%_
               _%val130533%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx130506%_ _%stop?130507%_)
        (let _%lp130509%_ ((_%ctx130511%_ _%ctx130506%_))
          (if (_%stop?130507%_ _%ctx130511%_)
              _%ctx130511%_
              (if (##structure-instance-of? _%ctx130511%_ 'gx#phi-context::t)
                  (_%lp130509%_
                   (##unchecked-structure-ref _%ctx130511%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx130520%_ (gx#current-expander-context))
               (_%stop?130522%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130520%_ _%stop?130522%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx130524%_)
        (let ((_%stop?130526%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130524%_ _%stop?130526%_))))
    (define gx#core-context-top
      (lambda _g133349_
        (let ((_g133350_ (##length _g133349_)))
          (cond ((##fx= _g133350_ 0) (apply gx#core-context-top__0 _g133349_))
                ((##fx= _g133350_ 1) (apply gx#core-context-top__1 _g133349_))
                ((##fx= _g133350_ 2) (apply gx#core-context-top__% _g133349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g133349_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx130491%_)
        (let _%lp130493%_ ((_%ctx130495%_ _%ctx130491%_))
          (if (##structure-instance-of? _%ctx130495%_ 'gx#phi-context::t)
              (_%lp130493%_
               (##unchecked-structure-ref _%ctx130495%_ '3 '#f '#f))
              _%ctx130495%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx130501%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx130501%_))))
    (define gx#core-context-root
      (lambda _g133351_
        (let ((_g133352_ (##length _g133351_)))
          (cond ((##fx= _g133352_ 0) (apply gx#core-context-root__0 _g133351_))
                ((##fx= _g133352_ 1) (apply gx#core-context-root__% _g133351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g133351_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx130473%_ . _%ignore130474%_)
        (let ((_%$e130476%_ (gx#current-expander-allow-rebind?)))
          (if _%$e130476%_
              _%$e130476%_
              (if (##structure-instance-of? _%ctx130473%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx130473%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx130473%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx130483%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx130483%_))))
    (define gx#core-context-rebind?
      (lambda _g133353_
        (let ((_g133354_ (##length _g133353_)))
          (cond ((##fx= _g133354_ 0)
                 (apply gx#core-context-rebind?__0 _g133353_))
                ((##fx= _g133354_ 1)
                 (apply gx#core-context-rebind?__% _g133353_))
                ((##fx>= _g133354_ 1)
                 (apply gx#core-context-rebind?__% _g133353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g133353_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx130456%_)
        (let ((_%$e130458%_ (gx#core-context-top__1 _%ctx130456%_)))
          (if _%$e130458%_
              ((lambda (_%ctx130461%_)
                 (if (##structure-instance-of?
                      _%ctx130461%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx130461%_ '6 '#f '#f)
                     '#f))
               _%$e130458%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx130468%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx130468%_))))
    (define gx#core-context-namespace
      (lambda _g133355_
        (let ((_g133356_ (##length _g133355_)))
          (cond ((##fx= _g133356_ 0)
                 (apply gx#core-context-namespace__0 _g133355_))
                ((##fx= _g133356_ 1)
                 (apply gx#core-context-namespace__% _g133355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g133355_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind130442%_ _%is?130443%_)
        (if (##structure-direct-instance-of?
             _%bind130442%_
             'gx#syntax-binding::t)
            (_%is?130443%_
             (##unchecked-structure-ref _%bind130442%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind130448%_)
        (let ((_%is?130450%_ gx#expander?))
          (gx#expander-binding?__% _%bind130448%_ _%is?130450%_))))
    (define gx#expander-binding?
      (lambda _g133357_
        (let ((_g133358_ (##length _g133357_)))
          (cond ((##fx= _g133358_ 1) (apply gx#expander-binding?__0 _g133357_))
                ((##fx= _g133358_ 2) (apply gx#expander-binding?__% _g133357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g133357_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind130439%_)
        (gx#expander-binding?__% _%bind130439%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind130437%_)
        (gx#expander-binding?__% _%bind130437%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind130431%_)
        (letrec ((_%direct-special-form?130433%_
                  (lambda (_%obj130435%_)
                    (##structure-direct-instance-of?
                     _%obj130435%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind130431%_
           _%direct-special-form?130433%_))))
    (define gx#special-form-binding?
      (lambda (_%bind130429%_)
        (gx#expander-binding?__% _%bind130429%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind130420%_)
        (letrec ((_%feature?130422%_
                  (lambda (_%e130424%_)
                    (let ((_%$e130426%_
                           (##structure-instance-of?
                            _%e130424%_
                            'gx#feature-expander::t)))
                      (if _%$e130426%_
                          _%$e130426%_
                          (##structure-instance-of?
                           _%e130424%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind130420%_ _%feature?130422%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind130418%_)
        (gx#expander-binding?__% _%bind130418%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id130405%_ _%bound?130406%_)
        (if (gx#identifier? _%id130405%_)
            (_%bound?130406%_ (gx#resolve-identifier__0 _%id130405%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id130411%_)
        (let ((_%bound?130413%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id130411%_ _%bound?130413%_))))
    (define gx#core-bound-identifier?
      (lambda _g133359_
        (let ((_g133360_ (##length _g133359_)))
          (cond ((##fx= _g133360_ 1)
                 (apply gx#core-bound-identifier?__0 _g133359_))
                ((##fx= _g133360_ 2)
                 (apply gx#core-bound-identifier?__% _g133359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g133359_))))))
    (define gx#core-identifier=?
      (lambda (_%x130395%_ _%y130396%_)
        (letrec ((_%y=?130398%_
                  (lambda (_%xid130402%_)
                    ((if (list? _%y130396%_) memq eq?)
                     _%xid130402%_
                     _%y130396%_))))
          (let ((_%bind130400%_ (gx#resolve-identifier__0 _%x130395%_)))
            (if (##structure-instance-of? _%bind130400%_ 'gx#binding::t)
                (_%y=?130398%_
                 (##unchecked-structure-ref _%bind130400%_ '1 '#f '#f))
                (_%y=?130398%_ (gx#stx-e _%x130395%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e130393%_)
        (if (interned-symbol? _%e130393%_)
            (string-index__0 (symbol->string _%e130393%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx130346%_ _%src130347%_ _%ctx130348%_ _%marks130349%_)
        (if (##structure? _%stx130346%_)
            (let ((_%$e130351%_ (gx#sealed-syntax-unwrap _%stx130346%_)))
              (if _%$e130351%_
                  _%$e130351%_
                  (if (gx#identifier? _%stx130346%_)
                      (let ((_%id130355%_
                             (gx#stx-unwrap__% _%stx130346%_ _%marks130349%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id130355%_ '1 '#f '#f)
                         (let ((_%$e130357%_
                                (##unchecked-structure-ref
                                 _%id130355%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e130357%_ _%$e130357%_ _%src130347%_))
                         _%ctx130348%_
                         (##unchecked-structure-ref _%id130355%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx130346%_)
                       (let ((_%$e130361%_ (gx#stx-source _%stx130346%_)))
                         (if _%$e130361%_ _%$e130361%_ _%src130347%_))
                       _%ctx130348%_
                       (reverse _%marks130349%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx130346%_
             _%src130347%_
             _%ctx130348%_
             (reverse _%marks130349%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx130367%_)
        (let* ((_%src130369%_ '#f)
               (_%ctx130371%_ (gx#current-expander-context))
               (_%marks130373%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130367%_
           _%src130369%_
           _%ctx130371%_
           _%marks130373%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx130375%_ _%src130376%_)
        (let* ((_%ctx130378%_ (gx#current-expander-context))
               (_%marks130380%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130375%_
           _%src130376%_
           _%ctx130378%_
           _%marks130380%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx130382%_ _%src130383%_ _%ctx130384%_)
        (let ((_%marks130386%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130382%_
           _%src130383%_
           _%ctx130384%_
           _%marks130386%_))))
    (define gx#core-quote-syntax
      (lambda _g133361_
        (let ((_g133362_ (##length _g133361_)))
          (cond ((##fx= _g133362_ 1) (apply gx#core-quote-syntax__0 _g133361_))
                ((##fx= _g133362_ 2) (apply gx#core-quote-syntax__1 _g133361_))
                ((##fx= _g133362_ 3) (apply gx#core-quote-syntax__2 _g133361_))
                ((##fx= _g133362_ 4) (apply gx#core-quote-syntax__% _g133361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g133361_))))))
    (define gx#core-cons
      (lambda (_%hd130342%_ _%tl130343%_)
        (cons (gx#core-quote-syntax__0 _%hd130342%_) _%tl130343%_)))
    (define gx#core-list
      (lambda (_%hd130339%_ . _%rest130340%_)
        (cons (gx#core-quote-syntax__0 _%hd130339%_) _%rest130340%_)))
    (define gx#core-cons*
      (lambda (_%hd130336%_ . _%rest130337%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd130336%_) _%rest130337%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path130305%_ _%rel130306%_)
        (let ((_%path130323%_ (gx#stx-e _%stx-path130305%_))
              (_%reldir130324%_
               (let _%lp130308%_ ((_%relsrc130310%_
                                   (let ((_%$e130320%_
                                          (gx#stx-source _%stx-path130305%_)))
                                     (if _%$e130320%_
                                         _%$e130320%_
                                         _%rel130306%_))))
                 (if (##structure-instance-of? _%relsrc130310%_ 'gerbil#AST::t)
                     (_%lp130308%_
                      (let ((_%$e130313%_ (gx#stx-source _%relsrc130310%_)))
                        (if _%$e130313%_
                            _%$e130313%_
                            (gx#stx-e _%relsrc130310%_))))
                     (if (source-location-path? _%relsrc130310%_)
                         (path-directory
                          (source-location-path _%relsrc130310%_))
                         (if (string? _%relsrc130310%_)
                             (path-directory _%relsrc130310%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path130323%_ (path-normalize _%reldir130324%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path130329%_)
        (let ((_%rel130331%_ '#f))
          (gx#core-resolve-path__% _%stx-path130329%_ _%rel130331%_))))
    (define gx#core-resolve-path
      (lambda _g133363_
        (let ((_g133364_ (##length _g133363_)))
          (cond ((##fx= _g133364_ 1) (apply gx#core-resolve-path__0 _g133363_))
                ((##fx= _g133364_ 2) (apply gx#core-resolve-path__% _g133363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g133363_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr130261%_ _%ctx130262%_)
        (let* ((_%repr130263130270%_ _%repr130261%_)
               (_%E130265130274%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr130263130270%_
                         '([phi . subs]))
                  '#!void))
               (_%K130266130282%_
                (lambda (_%subs130277%_ _%phi130278%_)
                  (let ((_%subst130280%_
                         (if (null? _%subs130277%_)
                             '#f
                             (list->hash-table-eq _%subs130277%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst130280%_
                     _%ctx130262%_
                     _%phi130278%_
                     '#f)))))
          (if (pair? _%repr130263130270%_)
              (let ((_%hd130267130285%_ (##car _%repr130263130270%_))
                    (_%tl130268130287%_ (##cdr _%repr130263130270%_)))
                (let* ((_%phi130290%_ _%hd130267130285%_)
                       (_%subs130292%_ _%tl130268130287%_))
                  (_%K130266130282%_ _%subs130292%_ _%phi130290%_)))
              (_%E130265130274%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr130297%_)
        (let ((_%ctx130299%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr130297%_ _%ctx130299%_))))
    (define gx#core-deserialize-mark
      (lambda _g133365_
        (let ((_g133366_ (##length _g133365_)))
          (cond ((##fx= _g133366_ 1)
                 (apply gx#core-deserialize-mark__0 _g133365_))
                ((##fx= _g133366_ 2)
                 (apply gx#core-deserialize-mark__% _g133365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g133365_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx130258%_)
        (gx#stx-rewrap _%stx130258%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx130256%_)
        (gx#stx-unwrap__% _%stx130256%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx130226%_)
        (let* ((_%g130227130235%_ (gx#current-expander-marks))
               (_%else130229130243%_ (lambda () _%stx130226%_))
               (_%K130231130248%_
                (lambda (_%hd130246%_)
                  (gx#stx-apply-mark _%stx130226%_ _%hd130246%_))))
          (if (pair? _%g130227130235%_)
              (let* ((_%hd130232130251%_ (##car _%g130227130235%_))
                     (_%hd130254%_ _%hd130232130251%_))
                (_%K130231130248%_ _%hd130254%_))
              (_%else130229130243%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx130211%_ _%E130212%_)
        (let ((_%bind130214%_ (gx#resolve-identifier__0 _%stx130211%_)))
          (if (##structure-direct-instance-of?
               _%bind130214%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind130214%_ '4 '#f '#f)
              (_%E130212%_ _%stx130211%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx130219%_)
        (let ((_%E130221%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx130219%_ _%E130221%_))))
    (define gx#syntax-local-e
      (lambda _g133367_
        (let ((_g133368_ (##length _g133367_)))
          (cond ((##fx= _g133368_ 1) (apply gx#syntax-local-e__0 _g133367_))
                ((##fx= _g133368_ 2) (apply gx#syntax-local-e__% _g133367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g133367_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx130195%_ _%E130196%_)
        (let ((_%e130198%_ (gx#syntax-local-e__% _%stx130195%_ _%E130196%_)))
          (if (##structure-instance-of? _%e130198%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e130198%_ '1 '#f '#f)
              _%e130198%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx130203%_)
        (let ((_%E130205%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx130203%_ _%E130205%_))))
    (define gx#syntax-local-value
      (lambda _g133369_
        (let ((_g133370_ (##length _g133369_)))
          (cond ((##fx= _g133370_ 1)
                 (apply gx#syntax-local-value__0 _g133369_))
                ((##fx= _g133370_ 2)
                 (apply gx#syntax-local-value__% _g133369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g133369_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx130192%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx130192%_)))))
