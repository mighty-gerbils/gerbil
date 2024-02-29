(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1709213449)
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
      (lambda _$args84752_
        (apply make-instance gx#expander-context::t _$args84752_)))
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
      (lambda _$args84749_
        (apply make-instance gx#root-context::t _$args84749_)))
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
      (lambda _$args84746_
        (apply make-instance gx#phi-context::t _$args84746_)))
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
      (lambda _$args84743_
        (apply make-instance gx#top-context::t _$args84743_)))
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
      (lambda _$args84740_
        (apply make-instance gx#module-context::t _$args84740_)))
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
      (lambda _$args84737_
        (apply make-instance gx#prelude-context::t _$args84737_)))
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
      (lambda _$args84734_
        (apply make-instance gx#local-context::t _$args84734_)))
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
      (lambda (_self84718_ _id84719_ _super84720_)
        (if (##fx< '3 (##structure-length _self84718_))
            (begin
              (##unchecked-structure-set!
               _self84718_
               _id84719_
               '1
               (##structure-type _self84718_)
               '#f)
              (##unchecked-structure-set!
               _self84718_
               (make-hash-table-eq)
               '2
               (##structure-type _self84718_)
               '#f)
              (##unchecked-structure-set!
               _self84718_
               _super84720_
               '3
               (##structure-type _self84718_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84718_
                   '3
                   (##vector-length _self84718_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84725_ _id84726_)
        (let ((_super84728_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84725_ _id84726_ _super84728_))))
    (define gx#phi-context:::init!
      (lambda _g84795_
        (let ((_g84794_ (##length _g84795_)))
          (cond ((##fx= _g84794_ 2)
                 (apply (lambda (_self84725_ _id84726_)
                          (gx#phi-context:::init!__0 _self84725_ _id84726_))
                        _g84795_))
                ((##fx= _g84794_ 3)
                 (apply (lambda (_self84730_ _id84731_ _super84732_)
                          (gx#phi-context:::init!__%
                           _self84730_
                           _id84731_
                           _super84732_))
                        _g84795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84795_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self84582_ _super84583_)
        (if (##fx< '3 (##structure-length _self84582_))
            (begin
              (##unchecked-structure-set!
               _self84582_
               (gensym 'L)
               '1
               (##structure-type _self84582_)
               '#f)
              (##unchecked-structure-set!
               _self84582_
               (make-hash-table-eq)
               '2
               (##structure-type _self84582_)
               '#f)
              (##unchecked-structure-set!
               _self84582_
               _super84583_
               '3
               (##structure-type _self84582_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84582_
                   '3
                   (##vector-length _self84582_)))))
    (define gx#local-context:::init!__0
      (lambda (_self84588_)
        (let ((_super84590_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self84588_ _super84590_))))
    (define gx#local-context:::init!
      (lambda _g84797_
        (let ((_g84796_ (##length _g84797_)))
          (cond ((##fx= _g84796_ 1)
                 (apply (lambda (_self84588_)
                          (gx#local-context:::init!__0 _self84588_))
                        _g84797_))
                ((##fx= _g84796_ 2)
                 (apply (lambda (_self84592_ _super84593_)
                          (gx#local-context:::init!__%
                           _self84592_
                           _super84593_))
                        _g84797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84797_))))))
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
      (lambda _$args84456_ (apply make-instance gx#binding::t _$args84456_)))
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
      (lambda _$args84453_
        (apply make-instance gx#runtime-binding::t _$args84453_)))
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
      (lambda _$args84450_
        (apply make-instance gx#local-binding::t _$args84450_)))
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
      (lambda _$args84447_
        (apply make-instance gx#top-binding::t _$args84447_)))
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
      (lambda _$args84444_
        (apply make-instance gx#module-binding::t _$args84444_)))
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
      (lambda _$args84441_
        (apply make-instance gx#extern-binding::t _$args84441_)))
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
      (lambda _$args84438_
        (apply make-instance gx#syntax-binding::t _$args84438_)))
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
      (lambda _$args84435_
        (apply make-instance gx#import-binding::t _$args84435_)))
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
      (lambda _$args84432_
        (apply make-instance gx#alias-binding::t _$args84432_)))
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
      (lambda _$args84429_ (apply make-instance gx#expander::t _$args84429_)))
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
      (lambda _$args84426_
        (apply make-instance gx#core-expander::t _$args84426_)))
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
      (lambda _$args84423_
        (apply make-instance gx#expression-form::t _$args84423_)))
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
      (lambda _$args84420_
        (apply make-instance gx#special-form::t _$args84420_)))
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
      (lambda _$args84417_
        (apply make-instance gx#definition-form::t _$args84417_)))
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
      (lambda _$args84414_
        (apply make-instance gx#top-special-form::t _$args84414_)))
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
      (lambda _$args84411_
        (apply make-instance gx#module-special-form::t _$args84411_)))
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
      (lambda _$args84408_
        (apply make-instance gx#feature-expander::t _$args84408_)))
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
      (lambda _$args84405_
        (apply make-instance gx#private-feature-expander::t _$args84405_)))
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
      (lambda _$args84402_
        (apply make-instance gx#reserved-expander::t _$args84402_)))
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
      (lambda _$args84399_
        (apply make-instance gx#macro-expander::t _$args84399_)))
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
      (lambda _$args84396_
        (apply make-instance gx#rename-macro-expander::t _$args84396_)))
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
      (lambda _$args84393_
        (apply make-instance gx#user-expander::t _$args84393_)))
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
      (lambda _$args84390_
        (apply make-instance gx#expander-mark::t _$args84390_)))
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
      (lambda (_ctx84375_ _message84376_ _stx84377_ . _details84378_)
        (let ((_ctx84388_
               (let ((_$e84380_ _ctx84375_))
                 (if _$e84380_
                     _$e84380_
                     (let ((_$e84383_ (gx#core-context-top__0)))
                       (if _$e84383_
                           ((lambda (_ctx84386_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx84386_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e84383_)
                           '#f))))))
          (raise (make-syntax-error
                  _message84376_
                  (cons _stx84377_ _details84378_)
                  _ctx84388_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx84362_ _expression?84363_)
        (gx#eval-syntax* (gx#core-expand__% _stx84362_ _expression?84363_))))
    (define gx#eval-syntax__0
      (lambda (_stx84368_)
        (let ((_expression?84370_ '#f))
          (gx#eval-syntax__% _stx84368_ _expression?84370_))))
    (define gx#eval-syntax
      (lambda _g84799_
        (let ((_g84798_ (##length _g84799_)))
          (cond ((##fx= _g84798_ 1)
                 (apply (lambda (_stx84368_) (gx#eval-syntax__0 _stx84368_))
                        _g84799_))
                ((##fx= _g84798_ 2)
                 (apply (lambda (_stx84372_ _expression?84373_)
                          (gx#eval-syntax__% _stx84372_ _expression?84373_))
                        _g84799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84799_))))))
    (define gx#eval-syntax*
      (lambda (_stx84359_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx84359_))))
    (define gx#core-expand__%
      (lambda (_stx84346_ _expression?84347_)
        (if _expression?84347_
            (gx#core-expand-expression _stx84346_)
            (gx#core-expand-top _stx84346_))))
    (define gx#core-expand__0
      (lambda (_stx84352_)
        (let ((_expression?84354_ '#f))
          (gx#core-expand__% _stx84352_ _expression?84354_))))
    (define gx#core-expand
      (lambda _g84801_
        (let ((_g84800_ (##length _g84801_)))
          (cond ((##fx= _g84800_ 1)
                 (apply (lambda (_stx84352_) (gx#core-expand__0 _stx84352_))
                        _g84801_))
                ((##fx= _g84800_ 2)
                 (apply (lambda (_stx84356_ _expression?84357_)
                          (gx#core-expand__% _stx84356_ _expression?84357_))
                        _g84801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84801_))))))
    (define gx#core-expand-top
      (lambda (_stx84313_)
        (let* ((_stx84315_ (gx#core-expand*__0 _stx84313_))
               (_e8431684323_ _stx84315_)
               (_E8431884327_
                (lambda () (gx#core-expand-expression _stx84315_)))
               (_E8431784341_
                (lambda ()
                  (if (gx#stx-pair? _e8431684323_)
                      (let ((_e8431984331_ (gx#syntax-e _e8431684323_)))
                        (let ((_hd8432084334_ (##car _e8431984331_))
                              (_tl8432184336_ (##cdr _e8431984331_)))
                          (let ((_form84339_ _hd8432084334_))
                            (if (gx#core-bound-identifier?__0 _form84339_)
                                _stx84315_
                                (_E8431884327_)))))
                      (_E8431884327_)))))
          (_E8431784341_))))
    (define gx#core-expand-expression
      (lambda (_stx84260_)
        (letrec ((_sealed-expression?84262_
                  (lambda (_hd84283_)
                    (if (gx#sealed-syntax? _hd84283_)
                        (let* ((_e8428484291_ _hd84283_)
                               (_E8428684295_ (lambda () '#f))
                               (_E8428584309_
                                (lambda ()
                                  (if (gx#stx-pair? _e8428484291_)
                                      (let ((_e8428784299_
                                             (gx#syntax-e _e8428484291_)))
                                        (let ((_hd8428884302_
                                               (##car _e8428784299_))
                                              (_tl8428984304_
                                               (##cdr _e8428784299_)))
                                          (let ((_form84307_ _hd8428884302_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form84307_
                                                 gx#expression-form-binding?)
                                                (_E8428684295_)))))
                                      (_E8428684295_)))))
                          (_E8428584309_))
                        '#f)))
                 (_illegal-expression84263_
                  (lambda (_hd84281_ . _g84802_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx84260_
                     _hd84281_)))
                 (_expand-e84264_
                  (lambda (_form84276_ _hd84277_)
                    (let ((_bind84279_
                           (if (##structure-instance-of?
                                _form84276_
                                'gx#binding::t)
                               _form84276_
                               (gx#resolve-identifier__0 _form84276_))))
                      (if (gx#core-expander-binding? _bind84279_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind84279_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd84277_
                            (gx#stx-source _stx84260_)))
                          (if (##structure-direct-instance-of?
                               _bind84279_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind84279_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd84277_
                                 (gx#stx-source _stx84260_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx84260_
                               _form84276_)))))))
          (let ((_hd84266_ (gx#core-expand-head _stx84260_)))
            (if (_sealed-expression?84262_ _hd84266_)
                _hd84266_
                (if (gx#stx-pair? _hd84266_)
                    (let* ((_form84268_ (gx#stx-car _hd84266_))
                           (_bind84270_
                            (if (gx#identifier? _form84268_)
                                (gx#resolve-identifier__0 _form84268_)
                                '#f)))
                      (if (or (not _bind84270_)
                              (not (gx#core-expander-binding? _bind84270_)))
                          (_expand-e84264_ '%%app (cons '%%app _hd84266_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind84270_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd84266_
                               _illegal-expression84263_)
                              (if (gx#expression-form-binding? _bind84270_)
                                  (_expand-e84264_ _bind84270_ _hd84266_)
                                  (if (gx#direct-special-form-binding?
                                       _bind84270_)
                                      (gx#core-expand-expression
                                       (_expand-e84264_ _bind84270_ _hd84266_))
                                      (_illegal-expression84263_
                                       _hd84266_))))))
                    (if (gx#core-bound-identifier?__0 _hd84266_)
                        (_illegal-expression84263_ _hd84266_)
                        (if (gx#identifier? _hd84266_)
                            (_expand-e84264_
                             '%%ref
                             (cons '%%ref (cons _hd84266_ '())))
                            (if (gx#stx-datum? _hd84266_)
                                (_expand-e84264_
                                 '%#quote
                                 (cons '%#quote (cons _hd84266_ '())))
                                (_illegal-expression84263_ _hd84266_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx84255_)
        (call-with-parameters
         (lambda ()
           (let ((_stx84258_ (gx#core-expand-expression _stx84255_)))
             (values _stx84258_ (gx#eval-syntax* _stx84258_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx84236_ _stop?84237_)
        (let _lp84239_ ((_stx84241_ _stx84236_))
          (if (_stop?84237_ _stx84241_)
              _stx84241_
              (let ((_rstx84243_ (gx#core-expand1 _stx84241_)))
                (if (eq? _stx84241_ _rstx84243_)
                    _stx84241_
                    (_lp84239_ _rstx84243_)))))))
    (define gx#core-expand*__0
      (lambda (_stx84248_)
        (let ((_stop?84250_ false))
          (gx#core-expand*__% _stx84248_ _stop?84250_))))
    (define gx#core-expand*
      (lambda _g84804_
        (let ((_g84803_ (##length _g84804_)))
          (cond ((##fx= _g84803_ 1)
                 (apply (lambda (_stx84248_) (gx#core-expand*__0 _stx84248_))
                        _g84804_))
                ((##fx= _g84803_ 2)
                 (apply (lambda (_stx84252_ _stop?84253_)
                          (gx#core-expand*__% _stx84252_ _stop?84253_))
                        _g84804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84804_))))))
    (define gx#core-expand1
      (lambda (_stx84192_)
        (letrec ((_step84194_
                  (lambda (_hd84231_)
                    (let ((_bind84233_ (gx#resolve-identifier__0 _hd84231_)))
                      (if (##structure-instance-of?
                           _bind84233_
                           'gx#runtime-binding::t)
                          _stx84192_
                          (if (##structure-direct-instance-of?
                               _bind84233_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind84233_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx84192_)
                              (if (not _bind84233_)
                                  _stx84192_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx84192_))))))))
          (let* ((_e8419584203_ _stx84192_)
                 (_E8420184207_ (lambda () _stx84192_))
                 (_E8419784213_
                  (lambda ()
                    (let ((_hd84211_ _e8419584203_))
                      (if (gx#identifier? _hd84211_)
                          (_step84194_ _hd84211_)
                          (_E8420184207_)))))
                 (_E8419684227_
                  (lambda ()
                    (if (gx#stx-pair? _e8419584203_)
                        (let ((_e8419884217_ (gx#syntax-e _e8419584203_)))
                          (let ((_hd8419984220_ (##car _e8419884217_))
                                (_tl8420084222_ (##cdr _e8419884217_)))
                            (let ((_hd84225_ _hd8419984220_))
                              (if (gx#identifier? _hd84225_)
                                  (_step84194_ _hd84225_)
                                  (_E8419784213_)))))
                        (_E8419784213_)))))
            (_E8419684227_)))))
    (define gx#core-expand-head
      (lambda (_stx84158_)
        (letrec ((_stop?84160_
                  (lambda (_stx84162_)
                    (let* ((_e8416384170_ _stx84162_)
                           (_E8416584174_ (lambda () '#f))
                           (_E8416484188_
                            (lambda ()
                              (if (gx#stx-pair? _e8416384170_)
                                  (let ((_e8416684178_
                                         (gx#syntax-e _e8416384170_)))
                                    (let ((_hd8416784181_
                                           (##car _e8416684178_))
                                          (_tl8416884183_
                                           (##cdr _e8416684178_)))
                                      (let ((_hd84186_ _hd8416784181_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd84186_)
                                            (_E8416584174_)))))
                                  (_E8416584174_)))))
                      (_E8416484188_)))))
          (gx#core-expand*__% _stx84158_ _stop?84160_))))
    (define gx#core-expand-block__%
      (lambda (_stx83964_
               _expand-special83965_
               _begin-form83966_
               _expand-e83967_)
        (letrec ((_expand-splice83969_
                  (lambda (_hd84132_ _body84133_ _rest84134_ _r84135_)
                    (if (gx#stx-list? _body84133_)
                        (_K83973_
                         (gx#stx-foldr cons _rest84134_ _body84133_)
                         _r84135_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83964_
                         _hd84132_))))
                 (_expand-cond-expand83970_
                  (lambda (_hd84128_ _rest84129_ _r84130_)
                    (_K83973_
                     (cons (gx#core-expand-cond-expand% _hd84128_) _rest84129_)
                     _r84130_)))
                 (_expand-include83971_
                  (lambda (_hd84077_ _rest84078_ _r84079_)
                    (let* ((_e8408084090_ _hd84077_)
                           (_E8408284094_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8408084090_)))
                           (_E8408184124_
                            (lambda ()
                              (if (gx#stx-pair? _e8408084090_)
                                  (let ((_e8408384098_
                                         (gx#syntax-e _e8408084090_)))
                                    (let ((_hd8408484101_
                                           (##car _e8408384098_))
                                          (_tl8408584103_
                                           (##cdr _e8408384098_)))
                                      (if (gx#stx-pair? _tl8408584103_)
                                          (let ((_e8408684106_
                                                 (gx#syntax-e _tl8408584103_)))
                                            (let ((_hd8408784109_
                                                   (##car _e8408684106_))
                                                  (_tl8408884111_
                                                   (##cdr _e8408684106_)))
                                              (let ((_path84114_
                                                     _hd8408784109_))
                                                (if (gx#stx-null?
                                                     _tl8408884111_)
                                                    (if (gx#stx-string?
                                                         _path84114_)
                                                        (let* ((_rpath84116_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path84114_
                         (gx#stx-source _hd84077_)))
                       (_block84118_
                        (gx#core-expand-include%__% _hd84077_ _rpath84116_))
                       (_rbody84121_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block84118_
                            _expand-special83965_
                            '#f
                            _expand-e83967_))
                         gx#current-expander-path
                         (cons _rpath84116_ (gx#current-expander-path)))))
                  (_K83973_ _rest84078_ (foldr1 cons _r84079_ _rbody84121_)))
                (_E8408284094_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8408284094_)))))
                                          (_E8408284094_))))
                                  (_E8408284094_)))))
                      (_E8408184124_))))
                 (_expand-expression83972_
                  (lambda (_hd84073_ _rest84074_ _r84075_)
                    (_K83973_
                     _rest84074_
                     (cons (_expand-e83967_ _hd84073_) _r84075_))))
                 (_K83973_
                  (lambda (_rest84003_ _r84004_)
                    (let* ((_e8400584012_ _rest84003_)
                           (_E8400784016_
                            (lambda ()
                              (if _begin-form83966_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83966_
                                    (reverse _r84004_))
                                   (gx#stx-source _stx83964_))
                                  _r84004_)))
                           (_E8400684069_
                            (lambda ()
                              (if (gx#stx-pair? _e8400584012_)
                                  (let ((_e8400884020_
                                         (gx#syntax-e _e8400584012_)))
                                    (let ((_hd8400984023_
                                           (##car _e8400884020_))
                                          (_tl8401084025_
                                           (##cdr _e8400884020_)))
                                      (let* ((_hd84028_ _hd8400984023_)
                                             (_rest84030_ _tl8401084025_))
                                        (if '#t
                                            (let* ((_hd84032_
                                                    (gx#core-expand-head
                                                     _hd84028_))
                                                   (_e8403384040_ _hd84032_)
                                                   (_E8403584044_
                                                    (lambda ()
                                                      (_expand-expression83972_
                                                       _hd84032_
                                                       _rest84030_
                                                       _r84004_)))
                                                   (_E8403484065_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8403384040_)
                                                          (let ((_e8403684048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8403384040_)))
                    (let ((_hd8403784051_ (##car _e8403684048_))
                          (_tl8403884053_ (##cdr _e8403684048_)))
                      (let* ((_form84056_ _hd8403784051_)
                             (_body84058_ _tl8403884053_))
                        (if '#t
                            (let ((_bind84060_
                                   (if (gx#identifier? _form84056_)
                                       (gx#resolve-identifier__0 _form84056_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind84060_)
                                  (let ((_$e84062_
                                         (##unchecked-structure-ref
                                          _bind84060_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e84062_)
                                        (_expand-splice83969_
                                         _hd84032_
                                         _body84058_
                                         _rest84030_
                                         _r84004_)
                                        (if (eq? '%#cond-expand _$e84062_)
                                            (_expand-cond-expand83970_
                                             _hd84032_
                                             _rest84030_
                                             _r84004_)
                                            (if (eq? '%#include _$e84062_)
                                                (_expand-include83971_
                                                 _hd84032_
                                                 _rest84030_
                                                 _r84004_)
                                                (_expand-special83965_
                                                 _hd84032_
                                                 _K83973_
                                                 _rest84030_
                                                 _r84004_)))))
                                  (_expand-expression83972_
                                   _hd84032_
                                   _rest84030_
                                   _r84004_)))
                            (_E8403584044_)))))
                  (_E8403584044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8403484065_))
                                            (_E8400784016_)))))
                                  (_E8400784016_)))))
                      (_E8400684069_)))))
          (let* ((_e8397483981_ _stx83964_)
                 (_E8397683985_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8397483981_)))
                 (_E8397583999_
                  (lambda ()
                    (if (gx#stx-pair? _e8397483981_)
                        (let ((_e8397783989_ (gx#syntax-e _e8397483981_)))
                          (let ((_hd8397883992_ (##car _e8397783989_))
                                (_tl8397983994_ (##cdr _e8397783989_)))
                            (let ((_body83997_ _tl8397983994_))
                              (if (gx#stx-list? _body83997_)
                                  (_K83973_ _body83997_ '())
                                  (_E8397683985_)))))
                        (_E8397683985_)))))
            (_E8397583999_)))))
    (define gx#core-expand-block__0
      (lambda (_stx84140_ _expand-special84141_)
        (let* ((_begin-form84143_ '%#begin)
               (_expand-e84145_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84140_
           _expand-special84141_
           _begin-form84143_
           _expand-e84145_))))
    (define gx#core-expand-block__1
      (lambda (_stx84147_ _expand-special84148_ _begin-form84149_)
        (let ((_expand-e84151_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84147_
           _expand-special84148_
           _begin-form84149_
           _expand-e84151_))))
    (define gx#core-expand-block
      (lambda _g84806_
        (let ((_g84805_ (##length _g84806_)))
          (cond ((##fx= _g84805_ 2)
                 (apply (lambda (_stx84140_ _expand-special84141_)
                          (gx#core-expand-block__0
                           _stx84140_
                           _expand-special84141_))
                        _g84806_))
                ((##fx= _g84805_ 3)
                 (apply (lambda (_stx84147_
                                 _expand-special84148_
                                 _begin-form84149_)
                          (gx#core-expand-block__1
                           _stx84147_
                           _expand-special84148_
                           _begin-form84149_))
                        _g84806_))
                ((##fx= _g84805_ 4)
                 (apply (lambda (_stx84153_
                                 _expand-special84154_
                                 _begin-form84155_
                                 _expand-e84156_)
                          (gx#core-expand-block__%
                           _stx84153_
                           _expand-special84154_
                           _begin-form84155_
                           _expand-e84156_))
                        _g84806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84806_))))))
    (define gx#core-expand-block*
      (lambda (_stx83912_ _expand-special83913_)
        (let* ((_g8391483925_
                (gx#core-expand-block__1 _stx83912_ _expand-special83913_ '#f))
               (_E8391883929_
                (lambda () (error '"No clause matching" _g8391483925_))))
          (let ((_K8392383960_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83912_)))
                (_K8392083946_ (lambda (_expr83944_) _expr83944_))
                (_K8391983935_
                 (lambda (_body83933_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83933_))
                    (gx#stx-source _stx83912_)))))
            (let ((_try-match8391683956_
                   (lambda ()
                     (if (##pair? _g8391483925_)
                         (let ((_tl8392283951_ (##cdr _g8391483925_))
                               (_hd8392183949_ (##car _g8391483925_)))
                           (if (##null? _tl8392283951_)
                               (let ((_expr83954_ _hd8392183949_))
                                 (_K8392083946_ _expr83954_))
                               (let ((_body83938_ _g8391483925_))
                                 (_K8391983935_ _body83938_))))
                         (let ((_body83938_ _g8391483925_))
                           (_K8391983935_ _body83938_))))))
              (if (##null? _g8391483925_)
                  (_K8392383960_)
                  (_try-match8391683956_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83740_)
        (letrec ((_satisfied?83742_
                  (lambda (_condition83840_)
                    (let* ((_e8384183856_ _condition83840_)
                           (_E8385183860_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8384183856_)))
                           (_E8384483879_
                            (lambda ()
                              (if (gx#stx-pair? _e8384183856_)
                                  (let ((_e8385283864_
                                         (gx#syntax-e _e8384183856_)))
                                    (let ((_hd8385383867_
                                           (##car _e8385283864_))
                                          (_tl8385483869_
                                           (##cdr _e8385283864_)))
                                      (let* ((_combinator83872_ _hd8385383867_)
                                             (_body83874_ _tl8385483869_))
                                        (if (gx#stx-list? _body83874_)
                                            (let ((_$e83876_
                                                   (gx#stx-e
                                                    _combinator83872_)))
                                              (if (eq? 'not _$e83876_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83742_
                                                        _body83874_))
                                                  (if (eq? 'and _$e83876_)
                                                      (gx#stx-andmap
                                                       _satisfied?83742_
                                                       _body83874_)
                                                      (if (eq? 'or _$e83876_)
                                                          (gx#stx-ormap
                                                           _satisfied?83742_
                                                           _body83874_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83876_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83874_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83740_
                       _combinator83872_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8385183860_)))))
                                  (_E8385183860_))))
                           (_E8384383902_
                            (lambda ()
                              (if (gx#stx-pair? _e8384183856_)
                                  (let ((_e8384583883_
                                         (gx#syntax-e _e8384183856_)))
                                    (let ((_hd8384683886_
                                           (##car _e8384583883_))
                                          (_tl8384783888_
                                           (##cdr _e8384583883_)))
                                      (if (and (gx#identifier? _hd8384683886_)
                                               (gx#core-identifier=?
                                                _hd8384683886_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8384783888_)
                                              (let ((_e8384883891_
                                                     (gx#syntax-e
                                                      _tl8384783888_)))
                                                (let ((_hd8384983894_
                                                       (##car _e8384883891_))
                                                      (_tl8385083896_
                                                       (##cdr _e8384883891_)))
                                                  (let ((_expr83899_
                                                         _hd8384983894_))
                                                    (if (gx#stx-null?
                                                         _tl8385083896_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83899_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8384483879_))
                (_E8384483879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8384483879_))
                                          (_E8384483879_))))
                                  (_E8384483879_))))
                           (_E8384283908_
                            (lambda ()
                              (let ((_id83906_ _e8384183856_))
                                (if (gx#identifier? _id83906_)
                                    (gx#core-bound-identifier?__%
                                     _id83906_
                                     gx#feature-binding?)
                                    (_E8384383902_))))))
                      (_E8384283908_))))
                 (_loop83743_
                  (lambda (_rest83773_)
                    (let* ((_e8377483782_ _rest83773_)
                           (_E8378083786_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8377483782_)))
                           (_E8377683790_
                            (lambda ()
                              (if (gx#stx-null? _e8377483782_)
                                  (if '#t '() (_E8378083786_))
                                  (_E8378083786_))))
                           (_E8377583836_
                            (lambda ()
                              (if (gx#stx-pair? _e8377483782_)
                                  (let ((_e8377783794_
                                         (gx#syntax-e _e8377483782_)))
                                    (let ((_hd8377883797_
                                           (##car _e8377783794_))
                                          (_tl8377983799_
                                           (##cdr _e8377783794_)))
                                      (let* ((_hd83802_ _hd8377883797_)
                                             (_rest83804_ _tl8377983799_))
                                        (if '#t
                                            (let* ((_e8380583812_ _hd83802_)
                                                   (_E8380783816_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8380583812_)))
                                                   (_E8380683832_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8380583812_)
                                                          (let ((_e8380883820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8380583812_)))
                    (let ((_hd8380983823_ (##car _e8380883820_))
                          (_tl8381083825_ (##cdr _e8380883820_)))
                      (let* ((_condition83828_ _hd8380983823_)
                             (_body83830_ _tl8381083825_))
                        (if '#t
                            (if (gx#stx-eq? _condition83828_ 'else)
                                (if (gx#stx-null? _rest83804_)
                                    _body83830_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83740_
                                     _hd83802_))
                                (if (_satisfied?83742_ _condition83828_)
                                    _body83830_
                                    (_loop83743_ _rest83804_)))
                            (_E8380783816_)))))
                  (_E8380783816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8380683832_))
                                            (_E8377683790_)))))
                                  (_E8377683790_)))))
                      (_E8377583836_)))))
          (let* ((_e8374483751_ _stx83740_)
                 (_E8374683755_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8374483751_)))
                 (_E8374583769_
                  (lambda ()
                    (if (gx#stx-pair? _e8374483751_)
                        (let ((_e8374783759_ (gx#syntax-e _e8374483751_)))
                          (let ((_hd8374883762_ (##car _e8374783759_))
                                (_tl8374983764_ (##cdr _e8374783759_)))
                            (let ((_clauses83767_ _tl8374983764_))
                              (if (gx#stx-list? _clauses83767_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83743_ _clauses83767_))
                                  (_E8374683755_)))))
                        (_E8374683755_)))))
            (_E8374583769_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83683_ _rpath83684_)
        (let* ((_e8368583695_ _stx83683_)
               (_E8368783699_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8368583695_)))
               (_E8368683726_
                (lambda ()
                  (if (gx#stx-pair? _e8368583695_)
                      (let ((_e8368883703_ (gx#syntax-e _e8368583695_)))
                        (let ((_hd8368983706_ (##car _e8368883703_))
                              (_tl8369083708_ (##cdr _e8368883703_)))
                          (if (gx#stx-pair? _tl8369083708_)
                              (let ((_e8369183711_
                                     (gx#syntax-e _tl8369083708_)))
                                (let ((_hd8369283714_ (##car _e8369183711_))
                                      (_tl8369383716_ (##cdr _e8369183711_)))
                                  (let ((_path83719_ _hd8369283714_))
                                    (if (gx#stx-null? _tl8369383716_)
                                        (if (gx#stx-string? _path83719_)
                                            (let ((_rpath83724_
                                                   (let ((_$e83721_
                                                          _rpath83684_))
                                                     (if _$e83721_
                                                         _$e83721_
                                                         (gx#core-resolve-path__%
                                                          _path83719_
                                                          (gx#stx-source
                                                           _stx83683_))))))
                                              (if (member _rpath83724_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83683_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83724_))
                                                    (gx#stx-source
                                                     _stx83683_)))))
                                            (_E8368783699_))
                                        (_E8368783699_)))))
                              (_E8368783699_))))
                      (_E8368783699_)))))
          (_E8368683726_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83733_)
        (let ((_rpath83735_ '#f))
          (gx#core-expand-include%__% _stx83733_ _rpath83735_))))
    (define gx#core-expand-include%
      (lambda _g84808_
        (let ((_g84807_ (##length _g84808_)))
          (cond ((##fx= _g84807_ 1)
                 (apply (lambda (_stx83733_)
                          (gx#core-expand-include%__0 _stx83733_))
                        _g84808_))
                ((##fx= _g84807_ 2)
                 (apply (lambda (_stx83737_ _rpath83738_)
                          (gx#core-expand-include%__% _stx83737_ _rpath83738_))
                        _g84808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84808_))))))
    (define gx#core-apply-expander__%
      (lambda (_K83652_ _stx83653_ _method83654_)
        (if (procedure? _K83652_)
            (let ((_$e83656_ (gx#stx-source _stx83653_)))
              (if _$e83656_
                  ((lambda (_g8365883660_)
                     (gx#stx-wrap-source (_K83652_ _stx83653_) _g8365883660_))
                   _$e83656_)
                  (_K83652_ _stx83653_)))
            (let ((_$e83663_ (bound-method-ref _K83652_ _method83654_)))
              (if _$e83663_
                  ((lambda (_g8366583667_)
                     (gx#core-apply-expander__%
                      _g8366583667_
                      _stx83653_
                      _method83654_))
                   _$e83663_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx83653_
                   _method83654_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83673_ _stx83674_)
        (let ((_method83676_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83673_ _stx83674_ _method83676_))))
    (define gx#core-apply-expander
      (lambda _g84810_
        (let ((_g84809_ (##length _g84810_)))
          (cond ((##fx= _g84809_ 2)
                 (apply (lambda (_K83673_ _stx83674_)
                          (gx#core-apply-expander__0 _K83673_ _stx83674_))
                        _g84810_))
                ((##fx= _g84809_ 3)
                 (apply (lambda (_K83678_ _stx83679_ _method83680_)
                          (gx#core-apply-expander__%
                           _K83678_
                           _stx83679_
                           _method83680_))
                        _g84810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84810_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self83648_ _stx83649_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx83649_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self83501_ _stx83502_)
        (let* ((_self8350383509_ _self83501_)
               (_E8350583513_
                (lambda () (error '"No clause matching" _self8350383509_)))
               (_K8350683518_
                (lambda (_K83516_)
                  (gx#core-apply-expander__0 _K83516_ _stx83502_))))
          (if (##structure-instance-of? _self8350383509_ 'gx#core-macro::t)
              (let* ((_e8350783521_
                      (##unchecked-structure-ref
                       _self8350383509_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83524_ _e8350783521_))
                (_K8350683518_ _K83524_))
              (_E8350583513_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self83354_ _stx83355_)
        (if (gx#sealed-syntax? _stx83355_)
            _stx83355_
            (let* ((_self8335683362_ _self83354_)
                   (_E8335883366_
                    (lambda () (error '"No clause matching" _self8335683362_)))
                   (_K8335983371_
                    (lambda (_K83369_)
                      (gx#core-apply-expander__0 _K83369_ _stx83355_))))
              (if (##structure-instance-of?
                   _self8335683362_
                   'gx#core-expander::t)
                  (let* ((_e8336083374_
                          (##unchecked-structure-ref
                           _self8335683362_
                           '1
                           gx#expander::t
                           '#f))
                         (_K83377_ _e8336083374_))
                    (_K8335983371_ _K83377_))
                  (_E8335883366_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self83216_ _stx83217_ _top?83218_)
        (if (_top?83218_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self83216_ _stx83217_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx83217_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self83223_ _stx83224_)
        (let ((_top?83226_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self83223_
           _stx83224_
           _top?83226_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84812_
        (let ((_g84811_ (##length _g84812_)))
          (cond ((##fx= _g84811_ 2)
                 (apply (lambda (_self83223_ _stx83224_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self83223_
                           _stx83224_))
                        _g84812_))
                ((##fx= _g84811_ 3)
                 (apply (lambda (_self83228_ _stx83229_ _top?83230_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self83228_
                           _stx83229_
                           _top?83230_))
                        _g84812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84812_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self83090_ _stx83091_)
        (gx#top-special-form::apply-macro-expander__%
         _self83090_
         _stx83091_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82915_ _stx82916_)
        (let* ((_self8291782923_ _self82915_)
               (_E8291982927_
                (lambda () (error '"No clause matching" _self8291782923_)))
               (_K8292082960_
                (lambda (_id82930_)
                  (let* ((_e8293182938_ _stx82916_)
                         (_E8293382942_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8293182938_)))
                         (_E8293282956_
                          (lambda ()
                            (if (gx#stx-pair? _e8293182938_)
                                (let ((_e8293482946_
                                       (gx#syntax-e _e8293182938_)))
                                  (let ((_hd8293582949_ (##car _e8293482946_))
                                        (_tl8293682951_ (##cdr _e8293482946_)))
                                    (let ((_body82954_ _tl8293682951_))
                                      (if '#t
                                          (gx#core-cons _id82930_ _body82954_)
                                          (_E8293382942_)))))
                                (_E8293382942_)))))
                    (_E8293282956_)))))
          (if (##structure-instance-of?
               _self8291782923_
               'gx#rename-macro-expander::t)
              (let* ((_e8292182963_
                      (##unchecked-structure-ref
                       _self8291782923_
                       '1
                       gx#expander::t
                       '#f))
                     (_id82966_ _e8292182963_))
                (_K8292082960_ _id82966_))
              (_E8291982927_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82741_ _stx82742_ _method82743_)
        (let* ((_self8274482752_ _self82741_)
               (_E8274682756_
                (lambda () (error '"No clause matching" _self8274482752_)))
               (_K8274782763_
                (lambda (_phi82759_ _ctx82760_ _K82761_)
                  (gx#core-apply-user-macro
                   _K82761_
                   _stx82742_
                   _ctx82760_
                   _phi82759_
                   _method82743_))))
          (if (##structure-instance-of? _self8274482752_ 'gx#macro-expander::t)
              (let* ((_e8274882766_
                      (##unchecked-structure-ref
                       _self8274482752_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82769_ _e8274882766_)
                     (_e8274982771_
                      (##unchecked-structure-ref
                       _self8274482752_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx82774_ _e8274982771_)
                     (_e8275082776_
                      (##unchecked-structure-ref
                       _self8274482752_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi82779_ _e8275082776_))
                (_K8274782763_ _phi82779_ _ctx82774_ _K82769_))
              (_E8274682756_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82784_ _stx82785_)
        (let ((_method82787_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82784_
           _stx82785_
           _method82787_))))
    (define gx#core-apply-user-expander
      (lambda _g84814_
        (let ((_g84813_ (##length _g84814_)))
          (cond ((##fx= _g84813_ 2)
                 (apply (lambda (_self82784_ _stx82785_)
                          (gx#core-apply-user-expander__0
                           _self82784_
                           _stx82785_))
                        _g84814_))
                ((##fx= _g84813_ 3)
                 (apply (lambda (_self82789_ _stx82790_ _method82791_)
                          (gx#core-apply-user-expander__%
                           _self82789_
                           _stx82790_
                           _method82791_))
                        _g84814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84814_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82731_ _stx82732_ _ctx82733_ _phi82734_ _method82735_)
        (let ((_mark82737_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82733_
                _phi82734_
                _stx82732_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82731_
               (gx#stx-apply-mark _stx82732_ _mark82737_)
               _method82735_)
              _mark82737_))
           gx#current-expander-marks
           (cons _mark82737_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx82583_ _phi82584_ _ctx82585_)
        (let _lp82587_ ((_bind82589_
                         (gx#core-resolve-identifier__%
                          _stx82583_
                          _phi82584_
                          _ctx82585_)))
          (if (##structure-direct-instance-of?
               _bind82589_
               'gx#import-binding::t)
              (_lp82587_
               (##unchecked-structure-ref
                _bind82589_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind82589_
                   'gx#alias-binding::t)
                  (_lp82587_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind82589_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi82584_
                    _ctx82585_))
                  _bind82589_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx82594_)
        (let* ((_phi82596_ (gx#current-expander-phi))
               (_ctx82598_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82594_ _phi82596_ _ctx82598_))))
    (define gx#resolve-identifier__1
      (lambda (_stx82600_ _phi82601_)
        (let ((_ctx82603_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82600_ _phi82601_ _ctx82603_))))
    (define gx#resolve-identifier
      (lambda _g84816_
        (let ((_g84815_ (##length _g84816_)))
          (cond ((##fx= _g84815_ 1)
                 (apply (lambda (_stx82594_)
                          (gx#resolve-identifier__0 _stx82594_))
                        _g84816_))
                ((##fx= _g84815_ 2)
                 (apply (lambda (_stx82600_ _phi82601_)
                          (gx#resolve-identifier__1 _stx82600_ _phi82601_))
                        _g84816_))
                ((##fx= _g84815_ 3)
                 (apply (lambda (_stx82605_ _phi82606_ _ctx82607_)
                          (gx#resolve-identifier__%
                           _stx82605_
                           _phi82606_
                           _ctx82607_))
                        _g84816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84816_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx82541_ _val82542_ _rebind?82543_ _phi82544_ _ctx82545_)
        (let ((_rebind?82547_
               (if (not _rebind?82543_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?82543_) _rebind?82543_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx82541_)
           _val82542_
           _rebind?82547_
           _phi82544_
           _ctx82545_))))
    (define gx#bind-identifier!__0
      (lambda (_stx82552_ _val82553_)
        (let* ((_rebind?82555_ '#f)
               (_phi82557_ (gx#current-expander-phi))
               (_ctx82559_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82552_
           _val82553_
           _rebind?82555_
           _phi82557_
           _ctx82559_))))
    (define gx#bind-identifier!__1
      (lambda (_stx82561_ _val82562_ _rebind?82563_)
        (let* ((_phi82565_ (gx#current-expander-phi))
               (_ctx82567_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82561_
           _val82562_
           _rebind?82563_
           _phi82565_
           _ctx82567_))))
    (define gx#bind-identifier!__2
      (lambda (_stx82569_ _val82570_ _rebind?82571_ _phi82572_)
        (let ((_ctx82574_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82569_
           _val82570_
           _rebind?82571_
           _phi82572_
           _ctx82574_))))
    (define gx#bind-identifier!
      (lambda _g84818_
        (let ((_g84817_ (##length _g84818_)))
          (cond ((##fx= _g84817_ 2)
                 (apply (lambda (_stx82552_ _val82553_)
                          (gx#bind-identifier!__0 _stx82552_ _val82553_))
                        _g84818_))
                ((##fx= _g84817_ 3)
                 (apply (lambda (_stx82561_ _val82562_ _rebind?82563_)
                          (gx#bind-identifier!__1
                           _stx82561_
                           _val82562_
                           _rebind?82563_))
                        _g84818_))
                ((##fx= _g84817_ 4)
                 (apply (lambda (_stx82569_
                                 _val82570_
                                 _rebind?82571_
                                 _phi82572_)
                          (gx#bind-identifier!__2
                           _stx82569_
                           _val82570_
                           _rebind?82571_
                           _phi82572_))
                        _g84818_))
                ((##fx= _g84817_ 5)
                 (apply (lambda (_stx82576_
                                 _val82577_
                                 _rebind?82578_
                                 _phi82579_
                                 _ctx82580_)
                          (gx#bind-identifier!__%
                           _stx82576_
                           _val82577_
                           _rebind?82578_
                           _phi82579_
                           _ctx82580_))
                        _g84818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84818_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx82513_ _phi82514_ _ctx82515_)
        (let _lp82517_ ((_e82519_ _stx82513_)
                        (_marks82520_ (gx#current-expander-marks)))
          (if (symbol? _e82519_)
              (gx#core-resolve-binding
               _e82519_
               _phi82514_
               _phi82514_
               _ctx82515_
               (reverse _marks82520_))
              (if (gx#identifier-quote? _e82519_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e82519_ '1 gx#AST::t '#f)
                   _phi82514_
                   '0
                   (##unchecked-structure-ref
                    _e82519_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e82519_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e82519_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e82519_ '1 gx#AST::t '#f)
                       _phi82514_
                       _phi82514_
                       _ctx82515_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82519_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82520_))
                      (if (##structure-direct-instance-of?
                           _e82519_
                           'gx#syntax-wrap::t)
                          (_lp82517_
                           (##unchecked-structure-ref
                            _e82519_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e82519_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks82520_))
                          (if (##structure-instance-of?
                               _e82519_
                               'gerbil#AST::t)
                              (_lp82517_
                               (##unchecked-structure-ref
                                _e82519_
                                '1
                                gx#AST::t
                                '#f)
                               _marks82520_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx82513_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx82525_)
        (let* ((_phi82527_ (gx#current-expander-phi))
               (_ctx82529_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82525_ _phi82527_ _ctx82529_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx82531_ _phi82532_)
        (let ((_ctx82534_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82531_ _phi82532_ _ctx82534_))))
    (define gx#core-resolve-identifier
      (lambda _g84820_
        (let ((_g84819_ (##length _g84820_)))
          (cond ((##fx= _g84819_ 1)
                 (apply (lambda (_stx82525_)
                          (gx#core-resolve-identifier__0 _stx82525_))
                        _g84820_))
                ((##fx= _g84819_ 2)
                 (apply (lambda (_stx82531_ _phi82532_)
                          (gx#core-resolve-identifier__1
                           _stx82531_
                           _phi82532_))
                        _g84820_))
                ((##fx= _g84819_ 3)
                 (apply (lambda (_stx82536_ _phi82537_ _ctx82538_)
                          (gx#core-resolve-identifier__%
                           _stx82536_
                           _phi82537_
                           _ctx82538_))
                        _g84820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84820_))))))
    (define gx#core-resolve-binding
      (lambda (_id82426_ _phi82427_ _src-phi82428_ _ctx82429_ _marks82430_)
        (letrec ((_resolve82432_
                  (lambda (_ctx82500_ _src-phi82501_ _key82502_)
                    (let _lp82504_ ((_ctx82506_
                                     (gx#core-context-shift
                                      _ctx82500_
                                      _phi82427_))
                                    (_dphi82507_
                                     (fx- _phi82427_ _src-phi82501_)))
                      (let ((_$e82509_
                             (gx#core-context-resolve _ctx82506_ _key82502_)))
                        (if _$e82509_
                            (values _$e82509_)
                            (if (fxzero? _dphi82507_)
                                '#f
                                (if (fxpositive? _dphi82507_)
                                    (_lp82504_
                                     (gx#core-context-shift _ctx82506_ '-1)
                                     (fx- _dphi82507_ '1))
                                    (_lp82504_
                                     (gx#core-context-shift _ctx82506_ '1)
                                     (fx+ _dphi82507_ '1))))))))))
          (let _lp82434_ ((_ctx82436_ _ctx82429_)
                          (_src-phi82437_ _src-phi82428_)
                          (_rest82438_ _marks82430_))
            (let* ((_rest8243982447_ _rest82438_)
                   (_else8244182455_
                    (lambda ()
                      (_resolve82432_ _ctx82436_ _src-phi82437_ _id82426_)))
                   (_K8244382488_
                    (lambda (_rest82458_ _hd82459_)
                      (let* ((_hd8246082466_ _hd82459_)
                             (_E8246282470_
                              (lambda ()
                                (error '"No clause matching" _hd8246082466_)))
                             (_K8246382480_
                              (lambda (_subst82473_)
                                (let ((_$e82477_
                                       (let ((_key82475_
                                              (if _subst82473_
                                                  (hash-get
                                                   _subst82473_
                                                   _id82426_)
                                                  '#f)))
                                         (if _key82475_
                                             (_resolve82432_
                                              _ctx82436_
                                              _src-phi82437_
                                              _key82475_)
                                             '#f))))
                                  (if _$e82477_
                                      _$e82477_
                                      (_lp82434_
                                       (##unchecked-structure-ref
                                        _hd82459_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd82459_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest82458_))))))
                        (if (##structure-instance-of?
                             _hd8246082466_
                             'gx#expander-mark::t)
                            (let* ((_e8246482483_
                                    (##unchecked-structure-ref
                                     _hd8246082466_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst82486_ _e8246482483_))
                              (_K8246382480_ _subst82486_))
                            (_E8246282470_))))))
              (if (##pair? _rest8243982447_)
                  (let ((_hd8244482491_ (##car _rest8243982447_))
                        (_tl8244582493_ (##cdr _rest8243982447_)))
                    (let* ((_hd82496_ _hd8244482491_)
                           (_rest82498_ _tl8244582493_))
                      (_K8244382488_ _rest82498_ _hd82496_)))
                  (_else8244182455_)))))))
    (define gx#core-bind!__%
      (lambda (_key82302_ _val82303_ _rebind?82304_ _phi82305_ _ctx82306_)
        (letrec ((_update-binding82308_
                  (lambda (_xval82379_)
                    (if (or (_rebind?82304_ _ctx82306_ _xval82379_ _val82303_)
                            (and (##structure-direct-instance-of?
                                  _xval82379_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval82379_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val82303_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val82303_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval82379_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val82303_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val82303_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval82379_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val82303_
                        (if (and (##structure-direct-instance-of?
                                  _val82303_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val82303_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval82379_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val82303_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval82379_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval82379_
                            (if (and (##structure-direct-instance-of?
                                      _val82303_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval82379_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key82302_
                                 (cons (##unchecked-structure-ref
                                        _val82303_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val82303_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval82379_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval82379_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval82379_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval82379_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key82302_
                                 _val82303_
                                 _xval82379_))))))
                 (_gensubst82309_
                  (lambda (_subst82374_ _id82375_)
                    (let ((_eid82377_
                           (gensym (if (uninterned-symbol? _id82375_)
                                       '%
                                       _id82375_))))
                      (hash-put! _subst82374_ _id82375_ _eid82377_)
                      _eid82377_)))
                 (_subst!82310_
                  (lambda (_key82312_)
                    (let* ((_key8231382321_ _key82312_)
                           (_else8231582329_ (lambda () _key82312_))
                           (_K8231782362_
                            (lambda (_mark82332_ _id82333_)
                              (let* ((_mark8233482340_ _mark82332_)
                                     (_E8233682344_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8233482340_)))
                                     (_K8233782354_
                                      (lambda (_subst82347_)
                                        (if (not _subst82347_)
                                            (let ((_subst82349_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark82332_
                                               _subst82349_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst82309_
                                               _subst82349_
                                               _id82333_))
                                            (let ((_$e82351_
                                                   (hash-get
                                                    _subst82347_
                                                    _id82333_)))
                                              (if _$e82351_
                                                  (values _$e82351_)
                                                  (_gensubst82309_
                                                   _subst82347_
                                                   _id82333_)))))))
                                (if (##structure-instance-of?
                                     _mark8233482340_
                                     'gx#expander-mark::t)
                                    (let* ((_e8233882357_
                                            (##unchecked-structure-ref
                                             _mark8233482340_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst82360_ _e8233882357_))
                                      (_K8233782354_ _subst82360_))
                                    (_E8233682344_))))))
                      (if (##pair? _key8231382321_)
                          (let ((_hd8231882365_ (##car _key8231382321_))
                                (_tl8231982367_ (##cdr _key8231382321_)))
                            (let* ((_id82370_ _hd8231882365_)
                                   (_mark82372_ _tl8231982367_))
                              (_K8231782362_ _mark82372_ _id82370_)))
                          (_else8231582329_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx82306_ _phi82305_)
           (_subst!82310_ _key82302_)
           _val82303_
           _update-binding82308_))))
    (define gx#core-bind!__0
      (lambda (_key82396_ _val82397_)
        (let* ((_rebind?82399_ false)
               (_phi82401_ (gx#current-expander-phi))
               (_ctx82403_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82396_
           _val82397_
           _rebind?82399_
           _phi82401_
           _ctx82403_))))
    (define gx#core-bind!__1
      (lambda (_key82405_ _val82406_ _rebind?82407_)
        (let* ((_phi82409_ (gx#current-expander-phi))
               (_ctx82411_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82405_
           _val82406_
           _rebind?82407_
           _phi82409_
           _ctx82411_))))
    (define gx#core-bind!__2
      (lambda (_key82413_ _val82414_ _rebind?82415_ _phi82416_)
        (let ((_ctx82418_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82413_
           _val82414_
           _rebind?82415_
           _phi82416_
           _ctx82418_))))
    (define gx#core-bind!
      (lambda _g84822_
        (let ((_g84821_ (##length _g84822_)))
          (cond ((##fx= _g84821_ 2)
                 (apply (lambda (_key82396_ _val82397_)
                          (gx#core-bind!__0 _key82396_ _val82397_))
                        _g84822_))
                ((##fx= _g84821_ 3)
                 (apply (lambda (_key82405_ _val82406_ _rebind?82407_)
                          (gx#core-bind!__1
                           _key82405_
                           _val82406_
                           _rebind?82407_))
                        _g84822_))
                ((##fx= _g84821_ 4)
                 (apply (lambda (_key82413_
                                 _val82414_
                                 _rebind?82415_
                                 _phi82416_)
                          (gx#core-bind!__2
                           _key82413_
                           _val82414_
                           _rebind?82415_
                           _phi82416_))
                        _g84822_))
                ((##fx= _g84821_ 5)
                 (apply (lambda (_key82420_
                                 _val82421_
                                 _rebind?82422_
                                 _phi82423_
                                 _ctx82424_)
                          (gx#core-bind!__%
                           _key82420_
                           _val82421_
                           _rebind?82422_
                           _phi82423_
                           _ctx82424_))
                        _g84822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84822_))))))
    (define gx#core-identifier-key
      (lambda (_stx82236_)
        (if (symbol? _stx82236_)
            (let* ((_g8223782245_ (gx#current-expander-marks))
                   (_else8223982253_ (lambda () _stx82236_))
                   (_K8224182258_
                    (lambda (_hd82256_) (cons _stx82236_ _hd82256_))))
              (if (##pair? _g8223782245_)
                  (let* ((_hd8224282261_ (##car _g8223782245_))
                         (_hd82264_ _hd8224282261_))
                    (_K8224182258_ _hd82264_))
                  (_else8223982253_)))
            (if (gx#identifier? _stx82236_)
                (let* ((_id82266_ (gx#syntax-local-unwrap _stx82236_))
                       (_eid82268_ (gx#stx-e _id82266_))
                       (_marks82270_ (gx#stx-identifier-marks* _id82266_)))
                  (let* ((_marks8227282280_ _marks82270_)
                         (_else8227482288_ (lambda () _eid82268_))
                         (_K8227682293_
                          (lambda (_hd82291_) (cons _eid82268_ _hd82291_))))
                    (if (##pair? _marks8227282280_)
                        (let* ((_hd8227782296_ (##car _marks8227282280_))
                               (_hd82299_ _hd8227782296_))
                          (_K8227682293_ _hd82299_))
                        (_else8227482288_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx82236_)))))
    (define gx#core-context-shift
      (lambda (_ctx82181_ _phi82182_)
        (letrec ((_make-phi82184_
                  (lambda (_super82234_)
                    (let ((__obj84793
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84793
                       (gensym 'phi)
                       _super82234_)
                      __obj84793)))
                 (_make-phi/up82185_
                  (lambda (_ctx82229_ _super82230_)
                    (let ((_ctx+182232_ (_make-phi82184_ _super82230_)))
                      (##unchecked-structure-set!
                       _ctx82229_
                       _ctx+182232_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+182232_
                       _ctx82229_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+182232_)))
                 (_make-phi/down82186_
                  (lambda (_ctx82224_ _super82225_)
                    (let ((_ctx-182227_ (_make-phi82184_ _super82225_)))
                      (##unchecked-structure-set!
                       _ctx-182227_
                       _ctx82224_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx82224_
                       _ctx-182227_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-182227_)))
                 (_shift82187_
                  (lambda (_ctx82208_
                           _delta82209_
                           _make-delta-context82210_
                           _phi82211_
                           _K82212_)
                    (let ((_$e82214_
                           (##unchecked-structure-ref
                            _ctx82208_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e82214_
                          ((lambda (_super82217_)
                             (let* ((_super82219_
                                     (_K82212_ _super82217_ _delta82209_))
                                    (_ctx+d82221_
                                     (_make-delta-context82210_
                                      _ctx82208_
                                      _super82219_)))
                               (_K82212_
                                _ctx+d82221_
                                (fx- _phi82211_ _delta82209_))))
                           _$e82214_)
                          (error '"Bad context" _ctx82208_))))))
          (let _K82189_ ((_ctx82191_ _ctx82181_) (_phi82192_ _phi82182_))
            (if (fxzero? _phi82192_)
                _ctx82191_
                (if (fx> (##vector-length _ctx82191_) '3)
                    (if (fxpositive? _phi82192_)
                        (let ((_$e82194_
                               (##unchecked-structure-ref
                                _ctx82191_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e82194_
                              ((lambda (_g8219682198_)
                                 (_K82189_ _g8219682198_ (fx- _phi82192_ '1)))
                               _$e82194_)
                              (_shift82187_
                               _ctx82191_
                               '1
                               _make-phi/up82185_
                               _phi82192_
                               _K82189_)))
                        (let ((_$e82201_
                               (##unchecked-structure-ref
                                _ctx82191_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e82201_
                              ((lambda (_g8220382205_)
                                 (_K82189_ _g8220382205_ (fx+ _phi82192_ '1)))
                               _$e82201_)
                              (_shift82187_
                               _ctx82191_
                               '-1
                               _make-phi/down82186_
                               _phi82192_
                               _K82189_))))
                    _ctx82191_))))))
    (define gx#core-context-get
      (lambda (_ctx82178_ _key82179_)
        (hash-get
         (##unchecked-structure-ref _ctx82178_ '2 gx#expander-context::t '#f)
         _key82179_)))
    (define gx#core-context-put!
      (lambda (_ctx82174_ _key82175_ _val82176_)
        (hash-put!
         (##unchecked-structure-ref _ctx82174_ '2 gx#expander-context::t '#f)
         _key82175_
         _val82176_)))
    (define gx#core-context-resolve
      (lambda (_ctx82161_ _key82162_)
        (let _lp82164_ ((_ctx82166_ _ctx82161_))
          (let ((_$e82168_ (gx#core-context-get _ctx82166_ _key82162_)))
            (if _$e82168_
                (values _$e82168_)
                (let ((_$e82171_
                       (if (fx> (##vector-length _ctx82166_) '3)
                           (##unchecked-structure-ref
                            _ctx82166_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e82171_ (_lp82164_ _$e82171_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx82151_ _key82152_ _val82153_ _rebind82154_)
        (let ((_$e82156_ (gx#core-context-get _ctx82151_ _key82152_)))
          (if _$e82156_
              ((lambda (_xval82159_)
                 (gx#core-context-put!
                  _ctx82151_
                  _key82152_
                  (_rebind82154_ _xval82159_)))
               _$e82156_)
              (gx#core-context-put! _ctx82151_ _key82152_ _val82153_)))))
    (define gx#core-context-top__%
      (lambda (_ctx82129_ _stop?82130_)
        (let _lp82132_ ((_ctx82134_ _ctx82129_))
          (if (_stop?82130_ _ctx82134_)
              _ctx82134_
              (if (##structure-instance-of? _ctx82134_ 'gx#context-phi::t)
                  (_lp82132_
                   (##unchecked-structure-ref
                    _ctx82134_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx82140_ (gx#current-expander-context))
               (_stop?82142_ gx#top-context?))
          (gx#core-context-top__% _ctx82140_ _stop?82142_))))
    (define gx#core-context-top__1
      (lambda (_ctx82144_)
        (let ((_stop?82146_ gx#top-context?))
          (gx#core-context-top__% _ctx82144_ _stop?82146_))))
    (define gx#core-context-top
      (lambda _g84824_
        (let ((_g84823_ (##length _g84824_)))
          (cond ((##fx= _g84823_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84824_))
                ((##fx= _g84823_ 1)
                 (apply (lambda (_ctx82144_)
                          (gx#core-context-top__1 _ctx82144_))
                        _g84824_))
                ((##fx= _g84823_ 2)
                 (apply (lambda (_ctx82148_ _stop?82149_)
                          (gx#core-context-top__% _ctx82148_ _stop?82149_))
                        _g84824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84824_))))))
    (define gx#core-context-root__%
      (lambda (_ctx82114_)
        (let _lp82116_ ((_ctx82118_ _ctx82114_))
          (if (##structure-instance-of? _ctx82118_ 'gx#context-phi::t)
              (_lp82116_
               (##unchecked-structure-ref _ctx82118_ '3 gx#phi-context::t '#f))
              _ctx82118_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx82124_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx82124_))))
    (define gx#core-context-root
      (lambda _g84826_
        (let ((_g84825_ (##length _g84826_)))
          (cond ((##fx= _g84825_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84826_))
                ((##fx= _g84825_ 1)
                 (apply (lambda (_ctx82126_)
                          (gx#core-context-root__% _ctx82126_))
                        _g84826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84826_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx82095_ . __8209282096_)
        (let ((_$e82099_ (gx#current-expander-allow-rebind?)))
          (if _$e82099_
              _$e82099_
              (if (##structure-instance-of? _ctx82095_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx82095_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx82095_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx82106_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx82106_))))
    (define gx#core-context-rebind?
      (lambda _g84828_
        (let ((_g84827_ (##length _g84828_)))
          (cond ((##fx= _g84827_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84828_))
                ((##fx= _g84827_ 1)
                 (apply (lambda (_ctx82108_)
                          (gx#core-context-rebind?__% _ctx82108_))
                        _g84828_))
                ((##fx>= _g84827_ 1)
                 (apply gx#core-context-rebind?__% _g84828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84828_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx82078_)
        (let ((_$e82080_ (gx#core-context-top__1 _ctx82078_)))
          (if _$e82080_
              ((lambda (_ctx82083_)
                 (if (##structure-instance-of?
                      _ctx82083_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx82083_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e82080_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx82089_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx82089_))))
    (define gx#core-context-namespace
      (lambda _g84830_
        (let ((_g84829_ (##length _g84830_)))
          (cond ((##fx= _g84829_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84830_))
                ((##fx= _g84829_ 1)
                 (apply (lambda (_ctx82091_)
                          (gx#core-context-namespace__% _ctx82091_))
                        _g84830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84830_))))))
    (define gx#expander-binding?__%
      (lambda (_bind82064_ _is?82065_)
        (if (##structure-direct-instance-of? _bind82064_ 'gx#syntax-binding::t)
            (_is?82065_
             (##unchecked-structure-ref
              _bind82064_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind82070_)
        (let ((_is?82072_ gx#expander?))
          (gx#expander-binding?__% _bind82070_ _is?82072_))))
    (define gx#expander-binding?
      (lambda _g84832_
        (let ((_g84831_ (##length _g84832_)))
          (cond ((##fx= _g84831_ 1)
                 (apply (lambda (_bind82070_)
                          (gx#expander-binding?__0 _bind82070_))
                        _g84832_))
                ((##fx= _g84831_ 2)
                 (apply (lambda (_bind82074_ _is?82075_)
                          (gx#expander-binding?__% _bind82074_ _is?82075_))
                        _g84832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84832_))))))
    (define gx#core-expander-binding?
      (lambda (_bind82061_)
        (gx#expander-binding?__% _bind82061_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind82059_)
        (gx#expander-binding?__% _bind82059_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind82053_)
        (letrec ((_direct-special-form?82055_
                  (lambda (_obj82057_)
                    (##structure-direct-instance-of?
                     _obj82057_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind82053_ _direct-special-form?82055_))))
    (define gx#special-form-binding?
      (lambda (_bind82051_)
        (gx#expander-binding?__% _bind82051_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind82042_)
        (letrec ((_feature?82044_
                  (lambda (_e82046_)
                    (let ((_$e82048_
                           (##structure-instance-of?
                            _e82046_
                            'gx#feature-expander::t)))
                      (if _$e82048_
                          _$e82048_
                          (##structure-instance-of?
                           _e82046_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind82042_ _feature?82044_))))
    (define gx#private-feature-binding?
      (lambda (_bind82040_)
        (gx#expander-binding?__% _bind82040_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id82027_ _bound?82028_)
        (if (gx#identifier? _id82027_)
            (_bound?82028_ (gx#resolve-identifier__0 _id82027_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id82033_)
        (let ((_bound?82035_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id82033_ _bound?82035_))))
    (define gx#core-bound-identifier?
      (lambda _g84834_
        (let ((_g84833_ (##length _g84834_)))
          (cond ((##fx= _g84833_ 1)
                 (apply (lambda (_id82033_)
                          (gx#core-bound-identifier?__0 _id82033_))
                        _g84834_))
                ((##fx= _g84833_ 2)
                 (apply (lambda (_id82037_ _bound?82038_)
                          (gx#core-bound-identifier?__%
                           _id82037_
                           _bound?82038_))
                        _g84834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84834_))))))
    (define gx#core-identifier=?
      (lambda (_x82017_ _y82018_)
        (letrec ((_y=?82020_
                  (lambda (_xid82024_)
                    ((if (list? _y82018_) memq eq?) _xid82024_ _y82018_))))
          (let ((_bind82022_ (gx#resolve-identifier__0 _x82017_)))
            (if (##structure-instance-of? _bind82022_ 'gx#binding::t)
                (_y=?82020_
                 (##unchecked-structure-ref _bind82022_ '1 gx#binding::t '#f))
                (_y=?82020_ (gx#stx-e _x82017_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e82015_)
        (if (interned-symbol? _e82015_)
            (string-index__0 (symbol->string _e82015_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81970_ _src81971_ _ctx81972_ _marks81973_)
        (if (##structure? _stx81970_)
            (let ((_$e81975_ (gx#sealed-syntax-unwrap _stx81970_)))
              (if _$e81975_
                  (values _$e81975_)
                  (if (gx#identifier? _stx81970_)
                      (let ((_id81978_
                             (gx#stx-unwrap__% _stx81970_ _marks81973_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81978_ '1 gx#AST::t '#f)
                         (let ((_$e81980_
                                (##unchecked-structure-ref
                                 _id81978_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e81980_ _$e81980_ _src81971_))
                         _ctx81972_
                         (##unchecked-structure-ref
                          _id81978_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81970_)
                       (let ((_$e81983_ (gx#stx-source _stx81970_)))
                         (if _$e81983_ _$e81983_ _src81971_))
                       _ctx81972_
                       (reverse _marks81973_)))))
            (##structure
             gx#syntax-quote::t
             _stx81970_
             _src81971_
             _ctx81972_
             (reverse _marks81973_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81989_)
        (let* ((_src81991_ '#f)
               (_ctx81993_ (gx#current-expander-context))
               (_marks81995_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81989_
           _src81991_
           _ctx81993_
           _marks81995_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81997_ _src81998_)
        (let* ((_ctx82000_ (gx#current-expander-context))
               (_marks82002_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81997_
           _src81998_
           _ctx82000_
           _marks82002_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx82004_ _src82005_ _ctx82006_)
        (let ((_marks82008_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82004_
           _src82005_
           _ctx82006_
           _marks82008_))))
    (define gx#core-quote-syntax
      (lambda _g84836_
        (let ((_g84835_ (##length _g84836_)))
          (cond ((##fx= _g84835_ 1)
                 (apply (lambda (_stx81989_)
                          (gx#core-quote-syntax__0 _stx81989_))
                        _g84836_))
                ((##fx= _g84835_ 2)
                 (apply (lambda (_stx81997_ _src81998_)
                          (gx#core-quote-syntax__1 _stx81997_ _src81998_))
                        _g84836_))
                ((##fx= _g84835_ 3)
                 (apply (lambda (_stx82004_ _src82005_ _ctx82006_)
                          (gx#core-quote-syntax__2
                           _stx82004_
                           _src82005_
                           _ctx82006_))
                        _g84836_))
                ((##fx= _g84835_ 4)
                 (apply (lambda (_stx82010_ _src82011_ _ctx82012_ _marks82013_)
                          (gx#core-quote-syntax__%
                           _stx82010_
                           _src82011_
                           _ctx82012_
                           _marks82013_))
                        _g84836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84836_))))))
    (define gx#core-cons
      (lambda (_hd81966_ _tl81967_)
        (cons (gx#core-quote-syntax__0 _hd81966_) _tl81967_)))
    (define gx#core-list
      (lambda (_hd81963_ . _rest81964_)
        (cons (gx#core-quote-syntax__0 _hd81963_) _rest81964_)))
    (define gx#core-cons*
      (lambda (_hd81960_ . _rest81961_)
        (apply cons* (gx#core-quote-syntax__0 _hd81960_) _rest81961_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81934_ _rel81935_)
        (let ((_path81947_ (gx#stx-e _stx-path81934_))
              (_reldir81948_
               (let _lp81937_ ((_relsrc81939_
                                (let ((_$e81944_
                                       (gx#stx-source _stx-path81934_)))
                                  (if _$e81944_ _$e81944_ _rel81935_))))
                 (if (##structure-instance-of? _relsrc81939_ 'gerbil#AST::t)
                     (_lp81937_
                      (let ((_$e81941_ (gx#stx-source _relsrc81939_)))
                        (if _$e81941_ _$e81941_ (gx#stx-e _relsrc81939_))))
                     (if (source-location-path? _relsrc81939_)
                         (path-directory (source-location-path _relsrc81939_))
                         (if (string? _relsrc81939_)
                             (path-directory _relsrc81939_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81947_ (path-normalize _reldir81948_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81953_)
        (let ((_rel81955_ '#f))
          (gx#core-resolve-path__% _stx-path81953_ _rel81955_))))
    (define gx#core-resolve-path
      (lambda _g84838_
        (let ((_g84837_ (##length _g84838_)))
          (cond ((##fx= _g84837_ 1)
                 (apply (lambda (_stx-path81953_)
                          (gx#core-resolve-path__0 _stx-path81953_))
                        _g84838_))
                ((##fx= _g84837_ 2)
                 (apply (lambda (_stx-path81957_ _rel81958_)
                          (gx#core-resolve-path__% _stx-path81957_ _rel81958_))
                        _g84838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84838_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81890_ _ctx81891_)
        (let* ((_repr8189281899_ _repr81890_)
               (_E8189481903_
                (lambda () (error '"No clause matching" _repr8189281899_)))
               (_K8189581911_
                (lambda (_subs81906_ _phi81907_)
                  (let ((_subst81909_
                         (if (not (null? _subs81906_))
                             (list->hash-table-eq _subs81906_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81909_
                     _ctx81891_
                     _phi81907_
                     '#f)))))
          (if (##pair? _repr8189281899_)
              (let ((_hd8189681914_ (##car _repr8189281899_))
                    (_tl8189781916_ (##cdr _repr8189281899_)))
                (let* ((_phi81919_ _hd8189681914_)
                       (_subs81921_ _tl8189781916_))
                  (_K8189581911_ _subs81921_ _phi81919_)))
              (_E8189481903_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81926_)
        (let ((_ctx81928_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81926_ _ctx81928_))))
    (define gx#core-deserialize-mark
      (lambda _g84840_
        (let ((_g84839_ (##length _g84840_)))
          (cond ((##fx= _g84839_ 1)
                 (apply (lambda (_repr81926_)
                          (gx#core-deserialize-mark__0 _repr81926_))
                        _g84840_))
                ((##fx= _g84839_ 2)
                 (apply (lambda (_repr81930_ _ctx81931_)
                          (gx#core-deserialize-mark__% _repr81930_ _ctx81931_))
                        _g84840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84840_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81887_)
        (gx#stx-rewrap _stx81887_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81885_)
        (gx#stx-unwrap__% _stx81885_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81855_)
        (let* ((_g8185681864_ (gx#current-expander-marks))
               (_else8185881872_ (lambda () _stx81855_))
               (_K8186081877_
                (lambda (_hd81875_) (gx#stx-apply-mark _stx81855_ _hd81875_))))
          (if (##pair? _g8185681864_)
              (let* ((_hd8186181880_ (##car _g8185681864_))
                     (_hd81883_ _hd8186181880_))
                (_K8186081877_ _hd81883_))
              (_else8185881872_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81840_ _E81841_)
        (let ((_bind81843_ (gx#resolve-identifier__0 _stx81840_)))
          (if (##structure-direct-instance-of?
               _bind81843_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind81843_
               '4
               gx#syntax-binding::t
               '#f)
              (_E81841_ _stx81840_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81848_)
        (let ((_E81850_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81848_ _E81850_))))
    (define gx#syntax-local-e
      (lambda _g84842_
        (let ((_g84841_ (##length _g84842_)))
          (cond ((##fx= _g84841_ 1)
                 (apply (lambda (_stx81848_) (gx#syntax-local-e__0 _stx81848_))
                        _g84842_))
                ((##fx= _g84841_ 2)
                 (apply (lambda (_stx81852_ _E81853_)
                          (gx#syntax-local-e__% _stx81852_ _E81853_))
                        _g84842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84842_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81824_ _E81825_)
        (let ((_e81827_ (gx#syntax-local-e__% _stx81824_ _E81825_)))
          (if (##structure-instance-of? _e81827_ 'gx#expander::t)
              (##structure-ref _e81827_ '1 gx#expander::t '#f)
              _e81827_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81832_)
        (let ((_E81834_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81832_ _E81834_))))
    (define gx#syntax-local-value
      (lambda _g84844_
        (let ((_g84843_ (##length _g84844_)))
          (cond ((##fx= _g84843_ 1)
                 (apply (lambda (_stx81832_)
                          (gx#syntax-local-value__0 _stx81832_))
                        _g84844_))
                ((##fx= _g84843_ 2)
                 (apply (lambda (_stx81836_ _E81837_)
                          (gx#syntax-local-value__% _stx81836_ _E81837_))
                        _g84844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84844_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81821_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81821_)))))
