(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710487492)
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
      (lambda _$args84288_
        (apply make-instance gx#expander-context::t _$args84288_)))
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
      (lambda _$args84285_
        (apply make-instance gx#root-context::t _$args84285_)))
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
      (lambda _$args84282_
        (apply make-instance gx#phi-context::t _$args84282_)))
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
      (lambda _$args84279_
        (apply make-instance gx#top-context::t _$args84279_)))
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
      (lambda _$args84276_
        (apply make-instance gx#module-context::t _$args84276_)))
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
      (lambda _$args84273_
        (apply make-instance gx#prelude-context::t _$args84273_)))
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
      (lambda _$args84270_
        (apply make-instance gx#local-context::t _$args84270_)))
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
      (lambda (_self84254_ _id84255_ _super84256_)
        (if (##fx< '3 (##structure-length _self84254_))
            (begin
              (##unchecked-structure-set!
               _self84254_
               _id84255_
               '1
               (##structure-type _self84254_)
               '#f)
              (##unchecked-structure-set!
               _self84254_
               (make-hash-table-eq)
               '2
               (##structure-type _self84254_)
               '#f)
              (##unchecked-structure-set!
               _self84254_
               _super84256_
               '3
               (##structure-type _self84254_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84254_
                   '3
                   (##vector-length _self84254_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84261_ _id84262_)
        (let ((_super84264_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84261_ _id84262_ _super84264_))))
    (define gx#phi-context:::init!
      (lambda _g84331_
        (let ((_g84330_ (##length _g84331_)))
          (cond ((##fx= _g84330_ 2)
                 (apply (lambda (_self84261_ _id84262_)
                          (gx#phi-context:::init!__0 _self84261_ _id84262_))
                        _g84331_))
                ((##fx= _g84330_ 3)
                 (apply (lambda (_self84266_ _id84267_ _super84268_)
                          (gx#phi-context:::init!__%
                           _self84266_
                           _id84267_
                           _super84268_))
                        _g84331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84331_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self84118_ _super84119_)
        (if (##fx< '3 (##structure-length _self84118_))
            (begin
              (##unchecked-structure-set!
               _self84118_
               (gensym 'L)
               '1
               (##structure-type _self84118_)
               '#f)
              (##unchecked-structure-set!
               _self84118_
               (make-hash-table-eq)
               '2
               (##structure-type _self84118_)
               '#f)
              (##unchecked-structure-set!
               _self84118_
               _super84119_
               '3
               (##structure-type _self84118_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84118_
                   '3
                   (##vector-length _self84118_)))))
    (define gx#local-context:::init!__0
      (lambda (_self84124_)
        (let ((_super84126_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self84124_ _super84126_))))
    (define gx#local-context:::init!
      (lambda _g84333_
        (let ((_g84332_ (##length _g84333_)))
          (cond ((##fx= _g84332_ 1)
                 (apply (lambda (_self84124_)
                          (gx#local-context:::init!__0 _self84124_))
                        _g84333_))
                ((##fx= _g84332_ 2)
                 (apply (lambda (_self84128_ _super84129_)
                          (gx#local-context:::init!__%
                           _self84128_
                           _super84129_))
                        _g84333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84333_))))))
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
      (lambda _$args83992_ (apply make-instance gx#binding::t _$args83992_)))
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
      (lambda _$args83989_
        (apply make-instance gx#runtime-binding::t _$args83989_)))
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
      (lambda _$args83986_
        (apply make-instance gx#local-binding::t _$args83986_)))
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
      (lambda _$args83983_
        (apply make-instance gx#top-binding::t _$args83983_)))
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
      (lambda _$args83980_
        (apply make-instance gx#module-binding::t _$args83980_)))
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
      (lambda _$args83977_
        (apply make-instance gx#extern-binding::t _$args83977_)))
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
      (lambda _$args83974_
        (apply make-instance gx#syntax-binding::t _$args83974_)))
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
      (lambda _$args83971_
        (apply make-instance gx#import-binding::t _$args83971_)))
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
      (lambda _$args83968_
        (apply make-instance gx#alias-binding::t _$args83968_)))
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
      (lambda _$args83965_ (apply make-instance gx#expander::t _$args83965_)))
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
      (lambda _$args83962_
        (apply make-instance gx#core-expander::t _$args83962_)))
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
      (lambda _$args83959_
        (apply make-instance gx#expression-form::t _$args83959_)))
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
      (lambda _$args83956_
        (apply make-instance gx#special-form::t _$args83956_)))
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
      (lambda _$args83953_
        (apply make-instance gx#definition-form::t _$args83953_)))
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
      (lambda _$args83950_
        (apply make-instance gx#top-special-form::t _$args83950_)))
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
      (lambda _$args83947_
        (apply make-instance gx#module-special-form::t _$args83947_)))
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
      (lambda _$args83944_
        (apply make-instance gx#feature-expander::t _$args83944_)))
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
      (lambda _$args83941_
        (apply make-instance gx#private-feature-expander::t _$args83941_)))
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
      (lambda _$args83938_
        (apply make-instance gx#reserved-expander::t _$args83938_)))
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
      (lambda _$args83935_
        (apply make-instance gx#macro-expander::t _$args83935_)))
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
      (lambda _$args83932_
        (apply make-instance gx#rename-macro-expander::t _$args83932_)))
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
      (lambda _$args83929_
        (apply make-instance gx#user-expander::t _$args83929_)))
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
      (lambda _$args83926_
        (apply make-instance gx#expander-mark::t _$args83926_)))
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
      (lambda (_ctx83911_ _message83912_ _stx83913_ . _details83914_)
        (let ((_ctx83924_
               (let ((_$e83916_ _ctx83911_))
                 (if _$e83916_
                     _$e83916_
                     (let ((_$e83919_ (gx#core-context-top__0)))
                       (if _$e83919_
                           ((lambda (_ctx83922_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx83922_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e83919_)
                           '#f))))))
          (raise (make-syntax-error
                  _message83912_
                  (cons _stx83913_ _details83914_)
                  _ctx83924_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx83898_ _expression?83899_)
        (gx#eval-syntax* (gx#core-expand__% _stx83898_ _expression?83899_))))
    (define gx#eval-syntax__0
      (lambda (_stx83904_)
        (let ((_expression?83906_ '#f))
          (gx#eval-syntax__% _stx83904_ _expression?83906_))))
    (define gx#eval-syntax
      (lambda _g84335_
        (let ((_g84334_ (##length _g84335_)))
          (cond ((##fx= _g84334_ 1)
                 (apply (lambda (_stx83904_) (gx#eval-syntax__0 _stx83904_))
                        _g84335_))
                ((##fx= _g84334_ 2)
                 (apply (lambda (_stx83908_ _expression?83909_)
                          (gx#eval-syntax__% _stx83908_ _expression?83909_))
                        _g84335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84335_))))))
    (define gx#eval-syntax*
      (lambda (_stx83895_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx83895_))))
    (define gx#core-expand__%
      (lambda (_stx83882_ _expression?83883_)
        (if _expression?83883_
            (gx#core-expand-expression _stx83882_)
            (gx#core-expand-top _stx83882_))))
    (define gx#core-expand__0
      (lambda (_stx83888_)
        (let ((_expression?83890_ '#f))
          (gx#core-expand__% _stx83888_ _expression?83890_))))
    (define gx#core-expand
      (lambda _g84337_
        (let ((_g84336_ (##length _g84337_)))
          (cond ((##fx= _g84336_ 1)
                 (apply (lambda (_stx83888_) (gx#core-expand__0 _stx83888_))
                        _g84337_))
                ((##fx= _g84336_ 2)
                 (apply (lambda (_stx83892_ _expression?83893_)
                          (gx#core-expand__% _stx83892_ _expression?83893_))
                        _g84337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84337_))))))
    (define gx#core-expand-top
      (lambda (_stx83849_)
        (let* ((_stx83851_ (gx#core-expand*__0 _stx83849_))
               (_e8385283859_ _stx83851_)
               (_E8385483863_
                (lambda () (gx#core-expand-expression _stx83851_)))
               (_E8385383877_
                (lambda ()
                  (if (gx#stx-pair? _e8385283859_)
                      (let ((_e8385583867_ (gx#syntax-e _e8385283859_)))
                        (let ((_hd8385683870_ (##car _e8385583867_))
                              (_tl8385783872_ (##cdr _e8385583867_)))
                          (let ((_form83875_ _hd8385683870_))
                            (if (gx#core-bound-identifier?__0 _form83875_)
                                _stx83851_
                                (_E8385483863_)))))
                      (_E8385483863_)))))
          (_E8385383877_))))
    (define gx#core-expand-expression
      (lambda (_stx83796_)
        (letrec ((_sealed-expression?83798_
                  (lambda (_hd83819_)
                    (if (gx#sealed-syntax? _hd83819_)
                        (let* ((_e8382083827_ _hd83819_)
                               (_E8382283831_ (lambda () '#f))
                               (_E8382183845_
                                (lambda ()
                                  (if (gx#stx-pair? _e8382083827_)
                                      (let ((_e8382383835_
                                             (gx#syntax-e _e8382083827_)))
                                        (let ((_hd8382483838_
                                               (##car _e8382383835_))
                                              (_tl8382583840_
                                               (##cdr _e8382383835_)))
                                          (let ((_form83843_ _hd8382483838_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form83843_
                                                 gx#expression-form-binding?)
                                                (_E8382283831_)))))
                                      (_E8382283831_)))))
                          (_E8382183845_))
                        '#f)))
                 (_illegal-expression83799_
                  (lambda (_hd83817_ . _g84338_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx83796_
                     _hd83817_)))
                 (_expand-e83800_
                  (lambda (_form83812_ _hd83813_)
                    (let ((_bind83815_
                           (if (##structure-instance-of?
                                _form83812_
                                'gx#binding::t)
                               _form83812_
                               (gx#resolve-identifier__0 _form83812_))))
                      (if (gx#core-expander-binding? _bind83815_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind83815_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd83813_
                            (gx#stx-source _stx83796_)))
                          (if (##structure-direct-instance-of?
                               _bind83815_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind83815_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd83813_
                                 (gx#stx-source _stx83796_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx83796_
                               _form83812_)))))))
          (let ((_hd83802_ (gx#core-expand-head _stx83796_)))
            (if (_sealed-expression?83798_ _hd83802_)
                _hd83802_
                (if (gx#stx-pair? _hd83802_)
                    (let* ((_form83804_ (gx#stx-car _hd83802_))
                           (_bind83806_
                            (if (gx#identifier? _form83804_)
                                (gx#resolve-identifier__0 _form83804_)
                                '#f)))
                      (if (or (not _bind83806_)
                              (not (gx#core-expander-binding? _bind83806_)))
                          (_expand-e83800_ '%%app (cons '%%app _hd83802_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind83806_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd83802_
                               _illegal-expression83799_)
                              (if (gx#expression-form-binding? _bind83806_)
                                  (_expand-e83800_ _bind83806_ _hd83802_)
                                  (if (gx#direct-special-form-binding?
                                       _bind83806_)
                                      (gx#core-expand-expression
                                       (_expand-e83800_ _bind83806_ _hd83802_))
                                      (_illegal-expression83799_
                                       _hd83802_))))))
                    (if (gx#core-bound-identifier?__0 _hd83802_)
                        (_illegal-expression83799_ _hd83802_)
                        (if (gx#identifier? _hd83802_)
                            (_expand-e83800_
                             '%%ref
                             (cons '%%ref (cons _hd83802_ '())))
                            (if (gx#stx-datum? _hd83802_)
                                (_expand-e83800_
                                 '%#quote
                                 (cons '%#quote (cons _hd83802_ '())))
                                (_illegal-expression83799_ _hd83802_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx83791_)
        (call-with-parameters
         (lambda ()
           (let ((_stx83794_ (gx#core-expand-expression _stx83791_)))
             (values _stx83794_ (gx#eval-syntax* _stx83794_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx83772_ _stop?83773_)
        (let _lp83775_ ((_stx83777_ _stx83772_))
          (if (_stop?83773_ _stx83777_)
              _stx83777_
              (let ((_rstx83779_ (gx#core-expand1 _stx83777_)))
                (if (eq? _stx83777_ _rstx83779_)
                    _stx83777_
                    (_lp83775_ _rstx83779_)))))))
    (define gx#core-expand*__0
      (lambda (_stx83784_)
        (let ((_stop?83786_ false))
          (gx#core-expand*__% _stx83784_ _stop?83786_))))
    (define gx#core-expand*
      (lambda _g84340_
        (let ((_g84339_ (##length _g84340_)))
          (cond ((##fx= _g84339_ 1)
                 (apply (lambda (_stx83784_) (gx#core-expand*__0 _stx83784_))
                        _g84340_))
                ((##fx= _g84339_ 2)
                 (apply (lambda (_stx83788_ _stop?83789_)
                          (gx#core-expand*__% _stx83788_ _stop?83789_))
                        _g84340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84340_))))))
    (define gx#core-expand1
      (lambda (_stx83728_)
        (letrec ((_step83730_
                  (lambda (_hd83767_)
                    (let ((_bind83769_ (gx#resolve-identifier__0 _hd83767_)))
                      (if (##structure-instance-of?
                           _bind83769_
                           'gx#runtime-binding::t)
                          _stx83728_
                          (if (##structure-direct-instance-of?
                               _bind83769_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind83769_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx83728_)
                              (if (not _bind83769_)
                                  _stx83728_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx83728_))))))))
          (let* ((_e8373183739_ _stx83728_)
                 (_E8373783743_ (lambda () _stx83728_))
                 (_E8373383749_
                  (lambda ()
                    (let ((_hd83747_ _e8373183739_))
                      (if (gx#identifier? _hd83747_)
                          (_step83730_ _hd83747_)
                          (_E8373783743_)))))
                 (_E8373283763_
                  (lambda ()
                    (if (gx#stx-pair? _e8373183739_)
                        (let ((_e8373483753_ (gx#syntax-e _e8373183739_)))
                          (let ((_hd8373583756_ (##car _e8373483753_))
                                (_tl8373683758_ (##cdr _e8373483753_)))
                            (let ((_hd83761_ _hd8373583756_))
                              (if (gx#identifier? _hd83761_)
                                  (_step83730_ _hd83761_)
                                  (_E8373383749_)))))
                        (_E8373383749_)))))
            (_E8373283763_)))))
    (define gx#core-expand-head
      (lambda (_stx83694_)
        (letrec ((_stop?83696_
                  (lambda (_stx83698_)
                    (let* ((_e8369983706_ _stx83698_)
                           (_E8370183710_ (lambda () '#f))
                           (_E8370083724_
                            (lambda ()
                              (if (gx#stx-pair? _e8369983706_)
                                  (let ((_e8370283714_
                                         (gx#syntax-e _e8369983706_)))
                                    (let ((_hd8370383717_
                                           (##car _e8370283714_))
                                          (_tl8370483719_
                                           (##cdr _e8370283714_)))
                                      (let ((_hd83722_ _hd8370383717_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd83722_)
                                            (_E8370183710_)))))
                                  (_E8370183710_)))))
                      (_E8370083724_)))))
          (gx#core-expand*__% _stx83694_ _stop?83696_))))
    (define gx#core-expand-block__%
      (lambda (_stx83500_
               _expand-special83501_
               _begin-form83502_
               _expand-e83503_)
        (letrec ((_expand-splice83505_
                  (lambda (_hd83668_ _body83669_ _rest83670_ _r83671_)
                    (if (gx#stx-list? _body83669_)
                        (_K83509_
                         (gx#stx-foldr cons _rest83670_ _body83669_)
                         _r83671_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83500_
                         _hd83668_))))
                 (_expand-cond-expand83506_
                  (lambda (_hd83664_ _rest83665_ _r83666_)
                    (_K83509_
                     (cons (gx#core-expand-cond-expand% _hd83664_) _rest83665_)
                     _r83666_)))
                 (_expand-include83507_
                  (lambda (_hd83613_ _rest83614_ _r83615_)
                    (let* ((_e8361683626_ _hd83613_)
                           (_E8361883630_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8361683626_)))
                           (_E8361783660_
                            (lambda ()
                              (if (gx#stx-pair? _e8361683626_)
                                  (let ((_e8361983634_
                                         (gx#syntax-e _e8361683626_)))
                                    (let ((_hd8362083637_
                                           (##car _e8361983634_))
                                          (_tl8362183639_
                                           (##cdr _e8361983634_)))
                                      (if (gx#stx-pair? _tl8362183639_)
                                          (let ((_e8362283642_
                                                 (gx#syntax-e _tl8362183639_)))
                                            (let ((_hd8362383645_
                                                   (##car _e8362283642_))
                                                  (_tl8362483647_
                                                   (##cdr _e8362283642_)))
                                              (let ((_path83650_
                                                     _hd8362383645_))
                                                (if (gx#stx-null?
                                                     _tl8362483647_)
                                                    (if (gx#stx-string?
                                                         _path83650_)
                                                        (let* ((_rpath83652_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path83650_
                         (gx#stx-source _hd83613_)))
                       (_block83654_
                        (gx#core-expand-include%__% _hd83613_ _rpath83652_))
                       (_rbody83657_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block83654_
                            _expand-special83501_
                            '#f
                            _expand-e83503_))
                         gx#current-expander-path
                         (cons _rpath83652_ (gx#current-expander-path)))))
                  (_K83509_ _rest83614_ (foldr1 cons _r83615_ _rbody83657_)))
                (_E8361883630_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8361883630_)))))
                                          (_E8361883630_))))
                                  (_E8361883630_)))))
                      (_E8361783660_))))
                 (_expand-expression83508_
                  (lambda (_hd83609_ _rest83610_ _r83611_)
                    (_K83509_
                     _rest83610_
                     (cons (_expand-e83503_ _hd83609_) _r83611_))))
                 (_K83509_
                  (lambda (_rest83539_ _r83540_)
                    (let* ((_e8354183548_ _rest83539_)
                           (_E8354383552_
                            (lambda ()
                              (if _begin-form83502_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83502_
                                    (reverse _r83540_))
                                   (gx#stx-source _stx83500_))
                                  _r83540_)))
                           (_E8354283605_
                            (lambda ()
                              (if (gx#stx-pair? _e8354183548_)
                                  (let ((_e8354483556_
                                         (gx#syntax-e _e8354183548_)))
                                    (let ((_hd8354583559_
                                           (##car _e8354483556_))
                                          (_tl8354683561_
                                           (##cdr _e8354483556_)))
                                      (let* ((_hd83564_ _hd8354583559_)
                                             (_rest83566_ _tl8354683561_))
                                        (if '#t
                                            (let* ((_hd83568_
                                                    (gx#core-expand-head
                                                     _hd83564_))
                                                   (_e8356983576_ _hd83568_)
                                                   (_E8357183580_
                                                    (lambda ()
                                                      (_expand-expression83508_
                                                       _hd83568_
                                                       _rest83566_
                                                       _r83540_)))
                                                   (_E8357083601_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8356983576_)
                                                          (let ((_e8357283584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8356983576_)))
                    (let ((_hd8357383587_ (##car _e8357283584_))
                          (_tl8357483589_ (##cdr _e8357283584_)))
                      (let* ((_form83592_ _hd8357383587_)
                             (_body83594_ _tl8357483589_))
                        (if '#t
                            (let ((_bind83596_
                                   (if (gx#identifier? _form83592_)
                                       (gx#resolve-identifier__0 _form83592_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind83596_)
                                  (let ((_$e83598_
                                         (##unchecked-structure-ref
                                          _bind83596_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e83598_)
                                        (_expand-splice83505_
                                         _hd83568_
                                         _body83594_
                                         _rest83566_
                                         _r83540_)
                                        (if (eq? '%#cond-expand _$e83598_)
                                            (_expand-cond-expand83506_
                                             _hd83568_
                                             _rest83566_
                                             _r83540_)
                                            (if (eq? '%#include _$e83598_)
                                                (_expand-include83507_
                                                 _hd83568_
                                                 _rest83566_
                                                 _r83540_)
                                                (_expand-special83501_
                                                 _hd83568_
                                                 _K83509_
                                                 _rest83566_
                                                 _r83540_)))))
                                  (_expand-expression83508_
                                   _hd83568_
                                   _rest83566_
                                   _r83540_)))
                            (_E8357183580_)))))
                  (_E8357183580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8357083601_))
                                            (_E8354383552_)))))
                                  (_E8354383552_)))))
                      (_E8354283605_)))))
          (let* ((_e8351083517_ _stx83500_)
                 (_E8351283521_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8351083517_)))
                 (_E8351183535_
                  (lambda ()
                    (if (gx#stx-pair? _e8351083517_)
                        (let ((_e8351383525_ (gx#syntax-e _e8351083517_)))
                          (let ((_hd8351483528_ (##car _e8351383525_))
                                (_tl8351583530_ (##cdr _e8351383525_)))
                            (let ((_body83533_ _tl8351583530_))
                              (if (gx#stx-list? _body83533_)
                                  (_K83509_ _body83533_ '())
                                  (_E8351283521_)))))
                        (_E8351283521_)))))
            (_E8351183535_)))))
    (define gx#core-expand-block__0
      (lambda (_stx83676_ _expand-special83677_)
        (let* ((_begin-form83679_ '%#begin)
               (_expand-e83681_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83676_
           _expand-special83677_
           _begin-form83679_
           _expand-e83681_))))
    (define gx#core-expand-block__1
      (lambda (_stx83683_ _expand-special83684_ _begin-form83685_)
        (let ((_expand-e83687_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83683_
           _expand-special83684_
           _begin-form83685_
           _expand-e83687_))))
    (define gx#core-expand-block
      (lambda _g84342_
        (let ((_g84341_ (##length _g84342_)))
          (cond ((##fx= _g84341_ 2)
                 (apply (lambda (_stx83676_ _expand-special83677_)
                          (gx#core-expand-block__0
                           _stx83676_
                           _expand-special83677_))
                        _g84342_))
                ((##fx= _g84341_ 3)
                 (apply (lambda (_stx83683_
                                 _expand-special83684_
                                 _begin-form83685_)
                          (gx#core-expand-block__1
                           _stx83683_
                           _expand-special83684_
                           _begin-form83685_))
                        _g84342_))
                ((##fx= _g84341_ 4)
                 (apply (lambda (_stx83689_
                                 _expand-special83690_
                                 _begin-form83691_
                                 _expand-e83692_)
                          (gx#core-expand-block__%
                           _stx83689_
                           _expand-special83690_
                           _begin-form83691_
                           _expand-e83692_))
                        _g84342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84342_))))))
    (define gx#core-expand-block*
      (lambda (_stx83448_ _expand-special83449_)
        (let* ((_g8345083461_
                (gx#core-expand-block__1 _stx83448_ _expand-special83449_ '#f))
               (_E8345483465_
                (lambda () (error '"No clause matching" _g8345083461_))))
          (let ((_K8345983496_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83448_)))
                (_K8345683482_ (lambda (_expr83480_) _expr83480_))
                (_K8345583471_
                 (lambda (_body83469_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83469_))
                    (gx#stx-source _stx83448_)))))
            (let ((_try-match8345283492_
                   (lambda ()
                     (if (##pair? _g8345083461_)
                         (let ((_tl8345883487_ (##cdr _g8345083461_))
                               (_hd8345783485_ (##car _g8345083461_)))
                           (if (##null? _tl8345883487_)
                               (let ((_expr83490_ _hd8345783485_))
                                 (_K8345683482_ _expr83490_))
                               (let ((_body83474_ _g8345083461_))
                                 (_K8345583471_ _body83474_))))
                         (let ((_body83474_ _g8345083461_))
                           (_K8345583471_ _body83474_))))))
              (if (##null? _g8345083461_)
                  (_K8345983496_)
                  (_try-match8345283492_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83276_)
        (letrec ((_satisfied?83278_
                  (lambda (_condition83376_)
                    (let* ((_e8337783392_ _condition83376_)
                           (_E8338783396_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8337783392_)))
                           (_E8338083415_
                            (lambda ()
                              (if (gx#stx-pair? _e8337783392_)
                                  (let ((_e8338883400_
                                         (gx#syntax-e _e8337783392_)))
                                    (let ((_hd8338983403_
                                           (##car _e8338883400_))
                                          (_tl8339083405_
                                           (##cdr _e8338883400_)))
                                      (let* ((_combinator83408_ _hd8338983403_)
                                             (_body83410_ _tl8339083405_))
                                        (if (gx#stx-list? _body83410_)
                                            (let ((_$e83412_
                                                   (gx#stx-e
                                                    _combinator83408_)))
                                              (if (eq? 'not _$e83412_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83278_
                                                        _body83410_))
                                                  (if (eq? 'and _$e83412_)
                                                      (gx#stx-andmap
                                                       _satisfied?83278_
                                                       _body83410_)
                                                      (if (eq? 'or _$e83412_)
                                                          (gx#stx-ormap
                                                           _satisfied?83278_
                                                           _body83410_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83412_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83410_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83276_
                       _combinator83408_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8338783396_)))))
                                  (_E8338783396_))))
                           (_E8337983438_
                            (lambda ()
                              (if (gx#stx-pair? _e8337783392_)
                                  (let ((_e8338183419_
                                         (gx#syntax-e _e8337783392_)))
                                    (let ((_hd8338283422_
                                           (##car _e8338183419_))
                                          (_tl8338383424_
                                           (##cdr _e8338183419_)))
                                      (if (and (gx#identifier? _hd8338283422_)
                                               (gx#core-identifier=?
                                                _hd8338283422_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8338383424_)
                                              (let ((_e8338483427_
                                                     (gx#syntax-e
                                                      _tl8338383424_)))
                                                (let ((_hd8338583430_
                                                       (##car _e8338483427_))
                                                      (_tl8338683432_
                                                       (##cdr _e8338483427_)))
                                                  (let ((_expr83435_
                                                         _hd8338583430_))
                                                    (if (gx#stx-null?
                                                         _tl8338683432_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83435_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8338083415_))
                (_E8338083415_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8338083415_))
                                          (_E8338083415_))))
                                  (_E8338083415_))))
                           (_E8337883444_
                            (lambda ()
                              (let ((_id83442_ _e8337783392_))
                                (if (gx#identifier? _id83442_)
                                    (gx#core-bound-identifier?__%
                                     _id83442_
                                     gx#feature-binding?)
                                    (_E8337983438_))))))
                      (_E8337883444_))))
                 (_loop83279_
                  (lambda (_rest83309_)
                    (let* ((_e8331083318_ _rest83309_)
                           (_E8331683322_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8331083318_)))
                           (_E8331283326_
                            (lambda ()
                              (if (gx#stx-null? _e8331083318_)
                                  (if '#t '() (_E8331683322_))
                                  (_E8331683322_))))
                           (_E8331183372_
                            (lambda ()
                              (if (gx#stx-pair? _e8331083318_)
                                  (let ((_e8331383330_
                                         (gx#syntax-e _e8331083318_)))
                                    (let ((_hd8331483333_
                                           (##car _e8331383330_))
                                          (_tl8331583335_
                                           (##cdr _e8331383330_)))
                                      (let* ((_hd83338_ _hd8331483333_)
                                             (_rest83340_ _tl8331583335_))
                                        (if '#t
                                            (let* ((_e8334183348_ _hd83338_)
                                                   (_E8334383352_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8334183348_)))
                                                   (_E8334283368_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8334183348_)
                                                          (let ((_e8334483356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8334183348_)))
                    (let ((_hd8334583359_ (##car _e8334483356_))
                          (_tl8334683361_ (##cdr _e8334483356_)))
                      (let* ((_condition83364_ _hd8334583359_)
                             (_body83366_ _tl8334683361_))
                        (if '#t
                            (if (gx#stx-eq? _condition83364_ 'else)
                                (if (gx#stx-null? _rest83340_)
                                    _body83366_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83276_
                                     _hd83338_))
                                (if (_satisfied?83278_ _condition83364_)
                                    _body83366_
                                    (_loop83279_ _rest83340_)))
                            (_E8334383352_)))))
                  (_E8334383352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8334283368_))
                                            (_E8331283326_)))))
                                  (_E8331283326_)))))
                      (_E8331183372_)))))
          (let* ((_e8328083287_ _stx83276_)
                 (_E8328283291_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8328083287_)))
                 (_E8328183305_
                  (lambda ()
                    (if (gx#stx-pair? _e8328083287_)
                        (let ((_e8328383295_ (gx#syntax-e _e8328083287_)))
                          (let ((_hd8328483298_ (##car _e8328383295_))
                                (_tl8328583300_ (##cdr _e8328383295_)))
                            (let ((_clauses83303_ _tl8328583300_))
                              (if (gx#stx-list? _clauses83303_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83279_ _clauses83303_))
                                  (_E8328283291_)))))
                        (_E8328283291_)))))
            (_E8328183305_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83219_ _rpath83220_)
        (let* ((_e8322183231_ _stx83219_)
               (_E8322383235_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8322183231_)))
               (_E8322283262_
                (lambda ()
                  (if (gx#stx-pair? _e8322183231_)
                      (let ((_e8322483239_ (gx#syntax-e _e8322183231_)))
                        (let ((_hd8322583242_ (##car _e8322483239_))
                              (_tl8322683244_ (##cdr _e8322483239_)))
                          (if (gx#stx-pair? _tl8322683244_)
                              (let ((_e8322783247_
                                     (gx#syntax-e _tl8322683244_)))
                                (let ((_hd8322883250_ (##car _e8322783247_))
                                      (_tl8322983252_ (##cdr _e8322783247_)))
                                  (let ((_path83255_ _hd8322883250_))
                                    (if (gx#stx-null? _tl8322983252_)
                                        (if (gx#stx-string? _path83255_)
                                            (let ((_rpath83260_
                                                   (let ((_$e83257_
                                                          _rpath83220_))
                                                     (if _$e83257_
                                                         _$e83257_
                                                         (gx#core-resolve-path__%
                                                          _path83255_
                                                          (gx#stx-source
                                                           _stx83219_))))))
                                              (if (member _rpath83260_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83219_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83260_))
                                                    (gx#stx-source
                                                     _stx83219_)))))
                                            (_E8322383235_))
                                        (_E8322383235_)))))
                              (_E8322383235_))))
                      (_E8322383235_)))))
          (_E8322283262_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83269_)
        (let ((_rpath83271_ '#f))
          (gx#core-expand-include%__% _stx83269_ _rpath83271_))))
    (define gx#core-expand-include%
      (lambda _g84344_
        (let ((_g84343_ (##length _g84344_)))
          (cond ((##fx= _g84343_ 1)
                 (apply (lambda (_stx83269_)
                          (gx#core-expand-include%__0 _stx83269_))
                        _g84344_))
                ((##fx= _g84343_ 2)
                 (apply (lambda (_stx83273_ _rpath83274_)
                          (gx#core-expand-include%__% _stx83273_ _rpath83274_))
                        _g84344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84344_))))))
    (define gx#core-apply-expander__%
      (lambda (_K83188_ _stx83189_ _method83190_)
        (if (procedure? _K83188_)
            (let ((_$e83192_ (gx#stx-source _stx83189_)))
              (if _$e83192_
                  ((lambda (_g8319483196_)
                     (gx#stx-wrap-source (_K83188_ _stx83189_) _g8319483196_))
                   _$e83192_)
                  (_K83188_ _stx83189_)))
            (let ((_$e83199_ (bound-method-ref _K83188_ _method83190_)))
              (if _$e83199_
                  ((lambda (_g8320183203_)
                     (gx#core-apply-expander__%
                      _g8320183203_
                      _stx83189_
                      _method83190_))
                   _$e83199_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx83189_
                   _method83190_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83209_ _stx83210_)
        (let ((_method83212_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83209_ _stx83210_ _method83212_))))
    (define gx#core-apply-expander
      (lambda _g84346_
        (let ((_g84345_ (##length _g84346_)))
          (cond ((##fx= _g84345_ 2)
                 (apply (lambda (_K83209_ _stx83210_)
                          (gx#core-apply-expander__0 _K83209_ _stx83210_))
                        _g84346_))
                ((##fx= _g84345_ 3)
                 (apply (lambda (_K83214_ _stx83215_ _method83216_)
                          (gx#core-apply-expander__%
                           _K83214_
                           _stx83215_
                           _method83216_))
                        _g84346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84346_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self83184_ _stx83185_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx83185_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self83037_ _stx83038_)
        (let* ((_self8303983045_ _self83037_)
               (_E8304183049_
                (lambda () (error '"No clause matching" _self8303983045_)))
               (_K8304283054_
                (lambda (_K83052_)
                  (gx#core-apply-expander__0 _K83052_ _stx83038_))))
          (if (##structure-instance-of? _self8303983045_ 'gx#core-macro::t)
              (let* ((_e8304383057_
                      (##unchecked-structure-ref
                       _self8303983045_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83060_ _e8304383057_))
                (_K8304283054_ _K83060_))
              (_E8304183049_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self82890_ _stx82891_)
        (if (gx#sealed-syntax? _stx82891_)
            _stx82891_
            (let* ((_self8289282898_ _self82890_)
                   (_E8289482902_
                    (lambda () (error '"No clause matching" _self8289282898_)))
                   (_K8289582907_
                    (lambda (_K82905_)
                      (gx#core-apply-expander__0 _K82905_ _stx82891_))))
              (if (##structure-instance-of?
                   _self8289282898_
                   'gx#core-expander::t)
                  (let* ((_e8289682910_
                          (##unchecked-structure-ref
                           _self8289282898_
                           '1
                           gx#expander::t
                           '#f))
                         (_K82913_ _e8289682910_))
                    (_K8289582907_ _K82913_))
                  (_E8289482902_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self82752_ _stx82753_ _top?82754_)
        (if (_top?82754_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self82752_ _stx82753_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx82753_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self82759_ _stx82760_)
        (let ((_top?82762_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self82759_
           _stx82760_
           _top?82762_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84348_
        (let ((_g84347_ (##length _g84348_)))
          (cond ((##fx= _g84347_ 2)
                 (apply (lambda (_self82759_ _stx82760_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self82759_
                           _stx82760_))
                        _g84348_))
                ((##fx= _g84347_ 3)
                 (apply (lambda (_self82764_ _stx82765_ _top?82766_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self82764_
                           _stx82765_
                           _top?82766_))
                        _g84348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84348_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self82626_ _stx82627_)
        (gx#top-special-form::apply-macro-expander__%
         _self82626_
         _stx82627_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82451_ _stx82452_)
        (let* ((_self8245382459_ _self82451_)
               (_E8245582463_
                (lambda () (error '"No clause matching" _self8245382459_)))
               (_K8245682496_
                (lambda (_id82466_)
                  (let* ((_e8246782474_ _stx82452_)
                         (_E8246982478_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8246782474_)))
                         (_E8246882492_
                          (lambda ()
                            (if (gx#stx-pair? _e8246782474_)
                                (let ((_e8247082482_
                                       (gx#syntax-e _e8246782474_)))
                                  (let ((_hd8247182485_ (##car _e8247082482_))
                                        (_tl8247282487_ (##cdr _e8247082482_)))
                                    (let ((_body82490_ _tl8247282487_))
                                      (if '#t
                                          (gx#core-cons _id82466_ _body82490_)
                                          (_E8246982478_)))))
                                (_E8246982478_)))))
                    (_E8246882492_)))))
          (if (##structure-instance-of?
               _self8245382459_
               'gx#rename-macro-expander::t)
              (let* ((_e8245782499_
                      (##unchecked-structure-ref
                       _self8245382459_
                       '1
                       gx#expander::t
                       '#f))
                     (_id82502_ _e8245782499_))
                (_K8245682496_ _id82502_))
              (_E8245582463_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82277_ _stx82278_ _method82279_)
        (let* ((_self8228082288_ _self82277_)
               (_E8228282292_
                (lambda () (error '"No clause matching" _self8228082288_)))
               (_K8228382299_
                (lambda (_phi82295_ _ctx82296_ _K82297_)
                  (gx#core-apply-user-macro
                   _K82297_
                   _stx82278_
                   _ctx82296_
                   _phi82295_
                   _method82279_))))
          (if (##structure-instance-of? _self8228082288_ 'gx#macro-expander::t)
              (let* ((_e8228482302_
                      (##unchecked-structure-ref
                       _self8228082288_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82305_ _e8228482302_)
                     (_e8228582307_
                      (##unchecked-structure-ref
                       _self8228082288_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx82310_ _e8228582307_)
                     (_e8228682312_
                      (##unchecked-structure-ref
                       _self8228082288_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi82315_ _e8228682312_))
                (_K8228382299_ _phi82315_ _ctx82310_ _K82305_))
              (_E8228282292_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82320_ _stx82321_)
        (let ((_method82323_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82320_
           _stx82321_
           _method82323_))))
    (define gx#core-apply-user-expander
      (lambda _g84350_
        (let ((_g84349_ (##length _g84350_)))
          (cond ((##fx= _g84349_ 2)
                 (apply (lambda (_self82320_ _stx82321_)
                          (gx#core-apply-user-expander__0
                           _self82320_
                           _stx82321_))
                        _g84350_))
                ((##fx= _g84349_ 3)
                 (apply (lambda (_self82325_ _stx82326_ _method82327_)
                          (gx#core-apply-user-expander__%
                           _self82325_
                           _stx82326_
                           _method82327_))
                        _g84350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84350_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82267_ _stx82268_ _ctx82269_ _phi82270_ _method82271_)
        (let ((_mark82273_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82269_
                _phi82270_
                _stx82268_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82267_
               (gx#stx-apply-mark _stx82268_ _mark82273_)
               _method82271_)
              _mark82273_))
           gx#current-expander-marks
           (cons _mark82273_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx82118_ _phi82119_ _ctx82120_)
        (let _lp82122_ ((_bind82124_
                         (gx#core-resolve-identifier__%
                          _stx82118_
                          _phi82119_
                          _ctx82120_)))
          (if (##structure-direct-instance-of?
               _bind82124_
               'gx#import-binding::t)
              (_lp82122_
               (##unchecked-structure-ref
                _bind82124_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind82124_
                   'gx#alias-binding::t)
                  (_lp82122_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind82124_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi82119_
                    _ctx82120_))
                  _bind82124_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx82129_)
        (let* ((_phi82131_ (gx#current-expander-phi))
               (_ctx82133_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82129_ _phi82131_ _ctx82133_))))
    (define gx#resolve-identifier__1
      (lambda (_stx82135_ _phi82136_)
        (let ((_ctx82138_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82135_ _phi82136_ _ctx82138_))))
    (define gx#resolve-identifier
      (lambda _g84352_
        (let ((_g84351_ (##length _g84352_)))
          (cond ((##fx= _g84351_ 1)
                 (apply (lambda (_stx82129_)
                          (gx#resolve-identifier__0 _stx82129_))
                        _g84352_))
                ((##fx= _g84351_ 2)
                 (apply (lambda (_stx82135_ _phi82136_)
                          (gx#resolve-identifier__1 _stx82135_ _phi82136_))
                        _g84352_))
                ((##fx= _g84351_ 3)
                 (apply (lambda (_stx82140_ _phi82141_ _ctx82142_)
                          (gx#resolve-identifier__%
                           _stx82140_
                           _phi82141_
                           _ctx82142_))
                        _g84352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84352_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx82076_ _val82077_ _rebind?82078_ _phi82079_ _ctx82080_)
        (let ((_rebind?82082_
               (if (not _rebind?82078_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?82078_) _rebind?82078_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx82076_)
           _val82077_
           _rebind?82082_
           _phi82079_
           _ctx82080_))))
    (define gx#bind-identifier!__0
      (lambda (_stx82087_ _val82088_)
        (let* ((_rebind?82090_ '#f)
               (_phi82092_ (gx#current-expander-phi))
               (_ctx82094_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82087_
           _val82088_
           _rebind?82090_
           _phi82092_
           _ctx82094_))))
    (define gx#bind-identifier!__1
      (lambda (_stx82096_ _val82097_ _rebind?82098_)
        (let* ((_phi82100_ (gx#current-expander-phi))
               (_ctx82102_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82096_
           _val82097_
           _rebind?82098_
           _phi82100_
           _ctx82102_))))
    (define gx#bind-identifier!__2
      (lambda (_stx82104_ _val82105_ _rebind?82106_ _phi82107_)
        (let ((_ctx82109_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82104_
           _val82105_
           _rebind?82106_
           _phi82107_
           _ctx82109_))))
    (define gx#bind-identifier!
      (lambda _g84354_
        (let ((_g84353_ (##length _g84354_)))
          (cond ((##fx= _g84353_ 2)
                 (apply (lambda (_stx82087_ _val82088_)
                          (gx#bind-identifier!__0 _stx82087_ _val82088_))
                        _g84354_))
                ((##fx= _g84353_ 3)
                 (apply (lambda (_stx82096_ _val82097_ _rebind?82098_)
                          (gx#bind-identifier!__1
                           _stx82096_
                           _val82097_
                           _rebind?82098_))
                        _g84354_))
                ((##fx= _g84353_ 4)
                 (apply (lambda (_stx82104_
                                 _val82105_
                                 _rebind?82106_
                                 _phi82107_)
                          (gx#bind-identifier!__2
                           _stx82104_
                           _val82105_
                           _rebind?82106_
                           _phi82107_))
                        _g84354_))
                ((##fx= _g84353_ 5)
                 (apply (lambda (_stx82111_
                                 _val82112_
                                 _rebind?82113_
                                 _phi82114_
                                 _ctx82115_)
                          (gx#bind-identifier!__%
                           _stx82111_
                           _val82112_
                           _rebind?82113_
                           _phi82114_
                           _ctx82115_))
                        _g84354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84354_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx82048_ _phi82049_ _ctx82050_)
        (let _lp82052_ ((_e82054_ _stx82048_)
                        (_marks82055_ (gx#current-expander-marks)))
          (if (symbol? _e82054_)
              (gx#core-resolve-binding
               _e82054_
               _phi82049_
               _phi82049_
               _ctx82050_
               (reverse _marks82055_))
              (if (gx#identifier-quote? _e82054_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e82054_ '1 gx#AST::t '#f)
                   _phi82049_
                   '0
                   (##unchecked-structure-ref
                    _e82054_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e82054_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e82054_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e82054_ '1 gx#AST::t '#f)
                       _phi82049_
                       _phi82049_
                       _ctx82050_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82054_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82055_))
                      (if (##structure-direct-instance-of?
                           _e82054_
                           'gx#syntax-wrap::t)
                          (_lp82052_
                           (##unchecked-structure-ref
                            _e82054_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e82054_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks82055_))
                          (if (##structure-instance-of?
                               _e82054_
                               'gerbil#AST::t)
                              (_lp82052_
                               (##unchecked-structure-ref
                                _e82054_
                                '1
                                gx#AST::t
                                '#f)
                               _marks82055_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx82048_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx82060_)
        (let* ((_phi82062_ (gx#current-expander-phi))
               (_ctx82064_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82060_ _phi82062_ _ctx82064_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx82066_ _phi82067_)
        (let ((_ctx82069_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82066_ _phi82067_ _ctx82069_))))
    (define gx#core-resolve-identifier
      (lambda _g84356_
        (let ((_g84355_ (##length _g84356_)))
          (cond ((##fx= _g84355_ 1)
                 (apply (lambda (_stx82060_)
                          (gx#core-resolve-identifier__0 _stx82060_))
                        _g84356_))
                ((##fx= _g84355_ 2)
                 (apply (lambda (_stx82066_ _phi82067_)
                          (gx#core-resolve-identifier__1
                           _stx82066_
                           _phi82067_))
                        _g84356_))
                ((##fx= _g84355_ 3)
                 (apply (lambda (_stx82071_ _phi82072_ _ctx82073_)
                          (gx#core-resolve-identifier__%
                           _stx82071_
                           _phi82072_
                           _ctx82073_))
                        _g84356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84356_))))))
    (define gx#core-resolve-binding
      (lambda (_id81961_ _phi81962_ _src-phi81963_ _ctx81964_ _marks81965_)
        (letrec ((_resolve81967_
                  (lambda (_ctx82035_ _src-phi82036_ _key82037_)
                    (let _lp82039_ ((_ctx82041_
                                     (gx#core-context-shift
                                      _ctx82035_
                                      _phi81962_))
                                    (_dphi82042_
                                     (fx- _phi81962_ _src-phi82036_)))
                      (let ((_$e82044_
                             (gx#core-context-resolve _ctx82041_ _key82037_)))
                        (if _$e82044_
                            (values _$e82044_)
                            (if (fxzero? _dphi82042_)
                                '#f
                                (if (fxpositive? _dphi82042_)
                                    (_lp82039_
                                     (gx#core-context-shift _ctx82041_ '-1)
                                     (fx- _dphi82042_ '1))
                                    (_lp82039_
                                     (gx#core-context-shift _ctx82041_ '1)
                                     (fx+ _dphi82042_ '1))))))))))
          (let _lp81969_ ((_ctx81971_ _ctx81964_)
                          (_src-phi81972_ _src-phi81963_)
                          (_rest81973_ _marks81965_))
            (let* ((_rest8197481982_ _rest81973_)
                   (_else8197681990_
                    (lambda ()
                      (_resolve81967_ _ctx81971_ _src-phi81972_ _id81961_)))
                   (_K8197882023_
                    (lambda (_rest81993_ _hd81994_)
                      (let* ((_hd8199582001_ _hd81994_)
                             (_E8199782005_
                              (lambda ()
                                (error '"No clause matching" _hd8199582001_)))
                             (_K8199882015_
                              (lambda (_subst82008_)
                                (let ((_$e82012_
                                       (let ((_key82010_
                                              (if _subst82008_
                                                  (hash-get
                                                   _subst82008_
                                                   _id81961_)
                                                  '#f)))
                                         (if _key82010_
                                             (_resolve81967_
                                              _ctx81971_
                                              _src-phi81972_
                                              _key82010_)
                                             '#f))))
                                  (if _$e82012_
                                      _$e82012_
                                      (_lp81969_
                                       (##unchecked-structure-ref
                                        _hd81994_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd81994_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest81993_))))))
                        (if (##structure-instance-of?
                             _hd8199582001_
                             'gx#expander-mark::t)
                            (let* ((_e8199982018_
                                    (##unchecked-structure-ref
                                     _hd8199582001_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst82021_ _e8199982018_))
                              (_K8199882015_ _subst82021_))
                            (_E8199782005_))))))
              (if (##pair? _rest8197481982_)
                  (let ((_hd8197982026_ (##car _rest8197481982_))
                        (_tl8198082028_ (##cdr _rest8197481982_)))
                    (let* ((_hd82031_ _hd8197982026_)
                           (_rest82033_ _tl8198082028_))
                      (_K8197882023_ _rest82033_ _hd82031_)))
                  (_else8197681990_)))))))
    (define gx#core-bind!__%
      (lambda (_key81837_ _val81838_ _rebind?81839_ _phi81840_ _ctx81841_)
        (letrec ((_update-binding81843_
                  (lambda (_xval81914_)
                    (if (or (_rebind?81839_ _ctx81841_ _xval81914_ _val81838_)
                            (and (##structure-direct-instance-of?
                                  _xval81914_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval81914_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val81838_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val81838_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval81914_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val81838_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val81838_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval81914_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val81838_
                        (if (and (##structure-direct-instance-of?
                                  _val81838_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val81838_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval81914_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val81838_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval81914_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval81914_
                            (if (and (##structure-direct-instance-of?
                                      _val81838_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval81914_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key81837_
                                 (cons (##unchecked-structure-ref
                                        _val81838_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val81838_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval81914_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval81914_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval81914_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval81914_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key81837_
                                 _val81838_
                                 _xval81914_))))))
                 (_gensubst81844_
                  (lambda (_subst81909_ _id81910_)
                    (let ((_eid81912_
                           (gensym (if (uninterned-symbol? _id81910_)
                                       '%
                                       _id81910_))))
                      (hash-put! _subst81909_ _id81910_ _eid81912_)
                      _eid81912_)))
                 (_subst!81845_
                  (lambda (_key81847_)
                    (let* ((_key8184881856_ _key81847_)
                           (_else8185081864_ (lambda () _key81847_))
                           (_K8185281897_
                            (lambda (_mark81867_ _id81868_)
                              (let* ((_mark8186981875_ _mark81867_)
                                     (_E8187181879_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8186981875_)))
                                     (_K8187281889_
                                      (lambda (_subst81882_)
                                        (if (not _subst81882_)
                                            (let ((_subst81884_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark81867_
                                               _subst81884_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst81844_
                                               _subst81884_
                                               _id81868_))
                                            (let ((_$e81886_
                                                   (hash-get
                                                    _subst81882_
                                                    _id81868_)))
                                              (if _$e81886_
                                                  (values _$e81886_)
                                                  (_gensubst81844_
                                                   _subst81882_
                                                   _id81868_)))))))
                                (if (##structure-instance-of?
                                     _mark8186981875_
                                     'gx#expander-mark::t)
                                    (let* ((_e8187381892_
                                            (##unchecked-structure-ref
                                             _mark8186981875_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst81895_ _e8187381892_))
                                      (_K8187281889_ _subst81895_))
                                    (_E8187181879_))))))
                      (if (##pair? _key8184881856_)
                          (let ((_hd8185381900_ (##car _key8184881856_))
                                (_tl8185481902_ (##cdr _key8184881856_)))
                            (let* ((_id81905_ _hd8185381900_)
                                   (_mark81907_ _tl8185481902_))
                              (_K8185281897_ _mark81907_ _id81905_)))
                          (_else8185081864_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx81841_ _phi81840_)
           (_subst!81845_ _key81837_)
           _val81838_
           _update-binding81843_))))
    (define gx#core-bind!__0
      (lambda (_key81931_ _val81932_)
        (let* ((_rebind?81934_ false)
               (_phi81936_ (gx#current-expander-phi))
               (_ctx81938_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81931_
           _val81932_
           _rebind?81934_
           _phi81936_
           _ctx81938_))))
    (define gx#core-bind!__1
      (lambda (_key81940_ _val81941_ _rebind?81942_)
        (let* ((_phi81944_ (gx#current-expander-phi))
               (_ctx81946_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81940_
           _val81941_
           _rebind?81942_
           _phi81944_
           _ctx81946_))))
    (define gx#core-bind!__2
      (lambda (_key81948_ _val81949_ _rebind?81950_ _phi81951_)
        (let ((_ctx81953_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81948_
           _val81949_
           _rebind?81950_
           _phi81951_
           _ctx81953_))))
    (define gx#core-bind!
      (lambda _g84358_
        (let ((_g84357_ (##length _g84358_)))
          (cond ((##fx= _g84357_ 2)
                 (apply (lambda (_key81931_ _val81932_)
                          (gx#core-bind!__0 _key81931_ _val81932_))
                        _g84358_))
                ((##fx= _g84357_ 3)
                 (apply (lambda (_key81940_ _val81941_ _rebind?81942_)
                          (gx#core-bind!__1
                           _key81940_
                           _val81941_
                           _rebind?81942_))
                        _g84358_))
                ((##fx= _g84357_ 4)
                 (apply (lambda (_key81948_
                                 _val81949_
                                 _rebind?81950_
                                 _phi81951_)
                          (gx#core-bind!__2
                           _key81948_
                           _val81949_
                           _rebind?81950_
                           _phi81951_))
                        _g84358_))
                ((##fx= _g84357_ 5)
                 (apply (lambda (_key81955_
                                 _val81956_
                                 _rebind?81957_
                                 _phi81958_
                                 _ctx81959_)
                          (gx#core-bind!__%
                           _key81955_
                           _val81956_
                           _rebind?81957_
                           _phi81958_
                           _ctx81959_))
                        _g84358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84358_))))))
    (define gx#core-identifier-key
      (lambda (_stx81771_)
        (if (symbol? _stx81771_)
            (let* ((_g8177281780_ (gx#current-expander-marks))
                   (_else8177481788_ (lambda () _stx81771_))
                   (_K8177681793_
                    (lambda (_hd81791_) (cons _stx81771_ _hd81791_))))
              (if (##pair? _g8177281780_)
                  (let* ((_hd8177781796_ (##car _g8177281780_))
                         (_hd81799_ _hd8177781796_))
                    (_K8177681793_ _hd81799_))
                  (_else8177481788_)))
            (if (gx#identifier? _stx81771_)
                (let* ((_id81801_ (gx#syntax-local-unwrap _stx81771_))
                       (_eid81803_ (gx#stx-e _id81801_))
                       (_marks81805_ (gx#stx-identifier-marks* _id81801_)))
                  (let* ((_marks8180781815_ _marks81805_)
                         (_else8180981823_ (lambda () _eid81803_))
                         (_K8181181828_
                          (lambda (_hd81826_) (cons _eid81803_ _hd81826_))))
                    (if (##pair? _marks8180781815_)
                        (let* ((_hd8181281831_ (##car _marks8180781815_))
                               (_hd81834_ _hd8181281831_))
                          (_K8181181828_ _hd81834_))
                        (_else8180981823_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx81771_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx81716_ _phi81717_)
        (letrec ((_make-phi81719_
                  (lambda (_super81769_)
                    (let ((__obj84329
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84329
                       (gensym 'phi)
                       _super81769_)
                      __obj84329)))
                 (_make-phi/up81720_
                  (lambda (_ctx81764_ _super81765_)
                    (let ((_ctx+181767_ (_make-phi81719_ _super81765_)))
                      (##unchecked-structure-set!
                       _ctx81764_
                       _ctx+181767_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+181767_
                       _ctx81764_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+181767_)))
                 (_make-phi/down81721_
                  (lambda (_ctx81759_ _super81760_)
                    (let ((_ctx-181762_ (_make-phi81719_ _super81760_)))
                      (##unchecked-structure-set!
                       _ctx-181762_
                       _ctx81759_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx81759_
                       _ctx-181762_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-181762_)))
                 (_shift81722_
                  (lambda (_ctx81743_
                           _delta81744_
                           _make-delta-context81745_
                           _phi81746_
                           _K81747_)
                    (let ((_$e81749_
                           (##unchecked-structure-ref
                            _ctx81743_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e81749_
                          ((lambda (_super81752_)
                             (let* ((_super81754_
                                     (_K81747_ _super81752_ _delta81744_))
                                    (_ctx+d81756_
                                     (_make-delta-context81745_
                                      _ctx81743_
                                      _super81754_)))
                               (_K81747_
                                _ctx+d81756_
                                (fx- _phi81746_ _delta81744_))))
                           _$e81749_)
                          (error '"Bad context" _ctx81743_))))))
          (let _K81724_ ((_ctx81726_ _ctx81716_) (_phi81727_ _phi81717_))
            (if (fxzero? _phi81727_)
                _ctx81726_
                (if (##structure-instance-of? _ctx81726_ 'gx#context-phi::t)
                    (if (fxpositive? _phi81727_)
                        (let ((_$e81729_
                               (##unchecked-structure-ref
                                _ctx81726_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e81729_
                              ((lambda (_g8173181733_)
                                 (_K81724_ _g8173181733_ (fx- _phi81727_ '1)))
                               _$e81729_)
                              (_shift81722_
                               _ctx81726_
                               '1
                               _make-phi/up81720_
                               _phi81727_
                               _K81724_)))
                        (let ((_$e81736_
                               (##unchecked-structure-ref
                                _ctx81726_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e81736_
                              ((lambda (_g8173881740_)
                                 (_K81724_ _g8173881740_ (fx+ _phi81727_ '1)))
                               _$e81736_)
                              (_shift81722_
                               _ctx81726_
                               '-1
                               _make-phi/down81721_
                               _phi81727_
                               _K81724_))))
                    _ctx81726_))))))
    (define gx#core-context-get
      (lambda (_ctx81713_ _key81714_)
        (hash-get
         (##unchecked-structure-ref _ctx81713_ '2 gx#expander-context::t '#f)
         _key81714_)))
    (define gx#core-context-put!
      (lambda (_ctx81709_ _key81710_ _val81711_)
        (hash-put!
         (##unchecked-structure-ref _ctx81709_ '2 gx#expander-context::t '#f)
         _key81710_
         _val81711_)))
    (define gx#core-context-resolve
      (lambda (_ctx81696_ _key81697_)
        (let _lp81699_ ((_ctx81701_ _ctx81696_))
          (let ((_$e81703_ (gx#core-context-get _ctx81701_ _key81697_)))
            (if _$e81703_
                (values _$e81703_)
                (let ((_$e81706_
                       (if (##structure-instance-of?
                            _ctx81701_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx81701_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e81706_ (_lp81699_ _$e81706_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx81686_ _key81687_ _val81688_ _rebind81689_)
        (let ((_$e81691_ (gx#core-context-get _ctx81686_ _key81687_)))
          (if _$e81691_
              ((lambda (_xval81694_)
                 (gx#core-context-put!
                  _ctx81686_
                  _key81687_
                  (_rebind81689_ _xval81694_)))
               _$e81691_)
              (gx#core-context-put! _ctx81686_ _key81687_ _val81688_)))))
    (define gx#core-context-top__%
      (lambda (_ctx81664_ _stop?81665_)
        (let _lp81667_ ((_ctx81669_ _ctx81664_))
          (if (_stop?81665_ _ctx81669_)
              _ctx81669_
              (if (##structure-instance-of? _ctx81669_ 'gx#context-phi::t)
                  (_lp81667_
                   (##unchecked-structure-ref
                    _ctx81669_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx81675_ (gx#current-expander-context))
               (_stop?81677_ gx#top-context?))
          (gx#core-context-top__% _ctx81675_ _stop?81677_))))
    (define gx#core-context-top__1
      (lambda (_ctx81679_)
        (let ((_stop?81681_ gx#top-context?))
          (gx#core-context-top__% _ctx81679_ _stop?81681_))))
    (define gx#core-context-top
      (lambda _g84360_
        (let ((_g84359_ (##length _g84360_)))
          (cond ((##fx= _g84359_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84360_))
                ((##fx= _g84359_ 1)
                 (apply (lambda (_ctx81679_)
                          (gx#core-context-top__1 _ctx81679_))
                        _g84360_))
                ((##fx= _g84359_ 2)
                 (apply (lambda (_ctx81683_ _stop?81684_)
                          (gx#core-context-top__% _ctx81683_ _stop?81684_))
                        _g84360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84360_))))))
    (define gx#core-context-root__%
      (lambda (_ctx81649_)
        (let _lp81651_ ((_ctx81653_ _ctx81649_))
          (if (##structure-instance-of? _ctx81653_ 'gx#context-phi::t)
              (_lp81651_
               (##unchecked-structure-ref _ctx81653_ '3 gx#phi-context::t '#f))
              _ctx81653_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx81659_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx81659_))))
    (define gx#core-context-root
      (lambda _g84362_
        (let ((_g84361_ (##length _g84362_)))
          (cond ((##fx= _g84361_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84362_))
                ((##fx= _g84361_ 1)
                 (apply (lambda (_ctx81661_)
                          (gx#core-context-root__% _ctx81661_))
                        _g84362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84362_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx81630_ . __8162781631_)
        (let ((_$e81634_ (gx#current-expander-allow-rebind?)))
          (if _$e81634_
              _$e81634_
              (if (##structure-instance-of? _ctx81630_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx81630_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx81630_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx81641_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx81641_))))
    (define gx#core-context-rebind?
      (lambda _g84364_
        (let ((_g84363_ (##length _g84364_)))
          (cond ((##fx= _g84363_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84364_))
                ((##fx= _g84363_ 1)
                 (apply (lambda (_ctx81643_)
                          (gx#core-context-rebind?__% _ctx81643_))
                        _g84364_))
                ((##fx>= _g84363_ 1)
                 (apply gx#core-context-rebind?__% _g84364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84364_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx81613_)
        (let ((_$e81615_ (gx#core-context-top__1 _ctx81613_)))
          (if _$e81615_
              ((lambda (_ctx81618_)
                 (if (##structure-instance-of?
                      _ctx81618_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx81618_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e81615_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx81624_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx81624_))))
    (define gx#core-context-namespace
      (lambda _g84366_
        (let ((_g84365_ (##length _g84366_)))
          (cond ((##fx= _g84365_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84366_))
                ((##fx= _g84365_ 1)
                 (apply (lambda (_ctx81626_)
                          (gx#core-context-namespace__% _ctx81626_))
                        _g84366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84366_))))))
    (define gx#expander-binding?__%
      (lambda (_bind81599_ _is?81600_)
        (if (##structure-direct-instance-of? _bind81599_ 'gx#syntax-binding::t)
            (_is?81600_
             (##unchecked-structure-ref
              _bind81599_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind81605_)
        (let ((_is?81607_ gx#expander?))
          (gx#expander-binding?__% _bind81605_ _is?81607_))))
    (define gx#expander-binding?
      (lambda _g84368_
        (let ((_g84367_ (##length _g84368_)))
          (cond ((##fx= _g84367_ 1)
                 (apply (lambda (_bind81605_)
                          (gx#expander-binding?__0 _bind81605_))
                        _g84368_))
                ((##fx= _g84367_ 2)
                 (apply (lambda (_bind81609_ _is?81610_)
                          (gx#expander-binding?__% _bind81609_ _is?81610_))
                        _g84368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84368_))))))
    (define gx#core-expander-binding?
      (lambda (_bind81596_)
        (gx#expander-binding?__% _bind81596_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind81594_)
        (gx#expander-binding?__% _bind81594_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind81588_)
        (letrec ((_direct-special-form?81590_
                  (lambda (_obj81592_)
                    (##structure-direct-instance-of?
                     _obj81592_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind81588_ _direct-special-form?81590_))))
    (define gx#special-form-binding?
      (lambda (_bind81586_)
        (gx#expander-binding?__% _bind81586_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind81577_)
        (letrec ((_feature?81579_
                  (lambda (_e81581_)
                    (let ((_$e81583_
                           (##structure-instance-of?
                            _e81581_
                            'gx#feature-expander::t)))
                      (if _$e81583_
                          _$e81583_
                          (##structure-instance-of?
                           _e81581_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind81577_ _feature?81579_))))
    (define gx#private-feature-binding?
      (lambda (_bind81575_)
        (gx#expander-binding?__% _bind81575_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id81562_ _bound?81563_)
        (if (gx#identifier? _id81562_)
            (_bound?81563_ (gx#resolve-identifier__0 _id81562_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id81568_)
        (let ((_bound?81570_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id81568_ _bound?81570_))))
    (define gx#core-bound-identifier?
      (lambda _g84370_
        (let ((_g84369_ (##length _g84370_)))
          (cond ((##fx= _g84369_ 1)
                 (apply (lambda (_id81568_)
                          (gx#core-bound-identifier?__0 _id81568_))
                        _g84370_))
                ((##fx= _g84369_ 2)
                 (apply (lambda (_id81572_ _bound?81573_)
                          (gx#core-bound-identifier?__%
                           _id81572_
                           _bound?81573_))
                        _g84370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84370_))))))
    (define gx#core-identifier=?
      (lambda (_x81552_ _y81553_)
        (letrec ((_y=?81555_
                  (lambda (_xid81559_)
                    ((if (list? _y81553_) memq eq?) _xid81559_ _y81553_))))
          (let ((_bind81557_ (gx#resolve-identifier__0 _x81552_)))
            (if (##structure-instance-of? _bind81557_ 'gx#binding::t)
                (_y=?81555_
                 (##unchecked-structure-ref _bind81557_ '1 gx#binding::t '#f))
                (_y=?81555_ (gx#stx-e _x81552_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e81550_)
        (if (interned-symbol? _e81550_)
            (string-index__0 (symbol->string _e81550_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81505_ _src81506_ _ctx81507_ _marks81508_)
        (if (##structure? _stx81505_)
            (let ((_$e81510_ (gx#sealed-syntax-unwrap _stx81505_)))
              (if _$e81510_
                  (values _$e81510_)
                  (if (gx#identifier? _stx81505_)
                      (let ((_id81513_
                             (gx#stx-unwrap__% _stx81505_ _marks81508_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81513_ '1 gx#AST::t '#f)
                         (let ((_$e81515_
                                (##unchecked-structure-ref
                                 _id81513_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e81515_ _$e81515_ _src81506_))
                         _ctx81507_
                         (##unchecked-structure-ref
                          _id81513_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81505_)
                       (let ((_$e81518_ (gx#stx-source _stx81505_)))
                         (if _$e81518_ _$e81518_ _src81506_))
                       _ctx81507_
                       (reverse _marks81508_)))))
            (##structure
             gx#syntax-quote::t
             _stx81505_
             _src81506_
             _ctx81507_
             (reverse _marks81508_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81524_)
        (let* ((_src81526_ '#f)
               (_ctx81528_ (gx#current-expander-context))
               (_marks81530_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81524_
           _src81526_
           _ctx81528_
           _marks81530_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81532_ _src81533_)
        (let* ((_ctx81535_ (gx#current-expander-context))
               (_marks81537_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81532_
           _src81533_
           _ctx81535_
           _marks81537_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81539_ _src81540_ _ctx81541_)
        (let ((_marks81543_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81539_
           _src81540_
           _ctx81541_
           _marks81543_))))
    (define gx#core-quote-syntax
      (lambda _g84372_
        (let ((_g84371_ (##length _g84372_)))
          (cond ((##fx= _g84371_ 1)
                 (apply (lambda (_stx81524_)
                          (gx#core-quote-syntax__0 _stx81524_))
                        _g84372_))
                ((##fx= _g84371_ 2)
                 (apply (lambda (_stx81532_ _src81533_)
                          (gx#core-quote-syntax__1 _stx81532_ _src81533_))
                        _g84372_))
                ((##fx= _g84371_ 3)
                 (apply (lambda (_stx81539_ _src81540_ _ctx81541_)
                          (gx#core-quote-syntax__2
                           _stx81539_
                           _src81540_
                           _ctx81541_))
                        _g84372_))
                ((##fx= _g84371_ 4)
                 (apply (lambda (_stx81545_ _src81546_ _ctx81547_ _marks81548_)
                          (gx#core-quote-syntax__%
                           _stx81545_
                           _src81546_
                           _ctx81547_
                           _marks81548_))
                        _g84372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84372_))))))
    (define gx#core-cons
      (lambda (_hd81501_ _tl81502_)
        (cons (gx#core-quote-syntax__0 _hd81501_) _tl81502_)))
    (define gx#core-list
      (lambda (_hd81498_ . _rest81499_)
        (cons (gx#core-quote-syntax__0 _hd81498_) _rest81499_)))
    (define gx#core-cons*
      (lambda (_hd81495_ . _rest81496_)
        (apply cons* (gx#core-quote-syntax__0 _hd81495_) _rest81496_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81469_ _rel81470_)
        (let ((_path81482_ (gx#stx-e _stx-path81469_))
              (_reldir81483_
               (let _lp81472_ ((_relsrc81474_
                                (let ((_$e81479_
                                       (gx#stx-source _stx-path81469_)))
                                  (if _$e81479_ _$e81479_ _rel81470_))))
                 (if (##structure-instance-of? _relsrc81474_ 'gerbil#AST::t)
                     (_lp81472_
                      (let ((_$e81476_ (gx#stx-source _relsrc81474_)))
                        (if _$e81476_ _$e81476_ (gx#stx-e _relsrc81474_))))
                     (if (source-location-path? _relsrc81474_)
                         (path-directory (source-location-path _relsrc81474_))
                         (if (string? _relsrc81474_)
                             (path-directory _relsrc81474_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81482_ (path-normalize _reldir81483_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81488_)
        (let ((_rel81490_ '#f))
          (gx#core-resolve-path__% _stx-path81488_ _rel81490_))))
    (define gx#core-resolve-path
      (lambda _g84374_
        (let ((_g84373_ (##length _g84374_)))
          (cond ((##fx= _g84373_ 1)
                 (apply (lambda (_stx-path81488_)
                          (gx#core-resolve-path__0 _stx-path81488_))
                        _g84374_))
                ((##fx= _g84373_ 2)
                 (apply (lambda (_stx-path81492_ _rel81493_)
                          (gx#core-resolve-path__% _stx-path81492_ _rel81493_))
                        _g84374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84374_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81425_ _ctx81426_)
        (let* ((_repr8142781434_ _repr81425_)
               (_E8142981438_
                (lambda () (error '"No clause matching" _repr8142781434_)))
               (_K8143081446_
                (lambda (_subs81441_ _phi81442_)
                  (let ((_subst81444_
                         (if (not (null? _subs81441_))
                             (list->hash-table-eq _subs81441_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81444_
                     _ctx81426_
                     _phi81442_
                     '#f)))))
          (if (##pair? _repr8142781434_)
              (let ((_hd8143181449_ (##car _repr8142781434_))
                    (_tl8143281451_ (##cdr _repr8142781434_)))
                (let* ((_phi81454_ _hd8143181449_)
                       (_subs81456_ _tl8143281451_))
                  (_K8143081446_ _subs81456_ _phi81454_)))
              (_E8142981438_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81461_)
        (let ((_ctx81463_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81461_ _ctx81463_))))
    (define gx#core-deserialize-mark
      (lambda _g84376_
        (let ((_g84375_ (##length _g84376_)))
          (cond ((##fx= _g84375_ 1)
                 (apply (lambda (_repr81461_)
                          (gx#core-deserialize-mark__0 _repr81461_))
                        _g84376_))
                ((##fx= _g84375_ 2)
                 (apply (lambda (_repr81465_ _ctx81466_)
                          (gx#core-deserialize-mark__% _repr81465_ _ctx81466_))
                        _g84376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84376_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81422_)
        (gx#stx-rewrap _stx81422_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81420_)
        (gx#stx-unwrap__% _stx81420_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81390_)
        (let* ((_g8139181399_ (gx#current-expander-marks))
               (_else8139381407_ (lambda () _stx81390_))
               (_K8139581412_
                (lambda (_hd81410_) (gx#stx-apply-mark _stx81390_ _hd81410_))))
          (if (##pair? _g8139181399_)
              (let* ((_hd8139681415_ (##car _g8139181399_))
                     (_hd81418_ _hd8139681415_))
                (_K8139581412_ _hd81418_))
              (_else8139381407_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81375_ _E81376_)
        (let ((_bind81378_ (gx#resolve-identifier__0 _stx81375_)))
          (if (##structure-direct-instance-of?
               _bind81378_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind81378_
               '4
               gx#syntax-binding::t
               '#f)
              (_E81376_ _stx81375_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81383_)
        (let ((_E81385_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81383_ _E81385_))))
    (define gx#syntax-local-e
      (lambda _g84378_
        (let ((_g84377_ (##length _g84378_)))
          (cond ((##fx= _g84377_ 1)
                 (apply (lambda (_stx81383_) (gx#syntax-local-e__0 _stx81383_))
                        _g84378_))
                ((##fx= _g84377_ 2)
                 (apply (lambda (_stx81387_ _E81388_)
                          (gx#syntax-local-e__% _stx81387_ _E81388_))
                        _g84378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84378_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81359_ _E81360_)
        (let ((_e81362_ (gx#syntax-local-e__% _stx81359_ _E81360_)))
          (if (##structure-instance-of? _e81362_ 'gx#expander::t)
              (##structure-ref _e81362_ '1 gx#expander::t '#f)
              _e81362_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81367_)
        (let ((_E81369_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81367_ _E81369_))))
    (define gx#syntax-local-value
      (lambda _g84380_
        (let ((_g84379_ (##length _g84380_)))
          (cond ((##fx= _g84379_ 1)
                 (apply (lambda (_stx81367_)
                          (gx#syntax-local-value__0 _stx81367_))
                        _g84380_))
                ((##fx= _g84379_ 2)
                 (apply (lambda (_stx81371_ _E81372_)
                          (gx#syntax-local-value__% _stx81371_ _E81372_))
                        _g84380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84380_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81356_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81356_)))))
