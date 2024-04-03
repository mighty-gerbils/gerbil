(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712146027)
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
      (make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args117672%_
        (apply make-instance gx#expander-context::t _%$args117672%_)))
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
      (make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (__make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _%$args117669%_
        (apply make-instance gx#root-context::t _%$args117669%_)))
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
      (make-class-type
       'gx#phi-context::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args117666%_
        (apply make-instance gx#phi-context::t _%$args117666%_)))
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
      (make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (__make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _%$args117663%_
        (apply make-instance gx#top-context::t _%$args117663%_)))
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
      (make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args117660%_
        (apply make-instance gx#module-context::t _%$args117660%_)))
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
      (make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args117657%_
        (apply make-instance gx#prelude-context::t _%$args117657%_)))
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
      (make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (__make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _%$args117654%_
        (apply make-instance gx#local-context::t _%$args117654%_)))
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
      (lambda (_%self117627%_ _%id117628%_ _%super117629%_)
        (let ((_%self117632%_ _%self117627%_))
          (if (##fx< '3 (##structure-length _%self117632%_))
              (begin
                (##unchecked-structure-set!
                 _%self117632%_
                 _%id117628%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117632%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117632%_
                 _%super117629%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117632%_
                     '3
                     (##vector-length _%self117632%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117645%_ _%id117646%_)
        (let ((_%super117648%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117645%_
           _%id117646%_
           _%super117648%_))))
    (define gx#phi-context:::init!
      (lambda _g117715_
        (let ((_g117714_ (##length _g117715_)))
          (cond ((##fx= _g117714_ 2)
                 (apply (lambda (_%self117645%_ _%id117646%_)
                          (gx#phi-context:::init!__0
                           _%self117645%_
                           _%id117646%_))
                        _g117715_))
                ((##fx= _g117714_ 3)
                 (apply (lambda (_%self117650%_ _%id117651%_ _%super117652%_)
                          (gx#phi-context:::init!__%
                           _%self117650%_
                           _%id117651%_
                           _%super117652%_))
                        _g117715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g117715_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117480%_ _%super117481%_)
        (let ((_%self117484%_ _%self117480%_))
          (if (##fx< '3 (##structure-length _%self117484%_))
              (begin
                (##unchecked-structure-set!
                 _%self117484%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117484%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117484%_
                 _%super117481%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117484%_
                     '3
                     (##vector-length _%self117484%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117497%_)
        (let ((_%super117499%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117497%_ _%super117499%_))))
    (define gx#local-context:::init!
      (lambda _g117717_
        (let ((_g117716_ (##length _g117717_)))
          (cond ((##fx= _g117716_ 1)
                 (apply (lambda (_%self117497%_)
                          (gx#local-context:::init!__0 _%self117497%_))
                        _g117717_))
                ((##fx= _g117716_ 2)
                 (apply (lambda (_%self117501%_ _%super117502%_)
                          (gx#local-context:::init!__%
                           _%self117501%_
                           _%super117502%_))
                        _g117717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g117717_))))))
    (__bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args117354%_
        (apply make-instance gx#binding::t _%$args117354%_)))
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
      (make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args117351%_
        (apply make-instance gx#runtime-binding::t _%$args117351%_)))
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
      (make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args117348%_
        (apply make-instance gx#local-binding::t _%$args117348%_)))
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
      (make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args117345%_
        (apply make-instance gx#top-binding::t _%$args117345%_)))
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
      (make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args117342%_
        (apply make-instance gx#module-binding::t _%$args117342%_)))
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
      (make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args117339%_
        (apply make-instance gx#extern-binding::t _%$args117339%_)))
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
      (make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args117336%_
        (apply make-instance gx#syntax-binding::t _%$args117336%_)))
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
      (make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args117333%_
        (apply make-instance gx#import-binding::t _%$args117333%_)))
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
      (make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args117330%_
        (apply make-instance gx#alias-binding::t _%$args117330%_)))
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
      (make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args117327%_
        (apply make-instance gx#expander::t _%$args117327%_)))
    (define gx#expander-e (__make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (__make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (__make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (__make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args117324%_
        (apply make-instance gx#core-expander::t _%$args117324%_)))
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
      (make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (__make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _%$args117321%_
        (apply make-instance gx#expression-form::t _%$args117321%_)))
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
      (make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (__make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _%$args117318%_
        (apply make-instance gx#special-form::t _%$args117318%_)))
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
      (make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (__make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _%$args117315%_
        (apply make-instance gx#definition-form::t _%$args117315%_)))
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
      (make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (__make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _%$args117312%_
        (apply make-instance gx#top-special-form::t _%$args117312%_)))
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
      (make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (__make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _%$args117309%_
        (apply make-instance gx#module-special-form::t _%$args117309%_)))
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
      (make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (__make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _%$args117306%_
        (apply make-instance gx#feature-expander::t _%$args117306%_)))
    (define gx#feature-expander-e
      (__make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (__make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (__make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (__make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _%$args117303%_
        (apply make-instance gx#private-feature-expander::t _%$args117303%_)))
    (define gx#private-feature-expander-e
      (__make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (__make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (__make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (__make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _%$args117300%_
        (apply make-instance gx#reserved-expander::t _%$args117300%_)))
    (define gx#reserved-expander-e
      (__make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (__make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (__make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (make-class-type
       'gx#macro-expander::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (__make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _%$args117297%_
        (apply make-instance gx#macro-expander::t _%$args117297%_)))
    (define gx#macro-expander-e
      (__make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (__make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (__make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (__make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _%$args117294%_
        (apply make-instance gx#rename-macro-expander::t _%$args117294%_)))
    (define gx#rename-macro-expander-e
      (__make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (__make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (__make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (make-class-type
       'gx#user-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args117291%_
        (apply make-instance gx#user-expander::t _%$args117291%_)))
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
      (make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args117288%_
        (apply make-instance gx#expander-mark::t _%$args117288%_)))
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
      (lambda (_%ctx117272%_
               _%message117273%_
               _%stx117274%_
               .
               _%details117275%_)
        (let ((_%ctx117286%_
               (let ((_%$e117277%_ _%ctx117272%_))
                 (if _%$e117277%_
                     _%$e117277%_
                     (let ((_%$e117280%_ (gx#core-context-top__0)))
                       (if _%$e117280%_
                           ((lambda (_%ctx117283%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117283%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117280%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117273%_
                  (cons _%stx117274%_ _%details117275%_)
                  _%ctx117286%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117259%_ _%expression?117260%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117259%_ _%expression?117260%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117265%_)
        (let ((_%expression?117267%_ '#f))
          (gx#eval-syntax__% _%stx117265%_ _%expression?117267%_))))
    (define gx#eval-syntax
      (lambda _g117719_
        (let ((_g117718_ (##length _g117719_)))
          (cond ((##fx= _g117718_ 1)
                 (apply (lambda (_%stx117265%_)
                          (gx#eval-syntax__0 _%stx117265%_))
                        _g117719_))
                ((##fx= _g117718_ 2)
                 (apply (lambda (_%stx117269%_ _%expression?117270%_)
                          (gx#eval-syntax__%
                           _%stx117269%_
                           _%expression?117270%_))
                        _g117719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g117719_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117256%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117256%_))))
    (define gx#core-expand__%
      (lambda (_%stx117243%_ _%expression?117244%_)
        (if _%expression?117244%_
            (gx#core-expand-expression _%stx117243%_)
            (gx#core-expand-top _%stx117243%_))))
    (define gx#core-expand__0
      (lambda (_%stx117249%_)
        (let ((_%expression?117251%_ '#f))
          (gx#core-expand__% _%stx117249%_ _%expression?117251%_))))
    (define gx#core-expand
      (lambda _g117721_
        (let ((_g117720_ (##length _g117721_)))
          (cond ((##fx= _g117720_ 1)
                 (apply (lambda (_%stx117249%_)
                          (gx#core-expand__0 _%stx117249%_))
                        _g117721_))
                ((##fx= _g117720_ 2)
                 (apply (lambda (_%stx117253%_ _%expression?117254%_)
                          (gx#core-expand__%
                           _%stx117253%_
                           _%expression?117254%_))
                        _g117721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g117721_))))))
    (define gx#core-expand-top
      (lambda (_%stx117210%_)
        (let* ((_%stx117212%_ (gx#core-expand*__0 _%stx117210%_))
               (_%e117213117220%_ _%stx117212%_)
               (_%E117215117224%_
                (lambda () (gx#core-expand-expression _%stx117212%_)))
               (_%E117214117238%_
                (lambda ()
                  (if (gx#stx-pair? _%e117213117220%_)
                      (let ((_%e117216117228%_
                             (gx#syntax-e _%e117213117220%_)))
                        (let ((_%hd117217117231%_ (##car _%e117216117228%_))
                              (_%tl117218117233%_ (##cdr _%e117216117228%_)))
                          (let ((_%form117236%_ _%hd117217117231%_))
                            (if (gx#core-bound-identifier?__0 _%form117236%_)
                                _%stx117212%_
                                (_%E117215117224%_)))))
                      (_%E117215117224%_)))))
          (_%E117214117238%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117142%_)
        (letrec ((_%sealed-expression?117144%_
                  (lambda (_%hd117180%_)
                    (if (gx#sealed-syntax? _%hd117180%_)
                        (let* ((_%e117181117188%_ _%hd117180%_)
                               (_%E117183117192%_ (lambda () '#f))
                               (_%E117182117206%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117181117188%_)
                                      (let ((_%e117184117196%_
                                             (gx#syntax-e _%e117181117188%_)))
                                        (let ((_%hd117185117199%_
                                               (##car _%e117184117196%_))
                                              (_%tl117186117201%_
                                               (##cdr _%e117184117196%_)))
                                          (let ((_%form117204%_
                                                 _%hd117185117199%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117204%_
                                                 gx#expression-form-binding?)
                                                (_%E117183117192%_)))))
                                      (_%E117183117192%_)))))
                          (_%E117182117206%_))
                        '#f)))
                 (_%illegal-expression117145%_
                  (lambda (_%hd117177%_ . _%_117178%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117142%_
                     _%hd117177%_)))
                 (_%expand-e117146%_
                  (lambda (_%form117169%_ _%hd117170%_)
                    (let ((_%bind117172%_
                           (if (##structure-instance-of?
                                _%form117169%_
                                'gx#binding::t)
                               _%form117169%_
                               (gx#resolve-identifier__0 _%form117169%_))))
                      (if (gx#core-expander-binding? _%bind117172%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117172%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117170%_
                              (gx#stx-source _%stx117142%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117172%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117172%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117170%_
                                   (gx#stx-source _%stx117142%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117142%_
                                 _%form117169%_))))))))
          (let ((_%hd117148%_ (gx#core-expand-head _%stx117142%_)))
            (if (_%sealed-expression?117144%_ _%hd117148%_)
                (let () _%hd117148%_)
                (if (gx#stx-pair? _%hd117148%_)
                    (let ()
                      (let* ((_%form117152%_ (gx#stx-car _%hd117148%_))
                             (_%bind117154%_
                              (if (gx#identifier? _%form117152%_)
                                  (gx#resolve-identifier__0 _%form117152%_)
                                  '#f)))
                        (if (or (not _%bind117154%_)
                                (not (gx#core-expander-binding?
                                      _%bind117154%_)))
                            (let ()
                              (_%expand-e117146%_
                               '%%app
                               (cons '%%app _%hd117148%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117154%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117148%_
                                   _%illegal-expression117145%_))
                                (if (gx#expression-form-binding?
                                     _%bind117154%_)
                                    (let ()
                                      (_%expand-e117146%_
                                       _%bind117154%_
                                       _%hd117148%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117154%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117146%_
                                            _%bind117154%_
                                            _%hd117148%_)))
                                        (let ()
                                          (_%illegal-expression117145%_
                                           _%hd117148%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117148%_)
                        (let () (_%illegal-expression117145%_ _%hd117148%_))
                        (if (gx#identifier? _%hd117148%_)
                            (let ()
                              (_%expand-e117146%_
                               '%%ref
                               (cons '%%ref (cons _%hd117148%_ '()))))
                            (if (gx#stx-datum? _%hd117148%_)
                                (let ()
                                  (_%expand-e117146%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117148%_ '()))))
                                (let ()
                                  (_%illegal-expression117145%_
                                   _%hd117148%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117137%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117140%_ (gx#core-expand-expression _%stx117137%_)))
             (values _%stx117140%_ (gx#eval-syntax* _%stx117140%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117118%_ _%stop?117119%_)
        (let _%lp117121%_ ((_%stx117123%_ _%stx117118%_))
          (if (_%stop?117119%_ _%stx117123%_)
              _%stx117123%_
              (let ((_%rstx117125%_ (gx#core-expand1 _%stx117123%_)))
                (if (eq? _%stx117123%_ _%rstx117125%_)
                    _%stx117123%_
                    (_%lp117121%_ _%rstx117125%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117130%_)
        (let ((_%stop?117132%_ false))
          (gx#core-expand*__% _%stx117130%_ _%stop?117132%_))))
    (define gx#core-expand*
      (lambda _g117723_
        (let ((_g117722_ (##length _g117723_)))
          (cond ((##fx= _g117722_ 1)
                 (apply (lambda (_%stx117130%_)
                          (gx#core-expand*__0 _%stx117130%_))
                        _g117723_))
                ((##fx= _g117722_ 2)
                 (apply (lambda (_%stx117134%_ _%stop?117135%_)
                          (gx#core-expand*__% _%stx117134%_ _%stop?117135%_))
                        _g117723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g117723_))))))
    (define gx#core-expand1
      (lambda (_%stx117070%_)
        (letrec ((_%step117072%_
                  (lambda (_%hd117109%_)
                    (let ((_%bind117111%_
                           (gx#resolve-identifier__0 _%hd117109%_)))
                      (if (##structure-instance-of?
                           _%bind117111%_
                           'gx#runtime-binding::t)
                          (let () _%stx117070%_)
                          (if (##structure-direct-instance-of?
                               _%bind117111%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117111%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117070%_))
                              (if (not _%bind117111%_)
                                  (let () _%stx117070%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117070%_)))))))))
          (let* ((_%e117073117081%_ _%stx117070%_)
                 (_%E117079117085%_ (lambda () _%stx117070%_))
                 (_%E117075117091%_
                  (lambda ()
                    (let ((_%hd117089%_ _%e117073117081%_))
                      (if (gx#identifier? _%hd117089%_)
                          (_%step117072%_ _%hd117089%_)
                          (_%E117079117085%_)))))
                 (_%E117074117105%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117073117081%_)
                        (let ((_%e117076117095%_
                               (gx#syntax-e _%e117073117081%_)))
                          (let ((_%hd117077117098%_ (##car _%e117076117095%_))
                                (_%tl117078117100%_ (##cdr _%e117076117095%_)))
                            (let ((_%hd117103%_ _%hd117077117098%_))
                              (if (gx#identifier? _%hd117103%_)
                                  (_%step117072%_ _%hd117103%_)
                                  (_%E117075117091%_)))))
                        (_%E117075117091%_)))))
            (_%E117074117105%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117036%_)
        (letrec ((_%stop?117038%_
                  (lambda (_%stx117040%_)
                    (let* ((_%e117041117048%_ _%stx117040%_)
                           (_%E117043117052%_ (lambda () '#f))
                           (_%E117042117066%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117041117048%_)
                                  (let ((_%e117044117056%_
                                         (gx#syntax-e _%e117041117048%_)))
                                    (let ((_%hd117045117059%_
                                           (##car _%e117044117056%_))
                                          (_%tl117046117061%_
                                           (##cdr _%e117044117056%_)))
                                      (let ((_%hd117064%_ _%hd117045117059%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117064%_)
                                            (_%E117043117052%_)))))
                                  (_%E117043117052%_)))))
                      (_%E117042117066%_)))))
          (gx#core-expand*__% _%stx117036%_ _%stop?117038%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx116842%_
               _%expand-special116843%_
               _%begin-form116844%_
               _%expand-e116845%_)
        (letrec ((_%expand-splice116847%_
                  (lambda (_%hd117010%_
                           _%body117011%_
                           _%rest117012%_
                           _%r117013%_)
                    (if (gx#stx-list? _%body117011%_)
                        (_%K116851%_
                         (gx#stx-foldr cons _%rest117012%_ _%body117011%_)
                         _%r117013%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx116842%_
                         _%hd117010%_))))
                 (_%expand-cond-expand116848%_
                  (lambda (_%hd117006%_ _%rest117007%_ _%r117008%_)
                    (_%K116851%_
                     (cons (gx#core-expand-cond-expand% _%hd117006%_)
                           _%rest117007%_)
                     _%r117008%_)))
                 (_%expand-include116849%_
                  (lambda (_%hd116955%_ _%rest116956%_ _%r116957%_)
                    (let* ((_%e116958116968%_ _%hd116955%_)
                           (_%E116960116972%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116958116968%_)))
                           (_%E116959117002%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116958116968%_)
                                  (let ((_%e116961116976%_
                                         (gx#syntax-e _%e116958116968%_)))
                                    (let ((_%hd116962116979%_
                                           (##car _%e116961116976%_))
                                          (_%tl116963116981%_
                                           (##cdr _%e116961116976%_)))
                                      (if (gx#stx-pair? _%tl116963116981%_)
                                          (let ((_%e116964116984%_
                                                 (gx#syntax-e
                                                  _%tl116963116981%_)))
                                            (let ((_%hd116965116987%_
                                                   (##car _%e116964116984%_))
                                                  (_%tl116966116989%_
                                                   (##cdr _%e116964116984%_)))
                                              (let ((_%path116992%_
                                                     _%hd116965116987%_))
                                                (if (gx#stx-null?
                                                     _%tl116966116989%_)
                                                    (if (gx#stx-string?
                                                         _%path116992%_)
                                                        (let* ((_%rpath116994%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path116992%_
                         (gx#stx-source _%hd116955%_)))
                       (_%block116996%_
                        (gx#core-expand-include%__%
                         _%hd116955%_
                         _%rpath116994%_))
                       (_%rbody116999%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block116996%_
                            _%expand-special116843%_
                            '#f
                            _%expand-e116845%_))
                         gx#current-expander-path
                         (cons _%rpath116994%_ (gx#current-expander-path)))))
                  (_%K116851%_
                   _%rest116956%_
                   (__foldr1 cons _%r116957%_ _%rbody116999%_)))
                (_%E116960116972%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E116960116972%_)))))
                                          (_%E116960116972%_))))
                                  (_%E116960116972%_)))))
                      (_%E116959117002%_))))
                 (_%expand-expression116850%_
                  (lambda (_%hd116951%_ _%rest116952%_ _%r116953%_)
                    (_%K116851%_
                     _%rest116952%_
                     (cons (_%expand-e116845%_ _%hd116951%_) _%r116953%_))))
                 (_%K116851%_
                  (lambda (_%rest116881%_ _%r116882%_)
                    (let* ((_%e116883116890%_ _%rest116881%_)
                           (_%E116885116894%_
                            (lambda ()
                              (if _%begin-form116844%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form116844%_
                                    (reverse _%r116882%_))
                                   (gx#stx-source _%stx116842%_))
                                  _%r116882%_)))
                           (_%E116884116947%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116883116890%_)
                                  (let ((_%e116886116898%_
                                         (gx#syntax-e _%e116883116890%_)))
                                    (let ((_%hd116887116901%_
                                           (##car _%e116886116898%_))
                                          (_%tl116888116903%_
                                           (##cdr _%e116886116898%_)))
                                      (let* ((_%hd116906%_ _%hd116887116901%_)
                                             (_%rest116908%_
                                              _%tl116888116903%_))
                                        (if '#t
                                            (let* ((_%hd116910%_
                                                    (gx#core-expand-head
                                                     _%hd116906%_))
                                                   (_%e116911116918%_
                                                    _%hd116910%_)
                                                   (_%E116913116922%_
                                                    (lambda ()
                                                      (_%expand-expression116850%_
                                                       _%hd116910%_
                                                       _%rest116908%_
                                                       _%r116882%_)))
                                                   (_%E116912116943%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116911116918%_)
                                                          (let ((_%e116914116926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116911116918%_)))
                    (let ((_%hd116915116929%_ (##car _%e116914116926%_))
                          (_%tl116916116931%_ (##cdr _%e116914116926%_)))
                      (let* ((_%form116934%_ _%hd116915116929%_)
                             (_%body116936%_ _%tl116916116931%_))
                        (if '#t
                            (let ((_%bind116938%_
                                   (if (gx#identifier? _%form116934%_)
                                       (gx#resolve-identifier__0
                                        _%form116934%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind116938%_)
                                  (let ((_%$e116940%_
                                         (##unchecked-structure-ref
                                          _%bind116938%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e116940%_)
                                        (_%expand-splice116847%_
                                         _%hd116910%_
                                         _%body116936%_
                                         _%rest116908%_
                                         _%r116882%_)
                                        (if (eq? '%#cond-expand _%$e116940%_)
                                            (_%expand-cond-expand116848%_
                                             _%hd116910%_
                                             _%rest116908%_
                                             _%r116882%_)
                                            (if (eq? '%#include _%$e116940%_)
                                                (_%expand-include116849%_
                                                 _%hd116910%_
                                                 _%rest116908%_
                                                 _%r116882%_)
                                                (_%expand-special116843%_
                                                 _%hd116910%_
                                                 _%K116851%_
                                                 _%rest116908%_
                                                 _%r116882%_)))))
                                  (_%expand-expression116850%_
                                   _%hd116910%_
                                   _%rest116908%_
                                   _%r116882%_)))
                            (_%E116913116922%_)))))
                  (_%E116913116922%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116912116943%_))
                                            (_%E116885116894%_)))))
                                  (_%E116885116894%_)))))
                      (_%E116884116947%_)))))
          (let* ((_%e116852116859%_ _%stx116842%_)
                 (_%E116854116863%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116852116859%_)))
                 (_%E116853116877%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116852116859%_)
                        (let ((_%e116855116867%_
                               (gx#syntax-e _%e116852116859%_)))
                          (let ((_%hd116856116870%_ (##car _%e116855116867%_))
                                (_%tl116857116872%_ (##cdr _%e116855116867%_)))
                            (let ((_%body116875%_ _%tl116857116872%_))
                              (if (gx#stx-list? _%body116875%_)
                                  (_%K116851%_ _%body116875%_ '())
                                  (_%E116854116863%_)))))
                        (_%E116854116863%_)))))
            (_%E116853116877%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117018%_ _%expand-special117019%_)
        (let* ((_%begin-form117021%_ '%#begin)
               (_%expand-e117023%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117018%_
           _%expand-special117019%_
           _%begin-form117021%_
           _%expand-e117023%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117025%_ _%expand-special117026%_ _%begin-form117027%_)
        (let ((_%expand-e117029%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117025%_
           _%expand-special117026%_
           _%begin-form117027%_
           _%expand-e117029%_))))
    (define gx#core-expand-block
      (lambda _g117725_
        (let ((_g117724_ (##length _g117725_)))
          (cond ((##fx= _g117724_ 2)
                 (apply (lambda (_%stx117018%_ _%expand-special117019%_)
                          (gx#core-expand-block__0
                           _%stx117018%_
                           _%expand-special117019%_))
                        _g117725_))
                ((##fx= _g117724_ 3)
                 (apply (lambda (_%stx117025%_
                                 _%expand-special117026%_
                                 _%begin-form117027%_)
                          (gx#core-expand-block__1
                           _%stx117025%_
                           _%expand-special117026%_
                           _%begin-form117027%_))
                        _g117725_))
                ((##fx= _g117724_ 4)
                 (apply (lambda (_%stx117031%_
                                 _%expand-special117032%_
                                 _%begin-form117033%_
                                 _%expand-e117034%_)
                          (gx#core-expand-block__%
                           _%stx117031%_
                           _%expand-special117032%_
                           _%begin-form117033%_
                           _%expand-e117034%_))
                        _g117725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g117725_))))))
    (define gx#core-expand-block*
      (lambda (_%stx116790%_ _%expand-special116791%_)
        (let* ((_%g116792116803%_
                (gx#core-expand-block__1
                 _%stx116790%_
                 _%expand-special116791%_
                 '#f))
               (_%E116796116807%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116792116803%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K116801116838%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx116790%_)))
                (_%K116798116824%_ (lambda (_%expr116822%_) _%expr116822%_))
                (_%K116797116813%_
                 (lambda (_%body116811%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body116811%_))
                    (gx#stx-source _%stx116790%_)))))
            (let ((_%try-match116794116834%_
                   (lambda ()
                     (if (##pair? _%g116792116803%_)
                         (let ((_%tl116800116829%_ (##cdr _%g116792116803%_))
                               (_%hd116799116827%_ (##car _%g116792116803%_)))
                           (if (##null? _%tl116800116829%_)
                               (let ((_%expr116832%_ _%hd116799116827%_))
                                 (_%K116798116824%_ _%expr116832%_))
                               (let ((_%body116816%_ _%g116792116803%_))
                                 (_%K116797116813%_ _%body116816%_))))
                         (let ((_%body116816%_ _%g116792116803%_))
                           (_%K116797116813%_ _%body116816%_))))))
              (if (##null? _%g116792116803%_)
                  (_%K116801116838%_)
                  (_%try-match116794116834%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx116615%_)
        (letrec ((_%satisfied?116617%_
                  (lambda (_%condition116718%_)
                    (let* ((_%e116719116734%_ _%condition116718%_)
                           (_%E116729116738%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116719116734%_)))
                           (_%E116722116757%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116719116734%_)
                                  (let ((_%e116730116742%_
                                         (gx#syntax-e _%e116719116734%_)))
                                    (let ((_%hd116731116745%_
                                           (##car _%e116730116742%_))
                                          (_%tl116732116747%_
                                           (##cdr _%e116730116742%_)))
                                      (let* ((_%combinator116750%_
                                              _%hd116731116745%_)
                                             (_%body116752%_
                                              _%tl116732116747%_))
                                        (if (gx#stx-list? _%body116752%_)
                                            (let ((_%$e116754%_
                                                   (gx#stx-e
                                                    _%combinator116750%_)))
                                              (if (eq? 'not _%$e116754%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?116617%_
                                                        _%body116752%_))
                                                  (if (eq? 'and _%$e116754%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?116617%_
                                                       _%body116752%_)
                                                      (if (eq? 'or
                                                               _%$e116754%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?116617%_
                                                           _%body116752%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e116754%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body116752%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx116615%_
                       _%combinator116750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E116729116738%_)))))
                                  (_%E116729116738%_))))
                           (_%E116721116780%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116719116734%_)
                                  (let ((_%e116723116761%_
                                         (gx#syntax-e _%e116719116734%_)))
                                    (let ((_%hd116724116764%_
                                           (##car _%e116723116761%_))
                                          (_%tl116725116766%_
                                           (##cdr _%e116723116761%_)))
                                      (if (and (gx#identifier?
                                                _%hd116724116764%_)
                                               (gx#core-identifier=?
                                                _%hd116724116764%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl116725116766%_)
                                              (let ((_%e116726116769%_
                                                     (gx#syntax-e
                                                      _%tl116725116766%_)))
                                                (let ((_%hd116727116772%_
                                                       (##car _%e116726116769%_))
                                                      (_%tl116728116774%_
                                                       (##cdr _%e116726116769%_)))
                                                  (let ((_%expr116777%_
                                                         _%hd116727116772%_))
                                                    (if (gx#stx-null?
                                                         _%tl116728116774%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr116777%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E116722116757%_))
                (_%E116722116757%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116722116757%_))
                                          (_%E116722116757%_))))
                                  (_%E116722116757%_))))
                           (_%E116720116786%_
                            (lambda ()
                              (let ((_%id116784%_ _%e116719116734%_))
                                (if (gx#identifier? _%id116784%_)
                                    (gx#core-bound-identifier?__%
                                     _%id116784%_
                                     gx#feature-binding?)
                                    (_%E116721116780%_))))))
                      (_%E116720116786%_))))
                 (_%loop116618%_
                  (lambda (_%rest116648%_)
                    (let* ((_%e116649116657%_ _%rest116648%_)
                           (_%E116655116661%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116649116657%_)))
                           (_%E116651116665%_
                            (lambda ()
                              (if (gx#stx-null? _%e116649116657%_)
                                  (if '#t '() (_%E116655116661%_))
                                  (_%E116655116661%_))))
                           (_%E116650116714%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116649116657%_)
                                  (let ((_%e116652116669%_
                                         (gx#syntax-e _%e116649116657%_)))
                                    (let ((_%hd116653116672%_
                                           (##car _%e116652116669%_))
                                          (_%tl116654116674%_
                                           (##cdr _%e116652116669%_)))
                                      (let* ((_%hd116677%_ _%hd116653116672%_)
                                             (_%rest116679%_
                                              _%tl116654116674%_))
                                        (if '#t
                                            (let* ((_%e116680116687%_
                                                    _%hd116677%_)
                                                   (_%E116682116691%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e116680116687%_)))
                                                   (_%E116681116710%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116680116687%_)
                                                          (let ((_%e116683116695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116680116687%_)))
                    (let ((_%hd116684116698%_ (##car _%e116683116695%_))
                          (_%tl116685116700%_ (##cdr _%e116683116695%_)))
                      (let* ((_%condition116703%_ _%hd116684116698%_)
                             (_%body116705%_ _%tl116685116700%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition116703%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest116679%_)
                                      _%body116705%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx116615%_
                                       _%hd116677%_)))
                                (if (_%satisfied?116617%_ _%condition116703%_)
                                    (let () _%body116705%_)
                                    (let () (_%loop116618%_ _%rest116679%_))))
                            (_%E116682116691%_)))))
                  (_%E116682116691%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116681116710%_))
                                            (_%E116651116665%_)))))
                                  (_%E116651116665%_)))))
                      (_%E116650116714%_)))))
          (let* ((_%e116619116626%_ _%stx116615%_)
                 (_%E116621116630%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116619116626%_)))
                 (_%E116620116644%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116619116626%_)
                        (let ((_%e116622116634%_
                               (gx#syntax-e _%e116619116626%_)))
                          (let ((_%hd116623116637%_ (##car _%e116622116634%_))
                                (_%tl116624116639%_ (##cdr _%e116622116634%_)))
                            (let ((_%clauses116642%_ _%tl116624116639%_))
                              (if (gx#stx-list? _%clauses116642%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop116618%_ _%clauses116642%_))
                                  (_%E116621116630%_)))))
                        (_%E116621116630%_)))))
            (_%E116620116644%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx116558%_ _%rpath116559%_)
        (let* ((_%e116560116570%_ _%stx116558%_)
               (_%E116562116574%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e116560116570%_)))
               (_%E116561116601%_
                (lambda ()
                  (if (gx#stx-pair? _%e116560116570%_)
                      (let ((_%e116563116578%_
                             (gx#syntax-e _%e116560116570%_)))
                        (let ((_%hd116564116581%_ (##car _%e116563116578%_))
                              (_%tl116565116583%_ (##cdr _%e116563116578%_)))
                          (if (gx#stx-pair? _%tl116565116583%_)
                              (let ((_%e116566116586%_
                                     (gx#syntax-e _%tl116565116583%_)))
                                (let ((_%hd116567116589%_
                                       (##car _%e116566116586%_))
                                      (_%tl116568116591%_
                                       (##cdr _%e116566116586%_)))
                                  (let ((_%path116594%_ _%hd116567116589%_))
                                    (if (gx#stx-null? _%tl116568116591%_)
                                        (if (gx#stx-string? _%path116594%_)
                                            (let ((_%rpath116599%_
                                                   (let ((_%$e116596%_
                                                          _%rpath116559%_))
                                                     (if _%$e116596%_
                                                         _%$e116596%_
                                                         (gx#core-resolve-path__%
                                                          _%path116594%_
                                                          (gx#stx-source
                                                           _%stx116558%_))))))
                                              (if (member _%rpath116599%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx116558%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath116599%_))
                                                    (gx#stx-source
                                                     _%stx116558%_)))))
                                            (_%E116562116574%_))
                                        (_%E116562116574%_)))))
                              (_%E116562116574%_))))
                      (_%E116562116574%_)))))
          (_%E116561116601%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx116608%_)
        (let ((_%rpath116610%_ '#f))
          (gx#core-expand-include%__% _%stx116608%_ _%rpath116610%_))))
    (define gx#core-expand-include%
      (lambda _g117727_
        (let ((_g117726_ (##length _g117727_)))
          (cond ((##fx= _g117726_ 1)
                 (apply (lambda (_%stx116608%_)
                          (gx#core-expand-include%__0 _%stx116608%_))
                        _g117727_))
                ((##fx= _g117726_ 2)
                 (apply (lambda (_%stx116612%_ _%rpath116613%_)
                          (gx#core-expand-include%__%
                           _%stx116612%_
                           _%rpath116613%_))
                        _g117727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g117727_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K116524%_ _%stx116525%_ _%method116526%_)
        (if (procedure? _%K116524%_)
            (let ((_%$e116529%_ (gx#stx-source _%stx116525%_)))
              (if _%$e116529%_
                  ((lambda (_%g116531116533%_)
                     (gx#stx-wrap-source
                      (_%K116524%_ _%stx116525%_)
                      _%g116531116533%_))
                   _%$e116529%_)
                  (let () (_%K116524%_ _%stx116525%_))))
            (let ((_%$e116537%_
                   (bound-method-ref _%K116524%_ _%method116526%_)))
              (if _%$e116537%_
                  ((lambda (_%g116539116541%_)
                     (gx#core-apply-expander__%
                      _%g116539116541%_
                      _%stx116525%_
                      _%method116526%_))
                   _%$e116537%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx116525%_
                     _%method116526%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K116548%_ _%stx116549%_)
        (let ((_%method116551%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K116548%_
           _%stx116549%_
           _%method116551%_))))
    (define gx#core-apply-expander
      (lambda _g117729_
        (let ((_g117728_ (##length _g117729_)))
          (cond ((##fx= _g117728_ 2)
                 (apply (lambda (_%K116548%_ _%stx116549%_)
                          (gx#core-apply-expander__0
                           _%K116548%_
                           _%stx116549%_))
                        _g117729_))
                ((##fx= _g117728_ 3)
                 (apply (lambda (_%K116553%_ _%stx116554%_ _%method116555%_)
                          (gx#core-apply-expander__%
                           _%K116553%_
                           _%stx116554%_
                           _%method116555%_))
                        _g117729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g117729_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116509%_ _%stx116510%_)
        (let ((_%self116513%_ _%self116509%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx116510%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116351%_ _%stx116352%_)
        (let ((_%self116355%_ _%self116351%_))
          (let* ((_%self116364116370%_ _%self116355%_)
                 (_%E116366116374%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116364116370%_
                           '((macro-expander K)))
                    '#!void))
                 (_%K116367116379%_
                  (lambda (_%K116377%_)
                    (gx#core-apply-expander__0 _%K116377%_ _%stx116352%_))))
            (if '#t
                (let* ((_%e116368116382%_
                        (##unchecked-structure-ref
                         _%self116364116370%_
                         '1
                         '#f
                         '#f))
                       (_%K116385%_ _%e116368116382%_))
                  (_%K116367116379%_ _%K116385%_))
                (_%E116366116374%_))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116193%_ _%stx116194%_)
        (let ((_%self116197%_ _%self116193%_))
          (if (gx#sealed-syntax? _%stx116194%_)
              _%stx116194%_
              (let* ((_%self116206116212%_ _%self116197%_)
                     (_%E116208116216%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116206116212%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116209116221%_
                      (lambda (_%K116219%_)
                        (gx#core-apply-expander__0
                         _%K116219%_
                         _%stx116194%_))))
                (if '#t
                    (let* ((_%e116210116224%_
                            (##unchecked-structure-ref
                             _%self116206116212%_
                             '1
                             '#f
                             '#f))
                           (_%K116227%_ _%e116210116224%_))
                      (_%K116209116221%_ _%K116227%_))
                    (_%E116208116216%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116044%_ _%stx116045%_ _%top?116046%_)
        (let ((_%self116049%_ _%self116044%_))
          (if (_%top?116046%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self116049%_
               _%stx116045%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx116045%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116062%_ _%stx116063%_)
        (let ((_%top?116065%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116062%_
           _%stx116063%_
           _%top?116065%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g117731_
        (let ((_g117730_ (##length _g117731_)))
          (cond ((##fx= _g117730_ 2)
                 (apply (lambda (_%self116062%_ _%stx116063%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116062%_
                           _%stx116063%_))
                        _g117731_))
                ((##fx= _g117730_ 3)
                 (apply (lambda (_%self116067%_ _%stx116068%_ _%top?116069%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116067%_
                           _%stx116068%_
                           _%top?116069%_))
                        _g117731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g117731_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115907%_ _%stx115908%_)
        (let ((_%self115911%_ _%self115907%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self115911%_
           _%stx115908%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115721%_ _%stx115722%_)
        (let ((_%self115725%_ _%self115721%_))
          (let* ((_%self115734115740%_ _%self115725%_)
                 (_%E115736115744%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self115734115740%_
                           '((rename-macro-expander id)))
                    '#!void))
                 (_%K115737115777%_
                  (lambda (_%id115747%_)
                    (let* ((_%e115748115755%_ _%stx115722%_)
                           (_%E115750115759%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e115748115755%_)))
                           (_%E115749115773%_
                            (lambda ()
                              (if (gx#stx-pair? _%e115748115755%_)
                                  (let ((_%e115751115763%_
                                         (gx#syntax-e _%e115748115755%_)))
                                    (let ((_%hd115752115766%_
                                           (##car _%e115751115763%_))
                                          (_%tl115753115768%_
                                           (##cdr _%e115751115763%_)))
                                      (let ((_%body115771%_
                                             _%tl115753115768%_))
                                        (if '#t
                                            (gx#core-cons
                                             _%id115747%_
                                             _%body115771%_)
                                            (_%E115750115759%_)))))
                                  (_%E115750115759%_)))))
                      (_%E115749115773%_)))))
            (if '#t
                (let* ((_%e115738115780%_
                        (##unchecked-structure-ref
                         _%self115734115740%_
                         '1
                         '#f
                         '#f))
                       (_%id115783%_ _%e115738115780%_))
                  (_%K115737115777%_ _%id115783%_))
                (_%E115736115744%_))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self115547%_ _%stx115548%_ _%method115549%_)
        (let* ((_%self115550115558%_ _%self115547%_)
               (_%E115552115562%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115550115558%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K115553115569%_
                (lambda (_%phi115565%_ _%ctx115566%_ _%K115567%_)
                  (gx#core-apply-user-macro
                   _%K115567%_
                   _%stx115548%_
                   _%ctx115566%_
                   _%phi115565%_
                   _%method115549%_))))
          (if (##structure-instance-of?
               _%self115550115558%_
               'gx#user-expander::t)
              (let* ((_%e115554115572%_
                      (##unchecked-structure-ref
                       _%self115550115558%_
                       '1
                       '#f
                       '#f))
                     (_%K115575%_ _%e115554115572%_)
                     (_%e115555115577%_
                      (##unchecked-structure-ref
                       _%self115550115558%_
                       '2
                       '#f
                       '#f))
                     (_%ctx115580%_ _%e115555115577%_)
                     (_%e115556115582%_
                      (##unchecked-structure-ref
                       _%self115550115558%_
                       '3
                       '#f
                       '#f))
                     (_%phi115585%_ _%e115556115582%_))
                (_%K115553115569%_ _%phi115585%_ _%ctx115580%_ _%K115575%_))
              (_%E115552115562%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self115590%_ _%stx115591%_)
        (let ((_%method115593%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self115590%_
           _%stx115591%_
           _%method115593%_))))
    (define gx#core-apply-user-expander
      (lambda _g117733_
        (let ((_g117732_ (##length _g117733_)))
          (cond ((##fx= _g117732_ 2)
                 (apply (lambda (_%self115590%_ _%stx115591%_)
                          (gx#core-apply-user-expander__0
                           _%self115590%_
                           _%stx115591%_))
                        _g117733_))
                ((##fx= _g117732_ 3)
                 (apply (lambda (_%self115595%_ _%stx115596%_ _%method115597%_)
                          (gx#core-apply-user-expander__%
                           _%self115595%_
                           _%stx115596%_
                           _%method115597%_))
                        _g117733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g117733_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K115537%_
               _%stx115538%_
               _%ctx115539%_
               _%phi115540%_
               _%method115541%_)
        (let ((_%mark115543%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx115539%_
                _%phi115540%_
                _%stx115538%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K115537%_
               (gx#stx-apply-mark _%stx115538%_ _%mark115543%_)
               _%method115541%_)
              _%mark115543%_))
           gx#current-expander-marks
           (cons _%mark115543%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115385%_ _%phi115386%_ _%ctx115387%_)
        (let _%lp115389%_ ((_%bind115391%_
                            (gx#core-resolve-identifier__%
                             _%stx115385%_
                             _%phi115386%_
                             _%ctx115387%_)))
          (if (##structure-direct-instance-of?
               _%bind115391%_
               'gx#import-binding::t)
              (let ()
                (_%lp115389%_
                 (##unchecked-structure-ref _%bind115391%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115391%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115389%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115391%_ '4 '#f '#f)
                      _%phi115386%_
                      _%ctx115387%_)))
                  (let () _%bind115391%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115399%_)
        (let* ((_%phi115401%_ (gx#current-expander-phi))
               (_%ctx115403%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115399%_
           _%phi115401%_
           _%ctx115403%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115405%_ _%phi115406%_)
        (let ((_%ctx115408%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115405%_
           _%phi115406%_
           _%ctx115408%_))))
    (define gx#resolve-identifier
      (lambda _g117735_
        (let ((_g117734_ (##length _g117735_)))
          (cond ((##fx= _g117734_ 1)
                 (apply (lambda (_%stx115399%_)
                          (gx#resolve-identifier__0 _%stx115399%_))
                        _g117735_))
                ((##fx= _g117734_ 2)
                 (apply (lambda (_%stx115405%_ _%phi115406%_)
                          (gx#resolve-identifier__1
                           _%stx115405%_
                           _%phi115406%_))
                        _g117735_))
                ((##fx= _g117734_ 3)
                 (apply (lambda (_%stx115410%_ _%phi115411%_ _%ctx115412%_)
                          (gx#resolve-identifier__%
                           _%stx115410%_
                           _%phi115411%_
                           _%ctx115412%_))
                        _g117735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g117735_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115340%_
               _%val115341%_
               _%rebind?115342%_
               _%phi115343%_
               _%ctx115344%_)
        (let ((_%rebind?115349%_
               (if (not _%rebind?115342%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115342%_)
                       (let () _%rebind?115342%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115340%_)
           _%val115341%_
           _%rebind?115349%_
           _%phi115343%_
           _%ctx115344%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115354%_ _%val115355%_)
        (let* ((_%rebind?115357%_ '#f)
               (_%phi115359%_ (gx#current-expander-phi))
               (_%ctx115361%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115354%_
           _%val115355%_
           _%rebind?115357%_
           _%phi115359%_
           _%ctx115361%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115363%_ _%val115364%_ _%rebind?115365%_)
        (let* ((_%phi115367%_ (gx#current-expander-phi))
               (_%ctx115369%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115363%_
           _%val115364%_
           _%rebind?115365%_
           _%phi115367%_
           _%ctx115369%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115371%_ _%val115372%_ _%rebind?115373%_ _%phi115374%_)
        (let ((_%ctx115376%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115371%_
           _%val115372%_
           _%rebind?115373%_
           _%phi115374%_
           _%ctx115376%_))))
    (define gx#bind-identifier!
      (lambda _g117737_
        (let ((_g117736_ (##length _g117737_)))
          (cond ((##fx= _g117736_ 2)
                 (apply (lambda (_%stx115354%_ _%val115355%_)
                          (gx#bind-identifier!__0 _%stx115354%_ _%val115355%_))
                        _g117737_))
                ((##fx= _g117736_ 3)
                 (apply (lambda (_%stx115363%_ _%val115364%_ _%rebind?115365%_)
                          (gx#bind-identifier!__1
                           _%stx115363%_
                           _%val115364%_
                           _%rebind?115365%_))
                        _g117737_))
                ((##fx= _g117736_ 4)
                 (apply (lambda (_%stx115371%_
                                 _%val115372%_
                                 _%rebind?115373%_
                                 _%phi115374%_)
                          (gx#bind-identifier!__2
                           _%stx115371%_
                           _%val115372%_
                           _%rebind?115373%_
                           _%phi115374%_))
                        _g117737_))
                ((##fx= _g117736_ 5)
                 (apply (lambda (_%stx115378%_
                                 _%val115379%_
                                 _%rebind?115380%_
                                 _%phi115381%_
                                 _%ctx115382%_)
                          (gx#bind-identifier!__%
                           _%stx115378%_
                           _%val115379%_
                           _%rebind?115380%_
                           _%phi115381%_
                           _%ctx115382%_))
                        _g117737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g117737_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115306%_ _%phi115307%_ _%ctx115308%_)
        (let _%lp115310%_ ((_%e115312%_ _%stx115306%_)
                           (_%marks115313%_ (gx#current-expander-marks)))
          (if (symbol? _%e115312%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115312%_
                 _%phi115307%_
                 _%phi115307%_
                 _%ctx115308%_
                 (reverse _%marks115313%_)))
              (if (gx#identifier-quote? _%e115312%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115312%_ '1 '#f '#f)
                     _%phi115307%_
                     '0
                     (##unchecked-structure-ref _%e115312%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115312%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115312%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115312%_ '1 '#f '#f)
                         _%phi115307%_
                         _%phi115307%_
                         _%ctx115308%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115312%_ '3 '#f '#f)
                          _%marks115313%_)))
                      (if (##structure-direct-instance-of?
                           _%e115312%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115310%_
                             (##unchecked-structure-ref _%e115312%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115312%_
                               '3
                               '#f
                               '#f)
                              _%marks115313%_)))
                          (if (##structure-instance-of?
                               _%e115312%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115310%_
                                 (##unchecked-structure-ref
                                  _%e115312%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115313%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115306%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115324%_)
        (let* ((_%phi115326%_ (gx#current-expander-phi))
               (_%ctx115328%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115324%_
           _%phi115326%_
           _%ctx115328%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115330%_ _%phi115331%_)
        (let ((_%ctx115333%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115330%_
           _%phi115331%_
           _%ctx115333%_))))
    (define gx#core-resolve-identifier
      (lambda _g117739_
        (let ((_g117738_ (##length _g117739_)))
          (cond ((##fx= _g117738_ 1)
                 (apply (lambda (_%stx115324%_)
                          (gx#core-resolve-identifier__0 _%stx115324%_))
                        _g117739_))
                ((##fx= _g117738_ 2)
                 (apply (lambda (_%stx115330%_ _%phi115331%_)
                          (gx#core-resolve-identifier__1
                           _%stx115330%_
                           _%phi115331%_))
                        _g117739_))
                ((##fx= _g117738_ 3)
                 (apply (lambda (_%stx115335%_ _%phi115336%_ _%ctx115337%_)
                          (gx#core-resolve-identifier__%
                           _%stx115335%_
                           _%phi115336%_
                           _%ctx115337%_))
                        _g117739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g117739_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115216%_
               _%phi115217%_
               _%src-phi115218%_
               _%ctx115219%_
               _%marks115220%_)
        (letrec ((_%resolve115222%_
                  (lambda (_%ctx115290%_ _%src-phi115291%_ _%key115292%_)
                    (let _%lp115294%_ ((_%ctx115296%_
                                        (gx#core-context-shift
                                         _%ctx115290%_
                                         _%phi115217%_))
                                       (_%dphi115297%_
                                        (fx- _%phi115217%_ _%src-phi115291%_)))
                      (let ((_%$e115299%_
                             (gx#core-context-resolve
                              _%ctx115296%_
                              _%key115292%_)))
                        (if _%$e115299%_
                            (values _%$e115299%_)
                            (if (fxzero? _%dphi115297%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115297%_)
                                    (let ()
                                      (_%lp115294%_
                                       (gx#core-context-shift
                                        _%ctx115296%_
                                        '-1)
                                       (##fx- _%dphi115297%_ '1)))
                                    (let ()
                                      (_%lp115294%_
                                       (gx#core-context-shift _%ctx115296%_ '1)
                                       (##fx+ _%dphi115297%_ '1)))))))))))
          (let _%lp115224%_ ((_%ctx115226%_ _%ctx115219%_)
                             (_%src-phi115227%_ _%src-phi115218%_)
                             (_%rest115228%_ _%marks115220%_))
            (let* ((_%rest115229115237%_ _%rest115228%_)
                   (_%else115231115245%_
                    (lambda ()
                      (_%resolve115222%_
                       _%ctx115226%_
                       _%src-phi115227%_
                       _%id115216%_)))
                   (_%K115233115278%_
                    (lambda (_%rest115248%_ _%hd115249%_)
                      (let* ((_%hd115250115256%_ _%hd115249%_)
                             (_%E115252115260%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115250115256%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115253115270%_
                              (lambda (_%subst115263%_)
                                (let ((_%$e115267%_
                                       (let ((_%key115265%_
                                              (if _%subst115263%_
                                                  (hash-get
                                                   _%subst115263%_
                                                   _%id115216%_)
                                                  '#f)))
                                         (if _%key115265%_
                                             (_%resolve115222%_
                                              _%ctx115226%_
                                              _%src-phi115227%_
                                              _%key115265%_)
                                             '#f))))
                                  (if _%$e115267%_
                                      _%$e115267%_
                                      (_%lp115224%_
                                       (##unchecked-structure-ref
                                        _%hd115249%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115249%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115248%_))))))
                        (if (##structure-instance-of?
                             _%hd115250115256%_
                             'gx#expander-mark::t)
                            (let* ((_%e115254115273%_
                                    (##unchecked-structure-ref
                                     _%hd115250115256%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115276%_ _%e115254115273%_))
                              (_%K115253115270%_ _%subst115276%_))
                            (_%E115252115260%_))))))
              (if (##pair? _%rest115229115237%_)
                  (let ((_%hd115234115281%_ (##car _%rest115229115237%_))
                        (_%tl115235115283%_ (##cdr _%rest115229115237%_)))
                    (let* ((_%hd115286%_ _%hd115234115281%_)
                           (_%rest115288%_ _%tl115235115283%_))
                      (_%K115233115278%_ _%rest115288%_ _%hd115286%_)))
                  (_%else115231115245%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115086%_
               _%val115087%_
               _%rebind?115088%_
               _%phi115089%_
               _%ctx115090%_)
        (letrec ((_%update-binding115092%_
                  (lambda (_%xval115165%_)
                    (if (or (_%rebind?115088%_
                             _%ctx115090%_
                             _%xval115165%_
                             _%val115087%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115165%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115165%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115087%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115087%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115165%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115087%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115087%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115165%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115087%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115087%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115087%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115165%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115087%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115165%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115165%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115087%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115165%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115086%_
                                   (cons (##unchecked-structure-ref
                                          _%val115087%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115087%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115165%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115165%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115165%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115165%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115086%_
                                   _%val115087%_
                                   _%xval115165%_)))))))
                 (_%gensubst115093%_
                  (lambda (_%subst115160%_ _%id115161%_)
                    (let ((_%eid115163%_
                           (gensym (if (uninterned-symbol? _%id115161%_)
                                       '%
                                       _%id115161%_))))
                      (hash-put! _%subst115160%_ _%id115161%_ _%eid115163%_)
                      _%eid115163%_)))
                 (_%subst!115094%_
                  (lambda (_%key115096%_)
                    (let* ((_%key115097115105%_ _%key115096%_)
                           (_%else115099115113%_ (lambda () _%key115096%_))
                           (_%K115101115148%_
                            (lambda (_%mark115116%_ _%id115117%_)
                              (let* ((_%mark115118115124%_ _%mark115116%_)
                                     (_%E115120115128%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115118115124%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115121115140%_
                                      (lambda (_%subst115131%_)
                                        (if (not _%subst115131%_)
                                            (let ((_%subst115134%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark115116%_
                                               _%subst115134%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst115093%_
                                               _%subst115134%_
                                               _%id115117%_))
                                            (let ((_%$e115136%_
                                                   (hash-get
                                                    _%subst115131%_
                                                    _%id115117%_)))
                                              (if _%$e115136%_
                                                  (values _%$e115136%_)
                                                  (let ()
                                                    (_%gensubst115093%_
                                                     _%subst115131%_
                                                     _%id115117%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115118115124%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115122115143%_
                                            (##unchecked-structure-ref
                                             _%mark115118115124%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115146%_ _%e115122115143%_))
                                      (_%K115121115140%_ _%subst115146%_))
                                    (_%E115120115128%_))))))
                      (if (##pair? _%key115097115105%_)
                          (let ((_%hd115102115151%_
                                 (##car _%key115097115105%_))
                                (_%tl115103115153%_
                                 (##cdr _%key115097115105%_)))
                            (let* ((_%id115156%_ _%hd115102115151%_)
                                   (_%mark115158%_ _%tl115103115153%_))
                              (_%K115101115148%_ _%mark115158%_ _%id115156%_)))
                          (_%else115099115113%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115090%_ _%phi115089%_)
           (_%subst!115094%_ _%key115086%_)
           _%val115087%_
           _%update-binding115092%_))))
    (define gx#core-bind!__0
      (lambda (_%key115186%_ _%val115187%_)
        (let* ((_%rebind?115189%_ false)
               (_%phi115191%_ (gx#current-expander-phi))
               (_%ctx115193%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115186%_
           _%val115187%_
           _%rebind?115189%_
           _%phi115191%_
           _%ctx115193%_))))
    (define gx#core-bind!__1
      (lambda (_%key115195%_ _%val115196%_ _%rebind?115197%_)
        (let* ((_%phi115199%_ (gx#current-expander-phi))
               (_%ctx115201%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115195%_
           _%val115196%_
           _%rebind?115197%_
           _%phi115199%_
           _%ctx115201%_))))
    (define gx#core-bind!__2
      (lambda (_%key115203%_ _%val115204%_ _%rebind?115205%_ _%phi115206%_)
        (let ((_%ctx115208%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115203%_
           _%val115204%_
           _%rebind?115205%_
           _%phi115206%_
           _%ctx115208%_))))
    (define gx#core-bind!
      (lambda _g117741_
        (let ((_g117740_ (##length _g117741_)))
          (cond ((##fx= _g117740_ 2)
                 (apply (lambda (_%key115186%_ _%val115187%_)
                          (gx#core-bind!__0 _%key115186%_ _%val115187%_))
                        _g117741_))
                ((##fx= _g117740_ 3)
                 (apply (lambda (_%key115195%_ _%val115196%_ _%rebind?115197%_)
                          (gx#core-bind!__1
                           _%key115195%_
                           _%val115196%_
                           _%rebind?115197%_))
                        _g117741_))
                ((##fx= _g117740_ 4)
                 (apply (lambda (_%key115203%_
                                 _%val115204%_
                                 _%rebind?115205%_
                                 _%phi115206%_)
                          (gx#core-bind!__2
                           _%key115203%_
                           _%val115204%_
                           _%rebind?115205%_
                           _%phi115206%_))
                        _g117741_))
                ((##fx= _g117740_ 5)
                 (apply (lambda (_%key115210%_
                                 _%val115211%_
                                 _%rebind?115212%_
                                 _%phi115213%_
                                 _%ctx115214%_)
                          (gx#core-bind!__%
                           _%key115210%_
                           _%val115211%_
                           _%rebind?115212%_
                           _%phi115213%_
                           _%ctx115214%_))
                        _g117741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g117741_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115017%_)
        (if (symbol? _%stx115017%_)
            (let ()
              (let* ((_%g115019115027%_ (gx#current-expander-marks))
                     (_%else115021115035%_ (lambda () _%stx115017%_))
                     (_%K115023115040%_
                      (lambda (_%hd115038%_)
                        (cons _%stx115017%_ _%hd115038%_))))
                (if (##pair? _%g115019115027%_)
                    (let* ((_%hd115024115043%_ (##car _%g115019115027%_))
                           (_%hd115046%_ _%hd115024115043%_))
                      (_%K115023115040%_ _%hd115046%_))
                    (_%else115021115035%_))))
            (if (gx#identifier? _%stx115017%_)
                (let ()
                  (let* ((_%id115049%_ (gx#syntax-local-unwrap _%stx115017%_))
                         (_%eid115051%_ (gx#stx-e _%id115049%_))
                         (_%marks115053%_
                          (gx#stx-identifier-marks* _%id115049%_)))
                    (let* ((_%marks115055115063%_ _%marks115053%_)
                           (_%else115057115071%_ (lambda () _%eid115051%_))
                           (_%K115059115076%_
                            (lambda (_%hd115074%_)
                              (cons _%eid115051%_ _%hd115074%_))))
                      (if (##pair? _%marks115055115063%_)
                          (let* ((_%hd115060115079%_
                                  (##car _%marks115055115063%_))
                                 (_%hd115082%_ _%hd115060115079%_))
                            (_%K115059115076%_ _%hd115082%_))
                          (_%else115057115071%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx115017%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx114956%_ _%phi114957%_)
        (letrec ((_%make-phi114959%_
                  (lambda (_%super115015%_)
                    (let ((__obj117713
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj117713
                       (##gensym 'phi)
                       _%super115015%_)
                      __obj117713)))
                 (_%make-phi/up114960%_
                  (lambda (_%ctx115010%_ _%super115011%_)
                    (let ((_%ctx+1115013%_
                           (_%make-phi114959%_ _%super115011%_)))
                      (##unchecked-structure-set!
                       _%ctx115010%_
                       _%ctx+1115013%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115013%_
                       _%ctx115010%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115013%_)))
                 (_%make-phi/down114961%_
                  (lambda (_%ctx115005%_ _%super115006%_)
                    (let ((_%ctx-1115008%_
                           (_%make-phi114959%_ _%super115006%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115008%_
                       _%ctx115005%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115005%_
                       _%ctx-1115008%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115008%_)))
                 (_%shift114962%_
                  (lambda (_%ctx114988%_
                           _%delta114989%_
                           _%make-delta-context114990%_
                           _%phi114991%_
                           _%K114992%_)
                    (let ((_%$e114994%_
                           (##unchecked-structure-ref
                            _%ctx114988%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e114994%_
                          ((lambda (_%super114997%_)
                             (let* ((_%super114999%_
                                     (_%K114992%_
                                      _%super114997%_
                                      _%delta114989%_))
                                    (_%ctx+d115001%_
                                     (_%make-delta-context114990%_
                                      _%ctx114988%_
                                      _%super114999%_)))
                               (_%K114992%_
                                _%ctx+d115001%_
                                (fx- _%phi114991%_ _%delta114989%_))))
                           _%$e114994%_)
                          (let () (error '"Bad context" _%ctx114988%_)))))))
          (let _%K114964%_ ((_%ctx114966%_ _%ctx114956%_)
                            (_%phi114967%_ _%phi114957%_))
            (if (fxzero? _%phi114967%_)
                (let () _%ctx114966%_)
                (if (##structure-instance-of? _%ctx114966%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi114967%_)
                          (let ((_%$e114971%_
                                 (##unchecked-structure-ref
                                  _%ctx114966%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e114971%_
                                ((lambda (_%g114973114975%_)
                                   (_%K114964%_
                                    _%g114973114975%_
                                    (##fx- _%phi114967%_ '1)))
                                 _%$e114971%_)
                                (let ()
                                  (_%shift114962%_
                                   _%ctx114966%_
                                   '1
                                   _%make-phi/up114960%_
                                   _%phi114967%_
                                   _%K114964%_))))
                          (let ((_%$e114979%_
                                 (##unchecked-structure-ref
                                  _%ctx114966%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e114979%_
                                ((lambda (_%g114981114983%_)
                                   (_%K114964%_
                                    _%g114981114983%_
                                    (##fx+ _%phi114967%_ '1)))
                                 _%$e114979%_)
                                (let ()
                                  (_%shift114962%_
                                   _%ctx114966%_
                                   '-1
                                   _%make-phi/down114961%_
                                   _%phi114967%_
                                   _%K114964%_))))))
                    (let () _%ctx114966%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx114953%_ _%key114954%_)
        (hash-get
         (##unchecked-structure-ref _%ctx114953%_ '2 '#f '#f)
         _%key114954%_)))
    (define gx#core-context-put!
      (lambda (_%ctx114949%_ _%key114950%_ _%val114951%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx114949%_ '2 '#f '#f)
         _%key114950%_
         _%val114951%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx114935%_ _%key114936%_)
        (let _%lp114938%_ ((_%ctx114940%_ _%ctx114935%_))
          (let ((_%$e114942%_
                 (gx#core-context-get _%ctx114940%_ _%key114936%_)))
            (if _%$e114942%_
                (values _%$e114942%_)
                (let ((_%$e114945%_
                       (if (##structure-instance-of?
                            _%ctx114940%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx114940%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e114945%_
                      (_%lp114938%_ _%$e114945%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx114924%_ _%key114925%_ _%val114926%_ _%rebind114927%_)
        (let ((_%$e114929%_ (gx#core-context-get _%ctx114924%_ _%key114925%_)))
          (if _%$e114929%_
              ((lambda (_%xval114932%_)
                 (gx#core-context-put!
                  _%ctx114924%_
                  _%key114925%_
                  (_%rebind114927%_ _%xval114932%_)))
               _%$e114929%_)
              (let ()
                (gx#core-context-put!
                 _%ctx114924%_
                 _%key114925%_
                 _%val114926%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx114899%_ _%stop?114900%_)
        (let _%lp114902%_ ((_%ctx114904%_ _%ctx114899%_))
          (if (_%stop?114900%_ _%ctx114904%_)
              (let () _%ctx114904%_)
              (if (##structure-instance-of? _%ctx114904%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp114902%_
                     (##unchecked-structure-ref _%ctx114904%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx114913%_ (gx#current-expander-context))
               (_%stop?114915%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114913%_ _%stop?114915%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx114917%_)
        (let ((_%stop?114919%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114917%_ _%stop?114919%_))))
    (define gx#core-context-top
      (lambda _g117743_
        (let ((_g117742_ (##length _g117743_)))
          (cond ((##fx= _g117742_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g117743_))
                ((##fx= _g117742_ 1)
                 (apply (lambda (_%ctx114917%_)
                          (gx#core-context-top__1 _%ctx114917%_))
                        _g117743_))
                ((##fx= _g117742_ 2)
                 (apply (lambda (_%ctx114921%_ _%stop?114922%_)
                          (gx#core-context-top__%
                           _%ctx114921%_
                           _%stop?114922%_))
                        _g117743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g117743_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx114884%_)
        (let _%lp114886%_ ((_%ctx114888%_ _%ctx114884%_))
          (if (##structure-instance-of? _%ctx114888%_ 'gx#phi-context::t)
              (_%lp114886%_
               (##unchecked-structure-ref _%ctx114888%_ '3 '#f '#f))
              _%ctx114888%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx114894%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx114894%_))))
    (define gx#core-context-root
      (lambda _g117745_
        (let ((_g117744_ (##length _g117745_)))
          (cond ((##fx= _g117744_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g117745_))
                ((##fx= _g117744_ 1)
                 (apply (lambda (_%ctx114896%_)
                          (gx#core-context-root__% _%ctx114896%_))
                        _g117745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g117745_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx114866%_ . _%ignore114867%_)
        (let ((_%$e114869%_ (gx#current-expander-allow-rebind?)))
          (if _%$e114869%_
              _%$e114869%_
              (if (##structure-instance-of? _%ctx114866%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx114866%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx114866%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx114876%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx114876%_))))
    (define gx#core-context-rebind?
      (lambda _g117747_
        (let ((_g117746_ (##length _g117747_)))
          (cond ((##fx= _g117746_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g117747_))
                ((##fx= _g117746_ 1)
                 (apply (lambda (_%ctx114878%_)
                          (gx#core-context-rebind?__% _%ctx114878%_))
                        _g117747_))
                ((##fx>= _g117746_ 1)
                 (apply gx#core-context-rebind?__% _g117747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g117747_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx114849%_)
        (let ((_%$e114851%_ (gx#core-context-top__1 _%ctx114849%_)))
          (if _%$e114851%_
              ((lambda (_%ctx114854%_)
                 (if (##structure-instance-of?
                      _%ctx114854%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx114854%_ '6 '#f '#f)
                     '#f))
               _%$e114851%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx114861%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx114861%_))))
    (define gx#core-context-namespace
      (lambda _g117749_
        (let ((_g117748_ (##length _g117749_)))
          (cond ((##fx= _g117748_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g117749_))
                ((##fx= _g117748_ 1)
                 (apply (lambda (_%ctx114863%_)
                          (gx#core-context-namespace__% _%ctx114863%_))
                        _g117749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g117749_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind114835%_ _%is?114836%_)
        (if (##structure-direct-instance-of?
             _%bind114835%_
             'gx#syntax-binding::t)
            (_%is?114836%_
             (##unchecked-structure-ref _%bind114835%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind114841%_)
        (let ((_%is?114843%_ gx#expander?))
          (gx#expander-binding?__% _%bind114841%_ _%is?114843%_))))
    (define gx#expander-binding?
      (lambda _g117751_
        (let ((_g117750_ (##length _g117751_)))
          (cond ((##fx= _g117750_ 1)
                 (apply (lambda (_%bind114841%_)
                          (gx#expander-binding?__0 _%bind114841%_))
                        _g117751_))
                ((##fx= _g117750_ 2)
                 (apply (lambda (_%bind114845%_ _%is?114846%_)
                          (gx#expander-binding?__%
                           _%bind114845%_
                           _%is?114846%_))
                        _g117751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g117751_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind114832%_)
        (gx#expander-binding?__% _%bind114832%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind114830%_)
        (gx#expander-binding?__% _%bind114830%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind114824%_)
        (letrec ((_%direct-special-form?114826%_
                  (lambda (_%obj114828%_)
                    (##structure-direct-instance-of?
                     _%obj114828%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind114824%_
           _%direct-special-form?114826%_))))
    (define gx#special-form-binding?
      (lambda (_%bind114822%_)
        (gx#expander-binding?__% _%bind114822%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind114813%_)
        (letrec ((_%feature?114815%_
                  (lambda (_%e114817%_)
                    (let ((_%$e114819%_
                           (##structure-instance-of?
                            _%e114817%_
                            'gx#feature-expander::t)))
                      (if _%$e114819%_
                          _%$e114819%_
                          (##structure-instance-of?
                           _%e114817%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind114813%_ _%feature?114815%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind114811%_)
        (gx#expander-binding?__% _%bind114811%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id114798%_ _%bound?114799%_)
        (if (gx#identifier? _%id114798%_)
            (_%bound?114799%_ (gx#resolve-identifier__0 _%id114798%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id114804%_)
        (let ((_%bound?114806%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id114804%_ _%bound?114806%_))))
    (define gx#core-bound-identifier?
      (lambda _g117753_
        (let ((_g117752_ (##length _g117753_)))
          (cond ((##fx= _g117752_ 1)
                 (apply (lambda (_%id114804%_)
                          (gx#core-bound-identifier?__0 _%id114804%_))
                        _g117753_))
                ((##fx= _g117752_ 2)
                 (apply (lambda (_%id114808%_ _%bound?114809%_)
                          (gx#core-bound-identifier?__%
                           _%id114808%_
                           _%bound?114809%_))
                        _g117753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g117753_))))))
    (define gx#core-identifier=?
      (lambda (_%x114788%_ _%y114789%_)
        (letrec ((_%y=?114791%_
                  (lambda (_%xid114795%_)
                    ((if (list? _%y114789%_) memq eq?)
                     _%xid114795%_
                     _%y114789%_))))
          (let ((_%bind114793%_ (gx#resolve-identifier__0 _%x114788%_)))
            (if (##structure-instance-of? _%bind114793%_ 'gx#binding::t)
                (_%y=?114791%_
                 (##unchecked-structure-ref _%bind114793%_ '1 '#f '#f))
                (_%y=?114791%_ (gx#stx-e _%x114788%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e114786%_)
        (if (interned-symbol? _%e114786%_)
            (string-index__0 (symbol->string _%e114786%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx114739%_ _%src114740%_ _%ctx114741%_ _%marks114742%_)
        (if (##structure? _%stx114739%_)
            (let ((_%$e114744%_ (gx#sealed-syntax-unwrap _%stx114739%_)))
              (if _%$e114744%_
                  (values _%$e114744%_)
                  (if (gx#identifier? _%stx114739%_)
                      (let ((_%id114748%_
                             (gx#stx-unwrap__% _%stx114739%_ _%marks114742%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id114748%_ '1 '#f '#f)
                         (let ((_%$e114750%_
                                (##unchecked-structure-ref
                                 _%id114748%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e114750%_ _%$e114750%_ _%src114740%_))
                         _%ctx114741%_
                         (##unchecked-structure-ref _%id114748%_ '3 '#f '#f)))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx114739%_)
                         (let ((_%$e114754%_ (gx#stx-source _%stx114739%_)))
                           (if _%$e114754%_ _%$e114754%_ _%src114740%_))
                         _%ctx114741%_
                         (reverse _%marks114742%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx114739%_
             _%src114740%_
             _%ctx114741%_
             (reverse _%marks114742%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx114760%_)
        (let* ((_%src114762%_ '#f)
               (_%ctx114764%_ (gx#current-expander-context))
               (_%marks114766%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114760%_
           _%src114762%_
           _%ctx114764%_
           _%marks114766%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx114768%_ _%src114769%_)
        (let* ((_%ctx114771%_ (gx#current-expander-context))
               (_%marks114773%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114768%_
           _%src114769%_
           _%ctx114771%_
           _%marks114773%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx114775%_ _%src114776%_ _%ctx114777%_)
        (let ((_%marks114779%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114775%_
           _%src114776%_
           _%ctx114777%_
           _%marks114779%_))))
    (define gx#core-quote-syntax
      (lambda _g117755_
        (let ((_g117754_ (##length _g117755_)))
          (cond ((##fx= _g117754_ 1)
                 (apply (lambda (_%stx114760%_)
                          (gx#core-quote-syntax__0 _%stx114760%_))
                        _g117755_))
                ((##fx= _g117754_ 2)
                 (apply (lambda (_%stx114768%_ _%src114769%_)
                          (gx#core-quote-syntax__1
                           _%stx114768%_
                           _%src114769%_))
                        _g117755_))
                ((##fx= _g117754_ 3)
                 (apply (lambda (_%stx114775%_ _%src114776%_ _%ctx114777%_)
                          (gx#core-quote-syntax__2
                           _%stx114775%_
                           _%src114776%_
                           _%ctx114777%_))
                        _g117755_))
                ((##fx= _g117754_ 4)
                 (apply (lambda (_%stx114781%_
                                 _%src114782%_
                                 _%ctx114783%_
                                 _%marks114784%_)
                          (gx#core-quote-syntax__%
                           _%stx114781%_
                           _%src114782%_
                           _%ctx114783%_
                           _%marks114784%_))
                        _g117755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g117755_))))))
    (define gx#core-cons
      (lambda (_%hd114735%_ _%tl114736%_)
        (cons (gx#core-quote-syntax__0 _%hd114735%_) _%tl114736%_)))
    (define gx#core-list
      (lambda (_%hd114732%_ . _%rest114733%_)
        (cons (gx#core-quote-syntax__0 _%hd114732%_) _%rest114733%_)))
    (define gx#core-cons*
      (lambda (_%hd114729%_ . _%rest114730%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd114729%_) _%rest114730%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path114698%_ _%rel114699%_)
        (let ((_%path114716%_ (gx#stx-e _%stx-path114698%_))
              (_%reldir114717%_
               (let _%lp114701%_ ((_%relsrc114703%_
                                   (let ((_%$e114713%_
                                          (gx#stx-source _%stx-path114698%_)))
                                     (if _%$e114713%_
                                         _%$e114713%_
                                         _%rel114699%_))))
                 (if (##structure-instance-of? _%relsrc114703%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp114701%_
                        (let ((_%$e114706%_ (gx#stx-source _%relsrc114703%_)))
                          (if _%$e114706%_
                              _%$e114706%_
                              (gx#stx-e _%relsrc114703%_)))))
                     (if (source-location-path? _%relsrc114703%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc114703%_)))
                         (if (string? _%relsrc114703%_)
                             (let () (path-directory _%relsrc114703%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path114716%_ (path-normalize _%reldir114717%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path114722%_)
        (let ((_%rel114724%_ '#f))
          (gx#core-resolve-path__% _%stx-path114722%_ _%rel114724%_))))
    (define gx#core-resolve-path
      (lambda _g117757_
        (let ((_g117756_ (##length _g117757_)))
          (cond ((##fx= _g117756_ 1)
                 (apply (lambda (_%stx-path114722%_)
                          (gx#core-resolve-path__0 _%stx-path114722%_))
                        _g117757_))
                ((##fx= _g117756_ 2)
                 (apply (lambda (_%stx-path114726%_ _%rel114727%_)
                          (gx#core-resolve-path__%
                           _%stx-path114726%_
                           _%rel114727%_))
                        _g117757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g117757_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr114654%_ _%ctx114655%_)
        (let* ((_%repr114656114663%_ _%repr114654%_)
               (_%E114658114667%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr114656114663%_
                         '([phi . subs]))
                  '#!void))
               (_%K114659114675%_
                (lambda (_%subs114670%_ _%phi114671%_)
                  (let ((_%subst114673%_
                         (if (not (null? _%subs114670%_))
                             (list->hash-table-eq _%subs114670%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst114673%_
                     _%ctx114655%_
                     _%phi114671%_
                     '#f)))))
          (if (##pair? _%repr114656114663%_)
              (let ((_%hd114660114678%_ (##car _%repr114656114663%_))
                    (_%tl114661114680%_ (##cdr _%repr114656114663%_)))
                (let* ((_%phi114683%_ _%hd114660114678%_)
                       (_%subs114685%_ _%tl114661114680%_))
                  (_%K114659114675%_ _%subs114685%_ _%phi114683%_)))
              (_%E114658114667%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr114690%_)
        (let ((_%ctx114692%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr114690%_ _%ctx114692%_))))
    (define gx#core-deserialize-mark
      (lambda _g117759_
        (let ((_g117758_ (##length _g117759_)))
          (cond ((##fx= _g117758_ 1)
                 (apply (lambda (_%repr114690%_)
                          (gx#core-deserialize-mark__0 _%repr114690%_))
                        _g117759_))
                ((##fx= _g117758_ 2)
                 (apply (lambda (_%repr114694%_ _%ctx114695%_)
                          (gx#core-deserialize-mark__%
                           _%repr114694%_
                           _%ctx114695%_))
                        _g117759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g117759_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx114651%_)
        (gx#stx-rewrap _%stx114651%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx114649%_)
        (gx#stx-unwrap__% _%stx114649%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx114619%_)
        (let* ((_%g114620114628%_ (gx#current-expander-marks))
               (_%else114622114636%_ (lambda () _%stx114619%_))
               (_%K114624114641%_
                (lambda (_%hd114639%_)
                  (gx#stx-apply-mark _%stx114619%_ _%hd114639%_))))
          (if (##pair? _%g114620114628%_)
              (let* ((_%hd114625114644%_ (##car _%g114620114628%_))
                     (_%hd114647%_ _%hd114625114644%_))
                (_%K114624114641%_ _%hd114647%_))
              (_%else114622114636%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx114604%_ _%E114605%_)
        (let ((_%bind114607%_ (gx#resolve-identifier__0 _%stx114604%_)))
          (if (##structure-direct-instance-of?
               _%bind114607%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind114607%_ '4 '#f '#f)
              (_%E114605%_ _%stx114604%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx114612%_)
        (let ((_%E114614%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx114612%_ _%E114614%_))))
    (define gx#syntax-local-e
      (lambda _g117761_
        (let ((_g117760_ (##length _g117761_)))
          (cond ((##fx= _g117760_ 1)
                 (apply (lambda (_%stx114612%_)
                          (gx#syntax-local-e__0 _%stx114612%_))
                        _g117761_))
                ((##fx= _g117760_ 2)
                 (apply (lambda (_%stx114616%_ _%E114617%_)
                          (gx#syntax-local-e__% _%stx114616%_ _%E114617%_))
                        _g117761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g117761_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx114588%_ _%E114589%_)
        (let ((_%e114591%_ (gx#syntax-local-e__% _%stx114588%_ _%E114589%_)))
          (if (##structure-instance-of? _%e114591%_ 'gx#expander::t)
              (##structure-ref _%e114591%_ '1 gx#expander::t '#f)
              _%e114591%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx114596%_)
        (let ((_%E114598%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx114596%_ _%E114598%_))))
    (define gx#syntax-local-value
      (lambda _g117763_
        (let ((_g117762_ (##length _g117763_)))
          (cond ((##fx= _g117762_ 1)
                 (apply (lambda (_%stx114596%_)
                          (gx#syntax-local-value__0 _%stx114596%_))
                        _g117763_))
                ((##fx= _g117762_ 2)
                 (apply (lambda (_%stx114600%_ _%E114601%_)
                          (gx#syntax-local-value__% _%stx114600%_ _%E114601%_))
                        _g117763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g117763_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx114585%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx114585%_)))))
