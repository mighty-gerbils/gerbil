(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712823026)
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
      (lambda _%$args119477%_
        (apply make-instance gx#expander-context::t _%$args119477%_)))
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
      (lambda _%$args119474%_
        (apply make-instance gx#root-context::t _%$args119474%_)))
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
      (lambda _%$args119471%_
        (apply make-instance gx#phi-context::t _%$args119471%_)))
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
      (lambda _%$args119468%_
        (apply make-instance gx#top-context::t _%$args119468%_)))
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
      (lambda _%$args119465%_
        (apply make-instance gx#module-context::t _%$args119465%_)))
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
      (lambda _%$args119462%_
        (apply make-instance gx#prelude-context::t _%$args119462%_)))
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
      (lambda _%$args119459%_
        (apply make-instance gx#local-context::t _%$args119459%_)))
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
      (lambda (_%self116365119430%_ _%id119432%_ _%super119433%_)
        (let* ((_%self119435%_ _%self116365119430%_)
               (_%self119437%_ _%self119435%_))
          (if (##fx< '3 (##structure-length _%self119437%_))
              (begin
                (##unchecked-structure-set!
                 _%self119437%_
                 _%id119432%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119437%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119437%_
                 _%super119433%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119437%_
                     '3
                     (##vector-length _%self119437%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self116365119450%_ _%id119451%_)
        (let ((_%super119453%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self116365119450%_
           _%id119451%_
           _%super119453%_))))
    (define gx#phi-context:::init!
      (lambda _g119520_
        (let ((_g119519_ (##length _g119520_)))
          (cond ((##fx= _g119519_ 2)
                 (apply gx#phi-context:::init!__0 _g119520_))
                ((##fx= _g119519_ 3)
                 (apply gx#phi-context:::init!__% _g119520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g119520_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self116366119281%_ _%super119283%_)
        (let* ((_%self119285%_ _%self116366119281%_)
               (_%self119287%_ _%self119285%_))
          (if (##fx< '3 (##structure-length _%self119287%_))
              (begin
                (##unchecked-structure-set!
                 _%self119287%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119287%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119287%_
                 _%super119283%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119287%_
                     '3
                     (##vector-length _%self119287%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self116366119300%_)
        (let ((_%super119302%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self116366119300%_ _%super119302%_))))
    (define gx#local-context:::init!
      (lambda _g119522_
        (let ((_g119521_ (##length _g119522_)))
          (cond ((##fx= _g119521_ 1)
                 (apply gx#local-context:::init!__0 _g119522_))
                ((##fx= _g119521_ 2)
                 (apply gx#local-context:::init!__% _g119522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g119522_))))))
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
      (lambda _%$args119155%_
        (apply make-instance gx#binding::t _%$args119155%_)))
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
      (lambda _%$args119152%_
        (apply make-instance gx#runtime-binding::t _%$args119152%_)))
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
      (lambda _%$args119149%_
        (apply make-instance gx#local-binding::t _%$args119149%_)))
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
      (lambda _%$args119146%_
        (apply make-instance gx#top-binding::t _%$args119146%_)))
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
      (lambda _%$args119143%_
        (apply make-instance gx#module-binding::t _%$args119143%_)))
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
      (lambda _%$args119140%_
        (apply make-instance gx#extern-binding::t _%$args119140%_)))
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
      (lambda _%$args119137%_
        (apply make-instance gx#syntax-binding::t _%$args119137%_)))
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
      (lambda _%$args119134%_
        (apply make-instance gx#import-binding::t _%$args119134%_)))
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
      (lambda _%$args119131%_
        (apply make-instance gx#alias-binding::t _%$args119131%_)))
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
      (lambda _%$args119128%_
        (apply make-instance gx#expander::t _%$args119128%_)))
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
      (lambda _%$args119125%_
        (apply make-instance gx#core-expander::t _%$args119125%_)))
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
      (lambda _%$args119122%_
        (apply make-instance gx#expression-form::t _%$args119122%_)))
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
      (lambda _%$args119119%_
        (apply make-instance gx#special-form::t _%$args119119%_)))
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
      (lambda _%$args119116%_
        (apply make-instance gx#definition-form::t _%$args119116%_)))
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
      (lambda _%$args119113%_
        (apply make-instance gx#top-special-form::t _%$args119113%_)))
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
      (lambda _%$args119110%_
        (apply make-instance gx#module-special-form::t _%$args119110%_)))
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
      (lambda _%$args119107%_
        (apply make-instance gx#feature-expander::t _%$args119107%_)))
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
      (lambda _%$args119104%_
        (apply make-instance gx#private-feature-expander::t _%$args119104%_)))
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
      (lambda _%$args119101%_
        (apply make-instance gx#reserved-expander::t _%$args119101%_)))
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
      (lambda _%$args119098%_
        (apply make-instance gx#macro-expander::t _%$args119098%_)))
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
      (lambda _%$args119095%_
        (apply make-instance gx#rename-macro-expander::t _%$args119095%_)))
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
      (lambda _%$args119092%_
        (apply make-instance gx#user-expander::t _%$args119092%_)))
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
      (lambda _%$args119089%_
        (apply make-instance gx#expander-mark::t _%$args119089%_)))
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
      (lambda (_%ctx119073%_
               _%message119074%_
               _%stx119075%_
               .
               _%details119076%_)
        (let ((_%ctx119087%_
               (let ((_%$e119078%_ _%ctx119073%_))
                 (if _%$e119078%_
                     _%$e119078%_
                     (let ((_%$e119081%_ (gx#core-context-top__0)))
                       (if _%$e119081%_
                           ((lambda (_%ctx119084%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx119084%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e119081%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message119074%_
                  (cons _%stx119075%_ _%details119076%_)
                  _%ctx119087%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx119060%_ _%expression?119061%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx119060%_ _%expression?119061%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx119066%_)
        (let ((_%expression?119068%_ '#f))
          (gx#eval-syntax__% _%stx119066%_ _%expression?119068%_))))
    (define gx#eval-syntax
      (lambda _g119524_
        (let ((_g119523_ (##length _g119524_)))
          (cond ((##fx= _g119523_ 1) (apply gx#eval-syntax__0 _g119524_))
                ((##fx= _g119523_ 2) (apply gx#eval-syntax__% _g119524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g119524_))))))
    (define gx#eval-syntax*
      (lambda (_%stx119057%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx119057%_))))
    (define gx#core-expand__%
      (lambda (_%stx119044%_ _%expression?119045%_)
        (if _%expression?119045%_
            (gx#core-expand-expression _%stx119044%_)
            (gx#core-expand-top _%stx119044%_))))
    (define gx#core-expand__0
      (lambda (_%stx119050%_)
        (let ((_%expression?119052%_ '#f))
          (gx#core-expand__% _%stx119050%_ _%expression?119052%_))))
    (define gx#core-expand
      (lambda _g119526_
        (let ((_g119525_ (##length _g119526_)))
          (cond ((##fx= _g119525_ 1) (apply gx#core-expand__0 _g119526_))
                ((##fx= _g119525_ 2) (apply gx#core-expand__% _g119526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g119526_))))))
    (define gx#core-expand-top
      (lambda (_%stx119011%_)
        (let* ((_%stx119013%_ (gx#core-expand*__0 _%stx119011%_))
               (_%e119014119021%_ _%stx119013%_)
               (_%E119016119025%_
                (lambda () (gx#core-expand-expression _%stx119013%_)))
               (_%E119015119039%_
                (lambda ()
                  (if (gx#stx-pair? _%e119014119021%_)
                      (let ((_%e119017119029%_
                             (gx#syntax-e _%e119014119021%_)))
                        (let ((_%hd119018119032%_ (##car _%e119017119029%_))
                              (_%tl119019119034%_ (##cdr _%e119017119029%_)))
                          (let ((_%form119037%_ _%hd119018119032%_))
                            (if (gx#core-bound-identifier?__0 _%form119037%_)
                                _%stx119013%_
                                (_%E119016119025%_)))))
                      (_%E119016119025%_)))))
          (_%E119015119039%_))))
    (define gx#core-expand-expression
      (lambda (_%stx118943%_)
        (letrec ((_%sealed-expression?118945%_
                  (lambda (_%hd118981%_)
                    (if (gx#sealed-syntax? _%hd118981%_)
                        (let* ((_%e118982118989%_ _%hd118981%_)
                               (_%E118984118993%_ (lambda () '#f))
                               (_%E118983119007%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e118982118989%_)
                                      (let ((_%e118985118997%_
                                             (gx#syntax-e _%e118982118989%_)))
                                        (let ((_%hd118986119000%_
                                               (##car _%e118985118997%_))
                                              (_%tl118987119002%_
                                               (##cdr _%e118985118997%_)))
                                          (let ((_%form119005%_
                                                 _%hd118986119000%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form119005%_
                                                 gx#expression-form-binding?)
                                                (_%E118984118993%_)))))
                                      (_%E118984118993%_)))))
                          (_%E118983119007%_))
                        '#f)))
                 (_%illegal-expression118946%_
                  (lambda (_%hd118978%_ . _%_118979%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx118943%_
                     _%hd118978%_)))
                 (_%expand-e118947%_
                  (lambda (_%form118970%_ _%hd118971%_)
                    (let ((_%bind118973%_
                           (if (##structure-instance-of?
                                _%form118970%_
                                'gx#binding::t)
                               _%form118970%_
                               (gx#resolve-identifier__0 _%form118970%_))))
                      (if (gx#core-expander-binding? _%bind118973%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind118973%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd118971%_
                            (gx#stx-source _%stx118943%_)))
                          (if (##structure-direct-instance-of?
                               _%bind118973%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind118973%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd118971%_
                                 (gx#stx-source _%stx118943%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx118943%_
                               _%form118970%_)))))))
          (let ((_%hd118949%_ (gx#core-expand-head _%stx118943%_)))
            (if (_%sealed-expression?118945%_ _%hd118949%_)
                _%hd118949%_
                (if (gx#stx-pair? _%hd118949%_)
                    (let* ((_%form118953%_ (gx#stx-car _%hd118949%_))
                           (_%bind118955%_
                            (if (gx#identifier? _%form118953%_)
                                (gx#resolve-identifier__0 _%form118953%_)
                                '#f)))
                      (if (or (not _%bind118955%_)
                              (not (gx#core-expander-binding? _%bind118955%_)))
                          (_%expand-e118947%_
                           '%%app
                           (cons '%%app _%hd118949%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind118955%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd118949%_
                               _%illegal-expression118946%_)
                              (if (gx#expression-form-binding? _%bind118955%_)
                                  (_%expand-e118947%_
                                   _%bind118955%_
                                   _%hd118949%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind118955%_)
                                      (gx#core-expand-expression
                                       (_%expand-e118947%_
                                        _%bind118955%_
                                        _%hd118949%_))
                                      (_%illegal-expression118946%_
                                       _%hd118949%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd118949%_)
                        (_%illegal-expression118946%_ _%hd118949%_)
                        (if (gx#identifier? _%hd118949%_)
                            (_%expand-e118947%_
                             '%%ref
                             (cons '%%ref (cons _%hd118949%_ '())))
                            (if (gx#stx-datum? _%hd118949%_)
                                (_%expand-e118947%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd118949%_ '())))
                                (_%illegal-expression118946%_
                                 _%hd118949%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx118938%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx118941%_ (gx#core-expand-expression _%stx118938%_)))
             (values _%stx118941%_ (gx#eval-syntax* _%stx118941%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx118919%_ _%stop?118920%_)
        (let _%lp118922%_ ((_%stx118924%_ _%stx118919%_))
          (if (_%stop?118920%_ _%stx118924%_)
              _%stx118924%_
              (let ((_%rstx118926%_ (gx#core-expand1 _%stx118924%_)))
                (if (eq? _%stx118924%_ _%rstx118926%_)
                    _%stx118924%_
                    (_%lp118922%_ _%rstx118926%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx118931%_)
        (let ((_%stop?118933%_ false))
          (gx#core-expand*__% _%stx118931%_ _%stop?118933%_))))
    (define gx#core-expand*
      (lambda _g119528_
        (let ((_g119527_ (##length _g119528_)))
          (cond ((##fx= _g119527_ 1) (apply gx#core-expand*__0 _g119528_))
                ((##fx= _g119527_ 2) (apply gx#core-expand*__% _g119528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g119528_))))))
    (define gx#core-expand1
      (lambda (_%stx118871%_)
        (letrec ((_%step118873%_
                  (lambda (_%hd118910%_)
                    (let ((_%bind118912%_
                           (gx#resolve-identifier__0 _%hd118910%_)))
                      (if (##structure-instance-of?
                           _%bind118912%_
                           'gx#runtime-binding::t)
                          _%stx118871%_
                          (if (##structure-direct-instance-of?
                               _%bind118912%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind118912%_
                                '4
                                '#f
                                '#f)
                               _%stx118871%_)
                              (if (not _%bind118912%_)
                                  _%stx118871%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx118871%_))))))))
          (let* ((_%e118874118882%_ _%stx118871%_)
                 (_%E118880118886%_ (lambda () _%stx118871%_))
                 (_%E118876118892%_
                  (lambda ()
                    (let ((_%hd118890%_ _%e118874118882%_))
                      (if (gx#identifier? _%hd118890%_)
                          (_%step118873%_ _%hd118890%_)
                          (_%E118880118886%_)))))
                 (_%E118875118906%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118874118882%_)
                        (let ((_%e118877118896%_
                               (gx#syntax-e _%e118874118882%_)))
                          (let ((_%hd118878118899%_ (##car _%e118877118896%_))
                                (_%tl118879118901%_ (##cdr _%e118877118896%_)))
                            (let ((_%hd118904%_ _%hd118878118899%_))
                              (if (gx#identifier? _%hd118904%_)
                                  (_%step118873%_ _%hd118904%_)
                                  (_%E118876118892%_)))))
                        (_%E118876118892%_)))))
            (_%E118875118906%_)))))
    (define gx#core-expand-head
      (lambda (_%stx118837%_)
        (letrec ((_%stop?118839%_
                  (lambda (_%stx118841%_)
                    (let* ((_%e118842118849%_ _%stx118841%_)
                           (_%E118844118853%_ (lambda () '#f))
                           (_%E118843118867%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118842118849%_)
                                  (let ((_%e118845118857%_
                                         (gx#syntax-e _%e118842118849%_)))
                                    (let ((_%hd118846118860%_
                                           (##car _%e118845118857%_))
                                          (_%tl118847118862%_
                                           (##cdr _%e118845118857%_)))
                                      (let ((_%hd118865%_ _%hd118846118860%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd118865%_)
                                            (_%E118844118853%_)))))
                                  (_%E118844118853%_)))))
                      (_%E118843118867%_)))))
          (gx#core-expand*__% _%stx118837%_ _%stop?118839%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx118643%_
               _%expand-special118644%_
               _%begin-form118645%_
               _%expand-e118646%_)
        (letrec ((_%expand-splice118648%_
                  (lambda (_%hd118811%_
                           _%body118812%_
                           _%rest118813%_
                           _%r118814%_)
                    (if (gx#stx-list? _%body118812%_)
                        (_%K118652%_
                         (gx#stx-foldr cons _%rest118813%_ _%body118812%_)
                         _%r118814%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx118643%_
                         _%hd118811%_))))
                 (_%expand-cond-expand118649%_
                  (lambda (_%hd118807%_ _%rest118808%_ _%r118809%_)
                    (_%K118652%_
                     (cons (gx#core-expand-cond-expand% _%hd118807%_)
                           _%rest118808%_)
                     _%r118809%_)))
                 (_%expand-include118650%_
                  (lambda (_%hd118756%_ _%rest118757%_ _%r118758%_)
                    (let* ((_%e118759118769%_ _%hd118756%_)
                           (_%E118761118773%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118759118769%_)))
                           (_%E118760118803%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118759118769%_)
                                  (let ((_%e118762118777%_
                                         (gx#syntax-e _%e118759118769%_)))
                                    (let ((_%hd118763118780%_
                                           (##car _%e118762118777%_))
                                          (_%tl118764118782%_
                                           (##cdr _%e118762118777%_)))
                                      (if (gx#stx-pair? _%tl118764118782%_)
                                          (let ((_%e118765118785%_
                                                 (gx#syntax-e
                                                  _%tl118764118782%_)))
                                            (let ((_%hd118766118788%_
                                                   (##car _%e118765118785%_))
                                                  (_%tl118767118790%_
                                                   (##cdr _%e118765118785%_)))
                                              (let ((_%path118793%_
                                                     _%hd118766118788%_))
                                                (if (gx#stx-null?
                                                     _%tl118767118790%_)
                                                    (if (gx#stx-string?
                                                         _%path118793%_)
                                                        (let* ((_%rpath118795%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path118793%_
                         (gx#stx-source _%hd118756%_)))
                       (_%block118797%_
                        (gx#core-expand-include%__%
                         _%hd118756%_
                         _%rpath118795%_))
                       (_%rbody118800%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block118797%_
                            _%expand-special118644%_
                            '#f
                            _%expand-e118646%_))
                         gx#current-expander-path
                         (cons _%rpath118795%_ (gx#current-expander-path)))))
                  (_%K118652%_
                   _%rest118757%_
                   (__foldr1 cons _%r118758%_ _%rbody118800%_)))
                (_%E118761118773%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118761118773%_)))))
                                          (_%E118761118773%_))))
                                  (_%E118761118773%_)))))
                      (_%E118760118803%_))))
                 (_%expand-expression118651%_
                  (lambda (_%hd118752%_ _%rest118753%_ _%r118754%_)
                    (_%K118652%_
                     _%rest118753%_
                     (cons (_%expand-e118646%_ _%hd118752%_) _%r118754%_))))
                 (_%K118652%_
                  (lambda (_%rest118682%_ _%r118683%_)
                    (let* ((_%e118684118691%_ _%rest118682%_)
                           (_%E118686118695%_
                            (lambda ()
                              (if _%begin-form118645%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form118645%_
                                    (reverse _%r118683%_))
                                   (gx#stx-source _%stx118643%_))
                                  _%r118683%_)))
                           (_%E118685118748%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118684118691%_)
                                  (let ((_%e118687118699%_
                                         (gx#syntax-e _%e118684118691%_)))
                                    (let ((_%hd118688118702%_
                                           (##car _%e118687118699%_))
                                          (_%tl118689118704%_
                                           (##cdr _%e118687118699%_)))
                                      (let* ((_%hd118707%_ _%hd118688118702%_)
                                             (_%rest118709%_
                                              _%tl118689118704%_))
                                        (if '#t
                                            (let* ((_%hd118711%_
                                                    (gx#core-expand-head
                                                     _%hd118707%_))
                                                   (_%e118712118719%_
                                                    _%hd118711%_)
                                                   (_%E118714118723%_
                                                    (lambda ()
                                                      (_%expand-expression118651%_
                                                       _%hd118711%_
                                                       _%rest118709%_
                                                       _%r118683%_)))
                                                   (_%E118713118744%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e118712118719%_)
                                                          (let ((_%e118715118727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e118712118719%_)))
                    (let ((_%hd118716118730%_ (##car _%e118715118727%_))
                          (_%tl118717118732%_ (##cdr _%e118715118727%_)))
                      (let* ((_%form118735%_ _%hd118716118730%_)
                             (_%body118737%_ _%tl118717118732%_))
                        (if '#t
                            (let ((_%bind118739%_
                                   (if (gx#identifier? _%form118735%_)
                                       (gx#resolve-identifier__0
                                        _%form118735%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind118739%_)
                                  (let ((_%$e118741%_
                                         (##unchecked-structure-ref
                                          _%bind118739%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e118741%_)
                                        (_%expand-splice118648%_
                                         _%hd118711%_
                                         _%body118737%_
                                         _%rest118709%_
                                         _%r118683%_)
                                        (if (eq? '%#cond-expand _%$e118741%_)
                                            (_%expand-cond-expand118649%_
                                             _%hd118711%_
                                             _%rest118709%_
                                             _%r118683%_)
                                            (if (eq? '%#include _%$e118741%_)
                                                (_%expand-include118650%_
                                                 _%hd118711%_
                                                 _%rest118709%_
                                                 _%r118683%_)
                                                (_%expand-special118644%_
                                                 _%hd118711%_
                                                 _%K118652%_
                                                 _%rest118709%_
                                                 _%r118683%_)))))
                                  (_%expand-expression118651%_
                                   _%hd118711%_
                                   _%rest118709%_
                                   _%r118683%_)))
                            (_%E118714118723%_)))))
                  (_%E118714118723%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E118713118744%_))
                                            (_%E118686118695%_)))))
                                  (_%E118686118695%_)))))
                      (_%E118685118748%_)))))
          (let* ((_%e118653118660%_ _%stx118643%_)
                 (_%E118655118664%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118653118660%_)))
                 (_%E118654118678%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118653118660%_)
                        (let ((_%e118656118668%_
                               (gx#syntax-e _%e118653118660%_)))
                          (let ((_%hd118657118671%_ (##car _%e118656118668%_))
                                (_%tl118658118673%_ (##cdr _%e118656118668%_)))
                            (let ((_%body118676%_ _%tl118658118673%_))
                              (if (gx#stx-list? _%body118676%_)
                                  (_%K118652%_ _%body118676%_ '())
                                  (_%E118655118664%_)))))
                        (_%E118655118664%_)))))
            (_%E118654118678%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx118819%_ _%expand-special118820%_)
        (let* ((_%begin-form118822%_ '%#begin)
               (_%expand-e118824%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118819%_
           _%expand-special118820%_
           _%begin-form118822%_
           _%expand-e118824%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx118826%_ _%expand-special118827%_ _%begin-form118828%_)
        (let ((_%expand-e118830%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118826%_
           _%expand-special118827%_
           _%begin-form118828%_
           _%expand-e118830%_))))
    (define gx#core-expand-block
      (lambda _g119530_
        (let ((_g119529_ (##length _g119530_)))
          (cond ((##fx= _g119529_ 2) (apply gx#core-expand-block__0 _g119530_))
                ((##fx= _g119529_ 3) (apply gx#core-expand-block__1 _g119530_))
                ((##fx= _g119529_ 4) (apply gx#core-expand-block__% _g119530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g119530_))))))
    (define gx#core-expand-block*
      (lambda (_%stx118591%_ _%expand-special118592%_)
        (let* ((_%g118593118604%_
                (gx#core-expand-block__1
                 _%stx118591%_
                 _%expand-special118592%_
                 '#f))
               (_%E118597118608%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118593118604%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K118602118639%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx118591%_)))
                (_%K118599118625%_ (lambda (_%expr118623%_) _%expr118623%_))
                (_%K118598118614%_
                 (lambda (_%body118612%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body118612%_))
                    (gx#stx-source _%stx118591%_)))))
            (let ((_%try-match118595118635%_
                   (lambda ()
                     (if (##pair? _%g118593118604%_)
                         (let ((_%tl118601118630%_ (##cdr _%g118593118604%_))
                               (_%hd118600118628%_ (##car _%g118593118604%_)))
                           (if (##null? _%tl118601118630%_)
                               (let ((_%expr118633%_ _%hd118600118628%_))
                                 (_%K118599118625%_ _%expr118633%_))
                               (let ((_%body118617%_ _%g118593118604%_))
                                 (_%K118598118614%_ _%body118617%_))))
                         (let ((_%body118617%_ _%g118593118604%_))
                           (_%K118598118614%_ _%body118617%_))))))
              (if (##null? _%g118593118604%_)
                  (_%K118602118639%_)
                  (_%try-match118595118635%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx118416%_)
        (letrec ((_%satisfied?118418%_
                  (lambda (_%condition118519%_)
                    (let* ((_%e118520118535%_ _%condition118519%_)
                           (_%E118530118539%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118520118535%_)))
                           (_%E118523118558%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118520118535%_)
                                  (let ((_%e118531118543%_
                                         (gx#syntax-e _%e118520118535%_)))
                                    (let ((_%hd118532118546%_
                                           (##car _%e118531118543%_))
                                          (_%tl118533118548%_
                                           (##cdr _%e118531118543%_)))
                                      (let* ((_%combinator118551%_
                                              _%hd118532118546%_)
                                             (_%body118553%_
                                              _%tl118533118548%_))
                                        (if (gx#stx-list? _%body118553%_)
                                            (let ((_%$e118555%_
                                                   (gx#stx-e
                                                    _%combinator118551%_)))
                                              (if (eq? 'not _%$e118555%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?118418%_
                                                        _%body118553%_))
                                                  (if (eq? 'and _%$e118555%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?118418%_
                                                       _%body118553%_)
                                                      (if (eq? 'or
                                                               _%$e118555%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?118418%_
                                                           _%body118553%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e118555%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body118553%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx118416%_
                       _%combinator118551%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118530118539%_)))))
                                  (_%E118530118539%_))))
                           (_%E118522118581%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118520118535%_)
                                  (let ((_%e118524118562%_
                                         (gx#syntax-e _%e118520118535%_)))
                                    (let ((_%hd118525118565%_
                                           (##car _%e118524118562%_))
                                          (_%tl118526118567%_
                                           (##cdr _%e118524118562%_)))
                                      (if (and (gx#identifier?
                                                _%hd118525118565%_)
                                               (gx#core-identifier=?
                                                _%hd118525118565%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl118526118567%_)
                                              (let ((_%e118527118570%_
                                                     (gx#syntax-e
                                                      _%tl118526118567%_)))
                                                (let ((_%hd118528118573%_
                                                       (##car _%e118527118570%_))
                                                      (_%tl118529118575%_
                                                       (##cdr _%e118527118570%_)))
                                                  (let ((_%expr118578%_
                                                         _%hd118528118573%_))
                                                    (if (gx#stx-null?
                                                         _%tl118529118575%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr118578%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E118523118558%_))
                (_%E118523118558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E118523118558%_))
                                          (_%E118523118558%_))))
                                  (_%E118523118558%_))))
                           (_%E118521118587%_
                            (lambda ()
                              (let ((_%id118585%_ _%e118520118535%_))
                                (if (gx#identifier? _%id118585%_)
                                    (gx#core-bound-identifier?__%
                                     _%id118585%_
                                     gx#feature-binding?)
                                    (_%E118522118581%_))))))
                      (_%E118521118587%_))))
                 (_%loop118419%_
                  (lambda (_%rest118449%_)
                    (let* ((_%e118450118458%_ _%rest118449%_)
                           (_%E118456118462%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118450118458%_)))
                           (_%E118452118466%_
                            (lambda ()
                              (if (gx#stx-null? _%e118450118458%_)
                                  (if '#t '() (_%E118456118462%_))
                                  (_%E118456118462%_))))
                           (_%E118451118515%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118450118458%_)
                                  (let ((_%e118453118470%_
                                         (gx#syntax-e _%e118450118458%_)))
                                    (let ((_%hd118454118473%_
                                           (##car _%e118453118470%_))
                                          (_%tl118455118475%_
                                           (##cdr _%e118453118470%_)))
                                      (let* ((_%hd118478%_ _%hd118454118473%_)
                                             (_%rest118480%_
                                              _%tl118455118475%_))
                                        (if '#t
                                            (let* ((_%e118481118488%_
                                                    _%hd118478%_)
                                                   (_%E118483118492%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e118481118488%_)))
                                                   (_%E118482118511%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e118481118488%_)
                                                          (let ((_%e118484118496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e118481118488%_)))
                    (let ((_%hd118485118499%_ (##car _%e118484118496%_))
                          (_%tl118486118501%_ (##cdr _%e118484118496%_)))
                      (let* ((_%condition118504%_ _%hd118485118499%_)
                             (_%body118506%_ _%tl118486118501%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition118504%_ 'else)
                                (if (gx#stx-null? _%rest118480%_)
                                    _%body118506%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _%stx118416%_
                                     _%hd118478%_))
                                (if (_%satisfied?118418%_ _%condition118504%_)
                                    _%body118506%_
                                    (_%loop118419%_ _%rest118480%_)))
                            (_%E118483118492%_)))))
                  (_%E118483118492%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E118482118511%_))
                                            (_%E118452118466%_)))))
                                  (_%E118452118466%_)))))
                      (_%E118451118515%_)))))
          (let* ((_%e118420118427%_ _%stx118416%_)
                 (_%E118422118431%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118420118427%_)))
                 (_%E118421118445%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118420118427%_)
                        (let ((_%e118423118435%_
                               (gx#syntax-e _%e118420118427%_)))
                          (let ((_%hd118424118438%_ (##car _%e118423118435%_))
                                (_%tl118425118440%_ (##cdr _%e118423118435%_)))
                            (let ((_%clauses118443%_ _%tl118425118440%_))
                              (if (gx#stx-list? _%clauses118443%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop118419%_ _%clauses118443%_))
                                  (_%E118422118431%_)))))
                        (_%E118422118431%_)))))
            (_%E118421118445%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx118359%_ _%rpath118360%_)
        (let* ((_%e118361118371%_ _%stx118359%_)
               (_%E118363118375%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118361118371%_)))
               (_%E118362118402%_
                (lambda ()
                  (if (gx#stx-pair? _%e118361118371%_)
                      (let ((_%e118364118379%_
                             (gx#syntax-e _%e118361118371%_)))
                        (let ((_%hd118365118382%_ (##car _%e118364118379%_))
                              (_%tl118366118384%_ (##cdr _%e118364118379%_)))
                          (if (gx#stx-pair? _%tl118366118384%_)
                              (let ((_%e118367118387%_
                                     (gx#syntax-e _%tl118366118384%_)))
                                (let ((_%hd118368118390%_
                                       (##car _%e118367118387%_))
                                      (_%tl118369118392%_
                                       (##cdr _%e118367118387%_)))
                                  (let ((_%path118395%_ _%hd118368118390%_))
                                    (if (gx#stx-null? _%tl118369118392%_)
                                        (if (gx#stx-string? _%path118395%_)
                                            (let ((_%rpath118400%_
                                                   (let ((_%$e118397%_
                                                          _%rpath118360%_))
                                                     (if _%$e118397%_
                                                         _%$e118397%_
                                                         (gx#core-resolve-path__%
                                                          _%path118395%_
                                                          (gx#stx-source
                                                           _%stx118359%_))))))
                                              (if (member _%rpath118400%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx118359%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath118400%_))
                                                    (gx#stx-source
                                                     _%stx118359%_)))))
                                            (_%E118363118375%_))
                                        (_%E118363118375%_)))))
                              (_%E118363118375%_))))
                      (_%E118363118375%_)))))
          (_%E118362118402%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx118409%_)
        (let ((_%rpath118411%_ '#f))
          (gx#core-expand-include%__% _%stx118409%_ _%rpath118411%_))))
    (define gx#core-expand-include%
      (lambda _g119532_
        (let ((_g119531_ (##length _g119532_)))
          (cond ((##fx= _g119531_ 1)
                 (apply gx#core-expand-include%__0 _g119532_))
                ((##fx= _g119531_ 2)
                 (apply gx#core-expand-include%__% _g119532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g119532_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K118325%_ _%stx118326%_ _%method118327%_)
        (if (procedure? _%K118325%_)
            (let ((_%$e118330%_ (gx#stx-source _%stx118326%_)))
              (if _%$e118330%_
                  ((lambda (_%g118332118334%_)
                     (gx#stx-wrap-source
                      (_%K118325%_ _%stx118326%_)
                      _%g118332118334%_))
                   _%$e118330%_)
                  (_%K118325%_ _%stx118326%_)))
            (let ((_%$e118338%_
                   (bound-method-ref _%K118325%_ _%method118327%_)))
              (if _%$e118338%_
                  ((lambda (_%g118340118342%_)
                     (gx#core-apply-expander__%
                      _%g118340118342%_
                      _%stx118326%_
                      _%method118327%_))
                   _%$e118338%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx118326%_
                   _%method118327%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K118349%_ _%stx118350%_)
        (let ((_%method118352%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K118349%_
           _%stx118350%_
           _%method118352%_))))
    (define gx#core-apply-expander
      (lambda _g119534_
        (let ((_g119533_ (##length _g119534_)))
          (cond ((##fx= _g119533_ 2)
                 (apply gx#core-apply-expander__0 _g119534_))
                ((##fx= _g119533_ 3)
                 (apply gx#core-apply-expander__% _g119534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g119534_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116367118308%_ _%stx118310%_)
        (let* ((_%self118312%_ _%self116367118308%_)
               (_%self118314%_ _%self118312%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx118310%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116368118148%_ _%stx118150%_)
        (let* ((_%self118152%_ _%self116368118148%_)
               (_%self118154%_ _%self118152%_)
               (_%self118163118169%_ _%self118154%_)
               (_%E118165118173%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118163118169%_
                         '((macro-expander K)))
                  '#!void))
               (_%K118166118178%_
                (lambda (_%K118176%_)
                  (gx#core-apply-expander__0 _%K118176%_ _%stx118150%_))))
          (if '#t
              (let* ((_%e118167118181%_
                      (##unchecked-structure-ref
                       _%self118163118169%_
                       '1
                       '#f
                       '#f))
                     (_%K118184%_ _%e118167118181%_))
                (_%K118166118178%_ _%K118184%_))
              (_%E118165118173%_)))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116369117988%_ _%stx117990%_)
        (let* ((_%self117992%_ _%self116369117988%_)
               (_%self117994%_ _%self117992%_))
          (if (gx#sealed-syntax? _%stx117990%_)
              _%stx117990%_
              (let* ((_%self118003118009%_ _%self117994%_)
                     (_%E118005118013%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self118003118009%_
                               '((core-expander K)))
                        '#!void))
                     (_%K118006118018%_
                      (lambda (_%K118016%_)
                        (gx#core-apply-expander__0
                         _%K118016%_
                         _%stx117990%_))))
                (if '#t
                    (let* ((_%e118007118021%_
                            (##unchecked-structure-ref
                             _%self118003118009%_
                             '1
                             '#f
                             '#f))
                           (_%K118024%_ _%e118007118021%_))
                      (_%K118006118018%_ _%K118024%_))
                    (_%E118005118013%_)))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116370117837%_ _%stx117839%_ _%top?117840%_)
        (let* ((_%self117842%_ _%self116370117837%_)
               (_%self117844%_ _%self117842%_))
          (if (_%top?117840%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self117844%_
               _%stx117839%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx117839%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116370117857%_ _%stx117858%_)
        (let ((_%top?117860%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116370117857%_
           _%stx117858%_
           _%top?117860%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g119536_
        (let ((_g119535_ (##length _g119536_)))
          (cond ((##fx= _g119535_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g119536_))
                ((##fx= _g119535_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g119536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g119536_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116371117698%_ _%stx117700%_)
        (let* ((_%self117702%_ _%self116371117698%_)
               (_%self117704%_ _%self117702%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self117704%_
           _%stx117700%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116372117510%_ _%stx117512%_)
        (let* ((_%self117514%_ _%self116372117510%_)
               (_%self117516%_ _%self117514%_)
               (_%self117525117531%_ _%self117516%_)
               (_%E117527117535%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117525117531%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K117528117568%_
                (lambda (_%id117538%_)
                  (let* ((_%e117539117546%_ _%stx117512%_)
                         (_%E117541117550%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e117539117546%_)))
                         (_%E117540117564%_
                          (lambda ()
                            (if (gx#stx-pair? _%e117539117546%_)
                                (let ((_%e117542117554%_
                                       (gx#syntax-e _%e117539117546%_)))
                                  (let ((_%hd117543117557%_
                                         (##car _%e117542117554%_))
                                        (_%tl117544117559%_
                                         (##cdr _%e117542117554%_)))
                                    (let ((_%body117562%_ _%tl117544117559%_))
                                      (if '#t
                                          (gx#core-cons
                                           _%id117538%_
                                           _%body117562%_)
                                          (_%E117541117550%_)))))
                                (_%E117541117550%_)))))
                    (_%E117540117564%_)))))
          (if '#t
              (let* ((_%e117529117571%_
                      (##unchecked-structure-ref
                       _%self117525117531%_
                       '1
                       '#f
                       '#f))
                     (_%id117574%_ _%e117529117571%_))
                (_%K117528117568%_ _%id117574%_))
              (_%E117527117535%_)))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self117336%_ _%stx117337%_ _%method117338%_)
        (let* ((_%self117339117347%_ _%self117336%_)
               (_%E117341117351%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117339117347%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K117342117358%_
                (lambda (_%phi117354%_ _%ctx117355%_ _%K117356%_)
                  (gx#core-apply-user-macro
                   _%K117356%_
                   _%stx117337%_
                   _%ctx117355%_
                   _%phi117354%_
                   _%method117338%_))))
          (if (##structure-instance-of?
               _%self117339117347%_
               'gx#user-expander::t)
              (let* ((_%e117343117361%_
                      (##unchecked-structure-ref
                       _%self117339117347%_
                       '1
                       '#f
                       '#f))
                     (_%K117364%_ _%e117343117361%_)
                     (_%e117344117366%_
                      (##unchecked-structure-ref
                       _%self117339117347%_
                       '2
                       '#f
                       '#f))
                     (_%ctx117369%_ _%e117344117366%_)
                     (_%e117345117371%_
                      (##unchecked-structure-ref
                       _%self117339117347%_
                       '3
                       '#f
                       '#f))
                     (_%phi117374%_ _%e117345117371%_))
                (_%K117342117358%_ _%phi117374%_ _%ctx117369%_ _%K117364%_))
              (_%E117341117351%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self117379%_ _%stx117380%_)
        (let ((_%method117382%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self117379%_
           _%stx117380%_
           _%method117382%_))))
    (define gx#core-apply-user-expander
      (lambda _g119538_
        (let ((_g119537_ (##length _g119538_)))
          (cond ((##fx= _g119537_ 2)
                 (apply gx#core-apply-user-expander__0 _g119538_))
                ((##fx= _g119537_ 3)
                 (apply gx#core-apply-user-expander__% _g119538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g119538_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K117326%_
               _%stx117327%_
               _%ctx117328%_
               _%phi117329%_
               _%method117330%_)
        (let ((_%mark117332%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx117328%_
                _%phi117329%_
                _%stx117327%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K117326%_
               (gx#stx-apply-mark _%stx117327%_ _%mark117332%_)
               _%method117330%_)
              _%mark117332%_))
           gx#current-expander-marks
           (cons _%mark117332%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx117174%_ _%phi117175%_ _%ctx117176%_)
        (let _%lp117178%_ ((_%bind117180%_
                            (gx#core-resolve-identifier__%
                             _%stx117174%_
                             _%phi117175%_
                             _%ctx117176%_)))
          (if (##structure-direct-instance-of?
               _%bind117180%_
               'gx#import-binding::t)
              (_%lp117178%_
               (##unchecked-structure-ref _%bind117180%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind117180%_
                   'gx#alias-binding::t)
                  (_%lp117178%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind117180%_ '4 '#f '#f)
                    _%phi117175%_
                    _%ctx117176%_))
                  _%bind117180%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx117188%_)
        (let* ((_%phi117190%_ (gx#current-expander-phi))
               (_%ctx117192%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117188%_
           _%phi117190%_
           _%ctx117192%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx117194%_ _%phi117195%_)
        (let ((_%ctx117197%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117194%_
           _%phi117195%_
           _%ctx117197%_))))
    (define gx#resolve-identifier
      (lambda _g119540_
        (let ((_g119539_ (##length _g119540_)))
          (cond ((##fx= _g119539_ 1)
                 (apply gx#resolve-identifier__0 _g119540_))
                ((##fx= _g119539_ 2)
                 (apply gx#resolve-identifier__1 _g119540_))
                ((##fx= _g119539_ 3)
                 (apply gx#resolve-identifier__% _g119540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g119540_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx117129%_
               _%val117130%_
               _%rebind?117131%_
               _%phi117132%_
               _%ctx117133%_)
        (let ((_%rebind?117138%_
               (if (not _%rebind?117131%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?117131%_)
                       _%rebind?117131%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx117129%_)
           _%val117130%_
           _%rebind?117138%_
           _%phi117132%_
           _%ctx117133%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx117143%_ _%val117144%_)
        (let* ((_%rebind?117146%_ '#f)
               (_%phi117148%_ (gx#current-expander-phi))
               (_%ctx117150%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117143%_
           _%val117144%_
           _%rebind?117146%_
           _%phi117148%_
           _%ctx117150%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx117152%_ _%val117153%_ _%rebind?117154%_)
        (let* ((_%phi117156%_ (gx#current-expander-phi))
               (_%ctx117158%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117152%_
           _%val117153%_
           _%rebind?117154%_
           _%phi117156%_
           _%ctx117158%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx117160%_ _%val117161%_ _%rebind?117162%_ _%phi117163%_)
        (let ((_%ctx117165%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117160%_
           _%val117161%_
           _%rebind?117162%_
           _%phi117163%_
           _%ctx117165%_))))
    (define gx#bind-identifier!
      (lambda _g119542_
        (let ((_g119541_ (##length _g119542_)))
          (cond ((##fx= _g119541_ 2) (apply gx#bind-identifier!__0 _g119542_))
                ((##fx= _g119541_ 3) (apply gx#bind-identifier!__1 _g119542_))
                ((##fx= _g119541_ 4) (apply gx#bind-identifier!__2 _g119542_))
                ((##fx= _g119541_ 5) (apply gx#bind-identifier!__% _g119542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g119542_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx117095%_ _%phi117096%_ _%ctx117097%_)
        (let _%lp117099%_ ((_%e117101%_ _%stx117095%_)
                           (_%marks117102%_ (gx#current-expander-marks)))
          (if (symbol? _%e117101%_)
              (gx#core-resolve-binding
               _%e117101%_
               _%phi117096%_
               _%phi117096%_
               _%ctx117097%_
               (reverse _%marks117102%_))
              (if (gx#identifier-quote? _%e117101%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e117101%_ '1 '#f '#f)
                   _%phi117096%_
                   '0
                   (##unchecked-structure-ref _%e117101%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e117101%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e117101%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e117101%_ '1 '#f '#f)
                       _%phi117096%_
                       _%phi117096%_
                       _%ctx117097%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117101%_ '3 '#f '#f)
                        _%marks117102%_))
                      (if (##structure-direct-instance-of?
                           _%e117101%_
                           'gx#syntax-wrap::t)
                          (_%lp117099%_
                           (##unchecked-structure-ref _%e117101%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e117101%_ '3 '#f '#f)
                            _%marks117102%_))
                          (if (##structure-instance-of?
                               _%e117101%_
                               'gerbil#AST::t)
                              (_%lp117099%_
                               (##unchecked-structure-ref
                                _%e117101%_
                                '1
                                '#f
                                '#f)
                               _%marks117102%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx117095%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx117113%_)
        (let* ((_%phi117115%_ (gx#current-expander-phi))
               (_%ctx117117%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117113%_
           _%phi117115%_
           _%ctx117117%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx117119%_ _%phi117120%_)
        (let ((_%ctx117122%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117119%_
           _%phi117120%_
           _%ctx117122%_))))
    (define gx#core-resolve-identifier
      (lambda _g119544_
        (let ((_g119543_ (##length _g119544_)))
          (cond ((##fx= _g119543_ 1)
                 (apply gx#core-resolve-identifier__0 _g119544_))
                ((##fx= _g119543_ 2)
                 (apply gx#core-resolve-identifier__1 _g119544_))
                ((##fx= _g119543_ 3)
                 (apply gx#core-resolve-identifier__% _g119544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g119544_))))))
    (define gx#core-resolve-binding
      (lambda (_%id117005%_
               _%phi117006%_
               _%src-phi117007%_
               _%ctx117008%_
               _%marks117009%_)
        (letrec ((_%resolve117011%_
                  (lambda (_%ctx117079%_ _%src-phi117080%_ _%key117081%_)
                    (let _%lp117083%_ ((_%ctx117085%_
                                        (gx#core-context-shift
                                         _%ctx117079%_
                                         _%phi117006%_))
                                       (_%dphi117086%_
                                        (fx- _%phi117006%_ _%src-phi117080%_)))
                      (let ((_%$e117088%_
                             (gx#core-context-resolve
                              _%ctx117085%_
                              _%key117081%_)))
                        (if _%$e117088%_
                            (values _%$e117088%_)
                            (if (fxzero? _%dphi117086%_)
                                '#f
                                (if (fxpositive? _%dphi117086%_)
                                    (_%lp117083%_
                                     (gx#core-context-shift _%ctx117085%_ '-1)
                                     (##fx- _%dphi117086%_ '1))
                                    (_%lp117083%_
                                     (gx#core-context-shift _%ctx117085%_ '1)
                                     (##fx+ _%dphi117086%_ '1))))))))))
          (let _%lp117013%_ ((_%ctx117015%_ _%ctx117008%_)
                             (_%src-phi117016%_ _%src-phi117007%_)
                             (_%rest117017%_ _%marks117009%_))
            (let* ((_%rest117018117026%_ _%rest117017%_)
                   (_%else117020117034%_
                    (lambda ()
                      (_%resolve117011%_
                       _%ctx117015%_
                       _%src-phi117016%_
                       _%id117005%_)))
                   (_%K117022117067%_
                    (lambda (_%rest117037%_ _%hd117038%_)
                      (let* ((_%hd117039117045%_ _%hd117038%_)
                             (_%E117041117049%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd117039117045%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K117042117059%_
                              (lambda (_%subst117052%_)
                                (let ((_%$e117056%_
                                       (let ((_%key117054%_
                                              (if _%subst117052%_
                                                  (hash-get
                                                   _%subst117052%_
                                                   _%id117005%_)
                                                  '#f)))
                                         (if _%key117054%_
                                             (_%resolve117011%_
                                              _%ctx117015%_
                                              _%src-phi117016%_
                                              _%key117054%_)
                                             '#f))))
                                  (if _%$e117056%_
                                      _%$e117056%_
                                      (_%lp117013%_
                                       (##unchecked-structure-ref
                                        _%hd117038%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd117038%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest117037%_))))))
                        (if (##structure-instance-of?
                             _%hd117039117045%_
                             'gx#expander-mark::t)
                            (let* ((_%e117043117062%_
                                    (##unchecked-structure-ref
                                     _%hd117039117045%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst117065%_ _%e117043117062%_))
                              (_%K117042117059%_ _%subst117065%_))
                            (_%E117041117049%_))))))
              (if (##pair? _%rest117018117026%_)
                  (let ((_%hd117023117070%_ (##car _%rest117018117026%_))
                        (_%tl117024117072%_ (##cdr _%rest117018117026%_)))
                    (let* ((_%hd117075%_ _%hd117023117070%_)
                           (_%rest117077%_ _%tl117024117072%_))
                      (_%K117022117067%_ _%rest117077%_ _%hd117075%_)))
                  (_%else117020117034%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key116875%_
               _%val116876%_
               _%rebind?116877%_
               _%phi116878%_
               _%ctx116879%_)
        (letrec ((_%update-binding116881%_
                  (lambda (_%xval116954%_)
                    (if (or (_%rebind?116877%_
                             _%ctx116879%_
                             _%xval116954%_
                             _%val116876%_)
                            (and (##structure-direct-instance-of?
                                  _%xval116954%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval116954%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val116876%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val116876%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval116954%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val116876%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val116876%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval116954%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val116876%_
                        (if (and (##structure-direct-instance-of?
                                  _%val116876%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val116876%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval116954%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val116876%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval116954%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval116954%_
                            (if (and (##structure-direct-instance-of?
                                      _%val116876%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval116954%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key116875%_
                                 (cons (##unchecked-structure-ref
                                        _%val116876%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val116876%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval116954%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval116954%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval116954%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval116954%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key116875%_
                                 _%val116876%_
                                 _%xval116954%_))))))
                 (_%gensubst116882%_
                  (lambda (_%subst116949%_ _%id116950%_)
                    (let ((_%eid116952%_
                           (gensym (if (uninterned-symbol? _%id116950%_)
                                       '%
                                       _%id116950%_))))
                      (hash-put! _%subst116949%_ _%id116950%_ _%eid116952%_)
                      _%eid116952%_)))
                 (_%subst!116883%_
                  (lambda (_%key116885%_)
                    (let* ((_%key116886116894%_ _%key116885%_)
                           (_%else116888116902%_ (lambda () _%key116885%_))
                           (_%K116890116937%_
                            (lambda (_%mark116905%_ _%id116906%_)
                              (let* ((_%mark116907116913%_ _%mark116905%_)
                                     (_%E116909116917%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark116907116913%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K116910116929%_
                                      (lambda (_%subst116920%_)
                                        (if (not _%subst116920%_)
                                            (let ((_%subst116923%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark116905%_
                                               _%subst116923%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst116882%_
                                               _%subst116923%_
                                               _%id116906%_))
                                            (let ((_%$e116925%_
                                                   (hash-get
                                                    _%subst116920%_
                                                    _%id116906%_)))
                                              (if _%$e116925%_
                                                  (values _%$e116925%_)
                                                  (_%gensubst116882%_
                                                   _%subst116920%_
                                                   _%id116906%_)))))))
                                (if (##structure-instance-of?
                                     _%mark116907116913%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e116911116932%_
                                            (##unchecked-structure-ref
                                             _%mark116907116913%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst116935%_ _%e116911116932%_))
                                      (_%K116910116929%_ _%subst116935%_))
                                    (_%E116909116917%_))))))
                      (if (##pair? _%key116886116894%_)
                          (let ((_%hd116891116940%_
                                 (##car _%key116886116894%_))
                                (_%tl116892116942%_
                                 (##cdr _%key116886116894%_)))
                            (let* ((_%id116945%_ _%hd116891116940%_)
                                   (_%mark116947%_ _%tl116892116942%_))
                              (_%K116890116937%_ _%mark116947%_ _%id116945%_)))
                          (_%else116888116902%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx116879%_ _%phi116878%_)
           (_%subst!116883%_ _%key116875%_)
           _%val116876%_
           _%update-binding116881%_))))
    (define gx#core-bind!__0
      (lambda (_%key116975%_ _%val116976%_)
        (let* ((_%rebind?116978%_ false)
               (_%phi116980%_ (gx#current-expander-phi))
               (_%ctx116982%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116975%_
           _%val116976%_
           _%rebind?116978%_
           _%phi116980%_
           _%ctx116982%_))))
    (define gx#core-bind!__1
      (lambda (_%key116984%_ _%val116985%_ _%rebind?116986%_)
        (let* ((_%phi116988%_ (gx#current-expander-phi))
               (_%ctx116990%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116984%_
           _%val116985%_
           _%rebind?116986%_
           _%phi116988%_
           _%ctx116990%_))))
    (define gx#core-bind!__2
      (lambda (_%key116992%_ _%val116993%_ _%rebind?116994%_ _%phi116995%_)
        (let ((_%ctx116997%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116992%_
           _%val116993%_
           _%rebind?116994%_
           _%phi116995%_
           _%ctx116997%_))))
    (define gx#core-bind!
      (lambda _g119546_
        (let ((_g119545_ (##length _g119546_)))
          (cond ((##fx= _g119545_ 2) (apply gx#core-bind!__0 _g119546_))
                ((##fx= _g119545_ 3) (apply gx#core-bind!__1 _g119546_))
                ((##fx= _g119545_ 4) (apply gx#core-bind!__2 _g119546_))
                ((##fx= _g119545_ 5) (apply gx#core-bind!__% _g119546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g119546_))))))
    (define gx#core-identifier-key
      (lambda (_%stx116806%_)
        (if (symbol? _%stx116806%_)
            (let* ((_%g116808116816%_ (gx#current-expander-marks))
                   (_%else116810116824%_ (lambda () _%stx116806%_))
                   (_%K116812116829%_
                    (lambda (_%hd116827%_) (cons _%stx116806%_ _%hd116827%_))))
              (if (##pair? _%g116808116816%_)
                  (let* ((_%hd116813116832%_ (##car _%g116808116816%_))
                         (_%hd116835%_ _%hd116813116832%_))
                    (_%K116812116829%_ _%hd116835%_))
                  (_%else116810116824%_)))
            (if (gx#identifier? _%stx116806%_)
                (let* ((_%id116838%_ (gx#syntax-local-unwrap _%stx116806%_))
                       (_%eid116840%_ (gx#stx-e _%id116838%_))
                       (_%marks116842%_
                        (gx#stx-identifier-marks* _%id116838%_))
                       (_%marks116844116852%_ _%marks116842%_)
                       (_%else116846116860%_ (lambda () _%eid116840%_))
                       (_%K116848116865%_
                        (lambda (_%hd116863%_)
                          (cons _%eid116840%_ _%hd116863%_))))
                  (if (##pair? _%marks116844116852%_)
                      (let* ((_%hd116849116868%_ (##car _%marks116844116852%_))
                             (_%hd116871%_ _%hd116849116868%_))
                        (_%K116848116865%_ _%hd116871%_))
                      (_%else116846116860%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx116806%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx116745%_ _%phi116746%_)
        (letrec ((_%make-phi116748%_
                  (lambda (_%super116804%_)
                    (let ((__obj119518
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj119518
                       (##gensym 'phi)
                       _%super116804%_)
                      __obj119518)))
                 (_%make-phi/up116749%_
                  (lambda (_%ctx116799%_ _%super116800%_)
                    (let ((_%ctx+1116802%_
                           (_%make-phi116748%_ _%super116800%_)))
                      (##unchecked-structure-set!
                       _%ctx116799%_
                       _%ctx+1116802%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1116802%_
                       _%ctx116799%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1116802%_)))
                 (_%make-phi/down116750%_
                  (lambda (_%ctx116794%_ _%super116795%_)
                    (let ((_%ctx-1116797%_
                           (_%make-phi116748%_ _%super116795%_)))
                      (##unchecked-structure-set!
                       _%ctx-1116797%_
                       _%ctx116794%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx116794%_
                       _%ctx-1116797%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1116797%_)))
                 (_%shift116751%_
                  (lambda (_%ctx116777%_
                           _%delta116778%_
                           _%make-delta-context116779%_
                           _%phi116780%_
                           _%K116781%_)
                    (let ((_%$e116783%_
                           (##unchecked-structure-ref
                            _%ctx116777%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e116783%_
                          ((lambda (_%super116786%_)
                             (let* ((_%super116788%_
                                     (_%K116781%_
                                      _%super116786%_
                                      _%delta116778%_))
                                    (_%ctx+d116790%_
                                     (_%make-delta-context116779%_
                                      _%ctx116777%_
                                      _%super116788%_)))
                               (_%K116781%_
                                _%ctx+d116790%_
                                (fx- _%phi116780%_ _%delta116778%_))))
                           _%$e116783%_)
                          (error '"Bad context" _%ctx116777%_))))))
          (let _%K116753%_ ((_%ctx116755%_ _%ctx116745%_)
                            (_%phi116756%_ _%phi116746%_))
            (if (fxzero? _%phi116756%_)
                _%ctx116755%_
                (if (##structure-instance-of? _%ctx116755%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi116756%_)
                        (let ((_%$e116760%_
                               (##unchecked-structure-ref
                                _%ctx116755%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e116760%_
                              ((lambda (_%g116762116764%_)
                                 (_%K116753%_
                                  _%g116762116764%_
                                  (##fx- _%phi116756%_ '1)))
                               _%$e116760%_)
                              (_%shift116751%_
                               _%ctx116755%_
                               '1
                               _%make-phi/up116749%_
                               _%phi116756%_
                               _%K116753%_)))
                        (let ((_%$e116768%_
                               (##unchecked-structure-ref
                                _%ctx116755%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e116768%_
                              ((lambda (_%g116770116772%_)
                                 (_%K116753%_
                                  _%g116770116772%_
                                  (##fx+ _%phi116756%_ '1)))
                               _%$e116768%_)
                              (_%shift116751%_
                               _%ctx116755%_
                               '-1
                               _%make-phi/down116750%_
                               _%phi116756%_
                               _%K116753%_))))
                    _%ctx116755%_))))))
    (define gx#core-context-get
      (lambda (_%ctx116742%_ _%key116743%_)
        (hash-get
         (##unchecked-structure-ref _%ctx116742%_ '2 '#f '#f)
         _%key116743%_)))
    (define gx#core-context-put!
      (lambda (_%ctx116738%_ _%key116739%_ _%val116740%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx116738%_ '2 '#f '#f)
         _%key116739%_
         _%val116740%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx116724%_ _%key116725%_)
        (let _%lp116727%_ ((_%ctx116729%_ _%ctx116724%_))
          (let ((_%$e116731%_
                 (gx#core-context-get _%ctx116729%_ _%key116725%_)))
            (if _%$e116731%_
                (values _%$e116731%_)
                (let ((_%$e116734%_
                       (if (##structure-instance-of?
                            _%ctx116729%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx116729%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e116734%_ (_%lp116727%_ _%$e116734%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx116713%_ _%key116714%_ _%val116715%_ _%rebind116716%_)
        (let ((_%$e116718%_ (gx#core-context-get _%ctx116713%_ _%key116714%_)))
          (if _%$e116718%_
              ((lambda (_%xval116721%_)
                 (gx#core-context-put!
                  _%ctx116713%_
                  _%key116714%_
                  (_%rebind116716%_ _%xval116721%_)))
               _%$e116718%_)
              (gx#core-context-put!
               _%ctx116713%_
               _%key116714%_
               _%val116715%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx116688%_ _%stop?116689%_)
        (let _%lp116691%_ ((_%ctx116693%_ _%ctx116688%_))
          (if (_%stop?116689%_ _%ctx116693%_)
              _%ctx116693%_
              (if (##structure-instance-of? _%ctx116693%_ 'gx#phi-context::t)
                  (_%lp116691%_
                   (##unchecked-structure-ref _%ctx116693%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx116702%_ (gx#current-expander-context))
               (_%stop?116704%_ gx#top-context?))
          (gx#core-context-top__% _%ctx116702%_ _%stop?116704%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx116706%_)
        (let ((_%stop?116708%_ gx#top-context?))
          (gx#core-context-top__% _%ctx116706%_ _%stop?116708%_))))
    (define gx#core-context-top
      (lambda _g119548_
        (let ((_g119547_ (##length _g119548_)))
          (cond ((##fx= _g119547_ 0) (apply gx#core-context-top__0 _g119548_))
                ((##fx= _g119547_ 1) (apply gx#core-context-top__1 _g119548_))
                ((##fx= _g119547_ 2) (apply gx#core-context-top__% _g119548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g119548_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx116673%_)
        (let _%lp116675%_ ((_%ctx116677%_ _%ctx116673%_))
          (if (##structure-instance-of? _%ctx116677%_ 'gx#phi-context::t)
              (_%lp116675%_
               (##unchecked-structure-ref _%ctx116677%_ '3 '#f '#f))
              _%ctx116677%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx116683%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx116683%_))))
    (define gx#core-context-root
      (lambda _g119550_
        (let ((_g119549_ (##length _g119550_)))
          (cond ((##fx= _g119549_ 0) (apply gx#core-context-root__0 _g119550_))
                ((##fx= _g119549_ 1) (apply gx#core-context-root__% _g119550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g119550_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx116655%_ . _%ignore116656%_)
        (let ((_%$e116658%_ (gx#current-expander-allow-rebind?)))
          (if _%$e116658%_
              _%$e116658%_
              (if (##structure-instance-of? _%ctx116655%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx116655%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx116655%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx116665%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx116665%_))))
    (define gx#core-context-rebind?
      (lambda _g119552_
        (let ((_g119551_ (##length _g119552_)))
          (cond ((##fx= _g119551_ 0)
                 (apply gx#core-context-rebind?__0 _g119552_))
                ((##fx= _g119551_ 1)
                 (apply gx#core-context-rebind?__% _g119552_))
                ((##fx>= _g119551_ 1)
                 (apply gx#core-context-rebind?__% _g119552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g119552_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx116638%_)
        (let ((_%$e116640%_ (gx#core-context-top__1 _%ctx116638%_)))
          (if _%$e116640%_
              ((lambda (_%ctx116643%_)
                 (if (##structure-instance-of?
                      _%ctx116643%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx116643%_ '6 '#f '#f)
                     '#f))
               _%$e116640%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx116650%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx116650%_))))
    (define gx#core-context-namespace
      (lambda _g119554_
        (let ((_g119553_ (##length _g119554_)))
          (cond ((##fx= _g119553_ 0)
                 (apply gx#core-context-namespace__0 _g119554_))
                ((##fx= _g119553_ 1)
                 (apply gx#core-context-namespace__% _g119554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g119554_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind116624%_ _%is?116625%_)
        (if (##structure-direct-instance-of?
             _%bind116624%_
             'gx#syntax-binding::t)
            (_%is?116625%_
             (##unchecked-structure-ref _%bind116624%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind116630%_)
        (let ((_%is?116632%_ gx#expander?))
          (gx#expander-binding?__% _%bind116630%_ _%is?116632%_))))
    (define gx#expander-binding?
      (lambda _g119556_
        (let ((_g119555_ (##length _g119556_)))
          (cond ((##fx= _g119555_ 1) (apply gx#expander-binding?__0 _g119556_))
                ((##fx= _g119555_ 2) (apply gx#expander-binding?__% _g119556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g119556_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind116621%_)
        (gx#expander-binding?__% _%bind116621%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind116619%_)
        (gx#expander-binding?__% _%bind116619%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind116613%_)
        (letrec ((_%direct-special-form?116615%_
                  (lambda (_%obj116617%_)
                    (##structure-direct-instance-of?
                     _%obj116617%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind116613%_
           _%direct-special-form?116615%_))))
    (define gx#special-form-binding?
      (lambda (_%bind116611%_)
        (gx#expander-binding?__% _%bind116611%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind116602%_)
        (letrec ((_%feature?116604%_
                  (lambda (_%e116606%_)
                    (let ((_%$e116608%_
                           (##structure-instance-of?
                            _%e116606%_
                            'gx#feature-expander::t)))
                      (if _%$e116608%_
                          _%$e116608%_
                          (##structure-instance-of?
                           _%e116606%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind116602%_ _%feature?116604%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind116600%_)
        (gx#expander-binding?__% _%bind116600%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id116587%_ _%bound?116588%_)
        (if (gx#identifier? _%id116587%_)
            (_%bound?116588%_ (gx#resolve-identifier__0 _%id116587%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id116593%_)
        (let ((_%bound?116595%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id116593%_ _%bound?116595%_))))
    (define gx#core-bound-identifier?
      (lambda _g119558_
        (let ((_g119557_ (##length _g119558_)))
          (cond ((##fx= _g119557_ 1)
                 (apply gx#core-bound-identifier?__0 _g119558_))
                ((##fx= _g119557_ 2)
                 (apply gx#core-bound-identifier?__% _g119558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g119558_))))))
    (define gx#core-identifier=?
      (lambda (_%x116577%_ _%y116578%_)
        (letrec ((_%y=?116580%_
                  (lambda (_%xid116584%_)
                    ((if (list? _%y116578%_) memq eq?)
                     _%xid116584%_
                     _%y116578%_))))
          (let ((_%bind116582%_ (gx#resolve-identifier__0 _%x116577%_)))
            (if (##structure-instance-of? _%bind116582%_ 'gx#binding::t)
                (_%y=?116580%_
                 (##unchecked-structure-ref _%bind116582%_ '1 '#f '#f))
                (_%y=?116580%_ (gx#stx-e _%x116577%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e116575%_)
        (if (interned-symbol? _%e116575%_)
            (string-index__0 (symbol->string _%e116575%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx116528%_ _%src116529%_ _%ctx116530%_ _%marks116531%_)
        (if (##structure? _%stx116528%_)
            (let ((_%$e116533%_ (gx#sealed-syntax-unwrap _%stx116528%_)))
              (if _%$e116533%_
                  (values _%$e116533%_)
                  (if (gx#identifier? _%stx116528%_)
                      (let ((_%id116537%_
                             (gx#stx-unwrap__% _%stx116528%_ _%marks116531%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id116537%_ '1 '#f '#f)
                         (let ((_%$e116539%_
                                (##unchecked-structure-ref
                                 _%id116537%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e116539%_ _%$e116539%_ _%src116529%_))
                         _%ctx116530%_
                         (##unchecked-structure-ref _%id116537%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx116528%_)
                       (let ((_%$e116543%_ (gx#stx-source _%stx116528%_)))
                         (if _%$e116543%_ _%$e116543%_ _%src116529%_))
                       _%ctx116530%_
                       (reverse _%marks116531%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx116528%_
             _%src116529%_
             _%ctx116530%_
             (reverse _%marks116531%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx116549%_)
        (let* ((_%src116551%_ '#f)
               (_%ctx116553%_ (gx#current-expander-context))
               (_%marks116555%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116549%_
           _%src116551%_
           _%ctx116553%_
           _%marks116555%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx116557%_ _%src116558%_)
        (let* ((_%ctx116560%_ (gx#current-expander-context))
               (_%marks116562%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116557%_
           _%src116558%_
           _%ctx116560%_
           _%marks116562%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx116564%_ _%src116565%_ _%ctx116566%_)
        (let ((_%marks116568%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116564%_
           _%src116565%_
           _%ctx116566%_
           _%marks116568%_))))
    (define gx#core-quote-syntax
      (lambda _g119560_
        (let ((_g119559_ (##length _g119560_)))
          (cond ((##fx= _g119559_ 1) (apply gx#core-quote-syntax__0 _g119560_))
                ((##fx= _g119559_ 2) (apply gx#core-quote-syntax__1 _g119560_))
                ((##fx= _g119559_ 3) (apply gx#core-quote-syntax__2 _g119560_))
                ((##fx= _g119559_ 4) (apply gx#core-quote-syntax__% _g119560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g119560_))))))
    (define gx#core-cons
      (lambda (_%hd116524%_ _%tl116525%_)
        (cons (gx#core-quote-syntax__0 _%hd116524%_) _%tl116525%_)))
    (define gx#core-list
      (lambda (_%hd116521%_ . _%rest116522%_)
        (cons (gx#core-quote-syntax__0 _%hd116521%_) _%rest116522%_)))
    (define gx#core-cons*
      (lambda (_%hd116518%_ . _%rest116519%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd116518%_) _%rest116519%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path116487%_ _%rel116488%_)
        (let ((_%path116505%_ (gx#stx-e _%stx-path116487%_))
              (_%reldir116506%_
               (let _%lp116490%_ ((_%relsrc116492%_
                                   (let ((_%$e116502%_
                                          (gx#stx-source _%stx-path116487%_)))
                                     (if _%$e116502%_
                                         _%$e116502%_
                                         _%rel116488%_))))
                 (if (##structure-instance-of? _%relsrc116492%_ 'gerbil#AST::t)
                     (_%lp116490%_
                      (let ((_%$e116495%_ (gx#stx-source _%relsrc116492%_)))
                        (if _%$e116495%_
                            _%$e116495%_
                            (gx#stx-e _%relsrc116492%_))))
                     (if (source-location-path? _%relsrc116492%_)
                         (path-directory
                          (source-location-path _%relsrc116492%_))
                         (if (string? _%relsrc116492%_)
                             (path-directory _%relsrc116492%_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _%path116505%_ (path-normalize _%reldir116506%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path116511%_)
        (let ((_%rel116513%_ '#f))
          (gx#core-resolve-path__% _%stx-path116511%_ _%rel116513%_))))
    (define gx#core-resolve-path
      (lambda _g119562_
        (let ((_g119561_ (##length _g119562_)))
          (cond ((##fx= _g119561_ 1) (apply gx#core-resolve-path__0 _g119562_))
                ((##fx= _g119561_ 2) (apply gx#core-resolve-path__% _g119562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g119562_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr116443%_ _%ctx116444%_)
        (let* ((_%repr116445116452%_ _%repr116443%_)
               (_%E116447116456%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr116445116452%_
                         '([phi . subs]))
                  '#!void))
               (_%K116448116464%_
                (lambda (_%subs116459%_ _%phi116460%_)
                  (let ((_%subst116462%_
                         (if (not (null? _%subs116459%_))
                             (list->hash-table-eq _%subs116459%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst116462%_
                     _%ctx116444%_
                     _%phi116460%_
                     '#f)))))
          (if (##pair? _%repr116445116452%_)
              (let ((_%hd116449116467%_ (##car _%repr116445116452%_))
                    (_%tl116450116469%_ (##cdr _%repr116445116452%_)))
                (let* ((_%phi116472%_ _%hd116449116467%_)
                       (_%subs116474%_ _%tl116450116469%_))
                  (_%K116448116464%_ _%subs116474%_ _%phi116472%_)))
              (_%E116447116456%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr116479%_)
        (let ((_%ctx116481%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr116479%_ _%ctx116481%_))))
    (define gx#core-deserialize-mark
      (lambda _g119564_
        (let ((_g119563_ (##length _g119564_)))
          (cond ((##fx= _g119563_ 1)
                 (apply gx#core-deserialize-mark__0 _g119564_))
                ((##fx= _g119563_ 2)
                 (apply gx#core-deserialize-mark__% _g119564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g119564_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx116440%_)
        (gx#stx-rewrap _%stx116440%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx116438%_)
        (gx#stx-unwrap__% _%stx116438%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx116408%_)
        (let* ((_%g116409116417%_ (gx#current-expander-marks))
               (_%else116411116425%_ (lambda () _%stx116408%_))
               (_%K116413116430%_
                (lambda (_%hd116428%_)
                  (gx#stx-apply-mark _%stx116408%_ _%hd116428%_))))
          (if (##pair? _%g116409116417%_)
              (let* ((_%hd116414116433%_ (##car _%g116409116417%_))
                     (_%hd116436%_ _%hd116414116433%_))
                (_%K116413116430%_ _%hd116436%_))
              (_%else116411116425%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx116393%_ _%E116394%_)
        (let ((_%bind116396%_ (gx#resolve-identifier__0 _%stx116393%_)))
          (if (##structure-direct-instance-of?
               _%bind116396%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind116396%_ '4 '#f '#f)
              (_%E116394%_ _%stx116393%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx116401%_)
        (let ((_%E116403%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx116401%_ _%E116403%_))))
    (define gx#syntax-local-e
      (lambda _g119566_
        (let ((_g119565_ (##length _g119566_)))
          (cond ((##fx= _g119565_ 1) (apply gx#syntax-local-e__0 _g119566_))
                ((##fx= _g119565_ 2) (apply gx#syntax-local-e__% _g119566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g119566_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx116377%_ _%E116378%_)
        (let ((_%e116380%_ (gx#syntax-local-e__% _%stx116377%_ _%E116378%_)))
          (if (##structure-instance-of? _%e116380%_ 'gx#expander::t)
              (##structure-ref _%e116380%_ '1 gx#expander::t '#f)
              _%e116380%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx116385%_)
        (let ((_%E116387%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx116385%_ _%E116387%_))))
    (define gx#syntax-local-value
      (lambda _g119568_
        (let ((_g119567_ (##length _g119568_)))
          (cond ((##fx= _g119567_ 1)
                 (apply gx#syntax-local-value__0 _g119568_))
                ((##fx= _g119567_ 2)
                 (apply gx#syntax-local-value__% _g119568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g119568_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx116374%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx116374%_)))))
