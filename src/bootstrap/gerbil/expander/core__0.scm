(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707830013)
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
    (define gx#current-expander-module-registry (make-parameter '#f))
    (define gx#current-expander-module-library-path (make-parameter '#f))
    (define gx#current-expander-module-library-package-cache
      (make-parameter '#f))
    (define gx#current-expander-allow-rebind? (make-parameter '#f))
    (define gx#current-expander-compiling? (make-parameter '#f))
    (define gx#expander-context::t
      (make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#expander-context? (make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _$args145538_
        (apply make-instance gx#expander-context::t _$args145538_)))
    (define gx#expander-context-id
      (make-class-slot-accessor gx#expander-context::t 'id))
    (define gx#expander-context-table
      (make-class-slot-accessor gx#expander-context::t 'table))
    (define gx#expander-context-id-set!
      (make-class-slot-mutator gx#expander-context::t 'id))
    (define gx#expander-context-table-set!
      (make-class-slot-mutator gx#expander-context::t 'table))
    (define gx#&expander-context-id
      (make-class-slot-unchecked-accessor gx#expander-context::t 'id))
    (define gx#&expander-context-table
      (make-class-slot-unchecked-accessor gx#expander-context::t 'table))
    (define gx#&expander-context-id-set!
      (make-class-slot-unchecked-mutator gx#expander-context::t 'id))
    (define gx#&expander-context-table-set!
      (make-class-slot-unchecked-mutator gx#expander-context::t 'table))
    (define gx#root-context::t
      (make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _$args145535_
        (apply make-instance gx#root-context::t _$args145535_)))
    (define gx#root-context-id
      (make-class-slot-accessor gx#root-context::t 'id))
    (define gx#root-context-table
      (make-class-slot-accessor gx#root-context::t 'table))
    (define gx#root-context-id-set!
      (make-class-slot-mutator gx#root-context::t 'id))
    (define gx#root-context-table-set!
      (make-class-slot-mutator gx#root-context::t 'table))
    (define gx#&root-context-id
      (make-class-slot-unchecked-accessor gx#root-context::t 'id))
    (define gx#&root-context-table
      (make-class-slot-unchecked-accessor gx#root-context::t 'table))
    (define gx#&root-context-id-set!
      (make-class-slot-unchecked-mutator gx#root-context::t 'id))
    (define gx#&root-context-table-set!
      (make-class-slot-unchecked-mutator gx#root-context::t 'table))
    (define gx#phi-context::t
      (make-class-type
       'gx#context-phi::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _$args145532_
        (apply make-instance gx#phi-context::t _$args145532_)))
    (define gx#phi-context-super
      (make-class-slot-accessor gx#phi-context::t 'super))
    (define gx#phi-context-up (make-class-slot-accessor gx#phi-context::t 'up))
    (define gx#phi-context-down
      (make-class-slot-accessor gx#phi-context::t 'down))
    (define gx#phi-context-id (make-class-slot-accessor gx#phi-context::t 'id))
    (define gx#phi-context-table
      (make-class-slot-accessor gx#phi-context::t 'table))
    (define gx#phi-context-super-set!
      (make-class-slot-mutator gx#phi-context::t 'super))
    (define gx#phi-context-up-set!
      (make-class-slot-mutator gx#phi-context::t 'up))
    (define gx#phi-context-down-set!
      (make-class-slot-mutator gx#phi-context::t 'down))
    (define gx#phi-context-id-set!
      (make-class-slot-mutator gx#phi-context::t 'id))
    (define gx#phi-context-table-set!
      (make-class-slot-mutator gx#phi-context::t 'table))
    (define gx#&phi-context-super
      (make-class-slot-unchecked-accessor gx#phi-context::t 'super))
    (define gx#&phi-context-up
      (make-class-slot-unchecked-accessor gx#phi-context::t 'up))
    (define gx#&phi-context-down
      (make-class-slot-unchecked-accessor gx#phi-context::t 'down))
    (define gx#&phi-context-id
      (make-class-slot-unchecked-accessor gx#phi-context::t 'id))
    (define gx#&phi-context-table
      (make-class-slot-unchecked-accessor gx#phi-context::t 'table))
    (define gx#&phi-context-super-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'super))
    (define gx#&phi-context-up-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'up))
    (define gx#&phi-context-down-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'down))
    (define gx#&phi-context-id-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'id))
    (define gx#&phi-context-table-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'table))
    (define gx#top-context::t
      (make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _$args145529_
        (apply make-instance gx#top-context::t _$args145529_)))
    (define gx#top-context-super
      (make-class-slot-accessor gx#top-context::t 'super))
    (define gx#top-context-up (make-class-slot-accessor gx#top-context::t 'up))
    (define gx#top-context-down
      (make-class-slot-accessor gx#top-context::t 'down))
    (define gx#top-context-id (make-class-slot-accessor gx#top-context::t 'id))
    (define gx#top-context-table
      (make-class-slot-accessor gx#top-context::t 'table))
    (define gx#top-context-super-set!
      (make-class-slot-mutator gx#top-context::t 'super))
    (define gx#top-context-up-set!
      (make-class-slot-mutator gx#top-context::t 'up))
    (define gx#top-context-down-set!
      (make-class-slot-mutator gx#top-context::t 'down))
    (define gx#top-context-id-set!
      (make-class-slot-mutator gx#top-context::t 'id))
    (define gx#top-context-table-set!
      (make-class-slot-mutator gx#top-context::t 'table))
    (define gx#&top-context-super
      (make-class-slot-unchecked-accessor gx#top-context::t 'super))
    (define gx#&top-context-up
      (make-class-slot-unchecked-accessor gx#top-context::t 'up))
    (define gx#&top-context-down
      (make-class-slot-unchecked-accessor gx#top-context::t 'down))
    (define gx#&top-context-id
      (make-class-slot-unchecked-accessor gx#top-context::t 'id))
    (define gx#&top-context-table
      (make-class-slot-unchecked-accessor gx#top-context::t 'table))
    (define gx#&top-context-super-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'super))
    (define gx#&top-context-up-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'up))
    (define gx#&top-context-down-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'down))
    (define gx#&top-context-id-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'id))
    (define gx#&top-context-table-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'table))
    (define gx#module-context::t
      (make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _$args145526_
        (apply make-instance gx#module-context::t _$args145526_)))
    (define gx#module-context-ns
      (make-class-slot-accessor gx#module-context::t 'ns))
    (define gx#module-context-path
      (make-class-slot-accessor gx#module-context::t 'path))
    (define gx#module-context-import
      (make-class-slot-accessor gx#module-context::t 'import))
    (define gx#module-context-export
      (make-class-slot-accessor gx#module-context::t 'export))
    (define gx#module-context-e
      (make-class-slot-accessor gx#module-context::t 'e))
    (define gx#module-context-code
      (make-class-slot-accessor gx#module-context::t 'code))
    (define gx#module-context-super
      (make-class-slot-accessor gx#module-context::t 'super))
    (define gx#module-context-up
      (make-class-slot-accessor gx#module-context::t 'up))
    (define gx#module-context-down
      (make-class-slot-accessor gx#module-context::t 'down))
    (define gx#module-context-id
      (make-class-slot-accessor gx#module-context::t 'id))
    (define gx#module-context-table
      (make-class-slot-accessor gx#module-context::t 'table))
    (define gx#module-context-ns-set!
      (make-class-slot-mutator gx#module-context::t 'ns))
    (define gx#module-context-path-set!
      (make-class-slot-mutator gx#module-context::t 'path))
    (define gx#module-context-import-set!
      (make-class-slot-mutator gx#module-context::t 'import))
    (define gx#module-context-export-set!
      (make-class-slot-mutator gx#module-context::t 'export))
    (define gx#module-context-e-set!
      (make-class-slot-mutator gx#module-context::t 'e))
    (define gx#module-context-code-set!
      (make-class-slot-mutator gx#module-context::t 'code))
    (define gx#module-context-super-set!
      (make-class-slot-mutator gx#module-context::t 'super))
    (define gx#module-context-up-set!
      (make-class-slot-mutator gx#module-context::t 'up))
    (define gx#module-context-down-set!
      (make-class-slot-mutator gx#module-context::t 'down))
    (define gx#module-context-id-set!
      (make-class-slot-mutator gx#module-context::t 'id))
    (define gx#module-context-table-set!
      (make-class-slot-mutator gx#module-context::t 'table))
    (define gx#&module-context-ns
      (make-class-slot-unchecked-accessor gx#module-context::t 'ns))
    (define gx#&module-context-path
      (make-class-slot-unchecked-accessor gx#module-context::t 'path))
    (define gx#&module-context-import
      (make-class-slot-unchecked-accessor gx#module-context::t 'import))
    (define gx#&module-context-export
      (make-class-slot-unchecked-accessor gx#module-context::t 'export))
    (define gx#&module-context-e
      (make-class-slot-unchecked-accessor gx#module-context::t 'e))
    (define gx#&module-context-code
      (make-class-slot-unchecked-accessor gx#module-context::t 'code))
    (define gx#&module-context-super
      (make-class-slot-unchecked-accessor gx#module-context::t 'super))
    (define gx#&module-context-up
      (make-class-slot-unchecked-accessor gx#module-context::t 'up))
    (define gx#&module-context-down
      (make-class-slot-unchecked-accessor gx#module-context::t 'down))
    (define gx#&module-context-id
      (make-class-slot-unchecked-accessor gx#module-context::t 'id))
    (define gx#&module-context-table
      (make-class-slot-unchecked-accessor gx#module-context::t 'table))
    (define gx#&module-context-ns-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'ns))
    (define gx#&module-context-path-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'path))
    (define gx#&module-context-import-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'import))
    (define gx#&module-context-export-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'export))
    (define gx#&module-context-e-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'e))
    (define gx#&module-context-code-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'code))
    (define gx#&module-context-super-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'super))
    (define gx#&module-context-up-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'up))
    (define gx#&module-context-down-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'down))
    (define gx#&module-context-id-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'id))
    (define gx#&module-context-table-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'table))
    (define gx#prelude-context::t
      (make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _$args145523_
        (apply make-instance gx#prelude-context::t _$args145523_)))
    (define gx#prelude-context-path
      (make-class-slot-accessor gx#prelude-context::t 'path))
    (define gx#prelude-context-import
      (make-class-slot-accessor gx#prelude-context::t 'import))
    (define gx#prelude-context-e
      (make-class-slot-accessor gx#prelude-context::t 'e))
    (define gx#prelude-context-super
      (make-class-slot-accessor gx#prelude-context::t 'super))
    (define gx#prelude-context-up
      (make-class-slot-accessor gx#prelude-context::t 'up))
    (define gx#prelude-context-down
      (make-class-slot-accessor gx#prelude-context::t 'down))
    (define gx#prelude-context-id
      (make-class-slot-accessor gx#prelude-context::t 'id))
    (define gx#prelude-context-table
      (make-class-slot-accessor gx#prelude-context::t 'table))
    (define gx#prelude-context-path-set!
      (make-class-slot-mutator gx#prelude-context::t 'path))
    (define gx#prelude-context-import-set!
      (make-class-slot-mutator gx#prelude-context::t 'import))
    (define gx#prelude-context-e-set!
      (make-class-slot-mutator gx#prelude-context::t 'e))
    (define gx#prelude-context-super-set!
      (make-class-slot-mutator gx#prelude-context::t 'super))
    (define gx#prelude-context-up-set!
      (make-class-slot-mutator gx#prelude-context::t 'up))
    (define gx#prelude-context-down-set!
      (make-class-slot-mutator gx#prelude-context::t 'down))
    (define gx#prelude-context-id-set!
      (make-class-slot-mutator gx#prelude-context::t 'id))
    (define gx#prelude-context-table-set!
      (make-class-slot-mutator gx#prelude-context::t 'table))
    (define gx#&prelude-context-path
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'path))
    (define gx#&prelude-context-import
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'import))
    (define gx#&prelude-context-e
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'e))
    (define gx#&prelude-context-super
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'super))
    (define gx#&prelude-context-up
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'up))
    (define gx#&prelude-context-down
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'down))
    (define gx#&prelude-context-id
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'id))
    (define gx#&prelude-context-table
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'table))
    (define gx#&prelude-context-path-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'path))
    (define gx#&prelude-context-import-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'import))
    (define gx#&prelude-context-e-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'e))
    (define gx#&prelude-context-super-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'super))
    (define gx#&prelude-context-up-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'up))
    (define gx#&prelude-context-down-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'down))
    (define gx#&prelude-context-id-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'id))
    (define gx#&prelude-context-table-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'table))
    (define gx#local-context::t
      (make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _$args145520_
        (apply make-instance gx#local-context::t _$args145520_)))
    (define gx#local-context-super
      (make-class-slot-accessor gx#local-context::t 'super))
    (define gx#local-context-up
      (make-class-slot-accessor gx#local-context::t 'up))
    (define gx#local-context-down
      (make-class-slot-accessor gx#local-context::t 'down))
    (define gx#local-context-id
      (make-class-slot-accessor gx#local-context::t 'id))
    (define gx#local-context-table
      (make-class-slot-accessor gx#local-context::t 'table))
    (define gx#local-context-super-set!
      (make-class-slot-mutator gx#local-context::t 'super))
    (define gx#local-context-up-set!
      (make-class-slot-mutator gx#local-context::t 'up))
    (define gx#local-context-down-set!
      (make-class-slot-mutator gx#local-context::t 'down))
    (define gx#local-context-id-set!
      (make-class-slot-mutator gx#local-context::t 'id))
    (define gx#local-context-table-set!
      (make-class-slot-mutator gx#local-context::t 'table))
    (define gx#&local-context-super
      (make-class-slot-unchecked-accessor gx#local-context::t 'super))
    (define gx#&local-context-up
      (make-class-slot-unchecked-accessor gx#local-context::t 'up))
    (define gx#&local-context-down
      (make-class-slot-unchecked-accessor gx#local-context::t 'down))
    (define gx#&local-context-id
      (make-class-slot-unchecked-accessor gx#local-context::t 'id))
    (define gx#&local-context-table
      (make-class-slot-unchecked-accessor gx#local-context::t 'table))
    (define gx#&local-context-super-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'super))
    (define gx#&local-context-up-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'up))
    (define gx#&local-context-down-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'down))
    (define gx#&local-context-id-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'id))
    (define gx#&local-context-table-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'table))
    (define gx#phi-context:::init!__%
      (lambda (_self145504_ _id145505_ _super145506_)
        (if (##fx< '3 (##structure-length _self145504_))
            (begin
              (##unchecked-structure-set!
               _self145504_
               _id145505_
               '1
               (##structure-type _self145504_)
               '#f)
              (##unchecked-structure-set!
               _self145504_
               (make-table 'test: eq?)
               '2
               (##structure-type _self145504_)
               '#f)
              (##unchecked-structure-set!
               _self145504_
               _super145506_
               '3
               (##structure-type _self145504_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self145504_
                   '3
                   (##vector-length _self145504_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self145511_ _id145512_)
        (let ((_super145514_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self145511_ _id145512_ _super145514_))))
    (define gx#phi-context:::init!
      (lambda _g150149_
        (let ((_g150148_ (##length _g150149_)))
          (cond ((##fx= _g150148_ 2)
                 (apply (lambda (_self145511_ _id145512_)
                          (gx#phi-context:::init!__0 _self145511_ _id145512_))
                        _g150149_))
                ((##fx= _g150148_ 3)
                 (apply (lambda (_self145516_ _id145517_ _super145518_)
                          (gx#phi-context:::init!__%
                           _self145516_
                           _id145517_
                           _super145518_))
                        _g150149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g150149_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self145368_ _super145369_)
        (if (##fx< '3 (##structure-length _self145368_))
            (begin
              (##unchecked-structure-set!
               _self145368_
               (gensym 'L)
               '1
               (##structure-type _self145368_)
               '#f)
              (##unchecked-structure-set!
               _self145368_
               (make-table 'test: eq?)
               '2
               (##structure-type _self145368_)
               '#f)
              (##unchecked-structure-set!
               _self145368_
               _super145369_
               '3
               (##structure-type _self145368_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self145368_
                   '3
                   (##vector-length _self145368_)))))
    (define gx#local-context:::init!__0
      (lambda (_self145374_)
        (let ((_super145376_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self145374_ _super145376_))))
    (define gx#local-context:::init!
      (lambda _g150151_
        (let ((_g150150_ (##length _g150151_)))
          (cond ((##fx= _g150150_ 1)
                 (apply (lambda (_self145374_)
                          (gx#local-context:::init!__0 _self145374_))
                        _g150151_))
                ((##fx= _g150150_ 2)
                 (apply (lambda (_self145378_ _super145379_)
                          (gx#local-context:::init!__%
                           _self145378_
                           _super145379_))
                        _g150151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g150151_))))))
    (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _$args145242_ (apply make-instance gx#binding::t _$args145242_)))
    (define gx#binding-id (make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-id-set! (make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (make-class-slot-mutator gx#binding::t 'phi))
    (define gx#&binding-id
      (make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-id-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#runtime-binding::t
      (make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _$args145239_
        (apply make-instance gx#runtime-binding::t _$args145239_)))
    (define gx#runtime-binding-id
      (make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-id-set!
      (make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#local-binding::t
      (make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _$args145236_
        (apply make-instance gx#local-binding::t _$args145236_)))
    (define gx#local-binding-id
      (make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-id-set!
      (make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-id
      (make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-id-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#top-binding::t
      (make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _$args145233_
        (apply make-instance gx#top-binding::t _$args145233_)))
    (define gx#top-binding-id (make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-id-set!
      (make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-id
      (make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-id-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#module-binding::t
      (make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _$args145230_
        (apply make-instance gx#module-binding::t _$args145230_)))
    (define gx#module-binding-context
      (make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-id
      (make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-context-set!
      (make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-id-set!
      (make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-context
      (make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-id
      (make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-context-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-id-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#extern-binding::t
      (make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _$args145227_
        (apply make-instance gx#extern-binding::t _$args145227_)))
    (define gx#extern-binding-id
      (make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-id-set!
      (make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#syntax-binding::t
      (make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _$args145224_
        (apply make-instance gx#syntax-binding::t _$args145224_)))
    (define gx#syntax-binding-e
      (make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-e-set!
      (make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#import-binding::t
      (make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _$args145221_
        (apply make-instance gx#import-binding::t _$args145221_)))
    (define gx#import-binding-e
      (make-class-slot-accessor gx#import-binding::t 'e))
    (define gx#import-binding-context
      (make-class-slot-accessor gx#import-binding::t 'context))
    (define gx#import-binding-weak?
      (make-class-slot-accessor gx#import-binding::t 'weak?))
    (define gx#import-binding-id
      (make-class-slot-accessor gx#import-binding::t 'id))
    (define gx#import-binding-key
      (make-class-slot-accessor gx#import-binding::t 'key))
    (define gx#import-binding-phi
      (make-class-slot-accessor gx#import-binding::t 'phi))
    (define gx#import-binding-e-set!
      (make-class-slot-mutator gx#import-binding::t 'e))
    (define gx#import-binding-context-set!
      (make-class-slot-mutator gx#import-binding::t 'context))
    (define gx#import-binding-weak?-set!
      (make-class-slot-mutator gx#import-binding::t 'weak?))
    (define gx#import-binding-id-set!
      (make-class-slot-mutator gx#import-binding::t 'id))
    (define gx#import-binding-key-set!
      (make-class-slot-mutator gx#import-binding::t 'key))
    (define gx#import-binding-phi-set!
      (make-class-slot-mutator gx#import-binding::t 'phi))
    (define gx#&import-binding-e
      (make-class-slot-unchecked-accessor gx#import-binding::t 'e))
    (define gx#&import-binding-context
      (make-class-slot-unchecked-accessor gx#import-binding::t 'context))
    (define gx#&import-binding-weak?
      (make-class-slot-unchecked-accessor gx#import-binding::t 'weak?))
    (define gx#&import-binding-id
      (make-class-slot-unchecked-accessor gx#import-binding::t 'id))
    (define gx#&import-binding-key
      (make-class-slot-unchecked-accessor gx#import-binding::t 'key))
    (define gx#&import-binding-phi
      (make-class-slot-unchecked-accessor gx#import-binding::t 'phi))
    (define gx#&import-binding-e-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'e))
    (define gx#&import-binding-context-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'context))
    (define gx#&import-binding-weak?-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'weak?))
    (define gx#&import-binding-id-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'id))
    (define gx#&import-binding-key-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'key))
    (define gx#&import-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'phi))
    (define gx#alias-binding::t
      (make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _$args145218_
        (apply make-instance gx#alias-binding::t _$args145218_)))
    (define gx#alias-binding-e
      (make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-e-set!
      (make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#expander::t
      (make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _$args145215_
        (apply make-instance gx#expander::t _$args145215_)))
    (define gx#expander-e (make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _$args145212_
        (apply make-instance gx#core-expander::t _$args145212_)))
    (define gx#core-expander-id
      (make-class-slot-accessor gx#core-expander::t 'id))
    (define gx#core-expander-compile-top
      (make-class-slot-accessor gx#core-expander::t 'compile-top))
    (define gx#core-expander-e
      (make-class-slot-accessor gx#core-expander::t 'e))
    (define gx#core-expander-id-set!
      (make-class-slot-mutator gx#core-expander::t 'id))
    (define gx#core-expander-compile-top-set!
      (make-class-slot-mutator gx#core-expander::t 'compile-top))
    (define gx#core-expander-e-set!
      (make-class-slot-mutator gx#core-expander::t 'e))
    (define gx#&core-expander-id
      (make-class-slot-unchecked-accessor gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top
      (make-class-slot-unchecked-accessor gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e
      (make-class-slot-unchecked-accessor gx#core-expander::t 'e))
    (define gx#&core-expander-id-set!
      (make-class-slot-unchecked-mutator gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top-set!
      (make-class-slot-unchecked-mutator gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e-set!
      (make-class-slot-unchecked-mutator gx#core-expander::t 'e))
    (define gx#expression-form::t
      (make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _$args145209_
        (apply make-instance gx#expression-form::t _$args145209_)))
    (define gx#expression-form-id
      (make-class-slot-accessor gx#expression-form::t 'id))
    (define gx#expression-form-compile-top
      (make-class-slot-accessor gx#expression-form::t 'compile-top))
    (define gx#expression-form-e
      (make-class-slot-accessor gx#expression-form::t 'e))
    (define gx#expression-form-id-set!
      (make-class-slot-mutator gx#expression-form::t 'id))
    (define gx#expression-form-compile-top-set!
      (make-class-slot-mutator gx#expression-form::t 'compile-top))
    (define gx#expression-form-e-set!
      (make-class-slot-mutator gx#expression-form::t 'e))
    (define gx#&expression-form-id
      (make-class-slot-unchecked-accessor gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top
      (make-class-slot-unchecked-accessor gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e
      (make-class-slot-unchecked-accessor gx#expression-form::t 'e))
    (define gx#&expression-form-id-set!
      (make-class-slot-unchecked-mutator gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e-set!
      (make-class-slot-unchecked-mutator gx#expression-form::t 'e))
    (define gx#special-form::t
      (make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _$args145206_
        (apply make-instance gx#special-form::t _$args145206_)))
    (define gx#special-form-id
      (make-class-slot-accessor gx#special-form::t 'id))
    (define gx#special-form-compile-top
      (make-class-slot-accessor gx#special-form::t 'compile-top))
    (define gx#special-form-e (make-class-slot-accessor gx#special-form::t 'e))
    (define gx#special-form-id-set!
      (make-class-slot-mutator gx#special-form::t 'id))
    (define gx#special-form-compile-top-set!
      (make-class-slot-mutator gx#special-form::t 'compile-top))
    (define gx#special-form-e-set!
      (make-class-slot-mutator gx#special-form::t 'e))
    (define gx#&special-form-id
      (make-class-slot-unchecked-accessor gx#special-form::t 'id))
    (define gx#&special-form-compile-top
      (make-class-slot-unchecked-accessor gx#special-form::t 'compile-top))
    (define gx#&special-form-e
      (make-class-slot-unchecked-accessor gx#special-form::t 'e))
    (define gx#&special-form-id-set!
      (make-class-slot-unchecked-mutator gx#special-form::t 'id))
    (define gx#&special-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#special-form::t 'compile-top))
    (define gx#&special-form-e-set!
      (make-class-slot-unchecked-mutator gx#special-form::t 'e))
    (define gx#definition-form::t
      (make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _$args145203_
        (apply make-instance gx#definition-form::t _$args145203_)))
    (define gx#definition-form-id
      (make-class-slot-accessor gx#definition-form::t 'id))
    (define gx#definition-form-compile-top
      (make-class-slot-accessor gx#definition-form::t 'compile-top))
    (define gx#definition-form-e
      (make-class-slot-accessor gx#definition-form::t 'e))
    (define gx#definition-form-id-set!
      (make-class-slot-mutator gx#definition-form::t 'id))
    (define gx#definition-form-compile-top-set!
      (make-class-slot-mutator gx#definition-form::t 'compile-top))
    (define gx#definition-form-e-set!
      (make-class-slot-mutator gx#definition-form::t 'e))
    (define gx#&definition-form-id
      (make-class-slot-unchecked-accessor gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top
      (make-class-slot-unchecked-accessor gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e
      (make-class-slot-unchecked-accessor gx#definition-form::t 'e))
    (define gx#&definition-form-id-set!
      (make-class-slot-unchecked-mutator gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e-set!
      (make-class-slot-unchecked-mutator gx#definition-form::t 'e))
    (define gx#top-special-form::t
      (make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form? (make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _$args145200_
        (apply make-instance gx#top-special-form::t _$args145200_)))
    (define gx#top-special-form-id
      (make-class-slot-accessor gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top
      (make-class-slot-accessor gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e
      (make-class-slot-accessor gx#top-special-form::t 'e))
    (define gx#top-special-form-id-set!
      (make-class-slot-mutator gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top-set!
      (make-class-slot-mutator gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e-set!
      (make-class-slot-mutator gx#top-special-form::t 'e))
    (define gx#&top-special-form-id
      (make-class-slot-unchecked-accessor gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top
      (make-class-slot-unchecked-accessor gx#top-special-form::t 'compile-top))
    (define gx#&top-special-form-e
      (make-class-slot-unchecked-accessor gx#top-special-form::t 'e))
    (define gx#&top-special-form-id-set!
      (make-class-slot-unchecked-mutator gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#top-special-form::t 'compile-top))
    (define gx#&top-special-form-e-set!
      (make-class-slot-unchecked-mutator gx#top-special-form::t 'e))
    (define gx#module-special-form::t
      (make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _$args145197_
        (apply make-instance gx#module-special-form::t _$args145197_)))
    (define gx#module-special-form-id
      (make-class-slot-accessor gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top
      (make-class-slot-accessor gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e
      (make-class-slot-accessor gx#module-special-form::t 'e))
    (define gx#module-special-form-id-set!
      (make-class-slot-mutator gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top-set!
      (make-class-slot-mutator gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e-set!
      (make-class-slot-mutator gx#module-special-form::t 'e))
    (define gx#&module-special-form-id
      (make-class-slot-unchecked-accessor gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top
      (make-class-slot-unchecked-accessor
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e
      (make-class-slot-unchecked-accessor gx#module-special-form::t 'e))
    (define gx#&module-special-form-id-set!
      (make-class-slot-unchecked-mutator gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top-set!
      (make-class-slot-unchecked-mutator
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e-set!
      (make-class-slot-unchecked-mutator gx#module-special-form::t 'e))
    (define gx#feature-expander::t
      (make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander? (make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _$args145194_
        (apply make-instance gx#feature-expander::t _$args145194_)))
    (define gx#feature-expander-e
      (make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _$args145191_
        (apply make-instance gx#private-feature-expander::t _$args145191_)))
    (define gx#private-feature-expander-e
      (make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _$args145188_
        (apply make-instance gx#reserved-expander::t _$args145188_)))
    (define gx#reserved-expander-e
      (make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (make-class-type
       'gx#core-macro::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _$args145185_
        (apply make-instance gx#macro-expander::t _$args145185_)))
    (define gx#macro-expander-e
      (make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _$args145182_
        (apply make-instance gx#rename-macro-expander::t _$args145182_)))
    (define gx#rename-macro-expander-e
      (make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (make-class-type
       'gx#macro-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _$args145179_
        (apply make-instance gx#user-expander::t _$args145179_)))
    (define gx#user-expander-context
      (make-class-slot-accessor gx#user-expander::t 'context))
    (define gx#user-expander-phi
      (make-class-slot-accessor gx#user-expander::t 'phi))
    (define gx#user-expander-e
      (make-class-slot-accessor gx#user-expander::t 'e))
    (define gx#user-expander-context-set!
      (make-class-slot-mutator gx#user-expander::t 'context))
    (define gx#user-expander-phi-set!
      (make-class-slot-mutator gx#user-expander::t 'phi))
    (define gx#user-expander-e-set!
      (make-class-slot-mutator gx#user-expander::t 'e))
    (define gx#&user-expander-context
      (make-class-slot-unchecked-accessor gx#user-expander::t 'context))
    (define gx#&user-expander-phi
      (make-class-slot-unchecked-accessor gx#user-expander::t 'phi))
    (define gx#&user-expander-e
      (make-class-slot-unchecked-accessor gx#user-expander::t 'e))
    (define gx#&user-expander-context-set!
      (make-class-slot-unchecked-mutator gx#user-expander::t 'context))
    (define gx#&user-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#user-expander::t 'phi))
    (define gx#&user-expander-e-set!
      (make-class-slot-unchecked-mutator gx#user-expander::t 'e))
    (define gx#expander-mark::t
      (make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _$args145176_
        (apply make-instance gx#expander-mark::t _$args145176_)))
    (define gx#expander-mark-subst
      (make-class-slot-accessor gx#expander-mark::t 'subst))
    (define gx#expander-mark-context
      (make-class-slot-accessor gx#expander-mark::t 'context))
    (define gx#expander-mark-phi
      (make-class-slot-accessor gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace
      (make-class-slot-accessor gx#expander-mark::t 'trace))
    (define gx#expander-mark-subst-set!
      (make-class-slot-mutator gx#expander-mark::t 'subst))
    (define gx#expander-mark-context-set!
      (make-class-slot-mutator gx#expander-mark::t 'context))
    (define gx#expander-mark-phi-set!
      (make-class-slot-mutator gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace-set!
      (make-class-slot-mutator gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'trace))
    (define gx#raise-syntax-error
      (lambda (_ctx145161_ _message145162_ _stx145163_ . _details145164_)
        (let ((_ctx145174_
               (let ((_$e145166_ _ctx145161_))
                 (if _$e145166_
                     _$e145166_
                     (let ((_$e145169_ (gx#core-context-top__0)))
                       (if _$e145169_
                           ((lambda (_ctx145172_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx145172_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e145169_)
                           '#f))))))
          (raise (make-syntax-error
                  _message145162_
                  (cons _stx145163_ _details145164_)
                  _ctx145174_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx145148_ _expression?145149_)
        (gx#eval-syntax* (gx#core-expand__% _stx145148_ _expression?145149_))))
    (define gx#eval-syntax__0
      (lambda (_stx145154_)
        (let ((_expression?145156_ '#f))
          (gx#eval-syntax__% _stx145154_ _expression?145156_))))
    (define gx#eval-syntax
      (lambda _g150153_
        (let ((_g150152_ (##length _g150153_)))
          (cond ((##fx= _g150152_ 1)
                 (apply (lambda (_stx145154_) (gx#eval-syntax__0 _stx145154_))
                        _g150153_))
                ((##fx= _g150152_ 2)
                 (apply (lambda (_stx145158_ _expression?145159_)
                          (gx#eval-syntax__% _stx145158_ _expression?145159_))
                        _g150153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g150153_))))))
    (define gx#eval-syntax*
      (lambda (_stx145145_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx145145_))))
    (define gx#core-expand__%
      (lambda (_stx145132_ _expression?145133_)
        (if _expression?145133_
            (gx#core-expand-expression _stx145132_)
            (gx#core-expand-top _stx145132_))))
    (define gx#core-expand__0
      (lambda (_stx145138_)
        (let ((_expression?145140_ '#f))
          (gx#core-expand__% _stx145138_ _expression?145140_))))
    (define gx#core-expand
      (lambda _g150155_
        (let ((_g150154_ (##length _g150155_)))
          (cond ((##fx= _g150154_ 1)
                 (apply (lambda (_stx145138_) (gx#core-expand__0 _stx145138_))
                        _g150155_))
                ((##fx= _g150154_ 2)
                 (apply (lambda (_stx145142_ _expression?145143_)
                          (gx#core-expand__% _stx145142_ _expression?145143_))
                        _g150155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g150155_))))))
    (define gx#core-expand-top
      (lambda (_stx145099_)
        (let* ((_stx145101_ (gx#core-expand*__0 _stx145099_))
               (_e145102145109_ _stx145101_)
               (_E145104145113_
                (lambda () (gx#core-expand-expression _stx145101_)))
               (_E145103145127_
                (lambda ()
                  (if (gx#stx-pair? _e145102145109_)
                      (let ((_e145105145117_ (gx#syntax-e _e145102145109_)))
                        (let ((_hd145106145120_ (##car _e145105145117_))
                              (_tl145107145122_ (##cdr _e145105145117_)))
                          (let ((_form145125_ _hd145106145120_))
                            (if (gx#core-bound-identifier?__0 _form145125_)
                                _stx145101_
                                (_E145104145113_)))))
                      (_E145104145113_)))))
          (_E145103145127_))))
    (define gx#core-expand-expression
      (lambda (_stx145046_)
        (letrec ((_sealed-expression?145048_
                  (lambda (_hd145069_)
                    (if (gx#sealed-syntax? _hd145069_)
                        (let* ((_e145070145077_ _hd145069_)
                               (_E145072145081_ (lambda () '#f))
                               (_E145071145095_
                                (lambda ()
                                  (if (gx#stx-pair? _e145070145077_)
                                      (let ((_e145073145085_
                                             (gx#syntax-e _e145070145077_)))
                                        (let ((_hd145074145088_
                                               (##car _e145073145085_))
                                              (_tl145075145090_
                                               (##cdr _e145073145085_)))
                                          (let ((_form145093_
                                                 _hd145074145088_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form145093_
                                                 gx#expression-form-binding?)
                                                (_E145072145081_)))))
                                      (_E145072145081_)))))
                          (_E145071145095_))
                        '#f)))
                 (_illegal-expression145049_
                  (lambda (_hd145067_ . _g150156_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx145046_
                     _hd145067_)))
                 (_expand-e145050_
                  (lambda (_form145062_ _hd145063_)
                    (let ((_bind145065_
                           (if (##structure-instance-of?
                                _form145062_
                                'gx#binding::t)
                               _form145062_
                               (gx#resolve-identifier__0 _form145062_))))
                      (if (gx#core-expander-binding? _bind145065_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind145065_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd145063_
                            (gx#stx-source _stx145046_)))
                          (if (##structure-direct-instance-of?
                               _bind145065_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind145065_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd145063_
                                 (gx#stx-source _stx145046_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx145046_
                               _form145062_)))))))
          (let ((_hd145052_ (gx#core-expand-head _stx145046_)))
            (if (_sealed-expression?145048_ _hd145052_)
                _hd145052_
                (if (gx#stx-pair? _hd145052_)
                    (let* ((_form145054_ (gx#stx-car _hd145052_))
                           (_bind145056_
                            (if (gx#identifier? _form145054_)
                                (gx#resolve-identifier__0 _form145054_)
                                '#f)))
                      (if (or (not _bind145056_)
                              (not (gx#core-expander-binding? _bind145056_)))
                          (_expand-e145050_ '%%app (cons '%%app _hd145052_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind145056_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd145052_
                               _illegal-expression145049_)
                              (if (gx#expression-form-binding? _bind145056_)
                                  (_expand-e145050_ _bind145056_ _hd145052_)
                                  (if (gx#direct-special-form-binding?
                                       _bind145056_)
                                      (gx#core-expand-expression
                                       (_expand-e145050_
                                        _bind145056_
                                        _hd145052_))
                                      (_illegal-expression145049_
                                       _hd145052_))))))
                    (if (gx#core-bound-identifier?__0 _hd145052_)
                        (_illegal-expression145049_ _hd145052_)
                        (if (gx#identifier? _hd145052_)
                            (_expand-e145050_
                             '%%ref
                             (cons '%%ref (cons _hd145052_ '())))
                            (if (gx#stx-datum? _hd145052_)
                                (_expand-e145050_
                                 '%#quote
                                 (cons '%#quote (cons _hd145052_ '())))
                                (_illegal-expression145049_
                                 _hd145052_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx145041_)
        (call-with-parameters
         (lambda ()
           (let ((_stx145044_ (gx#core-expand-expression _stx145041_)))
             (values _stx145044_ (gx#eval-syntax* _stx145044_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx145022_ _stop?145023_)
        (let _lp145025_ ((_stx145027_ _stx145022_))
          (if (_stop?145023_ _stx145027_)
              _stx145027_
              (let ((_rstx145029_ (gx#core-expand1 _stx145027_)))
                (if (eq? _stx145027_ _rstx145029_)
                    _stx145027_
                    (_lp145025_ _rstx145029_)))))))
    (define gx#core-expand*__0
      (lambda (_stx145034_)
        (let ((_stop?145036_ false))
          (gx#core-expand*__% _stx145034_ _stop?145036_))))
    (define gx#core-expand*
      (lambda _g150158_
        (let ((_g150157_ (##length _g150158_)))
          (cond ((##fx= _g150157_ 1)
                 (apply (lambda (_stx145034_) (gx#core-expand*__0 _stx145034_))
                        _g150158_))
                ((##fx= _g150157_ 2)
                 (apply (lambda (_stx145038_ _stop?145039_)
                          (gx#core-expand*__% _stx145038_ _stop?145039_))
                        _g150158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g150158_))))))
    (define gx#core-expand1
      (lambda (_stx144978_)
        (letrec ((_step144980_
                  (lambda (_hd145017_)
                    (let ((_bind145019_ (gx#resolve-identifier__0 _hd145017_)))
                      (if (##structure-instance-of?
                           _bind145019_
                           'gx#runtime-binding::t)
                          _stx144978_
                          (if (##structure-direct-instance-of?
                               _bind145019_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind145019_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx144978_)
                              (if (not _bind145019_)
                                  _stx144978_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx144978_))))))))
          (let* ((_e144981144989_ _stx144978_)
                 (_E144987144993_ (lambda () _stx144978_))
                 (_E144983144999_
                  (lambda ()
                    (let ((_hd144997_ _e144981144989_))
                      (if (gx#identifier? _hd144997_)
                          (_step144980_ _hd144997_)
                          (_E144987144993_)))))
                 (_E144982145013_
                  (lambda ()
                    (if (gx#stx-pair? _e144981144989_)
                        (let ((_e144984145003_ (gx#syntax-e _e144981144989_)))
                          (let ((_hd144985145006_ (##car _e144984145003_))
                                (_tl144986145008_ (##cdr _e144984145003_)))
                            (let ((_hd145011_ _hd144985145006_))
                              (if (gx#identifier? _hd145011_)
                                  (_step144980_ _hd145011_)
                                  (_E144983144999_)))))
                        (_E144983144999_)))))
            (_E144982145013_)))))
    (define gx#core-expand-head
      (lambda (_stx144944_)
        (letrec ((_stop?144946_
                  (lambda (_stx144948_)
                    (let* ((_e144949144956_ _stx144948_)
                           (_E144951144960_ (lambda () '#f))
                           (_E144950144974_
                            (lambda ()
                              (if (gx#stx-pair? _e144949144956_)
                                  (let ((_e144952144964_
                                         (gx#syntax-e _e144949144956_)))
                                    (let ((_hd144953144967_
                                           (##car _e144952144964_))
                                          (_tl144954144969_
                                           (##cdr _e144952144964_)))
                                      (let ((_hd144972_ _hd144953144967_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd144972_)
                                            (_E144951144960_)))))
                                  (_E144951144960_)))))
                      (_E144950144974_)))))
          (gx#core-expand*__% _stx144944_ _stop?144946_))))
    (define gx#core-expand-block__%
      (lambda (_stx144750_
               _expand-special144751_
               _begin-form144752_
               _expand-e144753_)
        (letrec ((_expand-splice144755_
                  (lambda (_hd144918_ _body144919_ _rest144920_ _r144921_)
                    (if (gx#stx-list? _body144919_)
                        (_K144759_
                         (gx#stx-foldr cons _rest144920_ _body144919_)
                         _r144921_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx144750_
                         _hd144918_))))
                 (_expand-cond-expand144756_
                  (lambda (_hd144914_ _rest144915_ _r144916_)
                    (_K144759_
                     (cons (gx#core-expand-cond-expand% _hd144914_)
                           _rest144915_)
                     _r144916_)))
                 (_expand-include144757_
                  (lambda (_hd144863_ _rest144864_ _r144865_)
                    (let* ((_e144866144876_ _hd144863_)
                           (_E144868144880_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144866144876_)))
                           (_E144867144910_
                            (lambda ()
                              (if (gx#stx-pair? _e144866144876_)
                                  (let ((_e144869144884_
                                         (gx#syntax-e _e144866144876_)))
                                    (let ((_hd144870144887_
                                           (##car _e144869144884_))
                                          (_tl144871144889_
                                           (##cdr _e144869144884_)))
                                      (if (gx#stx-pair? _tl144871144889_)
                                          (let ((_e144872144892_
                                                 (gx#syntax-e
                                                  _tl144871144889_)))
                                            (let ((_hd144873144895_
                                                   (##car _e144872144892_))
                                                  (_tl144874144897_
                                                   (##cdr _e144872144892_)))
                                              (let ((_path144900_
                                                     _hd144873144895_))
                                                (if (gx#stx-null?
                                                     _tl144874144897_)
                                                    (if (gx#stx-string?
                                                         _path144900_)
                                                        (let* ((_rpath144902_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path144900_
                         (gx#stx-source _hd144863_)))
                       (_block144904_
                        (gx#core-expand-include%__% _hd144863_ _rpath144902_))
                       (_rbody144907_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block144904_
                            _expand-special144751_
                            '#f
                            _expand-e144753_))
                         gx#current-expander-path
                         (cons _rpath144902_ (gx#current-expander-path)))))
                  (_K144759_
                   _rest144864_
                   (foldr1 cons _r144865_ _rbody144907_)))
                (_E144868144880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E144868144880_)))))
                                          (_E144868144880_))))
                                  (_E144868144880_)))))
                      (_E144867144910_))))
                 (_expand-expression144758_
                  (lambda (_hd144859_ _rest144860_ _r144861_)
                    (_K144759_
                     _rest144860_
                     (cons (_expand-e144753_ _hd144859_) _r144861_))))
                 (_K144759_
                  (lambda (_rest144789_ _r144790_)
                    (let* ((_e144791144798_ _rest144789_)
                           (_E144793144802_
                            (lambda ()
                              (if _begin-form144752_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form144752_
                                    (reverse _r144790_))
                                   (gx#stx-source _stx144750_))
                                  _r144790_)))
                           (_E144792144855_
                            (lambda ()
                              (if (gx#stx-pair? _e144791144798_)
                                  (let ((_e144794144806_
                                         (gx#syntax-e _e144791144798_)))
                                    (let ((_hd144795144809_
                                           (##car _e144794144806_))
                                          (_tl144796144811_
                                           (##cdr _e144794144806_)))
                                      (let* ((_hd144814_ _hd144795144809_)
                                             (_rest144816_ _tl144796144811_))
                                        (if '#t
                                            (let* ((_hd144818_
                                                    (gx#core-expand-head
                                                     _hd144814_))
                                                   (_e144819144826_ _hd144818_)
                                                   (_E144821144830_
                                                    (lambda ()
                                                      (_expand-expression144758_
                                                       _hd144818_
                                                       _rest144816_
                                                       _r144790_)))
                                                   (_E144820144851_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e144819144826_)
                                                          (let ((_e144822144834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e144819144826_)))
                    (let ((_hd144823144837_ (##car _e144822144834_))
                          (_tl144824144839_ (##cdr _e144822144834_)))
                      (let* ((_form144842_ _hd144823144837_)
                             (_body144844_ _tl144824144839_))
                        (if '#t
                            (let ((_bind144846_
                                   (if (gx#identifier? _form144842_)
                                       (gx#resolve-identifier__0 _form144842_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind144846_)
                                  (let ((_$e144848_
                                         (##unchecked-structure-ref
                                          _bind144846_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e144848_)
                                        (_expand-splice144755_
                                         _hd144818_
                                         _body144844_
                                         _rest144816_
                                         _r144790_)
                                        (if (eq? '%#cond-expand _$e144848_)
                                            (_expand-cond-expand144756_
                                             _hd144818_
                                             _rest144816_
                                             _r144790_)
                                            (if (eq? '%#include _$e144848_)
                                                (_expand-include144757_
                                                 _hd144818_
                                                 _rest144816_
                                                 _r144790_)
                                                (_expand-special144751_
                                                 _hd144818_
                                                 _K144759_
                                                 _rest144816_
                                                 _r144790_)))))
                                  (_expand-expression144758_
                                   _hd144818_
                                   _rest144816_
                                   _r144790_)))
                            (_E144821144830_)))))
                  (_E144821144830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144820144851_))
                                            (_E144793144802_)))))
                                  (_E144793144802_)))))
                      (_E144792144855_)))))
          (let* ((_e144760144767_ _stx144750_)
                 (_E144762144771_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e144760144767_)))
                 (_E144761144785_
                  (lambda ()
                    (if (gx#stx-pair? _e144760144767_)
                        (let ((_e144763144775_ (gx#syntax-e _e144760144767_)))
                          (let ((_hd144764144778_ (##car _e144763144775_))
                                (_tl144765144780_ (##cdr _e144763144775_)))
                            (let ((_body144783_ _tl144765144780_))
                              (if (gx#stx-list? _body144783_)
                                  (_K144759_ _body144783_ '())
                                  (_E144762144771_)))))
                        (_E144762144771_)))))
            (_E144761144785_)))))
    (define gx#core-expand-block__0
      (lambda (_stx144926_ _expand-special144927_)
        (let* ((_begin-form144929_ '%#begin)
               (_expand-e144931_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144926_
           _expand-special144927_
           _begin-form144929_
           _expand-e144931_))))
    (define gx#core-expand-block__1
      (lambda (_stx144933_ _expand-special144934_ _begin-form144935_)
        (let ((_expand-e144937_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144933_
           _expand-special144934_
           _begin-form144935_
           _expand-e144937_))))
    (define gx#core-expand-block
      (lambda _g150160_
        (let ((_g150159_ (##length _g150160_)))
          (cond ((##fx= _g150159_ 2)
                 (apply (lambda (_stx144926_ _expand-special144927_)
                          (gx#core-expand-block__0
                           _stx144926_
                           _expand-special144927_))
                        _g150160_))
                ((##fx= _g150159_ 3)
                 (apply (lambda (_stx144933_
                                 _expand-special144934_
                                 _begin-form144935_)
                          (gx#core-expand-block__1
                           _stx144933_
                           _expand-special144934_
                           _begin-form144935_))
                        _g150160_))
                ((##fx= _g150159_ 4)
                 (apply (lambda (_stx144939_
                                 _expand-special144940_
                                 _begin-form144941_
                                 _expand-e144942_)
                          (gx#core-expand-block__%
                           _stx144939_
                           _expand-special144940_
                           _begin-form144941_
                           _expand-e144942_))
                        _g150160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g150160_))))))
    (define gx#core-expand-block*
      (lambda (_stx144698_ _expand-special144699_)
        (let* ((_g144700144711_
                (gx#core-expand-block__1
                 _stx144698_
                 _expand-special144699_
                 '#f))
               (_E144704144715_
                (lambda () (error '"No clause matching" _g144700144711_))))
          (let ((_K144709144746_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx144698_)))
                (_K144706144732_ (lambda (_expr144730_) _expr144730_))
                (_K144705144721_
                 (lambda (_body144719_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body144719_))
                    (gx#stx-source _stx144698_)))))
            (let ((_try-match144702144742_
                   (lambda ()
                     (if (##pair? _g144700144711_)
                         (let ((_tl144708144737_ (##cdr _g144700144711_))
                               (_hd144707144735_ (##car _g144700144711_)))
                           (if (##null? _tl144708144737_)
                               (let ((_expr144740_ _hd144707144735_))
                                 (_K144706144732_ _expr144740_))
                               (let ((_body144724_ _g144700144711_))
                                 (_K144705144721_ _body144724_))))
                         (let ((_body144724_ _g144700144711_))
                           (_K144705144721_ _body144724_))))))
              (if (##null? _g144700144711_)
                  (_K144709144746_)
                  (_try-match144702144742_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx144526_)
        (letrec ((_satisfied?144528_
                  (lambda (_condition144626_)
                    (let* ((_e144627144642_ _condition144626_)
                           (_E144637144646_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144627144642_)))
                           (_E144630144665_
                            (lambda ()
                              (if (gx#stx-pair? _e144627144642_)
                                  (let ((_e144638144650_
                                         (gx#syntax-e _e144627144642_)))
                                    (let ((_hd144639144653_
                                           (##car _e144638144650_))
                                          (_tl144640144655_
                                           (##cdr _e144638144650_)))
                                      (let* ((_combinator144658_
                                              _hd144639144653_)
                                             (_body144660_ _tl144640144655_))
                                        (if (gx#stx-list? _body144660_)
                                            (let ((_$e144662_
                                                   (gx#stx-e
                                                    _combinator144658_)))
                                              (if (eq? 'not _$e144662_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?144528_
                                                        _body144660_))
                                                  (if (eq? 'and _$e144662_)
                                                      (gx#stx-andmap
                                                       _satisfied?144528_
                                                       _body144660_)
                                                      (if (eq? 'or _$e144662_)
                                                          (gx#stx-ormap
                                                           _satisfied?144528_
                                                           _body144660_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e144662_)
                      (gx#stx-andmap gx#core-resolve-identifier _body144660_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx144526_
                       _combinator144658_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E144637144646_)))))
                                  (_E144637144646_))))
                           (_E144629144688_
                            (lambda ()
                              (if (gx#stx-pair? _e144627144642_)
                                  (let ((_e144631144669_
                                         (gx#syntax-e _e144627144642_)))
                                    (let ((_hd144632144672_
                                           (##car _e144631144669_))
                                          (_tl144633144674_
                                           (##cdr _e144631144669_)))
                                      (if (and (gx#identifier?
                                                _hd144632144672_)
                                               (gx#core-identifier=?
                                                _hd144632144672_
                                                'unquote))
                                          (if (gx#stx-pair? _tl144633144674_)
                                              (let ((_e144634144677_
                                                     (gx#syntax-e
                                                      _tl144633144674_)))
                                                (let ((_hd144635144680_
                                                       (##car _e144634144677_))
                                                      (_tl144636144682_
                                                       (##cdr _e144634144677_)))
                                                  (let ((_expr144685_
                                                         _hd144635144680_))
                                                    (if (gx#stx-null?
                                                         _tl144636144682_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr144685_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E144630144665_))
                (_E144630144665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144630144665_))
                                          (_E144630144665_))))
                                  (_E144630144665_))))
                           (_E144628144694_
                            (lambda ()
                              (let ((_id144692_ _e144627144642_))
                                (if (gx#identifier? _id144692_)
                                    (gx#core-bound-identifier?__%
                                     _id144692_
                                     gx#feature-binding?)
                                    (_E144629144688_))))))
                      (_E144628144694_))))
                 (_loop144529_
                  (lambda (_rest144559_)
                    (let* ((_e144560144568_ _rest144559_)
                           (_E144566144572_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144560144568_)))
                           (_E144562144576_
                            (lambda ()
                              (if (gx#stx-null? _e144560144568_)
                                  (if '#t '() (_E144566144572_))
                                  (_E144566144572_))))
                           (_E144561144622_
                            (lambda ()
                              (if (gx#stx-pair? _e144560144568_)
                                  (let ((_e144563144580_
                                         (gx#syntax-e _e144560144568_)))
                                    (let ((_hd144564144583_
                                           (##car _e144563144580_))
                                          (_tl144565144585_
                                           (##cdr _e144563144580_)))
                                      (let* ((_hd144588_ _hd144564144583_)
                                             (_rest144590_ _tl144565144585_))
                                        (if '#t
                                            (let* ((_e144591144598_ _hd144588_)
                                                   (_E144593144602_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e144591144598_)))
                                                   (_E144592144618_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e144591144598_)
                                                          (let ((_e144594144606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e144591144598_)))
                    (let ((_hd144595144609_ (##car _e144594144606_))
                          (_tl144596144611_ (##cdr _e144594144606_)))
                      (let* ((_condition144614_ _hd144595144609_)
                             (_body144616_ _tl144596144611_))
                        (if '#t
                            (if (gx#stx-eq? _condition144614_ 'else)
                                (if (gx#stx-null? _rest144590_)
                                    _body144616_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx144526_
                                     _hd144588_))
                                (if (_satisfied?144528_ _condition144614_)
                                    _body144616_
                                    (_loop144529_ _rest144590_)))
                            (_E144593144602_)))))
                  (_E144593144602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144592144618_))
                                            (_E144562144576_)))))
                                  (_E144562144576_)))))
                      (_E144561144622_)))))
          (let* ((_e144530144537_ _stx144526_)
                 (_E144532144541_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e144530144537_)))
                 (_E144531144555_
                  (lambda ()
                    (if (gx#stx-pair? _e144530144537_)
                        (let ((_e144533144545_ (gx#syntax-e _e144530144537_)))
                          (let ((_hd144534144548_ (##car _e144533144545_))
                                (_tl144535144550_ (##cdr _e144533144545_)))
                            (let ((_clauses144553_ _tl144535144550_))
                              (if (gx#stx-list? _clauses144553_)
                                  (gx#core-cons
                                   'begin
                                   (_loop144529_ _clauses144553_))
                                  (_E144532144541_)))))
                        (_E144532144541_)))))
            (_E144531144555_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx144469_ _rpath144470_)
        (let* ((_e144471144481_ _stx144469_)
               (_E144473144485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e144471144481_)))
               (_E144472144512_
                (lambda ()
                  (if (gx#stx-pair? _e144471144481_)
                      (let ((_e144474144489_ (gx#syntax-e _e144471144481_)))
                        (let ((_hd144475144492_ (##car _e144474144489_))
                              (_tl144476144494_ (##cdr _e144474144489_)))
                          (if (gx#stx-pair? _tl144476144494_)
                              (let ((_e144477144497_
                                     (gx#syntax-e _tl144476144494_)))
                                (let ((_hd144478144500_
                                       (##car _e144477144497_))
                                      (_tl144479144502_
                                       (##cdr _e144477144497_)))
                                  (let ((_path144505_ _hd144478144500_))
                                    (if (gx#stx-null? _tl144479144502_)
                                        (if (gx#stx-string? _path144505_)
                                            (let ((_rpath144510_
                                                   (let ((_$e144507_
                                                          _rpath144470_))
                                                     (if _$e144507_
                                                         _$e144507_
                                                         (gx#core-resolve-path__%
                                                          _path144505_
                                                          (gx#stx-source
                                                           _stx144469_))))))
                                              (if (member _rpath144510_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx144469_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath144510_))
                                                    (gx#stx-source
                                                     _stx144469_)))))
                                            (_E144473144485_))
                                        (_E144473144485_)))))
                              (_E144473144485_))))
                      (_E144473144485_)))))
          (_E144472144512_))))
    (define gx#core-expand-include%__0
      (lambda (_stx144519_)
        (let ((_rpath144521_ '#f))
          (gx#core-expand-include%__% _stx144519_ _rpath144521_))))
    (define gx#core-expand-include%
      (lambda _g150162_
        (let ((_g150161_ (##length _g150162_)))
          (cond ((##fx= _g150161_ 1)
                 (apply (lambda (_stx144519_)
                          (gx#core-expand-include%__0 _stx144519_))
                        _g150162_))
                ((##fx= _g150161_ 2)
                 (apply (lambda (_stx144523_ _rpath144524_)
                          (gx#core-expand-include%__%
                           _stx144523_
                           _rpath144524_))
                        _g150162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g150162_))))))
    (define gx#core-apply-expander__%
      (lambda (_K144438_ _stx144439_ _method144440_)
        (if (procedure? _K144438_)
            (let ((_$e144442_ (gx#stx-source _stx144439_)))
              (if _$e144442_
                  ((lambda (_g144444144446_)
                     (gx#stx-wrap-source
                      (_K144438_ _stx144439_)
                      _g144444144446_))
                   _$e144442_)
                  (_K144438_ _stx144439_)))
            (let ((_$e144449_ (bound-method-ref _K144438_ _method144440_)))
              (if _$e144449_
                  ((lambda (_g144451144453_)
                     (gx#core-apply-expander__%
                      _g144451144453_
                      _stx144439_
                      _method144440_))
                   _$e144449_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx144439_
                   _method144440_))))))
    (define gx#core-apply-expander__0
      (lambda (_K144459_ _stx144460_)
        (let ((_method144462_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K144459_ _stx144460_ _method144462_))))
    (define gx#core-apply-expander
      (lambda _g150164_
        (let ((_g150163_ (##length _g150164_)))
          (cond ((##fx= _g150163_ 2)
                 (apply (lambda (_K144459_ _stx144460_)
                          (gx#core-apply-expander__0 _K144459_ _stx144460_))
                        _g150164_))
                ((##fx= _g150163_ 3)
                 (apply (lambda (_K144464_ _stx144465_ _method144466_)
                          (gx#core-apply-expander__%
                           _K144464_
                           _stx144465_
                           _method144466_))
                        _g150164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g150164_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self144434_ _stx144435_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx144435_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self144287_ _stx144288_)
        (let* ((_self144289144295_ _self144287_)
               (_E144291144299_
                (lambda () (error '"No clause matching" _self144289144295_)))
               (_K144292144304_
                (lambda (_K144302_)
                  (gx#core-apply-expander__0 _K144302_ _stx144288_))))
          (if (##structure-instance-of? _self144289144295_ 'gx#core-macro::t)
              (let* ((_e144293144307_
                      (##unchecked-structure-ref
                       _self144289144295_
                       '1
                       gx#expander::t
                       '#f))
                     (_K144310_ _e144293144307_))
                (_K144292144304_ _K144310_))
              (_E144291144299_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self144140_ _stx144141_)
        (if (gx#sealed-syntax? _stx144141_)
            _stx144141_
            (let* ((_self144142144148_ _self144140_)
                   (_E144144144152_
                    (lambda ()
                      (error '"No clause matching" _self144142144148_)))
                   (_K144145144157_
                    (lambda (_K144155_)
                      (gx#core-apply-expander__0 _K144155_ _stx144141_))))
              (if (##structure-instance-of?
                   _self144142144148_
                   'gx#core-expander::t)
                  (let* ((_e144146144160_
                          (##unchecked-structure-ref
                           _self144142144148_
                           '1
                           gx#expander::t
                           '#f))
                         (_K144163_ _e144146144160_))
                    (_K144145144157_ _K144163_))
                  (_E144144144152_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self144002_ _stx144003_ _top?144004_)
        (if (_top?144004_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self144002_ _stx144003_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx144003_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self144009_ _stx144010_)
        (let ((_top?144012_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self144009_
           _stx144010_
           _top?144012_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g150166_
        (let ((_g150165_ (##length _g150166_)))
          (cond ((##fx= _g150165_ 2)
                 (apply (lambda (_self144009_ _stx144010_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self144009_
                           _stx144010_))
                        _g150166_))
                ((##fx= _g150165_ 3)
                 (apply (lambda (_self144014_ _stx144015_ _top?144016_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self144014_
                           _stx144015_
                           _top?144016_))
                        _g150166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g150166_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self143876_ _stx143877_)
        (gx#top-special-form::apply-macro-expander__%
         _self143876_
         _stx143877_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self143701_ _stx143702_)
        (let* ((_self143703143709_ _self143701_)
               (_E143705143713_
                (lambda () (error '"No clause matching" _self143703143709_)))
               (_K143706143746_
                (lambda (_id143716_)
                  (let* ((_e143717143724_ _stx143702_)
                         (_E143719143728_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e143717143724_)))
                         (_E143718143742_
                          (lambda ()
                            (if (gx#stx-pair? _e143717143724_)
                                (let ((_e143720143732_
                                       (gx#syntax-e _e143717143724_)))
                                  (let ((_hd143721143735_
                                         (##car _e143720143732_))
                                        (_tl143722143737_
                                         (##cdr _e143720143732_)))
                                    (let ((_body143740_ _tl143722143737_))
                                      (if '#t
                                          (gx#core-cons
                                           _id143716_
                                           _body143740_)
                                          (_E143719143728_)))))
                                (_E143719143728_)))))
                    (_E143718143742_)))))
          (if (##structure-instance-of?
               _self143703143709_
               'gx#rename-macro-expander::t)
              (let* ((_e143707143749_
                      (##unchecked-structure-ref
                       _self143703143709_
                       '1
                       gx#expander::t
                       '#f))
                     (_id143752_ _e143707143749_))
                (_K143706143746_ _id143752_))
              (_E143705143713_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self143527_ _stx143528_ _method143529_)
        (let* ((_self143530143538_ _self143527_)
               (_E143532143542_
                (lambda () (error '"No clause matching" _self143530143538_)))
               (_K143533143549_
                (lambda (_phi143545_ _ctx143546_ _K143547_)
                  (gx#core-apply-user-macro
                   _K143547_
                   _stx143528_
                   _ctx143546_
                   _phi143545_
                   _method143529_))))
          (if (##structure-instance-of?
               _self143530143538_
               'gx#macro-expander::t)
              (let* ((_e143534143552_
                      (##unchecked-structure-ref
                       _self143530143538_
                       '1
                       gx#expander::t
                       '#f))
                     (_K143555_ _e143534143552_)
                     (_e143535143557_
                      (##unchecked-structure-ref
                       _self143530143538_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx143560_ _e143535143557_)
                     (_e143536143562_
                      (##unchecked-structure-ref
                       _self143530143538_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi143565_ _e143536143562_))
                (_K143533143549_ _phi143565_ _ctx143560_ _K143555_))
              (_E143532143542_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self143570_ _stx143571_)
        (let ((_method143573_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self143570_
           _stx143571_
           _method143573_))))
    (define gx#core-apply-user-expander
      (lambda _g150168_
        (let ((_g150167_ (##length _g150168_)))
          (cond ((##fx= _g150167_ 2)
                 (apply (lambda (_self143570_ _stx143571_)
                          (gx#core-apply-user-expander__0
                           _self143570_
                           _stx143571_))
                        _g150168_))
                ((##fx= _g150167_ 3)
                 (apply (lambda (_self143575_ _stx143576_ _method143577_)
                          (gx#core-apply-user-expander__%
                           _self143575_
                           _stx143576_
                           _method143577_))
                        _g150168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g150168_))))))
    (define gx#core-apply-user-macro
      (lambda (_K143517_ _stx143518_ _ctx143519_ _phi143520_ _method143521_)
        (let ((_mark143523_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx143519_
                _phi143520_
                _stx143518_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K143517_
               (gx#stx-apply-mark _stx143518_ _mark143523_)
               _method143521_)
              _mark143523_))
           gx#current-expander-marks
           (cons _mark143523_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx143369_ _phi143370_ _ctx143371_)
        (let _lp143373_ ((_bind143375_
                          (gx#core-resolve-identifier__%
                           _stx143369_
                           _phi143370_
                           _ctx143371_)))
          (if (##structure-direct-instance-of?
               _bind143375_
               'gx#import-binding::t)
              (_lp143373_
               (##unchecked-structure-ref
                _bind143375_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind143375_
                   'gx#alias-binding::t)
                  (_lp143373_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind143375_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi143370_
                    _ctx143371_))
                  _bind143375_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx143380_)
        (let* ((_phi143382_ (gx#current-expander-phi))
               (_ctx143384_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx143380_ _phi143382_ _ctx143384_))))
    (define gx#resolve-identifier__1
      (lambda (_stx143386_ _phi143387_)
        (let ((_ctx143389_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx143386_ _phi143387_ _ctx143389_))))
    (define gx#resolve-identifier
      (lambda _g150170_
        (let ((_g150169_ (##length _g150170_)))
          (cond ((##fx= _g150169_ 1)
                 (apply (lambda (_stx143380_)
                          (gx#resolve-identifier__0 _stx143380_))
                        _g150170_))
                ((##fx= _g150169_ 2)
                 (apply (lambda (_stx143386_ _phi143387_)
                          (gx#resolve-identifier__1 _stx143386_ _phi143387_))
                        _g150170_))
                ((##fx= _g150169_ 3)
                 (apply (lambda (_stx143391_ _phi143392_ _ctx143393_)
                          (gx#resolve-identifier__%
                           _stx143391_
                           _phi143392_
                           _ctx143393_))
                        _g150170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g150170_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx143327_ _val143328_ _rebind?143329_ _phi143330_ _ctx143331_)
        (let ((_rebind?143333_
               (if (not _rebind?143329_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?143329_) _rebind?143329_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx143327_)
           _val143328_
           _rebind?143333_
           _phi143330_
           _ctx143331_))))
    (define gx#bind-identifier!__0
      (lambda (_stx143338_ _val143339_)
        (let* ((_rebind?143341_ '#f)
               (_phi143343_ (gx#current-expander-phi))
               (_ctx143345_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx143338_
           _val143339_
           _rebind?143341_
           _phi143343_
           _ctx143345_))))
    (define gx#bind-identifier!__1
      (lambda (_stx143347_ _val143348_ _rebind?143349_)
        (let* ((_phi143351_ (gx#current-expander-phi))
               (_ctx143353_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx143347_
           _val143348_
           _rebind?143349_
           _phi143351_
           _ctx143353_))))
    (define gx#bind-identifier!__2
      (lambda (_stx143355_ _val143356_ _rebind?143357_ _phi143358_)
        (let ((_ctx143360_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx143355_
           _val143356_
           _rebind?143357_
           _phi143358_
           _ctx143360_))))
    (define gx#bind-identifier!
      (lambda _g150172_
        (let ((_g150171_ (##length _g150172_)))
          (cond ((##fx= _g150171_ 2)
                 (apply (lambda (_stx143338_ _val143339_)
                          (gx#bind-identifier!__0 _stx143338_ _val143339_))
                        _g150172_))
                ((##fx= _g150171_ 3)
                 (apply (lambda (_stx143347_ _val143348_ _rebind?143349_)
                          (gx#bind-identifier!__1
                           _stx143347_
                           _val143348_
                           _rebind?143349_))
                        _g150172_))
                ((##fx= _g150171_ 4)
                 (apply (lambda (_stx143355_
                                 _val143356_
                                 _rebind?143357_
                                 _phi143358_)
                          (gx#bind-identifier!__2
                           _stx143355_
                           _val143356_
                           _rebind?143357_
                           _phi143358_))
                        _g150172_))
                ((##fx= _g150171_ 5)
                 (apply (lambda (_stx143362_
                                 _val143363_
                                 _rebind?143364_
                                 _phi143365_
                                 _ctx143366_)
                          (gx#bind-identifier!__%
                           _stx143362_
                           _val143363_
                           _rebind?143364_
                           _phi143365_
                           _ctx143366_))
                        _g150172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g150172_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx143299_ _phi143300_ _ctx143301_)
        (let _lp143303_ ((_e143305_ _stx143299_)
                         (_marks143306_ (gx#current-expander-marks)))
          (if (symbol? _e143305_)
              (gx#core-resolve-binding
               _e143305_
               _phi143300_
               _phi143300_
               _ctx143301_
               (reverse _marks143306_))
              (if (gx#identifier-quote? _e143305_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e143305_ '1 gx#AST::t '#f)
                   _phi143300_
                   '0
                   (##unchecked-structure-ref
                    _e143305_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e143305_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e143305_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e143305_ '1 gx#AST::t '#f)
                       _phi143300_
                       _phi143300_
                       _ctx143301_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e143305_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks143306_))
                      (if (##structure-direct-instance-of?
                           _e143305_
                           'gx#syntax-wrap::t)
                          (_lp143303_
                           (##unchecked-structure-ref
                            _e143305_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e143305_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks143306_))
                          (if (##structure-instance-of?
                               _e143305_
                               'gerbil#AST::t)
                              (_lp143303_
                               (##unchecked-structure-ref
                                _e143305_
                                '1
                                gx#AST::t
                                '#f)
                               _marks143306_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx143299_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx143311_)
        (let* ((_phi143313_ (gx#current-expander-phi))
               (_ctx143315_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx143311_
           _phi143313_
           _ctx143315_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx143317_ _phi143318_)
        (let ((_ctx143320_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx143317_
           _phi143318_
           _ctx143320_))))
    (define gx#core-resolve-identifier
      (lambda _g150174_
        (let ((_g150173_ (##length _g150174_)))
          (cond ((##fx= _g150173_ 1)
                 (apply (lambda (_stx143311_)
                          (gx#core-resolve-identifier__0 _stx143311_))
                        _g150174_))
                ((##fx= _g150173_ 2)
                 (apply (lambda (_stx143317_ _phi143318_)
                          (gx#core-resolve-identifier__1
                           _stx143317_
                           _phi143318_))
                        _g150174_))
                ((##fx= _g150173_ 3)
                 (apply (lambda (_stx143322_ _phi143323_ _ctx143324_)
                          (gx#core-resolve-identifier__%
                           _stx143322_
                           _phi143323_
                           _ctx143324_))
                        _g150174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g150174_))))))
    (define gx#core-resolve-binding
      (lambda (_id143212_
               _phi143213_
               _src-phi143214_
               _ctx143215_
               _marks143216_)
        (letrec ((_resolve143218_
                  (lambda (_ctx143286_ _src-phi143287_ _key143288_)
                    (let _lp143290_ ((_ctx143292_
                                      (gx#core-context-shift
                                       _ctx143286_
                                       _phi143213_))
                                     (_dphi143293_
                                      (fx- _phi143213_ _src-phi143287_)))
                      (let ((_$e143295_
                             (gx#core-context-resolve
                              _ctx143292_
                              _key143288_)))
                        (if _$e143295_
                            (values _$e143295_)
                            (if (fxzero? _dphi143293_)
                                '#f
                                (if (fxpositive? _dphi143293_)
                                    (_lp143290_
                                     (gx#core-context-shift _ctx143292_ '-1)
                                     (fx- _dphi143293_ '1))
                                    (_lp143290_
                                     (gx#core-context-shift _ctx143292_ '1)
                                     (fx+ _dphi143293_ '1))))))))))
          (let _lp143220_ ((_ctx143222_ _ctx143215_)
                           (_src-phi143223_ _src-phi143214_)
                           (_rest143224_ _marks143216_))
            (let* ((_rest143225143233_ _rest143224_)
                   (_else143227143241_
                    (lambda ()
                      (_resolve143218_
                       _ctx143222_
                       _src-phi143223_
                       _id143212_)))
                   (_K143229143274_
                    (lambda (_rest143244_ _hd143245_)
                      (let* ((_hd143246143252_ _hd143245_)
                             (_E143248143256_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd143246143252_)))
                             (_K143249143266_
                              (lambda (_subst143259_)
                                (let ((_$e143263_
                                       (let ((_key143261_
                                              (if _subst143259_
                                                  (table-ref
                                                   _subst143259_
                                                   _id143212_
                                                   '#f)
                                                  '#f)))
                                         (if _key143261_
                                             (_resolve143218_
                                              _ctx143222_
                                              _src-phi143223_
                                              _key143261_)
                                             '#f))))
                                  (if _$e143263_
                                      _$e143263_
                                      (_lp143220_
                                       (##unchecked-structure-ref
                                        _hd143245_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd143245_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest143244_))))))
                        (if (##structure-instance-of?
                             _hd143246143252_
                             'gx#expander-mark::t)
                            (let* ((_e143250143269_
                                    (##unchecked-structure-ref
                                     _hd143246143252_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst143272_ _e143250143269_))
                              (_K143249143266_ _subst143272_))
                            (_E143248143256_))))))
              (if (##pair? _rest143225143233_)
                  (let ((_hd143230143277_ (##car _rest143225143233_))
                        (_tl143231143279_ (##cdr _rest143225143233_)))
                    (let* ((_hd143282_ _hd143230143277_)
                           (_rest143284_ _tl143231143279_))
                      (_K143229143274_ _rest143284_ _hd143282_)))
                  (_else143227143241_)))))))
    (define gx#core-bind!__%
      (lambda (_key143088_ _val143089_ _rebind?143090_ _phi143091_ _ctx143092_)
        (letrec ((_update-binding143094_
                  (lambda (_xval143165_)
                    (if (or (_rebind?143090_
                             _ctx143092_
                             _xval143165_
                             _val143089_)
                            (and (##structure-direct-instance-of?
                                  _xval143165_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval143165_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val143089_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val143089_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval143165_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val143089_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val143089_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval143165_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val143089_
                        (if (and (##structure-direct-instance-of?
                                  _val143089_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val143089_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval143165_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val143089_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval143165_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval143165_
                            (if (and (##structure-direct-instance-of?
                                      _val143089_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval143165_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key143088_
                                 (cons (##unchecked-structure-ref
                                        _val143089_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val143089_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval143165_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval143165_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval143165_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval143165_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key143088_
                                 _val143089_
                                 _xval143165_))))))
                 (_gensubst143095_
                  (lambda (_subst143160_ _id143161_)
                    (let ((_eid143163_
                           (gensym (if (uninterned-symbol? _id143161_)
                                       '%
                                       _id143161_))))
                      (table-set! _subst143160_ _id143161_ _eid143163_)
                      _eid143163_)))
                 (_subst!143096_
                  (lambda (_key143098_)
                    (let* ((_key143099143107_ _key143098_)
                           (_else143101143115_ (lambda () _key143098_))
                           (_K143103143148_
                            (lambda (_mark143118_ _id143119_)
                              (let* ((_mark143120143126_ _mark143118_)
                                     (_E143122143130_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark143120143126_)))
                                     (_K143123143140_
                                      (lambda (_subst143133_)
                                        (if (not _subst143133_)
                                            (let ((_subst143135_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark143118_
                                               _subst143135_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst143095_
                                               _subst143135_
                                               _id143119_))
                                            (let ((_$e143137_
                                                   (table-ref
                                                    _subst143133_
                                                    _id143119_
                                                    '#f)))
                                              (if _$e143137_
                                                  (values _$e143137_)
                                                  (_gensubst143095_
                                                   _subst143133_
                                                   _id143119_)))))))
                                (if (##structure-instance-of?
                                     _mark143120143126_
                                     'gx#expander-mark::t)
                                    (let* ((_e143124143143_
                                            (##unchecked-structure-ref
                                             _mark143120143126_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst143146_ _e143124143143_))
                                      (_K143123143140_ _subst143146_))
                                    (_E143122143130_))))))
                      (if (##pair? _key143099143107_)
                          (let ((_hd143104143151_ (##car _key143099143107_))
                                (_tl143105143153_ (##cdr _key143099143107_)))
                            (let* ((_id143156_ _hd143104143151_)
                                   (_mark143158_ _tl143105143153_))
                              (_K143103143148_ _mark143158_ _id143156_)))
                          (_else143101143115_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx143092_ _phi143091_)
           (_subst!143096_ _key143088_)
           _val143089_
           _update-binding143094_))))
    (define gx#core-bind!__0
      (lambda (_key143182_ _val143183_)
        (let* ((_rebind?143185_ false)
               (_phi143187_ (gx#current-expander-phi))
               (_ctx143189_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143182_
           _val143183_
           _rebind?143185_
           _phi143187_
           _ctx143189_))))
    (define gx#core-bind!__1
      (lambda (_key143191_ _val143192_ _rebind?143193_)
        (let* ((_phi143195_ (gx#current-expander-phi))
               (_ctx143197_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143191_
           _val143192_
           _rebind?143193_
           _phi143195_
           _ctx143197_))))
    (define gx#core-bind!__2
      (lambda (_key143199_ _val143200_ _rebind?143201_ _phi143202_)
        (let ((_ctx143204_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143199_
           _val143200_
           _rebind?143201_
           _phi143202_
           _ctx143204_))))
    (define gx#core-bind!
      (lambda _g150176_
        (let ((_g150175_ (##length _g150176_)))
          (cond ((##fx= _g150175_ 2)
                 (apply (lambda (_key143182_ _val143183_)
                          (gx#core-bind!__0 _key143182_ _val143183_))
                        _g150176_))
                ((##fx= _g150175_ 3)
                 (apply (lambda (_key143191_ _val143192_ _rebind?143193_)
                          (gx#core-bind!__1
                           _key143191_
                           _val143192_
                           _rebind?143193_))
                        _g150176_))
                ((##fx= _g150175_ 4)
                 (apply (lambda (_key143199_
                                 _val143200_
                                 _rebind?143201_
                                 _phi143202_)
                          (gx#core-bind!__2
                           _key143199_
                           _val143200_
                           _rebind?143201_
                           _phi143202_))
                        _g150176_))
                ((##fx= _g150175_ 5)
                 (apply (lambda (_key143206_
                                 _val143207_
                                 _rebind?143208_
                                 _phi143209_
                                 _ctx143210_)
                          (gx#core-bind!__%
                           _key143206_
                           _val143207_
                           _rebind?143208_
                           _phi143209_
                           _ctx143210_))
                        _g150176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g150176_))))))
    (define gx#core-identifier-key
      (lambda (_stx143022_)
        (if (symbol? _stx143022_)
            (let* ((_g143023143031_ (gx#current-expander-marks))
                   (_else143025143039_ (lambda () _stx143022_))
                   (_K143027143044_
                    (lambda (_hd143042_) (cons _stx143022_ _hd143042_))))
              (if (##pair? _g143023143031_)
                  (let* ((_hd143028143047_ (##car _g143023143031_))
                         (_hd143050_ _hd143028143047_))
                    (_K143027143044_ _hd143050_))
                  (_else143025143039_)))
            (if (gx#identifier? _stx143022_)
                (let* ((_id143052_ (gx#syntax-local-unwrap _stx143022_))
                       (_eid143054_ (gx#stx-e _id143052_))
                       (_marks143056_ (gx#stx-identifier-marks* _id143052_)))
                  (let* ((_marks143058143066_ _marks143056_)
                         (_else143060143074_ (lambda () _eid143054_))
                         (_K143062143079_
                          (lambda (_hd143077_) (cons _eid143054_ _hd143077_))))
                    (if (##pair? _marks143058143066_)
                        (let* ((_hd143063143082_ (##car _marks143058143066_))
                               (_hd143085_ _hd143063143082_))
                          (_K143062143079_ _hd143085_))
                        (_else143060143074_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx143022_)))))
    (define gx#core-context-shift
      (lambda (_ctx142967_ _phi142968_)
        (letrec ((_make-phi142970_
                  (lambda (_super143020_)
                    (let ((__obj150147
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj150147
                       (gensym 'phi)
                       _super143020_)
                      __obj150147)))
                 (_make-phi/up142971_
                  (lambda (_ctx143015_ _super143016_)
                    (let ((_ctx+1143018_ (_make-phi142970_ _super143016_)))
                      (##unchecked-structure-set!
                       _ctx143015_
                       _ctx+1143018_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1143018_
                       _ctx143015_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1143018_)))
                 (_make-phi/down142972_
                  (lambda (_ctx143010_ _super143011_)
                    (let ((_ctx-1143013_ (_make-phi142970_ _super143011_)))
                      (##unchecked-structure-set!
                       _ctx-1143013_
                       _ctx143010_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx143010_
                       _ctx-1143013_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1143013_)))
                 (_shift142973_
                  (lambda (_ctx142994_
                           _delta142995_
                           _make-delta-context142996_
                           _phi142997_
                           _K142998_)
                    (let ((_$e143000_
                           (##unchecked-structure-ref
                            _ctx142994_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e143000_
                          ((lambda (_super143003_)
                             (let* ((_super143005_
                                     (_K142998_ _super143003_ _delta142995_))
                                    (_ctx+d143007_
                                     (_make-delta-context142996_
                                      _ctx142994_
                                      _super143005_)))
                               (_K142998_
                                _ctx+d143007_
                                (fx- _phi142997_ _delta142995_))))
                           _$e143000_)
                          (error '"Bad context" _ctx142994_))))))
          (let _K142975_ ((_ctx142977_ _ctx142967_) (_phi142978_ _phi142968_))
            (if (fxzero? _phi142978_)
                _ctx142977_
                (if (fx> (##vector-length _ctx142977_) '3)
                    (if (fxpositive? _phi142978_)
                        (let ((_$e142980_
                               (##unchecked-structure-ref
                                _ctx142977_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e142980_
                              ((lambda (_g142982142984_)
                                 (_K142975_
                                  _g142982142984_
                                  (fx- _phi142978_ '1)))
                               _$e142980_)
                              (_shift142973_
                               _ctx142977_
                               '1
                               _make-phi/up142971_
                               _phi142978_
                               _K142975_)))
                        (let ((_$e142987_
                               (##unchecked-structure-ref
                                _ctx142977_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e142987_
                              ((lambda (_g142989142991_)
                                 (_K142975_
                                  _g142989142991_
                                  (fx+ _phi142978_ '1)))
                               _$e142987_)
                              (_shift142973_
                               _ctx142977_
                               '-1
                               _make-phi/down142972_
                               _phi142978_
                               _K142975_))))
                    _ctx142977_))))))
    (define gx#core-context-get
      (lambda (_ctx142964_ _key142965_)
        (table-ref
         (##unchecked-structure-ref _ctx142964_ '2 gx#expander-context::t '#f)
         _key142965_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx142960_ _key142961_ _val142962_)
        (table-set!
         (##unchecked-structure-ref _ctx142960_ '2 gx#expander-context::t '#f)
         _key142961_
         _val142962_)))
    (define gx#core-context-resolve
      (lambda (_ctx142947_ _key142948_)
        (let _lp142950_ ((_ctx142952_ _ctx142947_))
          (let ((_$e142954_ (gx#core-context-get _ctx142952_ _key142948_)))
            (if _$e142954_
                (values _$e142954_)
                (let ((_$e142957_
                       (if (fx> (##vector-length _ctx142952_) '3)
                           (##unchecked-structure-ref
                            _ctx142952_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e142957_ (_lp142950_ _$e142957_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx142937_ _key142938_ _val142939_ _rebind142940_)
        (let ((_$e142942_ (gx#core-context-get _ctx142937_ _key142938_)))
          (if _$e142942_
              ((lambda (_xval142945_)
                 (gx#core-context-put!
                  _ctx142937_
                  _key142938_
                  (_rebind142940_ _xval142945_)))
               _$e142942_)
              (gx#core-context-put! _ctx142937_ _key142938_ _val142939_)))))
    (define gx#core-context-top__%
      (lambda (_ctx142915_ _stop?142916_)
        (let _lp142918_ ((_ctx142920_ _ctx142915_))
          (if (_stop?142916_ _ctx142920_)
              _ctx142920_
              (if (##structure-instance-of? _ctx142920_ 'gx#context-phi::t)
                  (_lp142918_
                   (##unchecked-structure-ref
                    _ctx142920_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx142926_ (gx#current-expander-context))
               (_stop?142928_ gx#top-context?))
          (gx#core-context-top__% _ctx142926_ _stop?142928_))))
    (define gx#core-context-top__1
      (lambda (_ctx142930_)
        (let ((_stop?142932_ gx#top-context?))
          (gx#core-context-top__% _ctx142930_ _stop?142932_))))
    (define gx#core-context-top
      (lambda _g150178_
        (let ((_g150177_ (##length _g150178_)))
          (cond ((##fx= _g150177_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g150178_))
                ((##fx= _g150177_ 1)
                 (apply (lambda (_ctx142930_)
                          (gx#core-context-top__1 _ctx142930_))
                        _g150178_))
                ((##fx= _g150177_ 2)
                 (apply (lambda (_ctx142934_ _stop?142935_)
                          (gx#core-context-top__% _ctx142934_ _stop?142935_))
                        _g150178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g150178_))))))
    (define gx#core-context-root__%
      (lambda (_ctx142900_)
        (let _lp142902_ ((_ctx142904_ _ctx142900_))
          (if (##structure-instance-of? _ctx142904_ 'gx#context-phi::t)
              (_lp142902_
               (##unchecked-structure-ref
                _ctx142904_
                '3
                gx#phi-context::t
                '#f))
              _ctx142904_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx142910_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx142910_))))
    (define gx#core-context-root
      (lambda _g150180_
        (let ((_g150179_ (##length _g150180_)))
          (cond ((##fx= _g150179_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g150180_))
                ((##fx= _g150179_ 1)
                 (apply (lambda (_ctx142912_)
                          (gx#core-context-root__% _ctx142912_))
                        _g150180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g150180_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx142881_ . __142878142882_)
        (let ((_$e142885_ (gx#current-expander-allow-rebind?)))
          (if _$e142885_
              _$e142885_
              (if (##structure-instance-of? _ctx142881_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx142881_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx142881_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx142892_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx142892_))))
    (define gx#core-context-rebind?
      (lambda _g150182_
        (let ((_g150181_ (##length _g150182_)))
          (cond ((##fx= _g150181_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g150182_))
                ((##fx= _g150181_ 1)
                 (apply (lambda (_ctx142894_)
                          (gx#core-context-rebind?__% _ctx142894_))
                        _g150182_))
                ((##fx>= _g150181_ 1)
                 (apply gx#core-context-rebind?__% _g150182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g150182_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx142864_)
        (let ((_$e142866_ (gx#core-context-top__1 _ctx142864_)))
          (if _$e142866_
              ((lambda (_ctx142869_)
                 (if (##structure-instance-of?
                      _ctx142869_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx142869_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e142866_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx142875_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx142875_))))
    (define gx#core-context-namespace
      (lambda _g150184_
        (let ((_g150183_ (##length _g150184_)))
          (cond ((##fx= _g150183_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g150184_))
                ((##fx= _g150183_ 1)
                 (apply (lambda (_ctx142877_)
                          (gx#core-context-namespace__% _ctx142877_))
                        _g150184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g150184_))))))
    (define gx#expander-binding?__%
      (lambda (_bind142850_ _is?142851_)
        (if (##structure-direct-instance-of?
             _bind142850_
             'gx#syntax-binding::t)
            (_is?142851_
             (##unchecked-structure-ref
              _bind142850_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind142856_)
        (let ((_is?142858_ gx#expander?))
          (gx#expander-binding?__% _bind142856_ _is?142858_))))
    (define gx#expander-binding?
      (lambda _g150186_
        (let ((_g150185_ (##length _g150186_)))
          (cond ((##fx= _g150185_ 1)
                 (apply (lambda (_bind142856_)
                          (gx#expander-binding?__0 _bind142856_))
                        _g150186_))
                ((##fx= _g150185_ 2)
                 (apply (lambda (_bind142860_ _is?142861_)
                          (gx#expander-binding?__% _bind142860_ _is?142861_))
                        _g150186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g150186_))))))
    (define gx#core-expander-binding?
      (lambda (_bind142847_)
        (gx#expander-binding?__% _bind142847_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind142845_)
        (gx#expander-binding?__% _bind142845_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind142839_)
        (letrec ((_direct-special-form?142841_
                  (lambda (_obj142843_)
                    (##structure-direct-instance-of?
                     _obj142843_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind142839_
           _direct-special-form?142841_))))
    (define gx#special-form-binding?
      (lambda (_bind142837_)
        (gx#expander-binding?__% _bind142837_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind142828_)
        (letrec ((_feature?142830_
                  (lambda (_e142832_)
                    (let ((_$e142834_
                           (##structure-instance-of?
                            _e142832_
                            'gx#feature-expander::t)))
                      (if _$e142834_
                          _$e142834_
                          (##structure-instance-of?
                           _e142832_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind142828_ _feature?142830_))))
    (define gx#private-feature-binding?
      (lambda (_bind142826_)
        (gx#expander-binding?__% _bind142826_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id142813_ _bound?142814_)
        (if (gx#identifier? _id142813_)
            (_bound?142814_ (gx#resolve-identifier__0 _id142813_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id142819_)
        (let ((_bound?142821_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id142819_ _bound?142821_))))
    (define gx#core-bound-identifier?
      (lambda _g150188_
        (let ((_g150187_ (##length _g150188_)))
          (cond ((##fx= _g150187_ 1)
                 (apply (lambda (_id142819_)
                          (gx#core-bound-identifier?__0 _id142819_))
                        _g150188_))
                ((##fx= _g150187_ 2)
                 (apply (lambda (_id142823_ _bound?142824_)
                          (gx#core-bound-identifier?__%
                           _id142823_
                           _bound?142824_))
                        _g150188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g150188_))))))
    (define gx#core-identifier=?
      (lambda (_x142803_ _y142804_)
        (letrec ((_y=?142806_
                  (lambda (_xid142810_)
                    ((if (list? _y142804_) memq eq?) _xid142810_ _y142804_))))
          (let ((_bind142808_ (gx#resolve-identifier__0 _x142803_)))
            (if (##structure-instance-of? _bind142808_ 'gx#binding::t)
                (_y=?142806_
                 (##unchecked-structure-ref _bind142808_ '1 gx#binding::t '#f))
                (_y=?142806_ (gx#stx-e _x142803_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e142801_)
        (if (interned-symbol? _e142801_)
            (string-index (symbol->string _e142801_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx142756_ _src142757_ _ctx142758_ _marks142759_)
        (if (##structure? _stx142756_)
            (let ((_$e142761_ (gx#sealed-syntax-unwrap _stx142756_)))
              (if _$e142761_
                  (values _$e142761_)
                  (if (gx#identifier? _stx142756_)
                      (let ((_id142764_
                             (gx#stx-unwrap__% _stx142756_ _marks142759_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id142764_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e142766_
                                (##unchecked-structure-ref
                                 _id142764_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e142766_ _$e142766_ _src142757_))
                         _ctx142758_
                         (##unchecked-structure-ref
                          _id142764_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx142756_)
                       (let ((_$e142769_ (gx#stx-source _stx142756_)))
                         (if _$e142769_ _$e142769_ _src142757_))
                       _ctx142758_
                       (reverse _marks142759_)))))
            (##structure
             gx#syntax-quote::t
             _stx142756_
             _src142757_
             _ctx142758_
             (reverse _marks142759_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx142775_)
        (let* ((_src142777_ '#f)
               (_ctx142779_ (gx#current-expander-context))
               (_marks142781_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142775_
           _src142777_
           _ctx142779_
           _marks142781_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx142783_ _src142784_)
        (let* ((_ctx142786_ (gx#current-expander-context))
               (_marks142788_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142783_
           _src142784_
           _ctx142786_
           _marks142788_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx142790_ _src142791_ _ctx142792_)
        (let ((_marks142794_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142790_
           _src142791_
           _ctx142792_
           _marks142794_))))
    (define gx#core-quote-syntax
      (lambda _g150190_
        (let ((_g150189_ (##length _g150190_)))
          (cond ((##fx= _g150189_ 1)
                 (apply (lambda (_stx142775_)
                          (gx#core-quote-syntax__0 _stx142775_))
                        _g150190_))
                ((##fx= _g150189_ 2)
                 (apply (lambda (_stx142783_ _src142784_)
                          (gx#core-quote-syntax__1 _stx142783_ _src142784_))
                        _g150190_))
                ((##fx= _g150189_ 3)
                 (apply (lambda (_stx142790_ _src142791_ _ctx142792_)
                          (gx#core-quote-syntax__2
                           _stx142790_
                           _src142791_
                           _ctx142792_))
                        _g150190_))
                ((##fx= _g150189_ 4)
                 (apply (lambda (_stx142796_
                                 _src142797_
                                 _ctx142798_
                                 _marks142799_)
                          (gx#core-quote-syntax__%
                           _stx142796_
                           _src142797_
                           _ctx142798_
                           _marks142799_))
                        _g150190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g150190_))))))
    (define gx#core-cons
      (lambda (_hd142752_ _tl142753_)
        (cons (gx#core-quote-syntax__0 _hd142752_) _tl142753_)))
    (define gx#core-list
      (lambda (_hd142749_ . _rest142750_)
        (cons (gx#core-quote-syntax__0 _hd142749_) _rest142750_)))
    (define gx#core-cons*
      (lambda (_hd142746_ . _rest142747_)
        (apply cons* (gx#core-quote-syntax__0 _hd142746_) _rest142747_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path142720_ _rel142721_)
        (let ((_path142733_ (gx#stx-e _stx-path142720_))
              (_reldir142734_
               (let _lp142723_ ((_relsrc142725_
                                 (let ((_$e142730_
                                        (gx#stx-source _stx-path142720_)))
                                   (if _$e142730_ _$e142730_ _rel142721_))))
                 (if (##structure-instance-of? _relsrc142725_ 'gerbil#AST::t)
                     (_lp142723_
                      (let ((_$e142727_ (gx#stx-source _relsrc142725_)))
                        (if _$e142727_ _$e142727_ (gx#stx-e _relsrc142725_))))
                     (if (source-location-path? _relsrc142725_)
                         (path-directory (source-location-path _relsrc142725_))
                         (if (string? _relsrc142725_)
                             (path-directory _relsrc142725_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path142733_ (path-normalize _reldir142734_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path142739_)
        (let ((_rel142741_ '#f))
          (gx#core-resolve-path__% _stx-path142739_ _rel142741_))))
    (define gx#core-resolve-path
      (lambda _g150192_
        (let ((_g150191_ (##length _g150192_)))
          (cond ((##fx= _g150191_ 1)
                 (apply (lambda (_stx-path142739_)
                          (gx#core-resolve-path__0 _stx-path142739_))
                        _g150192_))
                ((##fx= _g150191_ 2)
                 (apply (lambda (_stx-path142743_ _rel142744_)
                          (gx#core-resolve-path__%
                           _stx-path142743_
                           _rel142744_))
                        _g150192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g150192_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr142676_ _ctx142677_)
        (let* ((_repr142678142685_ _repr142676_)
               (_E142680142689_
                (lambda () (error '"No clause matching" _repr142678142685_)))
               (_K142681142697_
                (lambda (_subs142692_ _phi142693_)
                  (let ((_subst142695_
                         (if (not (null? _subs142692_))
                             (list->table _subs142692_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst142695_
                     _ctx142677_
                     _phi142693_
                     '#f)))))
          (if (##pair? _repr142678142685_)
              (let ((_hd142682142700_ (##car _repr142678142685_))
                    (_tl142683142702_ (##cdr _repr142678142685_)))
                (let* ((_phi142705_ _hd142682142700_)
                       (_subs142707_ _tl142683142702_))
                  (_K142681142697_ _subs142707_ _phi142705_)))
              (_E142680142689_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr142712_)
        (let ((_ctx142714_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr142712_ _ctx142714_))))
    (define gx#core-deserialize-mark
      (lambda _g150194_
        (let ((_g150193_ (##length _g150194_)))
          (cond ((##fx= _g150193_ 1)
                 (apply (lambda (_repr142712_)
                          (gx#core-deserialize-mark__0 _repr142712_))
                        _g150194_))
                ((##fx= _g150193_ 2)
                 (apply (lambda (_repr142716_ _ctx142717_)
                          (gx#core-deserialize-mark__%
                           _repr142716_
                           _ctx142717_))
                        _g150194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g150194_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx142673_)
        (gx#stx-rewrap _stx142673_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx142671_)
        (gx#stx-unwrap__% _stx142671_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx142641_)
        (let* ((_g142642142650_ (gx#current-expander-marks))
               (_else142644142658_ (lambda () _stx142641_))
               (_K142646142663_
                (lambda (_hd142661_)
                  (gx#stx-apply-mark _stx142641_ _hd142661_))))
          (if (##pair? _g142642142650_)
              (let* ((_hd142647142666_ (##car _g142642142650_))
                     (_hd142669_ _hd142647142666_))
                (_K142646142663_ _hd142669_))
              (_else142644142658_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx142626_ _E142627_)
        (let ((_bind142629_ (gx#resolve-identifier__0 _stx142626_)))
          (if (##structure-direct-instance-of?
               _bind142629_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind142629_
               '4
               gx#syntax-binding::t
               '#f)
              (_E142627_ _stx142626_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx142634_)
        (let ((_E142636_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx142634_ _E142636_))))
    (define gx#syntax-local-e
      (lambda _g150196_
        (let ((_g150195_ (##length _g150196_)))
          (cond ((##fx= _g150195_ 1)
                 (apply (lambda (_stx142634_)
                          (gx#syntax-local-e__0 _stx142634_))
                        _g150196_))
                ((##fx= _g150195_ 2)
                 (apply (lambda (_stx142638_ _E142639_)
                          (gx#syntax-local-e__% _stx142638_ _E142639_))
                        _g150196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g150196_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx142610_ _E142611_)
        (let ((_e142613_ (gx#syntax-local-e__% _stx142610_ _E142611_)))
          (if (##structure-instance-of? _e142613_ 'gx#expander::t)
              (##structure-ref _e142613_ '1 gx#expander::t '#f)
              _e142613_))))
    (define gx#syntax-local-value__0
      (lambda (_stx142618_)
        (let ((_E142620_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx142618_ _E142620_))))
    (define gx#syntax-local-value
      (lambda _g150198_
        (let ((_g150197_ (##length _g150198_)))
          (cond ((##fx= _g150197_ 1)
                 (apply (lambda (_stx142618_)
                          (gx#syntax-local-value__0 _stx142618_))
                        _g150198_))
                ((##fx= _g150197_ 2)
                 (apply (lambda (_stx142622_ _E142623_)
                          (gx#syntax-local-value__% _stx142622_ _E142623_))
                        _g150198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g150198_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx142607_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx142607_)))))
