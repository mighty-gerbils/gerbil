(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708165429)
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
      (lambda _$args152440_
        (apply make-instance gx#expander-context::t _$args152440_)))
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
      (lambda _$args152437_
        (apply make-instance gx#root-context::t _$args152437_)))
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
      (lambda _$args152434_
        (apply make-instance gx#phi-context::t _$args152434_)))
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
      (lambda _$args152431_
        (apply make-instance gx#top-context::t _$args152431_)))
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
      (lambda _$args152428_
        (apply make-instance gx#module-context::t _$args152428_)))
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
      (lambda _$args152425_
        (apply make-instance gx#prelude-context::t _$args152425_)))
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
      (lambda _$args152422_
        (apply make-instance gx#local-context::t _$args152422_)))
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
      (lambda (_self152406_ _id152407_ _super152408_)
        (if (##fx< '3 (##structure-length _self152406_))
            (begin
              (##unchecked-structure-set!
               _self152406_
               _id152407_
               '1
               (##structure-type _self152406_)
               '#f)
              (##unchecked-structure-set!
               _self152406_
               (make-table 'test: eq?)
               '2
               (##structure-type _self152406_)
               '#f)
              (##unchecked-structure-set!
               _self152406_
               _super152408_
               '3
               (##structure-type _self152406_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self152406_
                   '3
                   (##vector-length _self152406_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self152413_ _id152414_)
        (let ((_super152416_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self152413_ _id152414_ _super152416_))))
    (define gx#phi-context:::init!
      (lambda _g157051_
        (let ((_g157050_ (##length _g157051_)))
          (cond ((##fx= _g157050_ 2)
                 (apply (lambda (_self152413_ _id152414_)
                          (gx#phi-context:::init!__0 _self152413_ _id152414_))
                        _g157051_))
                ((##fx= _g157050_ 3)
                 (apply (lambda (_self152418_ _id152419_ _super152420_)
                          (gx#phi-context:::init!__%
                           _self152418_
                           _id152419_
                           _super152420_))
                        _g157051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g157051_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self152270_ _super152271_)
        (if (##fx< '3 (##structure-length _self152270_))
            (begin
              (##unchecked-structure-set!
               _self152270_
               (gensym 'L)
               '1
               (##structure-type _self152270_)
               '#f)
              (##unchecked-structure-set!
               _self152270_
               (make-table 'test: eq?)
               '2
               (##structure-type _self152270_)
               '#f)
              (##unchecked-structure-set!
               _self152270_
               _super152271_
               '3
               (##structure-type _self152270_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self152270_
                   '3
                   (##vector-length _self152270_)))))
    (define gx#local-context:::init!__0
      (lambda (_self152276_)
        (let ((_super152278_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self152276_ _super152278_))))
    (define gx#local-context:::init!
      (lambda _g157053_
        (let ((_g157052_ (##length _g157053_)))
          (cond ((##fx= _g157052_ 1)
                 (apply (lambda (_self152276_)
                          (gx#local-context:::init!__0 _self152276_))
                        _g157053_))
                ((##fx= _g157052_ 2)
                 (apply (lambda (_self152280_ _super152281_)
                          (gx#local-context:::init!__%
                           _self152280_
                           _super152281_))
                        _g157053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g157053_))))))
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
      (lambda _$args152144_ (apply make-instance gx#binding::t _$args152144_)))
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
      (lambda _$args152141_
        (apply make-instance gx#runtime-binding::t _$args152141_)))
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
      (lambda _$args152138_
        (apply make-instance gx#local-binding::t _$args152138_)))
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
      (lambda _$args152135_
        (apply make-instance gx#top-binding::t _$args152135_)))
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
      (lambda _$args152132_
        (apply make-instance gx#module-binding::t _$args152132_)))
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
      (lambda _$args152129_
        (apply make-instance gx#extern-binding::t _$args152129_)))
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
      (lambda _$args152126_
        (apply make-instance gx#syntax-binding::t _$args152126_)))
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
      (lambda _$args152123_
        (apply make-instance gx#import-binding::t _$args152123_)))
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
      (lambda _$args152120_
        (apply make-instance gx#alias-binding::t _$args152120_)))
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
      (lambda _$args152117_
        (apply make-instance gx#expander::t _$args152117_)))
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
      (lambda _$args152114_
        (apply make-instance gx#core-expander::t _$args152114_)))
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
      (lambda _$args152111_
        (apply make-instance gx#expression-form::t _$args152111_)))
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
      (lambda _$args152108_
        (apply make-instance gx#special-form::t _$args152108_)))
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
      (lambda _$args152105_
        (apply make-instance gx#definition-form::t _$args152105_)))
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
      (lambda _$args152102_
        (apply make-instance gx#top-special-form::t _$args152102_)))
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
      (lambda _$args152099_
        (apply make-instance gx#module-special-form::t _$args152099_)))
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
      (lambda _$args152096_
        (apply make-instance gx#feature-expander::t _$args152096_)))
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
      (lambda _$args152093_
        (apply make-instance gx#private-feature-expander::t _$args152093_)))
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
      (lambda _$args152090_
        (apply make-instance gx#reserved-expander::t _$args152090_)))
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
      (lambda _$args152087_
        (apply make-instance gx#macro-expander::t _$args152087_)))
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
      (lambda _$args152084_
        (apply make-instance gx#rename-macro-expander::t _$args152084_)))
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
      (lambda _$args152081_
        (apply make-instance gx#user-expander::t _$args152081_)))
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
      (lambda _$args152078_
        (apply make-instance gx#expander-mark::t _$args152078_)))
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
      (lambda (_ctx152063_ _message152064_ _stx152065_ . _details152066_)
        (let ((_ctx152076_
               (let ((_$e152068_ _ctx152063_))
                 (if _$e152068_
                     _$e152068_
                     (let ((_$e152071_ (gx#core-context-top__0)))
                       (if _$e152071_
                           ((lambda (_ctx152074_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx152074_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e152071_)
                           '#f))))))
          (raise (make-syntax-error
                  _message152064_
                  (cons _stx152065_ _details152066_)
                  _ctx152076_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx152050_ _expression?152051_)
        (gx#eval-syntax* (gx#core-expand__% _stx152050_ _expression?152051_))))
    (define gx#eval-syntax__0
      (lambda (_stx152056_)
        (let ((_expression?152058_ '#f))
          (gx#eval-syntax__% _stx152056_ _expression?152058_))))
    (define gx#eval-syntax
      (lambda _g157055_
        (let ((_g157054_ (##length _g157055_)))
          (cond ((##fx= _g157054_ 1)
                 (apply (lambda (_stx152056_) (gx#eval-syntax__0 _stx152056_))
                        _g157055_))
                ((##fx= _g157054_ 2)
                 (apply (lambda (_stx152060_ _expression?152061_)
                          (gx#eval-syntax__% _stx152060_ _expression?152061_))
                        _g157055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g157055_))))))
    (define gx#eval-syntax*
      (lambda (_stx152047_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx152047_))))
    (define gx#core-expand__%
      (lambda (_stx152034_ _expression?152035_)
        (if _expression?152035_
            (gx#core-expand-expression _stx152034_)
            (gx#core-expand-top _stx152034_))))
    (define gx#core-expand__0
      (lambda (_stx152040_)
        (let ((_expression?152042_ '#f))
          (gx#core-expand__% _stx152040_ _expression?152042_))))
    (define gx#core-expand
      (lambda _g157057_
        (let ((_g157056_ (##length _g157057_)))
          (cond ((##fx= _g157056_ 1)
                 (apply (lambda (_stx152040_) (gx#core-expand__0 _stx152040_))
                        _g157057_))
                ((##fx= _g157056_ 2)
                 (apply (lambda (_stx152044_ _expression?152045_)
                          (gx#core-expand__% _stx152044_ _expression?152045_))
                        _g157057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g157057_))))))
    (define gx#core-expand-top
      (lambda (_stx152001_)
        (let* ((_stx152003_ (gx#core-expand*__0 _stx152001_))
               (_e152004152011_ _stx152003_)
               (_E152006152015_
                (lambda () (gx#core-expand-expression _stx152003_)))
               (_E152005152029_
                (lambda ()
                  (if (gx#stx-pair? _e152004152011_)
                      (let ((_e152007152019_ (gx#syntax-e _e152004152011_)))
                        (let ((_hd152008152022_ (##car _e152007152019_))
                              (_tl152009152024_ (##cdr _e152007152019_)))
                          (let ((_form152027_ _hd152008152022_))
                            (if (gx#core-bound-identifier?__0 _form152027_)
                                _stx152003_
                                (_E152006152015_)))))
                      (_E152006152015_)))))
          (_E152005152029_))))
    (define gx#core-expand-expression
      (lambda (_stx151948_)
        (letrec ((_sealed-expression?151950_
                  (lambda (_hd151971_)
                    (if (gx#sealed-syntax? _hd151971_)
                        (let* ((_e151972151979_ _hd151971_)
                               (_E151974151983_ (lambda () '#f))
                               (_E151973151997_
                                (lambda ()
                                  (if (gx#stx-pair? _e151972151979_)
                                      (let ((_e151975151987_
                                             (gx#syntax-e _e151972151979_)))
                                        (let ((_hd151976151990_
                                               (##car _e151975151987_))
                                              (_tl151977151992_
                                               (##cdr _e151975151987_)))
                                          (let ((_form151995_
                                                 _hd151976151990_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form151995_
                                                 gx#expression-form-binding?)
                                                (_E151974151983_)))))
                                      (_E151974151983_)))))
                          (_E151973151997_))
                        '#f)))
                 (_illegal-expression151951_
                  (lambda (_hd151969_ . _g157058_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx151948_
                     _hd151969_)))
                 (_expand-e151952_
                  (lambda (_form151964_ _hd151965_)
                    (let ((_bind151967_
                           (if (##structure-instance-of?
                                _form151964_
                                'gx#binding::t)
                               _form151964_
                               (gx#resolve-identifier__0 _form151964_))))
                      (if (gx#core-expander-binding? _bind151967_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind151967_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd151965_
                            (gx#stx-source _stx151948_)))
                          (if (##structure-direct-instance-of?
                               _bind151967_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind151967_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd151965_
                                 (gx#stx-source _stx151948_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx151948_
                               _form151964_)))))))
          (let ((_hd151954_ (gx#core-expand-head _stx151948_)))
            (if (_sealed-expression?151950_ _hd151954_)
                _hd151954_
                (if (gx#stx-pair? _hd151954_)
                    (let* ((_form151956_ (gx#stx-car _hd151954_))
                           (_bind151958_
                            (if (gx#identifier? _form151956_)
                                (gx#resolve-identifier__0 _form151956_)
                                '#f)))
                      (if (or (not _bind151958_)
                              (not (gx#core-expander-binding? _bind151958_)))
                          (_expand-e151952_ '%%app (cons '%%app _hd151954_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind151958_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd151954_
                               _illegal-expression151951_)
                              (if (gx#expression-form-binding? _bind151958_)
                                  (_expand-e151952_ _bind151958_ _hd151954_)
                                  (if (gx#direct-special-form-binding?
                                       _bind151958_)
                                      (gx#core-expand-expression
                                       (_expand-e151952_
                                        _bind151958_
                                        _hd151954_))
                                      (_illegal-expression151951_
                                       _hd151954_))))))
                    (if (gx#core-bound-identifier?__0 _hd151954_)
                        (_illegal-expression151951_ _hd151954_)
                        (if (gx#identifier? _hd151954_)
                            (_expand-e151952_
                             '%%ref
                             (cons '%%ref (cons _hd151954_ '())))
                            (if (gx#stx-datum? _hd151954_)
                                (_expand-e151952_
                                 '%#quote
                                 (cons '%#quote (cons _hd151954_ '())))
                                (_illegal-expression151951_
                                 _hd151954_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx151943_)
        (call-with-parameters
         (lambda ()
           (let ((_stx151946_ (gx#core-expand-expression _stx151943_)))
             (values _stx151946_ (gx#eval-syntax* _stx151946_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx151924_ _stop?151925_)
        (let _lp151927_ ((_stx151929_ _stx151924_))
          (if (_stop?151925_ _stx151929_)
              _stx151929_
              (let ((_rstx151931_ (gx#core-expand1 _stx151929_)))
                (if (eq? _stx151929_ _rstx151931_)
                    _stx151929_
                    (_lp151927_ _rstx151931_)))))))
    (define gx#core-expand*__0
      (lambda (_stx151936_)
        (let ((_stop?151938_ false))
          (gx#core-expand*__% _stx151936_ _stop?151938_))))
    (define gx#core-expand*
      (lambda _g157060_
        (let ((_g157059_ (##length _g157060_)))
          (cond ((##fx= _g157059_ 1)
                 (apply (lambda (_stx151936_) (gx#core-expand*__0 _stx151936_))
                        _g157060_))
                ((##fx= _g157059_ 2)
                 (apply (lambda (_stx151940_ _stop?151941_)
                          (gx#core-expand*__% _stx151940_ _stop?151941_))
                        _g157060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g157060_))))))
    (define gx#core-expand1
      (lambda (_stx151880_)
        (letrec ((_step151882_
                  (lambda (_hd151919_)
                    (let ((_bind151921_ (gx#resolve-identifier__0 _hd151919_)))
                      (if (##structure-instance-of?
                           _bind151921_
                           'gx#runtime-binding::t)
                          _stx151880_
                          (if (##structure-direct-instance-of?
                               _bind151921_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind151921_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx151880_)
                              (if (not _bind151921_)
                                  _stx151880_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx151880_))))))))
          (let* ((_e151883151891_ _stx151880_)
                 (_E151889151895_ (lambda () _stx151880_))
                 (_E151885151901_
                  (lambda ()
                    (let ((_hd151899_ _e151883151891_))
                      (if (gx#identifier? _hd151899_)
                          (_step151882_ _hd151899_)
                          (_E151889151895_)))))
                 (_E151884151915_
                  (lambda ()
                    (if (gx#stx-pair? _e151883151891_)
                        (let ((_e151886151905_ (gx#syntax-e _e151883151891_)))
                          (let ((_hd151887151908_ (##car _e151886151905_))
                                (_tl151888151910_ (##cdr _e151886151905_)))
                            (let ((_hd151913_ _hd151887151908_))
                              (if (gx#identifier? _hd151913_)
                                  (_step151882_ _hd151913_)
                                  (_E151885151901_)))))
                        (_E151885151901_)))))
            (_E151884151915_)))))
    (define gx#core-expand-head
      (lambda (_stx151846_)
        (letrec ((_stop?151848_
                  (lambda (_stx151850_)
                    (let* ((_e151851151858_ _stx151850_)
                           (_E151853151862_ (lambda () '#f))
                           (_E151852151876_
                            (lambda ()
                              (if (gx#stx-pair? _e151851151858_)
                                  (let ((_e151854151866_
                                         (gx#syntax-e _e151851151858_)))
                                    (let ((_hd151855151869_
                                           (##car _e151854151866_))
                                          (_tl151856151871_
                                           (##cdr _e151854151866_)))
                                      (let ((_hd151874_ _hd151855151869_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd151874_)
                                            (_E151853151862_)))))
                                  (_E151853151862_)))))
                      (_E151852151876_)))))
          (gx#core-expand*__% _stx151846_ _stop?151848_))))
    (define gx#core-expand-block__%
      (lambda (_stx151652_
               _expand-special151653_
               _begin-form151654_
               _expand-e151655_)
        (letrec ((_expand-splice151657_
                  (lambda (_hd151820_ _body151821_ _rest151822_ _r151823_)
                    (if (gx#stx-list? _body151821_)
                        (_K151661_
                         (gx#stx-foldr cons _rest151822_ _body151821_)
                         _r151823_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx151652_
                         _hd151820_))))
                 (_expand-cond-expand151658_
                  (lambda (_hd151816_ _rest151817_ _r151818_)
                    (_K151661_
                     (cons (gx#core-expand-cond-expand% _hd151816_)
                           _rest151817_)
                     _r151818_)))
                 (_expand-include151659_
                  (lambda (_hd151765_ _rest151766_ _r151767_)
                    (let* ((_e151768151778_ _hd151765_)
                           (_E151770151782_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e151768151778_)))
                           (_E151769151812_
                            (lambda ()
                              (if (gx#stx-pair? _e151768151778_)
                                  (let ((_e151771151786_
                                         (gx#syntax-e _e151768151778_)))
                                    (let ((_hd151772151789_
                                           (##car _e151771151786_))
                                          (_tl151773151791_
                                           (##cdr _e151771151786_)))
                                      (if (gx#stx-pair? _tl151773151791_)
                                          (let ((_e151774151794_
                                                 (gx#syntax-e
                                                  _tl151773151791_)))
                                            (let ((_hd151775151797_
                                                   (##car _e151774151794_))
                                                  (_tl151776151799_
                                                   (##cdr _e151774151794_)))
                                              (let ((_path151802_
                                                     _hd151775151797_))
                                                (if (gx#stx-null?
                                                     _tl151776151799_)
                                                    (if (gx#stx-string?
                                                         _path151802_)
                                                        (let* ((_rpath151804_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path151802_
                         (gx#stx-source _hd151765_)))
                       (_block151806_
                        (gx#core-expand-include%__% _hd151765_ _rpath151804_))
                       (_rbody151809_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block151806_
                            _expand-special151653_
                            '#f
                            _expand-e151655_))
                         gx#current-expander-path
                         (cons _rpath151804_ (gx#current-expander-path)))))
                  (_K151661_
                   _rest151766_
                   (foldr1 cons _r151767_ _rbody151809_)))
                (_E151770151782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E151770151782_)))))
                                          (_E151770151782_))))
                                  (_E151770151782_)))))
                      (_E151769151812_))))
                 (_expand-expression151660_
                  (lambda (_hd151761_ _rest151762_ _r151763_)
                    (_K151661_
                     _rest151762_
                     (cons (_expand-e151655_ _hd151761_) _r151763_))))
                 (_K151661_
                  (lambda (_rest151691_ _r151692_)
                    (let* ((_e151693151700_ _rest151691_)
                           (_E151695151704_
                            (lambda ()
                              (if _begin-form151654_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form151654_
                                    (reverse _r151692_))
                                   (gx#stx-source _stx151652_))
                                  _r151692_)))
                           (_E151694151757_
                            (lambda ()
                              (if (gx#stx-pair? _e151693151700_)
                                  (let ((_e151696151708_
                                         (gx#syntax-e _e151693151700_)))
                                    (let ((_hd151697151711_
                                           (##car _e151696151708_))
                                          (_tl151698151713_
                                           (##cdr _e151696151708_)))
                                      (let* ((_hd151716_ _hd151697151711_)
                                             (_rest151718_ _tl151698151713_))
                                        (if '#t
                                            (let* ((_hd151720_
                                                    (gx#core-expand-head
                                                     _hd151716_))
                                                   (_e151721151728_ _hd151720_)
                                                   (_E151723151732_
                                                    (lambda ()
                                                      (_expand-expression151660_
                                                       _hd151720_
                                                       _rest151718_
                                                       _r151692_)))
                                                   (_E151722151753_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e151721151728_)
                                                          (let ((_e151724151736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e151721151728_)))
                    (let ((_hd151725151739_ (##car _e151724151736_))
                          (_tl151726151741_ (##cdr _e151724151736_)))
                      (let* ((_form151744_ _hd151725151739_)
                             (_body151746_ _tl151726151741_))
                        (if '#t
                            (let ((_bind151748_
                                   (if (gx#identifier? _form151744_)
                                       (gx#resolve-identifier__0 _form151744_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind151748_)
                                  (let ((_$e151750_
                                         (##unchecked-structure-ref
                                          _bind151748_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e151750_)
                                        (_expand-splice151657_
                                         _hd151720_
                                         _body151746_
                                         _rest151718_
                                         _r151692_)
                                        (if (eq? '%#cond-expand _$e151750_)
                                            (_expand-cond-expand151658_
                                             _hd151720_
                                             _rest151718_
                                             _r151692_)
                                            (if (eq? '%#include _$e151750_)
                                                (_expand-include151659_
                                                 _hd151720_
                                                 _rest151718_
                                                 _r151692_)
                                                (_expand-special151653_
                                                 _hd151720_
                                                 _K151661_
                                                 _rest151718_
                                                 _r151692_)))))
                                  (_expand-expression151660_
                                   _hd151720_
                                   _rest151718_
                                   _r151692_)))
                            (_E151723151732_)))))
                  (_E151723151732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E151722151753_))
                                            (_E151695151704_)))))
                                  (_E151695151704_)))))
                      (_E151694151757_)))))
          (let* ((_e151662151669_ _stx151652_)
                 (_E151664151673_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151662151669_)))
                 (_E151663151687_
                  (lambda ()
                    (if (gx#stx-pair? _e151662151669_)
                        (let ((_e151665151677_ (gx#syntax-e _e151662151669_)))
                          (let ((_hd151666151680_ (##car _e151665151677_))
                                (_tl151667151682_ (##cdr _e151665151677_)))
                            (let ((_body151685_ _tl151667151682_))
                              (if (gx#stx-list? _body151685_)
                                  (_K151661_ _body151685_ '())
                                  (_E151664151673_)))))
                        (_E151664151673_)))))
            (_E151663151687_)))))
    (define gx#core-expand-block__0
      (lambda (_stx151828_ _expand-special151829_)
        (let* ((_begin-form151831_ '%#begin)
               (_expand-e151833_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx151828_
           _expand-special151829_
           _begin-form151831_
           _expand-e151833_))))
    (define gx#core-expand-block__1
      (lambda (_stx151835_ _expand-special151836_ _begin-form151837_)
        (let ((_expand-e151839_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx151835_
           _expand-special151836_
           _begin-form151837_
           _expand-e151839_))))
    (define gx#core-expand-block
      (lambda _g157062_
        (let ((_g157061_ (##length _g157062_)))
          (cond ((##fx= _g157061_ 2)
                 (apply (lambda (_stx151828_ _expand-special151829_)
                          (gx#core-expand-block__0
                           _stx151828_
                           _expand-special151829_))
                        _g157062_))
                ((##fx= _g157061_ 3)
                 (apply (lambda (_stx151835_
                                 _expand-special151836_
                                 _begin-form151837_)
                          (gx#core-expand-block__1
                           _stx151835_
                           _expand-special151836_
                           _begin-form151837_))
                        _g157062_))
                ((##fx= _g157061_ 4)
                 (apply (lambda (_stx151841_
                                 _expand-special151842_
                                 _begin-form151843_
                                 _expand-e151844_)
                          (gx#core-expand-block__%
                           _stx151841_
                           _expand-special151842_
                           _begin-form151843_
                           _expand-e151844_))
                        _g157062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g157062_))))))
    (define gx#core-expand-block*
      (lambda (_stx151600_ _expand-special151601_)
        (let* ((_g151602151613_
                (gx#core-expand-block__1
                 _stx151600_
                 _expand-special151601_
                 '#f))
               (_E151606151617_
                (lambda () (error '"No clause matching" _g151602151613_))))
          (let ((_K151611151648_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx151600_)))
                (_K151608151634_ (lambda (_expr151632_) _expr151632_))
                (_K151607151623_
                 (lambda (_body151621_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body151621_))
                    (gx#stx-source _stx151600_)))))
            (let ((_try-match151604151644_
                   (lambda ()
                     (if (##pair? _g151602151613_)
                         (let ((_tl151610151639_ (##cdr _g151602151613_))
                               (_hd151609151637_ (##car _g151602151613_)))
                           (if (##null? _tl151610151639_)
                               (let ((_expr151642_ _hd151609151637_))
                                 (_K151608151634_ _expr151642_))
                               (let ((_body151626_ _g151602151613_))
                                 (_K151607151623_ _body151626_))))
                         (let ((_body151626_ _g151602151613_))
                           (_K151607151623_ _body151626_))))))
              (if (##null? _g151602151613_)
                  (_K151611151648_)
                  (_try-match151604151644_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx151428_)
        (letrec ((_satisfied?151430_
                  (lambda (_condition151528_)
                    (let* ((_e151529151544_ _condition151528_)
                           (_E151539151548_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e151529151544_)))
                           (_E151532151567_
                            (lambda ()
                              (if (gx#stx-pair? _e151529151544_)
                                  (let ((_e151540151552_
                                         (gx#syntax-e _e151529151544_)))
                                    (let ((_hd151541151555_
                                           (##car _e151540151552_))
                                          (_tl151542151557_
                                           (##cdr _e151540151552_)))
                                      (let* ((_combinator151560_
                                              _hd151541151555_)
                                             (_body151562_ _tl151542151557_))
                                        (if (gx#stx-list? _body151562_)
                                            (let ((_$e151564_
                                                   (gx#stx-e
                                                    _combinator151560_)))
                                              (if (eq? 'not _$e151564_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?151430_
                                                        _body151562_))
                                                  (if (eq? 'and _$e151564_)
                                                      (gx#stx-andmap
                                                       _satisfied?151430_
                                                       _body151562_)
                                                      (if (eq? 'or _$e151564_)
                                                          (gx#stx-ormap
                                                           _satisfied?151430_
                                                           _body151562_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e151564_)
                      (gx#stx-andmap gx#core-resolve-identifier _body151562_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx151428_
                       _combinator151560_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E151539151548_)))))
                                  (_E151539151548_))))
                           (_E151531151590_
                            (lambda ()
                              (if (gx#stx-pair? _e151529151544_)
                                  (let ((_e151533151571_
                                         (gx#syntax-e _e151529151544_)))
                                    (let ((_hd151534151574_
                                           (##car _e151533151571_))
                                          (_tl151535151576_
                                           (##cdr _e151533151571_)))
                                      (if (and (gx#identifier?
                                                _hd151534151574_)
                                               (gx#core-identifier=?
                                                _hd151534151574_
                                                'unquote))
                                          (if (gx#stx-pair? _tl151535151576_)
                                              (let ((_e151536151579_
                                                     (gx#syntax-e
                                                      _tl151535151576_)))
                                                (let ((_hd151537151582_
                                                       (##car _e151536151579_))
                                                      (_tl151538151584_
                                                       (##cdr _e151536151579_)))
                                                  (let ((_expr151587_
                                                         _hd151537151582_))
                                                    (if (gx#stx-null?
                                                         _tl151538151584_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr151587_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E151532151567_))
                (_E151532151567_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E151532151567_))
                                          (_E151532151567_))))
                                  (_E151532151567_))))
                           (_E151530151596_
                            (lambda ()
                              (let ((_id151594_ _e151529151544_))
                                (if (gx#identifier? _id151594_)
                                    (gx#core-bound-identifier?__%
                                     _id151594_
                                     gx#feature-binding?)
                                    (_E151531151590_))))))
                      (_E151530151596_))))
                 (_loop151431_
                  (lambda (_rest151461_)
                    (let* ((_e151462151470_ _rest151461_)
                           (_E151468151474_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e151462151470_)))
                           (_E151464151478_
                            (lambda ()
                              (if (gx#stx-null? _e151462151470_)
                                  (if '#t '() (_E151468151474_))
                                  (_E151468151474_))))
                           (_E151463151524_
                            (lambda ()
                              (if (gx#stx-pair? _e151462151470_)
                                  (let ((_e151465151482_
                                         (gx#syntax-e _e151462151470_)))
                                    (let ((_hd151466151485_
                                           (##car _e151465151482_))
                                          (_tl151467151487_
                                           (##cdr _e151465151482_)))
                                      (let* ((_hd151490_ _hd151466151485_)
                                             (_rest151492_ _tl151467151487_))
                                        (if '#t
                                            (let* ((_e151493151500_ _hd151490_)
                                                   (_E151495151504_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e151493151500_)))
                                                   (_E151494151520_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e151493151500_)
                                                          (let ((_e151496151508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e151493151500_)))
                    (let ((_hd151497151511_ (##car _e151496151508_))
                          (_tl151498151513_ (##cdr _e151496151508_)))
                      (let* ((_condition151516_ _hd151497151511_)
                             (_body151518_ _tl151498151513_))
                        (if '#t
                            (if (gx#stx-eq? _condition151516_ 'else)
                                (if (gx#stx-null? _rest151492_)
                                    _body151518_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx151428_
                                     _hd151490_))
                                (if (_satisfied?151430_ _condition151516_)
                                    _body151518_
                                    (_loop151431_ _rest151492_)))
                            (_E151495151504_)))))
                  (_E151495151504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E151494151520_))
                                            (_E151464151478_)))))
                                  (_E151464151478_)))))
                      (_E151463151524_)))))
          (let* ((_e151432151439_ _stx151428_)
                 (_E151434151443_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151432151439_)))
                 (_E151433151457_
                  (lambda ()
                    (if (gx#stx-pair? _e151432151439_)
                        (let ((_e151435151447_ (gx#syntax-e _e151432151439_)))
                          (let ((_hd151436151450_ (##car _e151435151447_))
                                (_tl151437151452_ (##cdr _e151435151447_)))
                            (let ((_clauses151455_ _tl151437151452_))
                              (if (gx#stx-list? _clauses151455_)
                                  (gx#core-cons
                                   'begin
                                   (_loop151431_ _clauses151455_))
                                  (_E151434151443_)))))
                        (_E151434151443_)))))
            (_E151433151457_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx151371_ _rpath151372_)
        (let* ((_e151373151383_ _stx151371_)
               (_E151375151387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151373151383_)))
               (_E151374151414_
                (lambda ()
                  (if (gx#stx-pair? _e151373151383_)
                      (let ((_e151376151391_ (gx#syntax-e _e151373151383_)))
                        (let ((_hd151377151394_ (##car _e151376151391_))
                              (_tl151378151396_ (##cdr _e151376151391_)))
                          (if (gx#stx-pair? _tl151378151396_)
                              (let ((_e151379151399_
                                     (gx#syntax-e _tl151378151396_)))
                                (let ((_hd151380151402_
                                       (##car _e151379151399_))
                                      (_tl151381151404_
                                       (##cdr _e151379151399_)))
                                  (let ((_path151407_ _hd151380151402_))
                                    (if (gx#stx-null? _tl151381151404_)
                                        (if (gx#stx-string? _path151407_)
                                            (let ((_rpath151412_
                                                   (let ((_$e151409_
                                                          _rpath151372_))
                                                     (if _$e151409_
                                                         _$e151409_
                                                         (gx#core-resolve-path__%
                                                          _path151407_
                                                          (gx#stx-source
                                                           _stx151371_))))))
                                              (if (member _rpath151412_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx151371_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath151412_))
                                                    (gx#stx-source
                                                     _stx151371_)))))
                                            (_E151375151387_))
                                        (_E151375151387_)))))
                              (_E151375151387_))))
                      (_E151375151387_)))))
          (_E151374151414_))))
    (define gx#core-expand-include%__0
      (lambda (_stx151421_)
        (let ((_rpath151423_ '#f))
          (gx#core-expand-include%__% _stx151421_ _rpath151423_))))
    (define gx#core-expand-include%
      (lambda _g157064_
        (let ((_g157063_ (##length _g157064_)))
          (cond ((##fx= _g157063_ 1)
                 (apply (lambda (_stx151421_)
                          (gx#core-expand-include%__0 _stx151421_))
                        _g157064_))
                ((##fx= _g157063_ 2)
                 (apply (lambda (_stx151425_ _rpath151426_)
                          (gx#core-expand-include%__%
                           _stx151425_
                           _rpath151426_))
                        _g157064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g157064_))))))
    (define gx#core-apply-expander__%
      (lambda (_K151340_ _stx151341_ _method151342_)
        (if (procedure? _K151340_)
            (let ((_$e151344_ (gx#stx-source _stx151341_)))
              (if _$e151344_
                  ((lambda (_g151346151348_)
                     (gx#stx-wrap-source
                      (_K151340_ _stx151341_)
                      _g151346151348_))
                   _$e151344_)
                  (_K151340_ _stx151341_)))
            (let ((_$e151351_ (bound-method-ref _K151340_ _method151342_)))
              (if _$e151351_
                  ((lambda (_g151353151355_)
                     (gx#core-apply-expander__%
                      _g151353151355_
                      _stx151341_
                      _method151342_))
                   _$e151351_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx151341_
                   _method151342_))))))
    (define gx#core-apply-expander__0
      (lambda (_K151361_ _stx151362_)
        (let ((_method151364_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K151361_ _stx151362_ _method151364_))))
    (define gx#core-apply-expander
      (lambda _g157066_
        (let ((_g157065_ (##length _g157066_)))
          (cond ((##fx= _g157065_ 2)
                 (apply (lambda (_K151361_ _stx151362_)
                          (gx#core-apply-expander__0 _K151361_ _stx151362_))
                        _g157066_))
                ((##fx= _g157065_ 3)
                 (apply (lambda (_K151366_ _stx151367_ _method151368_)
                          (gx#core-apply-expander__%
                           _K151366_
                           _stx151367_
                           _method151368_))
                        _g157066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g157066_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self151336_ _stx151337_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx151337_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self151189_ _stx151190_)
        (let* ((_self151191151197_ _self151189_)
               (_E151193151201_
                (lambda () (error '"No clause matching" _self151191151197_)))
               (_K151194151206_
                (lambda (_K151204_)
                  (gx#core-apply-expander__0 _K151204_ _stx151190_))))
          (if (##structure-instance-of? _self151191151197_ 'gx#core-macro::t)
              (let* ((_e151195151209_
                      (##unchecked-structure-ref
                       _self151191151197_
                       '1
                       gx#expander::t
                       '#f))
                     (_K151212_ _e151195151209_))
                (_K151194151206_ _K151212_))
              (_E151193151201_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self151042_ _stx151043_)
        (if (gx#sealed-syntax? _stx151043_)
            _stx151043_
            (let* ((_self151044151050_ _self151042_)
                   (_E151046151054_
                    (lambda ()
                      (error '"No clause matching" _self151044151050_)))
                   (_K151047151059_
                    (lambda (_K151057_)
                      (gx#core-apply-expander__0 _K151057_ _stx151043_))))
              (if (##structure-instance-of?
                   _self151044151050_
                   'gx#core-expander::t)
                  (let* ((_e151048151062_
                          (##unchecked-structure-ref
                           _self151044151050_
                           '1
                           gx#expander::t
                           '#f))
                         (_K151065_ _e151048151062_))
                    (_K151047151059_ _K151065_))
                  (_E151046151054_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self150904_ _stx150905_ _top?150906_)
        (if (_top?150906_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self150904_ _stx150905_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx150905_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self150911_ _stx150912_)
        (let ((_top?150914_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self150911_
           _stx150912_
           _top?150914_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g157068_
        (let ((_g157067_ (##length _g157068_)))
          (cond ((##fx= _g157067_ 2)
                 (apply (lambda (_self150911_ _stx150912_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self150911_
                           _stx150912_))
                        _g157068_))
                ((##fx= _g157067_ 3)
                 (apply (lambda (_self150916_ _stx150917_ _top?150918_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self150916_
                           _stx150917_
                           _top?150918_))
                        _g157068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g157068_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self150778_ _stx150779_)
        (gx#top-special-form::apply-macro-expander__%
         _self150778_
         _stx150779_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self150603_ _stx150604_)
        (let* ((_self150605150611_ _self150603_)
               (_E150607150615_
                (lambda () (error '"No clause matching" _self150605150611_)))
               (_K150608150648_
                (lambda (_id150618_)
                  (let* ((_e150619150626_ _stx150604_)
                         (_E150621150630_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e150619150626_)))
                         (_E150620150644_
                          (lambda ()
                            (if (gx#stx-pair? _e150619150626_)
                                (let ((_e150622150634_
                                       (gx#syntax-e _e150619150626_)))
                                  (let ((_hd150623150637_
                                         (##car _e150622150634_))
                                        (_tl150624150639_
                                         (##cdr _e150622150634_)))
                                    (let ((_body150642_ _tl150624150639_))
                                      (if '#t
                                          (gx#core-cons
                                           _id150618_
                                           _body150642_)
                                          (_E150621150630_)))))
                                (_E150621150630_)))))
                    (_E150620150644_)))))
          (if (##structure-instance-of?
               _self150605150611_
               'gx#rename-macro-expander::t)
              (let* ((_e150609150651_
                      (##unchecked-structure-ref
                       _self150605150611_
                       '1
                       gx#expander::t
                       '#f))
                     (_id150654_ _e150609150651_))
                (_K150608150648_ _id150654_))
              (_E150607150615_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self150429_ _stx150430_ _method150431_)
        (let* ((_self150432150440_ _self150429_)
               (_E150434150444_
                (lambda () (error '"No clause matching" _self150432150440_)))
               (_K150435150451_
                (lambda (_phi150447_ _ctx150448_ _K150449_)
                  (gx#core-apply-user-macro
                   _K150449_
                   _stx150430_
                   _ctx150448_
                   _phi150447_
                   _method150431_))))
          (if (##structure-instance-of?
               _self150432150440_
               'gx#macro-expander::t)
              (let* ((_e150436150454_
                      (##unchecked-structure-ref
                       _self150432150440_
                       '1
                       gx#expander::t
                       '#f))
                     (_K150457_ _e150436150454_)
                     (_e150437150459_
                      (##unchecked-structure-ref
                       _self150432150440_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx150462_ _e150437150459_)
                     (_e150438150464_
                      (##unchecked-structure-ref
                       _self150432150440_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi150467_ _e150438150464_))
                (_K150435150451_ _phi150467_ _ctx150462_ _K150457_))
              (_E150434150444_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self150472_ _stx150473_)
        (let ((_method150475_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self150472_
           _stx150473_
           _method150475_))))
    (define gx#core-apply-user-expander
      (lambda _g157070_
        (let ((_g157069_ (##length _g157070_)))
          (cond ((##fx= _g157069_ 2)
                 (apply (lambda (_self150472_ _stx150473_)
                          (gx#core-apply-user-expander__0
                           _self150472_
                           _stx150473_))
                        _g157070_))
                ((##fx= _g157069_ 3)
                 (apply (lambda (_self150477_ _stx150478_ _method150479_)
                          (gx#core-apply-user-expander__%
                           _self150477_
                           _stx150478_
                           _method150479_))
                        _g157070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g157070_))))))
    (define gx#core-apply-user-macro
      (lambda (_K150419_ _stx150420_ _ctx150421_ _phi150422_ _method150423_)
        (let ((_mark150425_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx150421_
                _phi150422_
                _stx150420_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K150419_
               (gx#stx-apply-mark _stx150420_ _mark150425_)
               _method150423_)
              _mark150425_))
           gx#current-expander-marks
           (cons _mark150425_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx150271_ _phi150272_ _ctx150273_)
        (let _lp150275_ ((_bind150277_
                          (gx#core-resolve-identifier__%
                           _stx150271_
                           _phi150272_
                           _ctx150273_)))
          (if (##structure-direct-instance-of?
               _bind150277_
               'gx#import-binding::t)
              (_lp150275_
               (##unchecked-structure-ref
                _bind150277_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind150277_
                   'gx#alias-binding::t)
                  (_lp150275_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind150277_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi150272_
                    _ctx150273_))
                  _bind150277_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx150282_)
        (let* ((_phi150284_ (gx#current-expander-phi))
               (_ctx150286_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx150282_ _phi150284_ _ctx150286_))))
    (define gx#resolve-identifier__1
      (lambda (_stx150288_ _phi150289_)
        (let ((_ctx150291_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx150288_ _phi150289_ _ctx150291_))))
    (define gx#resolve-identifier
      (lambda _g157072_
        (let ((_g157071_ (##length _g157072_)))
          (cond ((##fx= _g157071_ 1)
                 (apply (lambda (_stx150282_)
                          (gx#resolve-identifier__0 _stx150282_))
                        _g157072_))
                ((##fx= _g157071_ 2)
                 (apply (lambda (_stx150288_ _phi150289_)
                          (gx#resolve-identifier__1 _stx150288_ _phi150289_))
                        _g157072_))
                ((##fx= _g157071_ 3)
                 (apply (lambda (_stx150293_ _phi150294_ _ctx150295_)
                          (gx#resolve-identifier__%
                           _stx150293_
                           _phi150294_
                           _ctx150295_))
                        _g157072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g157072_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx150229_ _val150230_ _rebind?150231_ _phi150232_ _ctx150233_)
        (let ((_rebind?150235_
               (if (not _rebind?150231_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?150231_) _rebind?150231_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx150229_)
           _val150230_
           _rebind?150235_
           _phi150232_
           _ctx150233_))))
    (define gx#bind-identifier!__0
      (lambda (_stx150240_ _val150241_)
        (let* ((_rebind?150243_ '#f)
               (_phi150245_ (gx#current-expander-phi))
               (_ctx150247_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx150240_
           _val150241_
           _rebind?150243_
           _phi150245_
           _ctx150247_))))
    (define gx#bind-identifier!__1
      (lambda (_stx150249_ _val150250_ _rebind?150251_)
        (let* ((_phi150253_ (gx#current-expander-phi))
               (_ctx150255_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx150249_
           _val150250_
           _rebind?150251_
           _phi150253_
           _ctx150255_))))
    (define gx#bind-identifier!__2
      (lambda (_stx150257_ _val150258_ _rebind?150259_ _phi150260_)
        (let ((_ctx150262_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx150257_
           _val150258_
           _rebind?150259_
           _phi150260_
           _ctx150262_))))
    (define gx#bind-identifier!
      (lambda _g157074_
        (let ((_g157073_ (##length _g157074_)))
          (cond ((##fx= _g157073_ 2)
                 (apply (lambda (_stx150240_ _val150241_)
                          (gx#bind-identifier!__0 _stx150240_ _val150241_))
                        _g157074_))
                ((##fx= _g157073_ 3)
                 (apply (lambda (_stx150249_ _val150250_ _rebind?150251_)
                          (gx#bind-identifier!__1
                           _stx150249_
                           _val150250_
                           _rebind?150251_))
                        _g157074_))
                ((##fx= _g157073_ 4)
                 (apply (lambda (_stx150257_
                                 _val150258_
                                 _rebind?150259_
                                 _phi150260_)
                          (gx#bind-identifier!__2
                           _stx150257_
                           _val150258_
                           _rebind?150259_
                           _phi150260_))
                        _g157074_))
                ((##fx= _g157073_ 5)
                 (apply (lambda (_stx150264_
                                 _val150265_
                                 _rebind?150266_
                                 _phi150267_
                                 _ctx150268_)
                          (gx#bind-identifier!__%
                           _stx150264_
                           _val150265_
                           _rebind?150266_
                           _phi150267_
                           _ctx150268_))
                        _g157074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g157074_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx150201_ _phi150202_ _ctx150203_)
        (let _lp150205_ ((_e150207_ _stx150201_)
                         (_marks150208_ (gx#current-expander-marks)))
          (if (symbol? _e150207_)
              (gx#core-resolve-binding
               _e150207_
               _phi150202_
               _phi150202_
               _ctx150203_
               (reverse _marks150208_))
              (if (gx#identifier-quote? _e150207_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e150207_ '1 gx#AST::t '#f)
                   _phi150202_
                   '0
                   (##unchecked-structure-ref
                    _e150207_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e150207_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e150207_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e150207_ '1 gx#AST::t '#f)
                       _phi150202_
                       _phi150202_
                       _ctx150203_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e150207_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks150208_))
                      (if (##structure-direct-instance-of?
                           _e150207_
                           'gx#syntax-wrap::t)
                          (_lp150205_
                           (##unchecked-structure-ref
                            _e150207_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e150207_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks150208_))
                          (if (##structure-instance-of?
                               _e150207_
                               'gerbil#AST::t)
                              (_lp150205_
                               (##unchecked-structure-ref
                                _e150207_
                                '1
                                gx#AST::t
                                '#f)
                               _marks150208_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx150201_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx150213_)
        (let* ((_phi150215_ (gx#current-expander-phi))
               (_ctx150217_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx150213_
           _phi150215_
           _ctx150217_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx150219_ _phi150220_)
        (let ((_ctx150222_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx150219_
           _phi150220_
           _ctx150222_))))
    (define gx#core-resolve-identifier
      (lambda _g157076_
        (let ((_g157075_ (##length _g157076_)))
          (cond ((##fx= _g157075_ 1)
                 (apply (lambda (_stx150213_)
                          (gx#core-resolve-identifier__0 _stx150213_))
                        _g157076_))
                ((##fx= _g157075_ 2)
                 (apply (lambda (_stx150219_ _phi150220_)
                          (gx#core-resolve-identifier__1
                           _stx150219_
                           _phi150220_))
                        _g157076_))
                ((##fx= _g157075_ 3)
                 (apply (lambda (_stx150224_ _phi150225_ _ctx150226_)
                          (gx#core-resolve-identifier__%
                           _stx150224_
                           _phi150225_
                           _ctx150226_))
                        _g157076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g157076_))))))
    (define gx#core-resolve-binding
      (lambda (_id150114_
               _phi150115_
               _src-phi150116_
               _ctx150117_
               _marks150118_)
        (letrec ((_resolve150120_
                  (lambda (_ctx150188_ _src-phi150189_ _key150190_)
                    (let _lp150192_ ((_ctx150194_
                                      (gx#core-context-shift
                                       _ctx150188_
                                       _phi150115_))
                                     (_dphi150195_
                                      (fx- _phi150115_ _src-phi150189_)))
                      (let ((_$e150197_
                             (gx#core-context-resolve
                              _ctx150194_
                              _key150190_)))
                        (if _$e150197_
                            (values _$e150197_)
                            (if (fxzero? _dphi150195_)
                                '#f
                                (if (fxpositive? _dphi150195_)
                                    (_lp150192_
                                     (gx#core-context-shift _ctx150194_ '-1)
                                     (fx- _dphi150195_ '1))
                                    (_lp150192_
                                     (gx#core-context-shift _ctx150194_ '1)
                                     (fx+ _dphi150195_ '1))))))))))
          (let _lp150122_ ((_ctx150124_ _ctx150117_)
                           (_src-phi150125_ _src-phi150116_)
                           (_rest150126_ _marks150118_))
            (let* ((_rest150127150135_ _rest150126_)
                   (_else150129150143_
                    (lambda ()
                      (_resolve150120_
                       _ctx150124_
                       _src-phi150125_
                       _id150114_)))
                   (_K150131150176_
                    (lambda (_rest150146_ _hd150147_)
                      (let* ((_hd150148150154_ _hd150147_)
                             (_E150150150158_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd150148150154_)))
                             (_K150151150168_
                              (lambda (_subst150161_)
                                (let ((_$e150165_
                                       (let ((_key150163_
                                              (if _subst150161_
                                                  (table-ref
                                                   _subst150161_
                                                   _id150114_
                                                   '#f)
                                                  '#f)))
                                         (if _key150163_
                                             (_resolve150120_
                                              _ctx150124_
                                              _src-phi150125_
                                              _key150163_)
                                             '#f))))
                                  (if _$e150165_
                                      _$e150165_
                                      (_lp150122_
                                       (##unchecked-structure-ref
                                        _hd150147_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd150147_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest150146_))))))
                        (if (##structure-instance-of?
                             _hd150148150154_
                             'gx#expander-mark::t)
                            (let* ((_e150152150171_
                                    (##unchecked-structure-ref
                                     _hd150148150154_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst150174_ _e150152150171_))
                              (_K150151150168_ _subst150174_))
                            (_E150150150158_))))))
              (if (##pair? _rest150127150135_)
                  (let ((_hd150132150179_ (##car _rest150127150135_))
                        (_tl150133150181_ (##cdr _rest150127150135_)))
                    (let* ((_hd150184_ _hd150132150179_)
                           (_rest150186_ _tl150133150181_))
                      (_K150131150176_ _rest150186_ _hd150184_)))
                  (_else150129150143_)))))))
    (define gx#core-bind!__%
      (lambda (_key149990_ _val149991_ _rebind?149992_ _phi149993_ _ctx149994_)
        (letrec ((_update-binding149996_
                  (lambda (_xval150067_)
                    (if (or (_rebind?149992_
                             _ctx149994_
                             _xval150067_
                             _val149991_)
                            (and (##structure-direct-instance-of?
                                  _xval150067_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval150067_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val149991_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val149991_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval150067_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val149991_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val149991_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval150067_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val149991_
                        (if (and (##structure-direct-instance-of?
                                  _val149991_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val149991_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval150067_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val149991_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval150067_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval150067_
                            (if (and (##structure-direct-instance-of?
                                      _val149991_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval150067_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key149990_
                                 (cons (##unchecked-structure-ref
                                        _val149991_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val149991_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval150067_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval150067_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval150067_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval150067_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key149990_
                                 _val149991_
                                 _xval150067_))))))
                 (_gensubst149997_
                  (lambda (_subst150062_ _id150063_)
                    (let ((_eid150065_
                           (gensym (if (uninterned-symbol? _id150063_)
                                       '%
                                       _id150063_))))
                      (table-set! _subst150062_ _id150063_ _eid150065_)
                      _eid150065_)))
                 (_subst!149998_
                  (lambda (_key150000_)
                    (let* ((_key150001150009_ _key150000_)
                           (_else150003150017_ (lambda () _key150000_))
                           (_K150005150050_
                            (lambda (_mark150020_ _id150021_)
                              (let* ((_mark150022150028_ _mark150020_)
                                     (_E150024150032_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark150022150028_)))
                                     (_K150025150042_
                                      (lambda (_subst150035_)
                                        (if (not _subst150035_)
                                            (let ((_subst150037_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark150020_
                                               _subst150037_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst149997_
                                               _subst150037_
                                               _id150021_))
                                            (let ((_$e150039_
                                                   (table-ref
                                                    _subst150035_
                                                    _id150021_
                                                    '#f)))
                                              (if _$e150039_
                                                  (values _$e150039_)
                                                  (_gensubst149997_
                                                   _subst150035_
                                                   _id150021_)))))))
                                (if (##structure-instance-of?
                                     _mark150022150028_
                                     'gx#expander-mark::t)
                                    (let* ((_e150026150045_
                                            (##unchecked-structure-ref
                                             _mark150022150028_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst150048_ _e150026150045_))
                                      (_K150025150042_ _subst150048_))
                                    (_E150024150032_))))))
                      (if (##pair? _key150001150009_)
                          (let ((_hd150006150053_ (##car _key150001150009_))
                                (_tl150007150055_ (##cdr _key150001150009_)))
                            (let* ((_id150058_ _hd150006150053_)
                                   (_mark150060_ _tl150007150055_))
                              (_K150005150050_ _mark150060_ _id150058_)))
                          (_else150003150017_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx149994_ _phi149993_)
           (_subst!149998_ _key149990_)
           _val149991_
           _update-binding149996_))))
    (define gx#core-bind!__0
      (lambda (_key150084_ _val150085_)
        (let* ((_rebind?150087_ false)
               (_phi150089_ (gx#current-expander-phi))
               (_ctx150091_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key150084_
           _val150085_
           _rebind?150087_
           _phi150089_
           _ctx150091_))))
    (define gx#core-bind!__1
      (lambda (_key150093_ _val150094_ _rebind?150095_)
        (let* ((_phi150097_ (gx#current-expander-phi))
               (_ctx150099_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key150093_
           _val150094_
           _rebind?150095_
           _phi150097_
           _ctx150099_))))
    (define gx#core-bind!__2
      (lambda (_key150101_ _val150102_ _rebind?150103_ _phi150104_)
        (let ((_ctx150106_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key150101_
           _val150102_
           _rebind?150103_
           _phi150104_
           _ctx150106_))))
    (define gx#core-bind!
      (lambda _g157078_
        (let ((_g157077_ (##length _g157078_)))
          (cond ((##fx= _g157077_ 2)
                 (apply (lambda (_key150084_ _val150085_)
                          (gx#core-bind!__0 _key150084_ _val150085_))
                        _g157078_))
                ((##fx= _g157077_ 3)
                 (apply (lambda (_key150093_ _val150094_ _rebind?150095_)
                          (gx#core-bind!__1
                           _key150093_
                           _val150094_
                           _rebind?150095_))
                        _g157078_))
                ((##fx= _g157077_ 4)
                 (apply (lambda (_key150101_
                                 _val150102_
                                 _rebind?150103_
                                 _phi150104_)
                          (gx#core-bind!__2
                           _key150101_
                           _val150102_
                           _rebind?150103_
                           _phi150104_))
                        _g157078_))
                ((##fx= _g157077_ 5)
                 (apply (lambda (_key150108_
                                 _val150109_
                                 _rebind?150110_
                                 _phi150111_
                                 _ctx150112_)
                          (gx#core-bind!__%
                           _key150108_
                           _val150109_
                           _rebind?150110_
                           _phi150111_
                           _ctx150112_))
                        _g157078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g157078_))))))
    (define gx#core-identifier-key
      (lambda (_stx149924_)
        (if (symbol? _stx149924_)
            (let* ((_g149925149933_ (gx#current-expander-marks))
                   (_else149927149941_ (lambda () _stx149924_))
                   (_K149929149946_
                    (lambda (_hd149944_) (cons _stx149924_ _hd149944_))))
              (if (##pair? _g149925149933_)
                  (let* ((_hd149930149949_ (##car _g149925149933_))
                         (_hd149952_ _hd149930149949_))
                    (_K149929149946_ _hd149952_))
                  (_else149927149941_)))
            (if (gx#identifier? _stx149924_)
                (let* ((_id149954_ (gx#syntax-local-unwrap _stx149924_))
                       (_eid149956_ (gx#stx-e _id149954_))
                       (_marks149958_ (gx#stx-identifier-marks* _id149954_)))
                  (let* ((_marks149960149968_ _marks149958_)
                         (_else149962149976_ (lambda () _eid149956_))
                         (_K149964149981_
                          (lambda (_hd149979_) (cons _eid149956_ _hd149979_))))
                    (if (##pair? _marks149960149968_)
                        (let* ((_hd149965149984_ (##car _marks149960149968_))
                               (_hd149987_ _hd149965149984_))
                          (_K149964149981_ _hd149987_))
                        (_else149962149976_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx149924_)))))
    (define gx#core-context-shift
      (lambda (_ctx149869_ _phi149870_)
        (letrec ((_make-phi149872_
                  (lambda (_super149922_)
                    (let ((__obj157049
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj157049
                       (gensym 'phi)
                       _super149922_)
                      __obj157049)))
                 (_make-phi/up149873_
                  (lambda (_ctx149917_ _super149918_)
                    (let ((_ctx+1149920_ (_make-phi149872_ _super149918_)))
                      (##unchecked-structure-set!
                       _ctx149917_
                       _ctx+1149920_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1149920_
                       _ctx149917_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1149920_)))
                 (_make-phi/down149874_
                  (lambda (_ctx149912_ _super149913_)
                    (let ((_ctx-1149915_ (_make-phi149872_ _super149913_)))
                      (##unchecked-structure-set!
                       _ctx-1149915_
                       _ctx149912_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx149912_
                       _ctx-1149915_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1149915_)))
                 (_shift149875_
                  (lambda (_ctx149896_
                           _delta149897_
                           _make-delta-context149898_
                           _phi149899_
                           _K149900_)
                    (let ((_$e149902_
                           (##unchecked-structure-ref
                            _ctx149896_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e149902_
                          ((lambda (_super149905_)
                             (let* ((_super149907_
                                     (_K149900_ _super149905_ _delta149897_))
                                    (_ctx+d149909_
                                     (_make-delta-context149898_
                                      _ctx149896_
                                      _super149907_)))
                               (_K149900_
                                _ctx+d149909_
                                (fx- _phi149899_ _delta149897_))))
                           _$e149902_)
                          (error '"Bad context" _ctx149896_))))))
          (let _K149877_ ((_ctx149879_ _ctx149869_) (_phi149880_ _phi149870_))
            (if (fxzero? _phi149880_)
                _ctx149879_
                (if (fx> (##vector-length _ctx149879_) '3)
                    (if (fxpositive? _phi149880_)
                        (let ((_$e149882_
                               (##unchecked-structure-ref
                                _ctx149879_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e149882_
                              ((lambda (_g149884149886_)
                                 (_K149877_
                                  _g149884149886_
                                  (fx- _phi149880_ '1)))
                               _$e149882_)
                              (_shift149875_
                               _ctx149879_
                               '1
                               _make-phi/up149873_
                               _phi149880_
                               _K149877_)))
                        (let ((_$e149889_
                               (##unchecked-structure-ref
                                _ctx149879_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e149889_
                              ((lambda (_g149891149893_)
                                 (_K149877_
                                  _g149891149893_
                                  (fx+ _phi149880_ '1)))
                               _$e149889_)
                              (_shift149875_
                               _ctx149879_
                               '-1
                               _make-phi/down149874_
                               _phi149880_
                               _K149877_))))
                    _ctx149879_))))))
    (define gx#core-context-get
      (lambda (_ctx149866_ _key149867_)
        (table-ref
         (##unchecked-structure-ref _ctx149866_ '2 gx#expander-context::t '#f)
         _key149867_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx149862_ _key149863_ _val149864_)
        (table-set!
         (##unchecked-structure-ref _ctx149862_ '2 gx#expander-context::t '#f)
         _key149863_
         _val149864_)))
    (define gx#core-context-resolve
      (lambda (_ctx149849_ _key149850_)
        (let _lp149852_ ((_ctx149854_ _ctx149849_))
          (let ((_$e149856_ (gx#core-context-get _ctx149854_ _key149850_)))
            (if _$e149856_
                (values _$e149856_)
                (let ((_$e149859_
                       (if (fx> (##vector-length _ctx149854_) '3)
                           (##unchecked-structure-ref
                            _ctx149854_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e149859_ (_lp149852_ _$e149859_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx149839_ _key149840_ _val149841_ _rebind149842_)
        (let ((_$e149844_ (gx#core-context-get _ctx149839_ _key149840_)))
          (if _$e149844_
              ((lambda (_xval149847_)
                 (gx#core-context-put!
                  _ctx149839_
                  _key149840_
                  (_rebind149842_ _xval149847_)))
               _$e149844_)
              (gx#core-context-put! _ctx149839_ _key149840_ _val149841_)))))
    (define gx#core-context-top__%
      (lambda (_ctx149817_ _stop?149818_)
        (let _lp149820_ ((_ctx149822_ _ctx149817_))
          (if (_stop?149818_ _ctx149822_)
              _ctx149822_
              (if (##structure-instance-of? _ctx149822_ 'gx#context-phi::t)
                  (_lp149820_
                   (##unchecked-structure-ref
                    _ctx149822_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx149828_ (gx#current-expander-context))
               (_stop?149830_ gx#top-context?))
          (gx#core-context-top__% _ctx149828_ _stop?149830_))))
    (define gx#core-context-top__1
      (lambda (_ctx149832_)
        (let ((_stop?149834_ gx#top-context?))
          (gx#core-context-top__% _ctx149832_ _stop?149834_))))
    (define gx#core-context-top
      (lambda _g157080_
        (let ((_g157079_ (##length _g157080_)))
          (cond ((##fx= _g157079_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g157080_))
                ((##fx= _g157079_ 1)
                 (apply (lambda (_ctx149832_)
                          (gx#core-context-top__1 _ctx149832_))
                        _g157080_))
                ((##fx= _g157079_ 2)
                 (apply (lambda (_ctx149836_ _stop?149837_)
                          (gx#core-context-top__% _ctx149836_ _stop?149837_))
                        _g157080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g157080_))))))
    (define gx#core-context-root__%
      (lambda (_ctx149802_)
        (let _lp149804_ ((_ctx149806_ _ctx149802_))
          (if (##structure-instance-of? _ctx149806_ 'gx#context-phi::t)
              (_lp149804_
               (##unchecked-structure-ref
                _ctx149806_
                '3
                gx#phi-context::t
                '#f))
              _ctx149806_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx149812_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx149812_))))
    (define gx#core-context-root
      (lambda _g157082_
        (let ((_g157081_ (##length _g157082_)))
          (cond ((##fx= _g157081_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g157082_))
                ((##fx= _g157081_ 1)
                 (apply (lambda (_ctx149814_)
                          (gx#core-context-root__% _ctx149814_))
                        _g157082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g157082_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx149783_ . __149780149784_)
        (let ((_$e149787_ (gx#current-expander-allow-rebind?)))
          (if _$e149787_
              _$e149787_
              (if (##structure-instance-of? _ctx149783_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx149783_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx149783_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx149794_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx149794_))))
    (define gx#core-context-rebind?
      (lambda _g157084_
        (let ((_g157083_ (##length _g157084_)))
          (cond ((##fx= _g157083_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g157084_))
                ((##fx= _g157083_ 1)
                 (apply (lambda (_ctx149796_)
                          (gx#core-context-rebind?__% _ctx149796_))
                        _g157084_))
                ((##fx>= _g157083_ 1)
                 (apply gx#core-context-rebind?__% _g157084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g157084_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx149766_)
        (let ((_$e149768_ (gx#core-context-top__1 _ctx149766_)))
          (if _$e149768_
              ((lambda (_ctx149771_)
                 (if (##structure-instance-of?
                      _ctx149771_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx149771_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e149768_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx149777_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx149777_))))
    (define gx#core-context-namespace
      (lambda _g157086_
        (let ((_g157085_ (##length _g157086_)))
          (cond ((##fx= _g157085_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g157086_))
                ((##fx= _g157085_ 1)
                 (apply (lambda (_ctx149779_)
                          (gx#core-context-namespace__% _ctx149779_))
                        _g157086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g157086_))))))
    (define gx#expander-binding?__%
      (lambda (_bind149752_ _is?149753_)
        (if (##structure-direct-instance-of?
             _bind149752_
             'gx#syntax-binding::t)
            (_is?149753_
             (##unchecked-structure-ref
              _bind149752_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind149758_)
        (let ((_is?149760_ gx#expander?))
          (gx#expander-binding?__% _bind149758_ _is?149760_))))
    (define gx#expander-binding?
      (lambda _g157088_
        (let ((_g157087_ (##length _g157088_)))
          (cond ((##fx= _g157087_ 1)
                 (apply (lambda (_bind149758_)
                          (gx#expander-binding?__0 _bind149758_))
                        _g157088_))
                ((##fx= _g157087_ 2)
                 (apply (lambda (_bind149762_ _is?149763_)
                          (gx#expander-binding?__% _bind149762_ _is?149763_))
                        _g157088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g157088_))))))
    (define gx#core-expander-binding?
      (lambda (_bind149749_)
        (gx#expander-binding?__% _bind149749_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind149747_)
        (gx#expander-binding?__% _bind149747_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind149741_)
        (letrec ((_direct-special-form?149743_
                  (lambda (_obj149745_)
                    (##structure-direct-instance-of?
                     _obj149745_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind149741_
           _direct-special-form?149743_))))
    (define gx#special-form-binding?
      (lambda (_bind149739_)
        (gx#expander-binding?__% _bind149739_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind149730_)
        (letrec ((_feature?149732_
                  (lambda (_e149734_)
                    (let ((_$e149736_
                           (##structure-instance-of?
                            _e149734_
                            'gx#feature-expander::t)))
                      (if _$e149736_
                          _$e149736_
                          (##structure-instance-of?
                           _e149734_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind149730_ _feature?149732_))))
    (define gx#private-feature-binding?
      (lambda (_bind149728_)
        (gx#expander-binding?__% _bind149728_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id149715_ _bound?149716_)
        (if (gx#identifier? _id149715_)
            (_bound?149716_ (gx#resolve-identifier__0 _id149715_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id149721_)
        (let ((_bound?149723_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id149721_ _bound?149723_))))
    (define gx#core-bound-identifier?
      (lambda _g157090_
        (let ((_g157089_ (##length _g157090_)))
          (cond ((##fx= _g157089_ 1)
                 (apply (lambda (_id149721_)
                          (gx#core-bound-identifier?__0 _id149721_))
                        _g157090_))
                ((##fx= _g157089_ 2)
                 (apply (lambda (_id149725_ _bound?149726_)
                          (gx#core-bound-identifier?__%
                           _id149725_
                           _bound?149726_))
                        _g157090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g157090_))))))
    (define gx#core-identifier=?
      (lambda (_x149705_ _y149706_)
        (letrec ((_y=?149708_
                  (lambda (_xid149712_)
                    ((if (list? _y149706_) memq eq?) _xid149712_ _y149706_))))
          (let ((_bind149710_ (gx#resolve-identifier__0 _x149705_)))
            (if (##structure-instance-of? _bind149710_ 'gx#binding::t)
                (_y=?149708_
                 (##unchecked-structure-ref _bind149710_ '1 gx#binding::t '#f))
                (_y=?149708_ (gx#stx-e _x149705_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e149703_)
        (if (interned-symbol? _e149703_)
            (string-index (symbol->string _e149703_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx149658_ _src149659_ _ctx149660_ _marks149661_)
        (if (##structure? _stx149658_)
            (let ((_$e149663_ (gx#sealed-syntax-unwrap _stx149658_)))
              (if _$e149663_
                  (values _$e149663_)
                  (if (gx#identifier? _stx149658_)
                      (let ((_id149666_
                             (gx#stx-unwrap__% _stx149658_ _marks149661_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id149666_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e149668_
                                (##unchecked-structure-ref
                                 _id149666_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e149668_ _$e149668_ _src149659_))
                         _ctx149660_
                         (##unchecked-structure-ref
                          _id149666_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx149658_)
                       (let ((_$e149671_ (gx#stx-source _stx149658_)))
                         (if _$e149671_ _$e149671_ _src149659_))
                       _ctx149660_
                       (reverse _marks149661_)))))
            (##structure
             gx#syntax-quote::t
             _stx149658_
             _src149659_
             _ctx149660_
             (reverse _marks149661_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx149677_)
        (let* ((_src149679_ '#f)
               (_ctx149681_ (gx#current-expander-context))
               (_marks149683_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx149677_
           _src149679_
           _ctx149681_
           _marks149683_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx149685_ _src149686_)
        (let* ((_ctx149688_ (gx#current-expander-context))
               (_marks149690_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx149685_
           _src149686_
           _ctx149688_
           _marks149690_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx149692_ _src149693_ _ctx149694_)
        (let ((_marks149696_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx149692_
           _src149693_
           _ctx149694_
           _marks149696_))))
    (define gx#core-quote-syntax
      (lambda _g157092_
        (let ((_g157091_ (##length _g157092_)))
          (cond ((##fx= _g157091_ 1)
                 (apply (lambda (_stx149677_)
                          (gx#core-quote-syntax__0 _stx149677_))
                        _g157092_))
                ((##fx= _g157091_ 2)
                 (apply (lambda (_stx149685_ _src149686_)
                          (gx#core-quote-syntax__1 _stx149685_ _src149686_))
                        _g157092_))
                ((##fx= _g157091_ 3)
                 (apply (lambda (_stx149692_ _src149693_ _ctx149694_)
                          (gx#core-quote-syntax__2
                           _stx149692_
                           _src149693_
                           _ctx149694_))
                        _g157092_))
                ((##fx= _g157091_ 4)
                 (apply (lambda (_stx149698_
                                 _src149699_
                                 _ctx149700_
                                 _marks149701_)
                          (gx#core-quote-syntax__%
                           _stx149698_
                           _src149699_
                           _ctx149700_
                           _marks149701_))
                        _g157092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g157092_))))))
    (define gx#core-cons
      (lambda (_hd149654_ _tl149655_)
        (cons (gx#core-quote-syntax__0 _hd149654_) _tl149655_)))
    (define gx#core-list
      (lambda (_hd149651_ . _rest149652_)
        (cons (gx#core-quote-syntax__0 _hd149651_) _rest149652_)))
    (define gx#core-cons*
      (lambda (_hd149648_ . _rest149649_)
        (apply cons* (gx#core-quote-syntax__0 _hd149648_) _rest149649_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path149622_ _rel149623_)
        (let ((_path149635_ (gx#stx-e _stx-path149622_))
              (_reldir149636_
               (let _lp149625_ ((_relsrc149627_
                                 (let ((_$e149632_
                                        (gx#stx-source _stx-path149622_)))
                                   (if _$e149632_ _$e149632_ _rel149623_))))
                 (if (##structure-instance-of? _relsrc149627_ 'gerbil#AST::t)
                     (_lp149625_
                      (let ((_$e149629_ (gx#stx-source _relsrc149627_)))
                        (if _$e149629_ _$e149629_ (gx#stx-e _relsrc149627_))))
                     (if (source-location-path? _relsrc149627_)
                         (path-directory (source-location-path _relsrc149627_))
                         (if (string? _relsrc149627_)
                             (path-directory _relsrc149627_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path149635_ (path-normalize _reldir149636_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path149641_)
        (let ((_rel149643_ '#f))
          (gx#core-resolve-path__% _stx-path149641_ _rel149643_))))
    (define gx#core-resolve-path
      (lambda _g157094_
        (let ((_g157093_ (##length _g157094_)))
          (cond ((##fx= _g157093_ 1)
                 (apply (lambda (_stx-path149641_)
                          (gx#core-resolve-path__0 _stx-path149641_))
                        _g157094_))
                ((##fx= _g157093_ 2)
                 (apply (lambda (_stx-path149645_ _rel149646_)
                          (gx#core-resolve-path__%
                           _stx-path149645_
                           _rel149646_))
                        _g157094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g157094_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr149578_ _ctx149579_)
        (let* ((_repr149580149587_ _repr149578_)
               (_E149582149591_
                (lambda () (error '"No clause matching" _repr149580149587_)))
               (_K149583149599_
                (lambda (_subs149594_ _phi149595_)
                  (let ((_subst149597_
                         (if (not (null? _subs149594_))
                             (list->table _subs149594_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst149597_
                     _ctx149579_
                     _phi149595_
                     '#f)))))
          (if (##pair? _repr149580149587_)
              (let ((_hd149584149602_ (##car _repr149580149587_))
                    (_tl149585149604_ (##cdr _repr149580149587_)))
                (let* ((_phi149607_ _hd149584149602_)
                       (_subs149609_ _tl149585149604_))
                  (_K149583149599_ _subs149609_ _phi149607_)))
              (_E149582149591_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr149614_)
        (let ((_ctx149616_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr149614_ _ctx149616_))))
    (define gx#core-deserialize-mark
      (lambda _g157096_
        (let ((_g157095_ (##length _g157096_)))
          (cond ((##fx= _g157095_ 1)
                 (apply (lambda (_repr149614_)
                          (gx#core-deserialize-mark__0 _repr149614_))
                        _g157096_))
                ((##fx= _g157095_ 2)
                 (apply (lambda (_repr149618_ _ctx149619_)
                          (gx#core-deserialize-mark__%
                           _repr149618_
                           _ctx149619_))
                        _g157096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g157096_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx149575_)
        (gx#stx-rewrap _stx149575_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx149573_)
        (gx#stx-unwrap__% _stx149573_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx149543_)
        (let* ((_g149544149552_ (gx#current-expander-marks))
               (_else149546149560_ (lambda () _stx149543_))
               (_K149548149565_
                (lambda (_hd149563_)
                  (gx#stx-apply-mark _stx149543_ _hd149563_))))
          (if (##pair? _g149544149552_)
              (let* ((_hd149549149568_ (##car _g149544149552_))
                     (_hd149571_ _hd149549149568_))
                (_K149548149565_ _hd149571_))
              (_else149546149560_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx149528_ _E149529_)
        (let ((_bind149531_ (gx#resolve-identifier__0 _stx149528_)))
          (if (##structure-direct-instance-of?
               _bind149531_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind149531_
               '4
               gx#syntax-binding::t
               '#f)
              (_E149529_ _stx149528_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx149536_)
        (let ((_E149538_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx149536_ _E149538_))))
    (define gx#syntax-local-e
      (lambda _g157098_
        (let ((_g157097_ (##length _g157098_)))
          (cond ((##fx= _g157097_ 1)
                 (apply (lambda (_stx149536_)
                          (gx#syntax-local-e__0 _stx149536_))
                        _g157098_))
                ((##fx= _g157097_ 2)
                 (apply (lambda (_stx149540_ _E149541_)
                          (gx#syntax-local-e__% _stx149540_ _E149541_))
                        _g157098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g157098_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx149512_ _E149513_)
        (let ((_e149515_ (gx#syntax-local-e__% _stx149512_ _E149513_)))
          (if (##structure-instance-of? _e149515_ 'gx#expander::t)
              (##structure-ref _e149515_ '1 gx#expander::t '#f)
              _e149515_))))
    (define gx#syntax-local-value__0
      (lambda (_stx149520_)
        (let ((_E149522_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx149520_ _E149522_))))
    (define gx#syntax-local-value
      (lambda _g157100_
        (let ((_g157099_ (##length _g157100_)))
          (cond ((##fx= _g157099_ 1)
                 (apply (lambda (_stx149520_)
                          (gx#syntax-local-value__0 _stx149520_))
                        _g157100_))
                ((##fx= _g157099_ 2)
                 (apply (lambda (_stx149524_ _E149525_)
                          (gx#syntax-local-value__% _stx149524_ _E149525_))
                        _g157100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g157100_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx149509_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx149509_)))))
