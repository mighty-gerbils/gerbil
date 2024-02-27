(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1709038442)
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
      (lambda _$args84082_
        (apply make-instance gx#expander-context::t _$args84082_)))
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
      (lambda _$args84079_
        (apply make-instance gx#root-context::t _$args84079_)))
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
      (lambda _$args84076_
        (apply make-instance gx#phi-context::t _$args84076_)))
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
      (lambda _$args84073_
        (apply make-instance gx#top-context::t _$args84073_)))
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
      (lambda _$args84070_
        (apply make-instance gx#module-context::t _$args84070_)))
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
      (lambda _$args84067_
        (apply make-instance gx#prelude-context::t _$args84067_)))
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
      (lambda _$args84064_
        (apply make-instance gx#local-context::t _$args84064_)))
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
      (lambda (_self84048_ _id84049_ _super84050_)
        (if (##fx< '3 (##structure-length _self84048_))
            (begin
              (##unchecked-structure-set!
               _self84048_
               _id84049_
               '1
               (##structure-type _self84048_)
               '#f)
              (##unchecked-structure-set!
               _self84048_
               (make-hash-table-eq)
               '2
               (##structure-type _self84048_)
               '#f)
              (##unchecked-structure-set!
               _self84048_
               _super84050_
               '3
               (##structure-type _self84048_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84048_
                   '3
                   (##vector-length _self84048_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84055_ _id84056_)
        (let ((_super84058_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84055_ _id84056_ _super84058_))))
    (define gx#phi-context:::init!
      (lambda _g84125_
        (let ((_g84124_ (##length _g84125_)))
          (cond ((##fx= _g84124_ 2)
                 (apply (lambda (_self84055_ _id84056_)
                          (gx#phi-context:::init!__0 _self84055_ _id84056_))
                        _g84125_))
                ((##fx= _g84124_ 3)
                 (apply (lambda (_self84060_ _id84061_ _super84062_)
                          (gx#phi-context:::init!__%
                           _self84060_
                           _id84061_
                           _super84062_))
                        _g84125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84125_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self83912_ _super83913_)
        (if (##fx< '3 (##structure-length _self83912_))
            (begin
              (##unchecked-structure-set!
               _self83912_
               (gensym 'L)
               '1
               (##structure-type _self83912_)
               '#f)
              (##unchecked-structure-set!
               _self83912_
               (make-hash-table-eq)
               '2
               (##structure-type _self83912_)
               '#f)
              (##unchecked-structure-set!
               _self83912_
               _super83913_
               '3
               (##structure-type _self83912_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83912_
                   '3
                   (##vector-length _self83912_)))))
    (define gx#local-context:::init!__0
      (lambda (_self83918_)
        (let ((_super83920_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self83918_ _super83920_))))
    (define gx#local-context:::init!
      (lambda _g84127_
        (let ((_g84126_ (##length _g84127_)))
          (cond ((##fx= _g84126_ 1)
                 (apply (lambda (_self83918_)
                          (gx#local-context:::init!__0 _self83918_))
                        _g84127_))
                ((##fx= _g84126_ 2)
                 (apply (lambda (_self83922_ _super83923_)
                          (gx#local-context:::init!__%
                           _self83922_
                           _super83923_))
                        _g84127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84127_))))))
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
      (lambda _$args83786_ (apply make-instance gx#binding::t _$args83786_)))
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
      (lambda _$args83783_
        (apply make-instance gx#runtime-binding::t _$args83783_)))
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
      (lambda _$args83780_
        (apply make-instance gx#local-binding::t _$args83780_)))
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
      (lambda _$args83777_
        (apply make-instance gx#top-binding::t _$args83777_)))
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
      (lambda _$args83774_
        (apply make-instance gx#module-binding::t _$args83774_)))
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
      (lambda _$args83771_
        (apply make-instance gx#extern-binding::t _$args83771_)))
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
      (lambda _$args83768_
        (apply make-instance gx#syntax-binding::t _$args83768_)))
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
      (lambda _$args83765_
        (apply make-instance gx#import-binding::t _$args83765_)))
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
      (lambda _$args83762_
        (apply make-instance gx#alias-binding::t _$args83762_)))
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
      (lambda _$args83759_ (apply make-instance gx#expander::t _$args83759_)))
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
      (lambda _$args83756_
        (apply make-instance gx#core-expander::t _$args83756_)))
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
      (lambda _$args83753_
        (apply make-instance gx#expression-form::t _$args83753_)))
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
      (lambda _$args83750_
        (apply make-instance gx#special-form::t _$args83750_)))
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
      (lambda _$args83747_
        (apply make-instance gx#definition-form::t _$args83747_)))
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
      (lambda _$args83744_
        (apply make-instance gx#top-special-form::t _$args83744_)))
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
      (lambda _$args83741_
        (apply make-instance gx#module-special-form::t _$args83741_)))
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
      (lambda _$args83738_
        (apply make-instance gx#feature-expander::t _$args83738_)))
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
      (lambda _$args83735_
        (apply make-instance gx#private-feature-expander::t _$args83735_)))
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
      (lambda _$args83732_
        (apply make-instance gx#reserved-expander::t _$args83732_)))
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
      (lambda _$args83729_
        (apply make-instance gx#macro-expander::t _$args83729_)))
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
      (lambda _$args83726_
        (apply make-instance gx#rename-macro-expander::t _$args83726_)))
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
      (lambda _$args83723_
        (apply make-instance gx#user-expander::t _$args83723_)))
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
      (lambda _$args83720_
        (apply make-instance gx#expander-mark::t _$args83720_)))
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
      (lambda (_ctx83705_ _message83706_ _stx83707_ . _details83708_)
        (let ((_ctx83718_
               (let ((_$e83710_ _ctx83705_))
                 (if _$e83710_
                     _$e83710_
                     (let ((_$e83713_ (gx#core-context-top__0)))
                       (if _$e83713_
                           ((lambda (_ctx83716_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx83716_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e83713_)
                           '#f))))))
          (raise (make-syntax-error
                  _message83706_
                  (cons _stx83707_ _details83708_)
                  _ctx83718_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx83692_ _expression?83693_)
        (gx#eval-syntax* (gx#core-expand__% _stx83692_ _expression?83693_))))
    (define gx#eval-syntax__0
      (lambda (_stx83698_)
        (let ((_expression?83700_ '#f))
          (gx#eval-syntax__% _stx83698_ _expression?83700_))))
    (define gx#eval-syntax
      (lambda _g84129_
        (let ((_g84128_ (##length _g84129_)))
          (cond ((##fx= _g84128_ 1)
                 (apply (lambda (_stx83698_) (gx#eval-syntax__0 _stx83698_))
                        _g84129_))
                ((##fx= _g84128_ 2)
                 (apply (lambda (_stx83702_ _expression?83703_)
                          (gx#eval-syntax__% _stx83702_ _expression?83703_))
                        _g84129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84129_))))))
    (define gx#eval-syntax*
      (lambda (_stx83689_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx83689_))))
    (define gx#core-expand__%
      (lambda (_stx83676_ _expression?83677_)
        (if _expression?83677_
            (gx#core-expand-expression _stx83676_)
            (gx#core-expand-top _stx83676_))))
    (define gx#core-expand__0
      (lambda (_stx83682_)
        (let ((_expression?83684_ '#f))
          (gx#core-expand__% _stx83682_ _expression?83684_))))
    (define gx#core-expand
      (lambda _g84131_
        (let ((_g84130_ (##length _g84131_)))
          (cond ((##fx= _g84130_ 1)
                 (apply (lambda (_stx83682_) (gx#core-expand__0 _stx83682_))
                        _g84131_))
                ((##fx= _g84130_ 2)
                 (apply (lambda (_stx83686_ _expression?83687_)
                          (gx#core-expand__% _stx83686_ _expression?83687_))
                        _g84131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84131_))))))
    (define gx#core-expand-top
      (lambda (_stx83643_)
        (let* ((_stx83645_ (gx#core-expand*__0 _stx83643_))
               (_e8364683653_ _stx83645_)
               (_E8364883657_
                (lambda () (gx#core-expand-expression _stx83645_)))
               (_E8364783671_
                (lambda ()
                  (if (gx#stx-pair? _e8364683653_)
                      (let ((_e8364983661_ (gx#syntax-e _e8364683653_)))
                        (let ((_hd8365083664_ (##car _e8364983661_))
                              (_tl8365183666_ (##cdr _e8364983661_)))
                          (let ((_form83669_ _hd8365083664_))
                            (if (gx#core-bound-identifier?__0 _form83669_)
                                _stx83645_
                                (_E8364883657_)))))
                      (_E8364883657_)))))
          (_E8364783671_))))
    (define gx#core-expand-expression
      (lambda (_stx83590_)
        (letrec ((_sealed-expression?83592_
                  (lambda (_hd83613_)
                    (if (gx#sealed-syntax? _hd83613_)
                        (let* ((_e8361483621_ _hd83613_)
                               (_E8361683625_ (lambda () '#f))
                               (_E8361583639_
                                (lambda ()
                                  (if (gx#stx-pair? _e8361483621_)
                                      (let ((_e8361783629_
                                             (gx#syntax-e _e8361483621_)))
                                        (let ((_hd8361883632_
                                               (##car _e8361783629_))
                                              (_tl8361983634_
                                               (##cdr _e8361783629_)))
                                          (let ((_form83637_ _hd8361883632_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form83637_
                                                 gx#expression-form-binding?)
                                                (_E8361683625_)))))
                                      (_E8361683625_)))))
                          (_E8361583639_))
                        '#f)))
                 (_illegal-expression83593_
                  (lambda (_hd83611_ . _g84132_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx83590_
                     _hd83611_)))
                 (_expand-e83594_
                  (lambda (_form83606_ _hd83607_)
                    (let ((_bind83609_
                           (if (##structure-instance-of?
                                _form83606_
                                'gx#binding::t)
                               _form83606_
                               (gx#resolve-identifier__0 _form83606_))))
                      (if (gx#core-expander-binding? _bind83609_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind83609_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd83607_
                            (gx#stx-source _stx83590_)))
                          (if (##structure-direct-instance-of?
                               _bind83609_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind83609_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd83607_
                                 (gx#stx-source _stx83590_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx83590_
                               _form83606_)))))))
          (let ((_hd83596_ (gx#core-expand-head _stx83590_)))
            (if (_sealed-expression?83592_ _hd83596_)
                _hd83596_
                (if (gx#stx-pair? _hd83596_)
                    (let* ((_form83598_ (gx#stx-car _hd83596_))
                           (_bind83600_
                            (if (gx#identifier? _form83598_)
                                (gx#resolve-identifier__0 _form83598_)
                                '#f)))
                      (if (or (not _bind83600_)
                              (not (gx#core-expander-binding? _bind83600_)))
                          (_expand-e83594_ '%%app (cons '%%app _hd83596_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind83600_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd83596_
                               _illegal-expression83593_)
                              (if (gx#expression-form-binding? _bind83600_)
                                  (_expand-e83594_ _bind83600_ _hd83596_)
                                  (if (gx#direct-special-form-binding?
                                       _bind83600_)
                                      (gx#core-expand-expression
                                       (_expand-e83594_ _bind83600_ _hd83596_))
                                      (_illegal-expression83593_
                                       _hd83596_))))))
                    (if (gx#core-bound-identifier?__0 _hd83596_)
                        (_illegal-expression83593_ _hd83596_)
                        (if (gx#identifier? _hd83596_)
                            (_expand-e83594_
                             '%%ref
                             (cons '%%ref (cons _hd83596_ '())))
                            (if (gx#stx-datum? _hd83596_)
                                (_expand-e83594_
                                 '%#quote
                                 (cons '%#quote (cons _hd83596_ '())))
                                (_illegal-expression83593_ _hd83596_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx83585_)
        (call-with-parameters
         (lambda ()
           (let ((_stx83588_ (gx#core-expand-expression _stx83585_)))
             (values _stx83588_ (gx#eval-syntax* _stx83588_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx83566_ _stop?83567_)
        (let _lp83569_ ((_stx83571_ _stx83566_))
          (if (_stop?83567_ _stx83571_)
              _stx83571_
              (let ((_rstx83573_ (gx#core-expand1 _stx83571_)))
                (if (eq? _stx83571_ _rstx83573_)
                    _stx83571_
                    (_lp83569_ _rstx83573_)))))))
    (define gx#core-expand*__0
      (lambda (_stx83578_)
        (let ((_stop?83580_ false))
          (gx#core-expand*__% _stx83578_ _stop?83580_))))
    (define gx#core-expand*
      (lambda _g84134_
        (let ((_g84133_ (##length _g84134_)))
          (cond ((##fx= _g84133_ 1)
                 (apply (lambda (_stx83578_) (gx#core-expand*__0 _stx83578_))
                        _g84134_))
                ((##fx= _g84133_ 2)
                 (apply (lambda (_stx83582_ _stop?83583_)
                          (gx#core-expand*__% _stx83582_ _stop?83583_))
                        _g84134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84134_))))))
    (define gx#core-expand1
      (lambda (_stx83522_)
        (letrec ((_step83524_
                  (lambda (_hd83561_)
                    (let ((_bind83563_ (gx#resolve-identifier__0 _hd83561_)))
                      (if (##structure-instance-of?
                           _bind83563_
                           'gx#runtime-binding::t)
                          _stx83522_
                          (if (##structure-direct-instance-of?
                               _bind83563_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind83563_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx83522_)
                              (if (not _bind83563_)
                                  _stx83522_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx83522_))))))))
          (let* ((_e8352583533_ _stx83522_)
                 (_E8353183537_ (lambda () _stx83522_))
                 (_E8352783543_
                  (lambda ()
                    (let ((_hd83541_ _e8352583533_))
                      (if (gx#identifier? _hd83541_)
                          (_step83524_ _hd83541_)
                          (_E8353183537_)))))
                 (_E8352683557_
                  (lambda ()
                    (if (gx#stx-pair? _e8352583533_)
                        (let ((_e8352883547_ (gx#syntax-e _e8352583533_)))
                          (let ((_hd8352983550_ (##car _e8352883547_))
                                (_tl8353083552_ (##cdr _e8352883547_)))
                            (let ((_hd83555_ _hd8352983550_))
                              (if (gx#identifier? _hd83555_)
                                  (_step83524_ _hd83555_)
                                  (_E8352783543_)))))
                        (_E8352783543_)))))
            (_E8352683557_)))))
    (define gx#core-expand-head
      (lambda (_stx83488_)
        (letrec ((_stop?83490_
                  (lambda (_stx83492_)
                    (let* ((_e8349383500_ _stx83492_)
                           (_E8349583504_ (lambda () '#f))
                           (_E8349483518_
                            (lambda ()
                              (if (gx#stx-pair? _e8349383500_)
                                  (let ((_e8349683508_
                                         (gx#syntax-e _e8349383500_)))
                                    (let ((_hd8349783511_
                                           (##car _e8349683508_))
                                          (_tl8349883513_
                                           (##cdr _e8349683508_)))
                                      (let ((_hd83516_ _hd8349783511_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd83516_)
                                            (_E8349583504_)))))
                                  (_E8349583504_)))))
                      (_E8349483518_)))))
          (gx#core-expand*__% _stx83488_ _stop?83490_))))
    (define gx#core-expand-block__%
      (lambda (_stx83294_
               _expand-special83295_
               _begin-form83296_
               _expand-e83297_)
        (letrec ((_expand-splice83299_
                  (lambda (_hd83462_ _body83463_ _rest83464_ _r83465_)
                    (if (gx#stx-list? _body83463_)
                        (_K83303_
                         (gx#stx-foldr cons _rest83464_ _body83463_)
                         _r83465_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83294_
                         _hd83462_))))
                 (_expand-cond-expand83300_
                  (lambda (_hd83458_ _rest83459_ _r83460_)
                    (_K83303_
                     (cons (gx#core-expand-cond-expand% _hd83458_) _rest83459_)
                     _r83460_)))
                 (_expand-include83301_
                  (lambda (_hd83407_ _rest83408_ _r83409_)
                    (let* ((_e8341083420_ _hd83407_)
                           (_E8341283424_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8341083420_)))
                           (_E8341183454_
                            (lambda ()
                              (if (gx#stx-pair? _e8341083420_)
                                  (let ((_e8341383428_
                                         (gx#syntax-e _e8341083420_)))
                                    (let ((_hd8341483431_
                                           (##car _e8341383428_))
                                          (_tl8341583433_
                                           (##cdr _e8341383428_)))
                                      (if (gx#stx-pair? _tl8341583433_)
                                          (let ((_e8341683436_
                                                 (gx#syntax-e _tl8341583433_)))
                                            (let ((_hd8341783439_
                                                   (##car _e8341683436_))
                                                  (_tl8341883441_
                                                   (##cdr _e8341683436_)))
                                              (let ((_path83444_
                                                     _hd8341783439_))
                                                (if (gx#stx-null?
                                                     _tl8341883441_)
                                                    (if (gx#stx-string?
                                                         _path83444_)
                                                        (let* ((_rpath83446_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path83444_
                         (gx#stx-source _hd83407_)))
                       (_block83448_
                        (gx#core-expand-include%__% _hd83407_ _rpath83446_))
                       (_rbody83451_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block83448_
                            _expand-special83295_
                            '#f
                            _expand-e83297_))
                         gx#current-expander-path
                         (cons _rpath83446_ (gx#current-expander-path)))))
                  (_K83303_ _rest83408_ (foldr1 cons _r83409_ _rbody83451_)))
                (_E8341283424_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8341283424_)))))
                                          (_E8341283424_))))
                                  (_E8341283424_)))))
                      (_E8341183454_))))
                 (_expand-expression83302_
                  (lambda (_hd83403_ _rest83404_ _r83405_)
                    (_K83303_
                     _rest83404_
                     (cons (_expand-e83297_ _hd83403_) _r83405_))))
                 (_K83303_
                  (lambda (_rest83333_ _r83334_)
                    (let* ((_e8333583342_ _rest83333_)
                           (_E8333783346_
                            (lambda ()
                              (if _begin-form83296_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83296_
                                    (reverse _r83334_))
                                   (gx#stx-source _stx83294_))
                                  _r83334_)))
                           (_E8333683399_
                            (lambda ()
                              (if (gx#stx-pair? _e8333583342_)
                                  (let ((_e8333883350_
                                         (gx#syntax-e _e8333583342_)))
                                    (let ((_hd8333983353_
                                           (##car _e8333883350_))
                                          (_tl8334083355_
                                           (##cdr _e8333883350_)))
                                      (let* ((_hd83358_ _hd8333983353_)
                                             (_rest83360_ _tl8334083355_))
                                        (if '#t
                                            (let* ((_hd83362_
                                                    (gx#core-expand-head
                                                     _hd83358_))
                                                   (_e8336383370_ _hd83362_)
                                                   (_E8336583374_
                                                    (lambda ()
                                                      (_expand-expression83302_
                                                       _hd83362_
                                                       _rest83360_
                                                       _r83334_)))
                                                   (_E8336483395_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8336383370_)
                                                          (let ((_e8336683378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8336383370_)))
                    (let ((_hd8336783381_ (##car _e8336683378_))
                          (_tl8336883383_ (##cdr _e8336683378_)))
                      (let* ((_form83386_ _hd8336783381_)
                             (_body83388_ _tl8336883383_))
                        (if '#t
                            (let ((_bind83390_
                                   (if (gx#identifier? _form83386_)
                                       (gx#resolve-identifier__0 _form83386_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind83390_)
                                  (let ((_$e83392_
                                         (##unchecked-structure-ref
                                          _bind83390_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e83392_)
                                        (_expand-splice83299_
                                         _hd83362_
                                         _body83388_
                                         _rest83360_
                                         _r83334_)
                                        (if (eq? '%#cond-expand _$e83392_)
                                            (_expand-cond-expand83300_
                                             _hd83362_
                                             _rest83360_
                                             _r83334_)
                                            (if (eq? '%#include _$e83392_)
                                                (_expand-include83301_
                                                 _hd83362_
                                                 _rest83360_
                                                 _r83334_)
                                                (_expand-special83295_
                                                 _hd83362_
                                                 _K83303_
                                                 _rest83360_
                                                 _r83334_)))))
                                  (_expand-expression83302_
                                   _hd83362_
                                   _rest83360_
                                   _r83334_)))
                            (_E8336583374_)))))
                  (_E8336583374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8336483395_))
                                            (_E8333783346_)))))
                                  (_E8333783346_)))))
                      (_E8333683399_)))))
          (let* ((_e8330483311_ _stx83294_)
                 (_E8330683315_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8330483311_)))
                 (_E8330583329_
                  (lambda ()
                    (if (gx#stx-pair? _e8330483311_)
                        (let ((_e8330783319_ (gx#syntax-e _e8330483311_)))
                          (let ((_hd8330883322_ (##car _e8330783319_))
                                (_tl8330983324_ (##cdr _e8330783319_)))
                            (let ((_body83327_ _tl8330983324_))
                              (if (gx#stx-list? _body83327_)
                                  (_K83303_ _body83327_ '())
                                  (_E8330683315_)))))
                        (_E8330683315_)))))
            (_E8330583329_)))))
    (define gx#core-expand-block__0
      (lambda (_stx83470_ _expand-special83471_)
        (let* ((_begin-form83473_ '%#begin)
               (_expand-e83475_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83470_
           _expand-special83471_
           _begin-form83473_
           _expand-e83475_))))
    (define gx#core-expand-block__1
      (lambda (_stx83477_ _expand-special83478_ _begin-form83479_)
        (let ((_expand-e83481_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83477_
           _expand-special83478_
           _begin-form83479_
           _expand-e83481_))))
    (define gx#core-expand-block
      (lambda _g84136_
        (let ((_g84135_ (##length _g84136_)))
          (cond ((##fx= _g84135_ 2)
                 (apply (lambda (_stx83470_ _expand-special83471_)
                          (gx#core-expand-block__0
                           _stx83470_
                           _expand-special83471_))
                        _g84136_))
                ((##fx= _g84135_ 3)
                 (apply (lambda (_stx83477_
                                 _expand-special83478_
                                 _begin-form83479_)
                          (gx#core-expand-block__1
                           _stx83477_
                           _expand-special83478_
                           _begin-form83479_))
                        _g84136_))
                ((##fx= _g84135_ 4)
                 (apply (lambda (_stx83483_
                                 _expand-special83484_
                                 _begin-form83485_
                                 _expand-e83486_)
                          (gx#core-expand-block__%
                           _stx83483_
                           _expand-special83484_
                           _begin-form83485_
                           _expand-e83486_))
                        _g84136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84136_))))))
    (define gx#core-expand-block*
      (lambda (_stx83242_ _expand-special83243_)
        (let* ((_g8324483255_
                (gx#core-expand-block__1 _stx83242_ _expand-special83243_ '#f))
               (_E8324883259_
                (lambda () (error '"No clause matching" _g8324483255_))))
          (let ((_K8325383290_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83242_)))
                (_K8325083276_ (lambda (_expr83274_) _expr83274_))
                (_K8324983265_
                 (lambda (_body83263_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83263_))
                    (gx#stx-source _stx83242_)))))
            (let ((_try-match8324683286_
                   (lambda ()
                     (if (##pair? _g8324483255_)
                         (let ((_tl8325283281_ (##cdr _g8324483255_))
                               (_hd8325183279_ (##car _g8324483255_)))
                           (if (##null? _tl8325283281_)
                               (let ((_expr83284_ _hd8325183279_))
                                 (_K8325083276_ _expr83284_))
                               (let ((_body83268_ _g8324483255_))
                                 (_K8324983265_ _body83268_))))
                         (let ((_body83268_ _g8324483255_))
                           (_K8324983265_ _body83268_))))))
              (if (##null? _g8324483255_)
                  (_K8325383290_)
                  (_try-match8324683286_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83070_)
        (letrec ((_satisfied?83072_
                  (lambda (_condition83170_)
                    (let* ((_e8317183186_ _condition83170_)
                           (_E8318183190_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8317183186_)))
                           (_E8317483209_
                            (lambda ()
                              (if (gx#stx-pair? _e8317183186_)
                                  (let ((_e8318283194_
                                         (gx#syntax-e _e8317183186_)))
                                    (let ((_hd8318383197_
                                           (##car _e8318283194_))
                                          (_tl8318483199_
                                           (##cdr _e8318283194_)))
                                      (let* ((_combinator83202_ _hd8318383197_)
                                             (_body83204_ _tl8318483199_))
                                        (if (gx#stx-list? _body83204_)
                                            (let ((_$e83206_
                                                   (gx#stx-e
                                                    _combinator83202_)))
                                              (if (eq? 'not _$e83206_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83072_
                                                        _body83204_))
                                                  (if (eq? 'and _$e83206_)
                                                      (gx#stx-andmap
                                                       _satisfied?83072_
                                                       _body83204_)
                                                      (if (eq? 'or _$e83206_)
                                                          (gx#stx-ormap
                                                           _satisfied?83072_
                                                           _body83204_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83206_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83204_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83070_
                       _combinator83202_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8318183190_)))))
                                  (_E8318183190_))))
                           (_E8317383232_
                            (lambda ()
                              (if (gx#stx-pair? _e8317183186_)
                                  (let ((_e8317583213_
                                         (gx#syntax-e _e8317183186_)))
                                    (let ((_hd8317683216_
                                           (##car _e8317583213_))
                                          (_tl8317783218_
                                           (##cdr _e8317583213_)))
                                      (if (and (gx#identifier? _hd8317683216_)
                                               (gx#core-identifier=?
                                                _hd8317683216_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8317783218_)
                                              (let ((_e8317883221_
                                                     (gx#syntax-e
                                                      _tl8317783218_)))
                                                (let ((_hd8317983224_
                                                       (##car _e8317883221_))
                                                      (_tl8318083226_
                                                       (##cdr _e8317883221_)))
                                                  (let ((_expr83229_
                                                         _hd8317983224_))
                                                    (if (gx#stx-null?
                                                         _tl8318083226_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83229_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8317483209_))
                (_E8317483209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8317483209_))
                                          (_E8317483209_))))
                                  (_E8317483209_))))
                           (_E8317283238_
                            (lambda ()
                              (let ((_id83236_ _e8317183186_))
                                (if (gx#identifier? _id83236_)
                                    (gx#core-bound-identifier?__%
                                     _id83236_
                                     gx#feature-binding?)
                                    (_E8317383232_))))))
                      (_E8317283238_))))
                 (_loop83073_
                  (lambda (_rest83103_)
                    (let* ((_e8310483112_ _rest83103_)
                           (_E8311083116_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8310483112_)))
                           (_E8310683120_
                            (lambda ()
                              (if (gx#stx-null? _e8310483112_)
                                  (if '#t '() (_E8311083116_))
                                  (_E8311083116_))))
                           (_E8310583166_
                            (lambda ()
                              (if (gx#stx-pair? _e8310483112_)
                                  (let ((_e8310783124_
                                         (gx#syntax-e _e8310483112_)))
                                    (let ((_hd8310883127_
                                           (##car _e8310783124_))
                                          (_tl8310983129_
                                           (##cdr _e8310783124_)))
                                      (let* ((_hd83132_ _hd8310883127_)
                                             (_rest83134_ _tl8310983129_))
                                        (if '#t
                                            (let* ((_e8313583142_ _hd83132_)
                                                   (_E8313783146_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8313583142_)))
                                                   (_E8313683162_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8313583142_)
                                                          (let ((_e8313883150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8313583142_)))
                    (let ((_hd8313983153_ (##car _e8313883150_))
                          (_tl8314083155_ (##cdr _e8313883150_)))
                      (let* ((_condition83158_ _hd8313983153_)
                             (_body83160_ _tl8314083155_))
                        (if '#t
                            (if (gx#stx-eq? _condition83158_ 'else)
                                (if (gx#stx-null? _rest83134_)
                                    _body83160_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83070_
                                     _hd83132_))
                                (if (_satisfied?83072_ _condition83158_)
                                    _body83160_
                                    (_loop83073_ _rest83134_)))
                            (_E8313783146_)))))
                  (_E8313783146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8313683162_))
                                            (_E8310683120_)))))
                                  (_E8310683120_)))))
                      (_E8310583166_)))))
          (let* ((_e8307483081_ _stx83070_)
                 (_E8307683085_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8307483081_)))
                 (_E8307583099_
                  (lambda ()
                    (if (gx#stx-pair? _e8307483081_)
                        (let ((_e8307783089_ (gx#syntax-e _e8307483081_)))
                          (let ((_hd8307883092_ (##car _e8307783089_))
                                (_tl8307983094_ (##cdr _e8307783089_)))
                            (let ((_clauses83097_ _tl8307983094_))
                              (if (gx#stx-list? _clauses83097_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83073_ _clauses83097_))
                                  (_E8307683085_)))))
                        (_E8307683085_)))))
            (_E8307583099_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83013_ _rpath83014_)
        (let* ((_e8301583025_ _stx83013_)
               (_E8301783029_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8301583025_)))
               (_E8301683056_
                (lambda ()
                  (if (gx#stx-pair? _e8301583025_)
                      (let ((_e8301883033_ (gx#syntax-e _e8301583025_)))
                        (let ((_hd8301983036_ (##car _e8301883033_))
                              (_tl8302083038_ (##cdr _e8301883033_)))
                          (if (gx#stx-pair? _tl8302083038_)
                              (let ((_e8302183041_
                                     (gx#syntax-e _tl8302083038_)))
                                (let ((_hd8302283044_ (##car _e8302183041_))
                                      (_tl8302383046_ (##cdr _e8302183041_)))
                                  (let ((_path83049_ _hd8302283044_))
                                    (if (gx#stx-null? _tl8302383046_)
                                        (if (gx#stx-string? _path83049_)
                                            (let ((_rpath83054_
                                                   (let ((_$e83051_
                                                          _rpath83014_))
                                                     (if _$e83051_
                                                         _$e83051_
                                                         (gx#core-resolve-path__%
                                                          _path83049_
                                                          (gx#stx-source
                                                           _stx83013_))))))
                                              (if (member _rpath83054_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83013_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83054_))
                                                    (gx#stx-source
                                                     _stx83013_)))))
                                            (_E8301783029_))
                                        (_E8301783029_)))))
                              (_E8301783029_))))
                      (_E8301783029_)))))
          (_E8301683056_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83063_)
        (let ((_rpath83065_ '#f))
          (gx#core-expand-include%__% _stx83063_ _rpath83065_))))
    (define gx#core-expand-include%
      (lambda _g84138_
        (let ((_g84137_ (##length _g84138_)))
          (cond ((##fx= _g84137_ 1)
                 (apply (lambda (_stx83063_)
                          (gx#core-expand-include%__0 _stx83063_))
                        _g84138_))
                ((##fx= _g84137_ 2)
                 (apply (lambda (_stx83067_ _rpath83068_)
                          (gx#core-expand-include%__% _stx83067_ _rpath83068_))
                        _g84138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84138_))))))
    (define gx#core-apply-expander__%
      (lambda (_K82982_ _stx82983_ _method82984_)
        (if (procedure? _K82982_)
            (let ((_$e82986_ (gx#stx-source _stx82983_)))
              (if _$e82986_
                  ((lambda (_g8298882990_)
                     (gx#stx-wrap-source (_K82982_ _stx82983_) _g8298882990_))
                   _$e82986_)
                  (_K82982_ _stx82983_)))
            (let ((_$e82993_ (bound-method-ref _K82982_ _method82984_)))
              (if _$e82993_
                  ((lambda (_g8299582997_)
                     (gx#core-apply-expander__%
                      _g8299582997_
                      _stx82983_
                      _method82984_))
                   _$e82993_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx82983_
                   _method82984_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83003_ _stx83004_)
        (let ((_method83006_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83003_ _stx83004_ _method83006_))))
    (define gx#core-apply-expander
      (lambda _g84140_
        (let ((_g84139_ (##length _g84140_)))
          (cond ((##fx= _g84139_ 2)
                 (apply (lambda (_K83003_ _stx83004_)
                          (gx#core-apply-expander__0 _K83003_ _stx83004_))
                        _g84140_))
                ((##fx= _g84139_ 3)
                 (apply (lambda (_K83008_ _stx83009_ _method83010_)
                          (gx#core-apply-expander__%
                           _K83008_
                           _stx83009_
                           _method83010_))
                        _g84140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84140_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self82978_ _stx82979_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx82979_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self82831_ _stx82832_)
        (let* ((_self8283382839_ _self82831_)
               (_E8283582843_
                (lambda () (error '"No clause matching" _self8283382839_)))
               (_K8283682848_
                (lambda (_K82846_)
                  (gx#core-apply-expander__0 _K82846_ _stx82832_))))
          (if (##structure-instance-of? _self8283382839_ 'gx#core-macro::t)
              (let* ((_e8283782851_
                      (##unchecked-structure-ref
                       _self8283382839_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82854_ _e8283782851_))
                (_K8283682848_ _K82854_))
              (_E8283582843_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self82684_ _stx82685_)
        (if (gx#sealed-syntax? _stx82685_)
            _stx82685_
            (let* ((_self8268682692_ _self82684_)
                   (_E8268882696_
                    (lambda () (error '"No clause matching" _self8268682692_)))
                   (_K8268982701_
                    (lambda (_K82699_)
                      (gx#core-apply-expander__0 _K82699_ _stx82685_))))
              (if (##structure-instance-of?
                   _self8268682692_
                   'gx#core-expander::t)
                  (let* ((_e8269082704_
                          (##unchecked-structure-ref
                           _self8268682692_
                           '1
                           gx#expander::t
                           '#f))
                         (_K82707_ _e8269082704_))
                    (_K8268982701_ _K82707_))
                  (_E8268882696_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self82546_ _stx82547_ _top?82548_)
        (if (_top?82548_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self82546_ _stx82547_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx82547_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self82553_ _stx82554_)
        (let ((_top?82556_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self82553_
           _stx82554_
           _top?82556_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84142_
        (let ((_g84141_ (##length _g84142_)))
          (cond ((##fx= _g84141_ 2)
                 (apply (lambda (_self82553_ _stx82554_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self82553_
                           _stx82554_))
                        _g84142_))
                ((##fx= _g84141_ 3)
                 (apply (lambda (_self82558_ _stx82559_ _top?82560_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self82558_
                           _stx82559_
                           _top?82560_))
                        _g84142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84142_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self82420_ _stx82421_)
        (gx#top-special-form::apply-macro-expander__%
         _self82420_
         _stx82421_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82245_ _stx82246_)
        (let* ((_self8224782253_ _self82245_)
               (_E8224982257_
                (lambda () (error '"No clause matching" _self8224782253_)))
               (_K8225082290_
                (lambda (_id82260_)
                  (let* ((_e8226182268_ _stx82246_)
                         (_E8226382272_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8226182268_)))
                         (_E8226282286_
                          (lambda ()
                            (if (gx#stx-pair? _e8226182268_)
                                (let ((_e8226482276_
                                       (gx#syntax-e _e8226182268_)))
                                  (let ((_hd8226582279_ (##car _e8226482276_))
                                        (_tl8226682281_ (##cdr _e8226482276_)))
                                    (let ((_body82284_ _tl8226682281_))
                                      (if '#t
                                          (gx#core-cons _id82260_ _body82284_)
                                          (_E8226382272_)))))
                                (_E8226382272_)))))
                    (_E8226282286_)))))
          (if (##structure-instance-of?
               _self8224782253_
               'gx#rename-macro-expander::t)
              (let* ((_e8225182293_
                      (##unchecked-structure-ref
                       _self8224782253_
                       '1
                       gx#expander::t
                       '#f))
                     (_id82296_ _e8225182293_))
                (_K8225082290_ _id82296_))
              (_E8224982257_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82071_ _stx82072_ _method82073_)
        (let* ((_self8207482082_ _self82071_)
               (_E8207682086_
                (lambda () (error '"No clause matching" _self8207482082_)))
               (_K8207782093_
                (lambda (_phi82089_ _ctx82090_ _K82091_)
                  (gx#core-apply-user-macro
                   _K82091_
                   _stx82072_
                   _ctx82090_
                   _phi82089_
                   _method82073_))))
          (if (##structure-instance-of? _self8207482082_ 'gx#macro-expander::t)
              (let* ((_e8207882096_
                      (##unchecked-structure-ref
                       _self8207482082_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82099_ _e8207882096_)
                     (_e8207982101_
                      (##unchecked-structure-ref
                       _self8207482082_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx82104_ _e8207982101_)
                     (_e8208082106_
                      (##unchecked-structure-ref
                       _self8207482082_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi82109_ _e8208082106_))
                (_K8207782093_ _phi82109_ _ctx82104_ _K82099_))
              (_E8207682086_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82114_ _stx82115_)
        (let ((_method82117_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82114_
           _stx82115_
           _method82117_))))
    (define gx#core-apply-user-expander
      (lambda _g84144_
        (let ((_g84143_ (##length _g84144_)))
          (cond ((##fx= _g84143_ 2)
                 (apply (lambda (_self82114_ _stx82115_)
                          (gx#core-apply-user-expander__0
                           _self82114_
                           _stx82115_))
                        _g84144_))
                ((##fx= _g84143_ 3)
                 (apply (lambda (_self82119_ _stx82120_ _method82121_)
                          (gx#core-apply-user-expander__%
                           _self82119_
                           _stx82120_
                           _method82121_))
                        _g84144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84144_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82061_ _stx82062_ _ctx82063_ _phi82064_ _method82065_)
        (let ((_mark82067_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82063_
                _phi82064_
                _stx82062_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82061_
               (gx#stx-apply-mark _stx82062_ _mark82067_)
               _method82065_)
              _mark82067_))
           gx#current-expander-marks
           (cons _mark82067_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx81913_ _phi81914_ _ctx81915_)
        (let _lp81917_ ((_bind81919_
                         (gx#core-resolve-identifier__%
                          _stx81913_
                          _phi81914_
                          _ctx81915_)))
          (if (##structure-direct-instance-of?
               _bind81919_
               'gx#import-binding::t)
              (_lp81917_
               (##unchecked-structure-ref
                _bind81919_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind81919_
                   'gx#alias-binding::t)
                  (_lp81917_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind81919_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi81914_
                    _ctx81915_))
                  _bind81919_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx81924_)
        (let* ((_phi81926_ (gx#current-expander-phi))
               (_ctx81928_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81924_ _phi81926_ _ctx81928_))))
    (define gx#resolve-identifier__1
      (lambda (_stx81930_ _phi81931_)
        (let ((_ctx81933_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81930_ _phi81931_ _ctx81933_))))
    (define gx#resolve-identifier
      (lambda _g84146_
        (let ((_g84145_ (##length _g84146_)))
          (cond ((##fx= _g84145_ 1)
                 (apply (lambda (_stx81924_)
                          (gx#resolve-identifier__0 _stx81924_))
                        _g84146_))
                ((##fx= _g84145_ 2)
                 (apply (lambda (_stx81930_ _phi81931_)
                          (gx#resolve-identifier__1 _stx81930_ _phi81931_))
                        _g84146_))
                ((##fx= _g84145_ 3)
                 (apply (lambda (_stx81935_ _phi81936_ _ctx81937_)
                          (gx#resolve-identifier__%
                           _stx81935_
                           _phi81936_
                           _ctx81937_))
                        _g84146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84146_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx81871_ _val81872_ _rebind?81873_ _phi81874_ _ctx81875_)
        (let ((_rebind?81877_
               (if (not _rebind?81873_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?81873_) _rebind?81873_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx81871_)
           _val81872_
           _rebind?81877_
           _phi81874_
           _ctx81875_))))
    (define gx#bind-identifier!__0
      (lambda (_stx81882_ _val81883_)
        (let* ((_rebind?81885_ '#f)
               (_phi81887_ (gx#current-expander-phi))
               (_ctx81889_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81882_
           _val81883_
           _rebind?81885_
           _phi81887_
           _ctx81889_))))
    (define gx#bind-identifier!__1
      (lambda (_stx81891_ _val81892_ _rebind?81893_)
        (let* ((_phi81895_ (gx#current-expander-phi))
               (_ctx81897_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81891_
           _val81892_
           _rebind?81893_
           _phi81895_
           _ctx81897_))))
    (define gx#bind-identifier!__2
      (lambda (_stx81899_ _val81900_ _rebind?81901_ _phi81902_)
        (let ((_ctx81904_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81899_
           _val81900_
           _rebind?81901_
           _phi81902_
           _ctx81904_))))
    (define gx#bind-identifier!
      (lambda _g84148_
        (let ((_g84147_ (##length _g84148_)))
          (cond ((##fx= _g84147_ 2)
                 (apply (lambda (_stx81882_ _val81883_)
                          (gx#bind-identifier!__0 _stx81882_ _val81883_))
                        _g84148_))
                ((##fx= _g84147_ 3)
                 (apply (lambda (_stx81891_ _val81892_ _rebind?81893_)
                          (gx#bind-identifier!__1
                           _stx81891_
                           _val81892_
                           _rebind?81893_))
                        _g84148_))
                ((##fx= _g84147_ 4)
                 (apply (lambda (_stx81899_
                                 _val81900_
                                 _rebind?81901_
                                 _phi81902_)
                          (gx#bind-identifier!__2
                           _stx81899_
                           _val81900_
                           _rebind?81901_
                           _phi81902_))
                        _g84148_))
                ((##fx= _g84147_ 5)
                 (apply (lambda (_stx81906_
                                 _val81907_
                                 _rebind?81908_
                                 _phi81909_
                                 _ctx81910_)
                          (gx#bind-identifier!__%
                           _stx81906_
                           _val81907_
                           _rebind?81908_
                           _phi81909_
                           _ctx81910_))
                        _g84148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84148_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx81843_ _phi81844_ _ctx81845_)
        (let _lp81847_ ((_e81849_ _stx81843_)
                        (_marks81850_ (gx#current-expander-marks)))
          (if (symbol? _e81849_)
              (gx#core-resolve-binding
               _e81849_
               _phi81844_
               _phi81844_
               _ctx81845_
               (reverse _marks81850_))
              (if (gx#identifier-quote? _e81849_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e81849_ '1 gx#AST::t '#f)
                   _phi81844_
                   '0
                   (##unchecked-structure-ref
                    _e81849_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e81849_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e81849_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e81849_ '1 gx#AST::t '#f)
                       _phi81844_
                       _phi81844_
                       _ctx81845_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81849_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81850_))
                      (if (##structure-direct-instance-of?
                           _e81849_
                           'gx#syntax-wrap::t)
                          (_lp81847_
                           (##unchecked-structure-ref
                            _e81849_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e81849_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks81850_))
                          (if (##structure-instance-of?
                               _e81849_
                               'gerbil#AST::t)
                              (_lp81847_
                               (##unchecked-structure-ref
                                _e81849_
                                '1
                                gx#AST::t
                                '#f)
                               _marks81850_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx81843_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx81855_)
        (let* ((_phi81857_ (gx#current-expander-phi))
               (_ctx81859_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81855_ _phi81857_ _ctx81859_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx81861_ _phi81862_)
        (let ((_ctx81864_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81861_ _phi81862_ _ctx81864_))))
    (define gx#core-resolve-identifier
      (lambda _g84150_
        (let ((_g84149_ (##length _g84150_)))
          (cond ((##fx= _g84149_ 1)
                 (apply (lambda (_stx81855_)
                          (gx#core-resolve-identifier__0 _stx81855_))
                        _g84150_))
                ((##fx= _g84149_ 2)
                 (apply (lambda (_stx81861_ _phi81862_)
                          (gx#core-resolve-identifier__1
                           _stx81861_
                           _phi81862_))
                        _g84150_))
                ((##fx= _g84149_ 3)
                 (apply (lambda (_stx81866_ _phi81867_ _ctx81868_)
                          (gx#core-resolve-identifier__%
                           _stx81866_
                           _phi81867_
                           _ctx81868_))
                        _g84150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84150_))))))
    (define gx#core-resolve-binding
      (lambda (_id81756_ _phi81757_ _src-phi81758_ _ctx81759_ _marks81760_)
        (letrec ((_resolve81762_
                  (lambda (_ctx81830_ _src-phi81831_ _key81832_)
                    (let _lp81834_ ((_ctx81836_
                                     (gx#core-context-shift
                                      _ctx81830_
                                      _phi81757_))
                                    (_dphi81837_
                                     (fx- _phi81757_ _src-phi81831_)))
                      (let ((_$e81839_
                             (gx#core-context-resolve _ctx81836_ _key81832_)))
                        (if _$e81839_
                            (values _$e81839_)
                            (if (fxzero? _dphi81837_)
                                '#f
                                (if (fxpositive? _dphi81837_)
                                    (_lp81834_
                                     (gx#core-context-shift _ctx81836_ '-1)
                                     (fx- _dphi81837_ '1))
                                    (_lp81834_
                                     (gx#core-context-shift _ctx81836_ '1)
                                     (fx+ _dphi81837_ '1))))))))))
          (let _lp81764_ ((_ctx81766_ _ctx81759_)
                          (_src-phi81767_ _src-phi81758_)
                          (_rest81768_ _marks81760_))
            (let* ((_rest8176981777_ _rest81768_)
                   (_else8177181785_
                    (lambda ()
                      (_resolve81762_ _ctx81766_ _src-phi81767_ _id81756_)))
                   (_K8177381818_
                    (lambda (_rest81788_ _hd81789_)
                      (let* ((_hd8179081796_ _hd81789_)
                             (_E8179281800_
                              (lambda ()
                                (error '"No clause matching" _hd8179081796_)))
                             (_K8179381810_
                              (lambda (_subst81803_)
                                (let ((_$e81807_
                                       (let ((_key81805_
                                              (if _subst81803_
                                                  (hash-get
                                                   _subst81803_
                                                   _id81756_)
                                                  '#f)))
                                         (if _key81805_
                                             (_resolve81762_
                                              _ctx81766_
                                              _src-phi81767_
                                              _key81805_)
                                             '#f))))
                                  (if _$e81807_
                                      _$e81807_
                                      (_lp81764_
                                       (##unchecked-structure-ref
                                        _hd81789_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd81789_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest81788_))))))
                        (if (##structure-instance-of?
                             _hd8179081796_
                             'gx#expander-mark::t)
                            (let* ((_e8179481813_
                                    (##unchecked-structure-ref
                                     _hd8179081796_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst81816_ _e8179481813_))
                              (_K8179381810_ _subst81816_))
                            (_E8179281800_))))))
              (if (##pair? _rest8176981777_)
                  (let ((_hd8177481821_ (##car _rest8176981777_))
                        (_tl8177581823_ (##cdr _rest8176981777_)))
                    (let* ((_hd81826_ _hd8177481821_)
                           (_rest81828_ _tl8177581823_))
                      (_K8177381818_ _rest81828_ _hd81826_)))
                  (_else8177181785_)))))))
    (define gx#core-bind!__%
      (lambda (_key81632_ _val81633_ _rebind?81634_ _phi81635_ _ctx81636_)
        (letrec ((_update-binding81638_
                  (lambda (_xval81709_)
                    (if (or (_rebind?81634_ _ctx81636_ _xval81709_ _val81633_)
                            (and (##structure-direct-instance-of?
                                  _xval81709_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval81709_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val81633_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val81633_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval81709_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val81633_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val81633_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval81709_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val81633_
                        (if (and (##structure-direct-instance-of?
                                  _val81633_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val81633_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval81709_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val81633_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval81709_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval81709_
                            (if (and (##structure-direct-instance-of?
                                      _val81633_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval81709_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key81632_
                                 (cons (##unchecked-structure-ref
                                        _val81633_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val81633_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval81709_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval81709_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval81709_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval81709_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key81632_
                                 _val81633_
                                 _xval81709_))))))
                 (_gensubst81639_
                  (lambda (_subst81704_ _id81705_)
                    (let ((_eid81707_
                           (gensym (if (uninterned-symbol? _id81705_)
                                       '%
                                       _id81705_))))
                      (hash-put! _subst81704_ _id81705_ _eid81707_)
                      _eid81707_)))
                 (_subst!81640_
                  (lambda (_key81642_)
                    (let* ((_key8164381651_ _key81642_)
                           (_else8164581659_ (lambda () _key81642_))
                           (_K8164781692_
                            (lambda (_mark81662_ _id81663_)
                              (let* ((_mark8166481670_ _mark81662_)
                                     (_E8166681674_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8166481670_)))
                                     (_K8166781684_
                                      (lambda (_subst81677_)
                                        (if (not _subst81677_)
                                            (let ((_subst81679_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark81662_
                                               _subst81679_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst81639_
                                               _subst81679_
                                               _id81663_))
                                            (let ((_$e81681_
                                                   (hash-get
                                                    _subst81677_
                                                    _id81663_)))
                                              (if _$e81681_
                                                  (values _$e81681_)
                                                  (_gensubst81639_
                                                   _subst81677_
                                                   _id81663_)))))))
                                (if (##structure-instance-of?
                                     _mark8166481670_
                                     'gx#expander-mark::t)
                                    (let* ((_e8166881687_
                                            (##unchecked-structure-ref
                                             _mark8166481670_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst81690_ _e8166881687_))
                                      (_K8166781684_ _subst81690_))
                                    (_E8166681674_))))))
                      (if (##pair? _key8164381651_)
                          (let ((_hd8164881695_ (##car _key8164381651_))
                                (_tl8164981697_ (##cdr _key8164381651_)))
                            (let* ((_id81700_ _hd8164881695_)
                                   (_mark81702_ _tl8164981697_))
                              (_K8164781692_ _mark81702_ _id81700_)))
                          (_else8164581659_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx81636_ _phi81635_)
           (_subst!81640_ _key81632_)
           _val81633_
           _update-binding81638_))))
    (define gx#core-bind!__0
      (lambda (_key81726_ _val81727_)
        (let* ((_rebind?81729_ false)
               (_phi81731_ (gx#current-expander-phi))
               (_ctx81733_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81726_
           _val81727_
           _rebind?81729_
           _phi81731_
           _ctx81733_))))
    (define gx#core-bind!__1
      (lambda (_key81735_ _val81736_ _rebind?81737_)
        (let* ((_phi81739_ (gx#current-expander-phi))
               (_ctx81741_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81735_
           _val81736_
           _rebind?81737_
           _phi81739_
           _ctx81741_))))
    (define gx#core-bind!__2
      (lambda (_key81743_ _val81744_ _rebind?81745_ _phi81746_)
        (let ((_ctx81748_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81743_
           _val81744_
           _rebind?81745_
           _phi81746_
           _ctx81748_))))
    (define gx#core-bind!
      (lambda _g84152_
        (let ((_g84151_ (##length _g84152_)))
          (cond ((##fx= _g84151_ 2)
                 (apply (lambda (_key81726_ _val81727_)
                          (gx#core-bind!__0 _key81726_ _val81727_))
                        _g84152_))
                ((##fx= _g84151_ 3)
                 (apply (lambda (_key81735_ _val81736_ _rebind?81737_)
                          (gx#core-bind!__1
                           _key81735_
                           _val81736_
                           _rebind?81737_))
                        _g84152_))
                ((##fx= _g84151_ 4)
                 (apply (lambda (_key81743_
                                 _val81744_
                                 _rebind?81745_
                                 _phi81746_)
                          (gx#core-bind!__2
                           _key81743_
                           _val81744_
                           _rebind?81745_
                           _phi81746_))
                        _g84152_))
                ((##fx= _g84151_ 5)
                 (apply (lambda (_key81750_
                                 _val81751_
                                 _rebind?81752_
                                 _phi81753_
                                 _ctx81754_)
                          (gx#core-bind!__%
                           _key81750_
                           _val81751_
                           _rebind?81752_
                           _phi81753_
                           _ctx81754_))
                        _g84152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84152_))))))
    (define gx#core-identifier-key
      (lambda (_stx81566_)
        (if (symbol? _stx81566_)
            (let* ((_g8156781575_ (gx#current-expander-marks))
                   (_else8156981583_ (lambda () _stx81566_))
                   (_K8157181588_
                    (lambda (_hd81586_) (cons _stx81566_ _hd81586_))))
              (if (##pair? _g8156781575_)
                  (let* ((_hd8157281591_ (##car _g8156781575_))
                         (_hd81594_ _hd8157281591_))
                    (_K8157181588_ _hd81594_))
                  (_else8156981583_)))
            (if (gx#identifier? _stx81566_)
                (let* ((_id81596_ (gx#syntax-local-unwrap _stx81566_))
                       (_eid81598_ (gx#stx-e _id81596_))
                       (_marks81600_ (gx#stx-identifier-marks* _id81596_)))
                  (let* ((_marks8160281610_ _marks81600_)
                         (_else8160481618_ (lambda () _eid81598_))
                         (_K8160681623_
                          (lambda (_hd81621_) (cons _eid81598_ _hd81621_))))
                    (if (##pair? _marks8160281610_)
                        (let* ((_hd8160781626_ (##car _marks8160281610_))
                               (_hd81629_ _hd8160781626_))
                          (_K8160681623_ _hd81629_))
                        (_else8160481618_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx81566_)))))
    (define gx#core-context-shift
      (lambda (_ctx81511_ _phi81512_)
        (letrec ((_make-phi81514_
                  (lambda (_super81564_)
                    (let ((__obj84123
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84123
                       (gensym 'phi)
                       _super81564_)
                      __obj84123)))
                 (_make-phi/up81515_
                  (lambda (_ctx81559_ _super81560_)
                    (let ((_ctx+181562_ (_make-phi81514_ _super81560_)))
                      (##unchecked-structure-set!
                       _ctx81559_
                       _ctx+181562_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+181562_
                       _ctx81559_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+181562_)))
                 (_make-phi/down81516_
                  (lambda (_ctx81554_ _super81555_)
                    (let ((_ctx-181557_ (_make-phi81514_ _super81555_)))
                      (##unchecked-structure-set!
                       _ctx-181557_
                       _ctx81554_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx81554_
                       _ctx-181557_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-181557_)))
                 (_shift81517_
                  (lambda (_ctx81538_
                           _delta81539_
                           _make-delta-context81540_
                           _phi81541_
                           _K81542_)
                    (let ((_$e81544_
                           (##unchecked-structure-ref
                            _ctx81538_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e81544_
                          ((lambda (_super81547_)
                             (let* ((_super81549_
                                     (_K81542_ _super81547_ _delta81539_))
                                    (_ctx+d81551_
                                     (_make-delta-context81540_
                                      _ctx81538_
                                      _super81549_)))
                               (_K81542_
                                _ctx+d81551_
                                (fx- _phi81541_ _delta81539_))))
                           _$e81544_)
                          (error '"Bad context" _ctx81538_))))))
          (let _K81519_ ((_ctx81521_ _ctx81511_) (_phi81522_ _phi81512_))
            (if (fxzero? _phi81522_)
                _ctx81521_
                (if (fx> (##vector-length _ctx81521_) '3)
                    (if (fxpositive? _phi81522_)
                        (let ((_$e81524_
                               (##unchecked-structure-ref
                                _ctx81521_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e81524_
                              ((lambda (_g8152681528_)
                                 (_K81519_ _g8152681528_ (fx- _phi81522_ '1)))
                               _$e81524_)
                              (_shift81517_
                               _ctx81521_
                               '1
                               _make-phi/up81515_
                               _phi81522_
                               _K81519_)))
                        (let ((_$e81531_
                               (##unchecked-structure-ref
                                _ctx81521_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e81531_
                              ((lambda (_g8153381535_)
                                 (_K81519_ _g8153381535_ (fx+ _phi81522_ '1)))
                               _$e81531_)
                              (_shift81517_
                               _ctx81521_
                               '-1
                               _make-phi/down81516_
                               _phi81522_
                               _K81519_))))
                    _ctx81521_))))))
    (define gx#core-context-get
      (lambda (_ctx81508_ _key81509_)
        (hash-get
         (##unchecked-structure-ref _ctx81508_ '2 gx#expander-context::t '#f)
         _key81509_)))
    (define gx#core-context-put!
      (lambda (_ctx81504_ _key81505_ _val81506_)
        (hash-put!
         (##unchecked-structure-ref _ctx81504_ '2 gx#expander-context::t '#f)
         _key81505_
         _val81506_)))
    (define gx#core-context-resolve
      (lambda (_ctx81491_ _key81492_)
        (let _lp81494_ ((_ctx81496_ _ctx81491_))
          (let ((_$e81498_ (gx#core-context-get _ctx81496_ _key81492_)))
            (if _$e81498_
                (values _$e81498_)
                (let ((_$e81501_
                       (if (fx> (##vector-length _ctx81496_) '3)
                           (##unchecked-structure-ref
                            _ctx81496_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e81501_ (_lp81494_ _$e81501_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx81481_ _key81482_ _val81483_ _rebind81484_)
        (let ((_$e81486_ (gx#core-context-get _ctx81481_ _key81482_)))
          (if _$e81486_
              ((lambda (_xval81489_)
                 (gx#core-context-put!
                  _ctx81481_
                  _key81482_
                  (_rebind81484_ _xval81489_)))
               _$e81486_)
              (gx#core-context-put! _ctx81481_ _key81482_ _val81483_)))))
    (define gx#core-context-top__%
      (lambda (_ctx81459_ _stop?81460_)
        (let _lp81462_ ((_ctx81464_ _ctx81459_))
          (if (_stop?81460_ _ctx81464_)
              _ctx81464_
              (if (##structure-instance-of? _ctx81464_ 'gx#context-phi::t)
                  (_lp81462_
                   (##unchecked-structure-ref
                    _ctx81464_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx81470_ (gx#current-expander-context))
               (_stop?81472_ gx#top-context?))
          (gx#core-context-top__% _ctx81470_ _stop?81472_))))
    (define gx#core-context-top__1
      (lambda (_ctx81474_)
        (let ((_stop?81476_ gx#top-context?))
          (gx#core-context-top__% _ctx81474_ _stop?81476_))))
    (define gx#core-context-top
      (lambda _g84154_
        (let ((_g84153_ (##length _g84154_)))
          (cond ((##fx= _g84153_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84154_))
                ((##fx= _g84153_ 1)
                 (apply (lambda (_ctx81474_)
                          (gx#core-context-top__1 _ctx81474_))
                        _g84154_))
                ((##fx= _g84153_ 2)
                 (apply (lambda (_ctx81478_ _stop?81479_)
                          (gx#core-context-top__% _ctx81478_ _stop?81479_))
                        _g84154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84154_))))))
    (define gx#core-context-root__%
      (lambda (_ctx81444_)
        (let _lp81446_ ((_ctx81448_ _ctx81444_))
          (if (##structure-instance-of? _ctx81448_ 'gx#context-phi::t)
              (_lp81446_
               (##unchecked-structure-ref _ctx81448_ '3 gx#phi-context::t '#f))
              _ctx81448_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx81454_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx81454_))))
    (define gx#core-context-root
      (lambda _g84156_
        (let ((_g84155_ (##length _g84156_)))
          (cond ((##fx= _g84155_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84156_))
                ((##fx= _g84155_ 1)
                 (apply (lambda (_ctx81456_)
                          (gx#core-context-root__% _ctx81456_))
                        _g84156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84156_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx81425_ . __8142281426_)
        (let ((_$e81429_ (gx#current-expander-allow-rebind?)))
          (if _$e81429_
              _$e81429_
              (if (##structure-instance-of? _ctx81425_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx81425_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx81425_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx81436_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx81436_))))
    (define gx#core-context-rebind?
      (lambda _g84158_
        (let ((_g84157_ (##length _g84158_)))
          (cond ((##fx= _g84157_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84158_))
                ((##fx= _g84157_ 1)
                 (apply (lambda (_ctx81438_)
                          (gx#core-context-rebind?__% _ctx81438_))
                        _g84158_))
                ((##fx>= _g84157_ 1)
                 (apply gx#core-context-rebind?__% _g84158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84158_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx81408_)
        (let ((_$e81410_ (gx#core-context-top__1 _ctx81408_)))
          (if _$e81410_
              ((lambda (_ctx81413_)
                 (if (##structure-instance-of?
                      _ctx81413_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx81413_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e81410_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx81419_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx81419_))))
    (define gx#core-context-namespace
      (lambda _g84160_
        (let ((_g84159_ (##length _g84160_)))
          (cond ((##fx= _g84159_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84160_))
                ((##fx= _g84159_ 1)
                 (apply (lambda (_ctx81421_)
                          (gx#core-context-namespace__% _ctx81421_))
                        _g84160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84160_))))))
    (define gx#expander-binding?__%
      (lambda (_bind81394_ _is?81395_)
        (if (##structure-direct-instance-of? _bind81394_ 'gx#syntax-binding::t)
            (_is?81395_
             (##unchecked-structure-ref
              _bind81394_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind81400_)
        (let ((_is?81402_ gx#expander?))
          (gx#expander-binding?__% _bind81400_ _is?81402_))))
    (define gx#expander-binding?
      (lambda _g84162_
        (let ((_g84161_ (##length _g84162_)))
          (cond ((##fx= _g84161_ 1)
                 (apply (lambda (_bind81400_)
                          (gx#expander-binding?__0 _bind81400_))
                        _g84162_))
                ((##fx= _g84161_ 2)
                 (apply (lambda (_bind81404_ _is?81405_)
                          (gx#expander-binding?__% _bind81404_ _is?81405_))
                        _g84162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84162_))))))
    (define gx#core-expander-binding?
      (lambda (_bind81391_)
        (gx#expander-binding?__% _bind81391_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind81389_)
        (gx#expander-binding?__% _bind81389_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind81383_)
        (letrec ((_direct-special-form?81385_
                  (lambda (_obj81387_)
                    (##structure-direct-instance-of?
                     _obj81387_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind81383_ _direct-special-form?81385_))))
    (define gx#special-form-binding?
      (lambda (_bind81381_)
        (gx#expander-binding?__% _bind81381_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind81372_)
        (letrec ((_feature?81374_
                  (lambda (_e81376_)
                    (let ((_$e81378_
                           (##structure-instance-of?
                            _e81376_
                            'gx#feature-expander::t)))
                      (if _$e81378_
                          _$e81378_
                          (##structure-instance-of?
                           _e81376_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind81372_ _feature?81374_))))
    (define gx#private-feature-binding?
      (lambda (_bind81370_)
        (gx#expander-binding?__% _bind81370_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id81357_ _bound?81358_)
        (if (gx#identifier? _id81357_)
            (_bound?81358_ (gx#resolve-identifier__0 _id81357_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id81363_)
        (let ((_bound?81365_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id81363_ _bound?81365_))))
    (define gx#core-bound-identifier?
      (lambda _g84164_
        (let ((_g84163_ (##length _g84164_)))
          (cond ((##fx= _g84163_ 1)
                 (apply (lambda (_id81363_)
                          (gx#core-bound-identifier?__0 _id81363_))
                        _g84164_))
                ((##fx= _g84163_ 2)
                 (apply (lambda (_id81367_ _bound?81368_)
                          (gx#core-bound-identifier?__%
                           _id81367_
                           _bound?81368_))
                        _g84164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84164_))))))
    (define gx#core-identifier=?
      (lambda (_x81347_ _y81348_)
        (letrec ((_y=?81350_
                  (lambda (_xid81354_)
                    ((if (list? _y81348_) memq eq?) _xid81354_ _y81348_))))
          (let ((_bind81352_ (gx#resolve-identifier__0 _x81347_)))
            (if (##structure-instance-of? _bind81352_ 'gx#binding::t)
                (_y=?81350_
                 (##unchecked-structure-ref _bind81352_ '1 gx#binding::t '#f))
                (_y=?81350_ (gx#stx-e _x81347_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e81345_)
        (if (interned-symbol? _e81345_)
            (string-index__0 (symbol->string _e81345_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81300_ _src81301_ _ctx81302_ _marks81303_)
        (if (##structure? _stx81300_)
            (let ((_$e81305_ (gx#sealed-syntax-unwrap _stx81300_)))
              (if _$e81305_
                  (values _$e81305_)
                  (if (gx#identifier? _stx81300_)
                      (let ((_id81308_
                             (gx#stx-unwrap__% _stx81300_ _marks81303_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81308_ '1 gx#AST::t '#f)
                         (let ((_$e81310_
                                (##unchecked-structure-ref
                                 _id81308_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e81310_ _$e81310_ _src81301_))
                         _ctx81302_
                         (##unchecked-structure-ref
                          _id81308_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81300_)
                       (let ((_$e81313_ (gx#stx-source _stx81300_)))
                         (if _$e81313_ _$e81313_ _src81301_))
                       _ctx81302_
                       (reverse _marks81303_)))))
            (##structure
             gx#syntax-quote::t
             _stx81300_
             _src81301_
             _ctx81302_
             (reverse _marks81303_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81319_)
        (let* ((_src81321_ '#f)
               (_ctx81323_ (gx#current-expander-context))
               (_marks81325_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81319_
           _src81321_
           _ctx81323_
           _marks81325_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81327_ _src81328_)
        (let* ((_ctx81330_ (gx#current-expander-context))
               (_marks81332_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81327_
           _src81328_
           _ctx81330_
           _marks81332_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81334_ _src81335_ _ctx81336_)
        (let ((_marks81338_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81334_
           _src81335_
           _ctx81336_
           _marks81338_))))
    (define gx#core-quote-syntax
      (lambda _g84166_
        (let ((_g84165_ (##length _g84166_)))
          (cond ((##fx= _g84165_ 1)
                 (apply (lambda (_stx81319_)
                          (gx#core-quote-syntax__0 _stx81319_))
                        _g84166_))
                ((##fx= _g84165_ 2)
                 (apply (lambda (_stx81327_ _src81328_)
                          (gx#core-quote-syntax__1 _stx81327_ _src81328_))
                        _g84166_))
                ((##fx= _g84165_ 3)
                 (apply (lambda (_stx81334_ _src81335_ _ctx81336_)
                          (gx#core-quote-syntax__2
                           _stx81334_
                           _src81335_
                           _ctx81336_))
                        _g84166_))
                ((##fx= _g84165_ 4)
                 (apply (lambda (_stx81340_ _src81341_ _ctx81342_ _marks81343_)
                          (gx#core-quote-syntax__%
                           _stx81340_
                           _src81341_
                           _ctx81342_
                           _marks81343_))
                        _g84166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84166_))))))
    (define gx#core-cons
      (lambda (_hd81296_ _tl81297_)
        (cons (gx#core-quote-syntax__0 _hd81296_) _tl81297_)))
    (define gx#core-list
      (lambda (_hd81293_ . _rest81294_)
        (cons (gx#core-quote-syntax__0 _hd81293_) _rest81294_)))
    (define gx#core-cons*
      (lambda (_hd81290_ . _rest81291_)
        (apply cons* (gx#core-quote-syntax__0 _hd81290_) _rest81291_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81264_ _rel81265_)
        (let ((_path81277_ (gx#stx-e _stx-path81264_))
              (_reldir81278_
               (let _lp81267_ ((_relsrc81269_
                                (let ((_$e81274_
                                       (gx#stx-source _stx-path81264_)))
                                  (if _$e81274_ _$e81274_ _rel81265_))))
                 (if (##structure-instance-of? _relsrc81269_ 'gerbil#AST::t)
                     (_lp81267_
                      (let ((_$e81271_ (gx#stx-source _relsrc81269_)))
                        (if _$e81271_ _$e81271_ (gx#stx-e _relsrc81269_))))
                     (if (source-location-path? _relsrc81269_)
                         (path-directory (source-location-path _relsrc81269_))
                         (if (string? _relsrc81269_)
                             (path-directory _relsrc81269_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81277_ (path-normalize _reldir81278_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81283_)
        (let ((_rel81285_ '#f))
          (gx#core-resolve-path__% _stx-path81283_ _rel81285_))))
    (define gx#core-resolve-path
      (lambda _g84168_
        (let ((_g84167_ (##length _g84168_)))
          (cond ((##fx= _g84167_ 1)
                 (apply (lambda (_stx-path81283_)
                          (gx#core-resolve-path__0 _stx-path81283_))
                        _g84168_))
                ((##fx= _g84167_ 2)
                 (apply (lambda (_stx-path81287_ _rel81288_)
                          (gx#core-resolve-path__% _stx-path81287_ _rel81288_))
                        _g84168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84168_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81220_ _ctx81221_)
        (let* ((_repr8122281229_ _repr81220_)
               (_E8122481233_
                (lambda () (error '"No clause matching" _repr8122281229_)))
               (_K8122581241_
                (lambda (_subs81236_ _phi81237_)
                  (let ((_subst81239_
                         (if (not (null? _subs81236_))
                             (list->hash-table-eq _subs81236_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81239_
                     _ctx81221_
                     _phi81237_
                     '#f)))))
          (if (##pair? _repr8122281229_)
              (let ((_hd8122681244_ (##car _repr8122281229_))
                    (_tl8122781246_ (##cdr _repr8122281229_)))
                (let* ((_phi81249_ _hd8122681244_)
                       (_subs81251_ _tl8122781246_))
                  (_K8122581241_ _subs81251_ _phi81249_)))
              (_E8122481233_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81256_)
        (let ((_ctx81258_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81256_ _ctx81258_))))
    (define gx#core-deserialize-mark
      (lambda _g84170_
        (let ((_g84169_ (##length _g84170_)))
          (cond ((##fx= _g84169_ 1)
                 (apply (lambda (_repr81256_)
                          (gx#core-deserialize-mark__0 _repr81256_))
                        _g84170_))
                ((##fx= _g84169_ 2)
                 (apply (lambda (_repr81260_ _ctx81261_)
                          (gx#core-deserialize-mark__% _repr81260_ _ctx81261_))
                        _g84170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84170_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81217_)
        (gx#stx-rewrap _stx81217_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81215_)
        (gx#stx-unwrap__% _stx81215_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81185_)
        (let* ((_g8118681194_ (gx#current-expander-marks))
               (_else8118881202_ (lambda () _stx81185_))
               (_K8119081207_
                (lambda (_hd81205_) (gx#stx-apply-mark _stx81185_ _hd81205_))))
          (if (##pair? _g8118681194_)
              (let* ((_hd8119181210_ (##car _g8118681194_))
                     (_hd81213_ _hd8119181210_))
                (_K8119081207_ _hd81213_))
              (_else8118881202_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81170_ _E81171_)
        (let ((_bind81173_ (gx#resolve-identifier__0 _stx81170_)))
          (if (##structure-direct-instance-of?
               _bind81173_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind81173_
               '4
               gx#syntax-binding::t
               '#f)
              (_E81171_ _stx81170_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81178_)
        (let ((_E81180_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81178_ _E81180_))))
    (define gx#syntax-local-e
      (lambda _g84172_
        (let ((_g84171_ (##length _g84172_)))
          (cond ((##fx= _g84171_ 1)
                 (apply (lambda (_stx81178_) (gx#syntax-local-e__0 _stx81178_))
                        _g84172_))
                ((##fx= _g84171_ 2)
                 (apply (lambda (_stx81182_ _E81183_)
                          (gx#syntax-local-e__% _stx81182_ _E81183_))
                        _g84172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84172_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81154_ _E81155_)
        (let ((_e81157_ (gx#syntax-local-e__% _stx81154_ _E81155_)))
          (if (##structure-instance-of? _e81157_ 'gx#expander::t)
              (##structure-ref _e81157_ '1 gx#expander::t '#f)
              _e81157_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81162_)
        (let ((_E81164_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81162_ _E81164_))))
    (define gx#syntax-local-value
      (lambda _g84174_
        (let ((_g84173_ (##length _g84174_)))
          (cond ((##fx= _g84173_ 1)
                 (apply (lambda (_stx81162_)
                          (gx#syntax-local-value__0 _stx81162_))
                        _g84174_))
                ((##fx= _g84173_ 2)
                 (apply (lambda (_stx81166_ _E81167_)
                          (gx#syntax-local-value__% _stx81166_ _E81167_))
                        _g84174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84174_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81151_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81151_)))))
