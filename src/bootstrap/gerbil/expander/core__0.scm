(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707659879)
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
      (lambda _$args143091_
        (apply make-instance gx#expander-context::t _$args143091_)))
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
      (lambda _$args143088_
        (apply make-instance gx#root-context::t _$args143088_)))
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
      (lambda _$args143085_
        (apply make-instance gx#phi-context::t _$args143085_)))
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
      (lambda _$args143082_
        (apply make-instance gx#top-context::t _$args143082_)))
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
      (lambda _$args143079_
        (apply make-instance gx#module-context::t _$args143079_)))
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
      (lambda _$args143076_
        (apply make-instance gx#prelude-context::t _$args143076_)))
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
      (lambda _$args143073_
        (apply make-instance gx#local-context::t _$args143073_)))
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
      (lambda (_self143057_ _id143058_ _super143059_)
        (if (##fx< '3 (##structure-length _self143057_))
            (begin
              (##unchecked-structure-set!
               _self143057_
               _id143058_
               '1
               (##structure-type _self143057_)
               '#f)
              (##unchecked-structure-set!
               _self143057_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143057_)
               '#f)
              (##unchecked-structure-set!
               _self143057_
               _super143059_
               '3
               (##structure-type _self143057_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143057_
                   '3
                   (##vector-length _self143057_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143064_ _id143065_)
        (let ((_super143067_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143064_ _id143065_ _super143067_))))
    (define gx#phi-context:::init!
      (lambda _g147602_
        (let ((_g147601_ (##length _g147602_)))
          (cond ((##fx= _g147601_ 2)
                 (apply (lambda (_self143064_ _id143065_)
                          (gx#phi-context:::init!__0 _self143064_ _id143065_))
                        _g147602_))
                ((##fx= _g147601_ 3)
                 (apply (lambda (_self143069_ _id143070_ _super143071_)
                          (gx#phi-context:::init!__%
                           _self143069_
                           _id143070_
                           _super143071_))
                        _g147602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g147602_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self142921_ _super142922_)
        (if (##fx< '3 (##structure-length _self142921_))
            (begin
              (##unchecked-structure-set!
               _self142921_
               (gensym 'L)
               '1
               (##structure-type _self142921_)
               '#f)
              (##unchecked-structure-set!
               _self142921_
               (make-table 'test: eq?)
               '2
               (##structure-type _self142921_)
               '#f)
              (##unchecked-structure-set!
               _self142921_
               _super142922_
               '3
               (##structure-type _self142921_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self142921_
                   '3
                   (##vector-length _self142921_)))))
    (define gx#local-context:::init!__0
      (lambda (_self142927_)
        (let ((_super142929_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self142927_ _super142929_))))
    (define gx#local-context:::init!
      (lambda _g147604_
        (let ((_g147603_ (##length _g147604_)))
          (cond ((##fx= _g147603_ 1)
                 (apply (lambda (_self142927_)
                          (gx#local-context:::init!__0 _self142927_))
                        _g147604_))
                ((##fx= _g147603_ 2)
                 (apply (lambda (_self142931_ _super142932_)
                          (gx#local-context:::init!__%
                           _self142931_
                           _super142932_))
                        _g147604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g147604_))))))
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
      (lambda _$args142795_ (apply make-instance gx#binding::t _$args142795_)))
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
      (lambda _$args142792_
        (apply make-instance gx#runtime-binding::t _$args142792_)))
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
      (lambda _$args142789_
        (apply make-instance gx#local-binding::t _$args142789_)))
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
      (lambda _$args142786_
        (apply make-instance gx#top-binding::t _$args142786_)))
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
      (lambda _$args142783_
        (apply make-instance gx#module-binding::t _$args142783_)))
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
      (lambda _$args142780_
        (apply make-instance gx#extern-binding::t _$args142780_)))
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
      (lambda _$args142777_
        (apply make-instance gx#syntax-binding::t _$args142777_)))
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
      (lambda _$args142774_
        (apply make-instance gx#import-binding::t _$args142774_)))
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
      (lambda _$args142771_
        (apply make-instance gx#alias-binding::t _$args142771_)))
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
      (lambda _$args142768_
        (apply make-instance gx#expander::t _$args142768_)))
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
      (lambda _$args142765_
        (apply make-instance gx#core-expander::t _$args142765_)))
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
      (lambda _$args142762_
        (apply make-instance gx#expression-form::t _$args142762_)))
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
      (lambda _$args142759_
        (apply make-instance gx#special-form::t _$args142759_)))
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
      (lambda _$args142756_
        (apply make-instance gx#definition-form::t _$args142756_)))
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
      (lambda _$args142753_
        (apply make-instance gx#top-special-form::t _$args142753_)))
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
      (lambda _$args142750_
        (apply make-instance gx#module-special-form::t _$args142750_)))
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
      (lambda _$args142747_
        (apply make-instance gx#feature-expander::t _$args142747_)))
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
      (lambda _$args142744_
        (apply make-instance gx#private-feature-expander::t _$args142744_)))
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
      (lambda _$args142741_
        (apply make-instance gx#reserved-expander::t _$args142741_)))
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
      (lambda _$args142738_
        (apply make-instance gx#macro-expander::t _$args142738_)))
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
      (lambda _$args142735_
        (apply make-instance gx#rename-macro-expander::t _$args142735_)))
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
      (lambda _$args142732_
        (apply make-instance gx#user-expander::t _$args142732_)))
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
      (lambda _$args142729_
        (apply make-instance gx#expander-mark::t _$args142729_)))
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
      (lambda (_ctx142714_ _message142715_ _stx142716_ . _details142717_)
        (let ((_ctx142727_
               (let ((_$e142719_ _ctx142714_))
                 (if _$e142719_
                     _$e142719_
                     (let ((_$e142722_ (gx#core-context-top__0)))
                       (if _$e142722_
                           ((lambda (_ctx142725_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx142725_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e142722_)
                           '#f))))))
          (raise (make-syntax-error
                  _message142715_
                  (cons _stx142716_ _details142717_)
                  _ctx142727_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx142701_ _expression?142702_)
        (gx#eval-syntax* (gx#core-expand__% _stx142701_ _expression?142702_))))
    (define gx#eval-syntax__0
      (lambda (_stx142707_)
        (let ((_expression?142709_ '#f))
          (gx#eval-syntax__% _stx142707_ _expression?142709_))))
    (define gx#eval-syntax
      (lambda _g147606_
        (let ((_g147605_ (##length _g147606_)))
          (cond ((##fx= _g147605_ 1)
                 (apply (lambda (_stx142707_) (gx#eval-syntax__0 _stx142707_))
                        _g147606_))
                ((##fx= _g147605_ 2)
                 (apply (lambda (_stx142711_ _expression?142712_)
                          (gx#eval-syntax__% _stx142711_ _expression?142712_))
                        _g147606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g147606_))))))
    (define gx#eval-syntax*
      (lambda (_stx142698_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx142698_))))
    (define gx#core-expand__%
      (lambda (_stx142685_ _expression?142686_)
        (if _expression?142686_
            (gx#core-expand-expression _stx142685_)
            (gx#core-expand-top _stx142685_))))
    (define gx#core-expand__0
      (lambda (_stx142691_)
        (let ((_expression?142693_ '#f))
          (gx#core-expand__% _stx142691_ _expression?142693_))))
    (define gx#core-expand
      (lambda _g147608_
        (let ((_g147607_ (##length _g147608_)))
          (cond ((##fx= _g147607_ 1)
                 (apply (lambda (_stx142691_) (gx#core-expand__0 _stx142691_))
                        _g147608_))
                ((##fx= _g147607_ 2)
                 (apply (lambda (_stx142695_ _expression?142696_)
                          (gx#core-expand__% _stx142695_ _expression?142696_))
                        _g147608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g147608_))))))
    (define gx#core-expand-top
      (lambda (_stx142652_)
        (let* ((_stx142654_ (gx#core-expand*__0 _stx142652_))
               (_e142655142662_ _stx142654_)
               (_E142657142666_
                (lambda () (gx#core-expand-expression _stx142654_)))
               (_E142656142680_
                (lambda ()
                  (if (gx#stx-pair? _e142655142662_)
                      (let ((_e142658142670_ (gx#syntax-e _e142655142662_)))
                        (let ((_hd142659142673_ (##car _e142658142670_))
                              (_tl142660142675_ (##cdr _e142658142670_)))
                          (let ((_form142678_ _hd142659142673_))
                            (if (gx#core-bound-identifier?__0 _form142678_)
                                _stx142654_
                                (_E142657142666_)))))
                      (_E142657142666_)))))
          (_E142656142680_))))
    (define gx#core-expand-expression
      (lambda (_stx142599_)
        (letrec ((_sealed-expression?142601_
                  (lambda (_hd142622_)
                    (if (gx#sealed-syntax? _hd142622_)
                        (let* ((_e142623142630_ _hd142622_)
                               (_E142625142634_ (lambda () '#f))
                               (_E142624142648_
                                (lambda ()
                                  (if (gx#stx-pair? _e142623142630_)
                                      (let ((_e142626142638_
                                             (gx#syntax-e _e142623142630_)))
                                        (let ((_hd142627142641_
                                               (##car _e142626142638_))
                                              (_tl142628142643_
                                               (##cdr _e142626142638_)))
                                          (let ((_form142646_
                                                 _hd142627142641_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form142646_
                                                 gx#expression-form-binding?)
                                                (_E142625142634_)))))
                                      (_E142625142634_)))))
                          (_E142624142648_))
                        '#f)))
                 (_illegal-expression142602_
                  (lambda (_hd142620_ . _g147609_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx142599_
                     _hd142620_)))
                 (_expand-e142603_
                  (lambda (_form142615_ _hd142616_)
                    (let ((_bind142618_
                           (if (##structure-instance-of?
                                _form142615_
                                'gx#binding::t)
                               _form142615_
                               (gx#resolve-identifier__0 _form142615_))))
                      (if (gx#core-expander-binding? _bind142618_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind142618_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd142616_
                            (gx#stx-source _stx142599_)))
                          (if (##structure-direct-instance-of?
                               _bind142618_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind142618_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd142616_
                                 (gx#stx-source _stx142599_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx142599_
                               _form142615_)))))))
          (let ((_hd142605_ (gx#core-expand-head _stx142599_)))
            (if (_sealed-expression?142601_ _hd142605_)
                _hd142605_
                (if (gx#stx-pair? _hd142605_)
                    (let* ((_form142607_ (gx#stx-car _hd142605_))
                           (_bind142609_
                            (if (gx#identifier? _form142607_)
                                (gx#resolve-identifier__0 _form142607_)
                                '#f)))
                      (if (or (not _bind142609_)
                              (not (gx#core-expander-binding? _bind142609_)))
                          (_expand-e142603_ '%%app (cons '%%app _hd142605_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind142609_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd142605_
                               _illegal-expression142602_)
                              (if (gx#expression-form-binding? _bind142609_)
                                  (_expand-e142603_ _bind142609_ _hd142605_)
                                  (if (gx#direct-special-form-binding?
                                       _bind142609_)
                                      (gx#core-expand-expression
                                       (_expand-e142603_
                                        _bind142609_
                                        _hd142605_))
                                      (_illegal-expression142602_
                                       _hd142605_))))))
                    (if (gx#core-bound-identifier?__0 _hd142605_)
                        (_illegal-expression142602_ _hd142605_)
                        (if (gx#identifier? _hd142605_)
                            (_expand-e142603_
                             '%%ref
                             (cons '%%ref (cons _hd142605_ '())))
                            (if (gx#stx-datum? _hd142605_)
                                (_expand-e142603_
                                 '%#quote
                                 (cons '%#quote (cons _hd142605_ '())))
                                (_illegal-expression142602_
                                 _hd142605_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx142594_)
        (call-with-parameters
         (lambda ()
           (let ((_stx142597_ (gx#core-expand-expression _stx142594_)))
             (values _stx142597_ (gx#eval-syntax* _stx142597_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx142575_ _stop?142576_)
        (let _lp142578_ ((_stx142580_ _stx142575_))
          (if (_stop?142576_ _stx142580_)
              _stx142580_
              (let ((_rstx142582_ (gx#core-expand1 _stx142580_)))
                (if (eq? _stx142580_ _rstx142582_)
                    _stx142580_
                    (_lp142578_ _rstx142582_)))))))
    (define gx#core-expand*__0
      (lambda (_stx142587_)
        (let ((_stop?142589_ false))
          (gx#core-expand*__% _stx142587_ _stop?142589_))))
    (define gx#core-expand*
      (lambda _g147611_
        (let ((_g147610_ (##length _g147611_)))
          (cond ((##fx= _g147610_ 1)
                 (apply (lambda (_stx142587_) (gx#core-expand*__0 _stx142587_))
                        _g147611_))
                ((##fx= _g147610_ 2)
                 (apply (lambda (_stx142591_ _stop?142592_)
                          (gx#core-expand*__% _stx142591_ _stop?142592_))
                        _g147611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g147611_))))))
    (define gx#core-expand1
      (lambda (_stx142531_)
        (letrec ((_step142533_
                  (lambda (_hd142570_)
                    (let ((_bind142572_ (gx#resolve-identifier__0 _hd142570_)))
                      (if (##structure-instance-of?
                           _bind142572_
                           'gx#runtime-binding::t)
                          _stx142531_
                          (if (##structure-direct-instance-of?
                               _bind142572_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind142572_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx142531_)
                              (if (not _bind142572_)
                                  _stx142531_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx142531_))))))))
          (let* ((_e142534142542_ _stx142531_)
                 (_E142540142546_ (lambda () _stx142531_))
                 (_E142536142552_
                  (lambda ()
                    (let ((_hd142550_ _e142534142542_))
                      (if (gx#identifier? _hd142550_)
                          (_step142533_ _hd142550_)
                          (_E142540142546_)))))
                 (_E142535142566_
                  (lambda ()
                    (if (gx#stx-pair? _e142534142542_)
                        (let ((_e142537142556_ (gx#syntax-e _e142534142542_)))
                          (let ((_hd142538142559_ (##car _e142537142556_))
                                (_tl142539142561_ (##cdr _e142537142556_)))
                            (let ((_hd142564_ _hd142538142559_))
                              (if (gx#identifier? _hd142564_)
                                  (_step142533_ _hd142564_)
                                  (_E142536142552_)))))
                        (_E142536142552_)))))
            (_E142535142566_)))))
    (define gx#core-expand-head
      (lambda (_stx142497_)
        (letrec ((_stop?142499_
                  (lambda (_stx142501_)
                    (let* ((_e142502142509_ _stx142501_)
                           (_E142504142513_ (lambda () '#f))
                           (_E142503142527_
                            (lambda ()
                              (if (gx#stx-pair? _e142502142509_)
                                  (let ((_e142505142517_
                                         (gx#syntax-e _e142502142509_)))
                                    (let ((_hd142506142520_
                                           (##car _e142505142517_))
                                          (_tl142507142522_
                                           (##cdr _e142505142517_)))
                                      (let ((_hd142525_ _hd142506142520_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd142525_)
                                            (_E142504142513_)))))
                                  (_E142504142513_)))))
                      (_E142503142527_)))))
          (gx#core-expand*__% _stx142497_ _stop?142499_))))
    (define gx#core-expand-block__%
      (lambda (_stx142303_
               _expand-special142304_
               _begin-form142305_
               _expand-e142306_)
        (letrec ((_expand-splice142308_
                  (lambda (_hd142471_ _body142472_ _rest142473_ _r142474_)
                    (if (gx#stx-list? _body142472_)
                        (_K142312_
                         (gx#stx-foldr cons _rest142473_ _body142472_)
                         _r142474_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142303_
                         _hd142471_))))
                 (_expand-cond-expand142309_
                  (lambda (_hd142467_ _rest142468_ _r142469_)
                    (_K142312_
                     (cons (gx#core-expand-cond-expand% _hd142467_)
                           _rest142468_)
                     _r142469_)))
                 (_expand-include142310_
                  (lambda (_hd142416_ _rest142417_ _r142418_)
                    (let* ((_e142419142429_ _hd142416_)
                           (_E142421142433_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142419142429_)))
                           (_E142420142463_
                            (lambda ()
                              (if (gx#stx-pair? _e142419142429_)
                                  (let ((_e142422142437_
                                         (gx#syntax-e _e142419142429_)))
                                    (let ((_hd142423142440_
                                           (##car _e142422142437_))
                                          (_tl142424142442_
                                           (##cdr _e142422142437_)))
                                      (if (gx#stx-pair? _tl142424142442_)
                                          (let ((_e142425142445_
                                                 (gx#syntax-e
                                                  _tl142424142442_)))
                                            (let ((_hd142426142448_
                                                   (##car _e142425142445_))
                                                  (_tl142427142450_
                                                   (##cdr _e142425142445_)))
                                              (let ((_path142453_
                                                     _hd142426142448_))
                                                (if (gx#stx-null?
                                                     _tl142427142450_)
                                                    (if (gx#stx-string?
                                                         _path142453_)
                                                        (let* ((_rpath142455_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142453_
                         (gx#stx-source _hd142416_)))
                       (_block142457_
                        (gx#core-expand-include%__% _hd142416_ _rpath142455_))
                       (_rbody142460_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142457_
                            _expand-special142304_
                            '#f
                            _expand-e142306_))
                         gx#current-expander-path
                         (cons _rpath142455_ (gx#current-expander-path)))))
                  (_K142312_
                   _rest142417_
                   (foldr1 cons _r142418_ _rbody142460_)))
                (_E142421142433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142421142433_)))))
                                          (_E142421142433_))))
                                  (_E142421142433_)))))
                      (_E142420142463_))))
                 (_expand-expression142311_
                  (lambda (_hd142412_ _rest142413_ _r142414_)
                    (_K142312_
                     _rest142413_
                     (cons (_expand-e142306_ _hd142412_) _r142414_))))
                 (_K142312_
                  (lambda (_rest142342_ _r142343_)
                    (let* ((_e142344142351_ _rest142342_)
                           (_E142346142355_
                            (lambda ()
                              (if _begin-form142305_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142305_
                                    (reverse _r142343_))
                                   (gx#stx-source _stx142303_))
                                  _r142343_)))
                           (_E142345142408_
                            (lambda ()
                              (if (gx#stx-pair? _e142344142351_)
                                  (let ((_e142347142359_
                                         (gx#syntax-e _e142344142351_)))
                                    (let ((_hd142348142362_
                                           (##car _e142347142359_))
                                          (_tl142349142364_
                                           (##cdr _e142347142359_)))
                                      (let* ((_hd142367_ _hd142348142362_)
                                             (_rest142369_ _tl142349142364_))
                                        (if '#t
                                            (let* ((_hd142371_
                                                    (gx#core-expand-head
                                                     _hd142367_))
                                                   (_e142372142379_ _hd142371_)
                                                   (_E142374142383_
                                                    (lambda ()
                                                      (_expand-expression142311_
                                                       _hd142371_
                                                       _rest142369_
                                                       _r142343_)))
                                                   (_E142373142404_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142372142379_)
                                                          (let ((_e142375142387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142372142379_)))
                    (let ((_hd142376142390_ (##car _e142375142387_))
                          (_tl142377142392_ (##cdr _e142375142387_)))
                      (let* ((_form142395_ _hd142376142390_)
                             (_body142397_ _tl142377142392_))
                        (if '#t
                            (let ((_bind142399_
                                   (if (gx#identifier? _form142395_)
                                       (gx#resolve-identifier__0 _form142395_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142399_)
                                  (let ((_$e142401_
                                         (##unchecked-structure-ref
                                          _bind142399_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e142401_)
                                        (_expand-splice142308_
                                         _hd142371_
                                         _body142397_
                                         _rest142369_
                                         _r142343_)
                                        (if (eq? '%#cond-expand _$e142401_)
                                            (_expand-cond-expand142309_
                                             _hd142371_
                                             _rest142369_
                                             _r142343_)
                                            (if (eq? '%#include _$e142401_)
                                                (_expand-include142310_
                                                 _hd142371_
                                                 _rest142369_
                                                 _r142343_)
                                                (_expand-special142304_
                                                 _hd142371_
                                                 _K142312_
                                                 _rest142369_
                                                 _r142343_)))))
                                  (_expand-expression142311_
                                   _hd142371_
                                   _rest142369_
                                   _r142343_)))
                            (_E142374142383_)))))
                  (_E142374142383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142373142404_))
                                            (_E142346142355_)))))
                                  (_E142346142355_)))))
                      (_E142345142408_)))))
          (let* ((_e142313142320_ _stx142303_)
                 (_E142315142324_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142313142320_)))
                 (_E142314142338_
                  (lambda ()
                    (if (gx#stx-pair? _e142313142320_)
                        (let ((_e142316142328_ (gx#syntax-e _e142313142320_)))
                          (let ((_hd142317142331_ (##car _e142316142328_))
                                (_tl142318142333_ (##cdr _e142316142328_)))
                            (let ((_body142336_ _tl142318142333_))
                              (if (gx#stx-list? _body142336_)
                                  (_K142312_ _body142336_ '())
                                  (_E142315142324_)))))
                        (_E142315142324_)))))
            (_E142314142338_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142479_ _expand-special142480_)
        (let* ((_begin-form142482_ '%#begin)
               (_expand-e142484_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142479_
           _expand-special142480_
           _begin-form142482_
           _expand-e142484_))))
    (define gx#core-expand-block__1
      (lambda (_stx142486_ _expand-special142487_ _begin-form142488_)
        (let ((_expand-e142490_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142486_
           _expand-special142487_
           _begin-form142488_
           _expand-e142490_))))
    (define gx#core-expand-block
      (lambda _g147613_
        (let ((_g147612_ (##length _g147613_)))
          (cond ((##fx= _g147612_ 2)
                 (apply (lambda (_stx142479_ _expand-special142480_)
                          (gx#core-expand-block__0
                           _stx142479_
                           _expand-special142480_))
                        _g147613_))
                ((##fx= _g147612_ 3)
                 (apply (lambda (_stx142486_
                                 _expand-special142487_
                                 _begin-form142488_)
                          (gx#core-expand-block__1
                           _stx142486_
                           _expand-special142487_
                           _begin-form142488_))
                        _g147613_))
                ((##fx= _g147612_ 4)
                 (apply (lambda (_stx142492_
                                 _expand-special142493_
                                 _begin-form142494_
                                 _expand-e142495_)
                          (gx#core-expand-block__%
                           _stx142492_
                           _expand-special142493_
                           _begin-form142494_
                           _expand-e142495_))
                        _g147613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g147613_))))))
    (define gx#core-expand-block*
      (lambda (_stx142251_ _expand-special142252_)
        (let* ((_g142253142264_
                (gx#core-expand-block__1
                 _stx142251_
                 _expand-special142252_
                 '#f))
               (_E142257142268_
                (lambda () (error '"No clause matching" _g142253142264_))))
          (let ((_K142262142299_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142251_)))
                (_K142259142285_ (lambda (_expr142283_) _expr142283_))
                (_K142258142274_
                 (lambda (_body142272_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142272_))
                    (gx#stx-source _stx142251_)))))
            (let ((_try-match142255142295_
                   (lambda ()
                     (if (##pair? _g142253142264_)
                         (let ((_tl142261142290_ (##cdr _g142253142264_))
                               (_hd142260142288_ (##car _g142253142264_)))
                           (if (##null? _tl142261142290_)
                               (let ((_expr142293_ _hd142260142288_))
                                 (_K142259142285_ _expr142293_))
                               (let ((_body142277_ _g142253142264_))
                                 (_K142258142274_ _body142277_))))
                         (let ((_body142277_ _g142253142264_))
                           (_K142258142274_ _body142277_))))))
              (if (##null? _g142253142264_)
                  (_K142262142299_)
                  (_try-match142255142295_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142079_)
        (letrec ((_satisfied?142081_
                  (lambda (_condition142179_)
                    (let* ((_e142180142195_ _condition142179_)
                           (_E142190142199_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142180142195_)))
                           (_E142183142218_
                            (lambda ()
                              (if (gx#stx-pair? _e142180142195_)
                                  (let ((_e142191142203_
                                         (gx#syntax-e _e142180142195_)))
                                    (let ((_hd142192142206_
                                           (##car _e142191142203_))
                                          (_tl142193142208_
                                           (##cdr _e142191142203_)))
                                      (let* ((_combinator142211_
                                              _hd142192142206_)
                                             (_body142213_ _tl142193142208_))
                                        (if (gx#stx-list? _body142213_)
                                            (let ((_$e142215_
                                                   (gx#stx-e
                                                    _combinator142211_)))
                                              (if (eq? 'not _$e142215_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142081_
                                                        _body142213_))
                                                  (if (eq? 'and _$e142215_)
                                                      (gx#stx-andmap
                                                       _satisfied?142081_
                                                       _body142213_)
                                                      (if (eq? 'or _$e142215_)
                                                          (gx#stx-ormap
                                                           _satisfied?142081_
                                                           _body142213_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142215_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142213_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142079_
                       _combinator142211_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142190142199_)))))
                                  (_E142190142199_))))
                           (_E142182142241_
                            (lambda ()
                              (if (gx#stx-pair? _e142180142195_)
                                  (let ((_e142184142222_
                                         (gx#syntax-e _e142180142195_)))
                                    (let ((_hd142185142225_
                                           (##car _e142184142222_))
                                          (_tl142186142227_
                                           (##cdr _e142184142222_)))
                                      (if (and (gx#identifier?
                                                _hd142185142225_)
                                               (gx#core-identifier=?
                                                _hd142185142225_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142186142227_)
                                              (let ((_e142187142230_
                                                     (gx#syntax-e
                                                      _tl142186142227_)))
                                                (let ((_hd142188142233_
                                                       (##car _e142187142230_))
                                                      (_tl142189142235_
                                                       (##cdr _e142187142230_)))
                                                  (let ((_expr142238_
                                                         _hd142188142233_))
                                                    (if (gx#stx-null?
                                                         _tl142189142235_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142238_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142183142218_))
                (_E142183142218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142183142218_))
                                          (_E142183142218_))))
                                  (_E142183142218_))))
                           (_E142181142247_
                            (lambda ()
                              (let ((_id142245_ _e142180142195_))
                                (if (gx#identifier? _id142245_)
                                    (gx#core-bound-identifier?__%
                                     _id142245_
                                     gx#feature-binding?)
                                    (_E142182142241_))))))
                      (_E142181142247_))))
                 (_loop142082_
                  (lambda (_rest142112_)
                    (let* ((_e142113142121_ _rest142112_)
                           (_E142119142125_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142113142121_)))
                           (_E142115142129_
                            (lambda ()
                              (if (gx#stx-null? _e142113142121_)
                                  (if '#t '() (_E142119142125_))
                                  (_E142119142125_))))
                           (_E142114142175_
                            (lambda ()
                              (if (gx#stx-pair? _e142113142121_)
                                  (let ((_e142116142133_
                                         (gx#syntax-e _e142113142121_)))
                                    (let ((_hd142117142136_
                                           (##car _e142116142133_))
                                          (_tl142118142138_
                                           (##cdr _e142116142133_)))
                                      (let* ((_hd142141_ _hd142117142136_)
                                             (_rest142143_ _tl142118142138_))
                                        (if '#t
                                            (let* ((_e142144142151_ _hd142141_)
                                                   (_E142146142155_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142144142151_)))
                                                   (_E142145142171_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142144142151_)
                                                          (let ((_e142147142159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142144142151_)))
                    (let ((_hd142148142162_ (##car _e142147142159_))
                          (_tl142149142164_ (##cdr _e142147142159_)))
                      (let* ((_condition142167_ _hd142148142162_)
                             (_body142169_ _tl142149142164_))
                        (if '#t
                            (if (gx#stx-eq? _condition142167_ 'else)
                                (if (gx#stx-null? _rest142143_)
                                    _body142169_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142079_
                                     _hd142141_))
                                (if (_satisfied?142081_ _condition142167_)
                                    _body142169_
                                    (_loop142082_ _rest142143_)))
                            (_E142146142155_)))))
                  (_E142146142155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142145142171_))
                                            (_E142115142129_)))))
                                  (_E142115142129_)))))
                      (_E142114142175_)))))
          (let* ((_e142083142090_ _stx142079_)
                 (_E142085142094_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142083142090_)))
                 (_E142084142108_
                  (lambda ()
                    (if (gx#stx-pair? _e142083142090_)
                        (let ((_e142086142098_ (gx#syntax-e _e142083142090_)))
                          (let ((_hd142087142101_ (##car _e142086142098_))
                                (_tl142088142103_ (##cdr _e142086142098_)))
                            (let ((_clauses142106_ _tl142088142103_))
                              (if (gx#stx-list? _clauses142106_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142082_ _clauses142106_))
                                  (_E142085142094_)))))
                        (_E142085142094_)))))
            (_E142084142108_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142022_ _rpath142023_)
        (let* ((_e142024142034_ _stx142022_)
               (_E142026142038_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142024142034_)))
               (_E142025142065_
                (lambda ()
                  (if (gx#stx-pair? _e142024142034_)
                      (let ((_e142027142042_ (gx#syntax-e _e142024142034_)))
                        (let ((_hd142028142045_ (##car _e142027142042_))
                              (_tl142029142047_ (##cdr _e142027142042_)))
                          (if (gx#stx-pair? _tl142029142047_)
                              (let ((_e142030142050_
                                     (gx#syntax-e _tl142029142047_)))
                                (let ((_hd142031142053_
                                       (##car _e142030142050_))
                                      (_tl142032142055_
                                       (##cdr _e142030142050_)))
                                  (let ((_path142058_ _hd142031142053_))
                                    (if (gx#stx-null? _tl142032142055_)
                                        (if (gx#stx-string? _path142058_)
                                            (let ((_rpath142063_
                                                   (let ((_$e142060_
                                                          _rpath142023_))
                                                     (if _$e142060_
                                                         _$e142060_
                                                         (gx#core-resolve-path__%
                                                          _path142058_
                                                          (gx#stx-source
                                                           _stx142022_))))))
                                              (if (member _rpath142063_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142022_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142063_))
                                                    (gx#stx-source
                                                     _stx142022_)))))
                                            (_E142026142038_))
                                        (_E142026142038_)))))
                              (_E142026142038_))))
                      (_E142026142038_)))))
          (_E142025142065_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142072_)
        (let ((_rpath142074_ '#f))
          (gx#core-expand-include%__% _stx142072_ _rpath142074_))))
    (define gx#core-expand-include%
      (lambda _g147615_
        (let ((_g147614_ (##length _g147615_)))
          (cond ((##fx= _g147614_ 1)
                 (apply (lambda (_stx142072_)
                          (gx#core-expand-include%__0 _stx142072_))
                        _g147615_))
                ((##fx= _g147614_ 2)
                 (apply (lambda (_stx142076_ _rpath142077_)
                          (gx#core-expand-include%__%
                           _stx142076_
                           _rpath142077_))
                        _g147615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g147615_))))))
    (define gx#core-apply-expander__%
      (lambda (_K141991_ _stx141992_ _method141993_)
        (if (procedure? _K141991_)
            (let ((_$e141995_ (gx#stx-source _stx141992_)))
              (if _$e141995_
                  ((lambda (_g141997141999_)
                     (gx#stx-wrap-source
                      (_K141991_ _stx141992_)
                      _g141997141999_))
                   _$e141995_)
                  (_K141991_ _stx141992_)))
            (let ((_$e142002_ (bound-method-ref _K141991_ _method141993_)))
              (if _$e142002_
                  ((lambda (_g142004142006_)
                     (gx#core-apply-expander__%
                      _g142004142006_
                      _stx141992_
                      _method141993_))
                   _$e142002_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx141992_
                   _method141993_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142012_ _stx142013_)
        (let ((_method142015_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142012_ _stx142013_ _method142015_))))
    (define gx#core-apply-expander
      (lambda _g147617_
        (let ((_g147616_ (##length _g147617_)))
          (cond ((##fx= _g147616_ 2)
                 (apply (lambda (_K142012_ _stx142013_)
                          (gx#core-apply-expander__0 _K142012_ _stx142013_))
                        _g147617_))
                ((##fx= _g147616_ 3)
                 (apply (lambda (_K142017_ _stx142018_ _method142019_)
                          (gx#core-apply-expander__%
                           _K142017_
                           _stx142018_
                           _method142019_))
                        _g147617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g147617_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self141987_ _stx141988_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx141988_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self141840_ _stx141841_)
        (let* ((_self141842141848_ _self141840_)
               (_E141844141852_
                (lambda () (error '"No clause matching" _self141842141848_)))
               (_K141845141857_
                (lambda (_K141855_)
                  (gx#core-apply-expander__0 _K141855_ _stx141841_))))
          (if (##structure-instance-of? _self141842141848_ 'gx#core-macro::t)
              (let* ((_e141846141860_
                      (##unchecked-structure-ref
                       _self141842141848_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141863_ _e141846141860_))
                (_K141845141857_ _K141863_))
              (_E141844141852_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self141693_ _stx141694_)
        (if (gx#sealed-syntax? _stx141694_)
            _stx141694_
            (let* ((_self141695141701_ _self141693_)
                   (_E141697141705_
                    (lambda ()
                      (error '"No clause matching" _self141695141701_)))
                   (_K141698141710_
                    (lambda (_K141708_)
                      (gx#core-apply-expander__0 _K141708_ _stx141694_))))
              (if (##structure-instance-of?
                   _self141695141701_
                   'gx#core-expander::t)
                  (let* ((_e141699141713_
                          (##unchecked-structure-ref
                           _self141695141701_
                           '1
                           gx#expander::t
                           '#f))
                         (_K141716_ _e141699141713_))
                    (_K141698141710_ _K141716_))
                  (_E141697141705_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self141555_ _stx141556_ _top?141557_)
        (if (_top?141557_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self141555_ _stx141556_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx141556_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self141562_ _stx141563_)
        (let ((_top?141565_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self141562_
           _stx141563_
           _top?141565_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g147619_
        (let ((_g147618_ (##length _g147619_)))
          (cond ((##fx= _g147618_ 2)
                 (apply (lambda (_self141562_ _stx141563_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self141562_
                           _stx141563_))
                        _g147619_))
                ((##fx= _g147618_ 3)
                 (apply (lambda (_self141567_ _stx141568_ _top?141569_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self141567_
                           _stx141568_
                           _top?141569_))
                        _g147619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g147619_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141429_ _stx141430_)
        (gx#top-special-form::apply-macro-expander__%
         _self141429_
         _stx141430_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141254_ _stx141255_)
        (let* ((_self141256141262_ _self141254_)
               (_E141258141266_
                (lambda () (error '"No clause matching" _self141256141262_)))
               (_K141259141299_
                (lambda (_id141269_)
                  (let* ((_e141270141277_ _stx141255_)
                         (_E141272141281_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141270141277_)))
                         (_E141271141295_
                          (lambda ()
                            (if (gx#stx-pair? _e141270141277_)
                                (let ((_e141273141285_
                                       (gx#syntax-e _e141270141277_)))
                                  (let ((_hd141274141288_
                                         (##car _e141273141285_))
                                        (_tl141275141290_
                                         (##cdr _e141273141285_)))
                                    (let ((_body141293_ _tl141275141290_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141269_
                                           _body141293_)
                                          (_E141272141281_)))))
                                (_E141272141281_)))))
                    (_E141271141295_)))))
          (if (##structure-instance-of?
               _self141256141262_
               'gx#rename-macro-expander::t)
              (let* ((_e141260141302_
                      (##unchecked-structure-ref
                       _self141256141262_
                       '1
                       gx#expander::t
                       '#f))
                     (_id141305_ _e141260141302_))
                (_K141259141299_ _id141305_))
              (_E141258141266_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141080_ _stx141081_ _method141082_)
        (let* ((_self141083141091_ _self141080_)
               (_E141085141095_
                (lambda () (error '"No clause matching" _self141083141091_)))
               (_K141086141102_
                (lambda (_phi141098_ _ctx141099_ _K141100_)
                  (gx#core-apply-user-macro
                   _K141100_
                   _stx141081_
                   _ctx141099_
                   _phi141098_
                   _method141082_))))
          (if (##structure-instance-of?
               _self141083141091_
               'gx#macro-expander::t)
              (let* ((_e141087141105_
                      (##unchecked-structure-ref
                       _self141083141091_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141108_ _e141087141105_)
                     (_e141088141110_
                      (##unchecked-structure-ref
                       _self141083141091_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141113_ _e141088141110_)
                     (_e141089141115_
                      (##unchecked-structure-ref
                       _self141083141091_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141118_ _e141089141115_))
                (_K141086141102_ _phi141118_ _ctx141113_ _K141108_))
              (_E141085141095_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141123_ _stx141124_)
        (let ((_method141126_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141123_
           _stx141124_
           _method141126_))))
    (define gx#core-apply-user-expander
      (lambda _g147621_
        (let ((_g147620_ (##length _g147621_)))
          (cond ((##fx= _g147620_ 2)
                 (apply (lambda (_self141123_ _stx141124_)
                          (gx#core-apply-user-expander__0
                           _self141123_
                           _stx141124_))
                        _g147621_))
                ((##fx= _g147620_ 3)
                 (apply (lambda (_self141128_ _stx141129_ _method141130_)
                          (gx#core-apply-user-expander__%
                           _self141128_
                           _stx141129_
                           _method141130_))
                        _g147621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g147621_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141070_ _stx141071_ _ctx141072_ _phi141073_ _method141074_)
        (let ((_mark141076_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141072_
                _phi141073_
                _stx141071_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141070_
               (gx#stx-apply-mark _stx141071_ _mark141076_)
               _method141074_)
              _mark141076_))
           gx#current-expander-marks
           (cons _mark141076_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx140922_ _phi140923_ _ctx140924_)
        (let _lp140926_ ((_bind140928_
                          (gx#core-resolve-identifier__%
                           _stx140922_
                           _phi140923_
                           _ctx140924_)))
          (if (##structure-direct-instance-of?
               _bind140928_
               'gx#import-binding::t)
              (_lp140926_
               (##unchecked-structure-ref
                _bind140928_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind140928_
                   'gx#alias-binding::t)
                  (_lp140926_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind140928_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi140923_
                    _ctx140924_))
                  _bind140928_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx140933_)
        (let* ((_phi140935_ (gx#current-expander-phi))
               (_ctx140937_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx140933_ _phi140935_ _ctx140937_))))
    (define gx#resolve-identifier__1
      (lambda (_stx140939_ _phi140940_)
        (let ((_ctx140942_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx140939_ _phi140940_ _ctx140942_))))
    (define gx#resolve-identifier
      (lambda _g147623_
        (let ((_g147622_ (##length _g147623_)))
          (cond ((##fx= _g147622_ 1)
                 (apply (lambda (_stx140933_)
                          (gx#resolve-identifier__0 _stx140933_))
                        _g147623_))
                ((##fx= _g147622_ 2)
                 (apply (lambda (_stx140939_ _phi140940_)
                          (gx#resolve-identifier__1 _stx140939_ _phi140940_))
                        _g147623_))
                ((##fx= _g147622_ 3)
                 (apply (lambda (_stx140944_ _phi140945_ _ctx140946_)
                          (gx#resolve-identifier__%
                           _stx140944_
                           _phi140945_
                           _ctx140946_))
                        _g147623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g147623_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx140880_ _val140881_ _rebind?140882_ _phi140883_ _ctx140884_)
        (let ((_rebind?140886_
               (if (not _rebind?140882_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?140882_) _rebind?140882_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx140880_)
           _val140881_
           _rebind?140886_
           _phi140883_
           _ctx140884_))))
    (define gx#bind-identifier!__0
      (lambda (_stx140891_ _val140892_)
        (let* ((_rebind?140894_ '#f)
               (_phi140896_ (gx#current-expander-phi))
               (_ctx140898_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx140891_
           _val140892_
           _rebind?140894_
           _phi140896_
           _ctx140898_))))
    (define gx#bind-identifier!__1
      (lambda (_stx140900_ _val140901_ _rebind?140902_)
        (let* ((_phi140904_ (gx#current-expander-phi))
               (_ctx140906_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx140900_
           _val140901_
           _rebind?140902_
           _phi140904_
           _ctx140906_))))
    (define gx#bind-identifier!__2
      (lambda (_stx140908_ _val140909_ _rebind?140910_ _phi140911_)
        (let ((_ctx140913_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx140908_
           _val140909_
           _rebind?140910_
           _phi140911_
           _ctx140913_))))
    (define gx#bind-identifier!
      (lambda _g147625_
        (let ((_g147624_ (##length _g147625_)))
          (cond ((##fx= _g147624_ 2)
                 (apply (lambda (_stx140891_ _val140892_)
                          (gx#bind-identifier!__0 _stx140891_ _val140892_))
                        _g147625_))
                ((##fx= _g147624_ 3)
                 (apply (lambda (_stx140900_ _val140901_ _rebind?140902_)
                          (gx#bind-identifier!__1
                           _stx140900_
                           _val140901_
                           _rebind?140902_))
                        _g147625_))
                ((##fx= _g147624_ 4)
                 (apply (lambda (_stx140908_
                                 _val140909_
                                 _rebind?140910_
                                 _phi140911_)
                          (gx#bind-identifier!__2
                           _stx140908_
                           _val140909_
                           _rebind?140910_
                           _phi140911_))
                        _g147625_))
                ((##fx= _g147624_ 5)
                 (apply (lambda (_stx140915_
                                 _val140916_
                                 _rebind?140917_
                                 _phi140918_
                                 _ctx140919_)
                          (gx#bind-identifier!__%
                           _stx140915_
                           _val140916_
                           _rebind?140917_
                           _phi140918_
                           _ctx140919_))
                        _g147625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g147625_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx140852_ _phi140853_ _ctx140854_)
        (let _lp140856_ ((_e140858_ _stx140852_)
                         (_marks140859_ (gx#current-expander-marks)))
          (if (symbol? _e140858_)
              (gx#core-resolve-binding
               _e140858_
               _phi140853_
               _phi140853_
               _ctx140854_
               (reverse _marks140859_))
              (if (gx#identifier-quote? _e140858_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e140858_ '1 gx#AST::t '#f)
                   _phi140853_
                   '0
                   (##unchecked-structure-ref
                    _e140858_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e140858_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e140858_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e140858_ '1 gx#AST::t '#f)
                       _phi140853_
                       _phi140853_
                       _ctx140854_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e140858_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks140859_))
                      (if (##structure-direct-instance-of?
                           _e140858_
                           'gx#syntax-wrap::t)
                          (_lp140856_
                           (##unchecked-structure-ref
                            _e140858_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e140858_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks140859_))
                          (if (##structure-instance-of?
                               _e140858_
                               'gerbil#AST::t)
                              (_lp140856_
                               (##unchecked-structure-ref
                                _e140858_
                                '1
                                gx#AST::t
                                '#f)
                               _marks140859_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx140852_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx140864_)
        (let* ((_phi140866_ (gx#current-expander-phi))
               (_ctx140868_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx140864_
           _phi140866_
           _ctx140868_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx140870_ _phi140871_)
        (let ((_ctx140873_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx140870_
           _phi140871_
           _ctx140873_))))
    (define gx#core-resolve-identifier
      (lambda _g147627_
        (let ((_g147626_ (##length _g147627_)))
          (cond ((##fx= _g147626_ 1)
                 (apply (lambda (_stx140864_)
                          (gx#core-resolve-identifier__0 _stx140864_))
                        _g147627_))
                ((##fx= _g147626_ 2)
                 (apply (lambda (_stx140870_ _phi140871_)
                          (gx#core-resolve-identifier__1
                           _stx140870_
                           _phi140871_))
                        _g147627_))
                ((##fx= _g147626_ 3)
                 (apply (lambda (_stx140875_ _phi140876_ _ctx140877_)
                          (gx#core-resolve-identifier__%
                           _stx140875_
                           _phi140876_
                           _ctx140877_))
                        _g147627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g147627_))))))
    (define gx#core-resolve-binding
      (lambda (_id140765_
               _phi140766_
               _src-phi140767_
               _ctx140768_
               _marks140769_)
        (letrec ((_resolve140771_
                  (lambda (_ctx140839_ _src-phi140840_ _key140841_)
                    (let _lp140843_ ((_ctx140845_
                                      (gx#core-context-shift
                                       _ctx140839_
                                       _phi140766_))
                                     (_dphi140846_
                                      (fx- _phi140766_ _src-phi140840_)))
                      (let ((_$e140848_
                             (gx#core-context-resolve
                              _ctx140845_
                              _key140841_)))
                        (if _$e140848_
                            (values _$e140848_)
                            (if (fxzero? _dphi140846_)
                                '#f
                                (if (fxpositive? _dphi140846_)
                                    (_lp140843_
                                     (gx#core-context-shift _ctx140845_ '-1)
                                     (fx- _dphi140846_ '1))
                                    (_lp140843_
                                     (gx#core-context-shift _ctx140845_ '1)
                                     (fx+ _dphi140846_ '1))))))))))
          (let _lp140773_ ((_ctx140775_ _ctx140768_)
                           (_src-phi140776_ _src-phi140767_)
                           (_rest140777_ _marks140769_))
            (let* ((_rest140778140786_ _rest140777_)
                   (_else140780140794_
                    (lambda ()
                      (_resolve140771_
                       _ctx140775_
                       _src-phi140776_
                       _id140765_)))
                   (_K140782140827_
                    (lambda (_rest140797_ _hd140798_)
                      (let* ((_hd140799140805_ _hd140798_)
                             (_E140801140809_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd140799140805_)))
                             (_K140802140819_
                              (lambda (_subst140812_)
                                (let ((_$e140816_
                                       (let ((_key140814_
                                              (if _subst140812_
                                                  (table-ref
                                                   _subst140812_
                                                   _id140765_
                                                   '#f)
                                                  '#f)))
                                         (if _key140814_
                                             (_resolve140771_
                                              _ctx140775_
                                              _src-phi140776_
                                              _key140814_)
                                             '#f))))
                                  (if _$e140816_
                                      _$e140816_
                                      (_lp140773_
                                       (##unchecked-structure-ref
                                        _hd140798_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd140798_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest140797_))))))
                        (if (##structure-instance-of?
                             _hd140799140805_
                             'gx#expander-mark::t)
                            (let* ((_e140803140822_
                                    (##unchecked-structure-ref
                                     _hd140799140805_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst140825_ _e140803140822_))
                              (_K140802140819_ _subst140825_))
                            (_E140801140809_))))))
              (if (##pair? _rest140778140786_)
                  (let ((_hd140783140830_ (##car _rest140778140786_))
                        (_tl140784140832_ (##cdr _rest140778140786_)))
                    (let* ((_hd140835_ _hd140783140830_)
                           (_rest140837_ _tl140784140832_))
                      (_K140782140827_ _rest140837_ _hd140835_)))
                  (_else140780140794_)))))))
    (define gx#core-bind!__%
      (lambda (_key140641_ _val140642_ _rebind?140643_ _phi140644_ _ctx140645_)
        (letrec ((_update-binding140647_
                  (lambda (_xval140718_)
                    (if (or (_rebind?140643_
                             _ctx140645_
                             _xval140718_
                             _val140642_)
                            (and (##structure-direct-instance-of?
                                  _xval140718_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval140718_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val140642_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val140642_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval140718_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val140642_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val140642_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval140718_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val140642_
                        (if (and (##structure-direct-instance-of?
                                  _val140642_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val140642_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval140718_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val140642_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval140718_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval140718_
                            (if (and (##structure-direct-instance-of?
                                      _val140642_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval140718_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key140641_
                                 (cons (##unchecked-structure-ref
                                        _val140642_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val140642_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval140718_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval140718_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval140718_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval140718_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key140641_
                                 _val140642_
                                 _xval140718_))))))
                 (_gensubst140648_
                  (lambda (_subst140713_ _id140714_)
                    (let ((_eid140716_
                           (gensym (if (uninterned-symbol? _id140714_)
                                       '%
                                       _id140714_))))
                      (table-set! _subst140713_ _id140714_ _eid140716_)
                      _eid140716_)))
                 (_subst!140649_
                  (lambda (_key140651_)
                    (let* ((_key140652140660_ _key140651_)
                           (_else140654140668_ (lambda () _key140651_))
                           (_K140656140701_
                            (lambda (_mark140671_ _id140672_)
                              (let* ((_mark140673140679_ _mark140671_)
                                     (_E140675140683_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark140673140679_)))
                                     (_K140676140693_
                                      (lambda (_subst140686_)
                                        (if (not _subst140686_)
                                            (let ((_subst140688_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark140671_
                                               _subst140688_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst140648_
                                               _subst140688_
                                               _id140672_))
                                            (let ((_$e140690_
                                                   (table-ref
                                                    _subst140686_
                                                    _id140672_
                                                    '#f)))
                                              (if _$e140690_
                                                  (values _$e140690_)
                                                  (_gensubst140648_
                                                   _subst140686_
                                                   _id140672_)))))))
                                (if (##structure-instance-of?
                                     _mark140673140679_
                                     'gx#expander-mark::t)
                                    (let* ((_e140677140696_
                                            (##unchecked-structure-ref
                                             _mark140673140679_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst140699_ _e140677140696_))
                                      (_K140676140693_ _subst140699_))
                                    (_E140675140683_))))))
                      (if (##pair? _key140652140660_)
                          (let ((_hd140657140704_ (##car _key140652140660_))
                                (_tl140658140706_ (##cdr _key140652140660_)))
                            (let* ((_id140709_ _hd140657140704_)
                                   (_mark140711_ _tl140658140706_))
                              (_K140656140701_ _mark140711_ _id140709_)))
                          (_else140654140668_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx140645_ _phi140644_)
           (_subst!140649_ _key140641_)
           _val140642_
           _update-binding140647_))))
    (define gx#core-bind!__0
      (lambda (_key140735_ _val140736_)
        (let* ((_rebind?140738_ false)
               (_phi140740_ (gx#current-expander-phi))
               (_ctx140742_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140735_
           _val140736_
           _rebind?140738_
           _phi140740_
           _ctx140742_))))
    (define gx#core-bind!__1
      (lambda (_key140744_ _val140745_ _rebind?140746_)
        (let* ((_phi140748_ (gx#current-expander-phi))
               (_ctx140750_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140744_
           _val140745_
           _rebind?140746_
           _phi140748_
           _ctx140750_))))
    (define gx#core-bind!__2
      (lambda (_key140752_ _val140753_ _rebind?140754_ _phi140755_)
        (let ((_ctx140757_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140752_
           _val140753_
           _rebind?140754_
           _phi140755_
           _ctx140757_))))
    (define gx#core-bind!
      (lambda _g147629_
        (let ((_g147628_ (##length _g147629_)))
          (cond ((##fx= _g147628_ 2)
                 (apply (lambda (_key140735_ _val140736_)
                          (gx#core-bind!__0 _key140735_ _val140736_))
                        _g147629_))
                ((##fx= _g147628_ 3)
                 (apply (lambda (_key140744_ _val140745_ _rebind?140746_)
                          (gx#core-bind!__1
                           _key140744_
                           _val140745_
                           _rebind?140746_))
                        _g147629_))
                ((##fx= _g147628_ 4)
                 (apply (lambda (_key140752_
                                 _val140753_
                                 _rebind?140754_
                                 _phi140755_)
                          (gx#core-bind!__2
                           _key140752_
                           _val140753_
                           _rebind?140754_
                           _phi140755_))
                        _g147629_))
                ((##fx= _g147628_ 5)
                 (apply (lambda (_key140759_
                                 _val140760_
                                 _rebind?140761_
                                 _phi140762_
                                 _ctx140763_)
                          (gx#core-bind!__%
                           _key140759_
                           _val140760_
                           _rebind?140761_
                           _phi140762_
                           _ctx140763_))
                        _g147629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g147629_))))))
    (define gx#core-identifier-key
      (lambda (_stx140575_)
        (if (symbol? _stx140575_)
            (let* ((_g140576140584_ (gx#current-expander-marks))
                   (_else140578140592_ (lambda () _stx140575_))
                   (_K140580140597_
                    (lambda (_hd140595_) (cons _stx140575_ _hd140595_))))
              (if (##pair? _g140576140584_)
                  (let* ((_hd140581140600_ (##car _g140576140584_))
                         (_hd140603_ _hd140581140600_))
                    (_K140580140597_ _hd140603_))
                  (_else140578140592_)))
            (if (gx#identifier? _stx140575_)
                (let* ((_id140605_ (gx#syntax-local-unwrap _stx140575_))
                       (_eid140607_ (gx#stx-e _id140605_))
                       (_marks140609_ (gx#stx-identifier-marks* _id140605_)))
                  (let* ((_marks140611140619_ _marks140609_)
                         (_else140613140627_ (lambda () _eid140607_))
                         (_K140615140632_
                          (lambda (_hd140630_) (cons _eid140607_ _hd140630_))))
                    (if (##pair? _marks140611140619_)
                        (let* ((_hd140616140635_ (##car _marks140611140619_))
                               (_hd140638_ _hd140616140635_))
                          (_K140615140632_ _hd140638_))
                        (_else140613140627_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx140575_)))))
    (define gx#core-context-shift
      (lambda (_ctx140520_ _phi140521_)
        (letrec ((_make-phi140523_
                  (lambda (_super140573_)
                    (let ((__obj147600
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj147600
                       (gensym 'phi)
                       _super140573_)
                      __obj147600)))
                 (_make-phi/up140524_
                  (lambda (_ctx140568_ _super140569_)
                    (let ((_ctx+1140571_ (_make-phi140523_ _super140569_)))
                      (##unchecked-structure-set!
                       _ctx140568_
                       _ctx+1140571_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1140571_
                       _ctx140568_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1140571_)))
                 (_make-phi/down140525_
                  (lambda (_ctx140563_ _super140564_)
                    (let ((_ctx-1140566_ (_make-phi140523_ _super140564_)))
                      (##unchecked-structure-set!
                       _ctx-1140566_
                       _ctx140563_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx140563_
                       _ctx-1140566_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1140566_)))
                 (_shift140526_
                  (lambda (_ctx140547_
                           _delta140548_
                           _make-delta-context140549_
                           _phi140550_
                           _K140551_)
                    (let ((_$e140553_
                           (##unchecked-structure-ref
                            _ctx140547_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e140553_
                          ((lambda (_super140556_)
                             (let* ((_super140558_
                                     (_K140551_ _super140556_ _delta140548_))
                                    (_ctx+d140560_
                                     (_make-delta-context140549_
                                      _ctx140547_
                                      _super140558_)))
                               (_K140551_
                                _ctx+d140560_
                                (fx- _phi140550_ _delta140548_))))
                           _$e140553_)
                          (error '"Bad context" _ctx140547_))))))
          (let _K140528_ ((_ctx140530_ _ctx140520_) (_phi140531_ _phi140521_))
            (if (fxzero? _phi140531_)
                _ctx140530_
                (if (fx> (##vector-length _ctx140530_) '3)
                    (if (fxpositive? _phi140531_)
                        (let ((_$e140533_
                               (##unchecked-structure-ref
                                _ctx140530_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e140533_
                              ((lambda (_g140535140537_)
                                 (_K140528_
                                  _g140535140537_
                                  (fx- _phi140531_ '1)))
                               _$e140533_)
                              (_shift140526_
                               _ctx140530_
                               '1
                               _make-phi/up140524_
                               _phi140531_
                               _K140528_)))
                        (let ((_$e140540_
                               (##unchecked-structure-ref
                                _ctx140530_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e140540_
                              ((lambda (_g140542140544_)
                                 (_K140528_
                                  _g140542140544_
                                  (fx+ _phi140531_ '1)))
                               _$e140540_)
                              (_shift140526_
                               _ctx140530_
                               '-1
                               _make-phi/down140525_
                               _phi140531_
                               _K140528_))))
                    _ctx140530_))))))
    (define gx#core-context-get
      (lambda (_ctx140517_ _key140518_)
        (table-ref
         (##unchecked-structure-ref _ctx140517_ '2 gx#expander-context::t '#f)
         _key140518_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140513_ _key140514_ _val140515_)
        (table-set!
         (##unchecked-structure-ref _ctx140513_ '2 gx#expander-context::t '#f)
         _key140514_
         _val140515_)))
    (define gx#core-context-resolve
      (lambda (_ctx140500_ _key140501_)
        (let _lp140503_ ((_ctx140505_ _ctx140500_))
          (let ((_$e140507_ (gx#core-context-get _ctx140505_ _key140501_)))
            (if _$e140507_
                (values _$e140507_)
                (let ((_$e140510_
                       (if (fx> (##vector-length _ctx140505_) '3)
                           (##unchecked-structure-ref
                            _ctx140505_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e140510_ (_lp140503_ _$e140510_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140490_ _key140491_ _val140492_ _rebind140493_)
        (let ((_$e140495_ (gx#core-context-get _ctx140490_ _key140491_)))
          (if _$e140495_
              ((lambda (_xval140498_)
                 (gx#core-context-put!
                  _ctx140490_
                  _key140491_
                  (_rebind140493_ _xval140498_)))
               _$e140495_)
              (gx#core-context-put! _ctx140490_ _key140491_ _val140492_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140468_ _stop?140469_)
        (let _lp140471_ ((_ctx140473_ _ctx140468_))
          (if (_stop?140469_ _ctx140473_)
              _ctx140473_
              (if (##structure-instance-of? _ctx140473_ 'gx#context-phi::t)
                  (_lp140471_
                   (##unchecked-structure-ref
                    _ctx140473_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140479_ (gx#current-expander-context))
               (_stop?140481_ gx#top-context?))
          (gx#core-context-top__% _ctx140479_ _stop?140481_))))
    (define gx#core-context-top__1
      (lambda (_ctx140483_)
        (let ((_stop?140485_ gx#top-context?))
          (gx#core-context-top__% _ctx140483_ _stop?140485_))))
    (define gx#core-context-top
      (lambda _g147631_
        (let ((_g147630_ (##length _g147631_)))
          (cond ((##fx= _g147630_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g147631_))
                ((##fx= _g147630_ 1)
                 (apply (lambda (_ctx140483_)
                          (gx#core-context-top__1 _ctx140483_))
                        _g147631_))
                ((##fx= _g147630_ 2)
                 (apply (lambda (_ctx140487_ _stop?140488_)
                          (gx#core-context-top__% _ctx140487_ _stop?140488_))
                        _g147631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g147631_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140453_)
        (let _lp140455_ ((_ctx140457_ _ctx140453_))
          (if (##structure-instance-of? _ctx140457_ 'gx#context-phi::t)
              (_lp140455_
               (##unchecked-structure-ref
                _ctx140457_
                '3
                gx#phi-context::t
                '#f))
              _ctx140457_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140463_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140463_))))
    (define gx#core-context-root
      (lambda _g147633_
        (let ((_g147632_ (##length _g147633_)))
          (cond ((##fx= _g147632_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g147633_))
                ((##fx= _g147632_ 1)
                 (apply (lambda (_ctx140465_)
                          (gx#core-context-root__% _ctx140465_))
                        _g147633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g147633_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140434_ . __140431140435_)
        (let ((_$e140438_ (gx#current-expander-allow-rebind?)))
          (if _$e140438_
              _$e140438_
              (if (##structure-instance-of? _ctx140434_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx140434_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx140434_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140445_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140445_))))
    (define gx#core-context-rebind?
      (lambda _g147635_
        (let ((_g147634_ (##length _g147635_)))
          (cond ((##fx= _g147634_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g147635_))
                ((##fx= _g147634_ 1)
                 (apply (lambda (_ctx140447_)
                          (gx#core-context-rebind?__% _ctx140447_))
                        _g147635_))
                ((##fx>= _g147634_ 1)
                 (apply gx#core-context-rebind?__% _g147635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g147635_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140417_)
        (let ((_$e140419_ (gx#core-context-top__1 _ctx140417_)))
          (if _$e140419_
              ((lambda (_ctx140422_)
                 (if (##structure-instance-of?
                      _ctx140422_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx140422_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e140419_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140428_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140428_))))
    (define gx#core-context-namespace
      (lambda _g147637_
        (let ((_g147636_ (##length _g147637_)))
          (cond ((##fx= _g147636_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g147637_))
                ((##fx= _g147636_ 1)
                 (apply (lambda (_ctx140430_)
                          (gx#core-context-namespace__% _ctx140430_))
                        _g147637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g147637_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140403_ _is?140404_)
        (if (##structure-direct-instance-of?
             _bind140403_
             'gx#syntax-binding::t)
            (_is?140404_
             (##unchecked-structure-ref
              _bind140403_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140409_)
        (let ((_is?140411_ gx#expander?))
          (gx#expander-binding?__% _bind140409_ _is?140411_))))
    (define gx#expander-binding?
      (lambda _g147639_
        (let ((_g147638_ (##length _g147639_)))
          (cond ((##fx= _g147638_ 1)
                 (apply (lambda (_bind140409_)
                          (gx#expander-binding?__0 _bind140409_))
                        _g147639_))
                ((##fx= _g147638_ 2)
                 (apply (lambda (_bind140413_ _is?140414_)
                          (gx#expander-binding?__% _bind140413_ _is?140414_))
                        _g147639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g147639_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140400_)
        (gx#expander-binding?__% _bind140400_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140398_)
        (gx#expander-binding?__% _bind140398_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140392_)
        (letrec ((_direct-special-form?140394_
                  (lambda (_obj140396_)
                    (##structure-direct-instance-of?
                     _obj140396_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140392_
           _direct-special-form?140394_))))
    (define gx#special-form-binding?
      (lambda (_bind140390_)
        (gx#expander-binding?__% _bind140390_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140381_)
        (letrec ((_feature?140383_
                  (lambda (_e140385_)
                    (let ((_$e140387_
                           (##structure-instance-of?
                            _e140385_
                            'gx#feature-expander::t)))
                      (if _$e140387_
                          _$e140387_
                          (##structure-instance-of?
                           _e140385_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind140381_ _feature?140383_))))
    (define gx#private-feature-binding?
      (lambda (_bind140379_)
        (gx#expander-binding?__% _bind140379_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140366_ _bound?140367_)
        (if (gx#identifier? _id140366_)
            (_bound?140367_ (gx#resolve-identifier__0 _id140366_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140372_)
        (let ((_bound?140374_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140372_ _bound?140374_))))
    (define gx#core-bound-identifier?
      (lambda _g147641_
        (let ((_g147640_ (##length _g147641_)))
          (cond ((##fx= _g147640_ 1)
                 (apply (lambda (_id140372_)
                          (gx#core-bound-identifier?__0 _id140372_))
                        _g147641_))
                ((##fx= _g147640_ 2)
                 (apply (lambda (_id140376_ _bound?140377_)
                          (gx#core-bound-identifier?__%
                           _id140376_
                           _bound?140377_))
                        _g147641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g147641_))))))
    (define gx#core-identifier=?
      (lambda (_x140356_ _y140357_)
        (letrec ((_y=?140359_
                  (lambda (_xid140363_)
                    ((if (list? _y140357_) memq eq?) _xid140363_ _y140357_))))
          (let ((_bind140361_ (gx#resolve-identifier__0 _x140356_)))
            (if (##structure-instance-of? _bind140361_ 'gx#binding::t)
                (_y=?140359_
                 (##unchecked-structure-ref _bind140361_ '1 gx#binding::t '#f))
                (_y=?140359_ (gx#stx-e _x140356_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140354_)
        (if (interned-symbol? _e140354_)
            (string-index (symbol->string _e140354_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140309_ _src140310_ _ctx140311_ _marks140312_)
        (if (##structure? _stx140309_)
            (let ((_$e140314_ (gx#sealed-syntax-unwrap _stx140309_)))
              (if _$e140314_
                  (values _$e140314_)
                  (if (gx#identifier? _stx140309_)
                      (let ((_id140317_
                             (gx#stx-unwrap__% _stx140309_ _marks140312_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id140317_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e140319_
                                (##unchecked-structure-ref
                                 _id140317_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e140319_ _$e140319_ _src140310_))
                         _ctx140311_
                         (##unchecked-structure-ref
                          _id140317_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx140309_)
                       (let ((_$e140322_ (gx#stx-source _stx140309_)))
                         (if _$e140322_ _$e140322_ _src140310_))
                       _ctx140311_
                       (reverse _marks140312_)))))
            (##structure
             gx#syntax-quote::t
             _stx140309_
             _src140310_
             _ctx140311_
             (reverse _marks140312_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140328_)
        (let* ((_src140330_ '#f)
               (_ctx140332_ (gx#current-expander-context))
               (_marks140334_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140328_
           _src140330_
           _ctx140332_
           _marks140334_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140336_ _src140337_)
        (let* ((_ctx140339_ (gx#current-expander-context))
               (_marks140341_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140336_
           _src140337_
           _ctx140339_
           _marks140341_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140343_ _src140344_ _ctx140345_)
        (let ((_marks140347_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140343_
           _src140344_
           _ctx140345_
           _marks140347_))))
    (define gx#core-quote-syntax
      (lambda _g147643_
        (let ((_g147642_ (##length _g147643_)))
          (cond ((##fx= _g147642_ 1)
                 (apply (lambda (_stx140328_)
                          (gx#core-quote-syntax__0 _stx140328_))
                        _g147643_))
                ((##fx= _g147642_ 2)
                 (apply (lambda (_stx140336_ _src140337_)
                          (gx#core-quote-syntax__1 _stx140336_ _src140337_))
                        _g147643_))
                ((##fx= _g147642_ 3)
                 (apply (lambda (_stx140343_ _src140344_ _ctx140345_)
                          (gx#core-quote-syntax__2
                           _stx140343_
                           _src140344_
                           _ctx140345_))
                        _g147643_))
                ((##fx= _g147642_ 4)
                 (apply (lambda (_stx140349_
                                 _src140350_
                                 _ctx140351_
                                 _marks140352_)
                          (gx#core-quote-syntax__%
                           _stx140349_
                           _src140350_
                           _ctx140351_
                           _marks140352_))
                        _g147643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g147643_))))))
    (define gx#core-cons
      (lambda (_hd140305_ _tl140306_)
        (cons (gx#core-quote-syntax__0 _hd140305_) _tl140306_)))
    (define gx#core-list
      (lambda (_hd140302_ . _rest140303_)
        (cons (gx#core-quote-syntax__0 _hd140302_) _rest140303_)))
    (define gx#core-cons*
      (lambda (_hd140299_ . _rest140300_)
        (apply cons* (gx#core-quote-syntax__0 _hd140299_) _rest140300_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140273_ _rel140274_)
        (let ((_path140286_ (gx#stx-e _stx-path140273_))
              (_reldir140287_
               (let _lp140276_ ((_relsrc140278_
                                 (let ((_$e140283_
                                        (gx#stx-source _stx-path140273_)))
                                   (if _$e140283_ _$e140283_ _rel140274_))))
                 (if (##structure-instance-of? _relsrc140278_ 'gerbil#AST::t)
                     (_lp140276_
                      (let ((_$e140280_ (gx#stx-source _relsrc140278_)))
                        (if _$e140280_ _$e140280_ (gx#stx-e _relsrc140278_))))
                     (if (source-location-path? _relsrc140278_)
                         (path-directory (source-location-path _relsrc140278_))
                         (if (string? _relsrc140278_)
                             (path-directory _relsrc140278_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140286_ (path-normalize _reldir140287_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140292_)
        (let ((_rel140294_ '#f))
          (gx#core-resolve-path__% _stx-path140292_ _rel140294_))))
    (define gx#core-resolve-path
      (lambda _g147645_
        (let ((_g147644_ (##length _g147645_)))
          (cond ((##fx= _g147644_ 1)
                 (apply (lambda (_stx-path140292_)
                          (gx#core-resolve-path__0 _stx-path140292_))
                        _g147645_))
                ((##fx= _g147644_ 2)
                 (apply (lambda (_stx-path140296_ _rel140297_)
                          (gx#core-resolve-path__%
                           _stx-path140296_
                           _rel140297_))
                        _g147645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g147645_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140229_ _ctx140230_)
        (let* ((_repr140231140238_ _repr140229_)
               (_E140233140242_
                (lambda () (error '"No clause matching" _repr140231140238_)))
               (_K140234140250_
                (lambda (_subs140245_ _phi140246_)
                  (let ((_subst140248_
                         (if (not (null? _subs140245_))
                             (list->table _subs140245_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst140248_
                     _ctx140230_
                     _phi140246_
                     '#f)))))
          (if (##pair? _repr140231140238_)
              (let ((_hd140235140253_ (##car _repr140231140238_))
                    (_tl140236140255_ (##cdr _repr140231140238_)))
                (let* ((_phi140258_ _hd140235140253_)
                       (_subs140260_ _tl140236140255_))
                  (_K140234140250_ _subs140260_ _phi140258_)))
              (_E140233140242_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140265_)
        (let ((_ctx140267_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140265_ _ctx140267_))))
    (define gx#core-deserialize-mark
      (lambda _g147647_
        (let ((_g147646_ (##length _g147647_)))
          (cond ((##fx= _g147646_ 1)
                 (apply (lambda (_repr140265_)
                          (gx#core-deserialize-mark__0 _repr140265_))
                        _g147647_))
                ((##fx= _g147646_ 2)
                 (apply (lambda (_repr140269_ _ctx140270_)
                          (gx#core-deserialize-mark__%
                           _repr140269_
                           _ctx140270_))
                        _g147647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g147647_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140226_)
        (gx#stx-rewrap _stx140226_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140224_)
        (gx#stx-unwrap__% _stx140224_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140194_)
        (let* ((_g140195140203_ (gx#current-expander-marks))
               (_else140197140211_ (lambda () _stx140194_))
               (_K140199140216_
                (lambda (_hd140214_)
                  (gx#stx-apply-mark _stx140194_ _hd140214_))))
          (if (##pair? _g140195140203_)
              (let* ((_hd140200140219_ (##car _g140195140203_))
                     (_hd140222_ _hd140200140219_))
                (_K140199140216_ _hd140222_))
              (_else140197140211_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140179_ _E140180_)
        (let ((_bind140182_ (gx#resolve-identifier__0 _stx140179_)))
          (if (##structure-direct-instance-of?
               _bind140182_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140182_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140180_ _stx140179_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140187_)
        (let ((_E140189_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140187_ _E140189_))))
    (define gx#syntax-local-e
      (lambda _g147649_
        (let ((_g147648_ (##length _g147649_)))
          (cond ((##fx= _g147648_ 1)
                 (apply (lambda (_stx140187_)
                          (gx#syntax-local-e__0 _stx140187_))
                        _g147649_))
                ((##fx= _g147648_ 2)
                 (apply (lambda (_stx140191_ _E140192_)
                          (gx#syntax-local-e__% _stx140191_ _E140192_))
                        _g147649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g147649_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140163_ _E140164_)
        (let ((_e140166_ (gx#syntax-local-e__% _stx140163_ _E140164_)))
          (if (##structure-instance-of? _e140166_ 'gx#expander::t)
              (##structure-ref _e140166_ '1 gx#expander::t '#f)
              _e140166_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140171_)
        (let ((_E140173_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140171_ _E140173_))))
    (define gx#syntax-local-value
      (lambda _g147651_
        (let ((_g147650_ (##length _g147651_)))
          (cond ((##fx= _g147650_ 1)
                 (apply (lambda (_stx140171_)
                          (gx#syntax-local-value__0 _stx140171_))
                        _g147651_))
                ((##fx= _g147650_ 2)
                 (apply (lambda (_stx140175_ _E140176_)
                          (gx#syntax-local-value__% _stx140175_ _E140176_))
                        _g147651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g147651_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140160_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140160_)))))
