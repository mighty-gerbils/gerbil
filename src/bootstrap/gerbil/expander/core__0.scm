(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708271950)
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
      (lambda _$args157270_
        (apply make-instance gx#expander-context::t _$args157270_)))
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
      (lambda _$args157267_
        (apply make-instance gx#root-context::t _$args157267_)))
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
      (lambda _$args157264_
        (apply make-instance gx#phi-context::t _$args157264_)))
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
      (lambda _$args157261_
        (apply make-instance gx#top-context::t _$args157261_)))
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
      (lambda _$args157258_
        (apply make-instance gx#module-context::t _$args157258_)))
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
      (lambda _$args157255_
        (apply make-instance gx#prelude-context::t _$args157255_)))
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
      (lambda _$args157252_
        (apply make-instance gx#local-context::t _$args157252_)))
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
      (lambda (_self157236_ _id157237_ _super157238_)
        (if (##fx< '3 (##structure-length _self157236_))
            (begin
              (##unchecked-structure-set!
               _self157236_
               _id157237_
               '1
               (##structure-type _self157236_)
               '#f)
              (##unchecked-structure-set!
               _self157236_
               (make-hash-table-eq)
               '2
               (##structure-type _self157236_)
               '#f)
              (##unchecked-structure-set!
               _self157236_
               _super157238_
               '3
               (##structure-type _self157236_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self157236_
                   '3
                   (##vector-length _self157236_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self157243_ _id157244_)
        (let ((_super157246_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self157243_ _id157244_ _super157246_))))
    (define gx#phi-context:::init!
      (lambda _g161380_
        (let ((_g161379_ (##length _g161380_)))
          (cond ((##fx= _g161379_ 2)
                 (apply (lambda (_self157243_ _id157244_)
                          (gx#phi-context:::init!__0 _self157243_ _id157244_))
                        _g161380_))
                ((##fx= _g161379_ 3)
                 (apply (lambda (_self157248_ _id157249_ _super157250_)
                          (gx#phi-context:::init!__%
                           _self157248_
                           _id157249_
                           _super157250_))
                        _g161380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g161380_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self157100_ _super157101_)
        (if (##fx< '3 (##structure-length _self157100_))
            (begin
              (##unchecked-structure-set!
               _self157100_
               (gensym 'L)
               '1
               (##structure-type _self157100_)
               '#f)
              (##unchecked-structure-set!
               _self157100_
               (make-hash-table-eq)
               '2
               (##structure-type _self157100_)
               '#f)
              (##unchecked-structure-set!
               _self157100_
               _super157101_
               '3
               (##structure-type _self157100_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self157100_
                   '3
                   (##vector-length _self157100_)))))
    (define gx#local-context:::init!__0
      (lambda (_self157106_)
        (let ((_super157108_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self157106_ _super157108_))))
    (define gx#local-context:::init!
      (lambda _g161382_
        (let ((_g161381_ (##length _g161382_)))
          (cond ((##fx= _g161381_ 1)
                 (apply (lambda (_self157106_)
                          (gx#local-context:::init!__0 _self157106_))
                        _g161382_))
                ((##fx= _g161381_ 2)
                 (apply (lambda (_self157110_ _super157111_)
                          (gx#local-context:::init!__%
                           _self157110_
                           _super157111_))
                        _g161382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g161382_))))))
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
      (lambda _$args156974_ (apply make-instance gx#binding::t _$args156974_)))
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
      (lambda _$args156971_
        (apply make-instance gx#runtime-binding::t _$args156971_)))
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
      (lambda _$args156968_
        (apply make-instance gx#local-binding::t _$args156968_)))
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
      (lambda _$args156965_
        (apply make-instance gx#top-binding::t _$args156965_)))
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
      (lambda _$args156962_
        (apply make-instance gx#module-binding::t _$args156962_)))
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
      (lambda _$args156959_
        (apply make-instance gx#extern-binding::t _$args156959_)))
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
      (lambda _$args156956_
        (apply make-instance gx#syntax-binding::t _$args156956_)))
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
      (lambda _$args156953_
        (apply make-instance gx#import-binding::t _$args156953_)))
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
      (lambda _$args156950_
        (apply make-instance gx#alias-binding::t _$args156950_)))
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
      (lambda _$args156947_
        (apply make-instance gx#expander::t _$args156947_)))
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
      (lambda _$args156944_
        (apply make-instance gx#core-expander::t _$args156944_)))
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
      (lambda _$args156941_
        (apply make-instance gx#expression-form::t _$args156941_)))
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
      (lambda _$args156938_
        (apply make-instance gx#special-form::t _$args156938_)))
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
      (lambda _$args156935_
        (apply make-instance gx#definition-form::t _$args156935_)))
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
      (lambda _$args156932_
        (apply make-instance gx#top-special-form::t _$args156932_)))
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
      (lambda _$args156929_
        (apply make-instance gx#module-special-form::t _$args156929_)))
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
      (lambda _$args156926_
        (apply make-instance gx#feature-expander::t _$args156926_)))
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
      (lambda _$args156923_
        (apply make-instance gx#private-feature-expander::t _$args156923_)))
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
      (lambda _$args156920_
        (apply make-instance gx#reserved-expander::t _$args156920_)))
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
      (lambda _$args156917_
        (apply make-instance gx#macro-expander::t _$args156917_)))
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
      (lambda _$args156914_
        (apply make-instance gx#rename-macro-expander::t _$args156914_)))
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
      (lambda _$args156911_
        (apply make-instance gx#user-expander::t _$args156911_)))
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
      (lambda _$args156908_
        (apply make-instance gx#expander-mark::t _$args156908_)))
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
      (lambda (_ctx156893_ _message156894_ _stx156895_ . _details156896_)
        (let ((_ctx156906_
               (let ((_$e156898_ _ctx156893_))
                 (if _$e156898_
                     _$e156898_
                     (let ((_$e156901_ (gx#core-context-top__0)))
                       (if _$e156901_
                           ((lambda (_ctx156904_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx156904_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e156901_)
                           '#f))))))
          (raise (make-syntax-error
                  _message156894_
                  (cons _stx156895_ _details156896_)
                  _ctx156906_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx156880_ _expression?156881_)
        (gx#eval-syntax* (gx#core-expand__% _stx156880_ _expression?156881_))))
    (define gx#eval-syntax__0
      (lambda (_stx156886_)
        (let ((_expression?156888_ '#f))
          (gx#eval-syntax__% _stx156886_ _expression?156888_))))
    (define gx#eval-syntax
      (lambda _g161384_
        (let ((_g161383_ (##length _g161384_)))
          (cond ((##fx= _g161383_ 1)
                 (apply (lambda (_stx156886_) (gx#eval-syntax__0 _stx156886_))
                        _g161384_))
                ((##fx= _g161383_ 2)
                 (apply (lambda (_stx156890_ _expression?156891_)
                          (gx#eval-syntax__% _stx156890_ _expression?156891_))
                        _g161384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g161384_))))))
    (define gx#eval-syntax*
      (lambda (_stx156877_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx156877_))))
    (define gx#core-expand__%
      (lambda (_stx156864_ _expression?156865_)
        (if _expression?156865_
            (gx#core-expand-expression _stx156864_)
            (gx#core-expand-top _stx156864_))))
    (define gx#core-expand__0
      (lambda (_stx156870_)
        (let ((_expression?156872_ '#f))
          (gx#core-expand__% _stx156870_ _expression?156872_))))
    (define gx#core-expand
      (lambda _g161386_
        (let ((_g161385_ (##length _g161386_)))
          (cond ((##fx= _g161385_ 1)
                 (apply (lambda (_stx156870_) (gx#core-expand__0 _stx156870_))
                        _g161386_))
                ((##fx= _g161385_ 2)
                 (apply (lambda (_stx156874_ _expression?156875_)
                          (gx#core-expand__% _stx156874_ _expression?156875_))
                        _g161386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g161386_))))))
    (define gx#core-expand-top
      (lambda (_stx156831_)
        (let* ((_stx156833_ (gx#core-expand*__0 _stx156831_))
               (_e156834156841_ _stx156833_)
               (_E156836156845_
                (lambda () (gx#core-expand-expression _stx156833_)))
               (_E156835156859_
                (lambda ()
                  (if (gx#stx-pair? _e156834156841_)
                      (let ((_e156837156849_ (gx#syntax-e _e156834156841_)))
                        (let ((_hd156838156852_ (##car _e156837156849_))
                              (_tl156839156854_ (##cdr _e156837156849_)))
                          (let ((_form156857_ _hd156838156852_))
                            (if (gx#core-bound-identifier?__0 _form156857_)
                                _stx156833_
                                (_E156836156845_)))))
                      (_E156836156845_)))))
          (_E156835156859_))))
    (define gx#core-expand-expression
      (lambda (_stx156778_)
        (letrec ((_sealed-expression?156780_
                  (lambda (_hd156801_)
                    (if (gx#sealed-syntax? _hd156801_)
                        (let* ((_e156802156809_ _hd156801_)
                               (_E156804156813_ (lambda () '#f))
                               (_E156803156827_
                                (lambda ()
                                  (if (gx#stx-pair? _e156802156809_)
                                      (let ((_e156805156817_
                                             (gx#syntax-e _e156802156809_)))
                                        (let ((_hd156806156820_
                                               (##car _e156805156817_))
                                              (_tl156807156822_
                                               (##cdr _e156805156817_)))
                                          (let ((_form156825_
                                                 _hd156806156820_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form156825_
                                                 gx#expression-form-binding?)
                                                (_E156804156813_)))))
                                      (_E156804156813_)))))
                          (_E156803156827_))
                        '#f)))
                 (_illegal-expression156781_
                  (lambda (_hd156799_ . _g161387_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx156778_
                     _hd156799_)))
                 (_expand-e156782_
                  (lambda (_form156794_ _hd156795_)
                    (let ((_bind156797_
                           (if (##structure-instance-of?
                                _form156794_
                                'gx#binding::t)
                               _form156794_
                               (gx#resolve-identifier__0 _form156794_))))
                      (if (gx#core-expander-binding? _bind156797_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind156797_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd156795_
                            (gx#stx-source _stx156778_)))
                          (if (##structure-direct-instance-of?
                               _bind156797_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind156797_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd156795_
                                 (gx#stx-source _stx156778_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx156778_
                               _form156794_)))))))
          (let ((_hd156784_ (gx#core-expand-head _stx156778_)))
            (if (_sealed-expression?156780_ _hd156784_)
                _hd156784_
                (if (gx#stx-pair? _hd156784_)
                    (let* ((_form156786_ (gx#stx-car _hd156784_))
                           (_bind156788_
                            (if (gx#identifier? _form156786_)
                                (gx#resolve-identifier__0 _form156786_)
                                '#f)))
                      (if (or (not _bind156788_)
                              (not (gx#core-expander-binding? _bind156788_)))
                          (_expand-e156782_ '%%app (cons '%%app _hd156784_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind156788_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd156784_
                               _illegal-expression156781_)
                              (if (gx#expression-form-binding? _bind156788_)
                                  (_expand-e156782_ _bind156788_ _hd156784_)
                                  (if (gx#direct-special-form-binding?
                                       _bind156788_)
                                      (gx#core-expand-expression
                                       (_expand-e156782_
                                        _bind156788_
                                        _hd156784_))
                                      (_illegal-expression156781_
                                       _hd156784_))))))
                    (if (gx#core-bound-identifier?__0 _hd156784_)
                        (_illegal-expression156781_ _hd156784_)
                        (if (gx#identifier? _hd156784_)
                            (_expand-e156782_
                             '%%ref
                             (cons '%%ref (cons _hd156784_ '())))
                            (if (gx#stx-datum? _hd156784_)
                                (_expand-e156782_
                                 '%#quote
                                 (cons '%#quote (cons _hd156784_ '())))
                                (_illegal-expression156781_
                                 _hd156784_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx156773_)
        (call-with-parameters
         (lambda ()
           (let ((_stx156776_ (gx#core-expand-expression _stx156773_)))
             (values _stx156776_ (gx#eval-syntax* _stx156776_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx156754_ _stop?156755_)
        (let _lp156757_ ((_stx156759_ _stx156754_))
          (if (_stop?156755_ _stx156759_)
              _stx156759_
              (let ((_rstx156761_ (gx#core-expand1 _stx156759_)))
                (if (eq? _stx156759_ _rstx156761_)
                    _stx156759_
                    (_lp156757_ _rstx156761_)))))))
    (define gx#core-expand*__0
      (lambda (_stx156766_)
        (let ((_stop?156768_ false))
          (gx#core-expand*__% _stx156766_ _stop?156768_))))
    (define gx#core-expand*
      (lambda _g161389_
        (let ((_g161388_ (##length _g161389_)))
          (cond ((##fx= _g161388_ 1)
                 (apply (lambda (_stx156766_) (gx#core-expand*__0 _stx156766_))
                        _g161389_))
                ((##fx= _g161388_ 2)
                 (apply (lambda (_stx156770_ _stop?156771_)
                          (gx#core-expand*__% _stx156770_ _stop?156771_))
                        _g161389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g161389_))))))
    (define gx#core-expand1
      (lambda (_stx156710_)
        (letrec ((_step156712_
                  (lambda (_hd156749_)
                    (let ((_bind156751_ (gx#resolve-identifier__0 _hd156749_)))
                      (if (##structure-instance-of?
                           _bind156751_
                           'gx#runtime-binding::t)
                          _stx156710_
                          (if (##structure-direct-instance-of?
                               _bind156751_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind156751_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx156710_)
                              (if (not _bind156751_)
                                  _stx156710_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx156710_))))))))
          (let* ((_e156713156721_ _stx156710_)
                 (_E156719156725_ (lambda () _stx156710_))
                 (_E156715156731_
                  (lambda ()
                    (let ((_hd156729_ _e156713156721_))
                      (if (gx#identifier? _hd156729_)
                          (_step156712_ _hd156729_)
                          (_E156719156725_)))))
                 (_E156714156745_
                  (lambda ()
                    (if (gx#stx-pair? _e156713156721_)
                        (let ((_e156716156735_ (gx#syntax-e _e156713156721_)))
                          (let ((_hd156717156738_ (##car _e156716156735_))
                                (_tl156718156740_ (##cdr _e156716156735_)))
                            (let ((_hd156743_ _hd156717156738_))
                              (if (gx#identifier? _hd156743_)
                                  (_step156712_ _hd156743_)
                                  (_E156715156731_)))))
                        (_E156715156731_)))))
            (_E156714156745_)))))
    (define gx#core-expand-head
      (lambda (_stx156676_)
        (letrec ((_stop?156678_
                  (lambda (_stx156680_)
                    (let* ((_e156681156688_ _stx156680_)
                           (_E156683156692_ (lambda () '#f))
                           (_E156682156706_
                            (lambda ()
                              (if (gx#stx-pair? _e156681156688_)
                                  (let ((_e156684156696_
                                         (gx#syntax-e _e156681156688_)))
                                    (let ((_hd156685156699_
                                           (##car _e156684156696_))
                                          (_tl156686156701_
                                           (##cdr _e156684156696_)))
                                      (let ((_hd156704_ _hd156685156699_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd156704_)
                                            (_E156683156692_)))))
                                  (_E156683156692_)))))
                      (_E156682156706_)))))
          (gx#core-expand*__% _stx156676_ _stop?156678_))))
    (define gx#core-expand-block__%
      (lambda (_stx156482_
               _expand-special156483_
               _begin-form156484_
               _expand-e156485_)
        (letrec ((_expand-splice156487_
                  (lambda (_hd156650_ _body156651_ _rest156652_ _r156653_)
                    (if (gx#stx-list? _body156651_)
                        (_K156491_
                         (gx#stx-foldr cons _rest156652_ _body156651_)
                         _r156653_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx156482_
                         _hd156650_))))
                 (_expand-cond-expand156488_
                  (lambda (_hd156646_ _rest156647_ _r156648_)
                    (_K156491_
                     (cons (gx#core-expand-cond-expand% _hd156646_)
                           _rest156647_)
                     _r156648_)))
                 (_expand-include156489_
                  (lambda (_hd156595_ _rest156596_ _r156597_)
                    (let* ((_e156598156608_ _hd156595_)
                           (_E156600156612_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e156598156608_)))
                           (_E156599156642_
                            (lambda ()
                              (if (gx#stx-pair? _e156598156608_)
                                  (let ((_e156601156616_
                                         (gx#syntax-e _e156598156608_)))
                                    (let ((_hd156602156619_
                                           (##car _e156601156616_))
                                          (_tl156603156621_
                                           (##cdr _e156601156616_)))
                                      (if (gx#stx-pair? _tl156603156621_)
                                          (let ((_e156604156624_
                                                 (gx#syntax-e
                                                  _tl156603156621_)))
                                            (let ((_hd156605156627_
                                                   (##car _e156604156624_))
                                                  (_tl156606156629_
                                                   (##cdr _e156604156624_)))
                                              (let ((_path156632_
                                                     _hd156605156627_))
                                                (if (gx#stx-null?
                                                     _tl156606156629_)
                                                    (if (gx#stx-string?
                                                         _path156632_)
                                                        (let* ((_rpath156634_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path156632_
                         (gx#stx-source _hd156595_)))
                       (_block156636_
                        (gx#core-expand-include%__% _hd156595_ _rpath156634_))
                       (_rbody156639_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block156636_
                            _expand-special156483_
                            '#f
                            _expand-e156485_))
                         gx#current-expander-path
                         (cons _rpath156634_ (gx#current-expander-path)))))
                  (_K156491_
                   _rest156596_
                   (foldr1 cons _r156597_ _rbody156639_)))
                (_E156600156612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E156600156612_)))))
                                          (_E156600156612_))))
                                  (_E156600156612_)))))
                      (_E156599156642_))))
                 (_expand-expression156490_
                  (lambda (_hd156591_ _rest156592_ _r156593_)
                    (_K156491_
                     _rest156592_
                     (cons (_expand-e156485_ _hd156591_) _r156593_))))
                 (_K156491_
                  (lambda (_rest156521_ _r156522_)
                    (let* ((_e156523156530_ _rest156521_)
                           (_E156525156534_
                            (lambda ()
                              (if _begin-form156484_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form156484_
                                    (reverse _r156522_))
                                   (gx#stx-source _stx156482_))
                                  _r156522_)))
                           (_E156524156587_
                            (lambda ()
                              (if (gx#stx-pair? _e156523156530_)
                                  (let ((_e156526156538_
                                         (gx#syntax-e _e156523156530_)))
                                    (let ((_hd156527156541_
                                           (##car _e156526156538_))
                                          (_tl156528156543_
                                           (##cdr _e156526156538_)))
                                      (let* ((_hd156546_ _hd156527156541_)
                                             (_rest156548_ _tl156528156543_))
                                        (if '#t
                                            (let* ((_hd156550_
                                                    (gx#core-expand-head
                                                     _hd156546_))
                                                   (_e156551156558_ _hd156550_)
                                                   (_E156553156562_
                                                    (lambda ()
                                                      (_expand-expression156490_
                                                       _hd156550_
                                                       _rest156548_
                                                       _r156522_)))
                                                   (_E156552156583_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e156551156558_)
                                                          (let ((_e156554156566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e156551156558_)))
                    (let ((_hd156555156569_ (##car _e156554156566_))
                          (_tl156556156571_ (##cdr _e156554156566_)))
                      (let* ((_form156574_ _hd156555156569_)
                             (_body156576_ _tl156556156571_))
                        (if '#t
                            (let ((_bind156578_
                                   (if (gx#identifier? _form156574_)
                                       (gx#resolve-identifier__0 _form156574_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind156578_)
                                  (let ((_$e156580_
                                         (##unchecked-structure-ref
                                          _bind156578_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e156580_)
                                        (_expand-splice156487_
                                         _hd156550_
                                         _body156576_
                                         _rest156548_
                                         _r156522_)
                                        (if (eq? '%#cond-expand _$e156580_)
                                            (_expand-cond-expand156488_
                                             _hd156550_
                                             _rest156548_
                                             _r156522_)
                                            (if (eq? '%#include _$e156580_)
                                                (_expand-include156489_
                                                 _hd156550_
                                                 _rest156548_
                                                 _r156522_)
                                                (_expand-special156483_
                                                 _hd156550_
                                                 _K156491_
                                                 _rest156548_
                                                 _r156522_)))))
                                  (_expand-expression156490_
                                   _hd156550_
                                   _rest156548_
                                   _r156522_)))
                            (_E156553156562_)))))
                  (_E156553156562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E156552156583_))
                                            (_E156525156534_)))))
                                  (_E156525156534_)))))
                      (_E156524156587_)))))
          (let* ((_e156492156499_ _stx156482_)
                 (_E156494156503_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e156492156499_)))
                 (_E156493156517_
                  (lambda ()
                    (if (gx#stx-pair? _e156492156499_)
                        (let ((_e156495156507_ (gx#syntax-e _e156492156499_)))
                          (let ((_hd156496156510_ (##car _e156495156507_))
                                (_tl156497156512_ (##cdr _e156495156507_)))
                            (let ((_body156515_ _tl156497156512_))
                              (if (gx#stx-list? _body156515_)
                                  (_K156491_ _body156515_ '())
                                  (_E156494156503_)))))
                        (_E156494156503_)))))
            (_E156493156517_)))))
    (define gx#core-expand-block__0
      (lambda (_stx156658_ _expand-special156659_)
        (let* ((_begin-form156661_ '%#begin)
               (_expand-e156663_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx156658_
           _expand-special156659_
           _begin-form156661_
           _expand-e156663_))))
    (define gx#core-expand-block__1
      (lambda (_stx156665_ _expand-special156666_ _begin-form156667_)
        (let ((_expand-e156669_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx156665_
           _expand-special156666_
           _begin-form156667_
           _expand-e156669_))))
    (define gx#core-expand-block
      (lambda _g161391_
        (let ((_g161390_ (##length _g161391_)))
          (cond ((##fx= _g161390_ 2)
                 (apply (lambda (_stx156658_ _expand-special156659_)
                          (gx#core-expand-block__0
                           _stx156658_
                           _expand-special156659_))
                        _g161391_))
                ((##fx= _g161390_ 3)
                 (apply (lambda (_stx156665_
                                 _expand-special156666_
                                 _begin-form156667_)
                          (gx#core-expand-block__1
                           _stx156665_
                           _expand-special156666_
                           _begin-form156667_))
                        _g161391_))
                ((##fx= _g161390_ 4)
                 (apply (lambda (_stx156671_
                                 _expand-special156672_
                                 _begin-form156673_
                                 _expand-e156674_)
                          (gx#core-expand-block__%
                           _stx156671_
                           _expand-special156672_
                           _begin-form156673_
                           _expand-e156674_))
                        _g161391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g161391_))))))
    (define gx#core-expand-block*
      (lambda (_stx156430_ _expand-special156431_)
        (let* ((_g156432156443_
                (gx#core-expand-block__1
                 _stx156430_
                 _expand-special156431_
                 '#f))
               (_E156436156447_
                (lambda () (error '"No clause matching" _g156432156443_))))
          (let ((_K156441156478_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx156430_)))
                (_K156438156464_ (lambda (_expr156462_) _expr156462_))
                (_K156437156453_
                 (lambda (_body156451_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body156451_))
                    (gx#stx-source _stx156430_)))))
            (let ((_try-match156434156474_
                   (lambda ()
                     (if (##pair? _g156432156443_)
                         (let ((_tl156440156469_ (##cdr _g156432156443_))
                               (_hd156439156467_ (##car _g156432156443_)))
                           (if (##null? _tl156440156469_)
                               (let ((_expr156472_ _hd156439156467_))
                                 (_K156438156464_ _expr156472_))
                               (let ((_body156456_ _g156432156443_))
                                 (_K156437156453_ _body156456_))))
                         (let ((_body156456_ _g156432156443_))
                           (_K156437156453_ _body156456_))))))
              (if (##null? _g156432156443_)
                  (_K156441156478_)
                  (_try-match156434156474_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx156258_)
        (letrec ((_satisfied?156260_
                  (lambda (_condition156358_)
                    (let* ((_e156359156374_ _condition156358_)
                           (_E156369156378_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e156359156374_)))
                           (_E156362156397_
                            (lambda ()
                              (if (gx#stx-pair? _e156359156374_)
                                  (let ((_e156370156382_
                                         (gx#syntax-e _e156359156374_)))
                                    (let ((_hd156371156385_
                                           (##car _e156370156382_))
                                          (_tl156372156387_
                                           (##cdr _e156370156382_)))
                                      (let* ((_combinator156390_
                                              _hd156371156385_)
                                             (_body156392_ _tl156372156387_))
                                        (if (gx#stx-list? _body156392_)
                                            (let ((_$e156394_
                                                   (gx#stx-e
                                                    _combinator156390_)))
                                              (if (eq? 'not _$e156394_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?156260_
                                                        _body156392_))
                                                  (if (eq? 'and _$e156394_)
                                                      (gx#stx-andmap
                                                       _satisfied?156260_
                                                       _body156392_)
                                                      (if (eq? 'or _$e156394_)
                                                          (gx#stx-ormap
                                                           _satisfied?156260_
                                                           _body156392_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e156394_)
                      (gx#stx-andmap gx#core-resolve-identifier _body156392_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx156258_
                       _combinator156390_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E156369156378_)))))
                                  (_E156369156378_))))
                           (_E156361156420_
                            (lambda ()
                              (if (gx#stx-pair? _e156359156374_)
                                  (let ((_e156363156401_
                                         (gx#syntax-e _e156359156374_)))
                                    (let ((_hd156364156404_
                                           (##car _e156363156401_))
                                          (_tl156365156406_
                                           (##cdr _e156363156401_)))
                                      (if (and (gx#identifier?
                                                _hd156364156404_)
                                               (gx#core-identifier=?
                                                _hd156364156404_
                                                'unquote))
                                          (if (gx#stx-pair? _tl156365156406_)
                                              (let ((_e156366156409_
                                                     (gx#syntax-e
                                                      _tl156365156406_)))
                                                (let ((_hd156367156412_
                                                       (##car _e156366156409_))
                                                      (_tl156368156414_
                                                       (##cdr _e156366156409_)))
                                                  (let ((_expr156417_
                                                         _hd156367156412_))
                                                    (if (gx#stx-null?
                                                         _tl156368156414_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr156417_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E156362156397_))
                (_E156362156397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E156362156397_))
                                          (_E156362156397_))))
                                  (_E156362156397_))))
                           (_E156360156426_
                            (lambda ()
                              (let ((_id156424_ _e156359156374_))
                                (if (gx#identifier? _id156424_)
                                    (gx#core-bound-identifier?__%
                                     _id156424_
                                     gx#feature-binding?)
                                    (_E156361156420_))))))
                      (_E156360156426_))))
                 (_loop156261_
                  (lambda (_rest156291_)
                    (let* ((_e156292156300_ _rest156291_)
                           (_E156298156304_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e156292156300_)))
                           (_E156294156308_
                            (lambda ()
                              (if (gx#stx-null? _e156292156300_)
                                  (if '#t '() (_E156298156304_))
                                  (_E156298156304_))))
                           (_E156293156354_
                            (lambda ()
                              (if (gx#stx-pair? _e156292156300_)
                                  (let ((_e156295156312_
                                         (gx#syntax-e _e156292156300_)))
                                    (let ((_hd156296156315_
                                           (##car _e156295156312_))
                                          (_tl156297156317_
                                           (##cdr _e156295156312_)))
                                      (let* ((_hd156320_ _hd156296156315_)
                                             (_rest156322_ _tl156297156317_))
                                        (if '#t
                                            (let* ((_e156323156330_ _hd156320_)
                                                   (_E156325156334_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e156323156330_)))
                                                   (_E156324156350_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e156323156330_)
                                                          (let ((_e156326156338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e156323156330_)))
                    (let ((_hd156327156341_ (##car _e156326156338_))
                          (_tl156328156343_ (##cdr _e156326156338_)))
                      (let* ((_condition156346_ _hd156327156341_)
                             (_body156348_ _tl156328156343_))
                        (if '#t
                            (if (gx#stx-eq? _condition156346_ 'else)
                                (if (gx#stx-null? _rest156322_)
                                    _body156348_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx156258_
                                     _hd156320_))
                                (if (_satisfied?156260_ _condition156346_)
                                    _body156348_
                                    (_loop156261_ _rest156322_)))
                            (_E156325156334_)))))
                  (_E156325156334_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E156324156350_))
                                            (_E156294156308_)))))
                                  (_E156294156308_)))))
                      (_E156293156354_)))))
          (let* ((_e156262156269_ _stx156258_)
                 (_E156264156273_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e156262156269_)))
                 (_E156263156287_
                  (lambda ()
                    (if (gx#stx-pair? _e156262156269_)
                        (let ((_e156265156277_ (gx#syntax-e _e156262156269_)))
                          (let ((_hd156266156280_ (##car _e156265156277_))
                                (_tl156267156282_ (##cdr _e156265156277_)))
                            (let ((_clauses156285_ _tl156267156282_))
                              (if (gx#stx-list? _clauses156285_)
                                  (gx#core-cons
                                   'begin
                                   (_loop156261_ _clauses156285_))
                                  (_E156264156273_)))))
                        (_E156264156273_)))))
            (_E156263156287_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx156201_ _rpath156202_)
        (let* ((_e156203156213_ _stx156201_)
               (_E156205156217_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156203156213_)))
               (_E156204156244_
                (lambda ()
                  (if (gx#stx-pair? _e156203156213_)
                      (let ((_e156206156221_ (gx#syntax-e _e156203156213_)))
                        (let ((_hd156207156224_ (##car _e156206156221_))
                              (_tl156208156226_ (##cdr _e156206156221_)))
                          (if (gx#stx-pair? _tl156208156226_)
                              (let ((_e156209156229_
                                     (gx#syntax-e _tl156208156226_)))
                                (let ((_hd156210156232_
                                       (##car _e156209156229_))
                                      (_tl156211156234_
                                       (##cdr _e156209156229_)))
                                  (let ((_path156237_ _hd156210156232_))
                                    (if (gx#stx-null? _tl156211156234_)
                                        (if (gx#stx-string? _path156237_)
                                            (let ((_rpath156242_
                                                   (let ((_$e156239_
                                                          _rpath156202_))
                                                     (if _$e156239_
                                                         _$e156239_
                                                         (gx#core-resolve-path__%
                                                          _path156237_
                                                          (gx#stx-source
                                                           _stx156201_))))))
                                              (if (member _rpath156242_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx156201_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath156242_))
                                                    (gx#stx-source
                                                     _stx156201_)))))
                                            (_E156205156217_))
                                        (_E156205156217_)))))
                              (_E156205156217_))))
                      (_E156205156217_)))))
          (_E156204156244_))))
    (define gx#core-expand-include%__0
      (lambda (_stx156251_)
        (let ((_rpath156253_ '#f))
          (gx#core-expand-include%__% _stx156251_ _rpath156253_))))
    (define gx#core-expand-include%
      (lambda _g161393_
        (let ((_g161392_ (##length _g161393_)))
          (cond ((##fx= _g161392_ 1)
                 (apply (lambda (_stx156251_)
                          (gx#core-expand-include%__0 _stx156251_))
                        _g161393_))
                ((##fx= _g161392_ 2)
                 (apply (lambda (_stx156255_ _rpath156256_)
                          (gx#core-expand-include%__%
                           _stx156255_
                           _rpath156256_))
                        _g161393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g161393_))))))
    (define gx#core-apply-expander__%
      (lambda (_K156170_ _stx156171_ _method156172_)
        (if (procedure? _K156170_)
            (let ((_$e156174_ (gx#stx-source _stx156171_)))
              (if _$e156174_
                  ((lambda (_g156176156178_)
                     (gx#stx-wrap-source
                      (_K156170_ _stx156171_)
                      _g156176156178_))
                   _$e156174_)
                  (_K156170_ _stx156171_)))
            (let ((_$e156181_ (bound-method-ref _K156170_ _method156172_)))
              (if _$e156181_
                  ((lambda (_g156183156185_)
                     (gx#core-apply-expander__%
                      _g156183156185_
                      _stx156171_
                      _method156172_))
                   _$e156181_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx156171_
                   _method156172_))))))
    (define gx#core-apply-expander__0
      (lambda (_K156191_ _stx156192_)
        (let ((_method156194_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K156191_ _stx156192_ _method156194_))))
    (define gx#core-apply-expander
      (lambda _g161395_
        (let ((_g161394_ (##length _g161395_)))
          (cond ((##fx= _g161394_ 2)
                 (apply (lambda (_K156191_ _stx156192_)
                          (gx#core-apply-expander__0 _K156191_ _stx156192_))
                        _g161395_))
                ((##fx= _g161394_ 3)
                 (apply (lambda (_K156196_ _stx156197_ _method156198_)
                          (gx#core-apply-expander__%
                           _K156196_
                           _stx156197_
                           _method156198_))
                        _g161395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g161395_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self156166_ _stx156167_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx156167_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self156019_ _stx156020_)
        (let* ((_self156021156027_ _self156019_)
               (_E156023156031_
                (lambda () (error '"No clause matching" _self156021156027_)))
               (_K156024156036_
                (lambda (_K156034_)
                  (gx#core-apply-expander__0 _K156034_ _stx156020_))))
          (if (##structure-instance-of? _self156021156027_ 'gx#core-macro::t)
              (let* ((_e156025156039_
                      (##unchecked-structure-ref
                       _self156021156027_
                       '1
                       gx#expander::t
                       '#f))
                     (_K156042_ _e156025156039_))
                (_K156024156036_ _K156042_))
              (_E156023156031_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self155872_ _stx155873_)
        (if (gx#sealed-syntax? _stx155873_)
            _stx155873_
            (let* ((_self155874155880_ _self155872_)
                   (_E155876155884_
                    (lambda ()
                      (error '"No clause matching" _self155874155880_)))
                   (_K155877155889_
                    (lambda (_K155887_)
                      (gx#core-apply-expander__0 _K155887_ _stx155873_))))
              (if (##structure-instance-of?
                   _self155874155880_
                   'gx#core-expander::t)
                  (let* ((_e155878155892_
                          (##unchecked-structure-ref
                           _self155874155880_
                           '1
                           gx#expander::t
                           '#f))
                         (_K155895_ _e155878155892_))
                    (_K155877155889_ _K155895_))
                  (_E155876155884_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self155734_ _stx155735_ _top?155736_)
        (if (_top?155736_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self155734_ _stx155735_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx155735_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self155741_ _stx155742_)
        (let ((_top?155744_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self155741_
           _stx155742_
           _top?155744_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g161397_
        (let ((_g161396_ (##length _g161397_)))
          (cond ((##fx= _g161396_ 2)
                 (apply (lambda (_self155741_ _stx155742_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self155741_
                           _stx155742_))
                        _g161397_))
                ((##fx= _g161396_ 3)
                 (apply (lambda (_self155746_ _stx155747_ _top?155748_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self155746_
                           _stx155747_
                           _top?155748_))
                        _g161397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g161397_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self155608_ _stx155609_)
        (gx#top-special-form::apply-macro-expander__%
         _self155608_
         _stx155609_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self155433_ _stx155434_)
        (let* ((_self155435155441_ _self155433_)
               (_E155437155445_
                (lambda () (error '"No clause matching" _self155435155441_)))
               (_K155438155478_
                (lambda (_id155448_)
                  (let* ((_e155449155456_ _stx155434_)
                         (_E155451155460_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e155449155456_)))
                         (_E155450155474_
                          (lambda ()
                            (if (gx#stx-pair? _e155449155456_)
                                (let ((_e155452155464_
                                       (gx#syntax-e _e155449155456_)))
                                  (let ((_hd155453155467_
                                         (##car _e155452155464_))
                                        (_tl155454155469_
                                         (##cdr _e155452155464_)))
                                    (let ((_body155472_ _tl155454155469_))
                                      (if '#t
                                          (gx#core-cons
                                           _id155448_
                                           _body155472_)
                                          (_E155451155460_)))))
                                (_E155451155460_)))))
                    (_E155450155474_)))))
          (if (##structure-instance-of?
               _self155435155441_
               'gx#rename-macro-expander::t)
              (let* ((_e155439155481_
                      (##unchecked-structure-ref
                       _self155435155441_
                       '1
                       gx#expander::t
                       '#f))
                     (_id155484_ _e155439155481_))
                (_K155438155478_ _id155484_))
              (_E155437155445_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self155259_ _stx155260_ _method155261_)
        (let* ((_self155262155270_ _self155259_)
               (_E155264155274_
                (lambda () (error '"No clause matching" _self155262155270_)))
               (_K155265155281_
                (lambda (_phi155277_ _ctx155278_ _K155279_)
                  (gx#core-apply-user-macro
                   _K155279_
                   _stx155260_
                   _ctx155278_
                   _phi155277_
                   _method155261_))))
          (if (##structure-instance-of?
               _self155262155270_
               'gx#macro-expander::t)
              (let* ((_e155266155284_
                      (##unchecked-structure-ref
                       _self155262155270_
                       '1
                       gx#expander::t
                       '#f))
                     (_K155287_ _e155266155284_)
                     (_e155267155289_
                      (##unchecked-structure-ref
                       _self155262155270_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx155292_ _e155267155289_)
                     (_e155268155294_
                      (##unchecked-structure-ref
                       _self155262155270_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi155297_ _e155268155294_))
                (_K155265155281_ _phi155297_ _ctx155292_ _K155287_))
              (_E155264155274_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self155302_ _stx155303_)
        (let ((_method155305_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self155302_
           _stx155303_
           _method155305_))))
    (define gx#core-apply-user-expander
      (lambda _g161399_
        (let ((_g161398_ (##length _g161399_)))
          (cond ((##fx= _g161398_ 2)
                 (apply (lambda (_self155302_ _stx155303_)
                          (gx#core-apply-user-expander__0
                           _self155302_
                           _stx155303_))
                        _g161399_))
                ((##fx= _g161398_ 3)
                 (apply (lambda (_self155307_ _stx155308_ _method155309_)
                          (gx#core-apply-user-expander__%
                           _self155307_
                           _stx155308_
                           _method155309_))
                        _g161399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g161399_))))))
    (define gx#core-apply-user-macro
      (lambda (_K155249_ _stx155250_ _ctx155251_ _phi155252_ _method155253_)
        (let ((_mark155255_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx155251_
                _phi155252_
                _stx155250_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K155249_
               (gx#stx-apply-mark _stx155250_ _mark155255_)
               _method155253_)
              _mark155255_))
           gx#current-expander-marks
           (cons _mark155255_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx155101_ _phi155102_ _ctx155103_)
        (let _lp155105_ ((_bind155107_
                          (gx#core-resolve-identifier__%
                           _stx155101_
                           _phi155102_
                           _ctx155103_)))
          (if (##structure-direct-instance-of?
               _bind155107_
               'gx#import-binding::t)
              (_lp155105_
               (##unchecked-structure-ref
                _bind155107_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind155107_
                   'gx#alias-binding::t)
                  (_lp155105_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind155107_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi155102_
                    _ctx155103_))
                  _bind155107_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx155112_)
        (let* ((_phi155114_ (gx#current-expander-phi))
               (_ctx155116_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx155112_ _phi155114_ _ctx155116_))))
    (define gx#resolve-identifier__1
      (lambda (_stx155118_ _phi155119_)
        (let ((_ctx155121_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx155118_ _phi155119_ _ctx155121_))))
    (define gx#resolve-identifier
      (lambda _g161401_
        (let ((_g161400_ (##length _g161401_)))
          (cond ((##fx= _g161400_ 1)
                 (apply (lambda (_stx155112_)
                          (gx#resolve-identifier__0 _stx155112_))
                        _g161401_))
                ((##fx= _g161400_ 2)
                 (apply (lambda (_stx155118_ _phi155119_)
                          (gx#resolve-identifier__1 _stx155118_ _phi155119_))
                        _g161401_))
                ((##fx= _g161400_ 3)
                 (apply (lambda (_stx155123_ _phi155124_ _ctx155125_)
                          (gx#resolve-identifier__%
                           _stx155123_
                           _phi155124_
                           _ctx155125_))
                        _g161401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g161401_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx155059_ _val155060_ _rebind?155061_ _phi155062_ _ctx155063_)
        (let ((_rebind?155065_
               (if (not _rebind?155061_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?155061_) _rebind?155061_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx155059_)
           _val155060_
           _rebind?155065_
           _phi155062_
           _ctx155063_))))
    (define gx#bind-identifier!__0
      (lambda (_stx155070_ _val155071_)
        (let* ((_rebind?155073_ '#f)
               (_phi155075_ (gx#current-expander-phi))
               (_ctx155077_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx155070_
           _val155071_
           _rebind?155073_
           _phi155075_
           _ctx155077_))))
    (define gx#bind-identifier!__1
      (lambda (_stx155079_ _val155080_ _rebind?155081_)
        (let* ((_phi155083_ (gx#current-expander-phi))
               (_ctx155085_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx155079_
           _val155080_
           _rebind?155081_
           _phi155083_
           _ctx155085_))))
    (define gx#bind-identifier!__2
      (lambda (_stx155087_ _val155088_ _rebind?155089_ _phi155090_)
        (let ((_ctx155092_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx155087_
           _val155088_
           _rebind?155089_
           _phi155090_
           _ctx155092_))))
    (define gx#bind-identifier!
      (lambda _g161403_
        (let ((_g161402_ (##length _g161403_)))
          (cond ((##fx= _g161402_ 2)
                 (apply (lambda (_stx155070_ _val155071_)
                          (gx#bind-identifier!__0 _stx155070_ _val155071_))
                        _g161403_))
                ((##fx= _g161402_ 3)
                 (apply (lambda (_stx155079_ _val155080_ _rebind?155081_)
                          (gx#bind-identifier!__1
                           _stx155079_
                           _val155080_
                           _rebind?155081_))
                        _g161403_))
                ((##fx= _g161402_ 4)
                 (apply (lambda (_stx155087_
                                 _val155088_
                                 _rebind?155089_
                                 _phi155090_)
                          (gx#bind-identifier!__2
                           _stx155087_
                           _val155088_
                           _rebind?155089_
                           _phi155090_))
                        _g161403_))
                ((##fx= _g161402_ 5)
                 (apply (lambda (_stx155094_
                                 _val155095_
                                 _rebind?155096_
                                 _phi155097_
                                 _ctx155098_)
                          (gx#bind-identifier!__%
                           _stx155094_
                           _val155095_
                           _rebind?155096_
                           _phi155097_
                           _ctx155098_))
                        _g161403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g161403_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx155031_ _phi155032_ _ctx155033_)
        (let _lp155035_ ((_e155037_ _stx155031_)
                         (_marks155038_ (gx#current-expander-marks)))
          (if (symbol? _e155037_)
              (gx#core-resolve-binding
               _e155037_
               _phi155032_
               _phi155032_
               _ctx155033_
               (reverse _marks155038_))
              (if (gx#identifier-quote? _e155037_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e155037_ '1 gx#AST::t '#f)
                   _phi155032_
                   '0
                   (##unchecked-structure-ref
                    _e155037_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e155037_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e155037_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e155037_ '1 gx#AST::t '#f)
                       _phi155032_
                       _phi155032_
                       _ctx155033_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e155037_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks155038_))
                      (if (##structure-direct-instance-of?
                           _e155037_
                           'gx#syntax-wrap::t)
                          (_lp155035_
                           (##unchecked-structure-ref
                            _e155037_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e155037_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks155038_))
                          (if (##structure-instance-of?
                               _e155037_
                               'gerbil#AST::t)
                              (_lp155035_
                               (##unchecked-structure-ref
                                _e155037_
                                '1
                                gx#AST::t
                                '#f)
                               _marks155038_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx155031_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx155043_)
        (let* ((_phi155045_ (gx#current-expander-phi))
               (_ctx155047_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx155043_
           _phi155045_
           _ctx155047_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx155049_ _phi155050_)
        (let ((_ctx155052_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx155049_
           _phi155050_
           _ctx155052_))))
    (define gx#core-resolve-identifier
      (lambda _g161405_
        (let ((_g161404_ (##length _g161405_)))
          (cond ((##fx= _g161404_ 1)
                 (apply (lambda (_stx155043_)
                          (gx#core-resolve-identifier__0 _stx155043_))
                        _g161405_))
                ((##fx= _g161404_ 2)
                 (apply (lambda (_stx155049_ _phi155050_)
                          (gx#core-resolve-identifier__1
                           _stx155049_
                           _phi155050_))
                        _g161405_))
                ((##fx= _g161404_ 3)
                 (apply (lambda (_stx155054_ _phi155055_ _ctx155056_)
                          (gx#core-resolve-identifier__%
                           _stx155054_
                           _phi155055_
                           _ctx155056_))
                        _g161405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g161405_))))))
    (define gx#core-resolve-binding
      (lambda (_id154944_
               _phi154945_
               _src-phi154946_
               _ctx154947_
               _marks154948_)
        (letrec ((_resolve154950_
                  (lambda (_ctx155018_ _src-phi155019_ _key155020_)
                    (let _lp155022_ ((_ctx155024_
                                      (gx#core-context-shift
                                       _ctx155018_
                                       _phi154945_))
                                     (_dphi155025_
                                      (fx- _phi154945_ _src-phi155019_)))
                      (let ((_$e155027_
                             (gx#core-context-resolve
                              _ctx155024_
                              _key155020_)))
                        (if _$e155027_
                            (values _$e155027_)
                            (if (fxzero? _dphi155025_)
                                '#f
                                (if (fxpositive? _dphi155025_)
                                    (_lp155022_
                                     (gx#core-context-shift _ctx155024_ '-1)
                                     (fx- _dphi155025_ '1))
                                    (_lp155022_
                                     (gx#core-context-shift _ctx155024_ '1)
                                     (fx+ _dphi155025_ '1))))))))))
          (let _lp154952_ ((_ctx154954_ _ctx154947_)
                           (_src-phi154955_ _src-phi154946_)
                           (_rest154956_ _marks154948_))
            (let* ((_rest154957154965_ _rest154956_)
                   (_else154959154973_
                    (lambda ()
                      (_resolve154950_
                       _ctx154954_
                       _src-phi154955_
                       _id154944_)))
                   (_K154961155006_
                    (lambda (_rest154976_ _hd154977_)
                      (let* ((_hd154978154984_ _hd154977_)
                             (_E154980154988_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd154978154984_)))
                             (_K154981154998_
                              (lambda (_subst154991_)
                                (let ((_$e154995_
                                       (let ((_key154993_
                                              (if _subst154991_
                                                  (hash-get
                                                   _subst154991_
                                                   _id154944_)
                                                  '#f)))
                                         (if _key154993_
                                             (_resolve154950_
                                              _ctx154954_
                                              _src-phi154955_
                                              _key154993_)
                                             '#f))))
                                  (if _$e154995_
                                      _$e154995_
                                      (_lp154952_
                                       (##unchecked-structure-ref
                                        _hd154977_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd154977_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest154976_))))))
                        (if (##structure-instance-of?
                             _hd154978154984_
                             'gx#expander-mark::t)
                            (let* ((_e154982155001_
                                    (##unchecked-structure-ref
                                     _hd154978154984_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst155004_ _e154982155001_))
                              (_K154981154998_ _subst155004_))
                            (_E154980154988_))))))
              (if (##pair? _rest154957154965_)
                  (let ((_hd154962155009_ (##car _rest154957154965_))
                        (_tl154963155011_ (##cdr _rest154957154965_)))
                    (let* ((_hd155014_ _hd154962155009_)
                           (_rest155016_ _tl154963155011_))
                      (_K154961155006_ _rest155016_ _hd155014_)))
                  (_else154959154973_)))))))
    (define gx#core-bind!__%
      (lambda (_key154820_ _val154821_ _rebind?154822_ _phi154823_ _ctx154824_)
        (letrec ((_update-binding154826_
                  (lambda (_xval154897_)
                    (if (or (_rebind?154822_
                             _ctx154824_
                             _xval154897_
                             _val154821_)
                            (and (##structure-direct-instance-of?
                                  _xval154897_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval154897_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val154821_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val154821_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval154897_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val154821_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val154821_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval154897_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val154821_
                        (if (and (##structure-direct-instance-of?
                                  _val154821_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val154821_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval154897_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val154821_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval154897_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval154897_
                            (if (and (##structure-direct-instance-of?
                                      _val154821_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval154897_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key154820_
                                 (cons (##unchecked-structure-ref
                                        _val154821_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val154821_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval154897_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval154897_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval154897_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval154897_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key154820_
                                 _val154821_
                                 _xval154897_))))))
                 (_gensubst154827_
                  (lambda (_subst154892_ _id154893_)
                    (let ((_eid154895_
                           (gensym (if (uninterned-symbol? _id154893_)
                                       '%
                                       _id154893_))))
                      (hash-put! _subst154892_ _id154893_ _eid154895_)
                      _eid154895_)))
                 (_subst!154828_
                  (lambda (_key154830_)
                    (let* ((_key154831154839_ _key154830_)
                           (_else154833154847_ (lambda () _key154830_))
                           (_K154835154880_
                            (lambda (_mark154850_ _id154851_)
                              (let* ((_mark154852154858_ _mark154850_)
                                     (_E154854154862_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark154852154858_)))
                                     (_K154855154872_
                                      (lambda (_subst154865_)
                                        (if (not _subst154865_)
                                            (let ((_subst154867_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark154850_
                                               _subst154867_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst154827_
                                               _subst154867_
                                               _id154851_))
                                            (let ((_$e154869_
                                                   (hash-get
                                                    _subst154865_
                                                    _id154851_)))
                                              (if _$e154869_
                                                  (values _$e154869_)
                                                  (_gensubst154827_
                                                   _subst154865_
                                                   _id154851_)))))))
                                (if (##structure-instance-of?
                                     _mark154852154858_
                                     'gx#expander-mark::t)
                                    (let* ((_e154856154875_
                                            (##unchecked-structure-ref
                                             _mark154852154858_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst154878_ _e154856154875_))
                                      (_K154855154872_ _subst154878_))
                                    (_E154854154862_))))))
                      (if (##pair? _key154831154839_)
                          (let ((_hd154836154883_ (##car _key154831154839_))
                                (_tl154837154885_ (##cdr _key154831154839_)))
                            (let* ((_id154888_ _hd154836154883_)
                                   (_mark154890_ _tl154837154885_))
                              (_K154835154880_ _mark154890_ _id154888_)))
                          (_else154833154847_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx154824_ _phi154823_)
           (_subst!154828_ _key154820_)
           _val154821_
           _update-binding154826_))))
    (define gx#core-bind!__0
      (lambda (_key154914_ _val154915_)
        (let* ((_rebind?154917_ false)
               (_phi154919_ (gx#current-expander-phi))
               (_ctx154921_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key154914_
           _val154915_
           _rebind?154917_
           _phi154919_
           _ctx154921_))))
    (define gx#core-bind!__1
      (lambda (_key154923_ _val154924_ _rebind?154925_)
        (let* ((_phi154927_ (gx#current-expander-phi))
               (_ctx154929_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key154923_
           _val154924_
           _rebind?154925_
           _phi154927_
           _ctx154929_))))
    (define gx#core-bind!__2
      (lambda (_key154931_ _val154932_ _rebind?154933_ _phi154934_)
        (let ((_ctx154936_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key154931_
           _val154932_
           _rebind?154933_
           _phi154934_
           _ctx154936_))))
    (define gx#core-bind!
      (lambda _g161407_
        (let ((_g161406_ (##length _g161407_)))
          (cond ((##fx= _g161406_ 2)
                 (apply (lambda (_key154914_ _val154915_)
                          (gx#core-bind!__0 _key154914_ _val154915_))
                        _g161407_))
                ((##fx= _g161406_ 3)
                 (apply (lambda (_key154923_ _val154924_ _rebind?154925_)
                          (gx#core-bind!__1
                           _key154923_
                           _val154924_
                           _rebind?154925_))
                        _g161407_))
                ((##fx= _g161406_ 4)
                 (apply (lambda (_key154931_
                                 _val154932_
                                 _rebind?154933_
                                 _phi154934_)
                          (gx#core-bind!__2
                           _key154931_
                           _val154932_
                           _rebind?154933_
                           _phi154934_))
                        _g161407_))
                ((##fx= _g161406_ 5)
                 (apply (lambda (_key154938_
                                 _val154939_
                                 _rebind?154940_
                                 _phi154941_
                                 _ctx154942_)
                          (gx#core-bind!__%
                           _key154938_
                           _val154939_
                           _rebind?154940_
                           _phi154941_
                           _ctx154942_))
                        _g161407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g161407_))))))
    (define gx#core-identifier-key
      (lambda (_stx154754_)
        (if (symbol? _stx154754_)
            (let* ((_g154755154763_ (gx#current-expander-marks))
                   (_else154757154771_ (lambda () _stx154754_))
                   (_K154759154776_
                    (lambda (_hd154774_) (cons _stx154754_ _hd154774_))))
              (if (##pair? _g154755154763_)
                  (let* ((_hd154760154779_ (##car _g154755154763_))
                         (_hd154782_ _hd154760154779_))
                    (_K154759154776_ _hd154782_))
                  (_else154757154771_)))
            (if (gx#identifier? _stx154754_)
                (let* ((_id154784_ (gx#syntax-local-unwrap _stx154754_))
                       (_eid154786_ (gx#stx-e _id154784_))
                       (_marks154788_ (gx#stx-identifier-marks* _id154784_)))
                  (let* ((_marks154790154798_ _marks154788_)
                         (_else154792154806_ (lambda () _eid154786_))
                         (_K154794154811_
                          (lambda (_hd154809_) (cons _eid154786_ _hd154809_))))
                    (if (##pair? _marks154790154798_)
                        (let* ((_hd154795154814_ (##car _marks154790154798_))
                               (_hd154817_ _hd154795154814_))
                          (_K154794154811_ _hd154817_))
                        (_else154792154806_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx154754_)))))
    (define gx#core-context-shift
      (lambda (_ctx154699_ _phi154700_)
        (letrec ((_make-phi154702_
                  (lambda (_super154752_)
                    (let ((__obj161378
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj161378
                       (gensym 'phi)
                       _super154752_)
                      __obj161378)))
                 (_make-phi/up154703_
                  (lambda (_ctx154747_ _super154748_)
                    (let ((_ctx+1154750_ (_make-phi154702_ _super154748_)))
                      (##unchecked-structure-set!
                       _ctx154747_
                       _ctx+1154750_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1154750_
                       _ctx154747_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1154750_)))
                 (_make-phi/down154704_
                  (lambda (_ctx154742_ _super154743_)
                    (let ((_ctx-1154745_ (_make-phi154702_ _super154743_)))
                      (##unchecked-structure-set!
                       _ctx-1154745_
                       _ctx154742_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx154742_
                       _ctx-1154745_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1154745_)))
                 (_shift154705_
                  (lambda (_ctx154726_
                           _delta154727_
                           _make-delta-context154728_
                           _phi154729_
                           _K154730_)
                    (let ((_$e154732_
                           (##unchecked-structure-ref
                            _ctx154726_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e154732_
                          ((lambda (_super154735_)
                             (let* ((_super154737_
                                     (_K154730_ _super154735_ _delta154727_))
                                    (_ctx+d154739_
                                     (_make-delta-context154728_
                                      _ctx154726_
                                      _super154737_)))
                               (_K154730_
                                _ctx+d154739_
                                (fx- _phi154729_ _delta154727_))))
                           _$e154732_)
                          (error '"Bad context" _ctx154726_))))))
          (let _K154707_ ((_ctx154709_ _ctx154699_) (_phi154710_ _phi154700_))
            (if (fxzero? _phi154710_)
                _ctx154709_
                (if (fx> (##vector-length _ctx154709_) '3)
                    (if (fxpositive? _phi154710_)
                        (let ((_$e154712_
                               (##unchecked-structure-ref
                                _ctx154709_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e154712_
                              ((lambda (_g154714154716_)
                                 (_K154707_
                                  _g154714154716_
                                  (fx- _phi154710_ '1)))
                               _$e154712_)
                              (_shift154705_
                               _ctx154709_
                               '1
                               _make-phi/up154703_
                               _phi154710_
                               _K154707_)))
                        (let ((_$e154719_
                               (##unchecked-structure-ref
                                _ctx154709_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e154719_
                              ((lambda (_g154721154723_)
                                 (_K154707_
                                  _g154721154723_
                                  (fx+ _phi154710_ '1)))
                               _$e154719_)
                              (_shift154705_
                               _ctx154709_
                               '-1
                               _make-phi/down154704_
                               _phi154710_
                               _K154707_))))
                    _ctx154709_))))))
    (define gx#core-context-get
      (lambda (_ctx154696_ _key154697_)
        (hash-get
         (##unchecked-structure-ref _ctx154696_ '2 gx#expander-context::t '#f)
         _key154697_)))
    (define gx#core-context-put!
      (lambda (_ctx154692_ _key154693_ _val154694_)
        (hash-put!
         (##unchecked-structure-ref _ctx154692_ '2 gx#expander-context::t '#f)
         _key154693_
         _val154694_)))
    (define gx#core-context-resolve
      (lambda (_ctx154679_ _key154680_)
        (let _lp154682_ ((_ctx154684_ _ctx154679_))
          (let ((_$e154686_ (gx#core-context-get _ctx154684_ _key154680_)))
            (if _$e154686_
                (values _$e154686_)
                (let ((_$e154689_
                       (if (fx> (##vector-length _ctx154684_) '3)
                           (##unchecked-structure-ref
                            _ctx154684_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e154689_ (_lp154682_ _$e154689_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx154669_ _key154670_ _val154671_ _rebind154672_)
        (let ((_$e154674_ (gx#core-context-get _ctx154669_ _key154670_)))
          (if _$e154674_
              ((lambda (_xval154677_)
                 (gx#core-context-put!
                  _ctx154669_
                  _key154670_
                  (_rebind154672_ _xval154677_)))
               _$e154674_)
              (gx#core-context-put! _ctx154669_ _key154670_ _val154671_)))))
    (define gx#core-context-top__%
      (lambda (_ctx154647_ _stop?154648_)
        (let _lp154650_ ((_ctx154652_ _ctx154647_))
          (if (_stop?154648_ _ctx154652_)
              _ctx154652_
              (if (##structure-instance-of? _ctx154652_ 'gx#context-phi::t)
                  (_lp154650_
                   (##unchecked-structure-ref
                    _ctx154652_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx154658_ (gx#current-expander-context))
               (_stop?154660_ gx#top-context?))
          (gx#core-context-top__% _ctx154658_ _stop?154660_))))
    (define gx#core-context-top__1
      (lambda (_ctx154662_)
        (let ((_stop?154664_ gx#top-context?))
          (gx#core-context-top__% _ctx154662_ _stop?154664_))))
    (define gx#core-context-top
      (lambda _g161409_
        (let ((_g161408_ (##length _g161409_)))
          (cond ((##fx= _g161408_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g161409_))
                ((##fx= _g161408_ 1)
                 (apply (lambda (_ctx154662_)
                          (gx#core-context-top__1 _ctx154662_))
                        _g161409_))
                ((##fx= _g161408_ 2)
                 (apply (lambda (_ctx154666_ _stop?154667_)
                          (gx#core-context-top__% _ctx154666_ _stop?154667_))
                        _g161409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g161409_))))))
    (define gx#core-context-root__%
      (lambda (_ctx154632_)
        (let _lp154634_ ((_ctx154636_ _ctx154632_))
          (if (##structure-instance-of? _ctx154636_ 'gx#context-phi::t)
              (_lp154634_
               (##unchecked-structure-ref
                _ctx154636_
                '3
                gx#phi-context::t
                '#f))
              _ctx154636_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx154642_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx154642_))))
    (define gx#core-context-root
      (lambda _g161411_
        (let ((_g161410_ (##length _g161411_)))
          (cond ((##fx= _g161410_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g161411_))
                ((##fx= _g161410_ 1)
                 (apply (lambda (_ctx154644_)
                          (gx#core-context-root__% _ctx154644_))
                        _g161411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g161411_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx154613_ . __154610154614_)
        (let ((_$e154617_ (gx#current-expander-allow-rebind?)))
          (if _$e154617_
              _$e154617_
              (if (##structure-instance-of? _ctx154613_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx154613_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx154613_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx154624_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx154624_))))
    (define gx#core-context-rebind?
      (lambda _g161413_
        (let ((_g161412_ (##length _g161413_)))
          (cond ((##fx= _g161412_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g161413_))
                ((##fx= _g161412_ 1)
                 (apply (lambda (_ctx154626_)
                          (gx#core-context-rebind?__% _ctx154626_))
                        _g161413_))
                ((##fx>= _g161412_ 1)
                 (apply gx#core-context-rebind?__% _g161413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g161413_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx154596_)
        (let ((_$e154598_ (gx#core-context-top__1 _ctx154596_)))
          (if _$e154598_
              ((lambda (_ctx154601_)
                 (if (##structure-instance-of?
                      _ctx154601_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx154601_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e154598_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx154607_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx154607_))))
    (define gx#core-context-namespace
      (lambda _g161415_
        (let ((_g161414_ (##length _g161415_)))
          (cond ((##fx= _g161414_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g161415_))
                ((##fx= _g161414_ 1)
                 (apply (lambda (_ctx154609_)
                          (gx#core-context-namespace__% _ctx154609_))
                        _g161415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g161415_))))))
    (define gx#expander-binding?__%
      (lambda (_bind154582_ _is?154583_)
        (if (##structure-direct-instance-of?
             _bind154582_
             'gx#syntax-binding::t)
            (_is?154583_
             (##unchecked-structure-ref
              _bind154582_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind154588_)
        (let ((_is?154590_ gx#expander?))
          (gx#expander-binding?__% _bind154588_ _is?154590_))))
    (define gx#expander-binding?
      (lambda _g161417_
        (let ((_g161416_ (##length _g161417_)))
          (cond ((##fx= _g161416_ 1)
                 (apply (lambda (_bind154588_)
                          (gx#expander-binding?__0 _bind154588_))
                        _g161417_))
                ((##fx= _g161416_ 2)
                 (apply (lambda (_bind154592_ _is?154593_)
                          (gx#expander-binding?__% _bind154592_ _is?154593_))
                        _g161417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g161417_))))))
    (define gx#core-expander-binding?
      (lambda (_bind154579_)
        (gx#expander-binding?__% _bind154579_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind154577_)
        (gx#expander-binding?__% _bind154577_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind154571_)
        (letrec ((_direct-special-form?154573_
                  (lambda (_obj154575_)
                    (##structure-direct-instance-of?
                     _obj154575_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind154571_
           _direct-special-form?154573_))))
    (define gx#special-form-binding?
      (lambda (_bind154569_)
        (gx#expander-binding?__% _bind154569_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind154560_)
        (letrec ((_feature?154562_
                  (lambda (_e154564_)
                    (let ((_$e154566_
                           (##structure-instance-of?
                            _e154564_
                            'gx#feature-expander::t)))
                      (if _$e154566_
                          _$e154566_
                          (##structure-instance-of?
                           _e154564_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind154560_ _feature?154562_))))
    (define gx#private-feature-binding?
      (lambda (_bind154558_)
        (gx#expander-binding?__% _bind154558_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id154545_ _bound?154546_)
        (if (gx#identifier? _id154545_)
            (_bound?154546_ (gx#resolve-identifier__0 _id154545_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id154551_)
        (let ((_bound?154553_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id154551_ _bound?154553_))))
    (define gx#core-bound-identifier?
      (lambda _g161419_
        (let ((_g161418_ (##length _g161419_)))
          (cond ((##fx= _g161418_ 1)
                 (apply (lambda (_id154551_)
                          (gx#core-bound-identifier?__0 _id154551_))
                        _g161419_))
                ((##fx= _g161418_ 2)
                 (apply (lambda (_id154555_ _bound?154556_)
                          (gx#core-bound-identifier?__%
                           _id154555_
                           _bound?154556_))
                        _g161419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g161419_))))))
    (define gx#core-identifier=?
      (lambda (_x154535_ _y154536_)
        (letrec ((_y=?154538_
                  (lambda (_xid154542_)
                    ((if (list? _y154536_) memq eq?) _xid154542_ _y154536_))))
          (let ((_bind154540_ (gx#resolve-identifier__0 _x154535_)))
            (if (##structure-instance-of? _bind154540_ 'gx#binding::t)
                (_y=?154538_
                 (##unchecked-structure-ref _bind154540_ '1 gx#binding::t '#f))
                (_y=?154538_ (gx#stx-e _x154535_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e154533_)
        (if (interned-symbol? _e154533_)
            (string-index (symbol->string _e154533_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx154488_ _src154489_ _ctx154490_ _marks154491_)
        (if (##structure? _stx154488_)
            (let ((_$e154493_ (gx#sealed-syntax-unwrap _stx154488_)))
              (if _$e154493_
                  (values _$e154493_)
                  (if (gx#identifier? _stx154488_)
                      (let ((_id154496_
                             (gx#stx-unwrap__% _stx154488_ _marks154491_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id154496_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e154498_
                                (##unchecked-structure-ref
                                 _id154496_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e154498_ _$e154498_ _src154489_))
                         _ctx154490_
                         (##unchecked-structure-ref
                          _id154496_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx154488_)
                       (let ((_$e154501_ (gx#stx-source _stx154488_)))
                         (if _$e154501_ _$e154501_ _src154489_))
                       _ctx154490_
                       (reverse _marks154491_)))))
            (##structure
             gx#syntax-quote::t
             _stx154488_
             _src154489_
             _ctx154490_
             (reverse _marks154491_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx154507_)
        (let* ((_src154509_ '#f)
               (_ctx154511_ (gx#current-expander-context))
               (_marks154513_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx154507_
           _src154509_
           _ctx154511_
           _marks154513_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx154515_ _src154516_)
        (let* ((_ctx154518_ (gx#current-expander-context))
               (_marks154520_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx154515_
           _src154516_
           _ctx154518_
           _marks154520_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx154522_ _src154523_ _ctx154524_)
        (let ((_marks154526_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx154522_
           _src154523_
           _ctx154524_
           _marks154526_))))
    (define gx#core-quote-syntax
      (lambda _g161421_
        (let ((_g161420_ (##length _g161421_)))
          (cond ((##fx= _g161420_ 1)
                 (apply (lambda (_stx154507_)
                          (gx#core-quote-syntax__0 _stx154507_))
                        _g161421_))
                ((##fx= _g161420_ 2)
                 (apply (lambda (_stx154515_ _src154516_)
                          (gx#core-quote-syntax__1 _stx154515_ _src154516_))
                        _g161421_))
                ((##fx= _g161420_ 3)
                 (apply (lambda (_stx154522_ _src154523_ _ctx154524_)
                          (gx#core-quote-syntax__2
                           _stx154522_
                           _src154523_
                           _ctx154524_))
                        _g161421_))
                ((##fx= _g161420_ 4)
                 (apply (lambda (_stx154528_
                                 _src154529_
                                 _ctx154530_
                                 _marks154531_)
                          (gx#core-quote-syntax__%
                           _stx154528_
                           _src154529_
                           _ctx154530_
                           _marks154531_))
                        _g161421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g161421_))))))
    (define gx#core-cons
      (lambda (_hd154484_ _tl154485_)
        (cons (gx#core-quote-syntax__0 _hd154484_) _tl154485_)))
    (define gx#core-list
      (lambda (_hd154481_ . _rest154482_)
        (cons (gx#core-quote-syntax__0 _hd154481_) _rest154482_)))
    (define gx#core-cons*
      (lambda (_hd154478_ . _rest154479_)
        (apply cons* (gx#core-quote-syntax__0 _hd154478_) _rest154479_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path154452_ _rel154453_)
        (let ((_path154465_ (gx#stx-e _stx-path154452_))
              (_reldir154466_
               (let _lp154455_ ((_relsrc154457_
                                 (let ((_$e154462_
                                        (gx#stx-source _stx-path154452_)))
                                   (if _$e154462_ _$e154462_ _rel154453_))))
                 (if (##structure-instance-of? _relsrc154457_ 'gerbil#AST::t)
                     (_lp154455_
                      (let ((_$e154459_ (gx#stx-source _relsrc154457_)))
                        (if _$e154459_ _$e154459_ (gx#stx-e _relsrc154457_))))
                     (if (source-location-path? _relsrc154457_)
                         (path-directory (source-location-path _relsrc154457_))
                         (if (string? _relsrc154457_)
                             (path-directory _relsrc154457_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path154465_ (path-normalize _reldir154466_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path154471_)
        (let ((_rel154473_ '#f))
          (gx#core-resolve-path__% _stx-path154471_ _rel154473_))))
    (define gx#core-resolve-path
      (lambda _g161423_
        (let ((_g161422_ (##length _g161423_)))
          (cond ((##fx= _g161422_ 1)
                 (apply (lambda (_stx-path154471_)
                          (gx#core-resolve-path__0 _stx-path154471_))
                        _g161423_))
                ((##fx= _g161422_ 2)
                 (apply (lambda (_stx-path154475_ _rel154476_)
                          (gx#core-resolve-path__%
                           _stx-path154475_
                           _rel154476_))
                        _g161423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g161423_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr154408_ _ctx154409_)
        (let* ((_repr154410154417_ _repr154408_)
               (_E154412154421_
                (lambda () (error '"No clause matching" _repr154410154417_)))
               (_K154413154429_
                (lambda (_subs154424_ _phi154425_)
                  (let ((_subst154427_
                         (if (not (null? _subs154424_))
                             (list->hash-table-eq _subs154424_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst154427_
                     _ctx154409_
                     _phi154425_
                     '#f)))))
          (if (##pair? _repr154410154417_)
              (let ((_hd154414154432_ (##car _repr154410154417_))
                    (_tl154415154434_ (##cdr _repr154410154417_)))
                (let* ((_phi154437_ _hd154414154432_)
                       (_subs154439_ _tl154415154434_))
                  (_K154413154429_ _subs154439_ _phi154437_)))
              (_E154412154421_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr154444_)
        (let ((_ctx154446_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr154444_ _ctx154446_))))
    (define gx#core-deserialize-mark
      (lambda _g161425_
        (let ((_g161424_ (##length _g161425_)))
          (cond ((##fx= _g161424_ 1)
                 (apply (lambda (_repr154444_)
                          (gx#core-deserialize-mark__0 _repr154444_))
                        _g161425_))
                ((##fx= _g161424_ 2)
                 (apply (lambda (_repr154448_ _ctx154449_)
                          (gx#core-deserialize-mark__%
                           _repr154448_
                           _ctx154449_))
                        _g161425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g161425_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx154405_)
        (gx#stx-rewrap _stx154405_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx154403_)
        (gx#stx-unwrap__% _stx154403_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx154373_)
        (let* ((_g154374154382_ (gx#current-expander-marks))
               (_else154376154390_ (lambda () _stx154373_))
               (_K154378154395_
                (lambda (_hd154393_)
                  (gx#stx-apply-mark _stx154373_ _hd154393_))))
          (if (##pair? _g154374154382_)
              (let* ((_hd154379154398_ (##car _g154374154382_))
                     (_hd154401_ _hd154379154398_))
                (_K154378154395_ _hd154401_))
              (_else154376154390_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx154358_ _E154359_)
        (let ((_bind154361_ (gx#resolve-identifier__0 _stx154358_)))
          (if (##structure-direct-instance-of?
               _bind154361_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind154361_
               '4
               gx#syntax-binding::t
               '#f)
              (_E154359_ _stx154358_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx154366_)
        (let ((_E154368_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx154366_ _E154368_))))
    (define gx#syntax-local-e
      (lambda _g161427_
        (let ((_g161426_ (##length _g161427_)))
          (cond ((##fx= _g161426_ 1)
                 (apply (lambda (_stx154366_)
                          (gx#syntax-local-e__0 _stx154366_))
                        _g161427_))
                ((##fx= _g161426_ 2)
                 (apply (lambda (_stx154370_ _E154371_)
                          (gx#syntax-local-e__% _stx154370_ _E154371_))
                        _g161427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g161427_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx154342_ _E154343_)
        (let ((_e154345_ (gx#syntax-local-e__% _stx154342_ _E154343_)))
          (if (##structure-instance-of? _e154345_ 'gx#expander::t)
              (##structure-ref _e154345_ '1 gx#expander::t '#f)
              _e154345_))))
    (define gx#syntax-local-value__0
      (lambda (_stx154350_)
        (let ((_E154352_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx154350_ _E154352_))))
    (define gx#syntax-local-value
      (lambda _g161429_
        (let ((_g161428_ (##length _g161429_)))
          (cond ((##fx= _g161428_ 1)
                 (apply (lambda (_stx154350_)
                          (gx#syntax-local-value__0 _stx154350_))
                        _g161429_))
                ((##fx= _g161428_ 2)
                 (apply (lambda (_stx154354_ _E154355_)
                          (gx#syntax-local-value__% _stx154354_ _E154355_))
                        _g161429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g161429_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx154339_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx154339_)))))
