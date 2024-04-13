(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1713004410)
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
      (lambda _%$args119936%_
        (apply make-instance gx#expander-context::t _%$args119936%_)))
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
      (lambda _%$args119933%_
        (apply make-instance gx#root-context::t _%$args119933%_)))
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
      (lambda _%$args119930%_
        (apply make-instance gx#phi-context::t _%$args119930%_)))
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
      (lambda _%$args119927%_
        (apply make-instance gx#top-context::t _%$args119927%_)))
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
      (lambda _%$args119924%_
        (apply make-instance gx#module-context::t _%$args119924%_)))
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
      (lambda _%$args119921%_
        (apply make-instance gx#prelude-context::t _%$args119921%_)))
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
      (lambda _%$args119918%_
        (apply make-instance gx#local-context::t _%$args119918%_)))
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
      (lambda (_%self116824119889%_ _%id119891%_ _%super119892%_)
        (let* ((_%self119894%_ _%self116824119889%_)
               (_%self119896%_ _%self119894%_))
          (if (##fx< '3 (##structure-length _%self119896%_))
              (begin
                (##unchecked-structure-set!
                 _%self119896%_
                 _%id119891%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119896%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119896%_
                 _%super119892%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119896%_
                     '3
                     (##vector-length _%self119896%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self116824119909%_ _%id119910%_)
        (let ((_%super119912%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self116824119909%_
           _%id119910%_
           _%super119912%_))))
    (define gx#phi-context:::init!
      (lambda _g119979_
        (let ((_g119978_ (##length _g119979_)))
          (cond ((##fx= _g119978_ 2)
                 (apply gx#phi-context:::init!__0 _g119979_))
                ((##fx= _g119978_ 3)
                 (apply gx#phi-context:::init!__% _g119979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g119979_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self116825119740%_ _%super119742%_)
        (let* ((_%self119744%_ _%self116825119740%_)
               (_%self119746%_ _%self119744%_))
          (if (##fx< '3 (##structure-length _%self119746%_))
              (begin
                (##unchecked-structure-set!
                 _%self119746%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119746%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119746%_
                 _%super119742%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119746%_
                     '3
                     (##vector-length _%self119746%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self116825119759%_)
        (let ((_%super119761%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self116825119759%_ _%super119761%_))))
    (define gx#local-context:::init!
      (lambda _g119981_
        (let ((_g119980_ (##length _g119981_)))
          (cond ((##fx= _g119980_ 1)
                 (apply gx#local-context:::init!__0 _g119981_))
                ((##fx= _g119980_ 2)
                 (apply gx#local-context:::init!__% _g119981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g119981_))))))
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
      (lambda _%$args119614%_
        (apply make-instance gx#binding::t _%$args119614%_)))
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
      (lambda _%$args119611%_
        (apply make-instance gx#runtime-binding::t _%$args119611%_)))
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
      (lambda _%$args119608%_
        (apply make-instance gx#local-binding::t _%$args119608%_)))
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
      (lambda _%$args119605%_
        (apply make-instance gx#top-binding::t _%$args119605%_)))
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
      (lambda _%$args119602%_
        (apply make-instance gx#module-binding::t _%$args119602%_)))
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
      (lambda _%$args119599%_
        (apply make-instance gx#extern-binding::t _%$args119599%_)))
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
      (lambda _%$args119596%_
        (apply make-instance gx#syntax-binding::t _%$args119596%_)))
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
      (lambda _%$args119593%_
        (apply make-instance gx#import-binding::t _%$args119593%_)))
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
      (lambda _%$args119590%_
        (apply make-instance gx#alias-binding::t _%$args119590%_)))
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
      (lambda _%$args119587%_
        (apply make-instance gx#expander::t _%$args119587%_)))
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
      (lambda _%$args119584%_
        (apply make-instance gx#core-expander::t _%$args119584%_)))
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
      (lambda _%$args119581%_
        (apply make-instance gx#expression-form::t _%$args119581%_)))
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
      (lambda _%$args119578%_
        (apply make-instance gx#special-form::t _%$args119578%_)))
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
      (lambda _%$args119575%_
        (apply make-instance gx#definition-form::t _%$args119575%_)))
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
      (lambda _%$args119572%_
        (apply make-instance gx#top-special-form::t _%$args119572%_)))
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
      (lambda _%$args119569%_
        (apply make-instance gx#module-special-form::t _%$args119569%_)))
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
      (lambda _%$args119566%_
        (apply make-instance gx#feature-expander::t _%$args119566%_)))
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
      (lambda _%$args119563%_
        (apply make-instance gx#private-feature-expander::t _%$args119563%_)))
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
      (lambda _%$args119560%_
        (apply make-instance gx#reserved-expander::t _%$args119560%_)))
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
      (lambda _%$args119557%_
        (apply make-instance gx#macro-expander::t _%$args119557%_)))
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
      (lambda _%$args119554%_
        (apply make-instance gx#rename-macro-expander::t _%$args119554%_)))
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
      (lambda _%$args119551%_
        (apply make-instance gx#user-expander::t _%$args119551%_)))
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
      (lambda _%$args119548%_
        (apply make-instance gx#expander-mark::t _%$args119548%_)))
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
      (lambda (_%ctx119532%_
               _%message119533%_
               _%stx119534%_
               .
               _%details119535%_)
        (let ((_%ctx119546%_
               (let ((_%$e119537%_ _%ctx119532%_))
                 (if _%$e119537%_
                     _%$e119537%_
                     (let ((_%$e119540%_ (gx#core-context-top__0)))
                       (if _%$e119540%_
                           ((lambda (_%ctx119543%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx119543%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e119540%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message119533%_
                  (cons _%stx119534%_ _%details119535%_)
                  _%ctx119546%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx119519%_ _%expression?119520%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx119519%_ _%expression?119520%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx119525%_)
        (let ((_%expression?119527%_ '#f))
          (gx#eval-syntax__% _%stx119525%_ _%expression?119527%_))))
    (define gx#eval-syntax
      (lambda _g119983_
        (let ((_g119982_ (##length _g119983_)))
          (cond ((##fx= _g119982_ 1) (apply gx#eval-syntax__0 _g119983_))
                ((##fx= _g119982_ 2) (apply gx#eval-syntax__% _g119983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g119983_))))))
    (define gx#eval-syntax*
      (lambda (_%stx119516%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx119516%_))))
    (define gx#core-expand__%
      (lambda (_%stx119503%_ _%expression?119504%_)
        (if _%expression?119504%_
            (gx#core-expand-expression _%stx119503%_)
            (gx#core-expand-top _%stx119503%_))))
    (define gx#core-expand__0
      (lambda (_%stx119509%_)
        (let ((_%expression?119511%_ '#f))
          (gx#core-expand__% _%stx119509%_ _%expression?119511%_))))
    (define gx#core-expand
      (lambda _g119985_
        (let ((_g119984_ (##length _g119985_)))
          (cond ((##fx= _g119984_ 1) (apply gx#core-expand__0 _g119985_))
                ((##fx= _g119984_ 2) (apply gx#core-expand__% _g119985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g119985_))))))
    (define gx#core-expand-top
      (lambda (_%stx119470%_)
        (let* ((_%stx119472%_ (gx#core-expand*__0 _%stx119470%_))
               (_%e119473119480%_ _%stx119472%_)
               (_%E119475119484%_
                (lambda () (gx#core-expand-expression _%stx119472%_)))
               (_%E119474119498%_
                (lambda ()
                  (if (gx#stx-pair? _%e119473119480%_)
                      (let ((_%e119476119488%_
                             (gx#syntax-e _%e119473119480%_)))
                        (let ((_%hd119477119491%_ (##car _%e119476119488%_))
                              (_%tl119478119493%_ (##cdr _%e119476119488%_)))
                          (let ((_%form119496%_ _%hd119477119491%_))
                            (if (gx#core-bound-identifier?__0 _%form119496%_)
                                _%stx119472%_
                                (_%E119475119484%_)))))
                      (_%E119475119484%_)))))
          (_%E119474119498%_))))
    (define gx#core-expand-expression
      (lambda (_%stx119402%_)
        (letrec ((_%sealed-expression?119404%_
                  (lambda (_%hd119440%_)
                    (if (gx#sealed-syntax? _%hd119440%_)
                        (let* ((_%e119441119448%_ _%hd119440%_)
                               (_%E119443119452%_ (lambda () '#f))
                               (_%E119442119466%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e119441119448%_)
                                      (let ((_%e119444119456%_
                                             (gx#syntax-e _%e119441119448%_)))
                                        (let ((_%hd119445119459%_
                                               (##car _%e119444119456%_))
                                              (_%tl119446119461%_
                                               (##cdr _%e119444119456%_)))
                                          (let ((_%form119464%_
                                                 _%hd119445119459%_))
                                            (gx#core-bound-identifier?__%
                                             _%form119464%_
                                             gx#expression-form-binding?))))
                                      (_%E119443119452%_)))))
                          (_%E119442119466%_))
                        '#f)))
                 (_%illegal-expression119405%_
                  (lambda (_%hd119437%_ . _%_119438%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx119402%_
                     _%hd119437%_)))
                 (_%expand-e119406%_
                  (lambda (_%form119429%_ _%hd119430%_)
                    (let ((_%bind119432%_
                           (if (##structure-instance-of?
                                _%form119429%_
                                'gx#binding::t)
                               _%form119429%_
                               (gx#resolve-identifier__0 _%form119429%_))))
                      (if (gx#core-expander-binding? _%bind119432%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind119432%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd119430%_
                            (gx#stx-source _%stx119402%_)))
                          (if (##structure-direct-instance-of?
                               _%bind119432%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind119432%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd119430%_
                                 (gx#stx-source _%stx119402%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx119402%_
                               _%form119429%_)))))))
          (let ((_%hd119408%_ (gx#core-expand-head _%stx119402%_)))
            (if (_%sealed-expression?119404%_ _%hd119408%_)
                _%hd119408%_
                (if (gx#stx-pair? _%hd119408%_)
                    (let* ((_%form119412%_ (gx#stx-car _%hd119408%_))
                           (_%bind119414%_
                            (if (gx#identifier? _%form119412%_)
                                (gx#resolve-identifier__0 _%form119412%_)
                                '#f)))
                      (if (or (not _%bind119414%_)
                              (not (gx#core-expander-binding? _%bind119414%_)))
                          (_%expand-e119406%_
                           '%%app
                           (cons '%%app _%hd119408%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind119414%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd119408%_
                               _%illegal-expression119405%_)
                              (if (gx#expression-form-binding? _%bind119414%_)
                                  (_%expand-e119406%_
                                   _%bind119414%_
                                   _%hd119408%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind119414%_)
                                      (gx#core-expand-expression
                                       (_%expand-e119406%_
                                        _%bind119414%_
                                        _%hd119408%_))
                                      (_%illegal-expression119405%_
                                       _%hd119408%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd119408%_)
                        (_%illegal-expression119405%_ _%hd119408%_)
                        (if (gx#identifier? _%hd119408%_)
                            (_%expand-e119406%_
                             '%%ref
                             (cons '%%ref (cons _%hd119408%_ '())))
                            (if (gx#stx-datum? _%hd119408%_)
                                (_%expand-e119406%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd119408%_ '())))
                                (_%illegal-expression119405%_
                                 _%hd119408%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx119397%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx119400%_ (gx#core-expand-expression _%stx119397%_)))
             (values _%stx119400%_ (gx#eval-syntax* _%stx119400%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx119378%_ _%stop?119379%_)
        (let _%lp119381%_ ((_%stx119383%_ _%stx119378%_))
          (if (_%stop?119379%_ _%stx119383%_)
              _%stx119383%_
              (let ((_%rstx119385%_ (gx#core-expand1 _%stx119383%_)))
                (if (eq? _%stx119383%_ _%rstx119385%_)
                    _%stx119383%_
                    (_%lp119381%_ _%rstx119385%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx119390%_)
        (let ((_%stop?119392%_ false))
          (gx#core-expand*__% _%stx119390%_ _%stop?119392%_))))
    (define gx#core-expand*
      (lambda _g119987_
        (let ((_g119986_ (##length _g119987_)))
          (cond ((##fx= _g119986_ 1) (apply gx#core-expand*__0 _g119987_))
                ((##fx= _g119986_ 2) (apply gx#core-expand*__% _g119987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g119987_))))))
    (define gx#core-expand1
      (lambda (_%stx119330%_)
        (letrec ((_%step119332%_
                  (lambda (_%hd119369%_)
                    (let ((_%bind119371%_
                           (gx#resolve-identifier__0 _%hd119369%_)))
                      (if (##structure-instance-of?
                           _%bind119371%_
                           'gx#runtime-binding::t)
                          _%stx119330%_
                          (if (##structure-direct-instance-of?
                               _%bind119371%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind119371%_
                                '4
                                '#f
                                '#f)
                               _%stx119330%_)
                              (if (not _%bind119371%_)
                                  _%stx119330%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx119330%_))))))))
          (let* ((_%e119333119341%_ _%stx119330%_)
                 (_%E119339119345%_ (lambda () _%stx119330%_))
                 (_%E119335119351%_
                  (lambda ()
                    (let ((_%hd119349%_ _%e119333119341%_))
                      (if (gx#identifier? _%hd119349%_)
                          (_%step119332%_ _%hd119349%_)
                          (_%E119339119345%_)))))
                 (_%E119334119365%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119333119341%_)
                        (let ((_%e119336119355%_
                               (gx#syntax-e _%e119333119341%_)))
                          (let ((_%hd119337119358%_ (##car _%e119336119355%_))
                                (_%tl119338119360%_ (##cdr _%e119336119355%_)))
                            (let ((_%hd119363%_ _%hd119337119358%_))
                              (if (gx#identifier? _%hd119363%_)
                                  (_%step119332%_ _%hd119363%_)
                                  (_%E119335119351%_)))))
                        (_%E119335119351%_)))))
            (_%E119334119365%_)))))
    (define gx#core-expand-head
      (lambda (_%stx119296%_)
        (letrec ((_%stop?119298%_
                  (lambda (_%stx119300%_)
                    (let* ((_%e119301119308%_ _%stx119300%_)
                           (_%E119303119312%_ (lambda () '#f))
                           (_%E119302119326%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119301119308%_)
                                  (let ((_%e119304119316%_
                                         (gx#syntax-e _%e119301119308%_)))
                                    (let ((_%hd119305119319%_
                                           (##car _%e119304119316%_))
                                          (_%tl119306119321%_
                                           (##cdr _%e119304119316%_)))
                                      (let ((_%hd119324%_ _%hd119305119319%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd119324%_))))
                                  (_%E119303119312%_)))))
                      (_%E119302119326%_)))))
          (gx#core-expand*__% _%stx119296%_ _%stop?119298%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx119102%_
               _%expand-special119103%_
               _%begin-form119104%_
               _%expand-e119105%_)
        (letrec ((_%expand-splice119107%_
                  (lambda (_%hd119270%_
                           _%body119271%_
                           _%rest119272%_
                           _%r119273%_)
                    (if (gx#stx-list? _%body119271%_)
                        (_%K119111%_
                         (gx#stx-foldr cons _%rest119272%_ _%body119271%_)
                         _%r119273%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx119102%_
                         _%hd119270%_))))
                 (_%expand-cond-expand119108%_
                  (lambda (_%hd119266%_ _%rest119267%_ _%r119268%_)
                    (_%K119111%_
                     (cons (gx#core-expand-cond-expand% _%hd119266%_)
                           _%rest119267%_)
                     _%r119268%_)))
                 (_%expand-include119109%_
                  (lambda (_%hd119215%_ _%rest119216%_ _%r119217%_)
                    (let* ((_%e119218119228%_ _%hd119215%_)
                           (_%E119220119232%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e119218119228%_)))
                           (_%E119219119262%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119218119228%_)
                                  (let ((_%e119221119236%_
                                         (gx#syntax-e _%e119218119228%_)))
                                    (let ((_%hd119222119239%_
                                           (##car _%e119221119236%_))
                                          (_%tl119223119241%_
                                           (##cdr _%e119221119236%_)))
                                      (if (gx#stx-pair? _%tl119223119241%_)
                                          (let ((_%e119224119244%_
                                                 (gx#syntax-e
                                                  _%tl119223119241%_)))
                                            (let ((_%hd119225119247%_
                                                   (##car _%e119224119244%_))
                                                  (_%tl119226119249%_
                                                   (##cdr _%e119224119244%_)))
                                              (let ((_%path119252%_
                                                     _%hd119225119247%_))
                                                (if (gx#stx-null?
                                                     _%tl119226119249%_)
                                                    (if (gx#stx-string?
                                                         _%path119252%_)
                                                        (let* ((_%rpath119254%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path119252%_
                         (gx#stx-source _%hd119215%_)))
                       (_%block119256%_
                        (gx#core-expand-include%__%
                         _%hd119215%_
                         _%rpath119254%_))
                       (_%rbody119259%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block119256%_
                            _%expand-special119103%_
                            '#f
                            _%expand-e119105%_))
                         gx#current-expander-path
                         (cons _%rpath119254%_ (gx#current-expander-path)))))
                  (_%K119111%_
                   _%rest119216%_
                   (__foldr1 cons _%r119217%_ _%rbody119259%_)))
                (_%E119220119232%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119220119232%_)))))
                                          (_%E119220119232%_))))
                                  (_%E119220119232%_)))))
                      (_%E119219119262%_))))
                 (_%expand-expression119110%_
                  (lambda (_%hd119211%_ _%rest119212%_ _%r119213%_)
                    (_%K119111%_
                     _%rest119212%_
                     (cons (_%expand-e119105%_ _%hd119211%_) _%r119213%_))))
                 (_%K119111%_
                  (lambda (_%rest119141%_ _%r119142%_)
                    (let* ((_%e119143119150%_ _%rest119141%_)
                           (_%E119145119154%_
                            (lambda ()
                              (if _%begin-form119104%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form119104%_
                                    (reverse _%r119142%_))
                                   (gx#stx-source _%stx119102%_))
                                  _%r119142%_)))
                           (_%E119144119207%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119143119150%_)
                                  (let ((_%e119146119158%_
                                         (gx#syntax-e _%e119143119150%_)))
                                    (let ((_%hd119147119161%_
                                           (##car _%e119146119158%_))
                                          (_%tl119148119163%_
                                           (##cdr _%e119146119158%_)))
                                      (let* ((_%hd119166%_ _%hd119147119161%_)
                                             (_%rest119168%_
                                              _%tl119148119163%_)
                                             (_%hd119170%_
                                              (gx#core-expand-head
                                               _%hd119166%_))
                                             (_%e119171119178%_ _%hd119170%_)
                                             (_%E119173119182%_
                                              (lambda ()
                                                (_%expand-expression119110%_
                                                 _%hd119170%_
                                                 _%rest119168%_
                                                 _%r119142%_)))
                                             (_%E119172119203%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e119171119178%_)
                                                    (let ((_%e119174119186%_
                                                           (gx#syntax-e
                                                            _%e119171119178%_)))
                                                      (let ((_%hd119175119189%_
                                                             (##car _%e119174119186%_))
                                                            (_%tl119176119191%_
                                                             (##cdr _%e119174119186%_)))
                                                        (let* ((_%form119194%_
                                                                _%hd119175119189%_)
                                                               (_%body119196%_
                                                                _%tl119176119191%_)
                                                               (_%bind119198%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form119194%_)
                            (gx#resolve-identifier__0 _%form119194%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind119198%_)
                      (let ((_%$e119200%_
                             (##unchecked-structure-ref
                              _%bind119198%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e119200%_)
                            (_%expand-splice119107%_
                             _%hd119170%_
                             _%body119196%_
                             _%rest119168%_
                             _%r119142%_)
                            (if (eq? '%#cond-expand _%$e119200%_)
                                (_%expand-cond-expand119108%_
                                 _%hd119170%_
                                 _%rest119168%_
                                 _%r119142%_)
                                (if (eq? '%#include _%$e119200%_)
                                    (_%expand-include119109%_
                                     _%hd119170%_
                                     _%rest119168%_
                                     _%r119142%_)
                                    (_%expand-special119103%_
                                     _%hd119170%_
                                     _%K119111%_
                                     _%rest119168%_
                                     _%r119142%_)))))
                      (_%expand-expression119110%_
                       _%hd119170%_
                       _%rest119168%_
                       _%r119142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119173119182%_)))))
                                        (_%E119172119203%_))))
                                  (_%E119145119154%_)))))
                      (_%E119144119207%_)))))
          (let* ((_%e119112119119%_ _%stx119102%_)
                 (_%E119114119123%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119112119119%_)))
                 (_%E119113119137%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119112119119%_)
                        (let ((_%e119115119127%_
                               (gx#syntax-e _%e119112119119%_)))
                          (let ((_%hd119116119130%_ (##car _%e119115119127%_))
                                (_%tl119117119132%_ (##cdr _%e119115119127%_)))
                            (let ((_%body119135%_ _%tl119117119132%_))
                              (if (gx#stx-list? _%body119135%_)
                                  (_%K119111%_ _%body119135%_ '())
                                  (_%E119114119123%_)))))
                        (_%E119114119123%_)))))
            (_%E119113119137%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx119278%_ _%expand-special119279%_)
        (let* ((_%begin-form119281%_ '%#begin)
               (_%expand-e119283%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx119278%_
           _%expand-special119279%_
           _%begin-form119281%_
           _%expand-e119283%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx119285%_ _%expand-special119286%_ _%begin-form119287%_)
        (let ((_%expand-e119289%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx119285%_
           _%expand-special119286%_
           _%begin-form119287%_
           _%expand-e119289%_))))
    (define gx#core-expand-block
      (lambda _g119989_
        (let ((_g119988_ (##length _g119989_)))
          (cond ((##fx= _g119988_ 2) (apply gx#core-expand-block__0 _g119989_))
                ((##fx= _g119988_ 3) (apply gx#core-expand-block__1 _g119989_))
                ((##fx= _g119988_ 4) (apply gx#core-expand-block__% _g119989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g119989_))))))
    (define gx#core-expand-block*
      (lambda (_%stx119050%_ _%expand-special119051%_)
        (let* ((_%g119052119063%_
                (gx#core-expand-block__1
                 _%stx119050%_
                 _%expand-special119051%_
                 '#f))
               (_%E119056119067%_
                (lambda ()
                  (error '"No clause matching"
                         _%g119052119063%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K119061119098%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx119050%_)))
                (_%K119058119084%_ (lambda (_%expr119082%_) _%expr119082%_))
                (_%K119057119073%_
                 (lambda (_%body119071%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body119071%_))
                    (gx#stx-source _%stx119050%_)))))
            (let ((_%try-match119054119094%_
                   (lambda ()
                     (if (##pair? _%g119052119063%_)
                         (let ((_%tl119060119089%_ (##cdr _%g119052119063%_))
                               (_%hd119059119087%_ (##car _%g119052119063%_)))
                           (if (##null? _%tl119060119089%_)
                               (let ((_%expr119092%_ _%hd119059119087%_))
                                 (_%K119058119084%_ _%expr119092%_))
                               (let ((_%body119076%_ _%g119052119063%_))
                                 (_%K119057119073%_ _%body119076%_))))
                         (let ((_%body119076%_ _%g119052119063%_))
                           (_%K119057119073%_ _%body119076%_))))))
              (if (##null? _%g119052119063%_)
                  (_%K119061119098%_)
                  (_%try-match119054119094%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx118875%_)
        (letrec ((_%satisfied?118877%_
                  (lambda (_%condition118978%_)
                    (let* ((_%e118979118994%_ _%condition118978%_)
                           (_%E118989118998%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118979118994%_)))
                           (_%E118982119017%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118979118994%_)
                                  (let ((_%e118990119002%_
                                         (gx#syntax-e _%e118979118994%_)))
                                    (let ((_%hd118991119005%_
                                           (##car _%e118990119002%_))
                                          (_%tl118992119007%_
                                           (##cdr _%e118990119002%_)))
                                      (let* ((_%combinator119010%_
                                              _%hd118991119005%_)
                                             (_%body119012%_
                                              _%tl118992119007%_))
                                        (if (gx#stx-list? _%body119012%_)
                                            (let ((_%$e119014%_
                                                   (gx#stx-e
                                                    _%combinator119010%_)))
                                              (if (eq? 'not _%$e119014%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?118877%_
                                                        _%body119012%_))
                                                  (if (eq? 'and _%$e119014%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?118877%_
                                                       _%body119012%_)
                                                      (if (eq? 'or
                                                               _%$e119014%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?118877%_
                                                           _%body119012%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e119014%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body119012%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx118875%_
                       _%combinator119010%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118989118998%_)))))
                                  (_%E118989118998%_))))
                           (_%E118981119040%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118979118994%_)
                                  (let ((_%e118983119021%_
                                         (gx#syntax-e _%e118979118994%_)))
                                    (let ((_%hd118984119024%_
                                           (##car _%e118983119021%_))
                                          (_%tl118985119026%_
                                           (##cdr _%e118983119021%_)))
                                      (if (and (gx#identifier?
                                                _%hd118984119024%_)
                                               (gx#core-identifier=?
                                                _%hd118984119024%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl118985119026%_)
                                              (let ((_%e118986119029%_
                                                     (gx#syntax-e
                                                      _%tl118985119026%_)))
                                                (let ((_%hd118987119032%_
                                                       (##car _%e118986119029%_))
                                                      (_%tl118988119034%_
                                                       (##cdr _%e118986119029%_)))
                                                  (let ((_%expr119037%_
                                                         _%hd118987119032%_))
                                                    (if (gx#stx-null?
                                                         _%tl118988119034%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr119037%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E118982119017%_)))))
                                              (_%E118982119017%_))
                                          (_%E118982119017%_))))
                                  (_%E118982119017%_))))
                           (_%E118980119046%_
                            (lambda ()
                              (let ((_%id119044%_ _%e118979118994%_))
                                (if (gx#identifier? _%id119044%_)
                                    (gx#core-bound-identifier?__%
                                     _%id119044%_
                                     gx#feature-binding?)
                                    (_%E118981119040%_))))))
                      (_%E118980119046%_))))
                 (_%loop118878%_
                  (lambda (_%rest118908%_)
                    (let* ((_%e118909118917%_ _%rest118908%_)
                           (_%E118915118921%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118909118917%_)))
                           (_%E118911118925%_
                            (lambda ()
                              (if (gx#stx-null? _%e118909118917%_)
                                  '()
                                  (_%E118915118921%_))))
                           (_%E118910118974%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118909118917%_)
                                  (let ((_%e118912118929%_
                                         (gx#syntax-e _%e118909118917%_)))
                                    (let ((_%hd118913118932%_
                                           (##car _%e118912118929%_))
                                          (_%tl118914118934%_
                                           (##cdr _%e118912118929%_)))
                                      (let* ((_%hd118937%_ _%hd118913118932%_)
                                             (_%rest118939%_
                                              _%tl118914118934%_)
                                             (_%e118940118947%_ _%hd118937%_)
                                             (_%E118942118951%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e118940118947%_)))
                                             (_%E118941118970%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e118940118947%_)
                                                    (let ((_%e118943118955%_
                                                           (gx#syntax-e
                                                            _%e118940118947%_)))
                                                      (let ((_%hd118944118958%_
                                                             (##car _%e118943118955%_))
                                                            (_%tl118945118960%_
                                                             (##cdr _%e118943118955%_)))
                                                        (let* ((_%condition118963%_
                                                                _%hd118944118958%_)
                                                               (_%body118965%_
                                                                _%tl118945118960%_))
                                                          (if (gx#stx-eq?
                                                               _%condition118963%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest118939%_)
                          _%body118965%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx118875%_
                           _%hd118937%_))
                      (if (_%satisfied?118877%_ _%condition118963%_)
                          _%body118965%_
                          (_%loop118878%_ _%rest118939%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118942118951%_)))))
                                        (_%E118941118970%_))))
                                  (_%E118911118925%_)))))
                      (_%E118910118974%_)))))
          (let* ((_%e118879118886%_ _%stx118875%_)
                 (_%E118881118890%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118879118886%_)))
                 (_%E118880118904%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118879118886%_)
                        (let ((_%e118882118894%_
                               (gx#syntax-e _%e118879118886%_)))
                          (let ((_%hd118883118897%_ (##car _%e118882118894%_))
                                (_%tl118884118899%_ (##cdr _%e118882118894%_)))
                            (let ((_%clauses118902%_ _%tl118884118899%_))
                              (if (gx#stx-list? _%clauses118902%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop118878%_ _%clauses118902%_))
                                  (_%E118881118890%_)))))
                        (_%E118881118890%_)))))
            (_%E118880118904%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx118818%_ _%rpath118819%_)
        (let* ((_%e118820118830%_ _%stx118818%_)
               (_%E118822118834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118820118830%_)))
               (_%E118821118861%_
                (lambda ()
                  (if (gx#stx-pair? _%e118820118830%_)
                      (let ((_%e118823118838%_
                             (gx#syntax-e _%e118820118830%_)))
                        (let ((_%hd118824118841%_ (##car _%e118823118838%_))
                              (_%tl118825118843%_ (##cdr _%e118823118838%_)))
                          (if (gx#stx-pair? _%tl118825118843%_)
                              (let ((_%e118826118846%_
                                     (gx#syntax-e _%tl118825118843%_)))
                                (let ((_%hd118827118849%_
                                       (##car _%e118826118846%_))
                                      (_%tl118828118851%_
                                       (##cdr _%e118826118846%_)))
                                  (let ((_%path118854%_ _%hd118827118849%_))
                                    (if (gx#stx-null? _%tl118828118851%_)
                                        (if (gx#stx-string? _%path118854%_)
                                            (let ((_%rpath118859%_
                                                   (let ((_%$e118856%_
                                                          _%rpath118819%_))
                                                     (if _%$e118856%_
                                                         _%$e118856%_
                                                         (gx#core-resolve-path__%
                                                          _%path118854%_
                                                          (gx#stx-source
                                                           _%stx118818%_))))))
                                              (if (member _%rpath118859%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx118818%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath118859%_))
                                                    (gx#stx-source
                                                     _%stx118818%_)))))
                                            (_%E118822118834%_))
                                        (_%E118822118834%_)))))
                              (_%E118822118834%_))))
                      (_%E118822118834%_)))))
          (_%E118821118861%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx118868%_)
        (let ((_%rpath118870%_ '#f))
          (gx#core-expand-include%__% _%stx118868%_ _%rpath118870%_))))
    (define gx#core-expand-include%
      (lambda _g119991_
        (let ((_g119990_ (##length _g119991_)))
          (cond ((##fx= _g119990_ 1)
                 (apply gx#core-expand-include%__0 _g119991_))
                ((##fx= _g119990_ 2)
                 (apply gx#core-expand-include%__% _g119991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g119991_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K118784%_ _%stx118785%_ _%method118786%_)
        (if (procedure? _%K118784%_)
            (let ((_%$e118789%_ (gx#stx-source _%stx118785%_)))
              (if _%$e118789%_
                  ((lambda (_%g118791118793%_)
                     (gx#stx-wrap-source
                      (_%K118784%_ _%stx118785%_)
                      _%g118791118793%_))
                   _%$e118789%_)
                  (_%K118784%_ _%stx118785%_)))
            (let ((_%$e118797%_
                   (bound-method-ref _%K118784%_ _%method118786%_)))
              (if _%$e118797%_
                  ((lambda (_%g118799118801%_)
                     (gx#core-apply-expander__%
                      _%g118799118801%_
                      _%stx118785%_
                      _%method118786%_))
                   _%$e118797%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx118785%_
                   _%method118786%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K118808%_ _%stx118809%_)
        (let ((_%method118811%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K118808%_
           _%stx118809%_
           _%method118811%_))))
    (define gx#core-apply-expander
      (lambda _g119993_
        (let ((_g119992_ (##length _g119993_)))
          (cond ((##fx= _g119992_ 2)
                 (apply gx#core-apply-expander__0 _g119993_))
                ((##fx= _g119992_ 3)
                 (apply gx#core-apply-expander__% _g119993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g119993_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116826118767%_ _%stx118769%_)
        (let* ((_%self118771%_ _%self116826118767%_)
               (_%self118773%_ _%self118771%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx118769%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116827118607%_ _%stx118609%_)
        (let* ((_%self118611%_ _%self116827118607%_)
               (_%self118613%_ _%self118611%_)
               (_%self118622118628%_ _%self118613%_)
               (_%E118624118632%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118622118628%_
                         '((macro-expander K)))
                  '#!void))
               (_%K118625118637%_
                (lambda (_%K118635%_)
                  (gx#core-apply-expander__0 _%K118635%_ _%stx118609%_)))
               (_%e118626118640%_
                (##unchecked-structure-ref _%self118622118628%_ '1 '#f '#f))
               (_%K118643%_ _%e118626118640%_))
          (_%K118625118637%_ _%K118643%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116828118447%_ _%stx118449%_)
        (let* ((_%self118451%_ _%self116828118447%_)
               (_%self118453%_ _%self118451%_))
          (if (gx#sealed-syntax? _%stx118449%_)
              _%stx118449%_
              (let* ((_%self118462118468%_ _%self118453%_)
                     (_%E118464118472%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self118462118468%_
                               '((core-expander K)))
                        '#!void))
                     (_%K118465118477%_
                      (lambda (_%K118475%_)
                        (gx#core-apply-expander__0 _%K118475%_ _%stx118449%_)))
                     (_%e118466118480%_
                      (##unchecked-structure-ref
                       _%self118462118468%_
                       '1
                       '#f
                       '#f))
                     (_%K118483%_ _%e118466118480%_))
                (_%K118465118477%_ _%K118483%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116829118296%_ _%stx118298%_ _%top?118299%_)
        (let* ((_%self118301%_ _%self116829118296%_)
               (_%self118303%_ _%self118301%_))
          (if (_%top?118299%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self118303%_
               _%stx118298%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx118298%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116829118316%_ _%stx118317%_)
        (let ((_%top?118319%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116829118316%_
           _%stx118317%_
           _%top?118319%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g119995_
        (let ((_g119994_ (##length _g119995_)))
          (cond ((##fx= _g119994_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g119995_))
                ((##fx= _g119994_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g119995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g119995_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116830118157%_ _%stx118159%_)
        (let* ((_%self118161%_ _%self116830118157%_)
               (_%self118163%_ _%self118161%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self118163%_
           _%stx118159%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116831117969%_ _%stx117971%_)
        (let* ((_%self117973%_ _%self116831117969%_)
               (_%self117975%_ _%self117973%_)
               (_%self117984117990%_ _%self117975%_)
               (_%E117986117994%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117984117990%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K117987118027%_
                (lambda (_%id117997%_)
                  (let* ((_%e117998118005%_ _%stx117971%_)
                         (_%E118000118009%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e117998118005%_)))
                         (_%E117999118023%_
                          (lambda ()
                            (if (gx#stx-pair? _%e117998118005%_)
                                (let ((_%e118001118013%_
                                       (gx#syntax-e _%e117998118005%_)))
                                  (let ((_%hd118002118016%_
                                         (##car _%e118001118013%_))
                                        (_%tl118003118018%_
                                         (##cdr _%e118001118013%_)))
                                    (let ((_%body118021%_ _%tl118003118018%_))
                                      (gx#core-cons
                                       _%id117997%_
                                       _%body118021%_))))
                                (_%E118000118009%_)))))
                    (_%E117999118023%_))))
               (_%e117988118030%_
                (##unchecked-structure-ref _%self117984117990%_ '1 '#f '#f))
               (_%id118033%_ _%e117988118030%_))
          (_%K117987118027%_ _%id118033%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self117795%_ _%stx117796%_ _%method117797%_)
        (let* ((_%self117798117806%_ _%self117795%_)
               (_%E117800117810%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117798117806%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K117801117817%_
                (lambda (_%phi117813%_ _%ctx117814%_ _%K117815%_)
                  (gx#core-apply-user-macro
                   _%K117815%_
                   _%stx117796%_
                   _%ctx117814%_
                   _%phi117813%_
                   _%method117797%_))))
          (if (##structure-instance-of?
               _%self117798117806%_
               'gx#user-expander::t)
              (let* ((_%e117802117820%_
                      (##unchecked-structure-ref
                       _%self117798117806%_
                       '1
                       '#f
                       '#f))
                     (_%K117823%_ _%e117802117820%_)
                     (_%e117803117825%_
                      (##unchecked-structure-ref
                       _%self117798117806%_
                       '2
                       '#f
                       '#f))
                     (_%ctx117828%_ _%e117803117825%_)
                     (_%e117804117830%_
                      (##unchecked-structure-ref
                       _%self117798117806%_
                       '3
                       '#f
                       '#f))
                     (_%phi117833%_ _%e117804117830%_))
                (_%K117801117817%_ _%phi117833%_ _%ctx117828%_ _%K117823%_))
              (_%E117800117810%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self117838%_ _%stx117839%_)
        (let ((_%method117841%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self117838%_
           _%stx117839%_
           _%method117841%_))))
    (define gx#core-apply-user-expander
      (lambda _g119997_
        (let ((_g119996_ (##length _g119997_)))
          (cond ((##fx= _g119996_ 2)
                 (apply gx#core-apply-user-expander__0 _g119997_))
                ((##fx= _g119996_ 3)
                 (apply gx#core-apply-user-expander__% _g119997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g119997_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K117785%_
               _%stx117786%_
               _%ctx117787%_
               _%phi117788%_
               _%method117789%_)
        (let ((_%mark117791%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx117787%_
                _%phi117788%_
                _%stx117786%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K117785%_
               (gx#stx-apply-mark _%stx117786%_ _%mark117791%_)
               _%method117789%_)
              _%mark117791%_))
           gx#current-expander-marks
           (cons _%mark117791%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx117633%_ _%phi117634%_ _%ctx117635%_)
        (let _%lp117637%_ ((_%bind117639%_
                            (gx#core-resolve-identifier__%
                             _%stx117633%_
                             _%phi117634%_
                             _%ctx117635%_)))
          (if (##structure-direct-instance-of?
               _%bind117639%_
               'gx#import-binding::t)
              (_%lp117637%_
               (##unchecked-structure-ref _%bind117639%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind117639%_
                   'gx#alias-binding::t)
                  (_%lp117637%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind117639%_ '4 '#f '#f)
                    _%phi117634%_
                    _%ctx117635%_))
                  _%bind117639%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx117647%_)
        (let* ((_%phi117649%_ (gx#current-expander-phi))
               (_%ctx117651%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117647%_
           _%phi117649%_
           _%ctx117651%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx117653%_ _%phi117654%_)
        (let ((_%ctx117656%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117653%_
           _%phi117654%_
           _%ctx117656%_))))
    (define gx#resolve-identifier
      (lambda _g119999_
        (let ((_g119998_ (##length _g119999_)))
          (cond ((##fx= _g119998_ 1)
                 (apply gx#resolve-identifier__0 _g119999_))
                ((##fx= _g119998_ 2)
                 (apply gx#resolve-identifier__1 _g119999_))
                ((##fx= _g119998_ 3)
                 (apply gx#resolve-identifier__% _g119999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g119999_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx117588%_
               _%val117589%_
               _%rebind?117590%_
               _%phi117591%_
               _%ctx117592%_)
        (let ((_%rebind?117597%_
               (if (not _%rebind?117590%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?117590%_)
                       _%rebind?117590%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx117588%_)
           _%val117589%_
           _%rebind?117597%_
           _%phi117591%_
           _%ctx117592%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx117602%_ _%val117603%_)
        (let* ((_%rebind?117605%_ '#f)
               (_%phi117607%_ (gx#current-expander-phi))
               (_%ctx117609%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117602%_
           _%val117603%_
           _%rebind?117605%_
           _%phi117607%_
           _%ctx117609%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx117611%_ _%val117612%_ _%rebind?117613%_)
        (let* ((_%phi117615%_ (gx#current-expander-phi))
               (_%ctx117617%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117611%_
           _%val117612%_
           _%rebind?117613%_
           _%phi117615%_
           _%ctx117617%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx117619%_ _%val117620%_ _%rebind?117621%_ _%phi117622%_)
        (let ((_%ctx117624%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117619%_
           _%val117620%_
           _%rebind?117621%_
           _%phi117622%_
           _%ctx117624%_))))
    (define gx#bind-identifier!
      (lambda _g120001_
        (let ((_g120000_ (##length _g120001_)))
          (cond ((##fx= _g120000_ 2) (apply gx#bind-identifier!__0 _g120001_))
                ((##fx= _g120000_ 3) (apply gx#bind-identifier!__1 _g120001_))
                ((##fx= _g120000_ 4) (apply gx#bind-identifier!__2 _g120001_))
                ((##fx= _g120000_ 5) (apply gx#bind-identifier!__% _g120001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g120001_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx117554%_ _%phi117555%_ _%ctx117556%_)
        (let _%lp117558%_ ((_%e117560%_ _%stx117554%_)
                           (_%marks117561%_ (gx#current-expander-marks)))
          (if (symbol? _%e117560%_)
              (gx#core-resolve-binding
               _%e117560%_
               _%phi117555%_
               _%phi117555%_
               _%ctx117556%_
               (reverse _%marks117561%_))
              (if (gx#identifier-quote? _%e117560%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e117560%_ '1 '#f '#f)
                   _%phi117555%_
                   '0
                   (##unchecked-structure-ref _%e117560%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e117560%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e117560%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e117560%_ '1 '#f '#f)
                       _%phi117555%_
                       _%phi117555%_
                       _%ctx117556%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117560%_ '3 '#f '#f)
                        _%marks117561%_))
                      (if (##structure-direct-instance-of?
                           _%e117560%_
                           'gx#syntax-wrap::t)
                          (_%lp117558%_
                           (##unchecked-structure-ref _%e117560%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e117560%_ '3 '#f '#f)
                            _%marks117561%_))
                          (if (##structure-instance-of?
                               _%e117560%_
                               'gerbil#AST::t)
                              (_%lp117558%_
                               (##unchecked-structure-ref
                                _%e117560%_
                                '1
                                '#f
                                '#f)
                               _%marks117561%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx117554%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx117572%_)
        (let* ((_%phi117574%_ (gx#current-expander-phi))
               (_%ctx117576%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117572%_
           _%phi117574%_
           _%ctx117576%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx117578%_ _%phi117579%_)
        (let ((_%ctx117581%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117578%_
           _%phi117579%_
           _%ctx117581%_))))
    (define gx#core-resolve-identifier
      (lambda _g120003_
        (let ((_g120002_ (##length _g120003_)))
          (cond ((##fx= _g120002_ 1)
                 (apply gx#core-resolve-identifier__0 _g120003_))
                ((##fx= _g120002_ 2)
                 (apply gx#core-resolve-identifier__1 _g120003_))
                ((##fx= _g120002_ 3)
                 (apply gx#core-resolve-identifier__% _g120003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g120003_))))))
    (define gx#core-resolve-binding
      (lambda (_%id117464%_
               _%phi117465%_
               _%src-phi117466%_
               _%ctx117467%_
               _%marks117468%_)
        (letrec ((_%resolve117470%_
                  (lambda (_%ctx117538%_ _%src-phi117539%_ _%key117540%_)
                    (let _%lp117542%_ ((_%ctx117544%_
                                        (gx#core-context-shift
                                         _%ctx117538%_
                                         _%phi117465%_))
                                       (_%dphi117545%_
                                        (fx- _%phi117465%_ _%src-phi117539%_)))
                      (let ((_%$e117547%_
                             (gx#core-context-resolve
                              _%ctx117544%_
                              _%key117540%_)))
                        (if _%$e117547%_
                            _%$e117547%_
                            (if (fxzero? _%dphi117545%_)
                                '#f
                                (if (fxpositive? _%dphi117545%_)
                                    (_%lp117542%_
                                     (gx#core-context-shift _%ctx117544%_ '-1)
                                     (##fx- _%dphi117545%_ '1))
                                    (_%lp117542%_
                                     (gx#core-context-shift _%ctx117544%_ '1)
                                     (##fx+ _%dphi117545%_ '1))))))))))
          (let _%lp117472%_ ((_%ctx117474%_ _%ctx117467%_)
                             (_%src-phi117475%_ _%src-phi117466%_)
                             (_%rest117476%_ _%marks117468%_))
            (let* ((_%rest117477117485%_ _%rest117476%_)
                   (_%else117479117493%_
                    (lambda ()
                      (_%resolve117470%_
                       _%ctx117474%_
                       _%src-phi117475%_
                       _%id117464%_)))
                   (_%K117481117526%_
                    (lambda (_%rest117496%_ _%hd117497%_)
                      (let* ((_%hd117498117504%_ _%hd117497%_)
                             (_%E117500117508%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd117498117504%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K117501117518%_
                              (lambda (_%subst117511%_)
                                (let ((_%$e117515%_
                                       (let ((_%key117513%_
                                              (if _%subst117511%_
                                                  (hash-get
                                                   _%subst117511%_
                                                   _%id117464%_)
                                                  '#f)))
                                         (if _%key117513%_
                                             (_%resolve117470%_
                                              _%ctx117474%_
                                              _%src-phi117475%_
                                              _%key117513%_)
                                             '#f))))
                                  (if _%$e117515%_
                                      _%$e117515%_
                                      (_%lp117472%_
                                       (##unchecked-structure-ref
                                        _%hd117497%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd117497%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest117496%_))))))
                        (if (##structure-instance-of?
                             _%hd117498117504%_
                             'gx#expander-mark::t)
                            (let* ((_%e117502117521%_
                                    (##unchecked-structure-ref
                                     _%hd117498117504%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst117524%_ _%e117502117521%_))
                              (_%K117501117518%_ _%subst117524%_))
                            (_%E117500117508%_))))))
              (if (##pair? _%rest117477117485%_)
                  (let ((_%hd117482117529%_ (##car _%rest117477117485%_))
                        (_%tl117483117531%_ (##cdr _%rest117477117485%_)))
                    (let* ((_%hd117534%_ _%hd117482117529%_)
                           (_%rest117536%_ _%tl117483117531%_))
                      (_%K117481117526%_ _%rest117536%_ _%hd117534%_)))
                  (_%else117479117493%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key117334%_
               _%val117335%_
               _%rebind?117336%_
               _%phi117337%_
               _%ctx117338%_)
        (letrec ((_%update-binding117340%_
                  (lambda (_%xval117413%_)
                    (if (or (_%rebind?117336%_
                             _%ctx117338%_
                             _%xval117413%_
                             _%val117335%_)
                            (and (##structure-direct-instance-of?
                                  _%xval117413%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval117413%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val117335%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val117335%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval117413%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val117335%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val117335%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval117413%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val117335%_
                        (if (and (##structure-direct-instance-of?
                                  _%val117335%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val117335%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval117413%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val117335%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval117413%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval117413%_
                            (if (and (##structure-direct-instance-of?
                                      _%val117335%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval117413%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key117334%_
                                 (cons (##unchecked-structure-ref
                                        _%val117335%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val117335%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval117413%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval117413%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval117413%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval117413%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key117334%_
                                 _%val117335%_
                                 _%xval117413%_))))))
                 (_%gensubst117341%_
                  (lambda (_%subst117408%_ _%id117409%_)
                    (let ((_%eid117411%_
                           (gensym (if (uninterned-symbol? _%id117409%_)
                                       '%
                                       _%id117409%_))))
                      (hash-put! _%subst117408%_ _%id117409%_ _%eid117411%_)
                      _%eid117411%_)))
                 (_%subst!117342%_
                  (lambda (_%key117344%_)
                    (let* ((_%key117345117353%_ _%key117344%_)
                           (_%else117347117361%_ (lambda () _%key117344%_))
                           (_%K117349117396%_
                            (lambda (_%mark117364%_ _%id117365%_)
                              (let* ((_%mark117366117372%_ _%mark117364%_)
                                     (_%E117368117376%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark117366117372%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K117369117388%_
                                      (lambda (_%subst117379%_)
                                        (if (not _%subst117379%_)
                                            (let ((_%subst117382%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark117364%_
                                               _%subst117382%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst117341%_
                                               _%subst117382%_
                                               _%id117365%_))
                                            (let ((_%$e117384%_
                                                   (hash-get
                                                    _%subst117379%_
                                                    _%id117365%_)))
                                              (if _%$e117384%_
                                                  _%$e117384%_
                                                  (_%gensubst117341%_
                                                   _%subst117379%_
                                                   _%id117365%_)))))))
                                (if (##structure-instance-of?
                                     _%mark117366117372%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e117370117391%_
                                            (##unchecked-structure-ref
                                             _%mark117366117372%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst117394%_ _%e117370117391%_))
                                      (_%K117369117388%_ _%subst117394%_))
                                    (_%E117368117376%_))))))
                      (if (##pair? _%key117345117353%_)
                          (let ((_%hd117350117399%_
                                 (##car _%key117345117353%_))
                                (_%tl117351117401%_
                                 (##cdr _%key117345117353%_)))
                            (let* ((_%id117404%_ _%hd117350117399%_)
                                   (_%mark117406%_ _%tl117351117401%_))
                              (_%K117349117396%_ _%mark117406%_ _%id117404%_)))
                          (_%else117347117361%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx117338%_ _%phi117337%_)
           (_%subst!117342%_ _%key117334%_)
           _%val117335%_
           _%update-binding117340%_))))
    (define gx#core-bind!__0
      (lambda (_%key117434%_ _%val117435%_)
        (let* ((_%rebind?117437%_ false)
               (_%phi117439%_ (gx#current-expander-phi))
               (_%ctx117441%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117434%_
           _%val117435%_
           _%rebind?117437%_
           _%phi117439%_
           _%ctx117441%_))))
    (define gx#core-bind!__1
      (lambda (_%key117443%_ _%val117444%_ _%rebind?117445%_)
        (let* ((_%phi117447%_ (gx#current-expander-phi))
               (_%ctx117449%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117443%_
           _%val117444%_
           _%rebind?117445%_
           _%phi117447%_
           _%ctx117449%_))))
    (define gx#core-bind!__2
      (lambda (_%key117451%_ _%val117452%_ _%rebind?117453%_ _%phi117454%_)
        (let ((_%ctx117456%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117451%_
           _%val117452%_
           _%rebind?117453%_
           _%phi117454%_
           _%ctx117456%_))))
    (define gx#core-bind!
      (lambda _g120005_
        (let ((_g120004_ (##length _g120005_)))
          (cond ((##fx= _g120004_ 2) (apply gx#core-bind!__0 _g120005_))
                ((##fx= _g120004_ 3) (apply gx#core-bind!__1 _g120005_))
                ((##fx= _g120004_ 4) (apply gx#core-bind!__2 _g120005_))
                ((##fx= _g120004_ 5) (apply gx#core-bind!__% _g120005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g120005_))))))
    (define gx#core-identifier-key
      (lambda (_%stx117265%_)
        (if (symbol? _%stx117265%_)
            (let* ((_%g117267117275%_ (gx#current-expander-marks))
                   (_%else117269117283%_ (lambda () _%stx117265%_))
                   (_%K117271117288%_
                    (lambda (_%hd117286%_) (cons _%stx117265%_ _%hd117286%_))))
              (if (##pair? _%g117267117275%_)
                  (let* ((_%hd117272117291%_ (##car _%g117267117275%_))
                         (_%hd117294%_ _%hd117272117291%_))
                    (_%K117271117288%_ _%hd117294%_))
                  (_%else117269117283%_)))
            (if (gx#identifier? _%stx117265%_)
                (let* ((_%id117297%_ (gx#syntax-local-unwrap _%stx117265%_))
                       (_%eid117299%_ (gx#stx-e _%id117297%_))
                       (_%marks117301%_
                        (gx#stx-identifier-marks* _%id117297%_))
                       (_%marks117303117311%_ _%marks117301%_)
                       (_%else117305117319%_ (lambda () _%eid117299%_))
                       (_%K117307117324%_
                        (lambda (_%hd117322%_)
                          (cons _%eid117299%_ _%hd117322%_))))
                  (if (##pair? _%marks117303117311%_)
                      (let* ((_%hd117308117327%_ (##car _%marks117303117311%_))
                             (_%hd117330%_ _%hd117308117327%_))
                        (_%K117307117324%_ _%hd117330%_))
                      (_%else117305117319%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx117265%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx117204%_ _%phi117205%_)
        (letrec ((_%make-phi117207%_
                  (lambda (_%super117263%_)
                    (let ((__obj119977
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj119977
                       (##gensym 'phi)
                       _%super117263%_)
                      __obj119977)))
                 (_%make-phi/up117208%_
                  (lambda (_%ctx117258%_ _%super117259%_)
                    (let ((_%ctx+1117261%_
                           (_%make-phi117207%_ _%super117259%_)))
                      (##unchecked-structure-set!
                       _%ctx117258%_
                       _%ctx+1117261%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1117261%_
                       _%ctx117258%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1117261%_)))
                 (_%make-phi/down117209%_
                  (lambda (_%ctx117253%_ _%super117254%_)
                    (let ((_%ctx-1117256%_
                           (_%make-phi117207%_ _%super117254%_)))
                      (##unchecked-structure-set!
                       _%ctx-1117256%_
                       _%ctx117253%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx117253%_
                       _%ctx-1117256%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1117256%_)))
                 (_%shift117210%_
                  (lambda (_%ctx117236%_
                           _%delta117237%_
                           _%make-delta-context117238%_
                           _%phi117239%_
                           _%K117240%_)
                    (let ((_%$e117242%_
                           (##unchecked-structure-ref
                            _%ctx117236%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e117242%_
                          ((lambda (_%super117245%_)
                             (let* ((_%super117247%_
                                     (_%K117240%_
                                      _%super117245%_
                                      _%delta117237%_))
                                    (_%ctx+d117249%_
                                     (_%make-delta-context117238%_
                                      _%ctx117236%_
                                      _%super117247%_)))
                               (_%K117240%_
                                _%ctx+d117249%_
                                (fx- _%phi117239%_ _%delta117237%_))))
                           _%$e117242%_)
                          (error '"Bad context" _%ctx117236%_))))))
          (let _%K117212%_ ((_%ctx117214%_ _%ctx117204%_)
                            (_%phi117215%_ _%phi117205%_))
            (if (fxzero? _%phi117215%_)
                _%ctx117214%_
                (if (##structure-instance-of? _%ctx117214%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi117215%_)
                        (let ((_%$e117219%_
                               (##unchecked-structure-ref
                                _%ctx117214%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e117219%_
                              ((lambda (_%g117221117223%_)
                                 (_%K117212%_
                                  _%g117221117223%_
                                  (##fx- _%phi117215%_ '1)))
                               _%$e117219%_)
                              (_%shift117210%_
                               _%ctx117214%_
                               '1
                               _%make-phi/up117208%_
                               _%phi117215%_
                               _%K117212%_)))
                        (let ((_%$e117227%_
                               (##unchecked-structure-ref
                                _%ctx117214%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e117227%_
                              ((lambda (_%g117229117231%_)
                                 (_%K117212%_
                                  _%g117229117231%_
                                  (##fx+ _%phi117215%_ '1)))
                               _%$e117227%_)
                              (_%shift117210%_
                               _%ctx117214%_
                               '-1
                               _%make-phi/down117209%_
                               _%phi117215%_
                               _%K117212%_))))
                    _%ctx117214%_))))))
    (define gx#core-context-get
      (lambda (_%ctx117201%_ _%key117202%_)
        (hash-get
         (##unchecked-structure-ref _%ctx117201%_ '2 '#f '#f)
         _%key117202%_)))
    (define gx#core-context-put!
      (lambda (_%ctx117197%_ _%key117198%_ _%val117199%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx117197%_ '2 '#f '#f)
         _%key117198%_
         _%val117199%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx117183%_ _%key117184%_)
        (let _%lp117186%_ ((_%ctx117188%_ _%ctx117183%_))
          (let ((_%$e117190%_
                 (gx#core-context-get _%ctx117188%_ _%key117184%_)))
            (if _%$e117190%_
                _%$e117190%_
                (let ((_%$e117193%_
                       (if (##structure-instance-of?
                            _%ctx117188%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx117188%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e117193%_ (_%lp117186%_ _%$e117193%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx117172%_ _%key117173%_ _%val117174%_ _%rebind117175%_)
        (let ((_%$e117177%_ (gx#core-context-get _%ctx117172%_ _%key117173%_)))
          (if _%$e117177%_
              ((lambda (_%xval117180%_)
                 (gx#core-context-put!
                  _%ctx117172%_
                  _%key117173%_
                  (_%rebind117175%_ _%xval117180%_)))
               _%$e117177%_)
              (gx#core-context-put!
               _%ctx117172%_
               _%key117173%_
               _%val117174%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx117147%_ _%stop?117148%_)
        (let _%lp117150%_ ((_%ctx117152%_ _%ctx117147%_))
          (if (_%stop?117148%_ _%ctx117152%_)
              _%ctx117152%_
              (if (##structure-instance-of? _%ctx117152%_ 'gx#phi-context::t)
                  (_%lp117150%_
                   (##unchecked-structure-ref _%ctx117152%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx117161%_ (gx#current-expander-context))
               (_%stop?117163%_ gx#top-context?))
          (gx#core-context-top__% _%ctx117161%_ _%stop?117163%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx117165%_)
        (let ((_%stop?117167%_ gx#top-context?))
          (gx#core-context-top__% _%ctx117165%_ _%stop?117167%_))))
    (define gx#core-context-top
      (lambda _g120007_
        (let ((_g120006_ (##length _g120007_)))
          (cond ((##fx= _g120006_ 0) (apply gx#core-context-top__0 _g120007_))
                ((##fx= _g120006_ 1) (apply gx#core-context-top__1 _g120007_))
                ((##fx= _g120006_ 2) (apply gx#core-context-top__% _g120007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g120007_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx117132%_)
        (let _%lp117134%_ ((_%ctx117136%_ _%ctx117132%_))
          (if (##structure-instance-of? _%ctx117136%_ 'gx#phi-context::t)
              (_%lp117134%_
               (##unchecked-structure-ref _%ctx117136%_ '3 '#f '#f))
              _%ctx117136%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx117142%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx117142%_))))
    (define gx#core-context-root
      (lambda _g120009_
        (let ((_g120008_ (##length _g120009_)))
          (cond ((##fx= _g120008_ 0) (apply gx#core-context-root__0 _g120009_))
                ((##fx= _g120008_ 1) (apply gx#core-context-root__% _g120009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g120009_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx117114%_ . _%ignore117115%_)
        (let ((_%$e117117%_ (gx#current-expander-allow-rebind?)))
          (if _%$e117117%_
              _%$e117117%_
              (if (##structure-instance-of? _%ctx117114%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx117114%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx117114%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx117124%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx117124%_))))
    (define gx#core-context-rebind?
      (lambda _g120011_
        (let ((_g120010_ (##length _g120011_)))
          (cond ((##fx= _g120010_ 0)
                 (apply gx#core-context-rebind?__0 _g120011_))
                ((##fx= _g120010_ 1)
                 (apply gx#core-context-rebind?__% _g120011_))
                ((##fx>= _g120010_ 1)
                 (apply gx#core-context-rebind?__% _g120011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g120011_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx117097%_)
        (let ((_%$e117099%_ (gx#core-context-top__1 _%ctx117097%_)))
          (if _%$e117099%_
              ((lambda (_%ctx117102%_)
                 (if (##structure-instance-of?
                      _%ctx117102%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx117102%_ '6 '#f '#f)
                     '#f))
               _%$e117099%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx117109%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx117109%_))))
    (define gx#core-context-namespace
      (lambda _g120013_
        (let ((_g120012_ (##length _g120013_)))
          (cond ((##fx= _g120012_ 0)
                 (apply gx#core-context-namespace__0 _g120013_))
                ((##fx= _g120012_ 1)
                 (apply gx#core-context-namespace__% _g120013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g120013_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind117083%_ _%is?117084%_)
        (if (##structure-direct-instance-of?
             _%bind117083%_
             'gx#syntax-binding::t)
            (_%is?117084%_
             (##unchecked-structure-ref _%bind117083%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind117089%_)
        (let ((_%is?117091%_ gx#expander?))
          (gx#expander-binding?__% _%bind117089%_ _%is?117091%_))))
    (define gx#expander-binding?
      (lambda _g120015_
        (let ((_g120014_ (##length _g120015_)))
          (cond ((##fx= _g120014_ 1) (apply gx#expander-binding?__0 _g120015_))
                ((##fx= _g120014_ 2) (apply gx#expander-binding?__% _g120015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g120015_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind117080%_)
        (gx#expander-binding?__% _%bind117080%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind117078%_)
        (gx#expander-binding?__% _%bind117078%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind117072%_)
        (letrec ((_%direct-special-form?117074%_
                  (lambda (_%obj117076%_)
                    (##structure-direct-instance-of?
                     _%obj117076%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind117072%_
           _%direct-special-form?117074%_))))
    (define gx#special-form-binding?
      (lambda (_%bind117070%_)
        (gx#expander-binding?__% _%bind117070%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind117061%_)
        (letrec ((_%feature?117063%_
                  (lambda (_%e117065%_)
                    (let ((_%$e117067%_
                           (##structure-instance-of?
                            _%e117065%_
                            'gx#feature-expander::t)))
                      (if _%$e117067%_
                          _%$e117067%_
                          (##structure-instance-of?
                           _%e117065%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind117061%_ _%feature?117063%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind117059%_)
        (gx#expander-binding?__% _%bind117059%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id117046%_ _%bound?117047%_)
        (if (gx#identifier? _%id117046%_)
            (_%bound?117047%_ (gx#resolve-identifier__0 _%id117046%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id117052%_)
        (let ((_%bound?117054%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id117052%_ _%bound?117054%_))))
    (define gx#core-bound-identifier?
      (lambda _g120017_
        (let ((_g120016_ (##length _g120017_)))
          (cond ((##fx= _g120016_ 1)
                 (apply gx#core-bound-identifier?__0 _g120017_))
                ((##fx= _g120016_ 2)
                 (apply gx#core-bound-identifier?__% _g120017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g120017_))))))
    (define gx#core-identifier=?
      (lambda (_%x117036%_ _%y117037%_)
        (letrec ((_%y=?117039%_
                  (lambda (_%xid117043%_)
                    ((if (list? _%y117037%_) memq eq?)
                     _%xid117043%_
                     _%y117037%_))))
          (let ((_%bind117041%_ (gx#resolve-identifier__0 _%x117036%_)))
            (if (##structure-instance-of? _%bind117041%_ 'gx#binding::t)
                (_%y=?117039%_
                 (##unchecked-structure-ref _%bind117041%_ '1 '#f '#f))
                (_%y=?117039%_ (gx#stx-e _%x117036%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e117034%_)
        (if (interned-symbol? _%e117034%_)
            (string-index__0 (symbol->string _%e117034%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx116987%_ _%src116988%_ _%ctx116989%_ _%marks116990%_)
        (if (##structure? _%stx116987%_)
            (let ((_%$e116992%_ (gx#sealed-syntax-unwrap _%stx116987%_)))
              (if _%$e116992%_
                  _%$e116992%_
                  (if (gx#identifier? _%stx116987%_)
                      (let ((_%id116996%_
                             (gx#stx-unwrap__% _%stx116987%_ _%marks116990%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id116996%_ '1 '#f '#f)
                         (let ((_%$e116998%_
                                (##unchecked-structure-ref
                                 _%id116996%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e116998%_ _%$e116998%_ _%src116988%_))
                         _%ctx116989%_
                         (##unchecked-structure-ref _%id116996%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx116987%_)
                       (let ((_%$e117002%_ (gx#stx-source _%stx116987%_)))
                         (if _%$e117002%_ _%$e117002%_ _%src116988%_))
                       _%ctx116989%_
                       (reverse _%marks116990%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx116987%_
             _%src116988%_
             _%ctx116989%_
             (reverse _%marks116990%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx117008%_)
        (let* ((_%src117010%_ '#f)
               (_%ctx117012%_ (gx#current-expander-context))
               (_%marks117014%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx117008%_
           _%src117010%_
           _%ctx117012%_
           _%marks117014%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx117016%_ _%src117017%_)
        (let* ((_%ctx117019%_ (gx#current-expander-context))
               (_%marks117021%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx117016%_
           _%src117017%_
           _%ctx117019%_
           _%marks117021%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx117023%_ _%src117024%_ _%ctx117025%_)
        (let ((_%marks117027%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx117023%_
           _%src117024%_
           _%ctx117025%_
           _%marks117027%_))))
    (define gx#core-quote-syntax
      (lambda _g120019_
        (let ((_g120018_ (##length _g120019_)))
          (cond ((##fx= _g120018_ 1) (apply gx#core-quote-syntax__0 _g120019_))
                ((##fx= _g120018_ 2) (apply gx#core-quote-syntax__1 _g120019_))
                ((##fx= _g120018_ 3) (apply gx#core-quote-syntax__2 _g120019_))
                ((##fx= _g120018_ 4) (apply gx#core-quote-syntax__% _g120019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g120019_))))))
    (define gx#core-cons
      (lambda (_%hd116983%_ _%tl116984%_)
        (cons (gx#core-quote-syntax__0 _%hd116983%_) _%tl116984%_)))
    (define gx#core-list
      (lambda (_%hd116980%_ . _%rest116981%_)
        (cons (gx#core-quote-syntax__0 _%hd116980%_) _%rest116981%_)))
    (define gx#core-cons*
      (lambda (_%hd116977%_ . _%rest116978%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd116977%_) _%rest116978%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path116946%_ _%rel116947%_)
        (let ((_%path116964%_ (gx#stx-e _%stx-path116946%_))
              (_%reldir116965%_
               (let _%lp116949%_ ((_%relsrc116951%_
                                   (let ((_%$e116961%_
                                          (gx#stx-source _%stx-path116946%_)))
                                     (if _%$e116961%_
                                         _%$e116961%_
                                         _%rel116947%_))))
                 (if (##structure-instance-of? _%relsrc116951%_ 'gerbil#AST::t)
                     (_%lp116949%_
                      (let ((_%$e116954%_ (gx#stx-source _%relsrc116951%_)))
                        (if _%$e116954%_
                            _%$e116954%_
                            (gx#stx-e _%relsrc116951%_))))
                     (if (source-location-path? _%relsrc116951%_)
                         (path-directory
                          (source-location-path _%relsrc116951%_))
                         (if (string? _%relsrc116951%_)
                             (path-directory _%relsrc116951%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path116964%_ (path-normalize _%reldir116965%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path116970%_)
        (let ((_%rel116972%_ '#f))
          (gx#core-resolve-path__% _%stx-path116970%_ _%rel116972%_))))
    (define gx#core-resolve-path
      (lambda _g120021_
        (let ((_g120020_ (##length _g120021_)))
          (cond ((##fx= _g120020_ 1) (apply gx#core-resolve-path__0 _g120021_))
                ((##fx= _g120020_ 2) (apply gx#core-resolve-path__% _g120021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g120021_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr116902%_ _%ctx116903%_)
        (let* ((_%repr116904116911%_ _%repr116902%_)
               (_%E116906116915%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr116904116911%_
                         '([phi . subs]))
                  '#!void))
               (_%K116907116923%_
                (lambda (_%subs116918%_ _%phi116919%_)
                  (let ((_%subst116921%_
                         (if (null? _%subs116918%_)
                             '#f
                             (list->hash-table-eq _%subs116918%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst116921%_
                     _%ctx116903%_
                     _%phi116919%_
                     '#f)))))
          (if (##pair? _%repr116904116911%_)
              (let ((_%hd116908116926%_ (##car _%repr116904116911%_))
                    (_%tl116909116928%_ (##cdr _%repr116904116911%_)))
                (let* ((_%phi116931%_ _%hd116908116926%_)
                       (_%subs116933%_ _%tl116909116928%_))
                  (_%K116907116923%_ _%subs116933%_ _%phi116931%_)))
              (_%E116906116915%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr116938%_)
        (let ((_%ctx116940%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr116938%_ _%ctx116940%_))))
    (define gx#core-deserialize-mark
      (lambda _g120023_
        (let ((_g120022_ (##length _g120023_)))
          (cond ((##fx= _g120022_ 1)
                 (apply gx#core-deserialize-mark__0 _g120023_))
                ((##fx= _g120022_ 2)
                 (apply gx#core-deserialize-mark__% _g120023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g120023_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx116899%_)
        (gx#stx-rewrap _%stx116899%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx116897%_)
        (gx#stx-unwrap__% _%stx116897%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx116867%_)
        (let* ((_%g116868116876%_ (gx#current-expander-marks))
               (_%else116870116884%_ (lambda () _%stx116867%_))
               (_%K116872116889%_
                (lambda (_%hd116887%_)
                  (gx#stx-apply-mark _%stx116867%_ _%hd116887%_))))
          (if (##pair? _%g116868116876%_)
              (let* ((_%hd116873116892%_ (##car _%g116868116876%_))
                     (_%hd116895%_ _%hd116873116892%_))
                (_%K116872116889%_ _%hd116895%_))
              (_%else116870116884%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx116852%_ _%E116853%_)
        (let ((_%bind116855%_ (gx#resolve-identifier__0 _%stx116852%_)))
          (if (##structure-direct-instance-of?
               _%bind116855%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind116855%_ '4 '#f '#f)
              (_%E116853%_ _%stx116852%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx116860%_)
        (let ((_%E116862%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx116860%_ _%E116862%_))))
    (define gx#syntax-local-e
      (lambda _g120025_
        (let ((_g120024_ (##length _g120025_)))
          (cond ((##fx= _g120024_ 1) (apply gx#syntax-local-e__0 _g120025_))
                ((##fx= _g120024_ 2) (apply gx#syntax-local-e__% _g120025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g120025_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx116836%_ _%E116837%_)
        (let ((_%e116839%_ (gx#syntax-local-e__% _%stx116836%_ _%E116837%_)))
          (if (##structure-instance-of? _%e116839%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e116839%_ '1 '#f '#f)
              _%e116839%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx116844%_)
        (let ((_%E116846%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx116844%_ _%E116846%_))))
    (define gx#syntax-local-value
      (lambda _g120027_
        (let ((_g120026_ (##length _g120027_)))
          (cond ((##fx= _g120026_ 1)
                 (apply gx#syntax-local-value__0 _g120027_))
                ((##fx= _g120026_ 2)
                 (apply gx#syntax-local-value__% _g120027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g120027_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx116833%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx116833%_)))))
