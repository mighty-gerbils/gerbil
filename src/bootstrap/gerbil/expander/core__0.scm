(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708289481)
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
      (lambda _$args158231_
        (apply make-instance gx#expander-context::t _$args158231_)))
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
      (lambda _$args158228_
        (apply make-instance gx#root-context::t _$args158228_)))
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
      (lambda _$args158225_
        (apply make-instance gx#phi-context::t _$args158225_)))
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
      (lambda _$args158222_
        (apply make-instance gx#top-context::t _$args158222_)))
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
      (lambda _$args158219_
        (apply make-instance gx#module-context::t _$args158219_)))
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
      (lambda _$args158216_
        (apply make-instance gx#prelude-context::t _$args158216_)))
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
      (lambda _$args158213_
        (apply make-instance gx#local-context::t _$args158213_)))
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
      (lambda (_self158197_ _id158198_ _super158199_)
        (if (##fx< '3 (##structure-length _self158197_))
            (begin
              (##unchecked-structure-set!
               _self158197_
               _id158198_
               '1
               (##structure-type _self158197_)
               '#f)
              (##unchecked-structure-set!
               _self158197_
               (make-hash-table-eq)
               '2
               (##structure-type _self158197_)
               '#f)
              (##unchecked-structure-set!
               _self158197_
               _super158199_
               '3
               (##structure-type _self158197_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self158197_
                   '3
                   (##vector-length _self158197_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self158204_ _id158205_)
        (let ((_super158207_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self158204_ _id158205_ _super158207_))))
    (define gx#phi-context:::init!
      (lambda _g162341_
        (let ((_g162340_ (##length _g162341_)))
          (cond ((##fx= _g162340_ 2)
                 (apply (lambda (_self158204_ _id158205_)
                          (gx#phi-context:::init!__0 _self158204_ _id158205_))
                        _g162341_))
                ((##fx= _g162340_ 3)
                 (apply (lambda (_self158209_ _id158210_ _super158211_)
                          (gx#phi-context:::init!__%
                           _self158209_
                           _id158210_
                           _super158211_))
                        _g162341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g162341_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self158061_ _super158062_)
        (if (##fx< '3 (##structure-length _self158061_))
            (begin
              (##unchecked-structure-set!
               _self158061_
               (gensym 'L)
               '1
               (##structure-type _self158061_)
               '#f)
              (##unchecked-structure-set!
               _self158061_
               (make-hash-table-eq)
               '2
               (##structure-type _self158061_)
               '#f)
              (##unchecked-structure-set!
               _self158061_
               _super158062_
               '3
               (##structure-type _self158061_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self158061_
                   '3
                   (##vector-length _self158061_)))))
    (define gx#local-context:::init!__0
      (lambda (_self158067_)
        (let ((_super158069_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self158067_ _super158069_))))
    (define gx#local-context:::init!
      (lambda _g162343_
        (let ((_g162342_ (##length _g162343_)))
          (cond ((##fx= _g162342_ 1)
                 (apply (lambda (_self158067_)
                          (gx#local-context:::init!__0 _self158067_))
                        _g162343_))
                ((##fx= _g162342_ 2)
                 (apply (lambda (_self158071_ _super158072_)
                          (gx#local-context:::init!__%
                           _self158071_
                           _super158072_))
                        _g162343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g162343_))))))
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
      (lambda _$args157935_ (apply make-instance gx#binding::t _$args157935_)))
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
      (lambda _$args157932_
        (apply make-instance gx#runtime-binding::t _$args157932_)))
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
      (lambda _$args157929_
        (apply make-instance gx#local-binding::t _$args157929_)))
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
      (lambda _$args157926_
        (apply make-instance gx#top-binding::t _$args157926_)))
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
      (lambda _$args157923_
        (apply make-instance gx#module-binding::t _$args157923_)))
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
      (lambda _$args157920_
        (apply make-instance gx#extern-binding::t _$args157920_)))
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
      (lambda _$args157917_
        (apply make-instance gx#syntax-binding::t _$args157917_)))
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
      (lambda _$args157914_
        (apply make-instance gx#import-binding::t _$args157914_)))
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
      (lambda _$args157911_
        (apply make-instance gx#alias-binding::t _$args157911_)))
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
      (lambda _$args157908_
        (apply make-instance gx#expander::t _$args157908_)))
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
      (lambda _$args157905_
        (apply make-instance gx#core-expander::t _$args157905_)))
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
      (lambda _$args157902_
        (apply make-instance gx#expression-form::t _$args157902_)))
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
      (lambda _$args157899_
        (apply make-instance gx#special-form::t _$args157899_)))
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
      (lambda _$args157896_
        (apply make-instance gx#definition-form::t _$args157896_)))
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
      (lambda _$args157893_
        (apply make-instance gx#top-special-form::t _$args157893_)))
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
      (lambda _$args157890_
        (apply make-instance gx#module-special-form::t _$args157890_)))
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
      (lambda _$args157887_
        (apply make-instance gx#feature-expander::t _$args157887_)))
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
      (lambda _$args157884_
        (apply make-instance gx#private-feature-expander::t _$args157884_)))
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
      (lambda _$args157881_
        (apply make-instance gx#reserved-expander::t _$args157881_)))
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
      (lambda _$args157878_
        (apply make-instance gx#macro-expander::t _$args157878_)))
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
      (lambda _$args157875_
        (apply make-instance gx#rename-macro-expander::t _$args157875_)))
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
      (lambda _$args157872_
        (apply make-instance gx#user-expander::t _$args157872_)))
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
      (lambda _$args157869_
        (apply make-instance gx#expander-mark::t _$args157869_)))
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
      (lambda (_ctx157854_ _message157855_ _stx157856_ . _details157857_)
        (let ((_ctx157867_
               (let ((_$e157859_ _ctx157854_))
                 (if _$e157859_
                     _$e157859_
                     (let ((_$e157862_ (gx#core-context-top__0)))
                       (if _$e157862_
                           ((lambda (_ctx157865_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx157865_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e157862_)
                           '#f))))))
          (raise (make-syntax-error
                  _message157855_
                  (cons _stx157856_ _details157857_)
                  _ctx157867_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx157841_ _expression?157842_)
        (gx#eval-syntax* (gx#core-expand__% _stx157841_ _expression?157842_))))
    (define gx#eval-syntax__0
      (lambda (_stx157847_)
        (let ((_expression?157849_ '#f))
          (gx#eval-syntax__% _stx157847_ _expression?157849_))))
    (define gx#eval-syntax
      (lambda _g162345_
        (let ((_g162344_ (##length _g162345_)))
          (cond ((##fx= _g162344_ 1)
                 (apply (lambda (_stx157847_) (gx#eval-syntax__0 _stx157847_))
                        _g162345_))
                ((##fx= _g162344_ 2)
                 (apply (lambda (_stx157851_ _expression?157852_)
                          (gx#eval-syntax__% _stx157851_ _expression?157852_))
                        _g162345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g162345_))))))
    (define gx#eval-syntax*
      (lambda (_stx157838_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx157838_))))
    (define gx#core-expand__%
      (lambda (_stx157825_ _expression?157826_)
        (if _expression?157826_
            (gx#core-expand-expression _stx157825_)
            (gx#core-expand-top _stx157825_))))
    (define gx#core-expand__0
      (lambda (_stx157831_)
        (let ((_expression?157833_ '#f))
          (gx#core-expand__% _stx157831_ _expression?157833_))))
    (define gx#core-expand
      (lambda _g162347_
        (let ((_g162346_ (##length _g162347_)))
          (cond ((##fx= _g162346_ 1)
                 (apply (lambda (_stx157831_) (gx#core-expand__0 _stx157831_))
                        _g162347_))
                ((##fx= _g162346_ 2)
                 (apply (lambda (_stx157835_ _expression?157836_)
                          (gx#core-expand__% _stx157835_ _expression?157836_))
                        _g162347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g162347_))))))
    (define gx#core-expand-top
      (lambda (_stx157792_)
        (let* ((_stx157794_ (gx#core-expand*__0 _stx157792_))
               (_e157795157802_ _stx157794_)
               (_E157797157806_
                (lambda () (gx#core-expand-expression _stx157794_)))
               (_E157796157820_
                (lambda ()
                  (if (gx#stx-pair? _e157795157802_)
                      (let ((_e157798157810_ (gx#syntax-e _e157795157802_)))
                        (let ((_hd157799157813_ (##car _e157798157810_))
                              (_tl157800157815_ (##cdr _e157798157810_)))
                          (let ((_form157818_ _hd157799157813_))
                            (if (gx#core-bound-identifier?__0 _form157818_)
                                _stx157794_
                                (_E157797157806_)))))
                      (_E157797157806_)))))
          (_E157796157820_))))
    (define gx#core-expand-expression
      (lambda (_stx157739_)
        (letrec ((_sealed-expression?157741_
                  (lambda (_hd157762_)
                    (if (gx#sealed-syntax? _hd157762_)
                        (let* ((_e157763157770_ _hd157762_)
                               (_E157765157774_ (lambda () '#f))
                               (_E157764157788_
                                (lambda ()
                                  (if (gx#stx-pair? _e157763157770_)
                                      (let ((_e157766157778_
                                             (gx#syntax-e _e157763157770_)))
                                        (let ((_hd157767157781_
                                               (##car _e157766157778_))
                                              (_tl157768157783_
                                               (##cdr _e157766157778_)))
                                          (let ((_form157786_
                                                 _hd157767157781_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form157786_
                                                 gx#expression-form-binding?)
                                                (_E157765157774_)))))
                                      (_E157765157774_)))))
                          (_E157764157788_))
                        '#f)))
                 (_illegal-expression157742_
                  (lambda (_hd157760_ . _g162348_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx157739_
                     _hd157760_)))
                 (_expand-e157743_
                  (lambda (_form157755_ _hd157756_)
                    (let ((_bind157758_
                           (if (##structure-instance-of?
                                _form157755_
                                'gx#binding::t)
                               _form157755_
                               (gx#resolve-identifier__0 _form157755_))))
                      (if (gx#core-expander-binding? _bind157758_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind157758_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd157756_
                            (gx#stx-source _stx157739_)))
                          (if (##structure-direct-instance-of?
                               _bind157758_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind157758_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd157756_
                                 (gx#stx-source _stx157739_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx157739_
                               _form157755_)))))))
          (let ((_hd157745_ (gx#core-expand-head _stx157739_)))
            (if (_sealed-expression?157741_ _hd157745_)
                _hd157745_
                (if (gx#stx-pair? _hd157745_)
                    (let* ((_form157747_ (gx#stx-car _hd157745_))
                           (_bind157749_
                            (if (gx#identifier? _form157747_)
                                (gx#resolve-identifier__0 _form157747_)
                                '#f)))
                      (if (or (not _bind157749_)
                              (not (gx#core-expander-binding? _bind157749_)))
                          (_expand-e157743_ '%%app (cons '%%app _hd157745_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind157749_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd157745_
                               _illegal-expression157742_)
                              (if (gx#expression-form-binding? _bind157749_)
                                  (_expand-e157743_ _bind157749_ _hd157745_)
                                  (if (gx#direct-special-form-binding?
                                       _bind157749_)
                                      (gx#core-expand-expression
                                       (_expand-e157743_
                                        _bind157749_
                                        _hd157745_))
                                      (_illegal-expression157742_
                                       _hd157745_))))))
                    (if (gx#core-bound-identifier?__0 _hd157745_)
                        (_illegal-expression157742_ _hd157745_)
                        (if (gx#identifier? _hd157745_)
                            (_expand-e157743_
                             '%%ref
                             (cons '%%ref (cons _hd157745_ '())))
                            (if (gx#stx-datum? _hd157745_)
                                (_expand-e157743_
                                 '%#quote
                                 (cons '%#quote (cons _hd157745_ '())))
                                (_illegal-expression157742_
                                 _hd157745_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx157734_)
        (call-with-parameters
         (lambda ()
           (let ((_stx157737_ (gx#core-expand-expression _stx157734_)))
             (values _stx157737_ (gx#eval-syntax* _stx157737_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx157715_ _stop?157716_)
        (let _lp157718_ ((_stx157720_ _stx157715_))
          (if (_stop?157716_ _stx157720_)
              _stx157720_
              (let ((_rstx157722_ (gx#core-expand1 _stx157720_)))
                (if (eq? _stx157720_ _rstx157722_)
                    _stx157720_
                    (_lp157718_ _rstx157722_)))))))
    (define gx#core-expand*__0
      (lambda (_stx157727_)
        (let ((_stop?157729_ false))
          (gx#core-expand*__% _stx157727_ _stop?157729_))))
    (define gx#core-expand*
      (lambda _g162350_
        (let ((_g162349_ (##length _g162350_)))
          (cond ((##fx= _g162349_ 1)
                 (apply (lambda (_stx157727_) (gx#core-expand*__0 _stx157727_))
                        _g162350_))
                ((##fx= _g162349_ 2)
                 (apply (lambda (_stx157731_ _stop?157732_)
                          (gx#core-expand*__% _stx157731_ _stop?157732_))
                        _g162350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g162350_))))))
    (define gx#core-expand1
      (lambda (_stx157671_)
        (letrec ((_step157673_
                  (lambda (_hd157710_)
                    (let ((_bind157712_ (gx#resolve-identifier__0 _hd157710_)))
                      (if (##structure-instance-of?
                           _bind157712_
                           'gx#runtime-binding::t)
                          _stx157671_
                          (if (##structure-direct-instance-of?
                               _bind157712_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind157712_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx157671_)
                              (if (not _bind157712_)
                                  _stx157671_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx157671_))))))))
          (let* ((_e157674157682_ _stx157671_)
                 (_E157680157686_ (lambda () _stx157671_))
                 (_E157676157692_
                  (lambda ()
                    (let ((_hd157690_ _e157674157682_))
                      (if (gx#identifier? _hd157690_)
                          (_step157673_ _hd157690_)
                          (_E157680157686_)))))
                 (_E157675157706_
                  (lambda ()
                    (if (gx#stx-pair? _e157674157682_)
                        (let ((_e157677157696_ (gx#syntax-e _e157674157682_)))
                          (let ((_hd157678157699_ (##car _e157677157696_))
                                (_tl157679157701_ (##cdr _e157677157696_)))
                            (let ((_hd157704_ _hd157678157699_))
                              (if (gx#identifier? _hd157704_)
                                  (_step157673_ _hd157704_)
                                  (_E157676157692_)))))
                        (_E157676157692_)))))
            (_E157675157706_)))))
    (define gx#core-expand-head
      (lambda (_stx157637_)
        (letrec ((_stop?157639_
                  (lambda (_stx157641_)
                    (let* ((_e157642157649_ _stx157641_)
                           (_E157644157653_ (lambda () '#f))
                           (_E157643157667_
                            (lambda ()
                              (if (gx#stx-pair? _e157642157649_)
                                  (let ((_e157645157657_
                                         (gx#syntax-e _e157642157649_)))
                                    (let ((_hd157646157660_
                                           (##car _e157645157657_))
                                          (_tl157647157662_
                                           (##cdr _e157645157657_)))
                                      (let ((_hd157665_ _hd157646157660_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd157665_)
                                            (_E157644157653_)))))
                                  (_E157644157653_)))))
                      (_E157643157667_)))))
          (gx#core-expand*__% _stx157637_ _stop?157639_))))
    (define gx#core-expand-block__%
      (lambda (_stx157443_
               _expand-special157444_
               _begin-form157445_
               _expand-e157446_)
        (letrec ((_expand-splice157448_
                  (lambda (_hd157611_ _body157612_ _rest157613_ _r157614_)
                    (if (gx#stx-list? _body157612_)
                        (_K157452_
                         (gx#stx-foldr cons _rest157613_ _body157612_)
                         _r157614_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx157443_
                         _hd157611_))))
                 (_expand-cond-expand157449_
                  (lambda (_hd157607_ _rest157608_ _r157609_)
                    (_K157452_
                     (cons (gx#core-expand-cond-expand% _hd157607_)
                           _rest157608_)
                     _r157609_)))
                 (_expand-include157450_
                  (lambda (_hd157556_ _rest157557_ _r157558_)
                    (let* ((_e157559157569_ _hd157556_)
                           (_E157561157573_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157559157569_)))
                           (_E157560157603_
                            (lambda ()
                              (if (gx#stx-pair? _e157559157569_)
                                  (let ((_e157562157577_
                                         (gx#syntax-e _e157559157569_)))
                                    (let ((_hd157563157580_
                                           (##car _e157562157577_))
                                          (_tl157564157582_
                                           (##cdr _e157562157577_)))
                                      (if (gx#stx-pair? _tl157564157582_)
                                          (let ((_e157565157585_
                                                 (gx#syntax-e
                                                  _tl157564157582_)))
                                            (let ((_hd157566157588_
                                                   (##car _e157565157585_))
                                                  (_tl157567157590_
                                                   (##cdr _e157565157585_)))
                                              (let ((_path157593_
                                                     _hd157566157588_))
                                                (if (gx#stx-null?
                                                     _tl157567157590_)
                                                    (if (gx#stx-string?
                                                         _path157593_)
                                                        (let* ((_rpath157595_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path157593_
                         (gx#stx-source _hd157556_)))
                       (_block157597_
                        (gx#core-expand-include%__% _hd157556_ _rpath157595_))
                       (_rbody157600_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block157597_
                            _expand-special157444_
                            '#f
                            _expand-e157446_))
                         gx#current-expander-path
                         (cons _rpath157595_ (gx#current-expander-path)))))
                  (_K157452_
                   _rest157557_
                   (foldr1 cons _r157558_ _rbody157600_)))
                (_E157561157573_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E157561157573_)))))
                                          (_E157561157573_))))
                                  (_E157561157573_)))))
                      (_E157560157603_))))
                 (_expand-expression157451_
                  (lambda (_hd157552_ _rest157553_ _r157554_)
                    (_K157452_
                     _rest157553_
                     (cons (_expand-e157446_ _hd157552_) _r157554_))))
                 (_K157452_
                  (lambda (_rest157482_ _r157483_)
                    (let* ((_e157484157491_ _rest157482_)
                           (_E157486157495_
                            (lambda ()
                              (if _begin-form157445_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form157445_
                                    (reverse _r157483_))
                                   (gx#stx-source _stx157443_))
                                  _r157483_)))
                           (_E157485157548_
                            (lambda ()
                              (if (gx#stx-pair? _e157484157491_)
                                  (let ((_e157487157499_
                                         (gx#syntax-e _e157484157491_)))
                                    (let ((_hd157488157502_
                                           (##car _e157487157499_))
                                          (_tl157489157504_
                                           (##cdr _e157487157499_)))
                                      (let* ((_hd157507_ _hd157488157502_)
                                             (_rest157509_ _tl157489157504_))
                                        (if '#t
                                            (let* ((_hd157511_
                                                    (gx#core-expand-head
                                                     _hd157507_))
                                                   (_e157512157519_ _hd157511_)
                                                   (_E157514157523_
                                                    (lambda ()
                                                      (_expand-expression157451_
                                                       _hd157511_
                                                       _rest157509_
                                                       _r157483_)))
                                                   (_E157513157544_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e157512157519_)
                                                          (let ((_e157515157527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e157512157519_)))
                    (let ((_hd157516157530_ (##car _e157515157527_))
                          (_tl157517157532_ (##cdr _e157515157527_)))
                      (let* ((_form157535_ _hd157516157530_)
                             (_body157537_ _tl157517157532_))
                        (if '#t
                            (let ((_bind157539_
                                   (if (gx#identifier? _form157535_)
                                       (gx#resolve-identifier__0 _form157535_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind157539_)
                                  (let ((_$e157541_
                                         (##unchecked-structure-ref
                                          _bind157539_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e157541_)
                                        (_expand-splice157448_
                                         _hd157511_
                                         _body157537_
                                         _rest157509_
                                         _r157483_)
                                        (if (eq? '%#cond-expand _$e157541_)
                                            (_expand-cond-expand157449_
                                             _hd157511_
                                             _rest157509_
                                             _r157483_)
                                            (if (eq? '%#include _$e157541_)
                                                (_expand-include157450_
                                                 _hd157511_
                                                 _rest157509_
                                                 _r157483_)
                                                (_expand-special157444_
                                                 _hd157511_
                                                 _K157452_
                                                 _rest157509_
                                                 _r157483_)))))
                                  (_expand-expression157451_
                                   _hd157511_
                                   _rest157509_
                                   _r157483_)))
                            (_E157514157523_)))))
                  (_E157514157523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E157513157544_))
                                            (_E157486157495_)))))
                                  (_E157486157495_)))))
                      (_E157485157548_)))))
          (let* ((_e157453157460_ _stx157443_)
                 (_E157455157464_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e157453157460_)))
                 (_E157454157478_
                  (lambda ()
                    (if (gx#stx-pair? _e157453157460_)
                        (let ((_e157456157468_ (gx#syntax-e _e157453157460_)))
                          (let ((_hd157457157471_ (##car _e157456157468_))
                                (_tl157458157473_ (##cdr _e157456157468_)))
                            (let ((_body157476_ _tl157458157473_))
                              (if (gx#stx-list? _body157476_)
                                  (_K157452_ _body157476_ '())
                                  (_E157455157464_)))))
                        (_E157455157464_)))))
            (_E157454157478_)))))
    (define gx#core-expand-block__0
      (lambda (_stx157619_ _expand-special157620_)
        (let* ((_begin-form157622_ '%#begin)
               (_expand-e157624_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx157619_
           _expand-special157620_
           _begin-form157622_
           _expand-e157624_))))
    (define gx#core-expand-block__1
      (lambda (_stx157626_ _expand-special157627_ _begin-form157628_)
        (let ((_expand-e157630_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx157626_
           _expand-special157627_
           _begin-form157628_
           _expand-e157630_))))
    (define gx#core-expand-block
      (lambda _g162352_
        (let ((_g162351_ (##length _g162352_)))
          (cond ((##fx= _g162351_ 2)
                 (apply (lambda (_stx157619_ _expand-special157620_)
                          (gx#core-expand-block__0
                           _stx157619_
                           _expand-special157620_))
                        _g162352_))
                ((##fx= _g162351_ 3)
                 (apply (lambda (_stx157626_
                                 _expand-special157627_
                                 _begin-form157628_)
                          (gx#core-expand-block__1
                           _stx157626_
                           _expand-special157627_
                           _begin-form157628_))
                        _g162352_))
                ((##fx= _g162351_ 4)
                 (apply (lambda (_stx157632_
                                 _expand-special157633_
                                 _begin-form157634_
                                 _expand-e157635_)
                          (gx#core-expand-block__%
                           _stx157632_
                           _expand-special157633_
                           _begin-form157634_
                           _expand-e157635_))
                        _g162352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g162352_))))))
    (define gx#core-expand-block*
      (lambda (_stx157391_ _expand-special157392_)
        (let* ((_g157393157404_
                (gx#core-expand-block__1
                 _stx157391_
                 _expand-special157392_
                 '#f))
               (_E157397157408_
                (lambda () (error '"No clause matching" _g157393157404_))))
          (let ((_K157402157439_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx157391_)))
                (_K157399157425_ (lambda (_expr157423_) _expr157423_))
                (_K157398157414_
                 (lambda (_body157412_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body157412_))
                    (gx#stx-source _stx157391_)))))
            (let ((_try-match157395157435_
                   (lambda ()
                     (if (##pair? _g157393157404_)
                         (let ((_tl157401157430_ (##cdr _g157393157404_))
                               (_hd157400157428_ (##car _g157393157404_)))
                           (if (##null? _tl157401157430_)
                               (let ((_expr157433_ _hd157400157428_))
                                 (_K157399157425_ _expr157433_))
                               (let ((_body157417_ _g157393157404_))
                                 (_K157398157414_ _body157417_))))
                         (let ((_body157417_ _g157393157404_))
                           (_K157398157414_ _body157417_))))))
              (if (##null? _g157393157404_)
                  (_K157402157439_)
                  (_try-match157395157435_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx157219_)
        (letrec ((_satisfied?157221_
                  (lambda (_condition157319_)
                    (let* ((_e157320157335_ _condition157319_)
                           (_E157330157339_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157320157335_)))
                           (_E157323157358_
                            (lambda ()
                              (if (gx#stx-pair? _e157320157335_)
                                  (let ((_e157331157343_
                                         (gx#syntax-e _e157320157335_)))
                                    (let ((_hd157332157346_
                                           (##car _e157331157343_))
                                          (_tl157333157348_
                                           (##cdr _e157331157343_)))
                                      (let* ((_combinator157351_
                                              _hd157332157346_)
                                             (_body157353_ _tl157333157348_))
                                        (if (gx#stx-list? _body157353_)
                                            (let ((_$e157355_
                                                   (gx#stx-e
                                                    _combinator157351_)))
                                              (if (eq? 'not _$e157355_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?157221_
                                                        _body157353_))
                                                  (if (eq? 'and _$e157355_)
                                                      (gx#stx-andmap
                                                       _satisfied?157221_
                                                       _body157353_)
                                                      (if (eq? 'or _$e157355_)
                                                          (gx#stx-ormap
                                                           _satisfied?157221_
                                                           _body157353_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e157355_)
                      (gx#stx-andmap gx#core-resolve-identifier _body157353_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx157219_
                       _combinator157351_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E157330157339_)))))
                                  (_E157330157339_))))
                           (_E157322157381_
                            (lambda ()
                              (if (gx#stx-pair? _e157320157335_)
                                  (let ((_e157324157362_
                                         (gx#syntax-e _e157320157335_)))
                                    (let ((_hd157325157365_
                                           (##car _e157324157362_))
                                          (_tl157326157367_
                                           (##cdr _e157324157362_)))
                                      (if (and (gx#identifier?
                                                _hd157325157365_)
                                               (gx#core-identifier=?
                                                _hd157325157365_
                                                'unquote))
                                          (if (gx#stx-pair? _tl157326157367_)
                                              (let ((_e157327157370_
                                                     (gx#syntax-e
                                                      _tl157326157367_)))
                                                (let ((_hd157328157373_
                                                       (##car _e157327157370_))
                                                      (_tl157329157375_
                                                       (##cdr _e157327157370_)))
                                                  (let ((_expr157378_
                                                         _hd157328157373_))
                                                    (if (gx#stx-null?
                                                         _tl157329157375_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr157378_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E157323157358_))
                (_E157323157358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E157323157358_))
                                          (_E157323157358_))))
                                  (_E157323157358_))))
                           (_E157321157387_
                            (lambda ()
                              (let ((_id157385_ _e157320157335_))
                                (if (gx#identifier? _id157385_)
                                    (gx#core-bound-identifier?__%
                                     _id157385_
                                     gx#feature-binding?)
                                    (_E157322157381_))))))
                      (_E157321157387_))))
                 (_loop157222_
                  (lambda (_rest157252_)
                    (let* ((_e157253157261_ _rest157252_)
                           (_E157259157265_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157253157261_)))
                           (_E157255157269_
                            (lambda ()
                              (if (gx#stx-null? _e157253157261_)
                                  (if '#t '() (_E157259157265_))
                                  (_E157259157265_))))
                           (_E157254157315_
                            (lambda ()
                              (if (gx#stx-pair? _e157253157261_)
                                  (let ((_e157256157273_
                                         (gx#syntax-e _e157253157261_)))
                                    (let ((_hd157257157276_
                                           (##car _e157256157273_))
                                          (_tl157258157278_
                                           (##cdr _e157256157273_)))
                                      (let* ((_hd157281_ _hd157257157276_)
                                             (_rest157283_ _tl157258157278_))
                                        (if '#t
                                            (let* ((_e157284157291_ _hd157281_)
                                                   (_E157286157295_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e157284157291_)))
                                                   (_E157285157311_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e157284157291_)
                                                          (let ((_e157287157299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e157284157291_)))
                    (let ((_hd157288157302_ (##car _e157287157299_))
                          (_tl157289157304_ (##cdr _e157287157299_)))
                      (let* ((_condition157307_ _hd157288157302_)
                             (_body157309_ _tl157289157304_))
                        (if '#t
                            (if (gx#stx-eq? _condition157307_ 'else)
                                (if (gx#stx-null? _rest157283_)
                                    _body157309_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx157219_
                                     _hd157281_))
                                (if (_satisfied?157221_ _condition157307_)
                                    _body157309_
                                    (_loop157222_ _rest157283_)))
                            (_E157286157295_)))))
                  (_E157286157295_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E157285157311_))
                                            (_E157255157269_)))))
                                  (_E157255157269_)))))
                      (_E157254157315_)))))
          (let* ((_e157223157230_ _stx157219_)
                 (_E157225157234_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e157223157230_)))
                 (_E157224157248_
                  (lambda ()
                    (if (gx#stx-pair? _e157223157230_)
                        (let ((_e157226157238_ (gx#syntax-e _e157223157230_)))
                          (let ((_hd157227157241_ (##car _e157226157238_))
                                (_tl157228157243_ (##cdr _e157226157238_)))
                            (let ((_clauses157246_ _tl157228157243_))
                              (if (gx#stx-list? _clauses157246_)
                                  (gx#core-cons
                                   'begin
                                   (_loop157222_ _clauses157246_))
                                  (_E157225157234_)))))
                        (_E157225157234_)))))
            (_E157224157248_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx157162_ _rpath157163_)
        (let* ((_e157164157174_ _stx157162_)
               (_E157166157178_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157164157174_)))
               (_E157165157205_
                (lambda ()
                  (if (gx#stx-pair? _e157164157174_)
                      (let ((_e157167157182_ (gx#syntax-e _e157164157174_)))
                        (let ((_hd157168157185_ (##car _e157167157182_))
                              (_tl157169157187_ (##cdr _e157167157182_)))
                          (if (gx#stx-pair? _tl157169157187_)
                              (let ((_e157170157190_
                                     (gx#syntax-e _tl157169157187_)))
                                (let ((_hd157171157193_
                                       (##car _e157170157190_))
                                      (_tl157172157195_
                                       (##cdr _e157170157190_)))
                                  (let ((_path157198_ _hd157171157193_))
                                    (if (gx#stx-null? _tl157172157195_)
                                        (if (gx#stx-string? _path157198_)
                                            (let ((_rpath157203_
                                                   (let ((_$e157200_
                                                          _rpath157163_))
                                                     (if _$e157200_
                                                         _$e157200_
                                                         (gx#core-resolve-path__%
                                                          _path157198_
                                                          (gx#stx-source
                                                           _stx157162_))))))
                                              (if (member _rpath157203_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx157162_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath157203_))
                                                    (gx#stx-source
                                                     _stx157162_)))))
                                            (_E157166157178_))
                                        (_E157166157178_)))))
                              (_E157166157178_))))
                      (_E157166157178_)))))
          (_E157165157205_))))
    (define gx#core-expand-include%__0
      (lambda (_stx157212_)
        (let ((_rpath157214_ '#f))
          (gx#core-expand-include%__% _stx157212_ _rpath157214_))))
    (define gx#core-expand-include%
      (lambda _g162354_
        (let ((_g162353_ (##length _g162354_)))
          (cond ((##fx= _g162353_ 1)
                 (apply (lambda (_stx157212_)
                          (gx#core-expand-include%__0 _stx157212_))
                        _g162354_))
                ((##fx= _g162353_ 2)
                 (apply (lambda (_stx157216_ _rpath157217_)
                          (gx#core-expand-include%__%
                           _stx157216_
                           _rpath157217_))
                        _g162354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g162354_))))))
    (define gx#core-apply-expander__%
      (lambda (_K157131_ _stx157132_ _method157133_)
        (if (procedure? _K157131_)
            (let ((_$e157135_ (gx#stx-source _stx157132_)))
              (if _$e157135_
                  ((lambda (_g157137157139_)
                     (gx#stx-wrap-source
                      (_K157131_ _stx157132_)
                      _g157137157139_))
                   _$e157135_)
                  (_K157131_ _stx157132_)))
            (let ((_$e157142_ (bound-method-ref _K157131_ _method157133_)))
              (if _$e157142_
                  ((lambda (_g157144157146_)
                     (gx#core-apply-expander__%
                      _g157144157146_
                      _stx157132_
                      _method157133_))
                   _$e157142_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx157132_
                   _method157133_))))))
    (define gx#core-apply-expander__0
      (lambda (_K157152_ _stx157153_)
        (let ((_method157155_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K157152_ _stx157153_ _method157155_))))
    (define gx#core-apply-expander
      (lambda _g162356_
        (let ((_g162355_ (##length _g162356_)))
          (cond ((##fx= _g162355_ 2)
                 (apply (lambda (_K157152_ _stx157153_)
                          (gx#core-apply-expander__0 _K157152_ _stx157153_))
                        _g162356_))
                ((##fx= _g162355_ 3)
                 (apply (lambda (_K157157_ _stx157158_ _method157159_)
                          (gx#core-apply-expander__%
                           _K157157_
                           _stx157158_
                           _method157159_))
                        _g162356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g162356_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self157127_ _stx157128_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx157128_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self156980_ _stx156981_)
        (let* ((_self156982156988_ _self156980_)
               (_E156984156992_
                (lambda () (error '"No clause matching" _self156982156988_)))
               (_K156985156997_
                (lambda (_K156995_)
                  (gx#core-apply-expander__0 _K156995_ _stx156981_))))
          (if (##structure-instance-of? _self156982156988_ 'gx#core-macro::t)
              (let* ((_e156986157000_
                      (##unchecked-structure-ref
                       _self156982156988_
                       '1
                       gx#expander::t
                       '#f))
                     (_K157003_ _e156986157000_))
                (_K156985156997_ _K157003_))
              (_E156984156992_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self156833_ _stx156834_)
        (if (gx#sealed-syntax? _stx156834_)
            _stx156834_
            (let* ((_self156835156841_ _self156833_)
                   (_E156837156845_
                    (lambda ()
                      (error '"No clause matching" _self156835156841_)))
                   (_K156838156850_
                    (lambda (_K156848_)
                      (gx#core-apply-expander__0 _K156848_ _stx156834_))))
              (if (##structure-instance-of?
                   _self156835156841_
                   'gx#core-expander::t)
                  (let* ((_e156839156853_
                          (##unchecked-structure-ref
                           _self156835156841_
                           '1
                           gx#expander::t
                           '#f))
                         (_K156856_ _e156839156853_))
                    (_K156838156850_ _K156856_))
                  (_E156837156845_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self156695_ _stx156696_ _top?156697_)
        (if (_top?156697_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self156695_ _stx156696_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx156696_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self156702_ _stx156703_)
        (let ((_top?156705_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self156702_
           _stx156703_
           _top?156705_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g162358_
        (let ((_g162357_ (##length _g162358_)))
          (cond ((##fx= _g162357_ 2)
                 (apply (lambda (_self156702_ _stx156703_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self156702_
                           _stx156703_))
                        _g162358_))
                ((##fx= _g162357_ 3)
                 (apply (lambda (_self156707_ _stx156708_ _top?156709_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self156707_
                           _stx156708_
                           _top?156709_))
                        _g162358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g162358_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self156569_ _stx156570_)
        (gx#top-special-form::apply-macro-expander__%
         _self156569_
         _stx156570_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self156394_ _stx156395_)
        (let* ((_self156396156402_ _self156394_)
               (_E156398156406_
                (lambda () (error '"No clause matching" _self156396156402_)))
               (_K156399156439_
                (lambda (_id156409_)
                  (let* ((_e156410156417_ _stx156395_)
                         (_E156412156421_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e156410156417_)))
                         (_E156411156435_
                          (lambda ()
                            (if (gx#stx-pair? _e156410156417_)
                                (let ((_e156413156425_
                                       (gx#syntax-e _e156410156417_)))
                                  (let ((_hd156414156428_
                                         (##car _e156413156425_))
                                        (_tl156415156430_
                                         (##cdr _e156413156425_)))
                                    (let ((_body156433_ _tl156415156430_))
                                      (if '#t
                                          (gx#core-cons
                                           _id156409_
                                           _body156433_)
                                          (_E156412156421_)))))
                                (_E156412156421_)))))
                    (_E156411156435_)))))
          (if (##structure-instance-of?
               _self156396156402_
               'gx#rename-macro-expander::t)
              (let* ((_e156400156442_
                      (##unchecked-structure-ref
                       _self156396156402_
                       '1
                       gx#expander::t
                       '#f))
                     (_id156445_ _e156400156442_))
                (_K156399156439_ _id156445_))
              (_E156398156406_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self156220_ _stx156221_ _method156222_)
        (let* ((_self156223156231_ _self156220_)
               (_E156225156235_
                (lambda () (error '"No clause matching" _self156223156231_)))
               (_K156226156242_
                (lambda (_phi156238_ _ctx156239_ _K156240_)
                  (gx#core-apply-user-macro
                   _K156240_
                   _stx156221_
                   _ctx156239_
                   _phi156238_
                   _method156222_))))
          (if (##structure-instance-of?
               _self156223156231_
               'gx#macro-expander::t)
              (let* ((_e156227156245_
                      (##unchecked-structure-ref
                       _self156223156231_
                       '1
                       gx#expander::t
                       '#f))
                     (_K156248_ _e156227156245_)
                     (_e156228156250_
                      (##unchecked-structure-ref
                       _self156223156231_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx156253_ _e156228156250_)
                     (_e156229156255_
                      (##unchecked-structure-ref
                       _self156223156231_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi156258_ _e156229156255_))
                (_K156226156242_ _phi156258_ _ctx156253_ _K156248_))
              (_E156225156235_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self156263_ _stx156264_)
        (let ((_method156266_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self156263_
           _stx156264_
           _method156266_))))
    (define gx#core-apply-user-expander
      (lambda _g162360_
        (let ((_g162359_ (##length _g162360_)))
          (cond ((##fx= _g162359_ 2)
                 (apply (lambda (_self156263_ _stx156264_)
                          (gx#core-apply-user-expander__0
                           _self156263_
                           _stx156264_))
                        _g162360_))
                ((##fx= _g162359_ 3)
                 (apply (lambda (_self156268_ _stx156269_ _method156270_)
                          (gx#core-apply-user-expander__%
                           _self156268_
                           _stx156269_
                           _method156270_))
                        _g162360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g162360_))))))
    (define gx#core-apply-user-macro
      (lambda (_K156210_ _stx156211_ _ctx156212_ _phi156213_ _method156214_)
        (let ((_mark156216_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx156212_
                _phi156213_
                _stx156211_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K156210_
               (gx#stx-apply-mark _stx156211_ _mark156216_)
               _method156214_)
              _mark156216_))
           gx#current-expander-marks
           (cons _mark156216_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx156062_ _phi156063_ _ctx156064_)
        (let _lp156066_ ((_bind156068_
                          (gx#core-resolve-identifier__%
                           _stx156062_
                           _phi156063_
                           _ctx156064_)))
          (if (##structure-direct-instance-of?
               _bind156068_
               'gx#import-binding::t)
              (_lp156066_
               (##unchecked-structure-ref
                _bind156068_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind156068_
                   'gx#alias-binding::t)
                  (_lp156066_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind156068_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi156063_
                    _ctx156064_))
                  _bind156068_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx156073_)
        (let* ((_phi156075_ (gx#current-expander-phi))
               (_ctx156077_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx156073_ _phi156075_ _ctx156077_))))
    (define gx#resolve-identifier__1
      (lambda (_stx156079_ _phi156080_)
        (let ((_ctx156082_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx156079_ _phi156080_ _ctx156082_))))
    (define gx#resolve-identifier
      (lambda _g162362_
        (let ((_g162361_ (##length _g162362_)))
          (cond ((##fx= _g162361_ 1)
                 (apply (lambda (_stx156073_)
                          (gx#resolve-identifier__0 _stx156073_))
                        _g162362_))
                ((##fx= _g162361_ 2)
                 (apply (lambda (_stx156079_ _phi156080_)
                          (gx#resolve-identifier__1 _stx156079_ _phi156080_))
                        _g162362_))
                ((##fx= _g162361_ 3)
                 (apply (lambda (_stx156084_ _phi156085_ _ctx156086_)
                          (gx#resolve-identifier__%
                           _stx156084_
                           _phi156085_
                           _ctx156086_))
                        _g162362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g162362_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx156020_ _val156021_ _rebind?156022_ _phi156023_ _ctx156024_)
        (let ((_rebind?156026_
               (if (not _rebind?156022_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?156022_) _rebind?156022_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx156020_)
           _val156021_
           _rebind?156026_
           _phi156023_
           _ctx156024_))))
    (define gx#bind-identifier!__0
      (lambda (_stx156031_ _val156032_)
        (let* ((_rebind?156034_ '#f)
               (_phi156036_ (gx#current-expander-phi))
               (_ctx156038_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx156031_
           _val156032_
           _rebind?156034_
           _phi156036_
           _ctx156038_))))
    (define gx#bind-identifier!__1
      (lambda (_stx156040_ _val156041_ _rebind?156042_)
        (let* ((_phi156044_ (gx#current-expander-phi))
               (_ctx156046_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx156040_
           _val156041_
           _rebind?156042_
           _phi156044_
           _ctx156046_))))
    (define gx#bind-identifier!__2
      (lambda (_stx156048_ _val156049_ _rebind?156050_ _phi156051_)
        (let ((_ctx156053_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx156048_
           _val156049_
           _rebind?156050_
           _phi156051_
           _ctx156053_))))
    (define gx#bind-identifier!
      (lambda _g162364_
        (let ((_g162363_ (##length _g162364_)))
          (cond ((##fx= _g162363_ 2)
                 (apply (lambda (_stx156031_ _val156032_)
                          (gx#bind-identifier!__0 _stx156031_ _val156032_))
                        _g162364_))
                ((##fx= _g162363_ 3)
                 (apply (lambda (_stx156040_ _val156041_ _rebind?156042_)
                          (gx#bind-identifier!__1
                           _stx156040_
                           _val156041_
                           _rebind?156042_))
                        _g162364_))
                ((##fx= _g162363_ 4)
                 (apply (lambda (_stx156048_
                                 _val156049_
                                 _rebind?156050_
                                 _phi156051_)
                          (gx#bind-identifier!__2
                           _stx156048_
                           _val156049_
                           _rebind?156050_
                           _phi156051_))
                        _g162364_))
                ((##fx= _g162363_ 5)
                 (apply (lambda (_stx156055_
                                 _val156056_
                                 _rebind?156057_
                                 _phi156058_
                                 _ctx156059_)
                          (gx#bind-identifier!__%
                           _stx156055_
                           _val156056_
                           _rebind?156057_
                           _phi156058_
                           _ctx156059_))
                        _g162364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g162364_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx155992_ _phi155993_ _ctx155994_)
        (let _lp155996_ ((_e155998_ _stx155992_)
                         (_marks155999_ (gx#current-expander-marks)))
          (if (symbol? _e155998_)
              (gx#core-resolve-binding
               _e155998_
               _phi155993_
               _phi155993_
               _ctx155994_
               (reverse _marks155999_))
              (if (gx#identifier-quote? _e155998_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e155998_ '1 gx#AST::t '#f)
                   _phi155993_
                   '0
                   (##unchecked-structure-ref
                    _e155998_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e155998_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e155998_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e155998_ '1 gx#AST::t '#f)
                       _phi155993_
                       _phi155993_
                       _ctx155994_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e155998_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks155999_))
                      (if (##structure-direct-instance-of?
                           _e155998_
                           'gx#syntax-wrap::t)
                          (_lp155996_
                           (##unchecked-structure-ref
                            _e155998_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e155998_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks155999_))
                          (if (##structure-instance-of?
                               _e155998_
                               'gerbil#AST::t)
                              (_lp155996_
                               (##unchecked-structure-ref
                                _e155998_
                                '1
                                gx#AST::t
                                '#f)
                               _marks155999_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx155992_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx156004_)
        (let* ((_phi156006_ (gx#current-expander-phi))
               (_ctx156008_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx156004_
           _phi156006_
           _ctx156008_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx156010_ _phi156011_)
        (let ((_ctx156013_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx156010_
           _phi156011_
           _ctx156013_))))
    (define gx#core-resolve-identifier
      (lambda _g162366_
        (let ((_g162365_ (##length _g162366_)))
          (cond ((##fx= _g162365_ 1)
                 (apply (lambda (_stx156004_)
                          (gx#core-resolve-identifier__0 _stx156004_))
                        _g162366_))
                ((##fx= _g162365_ 2)
                 (apply (lambda (_stx156010_ _phi156011_)
                          (gx#core-resolve-identifier__1
                           _stx156010_
                           _phi156011_))
                        _g162366_))
                ((##fx= _g162365_ 3)
                 (apply (lambda (_stx156015_ _phi156016_ _ctx156017_)
                          (gx#core-resolve-identifier__%
                           _stx156015_
                           _phi156016_
                           _ctx156017_))
                        _g162366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g162366_))))))
    (define gx#core-resolve-binding
      (lambda (_id155905_
               _phi155906_
               _src-phi155907_
               _ctx155908_
               _marks155909_)
        (letrec ((_resolve155911_
                  (lambda (_ctx155979_ _src-phi155980_ _key155981_)
                    (let _lp155983_ ((_ctx155985_
                                      (gx#core-context-shift
                                       _ctx155979_
                                       _phi155906_))
                                     (_dphi155986_
                                      (fx- _phi155906_ _src-phi155980_)))
                      (let ((_$e155988_
                             (gx#core-context-resolve
                              _ctx155985_
                              _key155981_)))
                        (if _$e155988_
                            (values _$e155988_)
                            (if (fxzero? _dphi155986_)
                                '#f
                                (if (fxpositive? _dphi155986_)
                                    (_lp155983_
                                     (gx#core-context-shift _ctx155985_ '-1)
                                     (fx- _dphi155986_ '1))
                                    (_lp155983_
                                     (gx#core-context-shift _ctx155985_ '1)
                                     (fx+ _dphi155986_ '1))))))))))
          (let _lp155913_ ((_ctx155915_ _ctx155908_)
                           (_src-phi155916_ _src-phi155907_)
                           (_rest155917_ _marks155909_))
            (let* ((_rest155918155926_ _rest155917_)
                   (_else155920155934_
                    (lambda ()
                      (_resolve155911_
                       _ctx155915_
                       _src-phi155916_
                       _id155905_)))
                   (_K155922155967_
                    (lambda (_rest155937_ _hd155938_)
                      (let* ((_hd155939155945_ _hd155938_)
                             (_E155941155949_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd155939155945_)))
                             (_K155942155959_
                              (lambda (_subst155952_)
                                (let ((_$e155956_
                                       (let ((_key155954_
                                              (if _subst155952_
                                                  (hash-get
                                                   _subst155952_
                                                   _id155905_)
                                                  '#f)))
                                         (if _key155954_
                                             (_resolve155911_
                                              _ctx155915_
                                              _src-phi155916_
                                              _key155954_)
                                             '#f))))
                                  (if _$e155956_
                                      _$e155956_
                                      (_lp155913_
                                       (##unchecked-structure-ref
                                        _hd155938_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd155938_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest155937_))))))
                        (if (##structure-instance-of?
                             _hd155939155945_
                             'gx#expander-mark::t)
                            (let* ((_e155943155962_
                                    (##unchecked-structure-ref
                                     _hd155939155945_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst155965_ _e155943155962_))
                              (_K155942155959_ _subst155965_))
                            (_E155941155949_))))))
              (if (##pair? _rest155918155926_)
                  (let ((_hd155923155970_ (##car _rest155918155926_))
                        (_tl155924155972_ (##cdr _rest155918155926_)))
                    (let* ((_hd155975_ _hd155923155970_)
                           (_rest155977_ _tl155924155972_))
                      (_K155922155967_ _rest155977_ _hd155975_)))
                  (_else155920155934_)))))))
    (define gx#core-bind!__%
      (lambda (_key155781_ _val155782_ _rebind?155783_ _phi155784_ _ctx155785_)
        (letrec ((_update-binding155787_
                  (lambda (_xval155858_)
                    (if (or (_rebind?155783_
                             _ctx155785_
                             _xval155858_
                             _val155782_)
                            (and (##structure-direct-instance-of?
                                  _xval155858_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval155858_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val155782_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val155782_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval155858_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val155782_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val155782_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval155858_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val155782_
                        (if (and (##structure-direct-instance-of?
                                  _val155782_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val155782_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval155858_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val155782_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval155858_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval155858_
                            (if (and (##structure-direct-instance-of?
                                      _val155782_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval155858_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key155781_
                                 (cons (##unchecked-structure-ref
                                        _val155782_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val155782_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval155858_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval155858_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval155858_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval155858_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key155781_
                                 _val155782_
                                 _xval155858_))))))
                 (_gensubst155788_
                  (lambda (_subst155853_ _id155854_)
                    (let ((_eid155856_
                           (gensym (if (uninterned-symbol? _id155854_)
                                       '%
                                       _id155854_))))
                      (hash-put! _subst155853_ _id155854_ _eid155856_)
                      _eid155856_)))
                 (_subst!155789_
                  (lambda (_key155791_)
                    (let* ((_key155792155800_ _key155791_)
                           (_else155794155808_ (lambda () _key155791_))
                           (_K155796155841_
                            (lambda (_mark155811_ _id155812_)
                              (let* ((_mark155813155819_ _mark155811_)
                                     (_E155815155823_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark155813155819_)))
                                     (_K155816155833_
                                      (lambda (_subst155826_)
                                        (if (not _subst155826_)
                                            (let ((_subst155828_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark155811_
                                               _subst155828_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst155788_
                                               _subst155828_
                                               _id155812_))
                                            (let ((_$e155830_
                                                   (hash-get
                                                    _subst155826_
                                                    _id155812_)))
                                              (if _$e155830_
                                                  (values _$e155830_)
                                                  (_gensubst155788_
                                                   _subst155826_
                                                   _id155812_)))))))
                                (if (##structure-instance-of?
                                     _mark155813155819_
                                     'gx#expander-mark::t)
                                    (let* ((_e155817155836_
                                            (##unchecked-structure-ref
                                             _mark155813155819_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst155839_ _e155817155836_))
                                      (_K155816155833_ _subst155839_))
                                    (_E155815155823_))))))
                      (if (##pair? _key155792155800_)
                          (let ((_hd155797155844_ (##car _key155792155800_))
                                (_tl155798155846_ (##cdr _key155792155800_)))
                            (let* ((_id155849_ _hd155797155844_)
                                   (_mark155851_ _tl155798155846_))
                              (_K155796155841_ _mark155851_ _id155849_)))
                          (_else155794155808_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx155785_ _phi155784_)
           (_subst!155789_ _key155781_)
           _val155782_
           _update-binding155787_))))
    (define gx#core-bind!__0
      (lambda (_key155875_ _val155876_)
        (let* ((_rebind?155878_ false)
               (_phi155880_ (gx#current-expander-phi))
               (_ctx155882_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key155875_
           _val155876_
           _rebind?155878_
           _phi155880_
           _ctx155882_))))
    (define gx#core-bind!__1
      (lambda (_key155884_ _val155885_ _rebind?155886_)
        (let* ((_phi155888_ (gx#current-expander-phi))
               (_ctx155890_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key155884_
           _val155885_
           _rebind?155886_
           _phi155888_
           _ctx155890_))))
    (define gx#core-bind!__2
      (lambda (_key155892_ _val155893_ _rebind?155894_ _phi155895_)
        (let ((_ctx155897_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key155892_
           _val155893_
           _rebind?155894_
           _phi155895_
           _ctx155897_))))
    (define gx#core-bind!
      (lambda _g162368_
        (let ((_g162367_ (##length _g162368_)))
          (cond ((##fx= _g162367_ 2)
                 (apply (lambda (_key155875_ _val155876_)
                          (gx#core-bind!__0 _key155875_ _val155876_))
                        _g162368_))
                ((##fx= _g162367_ 3)
                 (apply (lambda (_key155884_ _val155885_ _rebind?155886_)
                          (gx#core-bind!__1
                           _key155884_
                           _val155885_
                           _rebind?155886_))
                        _g162368_))
                ((##fx= _g162367_ 4)
                 (apply (lambda (_key155892_
                                 _val155893_
                                 _rebind?155894_
                                 _phi155895_)
                          (gx#core-bind!__2
                           _key155892_
                           _val155893_
                           _rebind?155894_
                           _phi155895_))
                        _g162368_))
                ((##fx= _g162367_ 5)
                 (apply (lambda (_key155899_
                                 _val155900_
                                 _rebind?155901_
                                 _phi155902_
                                 _ctx155903_)
                          (gx#core-bind!__%
                           _key155899_
                           _val155900_
                           _rebind?155901_
                           _phi155902_
                           _ctx155903_))
                        _g162368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g162368_))))))
    (define gx#core-identifier-key
      (lambda (_stx155715_)
        (if (symbol? _stx155715_)
            (let* ((_g155716155724_ (gx#current-expander-marks))
                   (_else155718155732_ (lambda () _stx155715_))
                   (_K155720155737_
                    (lambda (_hd155735_) (cons _stx155715_ _hd155735_))))
              (if (##pair? _g155716155724_)
                  (let* ((_hd155721155740_ (##car _g155716155724_))
                         (_hd155743_ _hd155721155740_))
                    (_K155720155737_ _hd155743_))
                  (_else155718155732_)))
            (if (gx#identifier? _stx155715_)
                (let* ((_id155745_ (gx#syntax-local-unwrap _stx155715_))
                       (_eid155747_ (gx#stx-e _id155745_))
                       (_marks155749_ (gx#stx-identifier-marks* _id155745_)))
                  (let* ((_marks155751155759_ _marks155749_)
                         (_else155753155767_ (lambda () _eid155747_))
                         (_K155755155772_
                          (lambda (_hd155770_) (cons _eid155747_ _hd155770_))))
                    (if (##pair? _marks155751155759_)
                        (let* ((_hd155756155775_ (##car _marks155751155759_))
                               (_hd155778_ _hd155756155775_))
                          (_K155755155772_ _hd155778_))
                        (_else155753155767_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx155715_)))))
    (define gx#core-context-shift
      (lambda (_ctx155660_ _phi155661_)
        (letrec ((_make-phi155663_
                  (lambda (_super155713_)
                    (let ((__obj162339
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj162339
                       (gensym 'phi)
                       _super155713_)
                      __obj162339)))
                 (_make-phi/up155664_
                  (lambda (_ctx155708_ _super155709_)
                    (let ((_ctx+1155711_ (_make-phi155663_ _super155709_)))
                      (##unchecked-structure-set!
                       _ctx155708_
                       _ctx+1155711_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1155711_
                       _ctx155708_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1155711_)))
                 (_make-phi/down155665_
                  (lambda (_ctx155703_ _super155704_)
                    (let ((_ctx-1155706_ (_make-phi155663_ _super155704_)))
                      (##unchecked-structure-set!
                       _ctx-1155706_
                       _ctx155703_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx155703_
                       _ctx-1155706_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1155706_)))
                 (_shift155666_
                  (lambda (_ctx155687_
                           _delta155688_
                           _make-delta-context155689_
                           _phi155690_
                           _K155691_)
                    (let ((_$e155693_
                           (##unchecked-structure-ref
                            _ctx155687_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e155693_
                          ((lambda (_super155696_)
                             (let* ((_super155698_
                                     (_K155691_ _super155696_ _delta155688_))
                                    (_ctx+d155700_
                                     (_make-delta-context155689_
                                      _ctx155687_
                                      _super155698_)))
                               (_K155691_
                                _ctx+d155700_
                                (fx- _phi155690_ _delta155688_))))
                           _$e155693_)
                          (error '"Bad context" _ctx155687_))))))
          (let _K155668_ ((_ctx155670_ _ctx155660_) (_phi155671_ _phi155661_))
            (if (fxzero? _phi155671_)
                _ctx155670_
                (if (fx> (##vector-length _ctx155670_) '3)
                    (if (fxpositive? _phi155671_)
                        (let ((_$e155673_
                               (##unchecked-structure-ref
                                _ctx155670_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e155673_
                              ((lambda (_g155675155677_)
                                 (_K155668_
                                  _g155675155677_
                                  (fx- _phi155671_ '1)))
                               _$e155673_)
                              (_shift155666_
                               _ctx155670_
                               '1
                               _make-phi/up155664_
                               _phi155671_
                               _K155668_)))
                        (let ((_$e155680_
                               (##unchecked-structure-ref
                                _ctx155670_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e155680_
                              ((lambda (_g155682155684_)
                                 (_K155668_
                                  _g155682155684_
                                  (fx+ _phi155671_ '1)))
                               _$e155680_)
                              (_shift155666_
                               _ctx155670_
                               '-1
                               _make-phi/down155665_
                               _phi155671_
                               _K155668_))))
                    _ctx155670_))))))
    (define gx#core-context-get
      (lambda (_ctx155657_ _key155658_)
        (hash-get
         (##unchecked-structure-ref _ctx155657_ '2 gx#expander-context::t '#f)
         _key155658_)))
    (define gx#core-context-put!
      (lambda (_ctx155653_ _key155654_ _val155655_)
        (hash-put!
         (##unchecked-structure-ref _ctx155653_ '2 gx#expander-context::t '#f)
         _key155654_
         _val155655_)))
    (define gx#core-context-resolve
      (lambda (_ctx155640_ _key155641_)
        (let _lp155643_ ((_ctx155645_ _ctx155640_))
          (let ((_$e155647_ (gx#core-context-get _ctx155645_ _key155641_)))
            (if _$e155647_
                (values _$e155647_)
                (let ((_$e155650_
                       (if (fx> (##vector-length _ctx155645_) '3)
                           (##unchecked-structure-ref
                            _ctx155645_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e155650_ (_lp155643_ _$e155650_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx155630_ _key155631_ _val155632_ _rebind155633_)
        (let ((_$e155635_ (gx#core-context-get _ctx155630_ _key155631_)))
          (if _$e155635_
              ((lambda (_xval155638_)
                 (gx#core-context-put!
                  _ctx155630_
                  _key155631_
                  (_rebind155633_ _xval155638_)))
               _$e155635_)
              (gx#core-context-put! _ctx155630_ _key155631_ _val155632_)))))
    (define gx#core-context-top__%
      (lambda (_ctx155608_ _stop?155609_)
        (let _lp155611_ ((_ctx155613_ _ctx155608_))
          (if (_stop?155609_ _ctx155613_)
              _ctx155613_
              (if (##structure-instance-of? _ctx155613_ 'gx#context-phi::t)
                  (_lp155611_
                   (##unchecked-structure-ref
                    _ctx155613_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx155619_ (gx#current-expander-context))
               (_stop?155621_ gx#top-context?))
          (gx#core-context-top__% _ctx155619_ _stop?155621_))))
    (define gx#core-context-top__1
      (lambda (_ctx155623_)
        (let ((_stop?155625_ gx#top-context?))
          (gx#core-context-top__% _ctx155623_ _stop?155625_))))
    (define gx#core-context-top
      (lambda _g162370_
        (let ((_g162369_ (##length _g162370_)))
          (cond ((##fx= _g162369_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g162370_))
                ((##fx= _g162369_ 1)
                 (apply (lambda (_ctx155623_)
                          (gx#core-context-top__1 _ctx155623_))
                        _g162370_))
                ((##fx= _g162369_ 2)
                 (apply (lambda (_ctx155627_ _stop?155628_)
                          (gx#core-context-top__% _ctx155627_ _stop?155628_))
                        _g162370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g162370_))))))
    (define gx#core-context-root__%
      (lambda (_ctx155593_)
        (let _lp155595_ ((_ctx155597_ _ctx155593_))
          (if (##structure-instance-of? _ctx155597_ 'gx#context-phi::t)
              (_lp155595_
               (##unchecked-structure-ref
                _ctx155597_
                '3
                gx#phi-context::t
                '#f))
              _ctx155597_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx155603_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx155603_))))
    (define gx#core-context-root
      (lambda _g162372_
        (let ((_g162371_ (##length _g162372_)))
          (cond ((##fx= _g162371_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g162372_))
                ((##fx= _g162371_ 1)
                 (apply (lambda (_ctx155605_)
                          (gx#core-context-root__% _ctx155605_))
                        _g162372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g162372_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx155574_ . __155571155575_)
        (let ((_$e155578_ (gx#current-expander-allow-rebind?)))
          (if _$e155578_
              _$e155578_
              (if (##structure-instance-of? _ctx155574_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx155574_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx155574_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx155585_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx155585_))))
    (define gx#core-context-rebind?
      (lambda _g162374_
        (let ((_g162373_ (##length _g162374_)))
          (cond ((##fx= _g162373_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g162374_))
                ((##fx= _g162373_ 1)
                 (apply (lambda (_ctx155587_)
                          (gx#core-context-rebind?__% _ctx155587_))
                        _g162374_))
                ((##fx>= _g162373_ 1)
                 (apply gx#core-context-rebind?__% _g162374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g162374_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx155557_)
        (let ((_$e155559_ (gx#core-context-top__1 _ctx155557_)))
          (if _$e155559_
              ((lambda (_ctx155562_)
                 (if (##structure-instance-of?
                      _ctx155562_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx155562_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e155559_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx155568_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx155568_))))
    (define gx#core-context-namespace
      (lambda _g162376_
        (let ((_g162375_ (##length _g162376_)))
          (cond ((##fx= _g162375_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g162376_))
                ((##fx= _g162375_ 1)
                 (apply (lambda (_ctx155570_)
                          (gx#core-context-namespace__% _ctx155570_))
                        _g162376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g162376_))))))
    (define gx#expander-binding?__%
      (lambda (_bind155543_ _is?155544_)
        (if (##structure-direct-instance-of?
             _bind155543_
             'gx#syntax-binding::t)
            (_is?155544_
             (##unchecked-structure-ref
              _bind155543_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind155549_)
        (let ((_is?155551_ gx#expander?))
          (gx#expander-binding?__% _bind155549_ _is?155551_))))
    (define gx#expander-binding?
      (lambda _g162378_
        (let ((_g162377_ (##length _g162378_)))
          (cond ((##fx= _g162377_ 1)
                 (apply (lambda (_bind155549_)
                          (gx#expander-binding?__0 _bind155549_))
                        _g162378_))
                ((##fx= _g162377_ 2)
                 (apply (lambda (_bind155553_ _is?155554_)
                          (gx#expander-binding?__% _bind155553_ _is?155554_))
                        _g162378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g162378_))))))
    (define gx#core-expander-binding?
      (lambda (_bind155540_)
        (gx#expander-binding?__% _bind155540_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind155538_)
        (gx#expander-binding?__% _bind155538_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind155532_)
        (letrec ((_direct-special-form?155534_
                  (lambda (_obj155536_)
                    (##structure-direct-instance-of?
                     _obj155536_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind155532_
           _direct-special-form?155534_))))
    (define gx#special-form-binding?
      (lambda (_bind155530_)
        (gx#expander-binding?__% _bind155530_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind155521_)
        (letrec ((_feature?155523_
                  (lambda (_e155525_)
                    (let ((_$e155527_
                           (##structure-instance-of?
                            _e155525_
                            'gx#feature-expander::t)))
                      (if _$e155527_
                          _$e155527_
                          (##structure-instance-of?
                           _e155525_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind155521_ _feature?155523_))))
    (define gx#private-feature-binding?
      (lambda (_bind155519_)
        (gx#expander-binding?__% _bind155519_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id155506_ _bound?155507_)
        (if (gx#identifier? _id155506_)
            (_bound?155507_ (gx#resolve-identifier__0 _id155506_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id155512_)
        (let ((_bound?155514_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id155512_ _bound?155514_))))
    (define gx#core-bound-identifier?
      (lambda _g162380_
        (let ((_g162379_ (##length _g162380_)))
          (cond ((##fx= _g162379_ 1)
                 (apply (lambda (_id155512_)
                          (gx#core-bound-identifier?__0 _id155512_))
                        _g162380_))
                ((##fx= _g162379_ 2)
                 (apply (lambda (_id155516_ _bound?155517_)
                          (gx#core-bound-identifier?__%
                           _id155516_
                           _bound?155517_))
                        _g162380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g162380_))))))
    (define gx#core-identifier=?
      (lambda (_x155496_ _y155497_)
        (letrec ((_y=?155499_
                  (lambda (_xid155503_)
                    ((if (list? _y155497_) memq eq?) _xid155503_ _y155497_))))
          (let ((_bind155501_ (gx#resolve-identifier__0 _x155496_)))
            (if (##structure-instance-of? _bind155501_ 'gx#binding::t)
                (_y=?155499_
                 (##unchecked-structure-ref _bind155501_ '1 gx#binding::t '#f))
                (_y=?155499_ (gx#stx-e _x155496_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e155494_)
        (if (interned-symbol? _e155494_)
            (string-index (symbol->string _e155494_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx155449_ _src155450_ _ctx155451_ _marks155452_)
        (if (##structure? _stx155449_)
            (let ((_$e155454_ (gx#sealed-syntax-unwrap _stx155449_)))
              (if _$e155454_
                  (values _$e155454_)
                  (if (gx#identifier? _stx155449_)
                      (let ((_id155457_
                             (gx#stx-unwrap__% _stx155449_ _marks155452_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id155457_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e155459_
                                (##unchecked-structure-ref
                                 _id155457_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e155459_ _$e155459_ _src155450_))
                         _ctx155451_
                         (##unchecked-structure-ref
                          _id155457_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx155449_)
                       (let ((_$e155462_ (gx#stx-source _stx155449_)))
                         (if _$e155462_ _$e155462_ _src155450_))
                       _ctx155451_
                       (reverse _marks155452_)))))
            (##structure
             gx#syntax-quote::t
             _stx155449_
             _src155450_
             _ctx155451_
             (reverse _marks155452_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx155468_)
        (let* ((_src155470_ '#f)
               (_ctx155472_ (gx#current-expander-context))
               (_marks155474_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx155468_
           _src155470_
           _ctx155472_
           _marks155474_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx155476_ _src155477_)
        (let* ((_ctx155479_ (gx#current-expander-context))
               (_marks155481_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx155476_
           _src155477_
           _ctx155479_
           _marks155481_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx155483_ _src155484_ _ctx155485_)
        (let ((_marks155487_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx155483_
           _src155484_
           _ctx155485_
           _marks155487_))))
    (define gx#core-quote-syntax
      (lambda _g162382_
        (let ((_g162381_ (##length _g162382_)))
          (cond ((##fx= _g162381_ 1)
                 (apply (lambda (_stx155468_)
                          (gx#core-quote-syntax__0 _stx155468_))
                        _g162382_))
                ((##fx= _g162381_ 2)
                 (apply (lambda (_stx155476_ _src155477_)
                          (gx#core-quote-syntax__1 _stx155476_ _src155477_))
                        _g162382_))
                ((##fx= _g162381_ 3)
                 (apply (lambda (_stx155483_ _src155484_ _ctx155485_)
                          (gx#core-quote-syntax__2
                           _stx155483_
                           _src155484_
                           _ctx155485_))
                        _g162382_))
                ((##fx= _g162381_ 4)
                 (apply (lambda (_stx155489_
                                 _src155490_
                                 _ctx155491_
                                 _marks155492_)
                          (gx#core-quote-syntax__%
                           _stx155489_
                           _src155490_
                           _ctx155491_
                           _marks155492_))
                        _g162382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g162382_))))))
    (define gx#core-cons
      (lambda (_hd155445_ _tl155446_)
        (cons (gx#core-quote-syntax__0 _hd155445_) _tl155446_)))
    (define gx#core-list
      (lambda (_hd155442_ . _rest155443_)
        (cons (gx#core-quote-syntax__0 _hd155442_) _rest155443_)))
    (define gx#core-cons*
      (lambda (_hd155439_ . _rest155440_)
        (apply cons* (gx#core-quote-syntax__0 _hd155439_) _rest155440_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path155413_ _rel155414_)
        (let ((_path155426_ (gx#stx-e _stx-path155413_))
              (_reldir155427_
               (let _lp155416_ ((_relsrc155418_
                                 (let ((_$e155423_
                                        (gx#stx-source _stx-path155413_)))
                                   (if _$e155423_ _$e155423_ _rel155414_))))
                 (if (##structure-instance-of? _relsrc155418_ 'gerbil#AST::t)
                     (_lp155416_
                      (let ((_$e155420_ (gx#stx-source _relsrc155418_)))
                        (if _$e155420_ _$e155420_ (gx#stx-e _relsrc155418_))))
                     (if (source-location-path? _relsrc155418_)
                         (path-directory (source-location-path _relsrc155418_))
                         (if (string? _relsrc155418_)
                             (path-directory _relsrc155418_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path155426_ (path-normalize _reldir155427_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path155432_)
        (let ((_rel155434_ '#f))
          (gx#core-resolve-path__% _stx-path155432_ _rel155434_))))
    (define gx#core-resolve-path
      (lambda _g162384_
        (let ((_g162383_ (##length _g162384_)))
          (cond ((##fx= _g162383_ 1)
                 (apply (lambda (_stx-path155432_)
                          (gx#core-resolve-path__0 _stx-path155432_))
                        _g162384_))
                ((##fx= _g162383_ 2)
                 (apply (lambda (_stx-path155436_ _rel155437_)
                          (gx#core-resolve-path__%
                           _stx-path155436_
                           _rel155437_))
                        _g162384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g162384_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr155369_ _ctx155370_)
        (let* ((_repr155371155378_ _repr155369_)
               (_E155373155382_
                (lambda () (error '"No clause matching" _repr155371155378_)))
               (_K155374155390_
                (lambda (_subs155385_ _phi155386_)
                  (let ((_subst155388_
                         (if (not (null? _subs155385_))
                             (list->hash-table-eq _subs155385_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst155388_
                     _ctx155370_
                     _phi155386_
                     '#f)))))
          (if (##pair? _repr155371155378_)
              (let ((_hd155375155393_ (##car _repr155371155378_))
                    (_tl155376155395_ (##cdr _repr155371155378_)))
                (let* ((_phi155398_ _hd155375155393_)
                       (_subs155400_ _tl155376155395_))
                  (_K155374155390_ _subs155400_ _phi155398_)))
              (_E155373155382_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr155405_)
        (let ((_ctx155407_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr155405_ _ctx155407_))))
    (define gx#core-deserialize-mark
      (lambda _g162386_
        (let ((_g162385_ (##length _g162386_)))
          (cond ((##fx= _g162385_ 1)
                 (apply (lambda (_repr155405_)
                          (gx#core-deserialize-mark__0 _repr155405_))
                        _g162386_))
                ((##fx= _g162385_ 2)
                 (apply (lambda (_repr155409_ _ctx155410_)
                          (gx#core-deserialize-mark__%
                           _repr155409_
                           _ctx155410_))
                        _g162386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g162386_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx155366_)
        (gx#stx-rewrap _stx155366_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx155364_)
        (gx#stx-unwrap__% _stx155364_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx155334_)
        (let* ((_g155335155343_ (gx#current-expander-marks))
               (_else155337155351_ (lambda () _stx155334_))
               (_K155339155356_
                (lambda (_hd155354_)
                  (gx#stx-apply-mark _stx155334_ _hd155354_))))
          (if (##pair? _g155335155343_)
              (let* ((_hd155340155359_ (##car _g155335155343_))
                     (_hd155362_ _hd155340155359_))
                (_K155339155356_ _hd155362_))
              (_else155337155351_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx155319_ _E155320_)
        (let ((_bind155322_ (gx#resolve-identifier__0 _stx155319_)))
          (if (##structure-direct-instance-of?
               _bind155322_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind155322_
               '4
               gx#syntax-binding::t
               '#f)
              (_E155320_ _stx155319_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx155327_)
        (let ((_E155329_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx155327_ _E155329_))))
    (define gx#syntax-local-e
      (lambda _g162388_
        (let ((_g162387_ (##length _g162388_)))
          (cond ((##fx= _g162387_ 1)
                 (apply (lambda (_stx155327_)
                          (gx#syntax-local-e__0 _stx155327_))
                        _g162388_))
                ((##fx= _g162387_ 2)
                 (apply (lambda (_stx155331_ _E155332_)
                          (gx#syntax-local-e__% _stx155331_ _E155332_))
                        _g162388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g162388_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx155303_ _E155304_)
        (let ((_e155306_ (gx#syntax-local-e__% _stx155303_ _E155304_)))
          (if (##structure-instance-of? _e155306_ 'gx#expander::t)
              (##structure-ref _e155306_ '1 gx#expander::t '#f)
              _e155306_))))
    (define gx#syntax-local-value__0
      (lambda (_stx155311_)
        (let ((_E155313_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx155311_ _E155313_))))
    (define gx#syntax-local-value
      (lambda _g162390_
        (let ((_g162389_ (##length _g162390_)))
          (cond ((##fx= _g162389_ 1)
                 (apply (lambda (_stx155311_)
                          (gx#syntax-local-value__0 _stx155311_))
                        _g162390_))
                ((##fx= _g162389_ 2)
                 (apply (lambda (_stx155315_ _E155316_)
                          (gx#syntax-local-value__% _stx155315_ _E155316_))
                        _g162390_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g162390_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx155300_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx155300_)))))
