(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710617601)
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
      (lambda _$args83085_
        (apply make-instance gx#expander-context::t _$args83085_)))
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
      (lambda _$args83082_
        (apply make-instance gx#root-context::t _$args83082_)))
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
      (lambda _$args83079_
        (apply make-instance gx#phi-context::t _$args83079_)))
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
      (lambda _$args83076_
        (apply make-instance gx#top-context::t _$args83076_)))
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
      (lambda _$args83073_
        (apply make-instance gx#module-context::t _$args83073_)))
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
      (lambda _$args83070_
        (apply make-instance gx#prelude-context::t _$args83070_)))
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
      (lambda _$args83067_
        (apply make-instance gx#local-context::t _$args83067_)))
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
      (lambda (_self83051_ _id83052_ _super83053_)
        (if (##fx< '3 (##structure-length _self83051_))
            (begin
              (##unchecked-structure-set!
               _self83051_
               _id83052_
               '1
               (##structure-type _self83051_)
               '#f)
              (##unchecked-structure-set!
               _self83051_
               (make-hash-table-eq)
               '2
               (##structure-type _self83051_)
               '#f)
              (##unchecked-structure-set!
               _self83051_
               _super83053_
               '3
               (##structure-type _self83051_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83051_
                   '3
                   (##vector-length _self83051_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self83058_ _id83059_)
        (let ((_super83061_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self83058_ _id83059_ _super83061_))))
    (define gx#phi-context:::init!
      (lambda _g83128_
        (let ((_g83127_ (##length _g83128_)))
          (cond ((##fx= _g83127_ 2)
                 (apply (lambda (_self83058_ _id83059_)
                          (gx#phi-context:::init!__0 _self83058_ _id83059_))
                        _g83128_))
                ((##fx= _g83127_ 3)
                 (apply (lambda (_self83063_ _id83064_ _super83065_)
                          (gx#phi-context:::init!__%
                           _self83063_
                           _id83064_
                           _super83065_))
                        _g83128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g83128_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self82915_ _super82916_)
        (if (##fx< '3 (##structure-length _self82915_))
            (begin
              (##unchecked-structure-set!
               _self82915_
               (gensym 'L)
               '1
               (##structure-type _self82915_)
               '#f)
              (##unchecked-structure-set!
               _self82915_
               (make-hash-table-eq)
               '2
               (##structure-type _self82915_)
               '#f)
              (##unchecked-structure-set!
               _self82915_
               _super82916_
               '3
               (##structure-type _self82915_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self82915_
                   '3
                   (##vector-length _self82915_)))))
    (define gx#local-context:::init!__0
      (lambda (_self82921_)
        (let ((_super82923_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self82921_ _super82923_))))
    (define gx#local-context:::init!
      (lambda _g83130_
        (let ((_g83129_ (##length _g83130_)))
          (cond ((##fx= _g83129_ 1)
                 (apply (lambda (_self82921_)
                          (gx#local-context:::init!__0 _self82921_))
                        _g83130_))
                ((##fx= _g83129_ 2)
                 (apply (lambda (_self82925_ _super82926_)
                          (gx#local-context:::init!__%
                           _self82925_
                           _super82926_))
                        _g83130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g83130_))))))
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
      (lambda _$args82789_ (apply make-instance gx#binding::t _$args82789_)))
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
      (lambda _$args82786_
        (apply make-instance gx#runtime-binding::t _$args82786_)))
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
      (lambda _$args82783_
        (apply make-instance gx#local-binding::t _$args82783_)))
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
      (lambda _$args82780_
        (apply make-instance gx#top-binding::t _$args82780_)))
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
      (lambda _$args82777_
        (apply make-instance gx#module-binding::t _$args82777_)))
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
      (lambda _$args82774_
        (apply make-instance gx#extern-binding::t _$args82774_)))
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
      (lambda _$args82771_
        (apply make-instance gx#syntax-binding::t _$args82771_)))
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
      (lambda _$args82768_
        (apply make-instance gx#import-binding::t _$args82768_)))
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
      (lambda _$args82765_
        (apply make-instance gx#alias-binding::t _$args82765_)))
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
      (lambda _$args82762_ (apply make-instance gx#expander::t _$args82762_)))
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
      (lambda _$args82759_
        (apply make-instance gx#core-expander::t _$args82759_)))
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
      (lambda _$args82756_
        (apply make-instance gx#expression-form::t _$args82756_)))
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
      (lambda _$args82753_
        (apply make-instance gx#special-form::t _$args82753_)))
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
      (lambda _$args82750_
        (apply make-instance gx#definition-form::t _$args82750_)))
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
      (lambda _$args82747_
        (apply make-instance gx#top-special-form::t _$args82747_)))
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
      (lambda _$args82744_
        (apply make-instance gx#module-special-form::t _$args82744_)))
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
      (lambda _$args82741_
        (apply make-instance gx#feature-expander::t _$args82741_)))
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
      (lambda _$args82738_
        (apply make-instance gx#private-feature-expander::t _$args82738_)))
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
      (lambda _$args82735_
        (apply make-instance gx#reserved-expander::t _$args82735_)))
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
      (lambda _$args82732_
        (apply make-instance gx#macro-expander::t _$args82732_)))
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
      (lambda _$args82729_
        (apply make-instance gx#rename-macro-expander::t _$args82729_)))
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
      (lambda _$args82726_
        (apply make-instance gx#user-expander::t _$args82726_)))
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
      (lambda _$args82723_
        (apply make-instance gx#expander-mark::t _$args82723_)))
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
      (lambda (_ctx82708_ _message82709_ _stx82710_ . _details82711_)
        (let ((_ctx82721_
               (let ((_$e82713_ _ctx82708_))
                 (if _$e82713_
                     _$e82713_
                     (let ((_$e82716_ (gx#core-context-top__0)))
                       (if _$e82716_
                           ((lambda (_ctx82719_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx82719_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e82716_)
                           '#f))))))
          (raise (make-syntax-error
                  _message82709_
                  (cons _stx82710_ _details82711_)
                  _ctx82721_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx82695_ _expression?82696_)
        (gx#eval-syntax* (gx#core-expand__% _stx82695_ _expression?82696_))))
    (define gx#eval-syntax__0
      (lambda (_stx82701_)
        (let ((_expression?82703_ '#f))
          (gx#eval-syntax__% _stx82701_ _expression?82703_))))
    (define gx#eval-syntax
      (lambda _g83132_
        (let ((_g83131_ (##length _g83132_)))
          (cond ((##fx= _g83131_ 1)
                 (apply (lambda (_stx82701_) (gx#eval-syntax__0 _stx82701_))
                        _g83132_))
                ((##fx= _g83131_ 2)
                 (apply (lambda (_stx82705_ _expression?82706_)
                          (gx#eval-syntax__% _stx82705_ _expression?82706_))
                        _g83132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g83132_))))))
    (define gx#eval-syntax*
      (lambda (_stx82692_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx82692_))))
    (define gx#core-expand__%
      (lambda (_stx82679_ _expression?82680_)
        (if _expression?82680_
            (gx#core-expand-expression _stx82679_)
            (gx#core-expand-top _stx82679_))))
    (define gx#core-expand__0
      (lambda (_stx82685_)
        (let ((_expression?82687_ '#f))
          (gx#core-expand__% _stx82685_ _expression?82687_))))
    (define gx#core-expand
      (lambda _g83134_
        (let ((_g83133_ (##length _g83134_)))
          (cond ((##fx= _g83133_ 1)
                 (apply (lambda (_stx82685_) (gx#core-expand__0 _stx82685_))
                        _g83134_))
                ((##fx= _g83133_ 2)
                 (apply (lambda (_stx82689_ _expression?82690_)
                          (gx#core-expand__% _stx82689_ _expression?82690_))
                        _g83134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g83134_))))))
    (define gx#core-expand-top
      (lambda (_stx82646_)
        (let* ((_stx82648_ (gx#core-expand*__0 _stx82646_))
               (_e8264982656_ _stx82648_)
               (_E8265182660_
                (lambda () (gx#core-expand-expression _stx82648_)))
               (_E8265082674_
                (lambda ()
                  (if (gx#stx-pair? _e8264982656_)
                      (let ((_e8265282664_ (gx#syntax-e _e8264982656_)))
                        (let ((_hd8265382667_ (##car _e8265282664_))
                              (_tl8265482669_ (##cdr _e8265282664_)))
                          (let ((_form82672_ _hd8265382667_))
                            (if (gx#core-bound-identifier?__0 _form82672_)
                                _stx82648_
                                (_E8265182660_)))))
                      (_E8265182660_)))))
          (_E8265082674_))))
    (define gx#core-expand-expression
      (lambda (_stx82593_)
        (letrec ((_sealed-expression?82595_
                  (lambda (_hd82616_)
                    (if (gx#sealed-syntax? _hd82616_)
                        (let* ((_e8261782624_ _hd82616_)
                               (_E8261982628_ (lambda () '#f))
                               (_E8261882642_
                                (lambda ()
                                  (if (gx#stx-pair? _e8261782624_)
                                      (let ((_e8262082632_
                                             (gx#syntax-e _e8261782624_)))
                                        (let ((_hd8262182635_
                                               (##car _e8262082632_))
                                              (_tl8262282637_
                                               (##cdr _e8262082632_)))
                                          (let ((_form82640_ _hd8262182635_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form82640_
                                                 gx#expression-form-binding?)
                                                (_E8261982628_)))))
                                      (_E8261982628_)))))
                          (_E8261882642_))
                        '#f)))
                 (_illegal-expression82596_
                  (lambda (_hd82614_ . _g83135_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx82593_
                     _hd82614_)))
                 (_expand-e82597_
                  (lambda (_form82609_ _hd82610_)
                    (let ((_bind82612_
                           (if (##structure-instance-of?
                                _form82609_
                                'gx#binding::t)
                               _form82609_
                               (gx#resolve-identifier__0 _form82609_))))
                      (if (gx#core-expander-binding? _bind82612_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind82612_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd82610_
                            (gx#stx-source _stx82593_)))
                          (if (##structure-direct-instance-of?
                               _bind82612_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind82612_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd82610_
                                 (gx#stx-source _stx82593_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx82593_
                               _form82609_)))))))
          (let ((_hd82599_ (gx#core-expand-head _stx82593_)))
            (if (_sealed-expression?82595_ _hd82599_)
                _hd82599_
                (if (gx#stx-pair? _hd82599_)
                    (let* ((_form82601_ (gx#stx-car _hd82599_))
                           (_bind82603_
                            (if (gx#identifier? _form82601_)
                                (gx#resolve-identifier__0 _form82601_)
                                '#f)))
                      (if (or (not _bind82603_)
                              (not (gx#core-expander-binding? _bind82603_)))
                          (_expand-e82597_ '%%app (cons '%%app _hd82599_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind82603_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd82599_
                               _illegal-expression82596_)
                              (if (gx#expression-form-binding? _bind82603_)
                                  (_expand-e82597_ _bind82603_ _hd82599_)
                                  (if (gx#direct-special-form-binding?
                                       _bind82603_)
                                      (gx#core-expand-expression
                                       (_expand-e82597_ _bind82603_ _hd82599_))
                                      (_illegal-expression82596_
                                       _hd82599_))))))
                    (if (gx#core-bound-identifier?__0 _hd82599_)
                        (_illegal-expression82596_ _hd82599_)
                        (if (gx#identifier? _hd82599_)
                            (_expand-e82597_
                             '%%ref
                             (cons '%%ref (cons _hd82599_ '())))
                            (if (gx#stx-datum? _hd82599_)
                                (_expand-e82597_
                                 '%#quote
                                 (cons '%#quote (cons _hd82599_ '())))
                                (_illegal-expression82596_ _hd82599_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx82588_)
        (call-with-parameters
         (lambda ()
           (let ((_stx82591_ (gx#core-expand-expression _stx82588_)))
             (values _stx82591_ (gx#eval-syntax* _stx82591_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx82569_ _stop?82570_)
        (let _lp82572_ ((_stx82574_ _stx82569_))
          (if (_stop?82570_ _stx82574_)
              _stx82574_
              (let ((_rstx82576_ (gx#core-expand1 _stx82574_)))
                (if (eq? _stx82574_ _rstx82576_)
                    _stx82574_
                    (_lp82572_ _rstx82576_)))))))
    (define gx#core-expand*__0
      (lambda (_stx82581_)
        (let ((_stop?82583_ false))
          (gx#core-expand*__% _stx82581_ _stop?82583_))))
    (define gx#core-expand*
      (lambda _g83137_
        (let ((_g83136_ (##length _g83137_)))
          (cond ((##fx= _g83136_ 1)
                 (apply (lambda (_stx82581_) (gx#core-expand*__0 _stx82581_))
                        _g83137_))
                ((##fx= _g83136_ 2)
                 (apply (lambda (_stx82585_ _stop?82586_)
                          (gx#core-expand*__% _stx82585_ _stop?82586_))
                        _g83137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g83137_))))))
    (define gx#core-expand1
      (lambda (_stx82525_)
        (letrec ((_step82527_
                  (lambda (_hd82564_)
                    (let ((_bind82566_ (gx#resolve-identifier__0 _hd82564_)))
                      (if (##structure-instance-of?
                           _bind82566_
                           'gx#runtime-binding::t)
                          _stx82525_
                          (if (##structure-direct-instance-of?
                               _bind82566_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind82566_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx82525_)
                              (if (not _bind82566_)
                                  _stx82525_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx82525_))))))))
          (let* ((_e8252882536_ _stx82525_)
                 (_E8253482540_ (lambda () _stx82525_))
                 (_E8253082546_
                  (lambda ()
                    (let ((_hd82544_ _e8252882536_))
                      (if (gx#identifier? _hd82544_)
                          (_step82527_ _hd82544_)
                          (_E8253482540_)))))
                 (_E8252982560_
                  (lambda ()
                    (if (gx#stx-pair? _e8252882536_)
                        (let ((_e8253182550_ (gx#syntax-e _e8252882536_)))
                          (let ((_hd8253282553_ (##car _e8253182550_))
                                (_tl8253382555_ (##cdr _e8253182550_)))
                            (let ((_hd82558_ _hd8253282553_))
                              (if (gx#identifier? _hd82558_)
                                  (_step82527_ _hd82558_)
                                  (_E8253082546_)))))
                        (_E8253082546_)))))
            (_E8252982560_)))))
    (define gx#core-expand-head
      (lambda (_stx82491_)
        (letrec ((_stop?82493_
                  (lambda (_stx82495_)
                    (let* ((_e8249682503_ _stx82495_)
                           (_E8249882507_ (lambda () '#f))
                           (_E8249782521_
                            (lambda ()
                              (if (gx#stx-pair? _e8249682503_)
                                  (let ((_e8249982511_
                                         (gx#syntax-e _e8249682503_)))
                                    (let ((_hd8250082514_
                                           (##car _e8249982511_))
                                          (_tl8250182516_
                                           (##cdr _e8249982511_)))
                                      (let ((_hd82519_ _hd8250082514_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd82519_)
                                            (_E8249882507_)))))
                                  (_E8249882507_)))))
                      (_E8249782521_)))))
          (gx#core-expand*__% _stx82491_ _stop?82493_))))
    (define gx#core-expand-block__%
      (lambda (_stx82297_
               _expand-special82298_
               _begin-form82299_
               _expand-e82300_)
        (letrec ((_expand-splice82302_
                  (lambda (_hd82465_ _body82466_ _rest82467_ _r82468_)
                    (if (gx#stx-list? _body82466_)
                        (_K82306_
                         (gx#stx-foldr cons _rest82467_ _body82466_)
                         _r82468_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx82297_
                         _hd82465_))))
                 (_expand-cond-expand82303_
                  (lambda (_hd82461_ _rest82462_ _r82463_)
                    (_K82306_
                     (cons (gx#core-expand-cond-expand% _hd82461_) _rest82462_)
                     _r82463_)))
                 (_expand-include82304_
                  (lambda (_hd82410_ _rest82411_ _r82412_)
                    (let* ((_e8241382423_ _hd82410_)
                           (_E8241582427_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8241382423_)))
                           (_E8241482457_
                            (lambda ()
                              (if (gx#stx-pair? _e8241382423_)
                                  (let ((_e8241682431_
                                         (gx#syntax-e _e8241382423_)))
                                    (let ((_hd8241782434_
                                           (##car _e8241682431_))
                                          (_tl8241882436_
                                           (##cdr _e8241682431_)))
                                      (if (gx#stx-pair? _tl8241882436_)
                                          (let ((_e8241982439_
                                                 (gx#syntax-e _tl8241882436_)))
                                            (let ((_hd8242082442_
                                                   (##car _e8241982439_))
                                                  (_tl8242182444_
                                                   (##cdr _e8241982439_)))
                                              (let ((_path82447_
                                                     _hd8242082442_))
                                                (if (gx#stx-null?
                                                     _tl8242182444_)
                                                    (if (gx#stx-string?
                                                         _path82447_)
                                                        (let* ((_rpath82449_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path82447_
                         (gx#stx-source _hd82410_)))
                       (_block82451_
                        (gx#core-expand-include%__% _hd82410_ _rpath82449_))
                       (_rbody82454_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block82451_
                            _expand-special82298_
                            '#f
                            _expand-e82300_))
                         gx#current-expander-path
                         (cons _rpath82449_ (gx#current-expander-path)))))
                  (_K82306_ _rest82411_ (foldr1 cons _r82412_ _rbody82454_)))
                (_E8241582427_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8241582427_)))))
                                          (_E8241582427_))))
                                  (_E8241582427_)))))
                      (_E8241482457_))))
                 (_expand-expression82305_
                  (lambda (_hd82406_ _rest82407_ _r82408_)
                    (_K82306_
                     _rest82407_
                     (cons (_expand-e82300_ _hd82406_) _r82408_))))
                 (_K82306_
                  (lambda (_rest82336_ _r82337_)
                    (let* ((_e8233882345_ _rest82336_)
                           (_E8234082349_
                            (lambda ()
                              (if _begin-form82299_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form82299_
                                    (reverse _r82337_))
                                   (gx#stx-source _stx82297_))
                                  _r82337_)))
                           (_E8233982402_
                            (lambda ()
                              (if (gx#stx-pair? _e8233882345_)
                                  (let ((_e8234182353_
                                         (gx#syntax-e _e8233882345_)))
                                    (let ((_hd8234282356_
                                           (##car _e8234182353_))
                                          (_tl8234382358_
                                           (##cdr _e8234182353_)))
                                      (let* ((_hd82361_ _hd8234282356_)
                                             (_rest82363_ _tl8234382358_))
                                        (if '#t
                                            (let* ((_hd82365_
                                                    (gx#core-expand-head
                                                     _hd82361_))
                                                   (_e8236682373_ _hd82365_)
                                                   (_E8236882377_
                                                    (lambda ()
                                                      (_expand-expression82305_
                                                       _hd82365_
                                                       _rest82363_
                                                       _r82337_)))
                                                   (_E8236782398_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8236682373_)
                                                          (let ((_e8236982381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8236682373_)))
                    (let ((_hd8237082384_ (##car _e8236982381_))
                          (_tl8237182386_ (##cdr _e8236982381_)))
                      (let* ((_form82389_ _hd8237082384_)
                             (_body82391_ _tl8237182386_))
                        (if '#t
                            (let ((_bind82393_
                                   (if (gx#identifier? _form82389_)
                                       (gx#resolve-identifier__0 _form82389_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind82393_)
                                  (let ((_$e82395_
                                         (##unchecked-structure-ref
                                          _bind82393_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e82395_)
                                        (_expand-splice82302_
                                         _hd82365_
                                         _body82391_
                                         _rest82363_
                                         _r82337_)
                                        (if (eq? '%#cond-expand _$e82395_)
                                            (_expand-cond-expand82303_
                                             _hd82365_
                                             _rest82363_
                                             _r82337_)
                                            (if (eq? '%#include _$e82395_)
                                                (_expand-include82304_
                                                 _hd82365_
                                                 _rest82363_
                                                 _r82337_)
                                                (_expand-special82298_
                                                 _hd82365_
                                                 _K82306_
                                                 _rest82363_
                                                 _r82337_)))))
                                  (_expand-expression82305_
                                   _hd82365_
                                   _rest82363_
                                   _r82337_)))
                            (_E8236882377_)))))
                  (_E8236882377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8236782398_))
                                            (_E8234082349_)))))
                                  (_E8234082349_)))))
                      (_E8233982402_)))))
          (let* ((_e8230782314_ _stx82297_)
                 (_E8230982318_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8230782314_)))
                 (_E8230882332_
                  (lambda ()
                    (if (gx#stx-pair? _e8230782314_)
                        (let ((_e8231082322_ (gx#syntax-e _e8230782314_)))
                          (let ((_hd8231182325_ (##car _e8231082322_))
                                (_tl8231282327_ (##cdr _e8231082322_)))
                            (let ((_body82330_ _tl8231282327_))
                              (if (gx#stx-list? _body82330_)
                                  (_K82306_ _body82330_ '())
                                  (_E8230982318_)))))
                        (_E8230982318_)))))
            (_E8230882332_)))))
    (define gx#core-expand-block__0
      (lambda (_stx82473_ _expand-special82474_)
        (let* ((_begin-form82476_ '%#begin)
               (_expand-e82478_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx82473_
           _expand-special82474_
           _begin-form82476_
           _expand-e82478_))))
    (define gx#core-expand-block__1
      (lambda (_stx82480_ _expand-special82481_ _begin-form82482_)
        (let ((_expand-e82484_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx82480_
           _expand-special82481_
           _begin-form82482_
           _expand-e82484_))))
    (define gx#core-expand-block
      (lambda _g83139_
        (let ((_g83138_ (##length _g83139_)))
          (cond ((##fx= _g83138_ 2)
                 (apply (lambda (_stx82473_ _expand-special82474_)
                          (gx#core-expand-block__0
                           _stx82473_
                           _expand-special82474_))
                        _g83139_))
                ((##fx= _g83138_ 3)
                 (apply (lambda (_stx82480_
                                 _expand-special82481_
                                 _begin-form82482_)
                          (gx#core-expand-block__1
                           _stx82480_
                           _expand-special82481_
                           _begin-form82482_))
                        _g83139_))
                ((##fx= _g83138_ 4)
                 (apply (lambda (_stx82486_
                                 _expand-special82487_
                                 _begin-form82488_
                                 _expand-e82489_)
                          (gx#core-expand-block__%
                           _stx82486_
                           _expand-special82487_
                           _begin-form82488_
                           _expand-e82489_))
                        _g83139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g83139_))))))
    (define gx#core-expand-block*
      (lambda (_stx82245_ _expand-special82246_)
        (let* ((_g8224782258_
                (gx#core-expand-block__1 _stx82245_ _expand-special82246_ '#f))
               (_E8225182262_
                (lambda () (error '"No clause matching" _g8224782258_))))
          (let ((_K8225682293_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx82245_)))
                (_K8225382279_ (lambda (_expr82277_) _expr82277_))
                (_K8225282268_
                 (lambda (_body82266_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body82266_))
                    (gx#stx-source _stx82245_)))))
            (let ((_try-match8224982289_
                   (lambda ()
                     (if (##pair? _g8224782258_)
                         (let ((_tl8225582284_ (##cdr _g8224782258_))
                               (_hd8225482282_ (##car _g8224782258_)))
                           (if (##null? _tl8225582284_)
                               (let ((_expr82287_ _hd8225482282_))
                                 (_K8225382279_ _expr82287_))
                               (let ((_body82271_ _g8224782258_))
                                 (_K8225282268_ _body82271_))))
                         (let ((_body82271_ _g8224782258_))
                           (_K8225282268_ _body82271_))))))
              (if (##null? _g8224782258_)
                  (_K8225682293_)
                  (_try-match8224982289_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx82073_)
        (letrec ((_satisfied?82075_
                  (lambda (_condition82173_)
                    (let* ((_e8217482189_ _condition82173_)
                           (_E8218482193_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8217482189_)))
                           (_E8217782212_
                            (lambda ()
                              (if (gx#stx-pair? _e8217482189_)
                                  (let ((_e8218582197_
                                         (gx#syntax-e _e8217482189_)))
                                    (let ((_hd8218682200_
                                           (##car _e8218582197_))
                                          (_tl8218782202_
                                           (##cdr _e8218582197_)))
                                      (let* ((_combinator82205_ _hd8218682200_)
                                             (_body82207_ _tl8218782202_))
                                        (if (gx#stx-list? _body82207_)
                                            (let ((_$e82209_
                                                   (gx#stx-e
                                                    _combinator82205_)))
                                              (if (eq? 'not _$e82209_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?82075_
                                                        _body82207_))
                                                  (if (eq? 'and _$e82209_)
                                                      (gx#stx-andmap
                                                       _satisfied?82075_
                                                       _body82207_)
                                                      (if (eq? 'or _$e82209_)
                                                          (gx#stx-ormap
                                                           _satisfied?82075_
                                                           _body82207_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e82209_)
                      (gx#stx-andmap gx#core-resolve-identifier _body82207_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx82073_
                       _combinator82205_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8218482193_)))))
                                  (_E8218482193_))))
                           (_E8217682235_
                            (lambda ()
                              (if (gx#stx-pair? _e8217482189_)
                                  (let ((_e8217882216_
                                         (gx#syntax-e _e8217482189_)))
                                    (let ((_hd8217982219_
                                           (##car _e8217882216_))
                                          (_tl8218082221_
                                           (##cdr _e8217882216_)))
                                      (if (and (gx#identifier? _hd8217982219_)
                                               (gx#core-identifier=?
                                                _hd8217982219_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8218082221_)
                                              (let ((_e8218182224_
                                                     (gx#syntax-e
                                                      _tl8218082221_)))
                                                (let ((_hd8218282227_
                                                       (##car _e8218182224_))
                                                      (_tl8218382229_
                                                       (##cdr _e8218182224_)))
                                                  (let ((_expr82232_
                                                         _hd8218282227_))
                                                    (if (gx#stx-null?
                                                         _tl8218382229_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr82232_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8217782212_))
                (_E8217782212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8217782212_))
                                          (_E8217782212_))))
                                  (_E8217782212_))))
                           (_E8217582241_
                            (lambda ()
                              (let ((_id82239_ _e8217482189_))
                                (if (gx#identifier? _id82239_)
                                    (gx#core-bound-identifier?__%
                                     _id82239_
                                     gx#feature-binding?)
                                    (_E8217682235_))))))
                      (_E8217582241_))))
                 (_loop82076_
                  (lambda (_rest82106_)
                    (let* ((_e8210782115_ _rest82106_)
                           (_E8211382119_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8210782115_)))
                           (_E8210982123_
                            (lambda ()
                              (if (gx#stx-null? _e8210782115_)
                                  (if '#t '() (_E8211382119_))
                                  (_E8211382119_))))
                           (_E8210882169_
                            (lambda ()
                              (if (gx#stx-pair? _e8210782115_)
                                  (let ((_e8211082127_
                                         (gx#syntax-e _e8210782115_)))
                                    (let ((_hd8211182130_
                                           (##car _e8211082127_))
                                          (_tl8211282132_
                                           (##cdr _e8211082127_)))
                                      (let* ((_hd82135_ _hd8211182130_)
                                             (_rest82137_ _tl8211282132_))
                                        (if '#t
                                            (let* ((_e8213882145_ _hd82135_)
                                                   (_E8214082149_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8213882145_)))
                                                   (_E8213982165_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8213882145_)
                                                          (let ((_e8214182153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8213882145_)))
                    (let ((_hd8214282156_ (##car _e8214182153_))
                          (_tl8214382158_ (##cdr _e8214182153_)))
                      (let* ((_condition82161_ _hd8214282156_)
                             (_body82163_ _tl8214382158_))
                        (if '#t
                            (if (gx#stx-eq? _condition82161_ 'else)
                                (if (gx#stx-null? _rest82137_)
                                    _body82163_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx82073_
                                     _hd82135_))
                                (if (_satisfied?82075_ _condition82161_)
                                    _body82163_
                                    (_loop82076_ _rest82137_)))
                            (_E8214082149_)))))
                  (_E8214082149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8213982165_))
                                            (_E8210982123_)))))
                                  (_E8210982123_)))))
                      (_E8210882169_)))))
          (let* ((_e8207782084_ _stx82073_)
                 (_E8207982088_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8207782084_)))
                 (_E8207882102_
                  (lambda ()
                    (if (gx#stx-pair? _e8207782084_)
                        (let ((_e8208082092_ (gx#syntax-e _e8207782084_)))
                          (let ((_hd8208182095_ (##car _e8208082092_))
                                (_tl8208282097_ (##cdr _e8208082092_)))
                            (let ((_clauses82100_ _tl8208282097_))
                              (if (gx#stx-list? _clauses82100_)
                                  (gx#core-cons
                                   'begin
                                   (_loop82076_ _clauses82100_))
                                  (_E8207982088_)))))
                        (_E8207982088_)))))
            (_E8207882102_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx82016_ _rpath82017_)
        (let* ((_e8201882028_ _stx82016_)
               (_E8202082032_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8201882028_)))
               (_E8201982059_
                (lambda ()
                  (if (gx#stx-pair? _e8201882028_)
                      (let ((_e8202182036_ (gx#syntax-e _e8201882028_)))
                        (let ((_hd8202282039_ (##car _e8202182036_))
                              (_tl8202382041_ (##cdr _e8202182036_)))
                          (if (gx#stx-pair? _tl8202382041_)
                              (let ((_e8202482044_
                                     (gx#syntax-e _tl8202382041_)))
                                (let ((_hd8202582047_ (##car _e8202482044_))
                                      (_tl8202682049_ (##cdr _e8202482044_)))
                                  (let ((_path82052_ _hd8202582047_))
                                    (if (gx#stx-null? _tl8202682049_)
                                        (if (gx#stx-string? _path82052_)
                                            (let ((_rpath82057_
                                                   (let ((_$e82054_
                                                          _rpath82017_))
                                                     (if _$e82054_
                                                         _$e82054_
                                                         (gx#core-resolve-path__%
                                                          _path82052_
                                                          (gx#stx-source
                                                           _stx82016_))))))
                                              (if (member _rpath82057_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx82016_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath82057_))
                                                    (gx#stx-source
                                                     _stx82016_)))))
                                            (_E8202082032_))
                                        (_E8202082032_)))))
                              (_E8202082032_))))
                      (_E8202082032_)))))
          (_E8201982059_))))
    (define gx#core-expand-include%__0
      (lambda (_stx82066_)
        (let ((_rpath82068_ '#f))
          (gx#core-expand-include%__% _stx82066_ _rpath82068_))))
    (define gx#core-expand-include%
      (lambda _g83141_
        (let ((_g83140_ (##length _g83141_)))
          (cond ((##fx= _g83140_ 1)
                 (apply (lambda (_stx82066_)
                          (gx#core-expand-include%__0 _stx82066_))
                        _g83141_))
                ((##fx= _g83140_ 2)
                 (apply (lambda (_stx82070_ _rpath82071_)
                          (gx#core-expand-include%__% _stx82070_ _rpath82071_))
                        _g83141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g83141_))))))
    (define gx#core-apply-expander__%
      (lambda (_K81985_ _stx81986_ _method81987_)
        (if (procedure? _K81985_)
            (let ((_$e81989_ (gx#stx-source _stx81986_)))
              (if _$e81989_
                  ((lambda (_g8199181993_)
                     (gx#stx-wrap-source (_K81985_ _stx81986_) _g8199181993_))
                   _$e81989_)
                  (_K81985_ _stx81986_)))
            (let ((_$e81996_ (bound-method-ref _K81985_ _method81987_)))
              (if _$e81996_
                  ((lambda (_g8199882000_)
                     (gx#core-apply-expander__%
                      _g8199882000_
                      _stx81986_
                      _method81987_))
                   _$e81996_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx81986_
                   _method81987_))))))
    (define gx#core-apply-expander__0
      (lambda (_K82006_ _stx82007_)
        (let ((_method82009_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K82006_ _stx82007_ _method82009_))))
    (define gx#core-apply-expander
      (lambda _g83143_
        (let ((_g83142_ (##length _g83143_)))
          (cond ((##fx= _g83142_ 2)
                 (apply (lambda (_K82006_ _stx82007_)
                          (gx#core-apply-expander__0 _K82006_ _stx82007_))
                        _g83143_))
                ((##fx= _g83142_ 3)
                 (apply (lambda (_K82011_ _stx82012_ _method82013_)
                          (gx#core-apply-expander__%
                           _K82011_
                           _stx82012_
                           _method82013_))
                        _g83143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g83143_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self81981_ _stx81982_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx81982_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self81834_ _stx81835_)
        (let* ((_self8183681842_ _self81834_)
               (_E8183881846_
                (lambda () (error '"No clause matching" _self8183681842_)))
               (_K8183981851_
                (lambda (_K81849_)
                  (gx#core-apply-expander__0 _K81849_ _stx81835_))))
          (if (##structure-instance-of? _self8183681842_ 'gx#core-macro::t)
              (let* ((_e8184081854_
                      (##unchecked-structure-ref
                       _self8183681842_
                       '1
                       gx#expander::t
                       '#f))
                     (_K81857_ _e8184081854_))
                (_K8183981851_ _K81857_))
              (_E8183881846_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self81687_ _stx81688_)
        (if (gx#sealed-syntax? _stx81688_)
            _stx81688_
            (let* ((_self8168981695_ _self81687_)
                   (_E8169181699_
                    (lambda () (error '"No clause matching" _self8168981695_)))
                   (_K8169281704_
                    (lambda (_K81702_)
                      (gx#core-apply-expander__0 _K81702_ _stx81688_))))
              (if (##structure-instance-of?
                   _self8168981695_
                   'gx#core-expander::t)
                  (let* ((_e8169381707_
                          (##unchecked-structure-ref
                           _self8168981695_
                           '1
                           gx#expander::t
                           '#f))
                         (_K81710_ _e8169381707_))
                    (_K8169281704_ _K81710_))
                  (_E8169181699_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self81549_ _stx81550_ _top?81551_)
        (if (_top?81551_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self81549_ _stx81550_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx81550_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self81556_ _stx81557_)
        (let ((_top?81559_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self81556_
           _stx81557_
           _top?81559_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g83145_
        (let ((_g83144_ (##length _g83145_)))
          (cond ((##fx= _g83144_ 2)
                 (apply (lambda (_self81556_ _stx81557_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self81556_
                           _stx81557_))
                        _g83145_))
                ((##fx= _g83144_ 3)
                 (apply (lambda (_self81561_ _stx81562_ _top?81563_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self81561_
                           _stx81562_
                           _top?81563_))
                        _g83145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g83145_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self81423_ _stx81424_)
        (gx#top-special-form::apply-macro-expander__%
         _self81423_
         _stx81424_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self81248_ _stx81249_)
        (let* ((_self8125081256_ _self81248_)
               (_E8125281260_
                (lambda () (error '"No clause matching" _self8125081256_)))
               (_K8125381293_
                (lambda (_id81263_)
                  (let* ((_e8126481271_ _stx81249_)
                         (_E8126681275_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8126481271_)))
                         (_E8126581289_
                          (lambda ()
                            (if (gx#stx-pair? _e8126481271_)
                                (let ((_e8126781279_
                                       (gx#syntax-e _e8126481271_)))
                                  (let ((_hd8126881282_ (##car _e8126781279_))
                                        (_tl8126981284_ (##cdr _e8126781279_)))
                                    (let ((_body81287_ _tl8126981284_))
                                      (if '#t
                                          (gx#core-cons _id81263_ _body81287_)
                                          (_E8126681275_)))))
                                (_E8126681275_)))))
                    (_E8126581289_)))))
          (if (##structure-instance-of?
               _self8125081256_
               'gx#rename-macro-expander::t)
              (let* ((_e8125481296_
                      (##unchecked-structure-ref
                       _self8125081256_
                       '1
                       gx#expander::t
                       '#f))
                     (_id81299_ _e8125481296_))
                (_K8125381293_ _id81299_))
              (_E8125281260_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self81074_ _stx81075_ _method81076_)
        (let* ((_self8107781085_ _self81074_)
               (_E8107981089_
                (lambda () (error '"No clause matching" _self8107781085_)))
               (_K8108081096_
                (lambda (_phi81092_ _ctx81093_ _K81094_)
                  (gx#core-apply-user-macro
                   _K81094_
                   _stx81075_
                   _ctx81093_
                   _phi81092_
                   _method81076_))))
          (if (##structure-instance-of? _self8107781085_ 'gx#macro-expander::t)
              (let* ((_e8108181099_
                      (##unchecked-structure-ref
                       _self8107781085_
                       '1
                       gx#expander::t
                       '#f))
                     (_K81102_ _e8108181099_)
                     (_e8108281104_
                      (##unchecked-structure-ref
                       _self8107781085_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx81107_ _e8108281104_)
                     (_e8108381109_
                      (##unchecked-structure-ref
                       _self8107781085_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi81112_ _e8108381109_))
                (_K8108081096_ _phi81112_ _ctx81107_ _K81102_))
              (_E8107981089_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self81117_ _stx81118_)
        (let ((_method81120_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self81117_
           _stx81118_
           _method81120_))))
    (define gx#core-apply-user-expander
      (lambda _g83147_
        (let ((_g83146_ (##length _g83147_)))
          (cond ((##fx= _g83146_ 2)
                 (apply (lambda (_self81117_ _stx81118_)
                          (gx#core-apply-user-expander__0
                           _self81117_
                           _stx81118_))
                        _g83147_))
                ((##fx= _g83146_ 3)
                 (apply (lambda (_self81122_ _stx81123_ _method81124_)
                          (gx#core-apply-user-expander__%
                           _self81122_
                           _stx81123_
                           _method81124_))
                        _g83147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g83147_))))))
    (define gx#core-apply-user-macro
      (lambda (_K81064_ _stx81065_ _ctx81066_ _phi81067_ _method81068_)
        (let ((_mark81070_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx81066_
                _phi81067_
                _stx81065_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K81064_
               (gx#stx-apply-mark _stx81065_ _mark81070_)
               _method81068_)
              _mark81070_))
           gx#current-expander-marks
           (cons _mark81070_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx80915_ _phi80916_ _ctx80917_)
        (let _lp80919_ ((_bind80921_
                         (gx#core-resolve-identifier__%
                          _stx80915_
                          _phi80916_
                          _ctx80917_)))
          (if (##structure-direct-instance-of?
               _bind80921_
               'gx#import-binding::t)
              (_lp80919_
               (##unchecked-structure-ref
                _bind80921_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind80921_
                   'gx#alias-binding::t)
                  (_lp80919_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind80921_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi80916_
                    _ctx80917_))
                  _bind80921_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx80926_)
        (let* ((_phi80928_ (gx#current-expander-phi))
               (_ctx80930_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx80926_ _phi80928_ _ctx80930_))))
    (define gx#resolve-identifier__1
      (lambda (_stx80932_ _phi80933_)
        (let ((_ctx80935_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx80932_ _phi80933_ _ctx80935_))))
    (define gx#resolve-identifier
      (lambda _g83149_
        (let ((_g83148_ (##length _g83149_)))
          (cond ((##fx= _g83148_ 1)
                 (apply (lambda (_stx80926_)
                          (gx#resolve-identifier__0 _stx80926_))
                        _g83149_))
                ((##fx= _g83148_ 2)
                 (apply (lambda (_stx80932_ _phi80933_)
                          (gx#resolve-identifier__1 _stx80932_ _phi80933_))
                        _g83149_))
                ((##fx= _g83148_ 3)
                 (apply (lambda (_stx80937_ _phi80938_ _ctx80939_)
                          (gx#resolve-identifier__%
                           _stx80937_
                           _phi80938_
                           _ctx80939_))
                        _g83149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g83149_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx80873_ _val80874_ _rebind?80875_ _phi80876_ _ctx80877_)
        (let ((_rebind?80879_
               (if (not _rebind?80875_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?80875_) _rebind?80875_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx80873_)
           _val80874_
           _rebind?80879_
           _phi80876_
           _ctx80877_))))
    (define gx#bind-identifier!__0
      (lambda (_stx80884_ _val80885_)
        (let* ((_rebind?80887_ '#f)
               (_phi80889_ (gx#current-expander-phi))
               (_ctx80891_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx80884_
           _val80885_
           _rebind?80887_
           _phi80889_
           _ctx80891_))))
    (define gx#bind-identifier!__1
      (lambda (_stx80893_ _val80894_ _rebind?80895_)
        (let* ((_phi80897_ (gx#current-expander-phi))
               (_ctx80899_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx80893_
           _val80894_
           _rebind?80895_
           _phi80897_
           _ctx80899_))))
    (define gx#bind-identifier!__2
      (lambda (_stx80901_ _val80902_ _rebind?80903_ _phi80904_)
        (let ((_ctx80906_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx80901_
           _val80902_
           _rebind?80903_
           _phi80904_
           _ctx80906_))))
    (define gx#bind-identifier!
      (lambda _g83151_
        (let ((_g83150_ (##length _g83151_)))
          (cond ((##fx= _g83150_ 2)
                 (apply (lambda (_stx80884_ _val80885_)
                          (gx#bind-identifier!__0 _stx80884_ _val80885_))
                        _g83151_))
                ((##fx= _g83150_ 3)
                 (apply (lambda (_stx80893_ _val80894_ _rebind?80895_)
                          (gx#bind-identifier!__1
                           _stx80893_
                           _val80894_
                           _rebind?80895_))
                        _g83151_))
                ((##fx= _g83150_ 4)
                 (apply (lambda (_stx80901_
                                 _val80902_
                                 _rebind?80903_
                                 _phi80904_)
                          (gx#bind-identifier!__2
                           _stx80901_
                           _val80902_
                           _rebind?80903_
                           _phi80904_))
                        _g83151_))
                ((##fx= _g83150_ 5)
                 (apply (lambda (_stx80908_
                                 _val80909_
                                 _rebind?80910_
                                 _phi80911_
                                 _ctx80912_)
                          (gx#bind-identifier!__%
                           _stx80908_
                           _val80909_
                           _rebind?80910_
                           _phi80911_
                           _ctx80912_))
                        _g83151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g83151_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx80845_ _phi80846_ _ctx80847_)
        (let _lp80849_ ((_e80851_ _stx80845_)
                        (_marks80852_ (gx#current-expander-marks)))
          (if (symbol? _e80851_)
              (gx#core-resolve-binding
               _e80851_
               _phi80846_
               _phi80846_
               _ctx80847_
               (reverse _marks80852_))
              (if (gx#identifier-quote? _e80851_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e80851_ '1 gx#AST::t '#f)
                   _phi80846_
                   '0
                   (##unchecked-structure-ref
                    _e80851_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e80851_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e80851_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e80851_ '1 gx#AST::t '#f)
                       _phi80846_
                       _phi80846_
                       _ctx80847_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80851_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80852_))
                      (if (##structure-direct-instance-of?
                           _e80851_
                           'gx#syntax-wrap::t)
                          (_lp80849_
                           (##unchecked-structure-ref
                            _e80851_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e80851_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks80852_))
                          (if (##structure-instance-of?
                               _e80851_
                               'gerbil#AST::t)
                              (_lp80849_
                               (##unchecked-structure-ref
                                _e80851_
                                '1
                                gx#AST::t
                                '#f)
                               _marks80852_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx80845_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx80857_)
        (let* ((_phi80859_ (gx#current-expander-phi))
               (_ctx80861_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx80857_ _phi80859_ _ctx80861_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx80863_ _phi80864_)
        (let ((_ctx80866_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx80863_ _phi80864_ _ctx80866_))))
    (define gx#core-resolve-identifier
      (lambda _g83153_
        (let ((_g83152_ (##length _g83153_)))
          (cond ((##fx= _g83152_ 1)
                 (apply (lambda (_stx80857_)
                          (gx#core-resolve-identifier__0 _stx80857_))
                        _g83153_))
                ((##fx= _g83152_ 2)
                 (apply (lambda (_stx80863_ _phi80864_)
                          (gx#core-resolve-identifier__1
                           _stx80863_
                           _phi80864_))
                        _g83153_))
                ((##fx= _g83152_ 3)
                 (apply (lambda (_stx80868_ _phi80869_ _ctx80870_)
                          (gx#core-resolve-identifier__%
                           _stx80868_
                           _phi80869_
                           _ctx80870_))
                        _g83153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g83153_))))))
    (define gx#core-resolve-binding
      (lambda (_id80758_ _phi80759_ _src-phi80760_ _ctx80761_ _marks80762_)
        (letrec ((_resolve80764_
                  (lambda (_ctx80832_ _src-phi80833_ _key80834_)
                    (let _lp80836_ ((_ctx80838_
                                     (gx#core-context-shift
                                      _ctx80832_
                                      _phi80759_))
                                    (_dphi80839_
                                     (fx- _phi80759_ _src-phi80833_)))
                      (let ((_$e80841_
                             (gx#core-context-resolve _ctx80838_ _key80834_)))
                        (if _$e80841_
                            (values _$e80841_)
                            (if (fxzero? _dphi80839_)
                                '#f
                                (if (fxpositive? _dphi80839_)
                                    (_lp80836_
                                     (gx#core-context-shift _ctx80838_ '-1)
                                     (fx- _dphi80839_ '1))
                                    (_lp80836_
                                     (gx#core-context-shift _ctx80838_ '1)
                                     (fx+ _dphi80839_ '1))))))))))
          (let _lp80766_ ((_ctx80768_ _ctx80761_)
                          (_src-phi80769_ _src-phi80760_)
                          (_rest80770_ _marks80762_))
            (let* ((_rest8077180779_ _rest80770_)
                   (_else8077380787_
                    (lambda ()
                      (_resolve80764_ _ctx80768_ _src-phi80769_ _id80758_)))
                   (_K8077580820_
                    (lambda (_rest80790_ _hd80791_)
                      (let* ((_hd8079280798_ _hd80791_)
                             (_E8079480802_
                              (lambda ()
                                (error '"No clause matching" _hd8079280798_)))
                             (_K8079580812_
                              (lambda (_subst80805_)
                                (let ((_$e80809_
                                       (let ((_key80807_
                                              (if _subst80805_
                                                  (hash-get
                                                   _subst80805_
                                                   _id80758_)
                                                  '#f)))
                                         (if _key80807_
                                             (_resolve80764_
                                              _ctx80768_
                                              _src-phi80769_
                                              _key80807_)
                                             '#f))))
                                  (if _$e80809_
                                      _$e80809_
                                      (_lp80766_
                                       (##unchecked-structure-ref
                                        _hd80791_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd80791_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest80790_))))))
                        (if (##structure-instance-of?
                             _hd8079280798_
                             'gx#expander-mark::t)
                            (let* ((_e8079680815_
                                    (##unchecked-structure-ref
                                     _hd8079280798_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst80818_ _e8079680815_))
                              (_K8079580812_ _subst80818_))
                            (_E8079480802_))))))
              (if (##pair? _rest8077180779_)
                  (let ((_hd8077680823_ (##car _rest8077180779_))
                        (_tl8077780825_ (##cdr _rest8077180779_)))
                    (let* ((_hd80828_ _hd8077680823_)
                           (_rest80830_ _tl8077780825_))
                      (_K8077580820_ _rest80830_ _hd80828_)))
                  (_else8077380787_)))))))
    (define gx#core-bind!__%
      (lambda (_key80634_ _val80635_ _rebind?80636_ _phi80637_ _ctx80638_)
        (letrec ((_update-binding80640_
                  (lambda (_xval80711_)
                    (if (or (_rebind?80636_ _ctx80638_ _xval80711_ _val80635_)
                            (and (##structure-direct-instance-of?
                                  _xval80711_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval80711_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val80635_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val80635_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval80711_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val80635_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val80635_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval80711_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val80635_
                        (if (and (##structure-direct-instance-of?
                                  _val80635_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val80635_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval80711_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val80635_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval80711_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval80711_
                            (if (and (##structure-direct-instance-of?
                                      _val80635_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval80711_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key80634_
                                 (cons (##unchecked-structure-ref
                                        _val80635_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val80635_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval80711_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval80711_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval80711_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval80711_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key80634_
                                 _val80635_
                                 _xval80711_))))))
                 (_gensubst80641_
                  (lambda (_subst80706_ _id80707_)
                    (let ((_eid80709_
                           (gensym (if (uninterned-symbol? _id80707_)
                                       '%
                                       _id80707_))))
                      (hash-put! _subst80706_ _id80707_ _eid80709_)
                      _eid80709_)))
                 (_subst!80642_
                  (lambda (_key80644_)
                    (let* ((_key8064580653_ _key80644_)
                           (_else8064780661_ (lambda () _key80644_))
                           (_K8064980694_
                            (lambda (_mark80664_ _id80665_)
                              (let* ((_mark8066680672_ _mark80664_)
                                     (_E8066880676_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8066680672_)))
                                     (_K8066980686_
                                      (lambda (_subst80679_)
                                        (if (not _subst80679_)
                                            (let ((_subst80681_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark80664_
                                               _subst80681_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst80641_
                                               _subst80681_
                                               _id80665_))
                                            (let ((_$e80683_
                                                   (hash-get
                                                    _subst80679_
                                                    _id80665_)))
                                              (if _$e80683_
                                                  (values _$e80683_)
                                                  (_gensubst80641_
                                                   _subst80679_
                                                   _id80665_)))))))
                                (if (##structure-instance-of?
                                     _mark8066680672_
                                     'gx#expander-mark::t)
                                    (let* ((_e8067080689_
                                            (##unchecked-structure-ref
                                             _mark8066680672_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst80692_ _e8067080689_))
                                      (_K8066980686_ _subst80692_))
                                    (_E8066880676_))))))
                      (if (##pair? _key8064580653_)
                          (let ((_hd8065080697_ (##car _key8064580653_))
                                (_tl8065180699_ (##cdr _key8064580653_)))
                            (let* ((_id80702_ _hd8065080697_)
                                   (_mark80704_ _tl8065180699_))
                              (_K8064980694_ _mark80704_ _id80702_)))
                          (_else8064780661_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx80638_ _phi80637_)
           (_subst!80642_ _key80634_)
           _val80635_
           _update-binding80640_))))
    (define gx#core-bind!__0
      (lambda (_key80728_ _val80729_)
        (let* ((_rebind?80731_ false)
               (_phi80733_ (gx#current-expander-phi))
               (_ctx80735_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key80728_
           _val80729_
           _rebind?80731_
           _phi80733_
           _ctx80735_))))
    (define gx#core-bind!__1
      (lambda (_key80737_ _val80738_ _rebind?80739_)
        (let* ((_phi80741_ (gx#current-expander-phi))
               (_ctx80743_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key80737_
           _val80738_
           _rebind?80739_
           _phi80741_
           _ctx80743_))))
    (define gx#core-bind!__2
      (lambda (_key80745_ _val80746_ _rebind?80747_ _phi80748_)
        (let ((_ctx80750_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key80745_
           _val80746_
           _rebind?80747_
           _phi80748_
           _ctx80750_))))
    (define gx#core-bind!
      (lambda _g83155_
        (let ((_g83154_ (##length _g83155_)))
          (cond ((##fx= _g83154_ 2)
                 (apply (lambda (_key80728_ _val80729_)
                          (gx#core-bind!__0 _key80728_ _val80729_))
                        _g83155_))
                ((##fx= _g83154_ 3)
                 (apply (lambda (_key80737_ _val80738_ _rebind?80739_)
                          (gx#core-bind!__1
                           _key80737_
                           _val80738_
                           _rebind?80739_))
                        _g83155_))
                ((##fx= _g83154_ 4)
                 (apply (lambda (_key80745_
                                 _val80746_
                                 _rebind?80747_
                                 _phi80748_)
                          (gx#core-bind!__2
                           _key80745_
                           _val80746_
                           _rebind?80747_
                           _phi80748_))
                        _g83155_))
                ((##fx= _g83154_ 5)
                 (apply (lambda (_key80752_
                                 _val80753_
                                 _rebind?80754_
                                 _phi80755_
                                 _ctx80756_)
                          (gx#core-bind!__%
                           _key80752_
                           _val80753_
                           _rebind?80754_
                           _phi80755_
                           _ctx80756_))
                        _g83155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g83155_))))))
    (define gx#core-identifier-key
      (lambda (_stx80568_)
        (if (symbol? _stx80568_)
            (let* ((_g8056980577_ (gx#current-expander-marks))
                   (_else8057180585_ (lambda () _stx80568_))
                   (_K8057380590_
                    (lambda (_hd80588_) (cons _stx80568_ _hd80588_))))
              (if (##pair? _g8056980577_)
                  (let* ((_hd8057480593_ (##car _g8056980577_))
                         (_hd80596_ _hd8057480593_))
                    (_K8057380590_ _hd80596_))
                  (_else8057180585_)))
            (if (gx#identifier? _stx80568_)
                (let* ((_id80598_ (gx#syntax-local-unwrap _stx80568_))
                       (_eid80600_ (gx#stx-e _id80598_))
                       (_marks80602_ (gx#stx-identifier-marks* _id80598_)))
                  (let* ((_marks8060480612_ _marks80602_)
                         (_else8060680620_ (lambda () _eid80600_))
                         (_K8060880625_
                          (lambda (_hd80623_) (cons _eid80600_ _hd80623_))))
                    (if (##pair? _marks8060480612_)
                        (let* ((_hd8060980628_ (##car _marks8060480612_))
                               (_hd80631_ _hd8060980628_))
                          (_K8060880625_ _hd80631_))
                        (_else8060680620_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx80568_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx80513_ _phi80514_)
        (letrec ((_make-phi80516_
                  (lambda (_super80566_)
                    (let ((__obj83126
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj83126
                       (gensym 'phi)
                       _super80566_)
                      __obj83126)))
                 (_make-phi/up80517_
                  (lambda (_ctx80561_ _super80562_)
                    (let ((_ctx+180564_ (_make-phi80516_ _super80562_)))
                      (##unchecked-structure-set!
                       _ctx80561_
                       _ctx+180564_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+180564_
                       _ctx80561_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+180564_)))
                 (_make-phi/down80518_
                  (lambda (_ctx80556_ _super80557_)
                    (let ((_ctx-180559_ (_make-phi80516_ _super80557_)))
                      (##unchecked-structure-set!
                       _ctx-180559_
                       _ctx80556_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx80556_
                       _ctx-180559_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-180559_)))
                 (_shift80519_
                  (lambda (_ctx80540_
                           _delta80541_
                           _make-delta-context80542_
                           _phi80543_
                           _K80544_)
                    (let ((_$e80546_
                           (##unchecked-structure-ref
                            _ctx80540_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e80546_
                          ((lambda (_super80549_)
                             (let* ((_super80551_
                                     (_K80544_ _super80549_ _delta80541_))
                                    (_ctx+d80553_
                                     (_make-delta-context80542_
                                      _ctx80540_
                                      _super80551_)))
                               (_K80544_
                                _ctx+d80553_
                                (fx- _phi80543_ _delta80541_))))
                           _$e80546_)
                          (error '"Bad context" _ctx80540_))))))
          (let _K80521_ ((_ctx80523_ _ctx80513_) (_phi80524_ _phi80514_))
            (if (fxzero? _phi80524_)
                _ctx80523_
                (if (##structure-instance-of? _ctx80523_ 'gx#context-phi::t)
                    (if (fxpositive? _phi80524_)
                        (let ((_$e80526_
                               (##unchecked-structure-ref
                                _ctx80523_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e80526_
                              ((lambda (_g8052880530_)
                                 (_K80521_ _g8052880530_ (fx- _phi80524_ '1)))
                               _$e80526_)
                              (_shift80519_
                               _ctx80523_
                               '1
                               _make-phi/up80517_
                               _phi80524_
                               _K80521_)))
                        (let ((_$e80533_
                               (##unchecked-structure-ref
                                _ctx80523_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e80533_
                              ((lambda (_g8053580537_)
                                 (_K80521_ _g8053580537_ (fx+ _phi80524_ '1)))
                               _$e80533_)
                              (_shift80519_
                               _ctx80523_
                               '-1
                               _make-phi/down80518_
                               _phi80524_
                               _K80521_))))
                    _ctx80523_))))))
    (define gx#core-context-get
      (lambda (_ctx80510_ _key80511_)
        (hash-get
         (##unchecked-structure-ref _ctx80510_ '2 gx#expander-context::t '#f)
         _key80511_)))
    (define gx#core-context-put!
      (lambda (_ctx80506_ _key80507_ _val80508_)
        (hash-put!
         (##unchecked-structure-ref _ctx80506_ '2 gx#expander-context::t '#f)
         _key80507_
         _val80508_)))
    (define gx#core-context-resolve
      (lambda (_ctx80493_ _key80494_)
        (let _lp80496_ ((_ctx80498_ _ctx80493_))
          (let ((_$e80500_ (gx#core-context-get _ctx80498_ _key80494_)))
            (if _$e80500_
                (values _$e80500_)
                (let ((_$e80503_
                       (if (##structure-instance-of?
                            _ctx80498_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx80498_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e80503_ (_lp80496_ _$e80503_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx80483_ _key80484_ _val80485_ _rebind80486_)
        (let ((_$e80488_ (gx#core-context-get _ctx80483_ _key80484_)))
          (if _$e80488_
              ((lambda (_xval80491_)
                 (gx#core-context-put!
                  _ctx80483_
                  _key80484_
                  (_rebind80486_ _xval80491_)))
               _$e80488_)
              (gx#core-context-put! _ctx80483_ _key80484_ _val80485_)))))
    (define gx#core-context-top__%
      (lambda (_ctx80461_ _stop?80462_)
        (let _lp80464_ ((_ctx80466_ _ctx80461_))
          (if (_stop?80462_ _ctx80466_)
              _ctx80466_
              (if (##structure-instance-of? _ctx80466_ 'gx#context-phi::t)
                  (_lp80464_
                   (##unchecked-structure-ref
                    _ctx80466_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx80472_ (gx#current-expander-context))
               (_stop?80474_ gx#top-context?))
          (gx#core-context-top__% _ctx80472_ _stop?80474_))))
    (define gx#core-context-top__1
      (lambda (_ctx80476_)
        (let ((_stop?80478_ gx#top-context?))
          (gx#core-context-top__% _ctx80476_ _stop?80478_))))
    (define gx#core-context-top
      (lambda _g83157_
        (let ((_g83156_ (##length _g83157_)))
          (cond ((##fx= _g83156_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g83157_))
                ((##fx= _g83156_ 1)
                 (apply (lambda (_ctx80476_)
                          (gx#core-context-top__1 _ctx80476_))
                        _g83157_))
                ((##fx= _g83156_ 2)
                 (apply (lambda (_ctx80480_ _stop?80481_)
                          (gx#core-context-top__% _ctx80480_ _stop?80481_))
                        _g83157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g83157_))))))
    (define gx#core-context-root__%
      (lambda (_ctx80446_)
        (let _lp80448_ ((_ctx80450_ _ctx80446_))
          (if (##structure-instance-of? _ctx80450_ 'gx#context-phi::t)
              (_lp80448_
               (##unchecked-structure-ref _ctx80450_ '3 gx#phi-context::t '#f))
              _ctx80450_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx80456_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx80456_))))
    (define gx#core-context-root
      (lambda _g83159_
        (let ((_g83158_ (##length _g83159_)))
          (cond ((##fx= _g83158_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g83159_))
                ((##fx= _g83158_ 1)
                 (apply (lambda (_ctx80458_)
                          (gx#core-context-root__% _ctx80458_))
                        _g83159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g83159_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx80427_ . __8042480428_)
        (let ((_$e80431_ (gx#current-expander-allow-rebind?)))
          (if _$e80431_
              _$e80431_
              (if (##structure-instance-of? _ctx80427_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx80427_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx80427_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx80438_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx80438_))))
    (define gx#core-context-rebind?
      (lambda _g83161_
        (let ((_g83160_ (##length _g83161_)))
          (cond ((##fx= _g83160_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g83161_))
                ((##fx= _g83160_ 1)
                 (apply (lambda (_ctx80440_)
                          (gx#core-context-rebind?__% _ctx80440_))
                        _g83161_))
                ((##fx>= _g83160_ 1)
                 (apply gx#core-context-rebind?__% _g83161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g83161_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx80410_)
        (let ((_$e80412_ (gx#core-context-top__1 _ctx80410_)))
          (if _$e80412_
              ((lambda (_ctx80415_)
                 (if (##structure-instance-of?
                      _ctx80415_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx80415_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e80412_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx80421_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx80421_))))
    (define gx#core-context-namespace
      (lambda _g83163_
        (let ((_g83162_ (##length _g83163_)))
          (cond ((##fx= _g83162_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g83163_))
                ((##fx= _g83162_ 1)
                 (apply (lambda (_ctx80423_)
                          (gx#core-context-namespace__% _ctx80423_))
                        _g83163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g83163_))))))
    (define gx#expander-binding?__%
      (lambda (_bind80396_ _is?80397_)
        (if (##structure-direct-instance-of? _bind80396_ 'gx#syntax-binding::t)
            (_is?80397_
             (##unchecked-structure-ref
              _bind80396_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind80402_)
        (let ((_is?80404_ gx#expander?))
          (gx#expander-binding?__% _bind80402_ _is?80404_))))
    (define gx#expander-binding?
      (lambda _g83165_
        (let ((_g83164_ (##length _g83165_)))
          (cond ((##fx= _g83164_ 1)
                 (apply (lambda (_bind80402_)
                          (gx#expander-binding?__0 _bind80402_))
                        _g83165_))
                ((##fx= _g83164_ 2)
                 (apply (lambda (_bind80406_ _is?80407_)
                          (gx#expander-binding?__% _bind80406_ _is?80407_))
                        _g83165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g83165_))))))
    (define gx#core-expander-binding?
      (lambda (_bind80393_)
        (gx#expander-binding?__% _bind80393_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind80391_)
        (gx#expander-binding?__% _bind80391_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind80385_)
        (letrec ((_direct-special-form?80387_
                  (lambda (_obj80389_)
                    (##structure-direct-instance-of?
                     _obj80389_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind80385_ _direct-special-form?80387_))))
    (define gx#special-form-binding?
      (lambda (_bind80383_)
        (gx#expander-binding?__% _bind80383_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind80374_)
        (letrec ((_feature?80376_
                  (lambda (_e80378_)
                    (let ((_$e80380_
                           (##structure-instance-of?
                            _e80378_
                            'gx#feature-expander::t)))
                      (if _$e80380_
                          _$e80380_
                          (##structure-instance-of?
                           _e80378_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind80374_ _feature?80376_))))
    (define gx#private-feature-binding?
      (lambda (_bind80372_)
        (gx#expander-binding?__% _bind80372_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id80359_ _bound?80360_)
        (if (gx#identifier? _id80359_)
            (_bound?80360_ (gx#resolve-identifier__0 _id80359_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id80365_)
        (let ((_bound?80367_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id80365_ _bound?80367_))))
    (define gx#core-bound-identifier?
      (lambda _g83167_
        (let ((_g83166_ (##length _g83167_)))
          (cond ((##fx= _g83166_ 1)
                 (apply (lambda (_id80365_)
                          (gx#core-bound-identifier?__0 _id80365_))
                        _g83167_))
                ((##fx= _g83166_ 2)
                 (apply (lambda (_id80369_ _bound?80370_)
                          (gx#core-bound-identifier?__%
                           _id80369_
                           _bound?80370_))
                        _g83167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g83167_))))))
    (define gx#core-identifier=?
      (lambda (_x80349_ _y80350_)
        (letrec ((_y=?80352_
                  (lambda (_xid80356_)
                    ((if (list? _y80350_) memq eq?) _xid80356_ _y80350_))))
          (let ((_bind80354_ (gx#resolve-identifier__0 _x80349_)))
            (if (##structure-instance-of? _bind80354_ 'gx#binding::t)
                (_y=?80352_
                 (##unchecked-structure-ref _bind80354_ '1 gx#binding::t '#f))
                (_y=?80352_ (gx#stx-e _x80349_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e80347_)
        (if (interned-symbol? _e80347_)
            (string-index__0 (symbol->string _e80347_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx80302_ _src80303_ _ctx80304_ _marks80305_)
        (if (##structure? _stx80302_)
            (let ((_$e80307_ (gx#sealed-syntax-unwrap _stx80302_)))
              (if _$e80307_
                  (values _$e80307_)
                  (if (gx#identifier? _stx80302_)
                      (let ((_id80310_
                             (gx#stx-unwrap__% _stx80302_ _marks80305_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id80310_ '1 gx#AST::t '#f)
                         (let ((_$e80312_
                                (##unchecked-structure-ref
                                 _id80310_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e80312_ _$e80312_ _src80303_))
                         _ctx80304_
                         (##unchecked-structure-ref
                          _id80310_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx80302_)
                       (let ((_$e80315_ (gx#stx-source _stx80302_)))
                         (if _$e80315_ _$e80315_ _src80303_))
                       _ctx80304_
                       (reverse _marks80305_)))))
            (##structure
             gx#syntax-quote::t
             _stx80302_
             _src80303_
             _ctx80304_
             (reverse _marks80305_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx80321_)
        (let* ((_src80323_ '#f)
               (_ctx80325_ (gx#current-expander-context))
               (_marks80327_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80321_
           _src80323_
           _ctx80325_
           _marks80327_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx80329_ _src80330_)
        (let* ((_ctx80332_ (gx#current-expander-context))
               (_marks80334_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80329_
           _src80330_
           _ctx80332_
           _marks80334_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx80336_ _src80337_ _ctx80338_)
        (let ((_marks80340_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80336_
           _src80337_
           _ctx80338_
           _marks80340_))))
    (define gx#core-quote-syntax
      (lambda _g83169_
        (let ((_g83168_ (##length _g83169_)))
          (cond ((##fx= _g83168_ 1)
                 (apply (lambda (_stx80321_)
                          (gx#core-quote-syntax__0 _stx80321_))
                        _g83169_))
                ((##fx= _g83168_ 2)
                 (apply (lambda (_stx80329_ _src80330_)
                          (gx#core-quote-syntax__1 _stx80329_ _src80330_))
                        _g83169_))
                ((##fx= _g83168_ 3)
                 (apply (lambda (_stx80336_ _src80337_ _ctx80338_)
                          (gx#core-quote-syntax__2
                           _stx80336_
                           _src80337_
                           _ctx80338_))
                        _g83169_))
                ((##fx= _g83168_ 4)
                 (apply (lambda (_stx80342_ _src80343_ _ctx80344_ _marks80345_)
                          (gx#core-quote-syntax__%
                           _stx80342_
                           _src80343_
                           _ctx80344_
                           _marks80345_))
                        _g83169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g83169_))))))
    (define gx#core-cons
      (lambda (_hd80298_ _tl80299_)
        (cons (gx#core-quote-syntax__0 _hd80298_) _tl80299_)))
    (define gx#core-list
      (lambda (_hd80295_ . _rest80296_)
        (cons (gx#core-quote-syntax__0 _hd80295_) _rest80296_)))
    (define gx#core-cons*
      (lambda (_hd80292_ . _rest80293_)
        (apply cons* (gx#core-quote-syntax__0 _hd80292_) _rest80293_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path80266_ _rel80267_)
        (let ((_path80279_ (gx#stx-e _stx-path80266_))
              (_reldir80280_
               (let _lp80269_ ((_relsrc80271_
                                (let ((_$e80276_
                                       (gx#stx-source _stx-path80266_)))
                                  (if _$e80276_ _$e80276_ _rel80267_))))
                 (if (##structure-instance-of? _relsrc80271_ 'gerbil#AST::t)
                     (_lp80269_
                      (let ((_$e80273_ (gx#stx-source _relsrc80271_)))
                        (if _$e80273_ _$e80273_ (gx#stx-e _relsrc80271_))))
                     (if (source-location-path? _relsrc80271_)
                         (path-directory (source-location-path _relsrc80271_))
                         (if (string? _relsrc80271_)
                             (path-directory _relsrc80271_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path80279_ (path-normalize _reldir80280_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path80285_)
        (let ((_rel80287_ '#f))
          (gx#core-resolve-path__% _stx-path80285_ _rel80287_))))
    (define gx#core-resolve-path
      (lambda _g83171_
        (let ((_g83170_ (##length _g83171_)))
          (cond ((##fx= _g83170_ 1)
                 (apply (lambda (_stx-path80285_)
                          (gx#core-resolve-path__0 _stx-path80285_))
                        _g83171_))
                ((##fx= _g83170_ 2)
                 (apply (lambda (_stx-path80289_ _rel80290_)
                          (gx#core-resolve-path__% _stx-path80289_ _rel80290_))
                        _g83171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g83171_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr80222_ _ctx80223_)
        (let* ((_repr8022480231_ _repr80222_)
               (_E8022680235_
                (lambda () (error '"No clause matching" _repr8022480231_)))
               (_K8022780243_
                (lambda (_subs80238_ _phi80239_)
                  (let ((_subst80241_
                         (if (not (null? _subs80238_))
                             (list->hash-table-eq _subs80238_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst80241_
                     _ctx80223_
                     _phi80239_
                     '#f)))))
          (if (##pair? _repr8022480231_)
              (let ((_hd8022880246_ (##car _repr8022480231_))
                    (_tl8022980248_ (##cdr _repr8022480231_)))
                (let* ((_phi80251_ _hd8022880246_)
                       (_subs80253_ _tl8022980248_))
                  (_K8022780243_ _subs80253_ _phi80251_)))
              (_E8022680235_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr80258_)
        (let ((_ctx80260_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr80258_ _ctx80260_))))
    (define gx#core-deserialize-mark
      (lambda _g83173_
        (let ((_g83172_ (##length _g83173_)))
          (cond ((##fx= _g83172_ 1)
                 (apply (lambda (_repr80258_)
                          (gx#core-deserialize-mark__0 _repr80258_))
                        _g83173_))
                ((##fx= _g83172_ 2)
                 (apply (lambda (_repr80262_ _ctx80263_)
                          (gx#core-deserialize-mark__% _repr80262_ _ctx80263_))
                        _g83173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g83173_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx80219_)
        (gx#stx-rewrap _stx80219_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx80217_)
        (gx#stx-unwrap__% _stx80217_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx80187_)
        (let* ((_g8018880196_ (gx#current-expander-marks))
               (_else8019080204_ (lambda () _stx80187_))
               (_K8019280209_
                (lambda (_hd80207_) (gx#stx-apply-mark _stx80187_ _hd80207_))))
          (if (##pair? _g8018880196_)
              (let* ((_hd8019380212_ (##car _g8018880196_))
                     (_hd80215_ _hd8019380212_))
                (_K8019280209_ _hd80215_))
              (_else8019080204_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx80172_ _E80173_)
        (let ((_bind80175_ (gx#resolve-identifier__0 _stx80172_)))
          (if (##structure-direct-instance-of?
               _bind80175_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind80175_
               '4
               gx#syntax-binding::t
               '#f)
              (_E80173_ _stx80172_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx80180_)
        (let ((_E80182_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx80180_ _E80182_))))
    (define gx#syntax-local-e
      (lambda _g83175_
        (let ((_g83174_ (##length _g83175_)))
          (cond ((##fx= _g83174_ 1)
                 (apply (lambda (_stx80180_) (gx#syntax-local-e__0 _stx80180_))
                        _g83175_))
                ((##fx= _g83174_ 2)
                 (apply (lambda (_stx80184_ _E80185_)
                          (gx#syntax-local-e__% _stx80184_ _E80185_))
                        _g83175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g83175_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx80156_ _E80157_)
        (let ((_e80159_ (gx#syntax-local-e__% _stx80156_ _E80157_)))
          (if (##structure-instance-of? _e80159_ 'gx#expander::t)
              (##structure-ref _e80159_ '1 gx#expander::t '#f)
              _e80159_))))
    (define gx#syntax-local-value__0
      (lambda (_stx80164_)
        (let ((_E80166_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx80164_ _E80166_))))
    (define gx#syntax-local-value
      (lambda _g83177_
        (let ((_g83176_ (##length _g83177_)))
          (cond ((##fx= _g83176_ 1)
                 (apply (lambda (_stx80164_)
                          (gx#syntax-local-value__0 _stx80164_))
                        _g83177_))
                ((##fx= _g83176_ 2)
                 (apply (lambda (_stx80168_ _E80169_)
                          (gx#syntax-local-value__% _stx80168_ _E80169_))
                        _g83177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g83177_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx80153_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx80153_)))))
