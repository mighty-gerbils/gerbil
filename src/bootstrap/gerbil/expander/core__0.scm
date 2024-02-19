(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708337965)
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
      (lambda _$args156699_
        (apply make-instance gx#expander-context::t _$args156699_)))
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
      (lambda _$args156696_
        (apply make-instance gx#root-context::t _$args156696_)))
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
      (lambda _$args156693_
        (apply make-instance gx#phi-context::t _$args156693_)))
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
      (lambda _$args156690_
        (apply make-instance gx#top-context::t _$args156690_)))
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
      (lambda _$args156687_
        (apply make-instance gx#module-context::t _$args156687_)))
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
      (lambda _$args156684_
        (apply make-instance gx#prelude-context::t _$args156684_)))
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
      (lambda _$args156681_
        (apply make-instance gx#local-context::t _$args156681_)))
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
      (lambda (_self156665_ _id156666_ _super156667_)
        (if (##fx< '3 (##structure-length _self156665_))
            (begin
              (##unchecked-structure-set!
               _self156665_
               _id156666_
               '1
               (##structure-type _self156665_)
               '#f)
              (##unchecked-structure-set!
               _self156665_
               (make-hash-table-eq)
               '2
               (##structure-type _self156665_)
               '#f)
              (##unchecked-structure-set!
               _self156665_
               _super156667_
               '3
               (##structure-type _self156665_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self156665_
                   '3
                   (##vector-length _self156665_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self156672_ _id156673_)
        (let ((_super156675_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self156672_ _id156673_ _super156675_))))
    (define gx#phi-context:::init!
      (lambda _g160728_
        (let ((_g160727_ (##length _g160728_)))
          (cond ((##fx= _g160727_ 2)
                 (apply (lambda (_self156672_ _id156673_)
                          (gx#phi-context:::init!__0 _self156672_ _id156673_))
                        _g160728_))
                ((##fx= _g160727_ 3)
                 (apply (lambda (_self156677_ _id156678_ _super156679_)
                          (gx#phi-context:::init!__%
                           _self156677_
                           _id156678_
                           _super156679_))
                        _g160728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g160728_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self156529_ _super156530_)
        (if (##fx< '3 (##structure-length _self156529_))
            (begin
              (##unchecked-structure-set!
               _self156529_
               (gensym 'L)
               '1
               (##structure-type _self156529_)
               '#f)
              (##unchecked-structure-set!
               _self156529_
               (make-hash-table-eq)
               '2
               (##structure-type _self156529_)
               '#f)
              (##unchecked-structure-set!
               _self156529_
               _super156530_
               '3
               (##structure-type _self156529_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self156529_
                   '3
                   (##vector-length _self156529_)))))
    (define gx#local-context:::init!__0
      (lambda (_self156535_)
        (let ((_super156537_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self156535_ _super156537_))))
    (define gx#local-context:::init!
      (lambda _g160730_
        (let ((_g160729_ (##length _g160730_)))
          (cond ((##fx= _g160729_ 1)
                 (apply (lambda (_self156535_)
                          (gx#local-context:::init!__0 _self156535_))
                        _g160730_))
                ((##fx= _g160729_ 2)
                 (apply (lambda (_self156539_ _super156540_)
                          (gx#local-context:::init!__%
                           _self156539_
                           _super156540_))
                        _g160730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g160730_))))))
    (bind-method!__% gx#local-context::t ':init! gx#local-context:::init! '#f)
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
      (lambda _$args156403_ (apply make-instance gx#binding::t _$args156403_)))
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
      (lambda _$args156400_
        (apply make-instance gx#runtime-binding::t _$args156400_)))
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
      (lambda _$args156397_
        (apply make-instance gx#local-binding::t _$args156397_)))
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
      (lambda _$args156394_
        (apply make-instance gx#top-binding::t _$args156394_)))
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
      (lambda _$args156391_
        (apply make-instance gx#module-binding::t _$args156391_)))
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
      (lambda _$args156388_
        (apply make-instance gx#extern-binding::t _$args156388_)))
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
      (lambda _$args156385_
        (apply make-instance gx#syntax-binding::t _$args156385_)))
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
      (lambda _$args156382_
        (apply make-instance gx#import-binding::t _$args156382_)))
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
      (lambda _$args156379_
        (apply make-instance gx#alias-binding::t _$args156379_)))
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
      (lambda _$args156376_
        (apply make-instance gx#expander::t _$args156376_)))
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
      (lambda _$args156373_
        (apply make-instance gx#core-expander::t _$args156373_)))
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
      (lambda _$args156370_
        (apply make-instance gx#expression-form::t _$args156370_)))
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
      (lambda _$args156367_
        (apply make-instance gx#special-form::t _$args156367_)))
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
      (lambda _$args156364_
        (apply make-instance gx#definition-form::t _$args156364_)))
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
      (lambda _$args156361_
        (apply make-instance gx#top-special-form::t _$args156361_)))
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
      (lambda _$args156358_
        (apply make-instance gx#module-special-form::t _$args156358_)))
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
      (lambda _$args156355_
        (apply make-instance gx#feature-expander::t _$args156355_)))
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
      (lambda _$args156352_
        (apply make-instance gx#private-feature-expander::t _$args156352_)))
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
      (lambda _$args156349_
        (apply make-instance gx#reserved-expander::t _$args156349_)))
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
      (lambda _$args156346_
        (apply make-instance gx#macro-expander::t _$args156346_)))
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
      (lambda _$args156343_
        (apply make-instance gx#rename-macro-expander::t _$args156343_)))
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
      (lambda _$args156340_
        (apply make-instance gx#user-expander::t _$args156340_)))
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
      (lambda _$args156337_
        (apply make-instance gx#expander-mark::t _$args156337_)))
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
      (lambda (_ctx156322_ _message156323_ _stx156324_ . _details156325_)
        (let ((_ctx156335_
               (let ((_$e156327_ _ctx156322_))
                 (if _$e156327_
                     _$e156327_
                     (let ((_$e156330_ (gx#core-context-top__0)))
                       (if _$e156330_
                           ((lambda (_ctx156333_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx156333_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e156330_)
                           '#f))))))
          (raise (make-syntax-error
                  _message156323_
                  (cons _stx156324_ _details156325_)
                  _ctx156335_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx156309_ _expression?156310_)
        (gx#eval-syntax* (gx#core-expand__% _stx156309_ _expression?156310_))))
    (define gx#eval-syntax__0
      (lambda (_stx156315_)
        (let ((_expression?156317_ '#f))
          (gx#eval-syntax__% _stx156315_ _expression?156317_))))
    (define gx#eval-syntax
      (lambda _g160732_
        (let ((_g160731_ (##length _g160732_)))
          (cond ((##fx= _g160731_ 1)
                 (apply (lambda (_stx156315_) (gx#eval-syntax__0 _stx156315_))
                        _g160732_))
                ((##fx= _g160731_ 2)
                 (apply (lambda (_stx156319_ _expression?156320_)
                          (gx#eval-syntax__% _stx156319_ _expression?156320_))
                        _g160732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g160732_))))))
    (define gx#eval-syntax*
      (lambda (_stx156306_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx156306_))))
    (define gx#core-expand__%
      (lambda (_stx156293_ _expression?156294_)
        (if _expression?156294_
            (gx#core-expand-expression _stx156293_)
            (gx#core-expand-top _stx156293_))))
    (define gx#core-expand__0
      (lambda (_stx156299_)
        (let ((_expression?156301_ '#f))
          (gx#core-expand__% _stx156299_ _expression?156301_))))
    (define gx#core-expand
      (lambda _g160734_
        (let ((_g160733_ (##length _g160734_)))
          (cond ((##fx= _g160733_ 1)
                 (apply (lambda (_stx156299_) (gx#core-expand__0 _stx156299_))
                        _g160734_))
                ((##fx= _g160733_ 2)
                 (apply (lambda (_stx156303_ _expression?156304_)
                          (gx#core-expand__% _stx156303_ _expression?156304_))
                        _g160734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g160734_))))))
    (define gx#core-expand-top
      (lambda (_stx156260_)
        (let* ((_stx156262_ (gx#core-expand*__0 _stx156260_))
               (_e156263156270_ _stx156262_)
               (_E156265156274_
                (lambda () (gx#core-expand-expression _stx156262_)))
               (_E156264156288_
                (lambda ()
                  (if (gx#stx-pair? _e156263156270_)
                      (let ((_e156266156278_ (gx#syntax-e _e156263156270_)))
                        (let ((_hd156267156281_ (##car _e156266156278_))
                              (_tl156268156283_ (##cdr _e156266156278_)))
                          (let ((_form156286_ _hd156267156281_))
                            (if (gx#core-bound-identifier?__0 _form156286_)
                                _stx156262_
                                (_E156265156274_)))))
                      (_E156265156274_)))))
          (_E156264156288_))))
    (define gx#core-expand-expression
      (lambda (_stx156207_)
        (letrec ((_sealed-expression?156209_
                  (lambda (_hd156230_)
                    (if (gx#sealed-syntax? _hd156230_)
                        (let* ((_e156231156238_ _hd156230_)
                               (_E156233156242_ (lambda () '#f))
                               (_E156232156256_
                                (lambda ()
                                  (if (gx#stx-pair? _e156231156238_)
                                      (let ((_e156234156246_
                                             (gx#syntax-e _e156231156238_)))
                                        (let ((_hd156235156249_
                                               (##car _e156234156246_))
                                              (_tl156236156251_
                                               (##cdr _e156234156246_)))
                                          (let ((_form156254_
                                                 _hd156235156249_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form156254_
                                                 gx#expression-form-binding?)
                                                (_E156233156242_)))))
                                      (_E156233156242_)))))
                          (_E156232156256_))
                        '#f)))
                 (_illegal-expression156210_
                  (lambda (_hd156228_ . _g160735_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx156207_
                     _hd156228_)))
                 (_expand-e156211_
                  (lambda (_form156223_ _hd156224_)
                    (let ((_bind156226_
                           (if (##structure-instance-of?
                                _form156223_
                                'gx#binding::t)
                               _form156223_
                               (gx#resolve-identifier__0 _form156223_))))
                      (if (gx#core-expander-binding? _bind156226_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind156226_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd156224_
                            (gx#stx-source _stx156207_)))
                          (if (##structure-direct-instance-of?
                               _bind156226_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind156226_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd156224_
                                 (gx#stx-source _stx156207_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx156207_
                               _form156223_)))))))
          (let ((_hd156213_ (gx#core-expand-head _stx156207_)))
            (if (_sealed-expression?156209_ _hd156213_)
                _hd156213_
                (if (gx#stx-pair? _hd156213_)
                    (let* ((_form156215_ (gx#stx-car _hd156213_))
                           (_bind156217_
                            (if (gx#identifier? _form156215_)
                                (gx#resolve-identifier__0 _form156215_)
                                '#f)))
                      (if (or (not _bind156217_)
                              (not (gx#core-expander-binding? _bind156217_)))
                          (_expand-e156211_ '%%app (cons '%%app _hd156213_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind156217_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd156213_
                               _illegal-expression156210_)
                              (if (gx#expression-form-binding? _bind156217_)
                                  (_expand-e156211_ _bind156217_ _hd156213_)
                                  (if (gx#direct-special-form-binding?
                                       _bind156217_)
                                      (gx#core-expand-expression
                                       (_expand-e156211_
                                        _bind156217_
                                        _hd156213_))
                                      (_illegal-expression156210_
                                       _hd156213_))))))
                    (if (gx#core-bound-identifier?__0 _hd156213_)
                        (_illegal-expression156210_ _hd156213_)
                        (if (gx#identifier? _hd156213_)
                            (_expand-e156211_
                             '%%ref
                             (cons '%%ref (cons _hd156213_ '())))
                            (if (gx#stx-datum? _hd156213_)
                                (_expand-e156211_
                                 '%#quote
                                 (cons '%#quote (cons _hd156213_ '())))
                                (_illegal-expression156210_
                                 _hd156213_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx156202_)
        (call-with-parameters
         (lambda ()
           (let ((_stx156205_ (gx#core-expand-expression _stx156202_)))
             (values _stx156205_ (gx#eval-syntax* _stx156205_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx156183_ _stop?156184_)
        (let _lp156186_ ((_stx156188_ _stx156183_))
          (if (_stop?156184_ _stx156188_)
              _stx156188_
              (let ((_rstx156190_ (gx#core-expand1 _stx156188_)))
                (if (eq? _stx156188_ _rstx156190_)
                    _stx156188_
                    (_lp156186_ _rstx156190_)))))))
    (define gx#core-expand*__0
      (lambda (_stx156195_)
        (let ((_stop?156197_ false))
          (gx#core-expand*__% _stx156195_ _stop?156197_))))
    (define gx#core-expand*
      (lambda _g160737_
        (let ((_g160736_ (##length _g160737_)))
          (cond ((##fx= _g160736_ 1)
                 (apply (lambda (_stx156195_) (gx#core-expand*__0 _stx156195_))
                        _g160737_))
                ((##fx= _g160736_ 2)
                 (apply (lambda (_stx156199_ _stop?156200_)
                          (gx#core-expand*__% _stx156199_ _stop?156200_))
                        _g160737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g160737_))))))
    (define gx#core-expand1
      (lambda (_stx156139_)
        (letrec ((_step156141_
                  (lambda (_hd156178_)
                    (let ((_bind156180_ (gx#resolve-identifier__0 _hd156178_)))
                      (if (##structure-instance-of?
                           _bind156180_
                           'gx#runtime-binding::t)
                          _stx156139_
                          (if (##structure-direct-instance-of?
                               _bind156180_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind156180_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx156139_)
                              (if (not _bind156180_)
                                  _stx156139_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx156139_))))))))
          (let* ((_e156142156150_ _stx156139_)
                 (_E156148156154_ (lambda () _stx156139_))
                 (_E156144156160_
                  (lambda ()
                    (let ((_hd156158_ _e156142156150_))
                      (if (gx#identifier? _hd156158_)
                          (_step156141_ _hd156158_)
                          (_E156148156154_)))))
                 (_E156143156174_
                  (lambda ()
                    (if (gx#stx-pair? _e156142156150_)
                        (let ((_e156145156164_ (gx#syntax-e _e156142156150_)))
                          (let ((_hd156146156167_ (##car _e156145156164_))
                                (_tl156147156169_ (##cdr _e156145156164_)))
                            (let ((_hd156172_ _hd156146156167_))
                              (if (gx#identifier? _hd156172_)
                                  (_step156141_ _hd156172_)
                                  (_E156144156160_)))))
                        (_E156144156160_)))))
            (_E156143156174_)))))
    (define gx#core-expand-head
      (lambda (_stx156105_)
        (letrec ((_stop?156107_
                  (lambda (_stx156109_)
                    (let* ((_e156110156117_ _stx156109_)
                           (_E156112156121_ (lambda () '#f))
                           (_E156111156135_
                            (lambda ()
                              (if (gx#stx-pair? _e156110156117_)
                                  (let ((_e156113156125_
                                         (gx#syntax-e _e156110156117_)))
                                    (let ((_hd156114156128_
                                           (##car _e156113156125_))
                                          (_tl156115156130_
                                           (##cdr _e156113156125_)))
                                      (let ((_hd156133_ _hd156114156128_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd156133_)
                                            (_E156112156121_)))))
                                  (_E156112156121_)))))
                      (_E156111156135_)))))
          (gx#core-expand*__% _stx156105_ _stop?156107_))))
    (define gx#core-expand-block__%
      (lambda (_stx155911_
               _expand-special155912_
               _begin-form155913_
               _expand-e155914_)
        (letrec ((_expand-splice155916_
                  (lambda (_hd156079_ _body156080_ _rest156081_ _r156082_)
                    (if (gx#stx-list? _body156080_)
                        (_K155920_
                         (gx#stx-foldr cons _rest156081_ _body156080_)
                         _r156082_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx155911_
                         _hd156079_))))
                 (_expand-cond-expand155917_
                  (lambda (_hd156075_ _rest156076_ _r156077_)
                    (_K155920_
                     (cons (gx#core-expand-cond-expand% _hd156075_)
                           _rest156076_)
                     _r156077_)))
                 (_expand-include155918_
                  (lambda (_hd156024_ _rest156025_ _r156026_)
                    (let* ((_e156027156037_ _hd156024_)
                           (_E156029156041_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e156027156037_)))
                           (_E156028156071_
                            (lambda ()
                              (if (gx#stx-pair? _e156027156037_)
                                  (let ((_e156030156045_
                                         (gx#syntax-e _e156027156037_)))
                                    (let ((_hd156031156048_
                                           (##car _e156030156045_))
                                          (_tl156032156050_
                                           (##cdr _e156030156045_)))
                                      (if (gx#stx-pair? _tl156032156050_)
                                          (let ((_e156033156053_
                                                 (gx#syntax-e
                                                  _tl156032156050_)))
                                            (let ((_hd156034156056_
                                                   (##car _e156033156053_))
                                                  (_tl156035156058_
                                                   (##cdr _e156033156053_)))
                                              (let ((_path156061_
                                                     _hd156034156056_))
                                                (if (gx#stx-null?
                                                     _tl156035156058_)
                                                    (if (gx#stx-string?
                                                         _path156061_)
                                                        (let* ((_rpath156063_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path156061_
                         (gx#stx-source _hd156024_)))
                       (_block156065_
                        (gx#core-expand-include%__% _hd156024_ _rpath156063_))
                       (_rbody156068_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block156065_
                            _expand-special155912_
                            '#f
                            _expand-e155914_))
                         gx#current-expander-path
                         (cons _rpath156063_ (gx#current-expander-path)))))
                  (_K155920_
                   _rest156025_
                   (foldr1 cons _r156026_ _rbody156068_)))
                (_E156029156041_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E156029156041_)))))
                                          (_E156029156041_))))
                                  (_E156029156041_)))))
                      (_E156028156071_))))
                 (_expand-expression155919_
                  (lambda (_hd156020_ _rest156021_ _r156022_)
                    (_K155920_
                     _rest156021_
                     (cons (_expand-e155914_ _hd156020_) _r156022_))))
                 (_K155920_
                  (lambda (_rest155950_ _r155951_)
                    (let* ((_e155952155959_ _rest155950_)
                           (_E155954155963_
                            (lambda ()
                              (if _begin-form155913_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form155913_
                                    (reverse _r155951_))
                                   (gx#stx-source _stx155911_))
                                  _r155951_)))
                           (_E155953156016_
                            (lambda ()
                              (if (gx#stx-pair? _e155952155959_)
                                  (let ((_e155955155967_
                                         (gx#syntax-e _e155952155959_)))
                                    (let ((_hd155956155970_
                                           (##car _e155955155967_))
                                          (_tl155957155972_
                                           (##cdr _e155955155967_)))
                                      (let* ((_hd155975_ _hd155956155970_)
                                             (_rest155977_ _tl155957155972_))
                                        (if '#t
                                            (let* ((_hd155979_
                                                    (gx#core-expand-head
                                                     _hd155975_))
                                                   (_e155980155987_ _hd155979_)
                                                   (_E155982155991_
                                                    (lambda ()
                                                      (_expand-expression155919_
                                                       _hd155979_
                                                       _rest155977_
                                                       _r155951_)))
                                                   (_E155981156012_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e155980155987_)
                                                          (let ((_e155983155995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e155980155987_)))
                    (let ((_hd155984155998_ (##car _e155983155995_))
                          (_tl155985156000_ (##cdr _e155983155995_)))
                      (let* ((_form156003_ _hd155984155998_)
                             (_body156005_ _tl155985156000_))
                        (if '#t
                            (let ((_bind156007_
                                   (if (gx#identifier? _form156003_)
                                       (gx#resolve-identifier__0 _form156003_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind156007_)
                                  (let ((_$e156009_
                                         (##unchecked-structure-ref
                                          _bind156007_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e156009_)
                                        (_expand-splice155916_
                                         _hd155979_
                                         _body156005_
                                         _rest155977_
                                         _r155951_)
                                        (if (eq? '%#cond-expand _$e156009_)
                                            (_expand-cond-expand155917_
                                             _hd155979_
                                             _rest155977_
                                             _r155951_)
                                            (if (eq? '%#include _$e156009_)
                                                (_expand-include155918_
                                                 _hd155979_
                                                 _rest155977_
                                                 _r155951_)
                                                (_expand-special155912_
                                                 _hd155979_
                                                 _K155920_
                                                 _rest155977_
                                                 _r155951_)))))
                                  (_expand-expression155919_
                                   _hd155979_
                                   _rest155977_
                                   _r155951_)))
                            (_E155982155991_)))))
                  (_E155982155991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155981156012_))
                                            (_E155954155963_)))))
                                  (_E155954155963_)))))
                      (_E155953156016_)))))
          (let* ((_e155921155928_ _stx155911_)
                 (_E155923155932_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e155921155928_)))
                 (_E155922155946_
                  (lambda ()
                    (if (gx#stx-pair? _e155921155928_)
                        (let ((_e155924155936_ (gx#syntax-e _e155921155928_)))
                          (let ((_hd155925155939_ (##car _e155924155936_))
                                (_tl155926155941_ (##cdr _e155924155936_)))
                            (let ((_body155944_ _tl155926155941_))
                              (if (gx#stx-list? _body155944_)
                                  (_K155920_ _body155944_ '())
                                  (_E155923155932_)))))
                        (_E155923155932_)))))
            (_E155922155946_)))))
    (define gx#core-expand-block__0
      (lambda (_stx156087_ _expand-special156088_)
        (let* ((_begin-form156090_ '%#begin)
               (_expand-e156092_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx156087_
           _expand-special156088_
           _begin-form156090_
           _expand-e156092_))))
    (define gx#core-expand-block__1
      (lambda (_stx156094_ _expand-special156095_ _begin-form156096_)
        (let ((_expand-e156098_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx156094_
           _expand-special156095_
           _begin-form156096_
           _expand-e156098_))))
    (define gx#core-expand-block
      (lambda _g160739_
        (let ((_g160738_ (##length _g160739_)))
          (cond ((##fx= _g160738_ 2)
                 (apply (lambda (_stx156087_ _expand-special156088_)
                          (gx#core-expand-block__0
                           _stx156087_
                           _expand-special156088_))
                        _g160739_))
                ((##fx= _g160738_ 3)
                 (apply (lambda (_stx156094_
                                 _expand-special156095_
                                 _begin-form156096_)
                          (gx#core-expand-block__1
                           _stx156094_
                           _expand-special156095_
                           _begin-form156096_))
                        _g160739_))
                ((##fx= _g160738_ 4)
                 (apply (lambda (_stx156100_
                                 _expand-special156101_
                                 _begin-form156102_
                                 _expand-e156103_)
                          (gx#core-expand-block__%
                           _stx156100_
                           _expand-special156101_
                           _begin-form156102_
                           _expand-e156103_))
                        _g160739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g160739_))))))
    (define gx#core-expand-block*
      (lambda (_stx155859_ _expand-special155860_)
        (let* ((_g155861155872_
                (gx#core-expand-block__1
                 _stx155859_
                 _expand-special155860_
                 '#f))
               (_E155865155876_
                (lambda () (error '"No clause matching" _g155861155872_))))
          (let ((_K155870155907_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx155859_)))
                (_K155867155893_ (lambda (_expr155891_) _expr155891_))
                (_K155866155882_
                 (lambda (_body155880_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body155880_))
                    (gx#stx-source _stx155859_)))))
            (let ((_try-match155863155903_
                   (lambda ()
                     (if (##pair? _g155861155872_)
                         (let ((_tl155869155898_ (##cdr _g155861155872_))
                               (_hd155868155896_ (##car _g155861155872_)))
                           (if (##null? _tl155869155898_)
                               (let ((_expr155901_ _hd155868155896_))
                                 (_K155867155893_ _expr155901_))
                               (let ((_body155885_ _g155861155872_))
                                 (_K155866155882_ _body155885_))))
                         (let ((_body155885_ _g155861155872_))
                           (_K155866155882_ _body155885_))))))
              (if (##null? _g155861155872_)
                  (_K155870155907_)
                  (_try-match155863155903_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx155687_)
        (letrec ((_satisfied?155689_
                  (lambda (_condition155787_)
                    (let* ((_e155788155803_ _condition155787_)
                           (_E155798155807_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155788155803_)))
                           (_E155791155826_
                            (lambda ()
                              (if (gx#stx-pair? _e155788155803_)
                                  (let ((_e155799155811_
                                         (gx#syntax-e _e155788155803_)))
                                    (let ((_hd155800155814_
                                           (##car _e155799155811_))
                                          (_tl155801155816_
                                           (##cdr _e155799155811_)))
                                      (let* ((_combinator155819_
                                              _hd155800155814_)
                                             (_body155821_ _tl155801155816_))
                                        (if (gx#stx-list? _body155821_)
                                            (let ((_$e155823_
                                                   (gx#stx-e
                                                    _combinator155819_)))
                                              (if (eq? 'not _$e155823_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?155689_
                                                        _body155821_))
                                                  (if (eq? 'and _$e155823_)
                                                      (gx#stx-andmap
                                                       _satisfied?155689_
                                                       _body155821_)
                                                      (if (eq? 'or _$e155823_)
                                                          (gx#stx-ormap
                                                           _satisfied?155689_
                                                           _body155821_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e155823_)
                      (gx#stx-andmap gx#core-resolve-identifier _body155821_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx155687_
                       _combinator155819_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E155798155807_)))))
                                  (_E155798155807_))))
                           (_E155790155849_
                            (lambda ()
                              (if (gx#stx-pair? _e155788155803_)
                                  (let ((_e155792155830_
                                         (gx#syntax-e _e155788155803_)))
                                    (let ((_hd155793155833_
                                           (##car _e155792155830_))
                                          (_tl155794155835_
                                           (##cdr _e155792155830_)))
                                      (if (and (gx#identifier?
                                                _hd155793155833_)
                                               (gx#core-identifier=?
                                                _hd155793155833_
                                                'unquote))
                                          (if (gx#stx-pair? _tl155794155835_)
                                              (let ((_e155795155838_
                                                     (gx#syntax-e
                                                      _tl155794155835_)))
                                                (let ((_hd155796155841_
                                                       (##car _e155795155838_))
                                                      (_tl155797155843_
                                                       (##cdr _e155795155838_)))
                                                  (let ((_expr155846_
                                                         _hd155796155841_))
                                                    (if (gx#stx-null?
                                                         _tl155797155843_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr155846_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E155791155826_))
                (_E155791155826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155791155826_))
                                          (_E155791155826_))))
                                  (_E155791155826_))))
                           (_E155789155855_
                            (lambda ()
                              (let ((_id155853_ _e155788155803_))
                                (if (gx#identifier? _id155853_)
                                    (gx#core-bound-identifier?__%
                                     _id155853_
                                     gx#feature-binding?)
                                    (_E155790155849_))))))
                      (_E155789155855_))))
                 (_loop155690_
                  (lambda (_rest155720_)
                    (let* ((_e155721155729_ _rest155720_)
                           (_E155727155733_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155721155729_)))
                           (_E155723155737_
                            (lambda ()
                              (if (gx#stx-null? _e155721155729_)
                                  (if '#t '() (_E155727155733_))
                                  (_E155727155733_))))
                           (_E155722155783_
                            (lambda ()
                              (if (gx#stx-pair? _e155721155729_)
                                  (let ((_e155724155741_
                                         (gx#syntax-e _e155721155729_)))
                                    (let ((_hd155725155744_
                                           (##car _e155724155741_))
                                          (_tl155726155746_
                                           (##cdr _e155724155741_)))
                                      (let* ((_hd155749_ _hd155725155744_)
                                             (_rest155751_ _tl155726155746_))
                                        (if '#t
                                            (let* ((_e155752155759_ _hd155749_)
                                                   (_E155754155763_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e155752155759_)))
                                                   (_E155753155779_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e155752155759_)
                                                          (let ((_e155755155767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e155752155759_)))
                    (let ((_hd155756155770_ (##car _e155755155767_))
                          (_tl155757155772_ (##cdr _e155755155767_)))
                      (let* ((_condition155775_ _hd155756155770_)
                             (_body155777_ _tl155757155772_))
                        (if '#t
                            (if (gx#stx-eq? _condition155775_ 'else)
                                (if (gx#stx-null? _rest155751_)
                                    _body155777_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx155687_
                                     _hd155749_))
                                (if (_satisfied?155689_ _condition155775_)
                                    _body155777_
                                    (_loop155690_ _rest155751_)))
                            (_E155754155763_)))))
                  (_E155754155763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155753155779_))
                                            (_E155723155737_)))))
                                  (_E155723155737_)))))
                      (_E155722155783_)))))
          (let* ((_e155691155698_ _stx155687_)
                 (_E155693155702_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e155691155698_)))
                 (_E155692155716_
                  (lambda ()
                    (if (gx#stx-pair? _e155691155698_)
                        (let ((_e155694155706_ (gx#syntax-e _e155691155698_)))
                          (let ((_hd155695155709_ (##car _e155694155706_))
                                (_tl155696155711_ (##cdr _e155694155706_)))
                            (let ((_clauses155714_ _tl155696155711_))
                              (if (gx#stx-list? _clauses155714_)
                                  (gx#core-cons
                                   'begin
                                   (_loop155690_ _clauses155714_))
                                  (_E155693155702_)))))
                        (_E155693155702_)))))
            (_E155692155716_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx155630_ _rpath155631_)
        (let* ((_e155632155642_ _stx155630_)
               (_E155634155646_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155632155642_)))
               (_E155633155673_
                (lambda ()
                  (if (gx#stx-pair? _e155632155642_)
                      (let ((_e155635155650_ (gx#syntax-e _e155632155642_)))
                        (let ((_hd155636155653_ (##car _e155635155650_))
                              (_tl155637155655_ (##cdr _e155635155650_)))
                          (if (gx#stx-pair? _tl155637155655_)
                              (let ((_e155638155658_
                                     (gx#syntax-e _tl155637155655_)))
                                (let ((_hd155639155661_
                                       (##car _e155638155658_))
                                      (_tl155640155663_
                                       (##cdr _e155638155658_)))
                                  (let ((_path155666_ _hd155639155661_))
                                    (if (gx#stx-null? _tl155640155663_)
                                        (if (gx#stx-string? _path155666_)
                                            (let ((_rpath155671_
                                                   (let ((_$e155668_
                                                          _rpath155631_))
                                                     (if _$e155668_
                                                         _$e155668_
                                                         (gx#core-resolve-path__%
                                                          _path155666_
                                                          (gx#stx-source
                                                           _stx155630_))))))
                                              (if (member _rpath155671_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx155630_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath155671_))
                                                    (gx#stx-source
                                                     _stx155630_)))))
                                            (_E155634155646_))
                                        (_E155634155646_)))))
                              (_E155634155646_))))
                      (_E155634155646_)))))
          (_E155633155673_))))
    (define gx#core-expand-include%__0
      (lambda (_stx155680_)
        (let ((_rpath155682_ '#f))
          (gx#core-expand-include%__% _stx155680_ _rpath155682_))))
    (define gx#core-expand-include%
      (lambda _g160741_
        (let ((_g160740_ (##length _g160741_)))
          (cond ((##fx= _g160740_ 1)
                 (apply (lambda (_stx155680_)
                          (gx#core-expand-include%__0 _stx155680_))
                        _g160741_))
                ((##fx= _g160740_ 2)
                 (apply (lambda (_stx155684_ _rpath155685_)
                          (gx#core-expand-include%__%
                           _stx155684_
                           _rpath155685_))
                        _g160741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g160741_))))))
    (define gx#core-apply-expander__%
      (lambda (_K155599_ _stx155600_ _method155601_)
        (if (procedure? _K155599_)
            (let ((_$e155603_ (gx#stx-source _stx155600_)))
              (if _$e155603_
                  ((lambda (_g155605155607_)
                     (gx#stx-wrap-source
                      (_K155599_ _stx155600_)
                      _g155605155607_))
                   _$e155603_)
                  (_K155599_ _stx155600_)))
            (let ((_$e155610_ (bound-method-ref _K155599_ _method155601_)))
              (if _$e155610_
                  ((lambda (_g155612155614_)
                     (gx#core-apply-expander__%
                      _g155612155614_
                      _stx155600_
                      _method155601_))
                   _$e155610_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx155600_
                   _method155601_))))))
    (define gx#core-apply-expander__0
      (lambda (_K155620_ _stx155621_)
        (let ((_method155623_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K155620_ _stx155621_ _method155623_))))
    (define gx#core-apply-expander
      (lambda _g160743_
        (let ((_g160742_ (##length _g160743_)))
          (cond ((##fx= _g160742_ 2)
                 (apply (lambda (_K155620_ _stx155621_)
                          (gx#core-apply-expander__0 _K155620_ _stx155621_))
                        _g160743_))
                ((##fx= _g160742_ 3)
                 (apply (lambda (_K155625_ _stx155626_ _method155627_)
                          (gx#core-apply-expander__%
                           _K155625_
                           _stx155626_
                           _method155627_))
                        _g160743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g160743_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self155595_ _stx155596_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx155596_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self155448_ _stx155449_)
        (let* ((_self155450155456_ _self155448_)
               (_E155452155460_
                (lambda () (error '"No clause matching" _self155450155456_)))
               (_K155453155465_
                (lambda (_K155463_)
                  (gx#core-apply-expander__0 _K155463_ _stx155449_))))
          (if (##structure-instance-of? _self155450155456_ 'gx#core-macro::t)
              (let* ((_e155454155468_
                      (##unchecked-structure-ref
                       _self155450155456_
                       '1
                       gx#expander::t
                       '#f))
                     (_K155471_ _e155454155468_))
                (_K155453155465_ _K155471_))
              (_E155452155460_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self155301_ _stx155302_)
        (if (gx#sealed-syntax? _stx155302_)
            _stx155302_
            (let* ((_self155303155309_ _self155301_)
                   (_E155305155313_
                    (lambda ()
                      (error '"No clause matching" _self155303155309_)))
                   (_K155306155318_
                    (lambda (_K155316_)
                      (gx#core-apply-expander__0 _K155316_ _stx155302_))))
              (if (##structure-instance-of?
                   _self155303155309_
                   'gx#core-expander::t)
                  (let* ((_e155307155321_
                          (##unchecked-structure-ref
                           _self155303155309_
                           '1
                           gx#expander::t
                           '#f))
                         (_K155324_ _e155307155321_))
                    (_K155306155318_ _K155324_))
                  (_E155305155313_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self155163_ _stx155164_ _top?155165_)
        (if (_top?155165_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self155163_ _stx155164_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx155164_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self155170_ _stx155171_)
        (let ((_top?155173_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self155170_
           _stx155171_
           _top?155173_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g160745_
        (let ((_g160744_ (##length _g160745_)))
          (cond ((##fx= _g160744_ 2)
                 (apply (lambda (_self155170_ _stx155171_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self155170_
                           _stx155171_))
                        _g160745_))
                ((##fx= _g160744_ 3)
                 (apply (lambda (_self155175_ _stx155176_ _top?155177_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self155175_
                           _stx155176_
                           _top?155177_))
                        _g160745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g160745_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self155037_ _stx155038_)
        (gx#top-special-form::apply-macro-expander__%
         _self155037_
         _stx155038_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self154862_ _stx154863_)
        (let* ((_self154864154870_ _self154862_)
               (_E154866154874_
                (lambda () (error '"No clause matching" _self154864154870_)))
               (_K154867154907_
                (lambda (_id154877_)
                  (let* ((_e154878154885_ _stx154863_)
                         (_E154880154889_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e154878154885_)))
                         (_E154879154903_
                          (lambda ()
                            (if (gx#stx-pair? _e154878154885_)
                                (let ((_e154881154893_
                                       (gx#syntax-e _e154878154885_)))
                                  (let ((_hd154882154896_
                                         (##car _e154881154893_))
                                        (_tl154883154898_
                                         (##cdr _e154881154893_)))
                                    (let ((_body154901_ _tl154883154898_))
                                      (if '#t
                                          (gx#core-cons
                                           _id154877_
                                           _body154901_)
                                          (_E154880154889_)))))
                                (_E154880154889_)))))
                    (_E154879154903_)))))
          (if (##structure-instance-of?
               _self154864154870_
               'gx#rename-macro-expander::t)
              (let* ((_e154868154910_
                      (##unchecked-structure-ref
                       _self154864154870_
                       '1
                       gx#expander::t
                       '#f))
                     (_id154913_ _e154868154910_))
                (_K154867154907_ _id154913_))
              (_E154866154874_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self154688_ _stx154689_ _method154690_)
        (let* ((_self154691154699_ _self154688_)
               (_E154693154703_
                (lambda () (error '"No clause matching" _self154691154699_)))
               (_K154694154710_
                (lambda (_phi154706_ _ctx154707_ _K154708_)
                  (gx#core-apply-user-macro
                   _K154708_
                   _stx154689_
                   _ctx154707_
                   _phi154706_
                   _method154690_))))
          (if (##structure-instance-of?
               _self154691154699_
               'gx#macro-expander::t)
              (let* ((_e154695154713_
                      (##unchecked-structure-ref
                       _self154691154699_
                       '1
                       gx#expander::t
                       '#f))
                     (_K154716_ _e154695154713_)
                     (_e154696154718_
                      (##unchecked-structure-ref
                       _self154691154699_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx154721_ _e154696154718_)
                     (_e154697154723_
                      (##unchecked-structure-ref
                       _self154691154699_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi154726_ _e154697154723_))
                (_K154694154710_ _phi154726_ _ctx154721_ _K154716_))
              (_E154693154703_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self154731_ _stx154732_)
        (let ((_method154734_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self154731_
           _stx154732_
           _method154734_))))
    (define gx#core-apply-user-expander
      (lambda _g160747_
        (let ((_g160746_ (##length _g160747_)))
          (cond ((##fx= _g160746_ 2)
                 (apply (lambda (_self154731_ _stx154732_)
                          (gx#core-apply-user-expander__0
                           _self154731_
                           _stx154732_))
                        _g160747_))
                ((##fx= _g160746_ 3)
                 (apply (lambda (_self154736_ _stx154737_ _method154738_)
                          (gx#core-apply-user-expander__%
                           _self154736_
                           _stx154737_
                           _method154738_))
                        _g160747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g160747_))))))
    (define gx#core-apply-user-macro
      (lambda (_K154678_ _stx154679_ _ctx154680_ _phi154681_ _method154682_)
        (let ((_mark154684_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx154680_
                _phi154681_
                _stx154679_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K154678_
               (gx#stx-apply-mark _stx154679_ _mark154684_)
               _method154682_)
              _mark154684_))
           gx#current-expander-marks
           (cons _mark154684_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx154530_ _phi154531_ _ctx154532_)
        (let _lp154534_ ((_bind154536_
                          (gx#core-resolve-identifier__%
                           _stx154530_
                           _phi154531_
                           _ctx154532_)))
          (if (##structure-direct-instance-of?
               _bind154536_
               'gx#import-binding::t)
              (_lp154534_
               (##unchecked-structure-ref
                _bind154536_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind154536_
                   'gx#alias-binding::t)
                  (_lp154534_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind154536_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi154531_
                    _ctx154532_))
                  _bind154536_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx154541_)
        (let* ((_phi154543_ (gx#current-expander-phi))
               (_ctx154545_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx154541_ _phi154543_ _ctx154545_))))
    (define gx#resolve-identifier__1
      (lambda (_stx154547_ _phi154548_)
        (let ((_ctx154550_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx154547_ _phi154548_ _ctx154550_))))
    (define gx#resolve-identifier
      (lambda _g160749_
        (let ((_g160748_ (##length _g160749_)))
          (cond ((##fx= _g160748_ 1)
                 (apply (lambda (_stx154541_)
                          (gx#resolve-identifier__0 _stx154541_))
                        _g160749_))
                ((##fx= _g160748_ 2)
                 (apply (lambda (_stx154547_ _phi154548_)
                          (gx#resolve-identifier__1 _stx154547_ _phi154548_))
                        _g160749_))
                ((##fx= _g160748_ 3)
                 (apply (lambda (_stx154552_ _phi154553_ _ctx154554_)
                          (gx#resolve-identifier__%
                           _stx154552_
                           _phi154553_
                           _ctx154554_))
                        _g160749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g160749_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx154488_ _val154489_ _rebind?154490_ _phi154491_ _ctx154492_)
        (let ((_rebind?154494_
               (if (not _rebind?154490_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?154490_) _rebind?154490_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx154488_)
           _val154489_
           _rebind?154494_
           _phi154491_
           _ctx154492_))))
    (define gx#bind-identifier!__0
      (lambda (_stx154499_ _val154500_)
        (let* ((_rebind?154502_ '#f)
               (_phi154504_ (gx#current-expander-phi))
               (_ctx154506_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx154499_
           _val154500_
           _rebind?154502_
           _phi154504_
           _ctx154506_))))
    (define gx#bind-identifier!__1
      (lambda (_stx154508_ _val154509_ _rebind?154510_)
        (let* ((_phi154512_ (gx#current-expander-phi))
               (_ctx154514_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx154508_
           _val154509_
           _rebind?154510_
           _phi154512_
           _ctx154514_))))
    (define gx#bind-identifier!__2
      (lambda (_stx154516_ _val154517_ _rebind?154518_ _phi154519_)
        (let ((_ctx154521_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx154516_
           _val154517_
           _rebind?154518_
           _phi154519_
           _ctx154521_))))
    (define gx#bind-identifier!
      (lambda _g160751_
        (let ((_g160750_ (##length _g160751_)))
          (cond ((##fx= _g160750_ 2)
                 (apply (lambda (_stx154499_ _val154500_)
                          (gx#bind-identifier!__0 _stx154499_ _val154500_))
                        _g160751_))
                ((##fx= _g160750_ 3)
                 (apply (lambda (_stx154508_ _val154509_ _rebind?154510_)
                          (gx#bind-identifier!__1
                           _stx154508_
                           _val154509_
                           _rebind?154510_))
                        _g160751_))
                ((##fx= _g160750_ 4)
                 (apply (lambda (_stx154516_
                                 _val154517_
                                 _rebind?154518_
                                 _phi154519_)
                          (gx#bind-identifier!__2
                           _stx154516_
                           _val154517_
                           _rebind?154518_
                           _phi154519_))
                        _g160751_))
                ((##fx= _g160750_ 5)
                 (apply (lambda (_stx154523_
                                 _val154524_
                                 _rebind?154525_
                                 _phi154526_
                                 _ctx154527_)
                          (gx#bind-identifier!__%
                           _stx154523_
                           _val154524_
                           _rebind?154525_
                           _phi154526_
                           _ctx154527_))
                        _g160751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g160751_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx154460_ _phi154461_ _ctx154462_)
        (let _lp154464_ ((_e154466_ _stx154460_)
                         (_marks154467_ (gx#current-expander-marks)))
          (if (symbol? _e154466_)
              (gx#core-resolve-binding
               _e154466_
               _phi154461_
               _phi154461_
               _ctx154462_
               (reverse _marks154467_))
              (if (gx#identifier-quote? _e154466_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e154466_ '1 gx#AST::t '#f)
                   _phi154461_
                   '0
                   (##unchecked-structure-ref
                    _e154466_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e154466_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e154466_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e154466_ '1 gx#AST::t '#f)
                       _phi154461_
                       _phi154461_
                       _ctx154462_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e154466_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks154467_))
                      (if (##structure-direct-instance-of?
                           _e154466_
                           'gx#syntax-wrap::t)
                          (_lp154464_
                           (##unchecked-structure-ref
                            _e154466_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e154466_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks154467_))
                          (if (##structure-instance-of?
                               _e154466_
                               'gerbil#AST::t)
                              (_lp154464_
                               (##unchecked-structure-ref
                                _e154466_
                                '1
                                gx#AST::t
                                '#f)
                               _marks154467_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx154460_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx154472_)
        (let* ((_phi154474_ (gx#current-expander-phi))
               (_ctx154476_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx154472_
           _phi154474_
           _ctx154476_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx154478_ _phi154479_)
        (let ((_ctx154481_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx154478_
           _phi154479_
           _ctx154481_))))
    (define gx#core-resolve-identifier
      (lambda _g160753_
        (let ((_g160752_ (##length _g160753_)))
          (cond ((##fx= _g160752_ 1)
                 (apply (lambda (_stx154472_)
                          (gx#core-resolve-identifier__0 _stx154472_))
                        _g160753_))
                ((##fx= _g160752_ 2)
                 (apply (lambda (_stx154478_ _phi154479_)
                          (gx#core-resolve-identifier__1
                           _stx154478_
                           _phi154479_))
                        _g160753_))
                ((##fx= _g160752_ 3)
                 (apply (lambda (_stx154483_ _phi154484_ _ctx154485_)
                          (gx#core-resolve-identifier__%
                           _stx154483_
                           _phi154484_
                           _ctx154485_))
                        _g160753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g160753_))))))
    (define gx#core-resolve-binding
      (lambda (_id154373_
               _phi154374_
               _src-phi154375_
               _ctx154376_
               _marks154377_)
        (letrec ((_resolve154379_
                  (lambda (_ctx154447_ _src-phi154448_ _key154449_)
                    (let _lp154451_ ((_ctx154453_
                                      (gx#core-context-shift
                                       _ctx154447_
                                       _phi154374_))
                                     (_dphi154454_
                                      (fx- _phi154374_ _src-phi154448_)))
                      (let ((_$e154456_
                             (gx#core-context-resolve
                              _ctx154453_
                              _key154449_)))
                        (if _$e154456_
                            (values _$e154456_)
                            (if (fxzero? _dphi154454_)
                                '#f
                                (if (fxpositive? _dphi154454_)
                                    (_lp154451_
                                     (gx#core-context-shift _ctx154453_ '-1)
                                     (fx- _dphi154454_ '1))
                                    (_lp154451_
                                     (gx#core-context-shift _ctx154453_ '1)
                                     (fx+ _dphi154454_ '1))))))))))
          (let _lp154381_ ((_ctx154383_ _ctx154376_)
                           (_src-phi154384_ _src-phi154375_)
                           (_rest154385_ _marks154377_))
            (let* ((_rest154386154394_ _rest154385_)
                   (_else154388154402_
                    (lambda ()
                      (_resolve154379_
                       _ctx154383_
                       _src-phi154384_
                       _id154373_)))
                   (_K154390154435_
                    (lambda (_rest154405_ _hd154406_)
                      (let* ((_hd154407154413_ _hd154406_)
                             (_E154409154417_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd154407154413_)))
                             (_K154410154427_
                              (lambda (_subst154420_)
                                (let ((_$e154424_
                                       (let ((_key154422_
                                              (if _subst154420_
                                                  (hash-get
                                                   _subst154420_
                                                   _id154373_)
                                                  '#f)))
                                         (if _key154422_
                                             (_resolve154379_
                                              _ctx154383_
                                              _src-phi154384_
                                              _key154422_)
                                             '#f))))
                                  (if _$e154424_
                                      _$e154424_
                                      (_lp154381_
                                       (##unchecked-structure-ref
                                        _hd154406_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd154406_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest154405_))))))
                        (if (##structure-instance-of?
                             _hd154407154413_
                             'gx#expander-mark::t)
                            (let* ((_e154411154430_
                                    (##unchecked-structure-ref
                                     _hd154407154413_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst154433_ _e154411154430_))
                              (_K154410154427_ _subst154433_))
                            (_E154409154417_))))))
              (if (##pair? _rest154386154394_)
                  (let ((_hd154391154438_ (##car _rest154386154394_))
                        (_tl154392154440_ (##cdr _rest154386154394_)))
                    (let* ((_hd154443_ _hd154391154438_)
                           (_rest154445_ _tl154392154440_))
                      (_K154390154435_ _rest154445_ _hd154443_)))
                  (_else154388154402_)))))))
    (define gx#core-bind!__%
      (lambda (_key154249_ _val154250_ _rebind?154251_ _phi154252_ _ctx154253_)
        (letrec ((_update-binding154255_
                  (lambda (_xval154326_)
                    (if (or (_rebind?154251_
                             _ctx154253_
                             _xval154326_
                             _val154250_)
                            (and (##structure-direct-instance-of?
                                  _xval154326_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval154326_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val154250_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val154250_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval154326_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val154250_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val154250_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval154326_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val154250_
                        (if (and (##structure-direct-instance-of?
                                  _val154250_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val154250_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval154326_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val154250_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval154326_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval154326_
                            (if (and (##structure-direct-instance-of?
                                      _val154250_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval154326_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key154249_
                                 (cons (##unchecked-structure-ref
                                        _val154250_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val154250_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval154326_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval154326_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval154326_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval154326_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key154249_
                                 _val154250_
                                 _xval154326_))))))
                 (_gensubst154256_
                  (lambda (_subst154321_ _id154322_)
                    (let ((_eid154324_
                           (gensym (if (uninterned-symbol? _id154322_)
                                       '%
                                       _id154322_))))
                      (hash-put! _subst154321_ _id154322_ _eid154324_)
                      _eid154324_)))
                 (_subst!154257_
                  (lambda (_key154259_)
                    (let* ((_key154260154268_ _key154259_)
                           (_else154262154276_ (lambda () _key154259_))
                           (_K154264154309_
                            (lambda (_mark154279_ _id154280_)
                              (let* ((_mark154281154287_ _mark154279_)
                                     (_E154283154291_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark154281154287_)))
                                     (_K154284154301_
                                      (lambda (_subst154294_)
                                        (if (not _subst154294_)
                                            (let ((_subst154296_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark154279_
                                               _subst154296_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst154256_
                                               _subst154296_
                                               _id154280_))
                                            (let ((_$e154298_
                                                   (hash-get
                                                    _subst154294_
                                                    _id154280_)))
                                              (if _$e154298_
                                                  (values _$e154298_)
                                                  (_gensubst154256_
                                                   _subst154294_
                                                   _id154280_)))))))
                                (if (##structure-instance-of?
                                     _mark154281154287_
                                     'gx#expander-mark::t)
                                    (let* ((_e154285154304_
                                            (##unchecked-structure-ref
                                             _mark154281154287_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst154307_ _e154285154304_))
                                      (_K154284154301_ _subst154307_))
                                    (_E154283154291_))))))
                      (if (##pair? _key154260154268_)
                          (let ((_hd154265154312_ (##car _key154260154268_))
                                (_tl154266154314_ (##cdr _key154260154268_)))
                            (let* ((_id154317_ _hd154265154312_)
                                   (_mark154319_ _tl154266154314_))
                              (_K154264154309_ _mark154319_ _id154317_)))
                          (_else154262154276_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx154253_ _phi154252_)
           (_subst!154257_ _key154249_)
           _val154250_
           _update-binding154255_))))
    (define gx#core-bind!__0
      (lambda (_key154343_ _val154344_)
        (let* ((_rebind?154346_ false)
               (_phi154348_ (gx#current-expander-phi))
               (_ctx154350_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key154343_
           _val154344_
           _rebind?154346_
           _phi154348_
           _ctx154350_))))
    (define gx#core-bind!__1
      (lambda (_key154352_ _val154353_ _rebind?154354_)
        (let* ((_phi154356_ (gx#current-expander-phi))
               (_ctx154358_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key154352_
           _val154353_
           _rebind?154354_
           _phi154356_
           _ctx154358_))))
    (define gx#core-bind!__2
      (lambda (_key154360_ _val154361_ _rebind?154362_ _phi154363_)
        (let ((_ctx154365_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key154360_
           _val154361_
           _rebind?154362_
           _phi154363_
           _ctx154365_))))
    (define gx#core-bind!
      (lambda _g160755_
        (let ((_g160754_ (##length _g160755_)))
          (cond ((##fx= _g160754_ 2)
                 (apply (lambda (_key154343_ _val154344_)
                          (gx#core-bind!__0 _key154343_ _val154344_))
                        _g160755_))
                ((##fx= _g160754_ 3)
                 (apply (lambda (_key154352_ _val154353_ _rebind?154354_)
                          (gx#core-bind!__1
                           _key154352_
                           _val154353_
                           _rebind?154354_))
                        _g160755_))
                ((##fx= _g160754_ 4)
                 (apply (lambda (_key154360_
                                 _val154361_
                                 _rebind?154362_
                                 _phi154363_)
                          (gx#core-bind!__2
                           _key154360_
                           _val154361_
                           _rebind?154362_
                           _phi154363_))
                        _g160755_))
                ((##fx= _g160754_ 5)
                 (apply (lambda (_key154367_
                                 _val154368_
                                 _rebind?154369_
                                 _phi154370_
                                 _ctx154371_)
                          (gx#core-bind!__%
                           _key154367_
                           _val154368_
                           _rebind?154369_
                           _phi154370_
                           _ctx154371_))
                        _g160755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g160755_))))))
    (define gx#core-identifier-key
      (lambda (_stx154183_)
        (if (symbol? _stx154183_)
            (let* ((_g154184154192_ (gx#current-expander-marks))
                   (_else154186154200_ (lambda () _stx154183_))
                   (_K154188154205_
                    (lambda (_hd154203_) (cons _stx154183_ _hd154203_))))
              (if (##pair? _g154184154192_)
                  (let* ((_hd154189154208_ (##car _g154184154192_))
                         (_hd154211_ _hd154189154208_))
                    (_K154188154205_ _hd154211_))
                  (_else154186154200_)))
            (if (gx#identifier? _stx154183_)
                (let* ((_id154213_ (gx#syntax-local-unwrap _stx154183_))
                       (_eid154215_ (gx#stx-e _id154213_))
                       (_marks154217_ (gx#stx-identifier-marks* _id154213_)))
                  (let* ((_marks154219154227_ _marks154217_)
                         (_else154221154235_ (lambda () _eid154215_))
                         (_K154223154240_
                          (lambda (_hd154238_) (cons _eid154215_ _hd154238_))))
                    (if (##pair? _marks154219154227_)
                        (let* ((_hd154224154243_ (##car _marks154219154227_))
                               (_hd154246_ _hd154224154243_))
                          (_K154223154240_ _hd154246_))
                        (_else154221154235_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx154183_)))))
    (define gx#core-context-shift
      (lambda (_ctx154128_ _phi154129_)
        (letrec ((_make-phi154131_
                  (lambda (_super154181_)
                    (let ((__obj160726
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj160726
                       (gensym 'phi)
                       _super154181_)
                      __obj160726)))
                 (_make-phi/up154132_
                  (lambda (_ctx154176_ _super154177_)
                    (let ((_ctx+1154179_ (_make-phi154131_ _super154177_)))
                      (##unchecked-structure-set!
                       _ctx154176_
                       _ctx+1154179_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1154179_
                       _ctx154176_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1154179_)))
                 (_make-phi/down154133_
                  (lambda (_ctx154171_ _super154172_)
                    (let ((_ctx-1154174_ (_make-phi154131_ _super154172_)))
                      (##unchecked-structure-set!
                       _ctx-1154174_
                       _ctx154171_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx154171_
                       _ctx-1154174_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1154174_)))
                 (_shift154134_
                  (lambda (_ctx154155_
                           _delta154156_
                           _make-delta-context154157_
                           _phi154158_
                           _K154159_)
                    (let ((_$e154161_
                           (##unchecked-structure-ref
                            _ctx154155_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e154161_
                          ((lambda (_super154164_)
                             (let* ((_super154166_
                                     (_K154159_ _super154164_ _delta154156_))
                                    (_ctx+d154168_
                                     (_make-delta-context154157_
                                      _ctx154155_
                                      _super154166_)))
                               (_K154159_
                                _ctx+d154168_
                                (fx- _phi154158_ _delta154156_))))
                           _$e154161_)
                          (error '"Bad context" _ctx154155_))))))
          (let _K154136_ ((_ctx154138_ _ctx154128_) (_phi154139_ _phi154129_))
            (if (fxzero? _phi154139_)
                _ctx154138_
                (if (fx> (##vector-length _ctx154138_) '3)
                    (if (fxpositive? _phi154139_)
                        (let ((_$e154141_
                               (##unchecked-structure-ref
                                _ctx154138_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e154141_
                              ((lambda (_g154143154145_)
                                 (_K154136_
                                  _g154143154145_
                                  (fx- _phi154139_ '1)))
                               _$e154141_)
                              (_shift154134_
                               _ctx154138_
                               '1
                               _make-phi/up154132_
                               _phi154139_
                               _K154136_)))
                        (let ((_$e154148_
                               (##unchecked-structure-ref
                                _ctx154138_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e154148_
                              ((lambda (_g154150154152_)
                                 (_K154136_
                                  _g154150154152_
                                  (fx+ _phi154139_ '1)))
                               _$e154148_)
                              (_shift154134_
                               _ctx154138_
                               '-1
                               _make-phi/down154133_
                               _phi154139_
                               _K154136_))))
                    _ctx154138_))))))
    (define gx#core-context-get
      (lambda (_ctx154125_ _key154126_)
        (hash-get
         (##unchecked-structure-ref _ctx154125_ '2 gx#expander-context::t '#f)
         _key154126_)))
    (define gx#core-context-put!
      (lambda (_ctx154121_ _key154122_ _val154123_)
        (hash-put!
         (##unchecked-structure-ref _ctx154121_ '2 gx#expander-context::t '#f)
         _key154122_
         _val154123_)))
    (define gx#core-context-resolve
      (lambda (_ctx154108_ _key154109_)
        (let _lp154111_ ((_ctx154113_ _ctx154108_))
          (let ((_$e154115_ (gx#core-context-get _ctx154113_ _key154109_)))
            (if _$e154115_
                (values _$e154115_)
                (let ((_$e154118_
                       (if (fx> (##vector-length _ctx154113_) '3)
                           (##unchecked-structure-ref
                            _ctx154113_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e154118_ (_lp154111_ _$e154118_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx154098_ _key154099_ _val154100_ _rebind154101_)
        (let ((_$e154103_ (gx#core-context-get _ctx154098_ _key154099_)))
          (if _$e154103_
              ((lambda (_xval154106_)
                 (gx#core-context-put!
                  _ctx154098_
                  _key154099_
                  (_rebind154101_ _xval154106_)))
               _$e154103_)
              (gx#core-context-put! _ctx154098_ _key154099_ _val154100_)))))
    (define gx#core-context-top__%
      (lambda (_ctx154076_ _stop?154077_)
        (let _lp154079_ ((_ctx154081_ _ctx154076_))
          (if (_stop?154077_ _ctx154081_)
              _ctx154081_
              (if (##structure-instance-of? _ctx154081_ 'gx#context-phi::t)
                  (_lp154079_
                   (##unchecked-structure-ref
                    _ctx154081_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx154087_ (gx#current-expander-context))
               (_stop?154089_ gx#top-context?))
          (gx#core-context-top__% _ctx154087_ _stop?154089_))))
    (define gx#core-context-top__1
      (lambda (_ctx154091_)
        (let ((_stop?154093_ gx#top-context?))
          (gx#core-context-top__% _ctx154091_ _stop?154093_))))
    (define gx#core-context-top
      (lambda _g160757_
        (let ((_g160756_ (##length _g160757_)))
          (cond ((##fx= _g160756_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g160757_))
                ((##fx= _g160756_ 1)
                 (apply (lambda (_ctx154091_)
                          (gx#core-context-top__1 _ctx154091_))
                        _g160757_))
                ((##fx= _g160756_ 2)
                 (apply (lambda (_ctx154095_ _stop?154096_)
                          (gx#core-context-top__% _ctx154095_ _stop?154096_))
                        _g160757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g160757_))))))
    (define gx#core-context-root__%
      (lambda (_ctx154061_)
        (let _lp154063_ ((_ctx154065_ _ctx154061_))
          (if (##structure-instance-of? _ctx154065_ 'gx#context-phi::t)
              (_lp154063_
               (##unchecked-structure-ref
                _ctx154065_
                '3
                gx#phi-context::t
                '#f))
              _ctx154065_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx154071_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx154071_))))
    (define gx#core-context-root
      (lambda _g160759_
        (let ((_g160758_ (##length _g160759_)))
          (cond ((##fx= _g160758_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g160759_))
                ((##fx= _g160758_ 1)
                 (apply (lambda (_ctx154073_)
                          (gx#core-context-root__% _ctx154073_))
                        _g160759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g160759_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx154042_ . __154039154043_)
        (let ((_$e154046_ (gx#current-expander-allow-rebind?)))
          (if _$e154046_
              _$e154046_
              (if (##structure-instance-of? _ctx154042_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx154042_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx154042_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx154053_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx154053_))))
    (define gx#core-context-rebind?
      (lambda _g160761_
        (let ((_g160760_ (##length _g160761_)))
          (cond ((##fx= _g160760_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g160761_))
                ((##fx= _g160760_ 1)
                 (apply (lambda (_ctx154055_)
                          (gx#core-context-rebind?__% _ctx154055_))
                        _g160761_))
                ((##fx>= _g160760_ 1)
                 (apply gx#core-context-rebind?__% _g160761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g160761_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx154025_)
        (let ((_$e154027_ (gx#core-context-top__1 _ctx154025_)))
          (if _$e154027_
              ((lambda (_ctx154030_)
                 (if (##structure-instance-of?
                      _ctx154030_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx154030_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e154027_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx154036_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx154036_))))
    (define gx#core-context-namespace
      (lambda _g160763_
        (let ((_g160762_ (##length _g160763_)))
          (cond ((##fx= _g160762_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g160763_))
                ((##fx= _g160762_ 1)
                 (apply (lambda (_ctx154038_)
                          (gx#core-context-namespace__% _ctx154038_))
                        _g160763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g160763_))))))
    (define gx#expander-binding?__%
      (lambda (_bind154011_ _is?154012_)
        (if (##structure-direct-instance-of?
             _bind154011_
             'gx#syntax-binding::t)
            (_is?154012_
             (##unchecked-structure-ref
              _bind154011_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind154017_)
        (let ((_is?154019_ gx#expander?))
          (gx#expander-binding?__% _bind154017_ _is?154019_))))
    (define gx#expander-binding?
      (lambda _g160765_
        (let ((_g160764_ (##length _g160765_)))
          (cond ((##fx= _g160764_ 1)
                 (apply (lambda (_bind154017_)
                          (gx#expander-binding?__0 _bind154017_))
                        _g160765_))
                ((##fx= _g160764_ 2)
                 (apply (lambda (_bind154021_ _is?154022_)
                          (gx#expander-binding?__% _bind154021_ _is?154022_))
                        _g160765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g160765_))))))
    (define gx#core-expander-binding?
      (lambda (_bind154008_)
        (gx#expander-binding?__% _bind154008_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind154006_)
        (gx#expander-binding?__% _bind154006_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind154000_)
        (letrec ((_direct-special-form?154002_
                  (lambda (_obj154004_)
                    (##structure-direct-instance-of?
                     _obj154004_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind154000_
           _direct-special-form?154002_))))
    (define gx#special-form-binding?
      (lambda (_bind153998_)
        (gx#expander-binding?__% _bind153998_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind153989_)
        (letrec ((_feature?153991_
                  (lambda (_e153993_)
                    (let ((_$e153995_
                           (##structure-instance-of?
                            _e153993_
                            'gx#feature-expander::t)))
                      (if _$e153995_
                          _$e153995_
                          (##structure-instance-of?
                           _e153993_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind153989_ _feature?153991_))))
    (define gx#private-feature-binding?
      (lambda (_bind153987_)
        (gx#expander-binding?__% _bind153987_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id153974_ _bound?153975_)
        (if (gx#identifier? _id153974_)
            (_bound?153975_ (gx#resolve-identifier__0 _id153974_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id153980_)
        (let ((_bound?153982_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id153980_ _bound?153982_))))
    (define gx#core-bound-identifier?
      (lambda _g160767_
        (let ((_g160766_ (##length _g160767_)))
          (cond ((##fx= _g160766_ 1)
                 (apply (lambda (_id153980_)
                          (gx#core-bound-identifier?__0 _id153980_))
                        _g160767_))
                ((##fx= _g160766_ 2)
                 (apply (lambda (_id153984_ _bound?153985_)
                          (gx#core-bound-identifier?__%
                           _id153984_
                           _bound?153985_))
                        _g160767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g160767_))))))
    (define gx#core-identifier=?
      (lambda (_x153964_ _y153965_)
        (letrec ((_y=?153967_
                  (lambda (_xid153971_)
                    ((if (list? _y153965_) memq eq?) _xid153971_ _y153965_))))
          (let ((_bind153969_ (gx#resolve-identifier__0 _x153964_)))
            (if (##structure-instance-of? _bind153969_ 'gx#binding::t)
                (_y=?153967_
                 (##unchecked-structure-ref _bind153969_ '1 gx#binding::t '#f))
                (_y=?153967_ (gx#stx-e _x153964_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e153962_)
        (if (interned-symbol? _e153962_)
            (string-index__0 (symbol->string _e153962_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx153917_ _src153918_ _ctx153919_ _marks153920_)
        (if (##structure? _stx153917_)
            (let ((_$e153922_ (gx#sealed-syntax-unwrap _stx153917_)))
              (if _$e153922_
                  (values _$e153922_)
                  (if (gx#identifier? _stx153917_)
                      (let ((_id153925_
                             (gx#stx-unwrap__% _stx153917_ _marks153920_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id153925_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e153927_
                                (##unchecked-structure-ref
                                 _id153925_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e153927_ _$e153927_ _src153918_))
                         _ctx153919_
                         (##unchecked-structure-ref
                          _id153925_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx153917_)
                       (let ((_$e153930_ (gx#stx-source _stx153917_)))
                         (if _$e153930_ _$e153930_ _src153918_))
                       _ctx153919_
                       (reverse _marks153920_)))))
            (##structure
             gx#syntax-quote::t
             _stx153917_
             _src153918_
             _ctx153919_
             (reverse _marks153920_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx153936_)
        (let* ((_src153938_ '#f)
               (_ctx153940_ (gx#current-expander-context))
               (_marks153942_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx153936_
           _src153938_
           _ctx153940_
           _marks153942_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx153944_ _src153945_)
        (let* ((_ctx153947_ (gx#current-expander-context))
               (_marks153949_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx153944_
           _src153945_
           _ctx153947_
           _marks153949_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx153951_ _src153952_ _ctx153953_)
        (let ((_marks153955_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx153951_
           _src153952_
           _ctx153953_
           _marks153955_))))
    (define gx#core-quote-syntax
      (lambda _g160769_
        (let ((_g160768_ (##length _g160769_)))
          (cond ((##fx= _g160768_ 1)
                 (apply (lambda (_stx153936_)
                          (gx#core-quote-syntax__0 _stx153936_))
                        _g160769_))
                ((##fx= _g160768_ 2)
                 (apply (lambda (_stx153944_ _src153945_)
                          (gx#core-quote-syntax__1 _stx153944_ _src153945_))
                        _g160769_))
                ((##fx= _g160768_ 3)
                 (apply (lambda (_stx153951_ _src153952_ _ctx153953_)
                          (gx#core-quote-syntax__2
                           _stx153951_
                           _src153952_
                           _ctx153953_))
                        _g160769_))
                ((##fx= _g160768_ 4)
                 (apply (lambda (_stx153957_
                                 _src153958_
                                 _ctx153959_
                                 _marks153960_)
                          (gx#core-quote-syntax__%
                           _stx153957_
                           _src153958_
                           _ctx153959_
                           _marks153960_))
                        _g160769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g160769_))))))
    (define gx#core-cons
      (lambda (_hd153913_ _tl153914_)
        (cons (gx#core-quote-syntax__0 _hd153913_) _tl153914_)))
    (define gx#core-list
      (lambda (_hd153910_ . _rest153911_)
        (cons (gx#core-quote-syntax__0 _hd153910_) _rest153911_)))
    (define gx#core-cons*
      (lambda (_hd153907_ . _rest153908_)
        (apply cons* (gx#core-quote-syntax__0 _hd153907_) _rest153908_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path153881_ _rel153882_)
        (let ((_path153894_ (gx#stx-e _stx-path153881_))
              (_reldir153895_
               (let _lp153884_ ((_relsrc153886_
                                 (let ((_$e153891_
                                        (gx#stx-source _stx-path153881_)))
                                   (if _$e153891_ _$e153891_ _rel153882_))))
                 (if (##structure-instance-of? _relsrc153886_ 'gerbil#AST::t)
                     (_lp153884_
                      (let ((_$e153888_ (gx#stx-source _relsrc153886_)))
                        (if _$e153888_ _$e153888_ (gx#stx-e _relsrc153886_))))
                     (if (source-location-path? _relsrc153886_)
                         (path-directory (source-location-path _relsrc153886_))
                         (if (string? _relsrc153886_)
                             (path-directory _relsrc153886_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path153894_ (path-normalize _reldir153895_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path153900_)
        (let ((_rel153902_ '#f))
          (gx#core-resolve-path__% _stx-path153900_ _rel153902_))))
    (define gx#core-resolve-path
      (lambda _g160771_
        (let ((_g160770_ (##length _g160771_)))
          (cond ((##fx= _g160770_ 1)
                 (apply (lambda (_stx-path153900_)
                          (gx#core-resolve-path__0 _stx-path153900_))
                        _g160771_))
                ((##fx= _g160770_ 2)
                 (apply (lambda (_stx-path153904_ _rel153905_)
                          (gx#core-resolve-path__%
                           _stx-path153904_
                           _rel153905_))
                        _g160771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g160771_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr153837_ _ctx153838_)
        (let* ((_repr153839153846_ _repr153837_)
               (_E153841153850_
                (lambda () (error '"No clause matching" _repr153839153846_)))
               (_K153842153858_
                (lambda (_subs153853_ _phi153854_)
                  (let ((_subst153856_
                         (if (not (null? _subs153853_))
                             (list->hash-table-eq _subs153853_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst153856_
                     _ctx153838_
                     _phi153854_
                     '#f)))))
          (if (##pair? _repr153839153846_)
              (let ((_hd153843153861_ (##car _repr153839153846_))
                    (_tl153844153863_ (##cdr _repr153839153846_)))
                (let* ((_phi153866_ _hd153843153861_)
                       (_subs153868_ _tl153844153863_))
                  (_K153842153858_ _subs153868_ _phi153866_)))
              (_E153841153850_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr153873_)
        (let ((_ctx153875_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr153873_ _ctx153875_))))
    (define gx#core-deserialize-mark
      (lambda _g160773_
        (let ((_g160772_ (##length _g160773_)))
          (cond ((##fx= _g160772_ 1)
                 (apply (lambda (_repr153873_)
                          (gx#core-deserialize-mark__0 _repr153873_))
                        _g160773_))
                ((##fx= _g160772_ 2)
                 (apply (lambda (_repr153877_ _ctx153878_)
                          (gx#core-deserialize-mark__%
                           _repr153877_
                           _ctx153878_))
                        _g160773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g160773_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx153834_)
        (gx#stx-rewrap _stx153834_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx153832_)
        (gx#stx-unwrap__% _stx153832_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx153802_)
        (let* ((_g153803153811_ (gx#current-expander-marks))
               (_else153805153819_ (lambda () _stx153802_))
               (_K153807153824_
                (lambda (_hd153822_)
                  (gx#stx-apply-mark _stx153802_ _hd153822_))))
          (if (##pair? _g153803153811_)
              (let* ((_hd153808153827_ (##car _g153803153811_))
                     (_hd153830_ _hd153808153827_))
                (_K153807153824_ _hd153830_))
              (_else153805153819_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx153787_ _E153788_)
        (let ((_bind153790_ (gx#resolve-identifier__0 _stx153787_)))
          (if (##structure-direct-instance-of?
               _bind153790_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind153790_
               '4
               gx#syntax-binding::t
               '#f)
              (_E153788_ _stx153787_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx153795_)
        (let ((_E153797_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx153795_ _E153797_))))
    (define gx#syntax-local-e
      (lambda _g160775_
        (let ((_g160774_ (##length _g160775_)))
          (cond ((##fx= _g160774_ 1)
                 (apply (lambda (_stx153795_)
                          (gx#syntax-local-e__0 _stx153795_))
                        _g160775_))
                ((##fx= _g160774_ 2)
                 (apply (lambda (_stx153799_ _E153800_)
                          (gx#syntax-local-e__% _stx153799_ _E153800_))
                        _g160775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g160775_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx153771_ _E153772_)
        (let ((_e153774_ (gx#syntax-local-e__% _stx153771_ _E153772_)))
          (if (##structure-instance-of? _e153774_ 'gx#expander::t)
              (##structure-ref _e153774_ '1 gx#expander::t '#f)
              _e153774_))))
    (define gx#syntax-local-value__0
      (lambda (_stx153779_)
        (let ((_E153781_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx153779_ _E153781_))))
    (define gx#syntax-local-value
      (lambda _g160777_
        (let ((_g160776_ (##length _g160777_)))
          (cond ((##fx= _g160776_ 1)
                 (apply (lambda (_stx153779_)
                          (gx#syntax-local-value__0 _stx153779_))
                        _g160777_))
                ((##fx= _g160776_ 2)
                 (apply (lambda (_stx153783_ _E153784_)
                          (gx#syntax-local-value__% _stx153783_ _E153784_))
                        _g160777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g160777_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx153768_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx153768_)))))
