(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708352924)
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
      (lambda _$args83674_
        (apply make-instance gx#expander-context::t _$args83674_)))
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
      (lambda _$args83671_
        (apply make-instance gx#root-context::t _$args83671_)))
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
      (lambda _$args83668_
        (apply make-instance gx#phi-context::t _$args83668_)))
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
      (lambda _$args83665_
        (apply make-instance gx#top-context::t _$args83665_)))
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
      (lambda _$args83662_
        (apply make-instance gx#module-context::t _$args83662_)))
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
      (lambda _$args83659_
        (apply make-instance gx#prelude-context::t _$args83659_)))
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
      (lambda _$args83656_
        (apply make-instance gx#local-context::t _$args83656_)))
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
      (lambda (_self83640_ _id83641_ _super83642_)
        (if (##fx< '3 (##structure-length _self83640_))
            (begin
              (##unchecked-structure-set!
               _self83640_
               _id83641_
               '1
               (##structure-type _self83640_)
               '#f)
              (##unchecked-structure-set!
               _self83640_
               (make-hash-table-eq)
               '2
               (##structure-type _self83640_)
               '#f)
              (##unchecked-structure-set!
               _self83640_
               _super83642_
               '3
               (##structure-type _self83640_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83640_
                   '3
                   (##vector-length _self83640_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self83647_ _id83648_)
        (let ((_super83650_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self83647_ _id83648_ _super83650_))))
    (define gx#phi-context:::init!
      (lambda _g83717_
        (let ((_g83716_ (##length _g83717_)))
          (cond ((##fx= _g83716_ 2)
                 (apply (lambda (_self83647_ _id83648_)
                          (gx#phi-context:::init!__0 _self83647_ _id83648_))
                        _g83717_))
                ((##fx= _g83716_ 3)
                 (apply (lambda (_self83652_ _id83653_ _super83654_)
                          (gx#phi-context:::init!__%
                           _self83652_
                           _id83653_
                           _super83654_))
                        _g83717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g83717_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self83504_ _super83505_)
        (if (##fx< '3 (##structure-length _self83504_))
            (begin
              (##unchecked-structure-set!
               _self83504_
               (gensym 'L)
               '1
               (##structure-type _self83504_)
               '#f)
              (##unchecked-structure-set!
               _self83504_
               (make-hash-table-eq)
               '2
               (##structure-type _self83504_)
               '#f)
              (##unchecked-structure-set!
               _self83504_
               _super83505_
               '3
               (##structure-type _self83504_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83504_
                   '3
                   (##vector-length _self83504_)))))
    (define gx#local-context:::init!__0
      (lambda (_self83510_)
        (let ((_super83512_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self83510_ _super83512_))))
    (define gx#local-context:::init!
      (lambda _g83719_
        (let ((_g83718_ (##length _g83719_)))
          (cond ((##fx= _g83718_ 1)
                 (apply (lambda (_self83510_)
                          (gx#local-context:::init!__0 _self83510_))
                        _g83719_))
                ((##fx= _g83718_ 2)
                 (apply (lambda (_self83514_ _super83515_)
                          (gx#local-context:::init!__%
                           _self83514_
                           _super83515_))
                        _g83719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g83719_))))))
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
      (lambda _$args83378_ (apply make-instance gx#binding::t _$args83378_)))
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
      (lambda _$args83375_
        (apply make-instance gx#runtime-binding::t _$args83375_)))
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
      (lambda _$args83372_
        (apply make-instance gx#local-binding::t _$args83372_)))
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
      (lambda _$args83369_
        (apply make-instance gx#top-binding::t _$args83369_)))
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
      (lambda _$args83366_
        (apply make-instance gx#module-binding::t _$args83366_)))
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
      (lambda _$args83363_
        (apply make-instance gx#extern-binding::t _$args83363_)))
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
      (lambda _$args83360_
        (apply make-instance gx#syntax-binding::t _$args83360_)))
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
      (lambda _$args83357_
        (apply make-instance gx#import-binding::t _$args83357_)))
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
      (lambda _$args83354_
        (apply make-instance gx#alias-binding::t _$args83354_)))
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
      (lambda _$args83351_ (apply make-instance gx#expander::t _$args83351_)))
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
      (lambda _$args83348_
        (apply make-instance gx#core-expander::t _$args83348_)))
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
      (lambda _$args83345_
        (apply make-instance gx#expression-form::t _$args83345_)))
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
      (lambda _$args83342_
        (apply make-instance gx#special-form::t _$args83342_)))
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
      (lambda _$args83339_
        (apply make-instance gx#definition-form::t _$args83339_)))
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
      (lambda _$args83336_
        (apply make-instance gx#top-special-form::t _$args83336_)))
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
      (lambda _$args83333_
        (apply make-instance gx#module-special-form::t _$args83333_)))
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
      (lambda _$args83330_
        (apply make-instance gx#feature-expander::t _$args83330_)))
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
      (lambda _$args83327_
        (apply make-instance gx#private-feature-expander::t _$args83327_)))
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
      (lambda _$args83324_
        (apply make-instance gx#reserved-expander::t _$args83324_)))
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
      (lambda _$args83321_
        (apply make-instance gx#macro-expander::t _$args83321_)))
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
      (lambda _$args83318_
        (apply make-instance gx#rename-macro-expander::t _$args83318_)))
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
      (lambda _$args83315_
        (apply make-instance gx#user-expander::t _$args83315_)))
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
      (lambda _$args83312_
        (apply make-instance gx#expander-mark::t _$args83312_)))
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
      (lambda (_ctx83297_ _message83298_ _stx83299_ . _details83300_)
        (let ((_ctx83310_
               (let ((_$e83302_ _ctx83297_))
                 (if _$e83302_
                     _$e83302_
                     (let ((_$e83305_ (gx#core-context-top__0)))
                       (if _$e83305_
                           ((lambda (_ctx83308_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx83308_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e83305_)
                           '#f))))))
          (raise (make-syntax-error
                  _message83298_
                  (cons _stx83299_ _details83300_)
                  _ctx83310_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx83284_ _expression?83285_)
        (gx#eval-syntax* (gx#core-expand__% _stx83284_ _expression?83285_))))
    (define gx#eval-syntax__0
      (lambda (_stx83290_)
        (let ((_expression?83292_ '#f))
          (gx#eval-syntax__% _stx83290_ _expression?83292_))))
    (define gx#eval-syntax
      (lambda _g83721_
        (let ((_g83720_ (##length _g83721_)))
          (cond ((##fx= _g83720_ 1)
                 (apply (lambda (_stx83290_) (gx#eval-syntax__0 _stx83290_))
                        _g83721_))
                ((##fx= _g83720_ 2)
                 (apply (lambda (_stx83294_ _expression?83295_)
                          (gx#eval-syntax__% _stx83294_ _expression?83295_))
                        _g83721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g83721_))))))
    (define gx#eval-syntax*
      (lambda (_stx83281_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx83281_))))
    (define gx#core-expand__%
      (lambda (_stx83268_ _expression?83269_)
        (if _expression?83269_
            (gx#core-expand-expression _stx83268_)
            (gx#core-expand-top _stx83268_))))
    (define gx#core-expand__0
      (lambda (_stx83274_)
        (let ((_expression?83276_ '#f))
          (gx#core-expand__% _stx83274_ _expression?83276_))))
    (define gx#core-expand
      (lambda _g83723_
        (let ((_g83722_ (##length _g83723_)))
          (cond ((##fx= _g83722_ 1)
                 (apply (lambda (_stx83274_) (gx#core-expand__0 _stx83274_))
                        _g83723_))
                ((##fx= _g83722_ 2)
                 (apply (lambda (_stx83278_ _expression?83279_)
                          (gx#core-expand__% _stx83278_ _expression?83279_))
                        _g83723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g83723_))))))
    (define gx#core-expand-top
      (lambda (_stx83235_)
        (let* ((_stx83237_ (gx#core-expand*__0 _stx83235_))
               (_e8323883245_ _stx83237_)
               (_E8324083249_
                (lambda () (gx#core-expand-expression _stx83237_)))
               (_E8323983263_
                (lambda ()
                  (if (gx#stx-pair? _e8323883245_)
                      (let ((_e8324183253_ (gx#syntax-e _e8323883245_)))
                        (let ((_hd8324283256_ (##car _e8324183253_))
                              (_tl8324383258_ (##cdr _e8324183253_)))
                          (let ((_form83261_ _hd8324283256_))
                            (if (gx#core-bound-identifier?__0 _form83261_)
                                _stx83237_
                                (_E8324083249_)))))
                      (_E8324083249_)))))
          (_E8323983263_))))
    (define gx#core-expand-expression
      (lambda (_stx83182_)
        (letrec ((_sealed-expression?83184_
                  (lambda (_hd83205_)
                    (if (gx#sealed-syntax? _hd83205_)
                        (let* ((_e8320683213_ _hd83205_)
                               (_E8320883217_ (lambda () '#f))
                               (_E8320783231_
                                (lambda ()
                                  (if (gx#stx-pair? _e8320683213_)
                                      (let ((_e8320983221_
                                             (gx#syntax-e _e8320683213_)))
                                        (let ((_hd8321083224_
                                               (##car _e8320983221_))
                                              (_tl8321183226_
                                               (##cdr _e8320983221_)))
                                          (let ((_form83229_ _hd8321083224_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form83229_
                                                 gx#expression-form-binding?)
                                                (_E8320883217_)))))
                                      (_E8320883217_)))))
                          (_E8320783231_))
                        '#f)))
                 (_illegal-expression83185_
                  (lambda (_hd83203_ . _g83724_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx83182_
                     _hd83203_)))
                 (_expand-e83186_
                  (lambda (_form83198_ _hd83199_)
                    (let ((_bind83201_
                           (if (##structure-instance-of?
                                _form83198_
                                'gx#binding::t)
                               _form83198_
                               (gx#resolve-identifier__0 _form83198_))))
                      (if (gx#core-expander-binding? _bind83201_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind83201_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd83199_
                            (gx#stx-source _stx83182_)))
                          (if (##structure-direct-instance-of?
                               _bind83201_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind83201_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd83199_
                                 (gx#stx-source _stx83182_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx83182_
                               _form83198_)))))))
          (let ((_hd83188_ (gx#core-expand-head _stx83182_)))
            (if (_sealed-expression?83184_ _hd83188_)
                _hd83188_
                (if (gx#stx-pair? _hd83188_)
                    (let* ((_form83190_ (gx#stx-car _hd83188_))
                           (_bind83192_
                            (if (gx#identifier? _form83190_)
                                (gx#resolve-identifier__0 _form83190_)
                                '#f)))
                      (if (or (not _bind83192_)
                              (not (gx#core-expander-binding? _bind83192_)))
                          (_expand-e83186_ '%%app (cons '%%app _hd83188_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind83192_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd83188_
                               _illegal-expression83185_)
                              (if (gx#expression-form-binding? _bind83192_)
                                  (_expand-e83186_ _bind83192_ _hd83188_)
                                  (if (gx#direct-special-form-binding?
                                       _bind83192_)
                                      (gx#core-expand-expression
                                       (_expand-e83186_ _bind83192_ _hd83188_))
                                      (_illegal-expression83185_
                                       _hd83188_))))))
                    (if (gx#core-bound-identifier?__0 _hd83188_)
                        (_illegal-expression83185_ _hd83188_)
                        (if (gx#identifier? _hd83188_)
                            (_expand-e83186_
                             '%%ref
                             (cons '%%ref (cons _hd83188_ '())))
                            (if (gx#stx-datum? _hd83188_)
                                (_expand-e83186_
                                 '%#quote
                                 (cons '%#quote (cons _hd83188_ '())))
                                (_illegal-expression83185_ _hd83188_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx83177_)
        (call-with-parameters
         (lambda ()
           (let ((_stx83180_ (gx#core-expand-expression _stx83177_)))
             (values _stx83180_ (gx#eval-syntax* _stx83180_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx83158_ _stop?83159_)
        (let _lp83161_ ((_stx83163_ _stx83158_))
          (if (_stop?83159_ _stx83163_)
              _stx83163_
              (let ((_rstx83165_ (gx#core-expand1 _stx83163_)))
                (if (eq? _stx83163_ _rstx83165_)
                    _stx83163_
                    (_lp83161_ _rstx83165_)))))))
    (define gx#core-expand*__0
      (lambda (_stx83170_)
        (let ((_stop?83172_ false))
          (gx#core-expand*__% _stx83170_ _stop?83172_))))
    (define gx#core-expand*
      (lambda _g83726_
        (let ((_g83725_ (##length _g83726_)))
          (cond ((##fx= _g83725_ 1)
                 (apply (lambda (_stx83170_) (gx#core-expand*__0 _stx83170_))
                        _g83726_))
                ((##fx= _g83725_ 2)
                 (apply (lambda (_stx83174_ _stop?83175_)
                          (gx#core-expand*__% _stx83174_ _stop?83175_))
                        _g83726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g83726_))))))
    (define gx#core-expand1
      (lambda (_stx83114_)
        (letrec ((_step83116_
                  (lambda (_hd83153_)
                    (let ((_bind83155_ (gx#resolve-identifier__0 _hd83153_)))
                      (if (##structure-instance-of?
                           _bind83155_
                           'gx#runtime-binding::t)
                          _stx83114_
                          (if (##structure-direct-instance-of?
                               _bind83155_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind83155_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx83114_)
                              (if (not _bind83155_)
                                  _stx83114_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx83114_))))))))
          (let* ((_e8311783125_ _stx83114_)
                 (_E8312383129_ (lambda () _stx83114_))
                 (_E8311983135_
                  (lambda ()
                    (let ((_hd83133_ _e8311783125_))
                      (if (gx#identifier? _hd83133_)
                          (_step83116_ _hd83133_)
                          (_E8312383129_)))))
                 (_E8311883149_
                  (lambda ()
                    (if (gx#stx-pair? _e8311783125_)
                        (let ((_e8312083139_ (gx#syntax-e _e8311783125_)))
                          (let ((_hd8312183142_ (##car _e8312083139_))
                                (_tl8312283144_ (##cdr _e8312083139_)))
                            (let ((_hd83147_ _hd8312183142_))
                              (if (gx#identifier? _hd83147_)
                                  (_step83116_ _hd83147_)
                                  (_E8311983135_)))))
                        (_E8311983135_)))))
            (_E8311883149_)))))
    (define gx#core-expand-head
      (lambda (_stx83080_)
        (letrec ((_stop?83082_
                  (lambda (_stx83084_)
                    (let* ((_e8308583092_ _stx83084_)
                           (_E8308783096_ (lambda () '#f))
                           (_E8308683110_
                            (lambda ()
                              (if (gx#stx-pair? _e8308583092_)
                                  (let ((_e8308883100_
                                         (gx#syntax-e _e8308583092_)))
                                    (let ((_hd8308983103_
                                           (##car _e8308883100_))
                                          (_tl8309083105_
                                           (##cdr _e8308883100_)))
                                      (let ((_hd83108_ _hd8308983103_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd83108_)
                                            (_E8308783096_)))))
                                  (_E8308783096_)))))
                      (_E8308683110_)))))
          (gx#core-expand*__% _stx83080_ _stop?83082_))))
    (define gx#core-expand-block__%
      (lambda (_stx82886_
               _expand-special82887_
               _begin-form82888_
               _expand-e82889_)
        (letrec ((_expand-splice82891_
                  (lambda (_hd83054_ _body83055_ _rest83056_ _r83057_)
                    (if (gx#stx-list? _body83055_)
                        (_K82895_
                         (gx#stx-foldr cons _rest83056_ _body83055_)
                         _r83057_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx82886_
                         _hd83054_))))
                 (_expand-cond-expand82892_
                  (lambda (_hd83050_ _rest83051_ _r83052_)
                    (_K82895_
                     (cons (gx#core-expand-cond-expand% _hd83050_) _rest83051_)
                     _r83052_)))
                 (_expand-include82893_
                  (lambda (_hd82999_ _rest83000_ _r83001_)
                    (let* ((_e8300283012_ _hd82999_)
                           (_E8300483016_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8300283012_)))
                           (_E8300383046_
                            (lambda ()
                              (if (gx#stx-pair? _e8300283012_)
                                  (let ((_e8300583020_
                                         (gx#syntax-e _e8300283012_)))
                                    (let ((_hd8300683023_
                                           (##car _e8300583020_))
                                          (_tl8300783025_
                                           (##cdr _e8300583020_)))
                                      (if (gx#stx-pair? _tl8300783025_)
                                          (let ((_e8300883028_
                                                 (gx#syntax-e _tl8300783025_)))
                                            (let ((_hd8300983031_
                                                   (##car _e8300883028_))
                                                  (_tl8301083033_
                                                   (##cdr _e8300883028_)))
                                              (let ((_path83036_
                                                     _hd8300983031_))
                                                (if (gx#stx-null?
                                                     _tl8301083033_)
                                                    (if (gx#stx-string?
                                                         _path83036_)
                                                        (let* ((_rpath83038_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path83036_
                         (gx#stx-source _hd82999_)))
                       (_block83040_
                        (gx#core-expand-include%__% _hd82999_ _rpath83038_))
                       (_rbody83043_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block83040_
                            _expand-special82887_
                            '#f
                            _expand-e82889_))
                         gx#current-expander-path
                         (cons _rpath83038_ (gx#current-expander-path)))))
                  (_K82895_ _rest83000_ (foldr1 cons _r83001_ _rbody83043_)))
                (_E8300483016_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8300483016_)))))
                                          (_E8300483016_))))
                                  (_E8300483016_)))))
                      (_E8300383046_))))
                 (_expand-expression82894_
                  (lambda (_hd82995_ _rest82996_ _r82997_)
                    (_K82895_
                     _rest82996_
                     (cons (_expand-e82889_ _hd82995_) _r82997_))))
                 (_K82895_
                  (lambda (_rest82925_ _r82926_)
                    (let* ((_e8292782934_ _rest82925_)
                           (_E8292982938_
                            (lambda ()
                              (if _begin-form82888_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form82888_
                                    (reverse _r82926_))
                                   (gx#stx-source _stx82886_))
                                  _r82926_)))
                           (_E8292882991_
                            (lambda ()
                              (if (gx#stx-pair? _e8292782934_)
                                  (let ((_e8293082942_
                                         (gx#syntax-e _e8292782934_)))
                                    (let ((_hd8293182945_
                                           (##car _e8293082942_))
                                          (_tl8293282947_
                                           (##cdr _e8293082942_)))
                                      (let* ((_hd82950_ _hd8293182945_)
                                             (_rest82952_ _tl8293282947_))
                                        (if '#t
                                            (let* ((_hd82954_
                                                    (gx#core-expand-head
                                                     _hd82950_))
                                                   (_e8295582962_ _hd82954_)
                                                   (_E8295782966_
                                                    (lambda ()
                                                      (_expand-expression82894_
                                                       _hd82954_
                                                       _rest82952_
                                                       _r82926_)))
                                                   (_E8295682987_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8295582962_)
                                                          (let ((_e8295882970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8295582962_)))
                    (let ((_hd8295982973_ (##car _e8295882970_))
                          (_tl8296082975_ (##cdr _e8295882970_)))
                      (let* ((_form82978_ _hd8295982973_)
                             (_body82980_ _tl8296082975_))
                        (if '#t
                            (let ((_bind82982_
                                   (if (gx#identifier? _form82978_)
                                       (gx#resolve-identifier__0 _form82978_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind82982_)
                                  (let ((_$e82984_
                                         (##unchecked-structure-ref
                                          _bind82982_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e82984_)
                                        (_expand-splice82891_
                                         _hd82954_
                                         _body82980_
                                         _rest82952_
                                         _r82926_)
                                        (if (eq? '%#cond-expand _$e82984_)
                                            (_expand-cond-expand82892_
                                             _hd82954_
                                             _rest82952_
                                             _r82926_)
                                            (if (eq? '%#include _$e82984_)
                                                (_expand-include82893_
                                                 _hd82954_
                                                 _rest82952_
                                                 _r82926_)
                                                (_expand-special82887_
                                                 _hd82954_
                                                 _K82895_
                                                 _rest82952_
                                                 _r82926_)))))
                                  (_expand-expression82894_
                                   _hd82954_
                                   _rest82952_
                                   _r82926_)))
                            (_E8295782966_)))))
                  (_E8295782966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8295682987_))
                                            (_E8292982938_)))))
                                  (_E8292982938_)))))
                      (_E8292882991_)))))
          (let* ((_e8289682903_ _stx82886_)
                 (_E8289882907_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8289682903_)))
                 (_E8289782921_
                  (lambda ()
                    (if (gx#stx-pair? _e8289682903_)
                        (let ((_e8289982911_ (gx#syntax-e _e8289682903_)))
                          (let ((_hd8290082914_ (##car _e8289982911_))
                                (_tl8290182916_ (##cdr _e8289982911_)))
                            (let ((_body82919_ _tl8290182916_))
                              (if (gx#stx-list? _body82919_)
                                  (_K82895_ _body82919_ '())
                                  (_E8289882907_)))))
                        (_E8289882907_)))))
            (_E8289782921_)))))
    (define gx#core-expand-block__0
      (lambda (_stx83062_ _expand-special83063_)
        (let* ((_begin-form83065_ '%#begin)
               (_expand-e83067_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83062_
           _expand-special83063_
           _begin-form83065_
           _expand-e83067_))))
    (define gx#core-expand-block__1
      (lambda (_stx83069_ _expand-special83070_ _begin-form83071_)
        (let ((_expand-e83073_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83069_
           _expand-special83070_
           _begin-form83071_
           _expand-e83073_))))
    (define gx#core-expand-block
      (lambda _g83728_
        (let ((_g83727_ (##length _g83728_)))
          (cond ((##fx= _g83727_ 2)
                 (apply (lambda (_stx83062_ _expand-special83063_)
                          (gx#core-expand-block__0
                           _stx83062_
                           _expand-special83063_))
                        _g83728_))
                ((##fx= _g83727_ 3)
                 (apply (lambda (_stx83069_
                                 _expand-special83070_
                                 _begin-form83071_)
                          (gx#core-expand-block__1
                           _stx83069_
                           _expand-special83070_
                           _begin-form83071_))
                        _g83728_))
                ((##fx= _g83727_ 4)
                 (apply (lambda (_stx83075_
                                 _expand-special83076_
                                 _begin-form83077_
                                 _expand-e83078_)
                          (gx#core-expand-block__%
                           _stx83075_
                           _expand-special83076_
                           _begin-form83077_
                           _expand-e83078_))
                        _g83728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g83728_))))))
    (define gx#core-expand-block*
      (lambda (_stx82834_ _expand-special82835_)
        (let* ((_g8283682847_
                (gx#core-expand-block__1 _stx82834_ _expand-special82835_ '#f))
               (_E8284082851_
                (lambda () (error '"No clause matching" _g8283682847_))))
          (let ((_K8284582882_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx82834_)))
                (_K8284282868_ (lambda (_expr82866_) _expr82866_))
                (_K8284182857_
                 (lambda (_body82855_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body82855_))
                    (gx#stx-source _stx82834_)))))
            (let ((_try-match8283882878_
                   (lambda ()
                     (if (##pair? _g8283682847_)
                         (let ((_tl8284482873_ (##cdr _g8283682847_))
                               (_hd8284382871_ (##car _g8283682847_)))
                           (if (##null? _tl8284482873_)
                               (let ((_expr82876_ _hd8284382871_))
                                 (_K8284282868_ _expr82876_))
                               (let ((_body82860_ _g8283682847_))
                                 (_K8284182857_ _body82860_))))
                         (let ((_body82860_ _g8283682847_))
                           (_K8284182857_ _body82860_))))))
              (if (##null? _g8283682847_)
                  (_K8284582882_)
                  (_try-match8283882878_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx82662_)
        (letrec ((_satisfied?82664_
                  (lambda (_condition82762_)
                    (let* ((_e8276382778_ _condition82762_)
                           (_E8277382782_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8276382778_)))
                           (_E8276682801_
                            (lambda ()
                              (if (gx#stx-pair? _e8276382778_)
                                  (let ((_e8277482786_
                                         (gx#syntax-e _e8276382778_)))
                                    (let ((_hd8277582789_
                                           (##car _e8277482786_))
                                          (_tl8277682791_
                                           (##cdr _e8277482786_)))
                                      (let* ((_combinator82794_ _hd8277582789_)
                                             (_body82796_ _tl8277682791_))
                                        (if (gx#stx-list? _body82796_)
                                            (let ((_$e82798_
                                                   (gx#stx-e
                                                    _combinator82794_)))
                                              (if (eq? 'not _$e82798_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?82664_
                                                        _body82796_))
                                                  (if (eq? 'and _$e82798_)
                                                      (gx#stx-andmap
                                                       _satisfied?82664_
                                                       _body82796_)
                                                      (if (eq? 'or _$e82798_)
                                                          (gx#stx-ormap
                                                           _satisfied?82664_
                                                           _body82796_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e82798_)
                      (gx#stx-andmap gx#core-resolve-identifier _body82796_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx82662_
                       _combinator82794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8277382782_)))))
                                  (_E8277382782_))))
                           (_E8276582824_
                            (lambda ()
                              (if (gx#stx-pair? _e8276382778_)
                                  (let ((_e8276782805_
                                         (gx#syntax-e _e8276382778_)))
                                    (let ((_hd8276882808_
                                           (##car _e8276782805_))
                                          (_tl8276982810_
                                           (##cdr _e8276782805_)))
                                      (if (and (gx#identifier? _hd8276882808_)
                                               (gx#core-identifier=?
                                                _hd8276882808_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8276982810_)
                                              (let ((_e8277082813_
                                                     (gx#syntax-e
                                                      _tl8276982810_)))
                                                (let ((_hd8277182816_
                                                       (##car _e8277082813_))
                                                      (_tl8277282818_
                                                       (##cdr _e8277082813_)))
                                                  (let ((_expr82821_
                                                         _hd8277182816_))
                                                    (if (gx#stx-null?
                                                         _tl8277282818_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr82821_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8276682801_))
                (_E8276682801_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8276682801_))
                                          (_E8276682801_))))
                                  (_E8276682801_))))
                           (_E8276482830_
                            (lambda ()
                              (let ((_id82828_ _e8276382778_))
                                (if (gx#identifier? _id82828_)
                                    (gx#core-bound-identifier?__%
                                     _id82828_
                                     gx#feature-binding?)
                                    (_E8276582824_))))))
                      (_E8276482830_))))
                 (_loop82665_
                  (lambda (_rest82695_)
                    (let* ((_e8269682704_ _rest82695_)
                           (_E8270282708_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8269682704_)))
                           (_E8269882712_
                            (lambda ()
                              (if (gx#stx-null? _e8269682704_)
                                  (if '#t '() (_E8270282708_))
                                  (_E8270282708_))))
                           (_E8269782758_
                            (lambda ()
                              (if (gx#stx-pair? _e8269682704_)
                                  (let ((_e8269982716_
                                         (gx#syntax-e _e8269682704_)))
                                    (let ((_hd8270082719_
                                           (##car _e8269982716_))
                                          (_tl8270182721_
                                           (##cdr _e8269982716_)))
                                      (let* ((_hd82724_ _hd8270082719_)
                                             (_rest82726_ _tl8270182721_))
                                        (if '#t
                                            (let* ((_e8272782734_ _hd82724_)
                                                   (_E8272982738_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8272782734_)))
                                                   (_E8272882754_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8272782734_)
                                                          (let ((_e8273082742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8272782734_)))
                    (let ((_hd8273182745_ (##car _e8273082742_))
                          (_tl8273282747_ (##cdr _e8273082742_)))
                      (let* ((_condition82750_ _hd8273182745_)
                             (_body82752_ _tl8273282747_))
                        (if '#t
                            (if (gx#stx-eq? _condition82750_ 'else)
                                (if (gx#stx-null? _rest82726_)
                                    _body82752_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx82662_
                                     _hd82724_))
                                (if (_satisfied?82664_ _condition82750_)
                                    _body82752_
                                    (_loop82665_ _rest82726_)))
                            (_E8272982738_)))))
                  (_E8272982738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8272882754_))
                                            (_E8269882712_)))))
                                  (_E8269882712_)))))
                      (_E8269782758_)))))
          (let* ((_e8266682673_ _stx82662_)
                 (_E8266882677_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8266682673_)))
                 (_E8266782691_
                  (lambda ()
                    (if (gx#stx-pair? _e8266682673_)
                        (let ((_e8266982681_ (gx#syntax-e _e8266682673_)))
                          (let ((_hd8267082684_ (##car _e8266982681_))
                                (_tl8267182686_ (##cdr _e8266982681_)))
                            (let ((_clauses82689_ _tl8267182686_))
                              (if (gx#stx-list? _clauses82689_)
                                  (gx#core-cons
                                   'begin
                                   (_loop82665_ _clauses82689_))
                                  (_E8266882677_)))))
                        (_E8266882677_)))))
            (_E8266782691_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx82605_ _rpath82606_)
        (let* ((_e8260782617_ _stx82605_)
               (_E8260982621_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8260782617_)))
               (_E8260882648_
                (lambda ()
                  (if (gx#stx-pair? _e8260782617_)
                      (let ((_e8261082625_ (gx#syntax-e _e8260782617_)))
                        (let ((_hd8261182628_ (##car _e8261082625_))
                              (_tl8261282630_ (##cdr _e8261082625_)))
                          (if (gx#stx-pair? _tl8261282630_)
                              (let ((_e8261382633_
                                     (gx#syntax-e _tl8261282630_)))
                                (let ((_hd8261482636_ (##car _e8261382633_))
                                      (_tl8261582638_ (##cdr _e8261382633_)))
                                  (let ((_path82641_ _hd8261482636_))
                                    (if (gx#stx-null? _tl8261582638_)
                                        (if (gx#stx-string? _path82641_)
                                            (let ((_rpath82646_
                                                   (let ((_$e82643_
                                                          _rpath82606_))
                                                     (if _$e82643_
                                                         _$e82643_
                                                         (gx#core-resolve-path__%
                                                          _path82641_
                                                          (gx#stx-source
                                                           _stx82605_))))))
                                              (if (member _rpath82646_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx82605_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath82646_))
                                                    (gx#stx-source
                                                     _stx82605_)))))
                                            (_E8260982621_))
                                        (_E8260982621_)))))
                              (_E8260982621_))))
                      (_E8260982621_)))))
          (_E8260882648_))))
    (define gx#core-expand-include%__0
      (lambda (_stx82655_)
        (let ((_rpath82657_ '#f))
          (gx#core-expand-include%__% _stx82655_ _rpath82657_))))
    (define gx#core-expand-include%
      (lambda _g83730_
        (let ((_g83729_ (##length _g83730_)))
          (cond ((##fx= _g83729_ 1)
                 (apply (lambda (_stx82655_)
                          (gx#core-expand-include%__0 _stx82655_))
                        _g83730_))
                ((##fx= _g83729_ 2)
                 (apply (lambda (_stx82659_ _rpath82660_)
                          (gx#core-expand-include%__% _stx82659_ _rpath82660_))
                        _g83730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g83730_))))))
    (define gx#core-apply-expander__%
      (lambda (_K82574_ _stx82575_ _method82576_)
        (if (procedure? _K82574_)
            (let ((_$e82578_ (gx#stx-source _stx82575_)))
              (if _$e82578_
                  ((lambda (_g8258082582_)
                     (gx#stx-wrap-source (_K82574_ _stx82575_) _g8258082582_))
                   _$e82578_)
                  (_K82574_ _stx82575_)))
            (let ((_$e82585_ (bound-method-ref _K82574_ _method82576_)))
              (if _$e82585_
                  ((lambda (_g8258782589_)
                     (gx#core-apply-expander__%
                      _g8258782589_
                      _stx82575_
                      _method82576_))
                   _$e82585_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx82575_
                   _method82576_))))))
    (define gx#core-apply-expander__0
      (lambda (_K82595_ _stx82596_)
        (let ((_method82598_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K82595_ _stx82596_ _method82598_))))
    (define gx#core-apply-expander
      (lambda _g83732_
        (let ((_g83731_ (##length _g83732_)))
          (cond ((##fx= _g83731_ 2)
                 (apply (lambda (_K82595_ _stx82596_)
                          (gx#core-apply-expander__0 _K82595_ _stx82596_))
                        _g83732_))
                ((##fx= _g83731_ 3)
                 (apply (lambda (_K82600_ _stx82601_ _method82602_)
                          (gx#core-apply-expander__%
                           _K82600_
                           _stx82601_
                           _method82602_))
                        _g83732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g83732_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self82570_ _stx82571_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx82571_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self82423_ _stx82424_)
        (let* ((_self8242582431_ _self82423_)
               (_E8242782435_
                (lambda () (error '"No clause matching" _self8242582431_)))
               (_K8242882440_
                (lambda (_K82438_)
                  (gx#core-apply-expander__0 _K82438_ _stx82424_))))
          (if (##structure-instance-of? _self8242582431_ 'gx#core-macro::t)
              (let* ((_e8242982443_
                      (##unchecked-structure-ref
                       _self8242582431_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82446_ _e8242982443_))
                (_K8242882440_ _K82446_))
              (_E8242782435_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self82276_ _stx82277_)
        (if (gx#sealed-syntax? _stx82277_)
            _stx82277_
            (let* ((_self8227882284_ _self82276_)
                   (_E8228082288_
                    (lambda () (error '"No clause matching" _self8227882284_)))
                   (_K8228182293_
                    (lambda (_K82291_)
                      (gx#core-apply-expander__0 _K82291_ _stx82277_))))
              (if (##structure-instance-of?
                   _self8227882284_
                   'gx#core-expander::t)
                  (let* ((_e8228282296_
                          (##unchecked-structure-ref
                           _self8227882284_
                           '1
                           gx#expander::t
                           '#f))
                         (_K82299_ _e8228282296_))
                    (_K8228182293_ _K82299_))
                  (_E8228082288_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self82138_ _stx82139_ _top?82140_)
        (if (_top?82140_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self82138_ _stx82139_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx82139_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self82145_ _stx82146_)
        (let ((_top?82148_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self82145_
           _stx82146_
           _top?82148_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g83734_
        (let ((_g83733_ (##length _g83734_)))
          (cond ((##fx= _g83733_ 2)
                 (apply (lambda (_self82145_ _stx82146_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self82145_
                           _stx82146_))
                        _g83734_))
                ((##fx= _g83733_ 3)
                 (apply (lambda (_self82150_ _stx82151_ _top?82152_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self82150_
                           _stx82151_
                           _top?82152_))
                        _g83734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g83734_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self82012_ _stx82013_)
        (gx#top-special-form::apply-macro-expander__%
         _self82012_
         _stx82013_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self81837_ _stx81838_)
        (let* ((_self8183981845_ _self81837_)
               (_E8184181849_
                (lambda () (error '"No clause matching" _self8183981845_)))
               (_K8184281882_
                (lambda (_id81852_)
                  (let* ((_e8185381860_ _stx81838_)
                         (_E8185581864_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8185381860_)))
                         (_E8185481878_
                          (lambda ()
                            (if (gx#stx-pair? _e8185381860_)
                                (let ((_e8185681868_
                                       (gx#syntax-e _e8185381860_)))
                                  (let ((_hd8185781871_ (##car _e8185681868_))
                                        (_tl8185881873_ (##cdr _e8185681868_)))
                                    (let ((_body81876_ _tl8185881873_))
                                      (if '#t
                                          (gx#core-cons _id81852_ _body81876_)
                                          (_E8185581864_)))))
                                (_E8185581864_)))))
                    (_E8185481878_)))))
          (if (##structure-instance-of?
               _self8183981845_
               'gx#rename-macro-expander::t)
              (let* ((_e8184381885_
                      (##unchecked-structure-ref
                       _self8183981845_
                       '1
                       gx#expander::t
                       '#f))
                     (_id81888_ _e8184381885_))
                (_K8184281882_ _id81888_))
              (_E8184181849_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self81663_ _stx81664_ _method81665_)
        (let* ((_self8166681674_ _self81663_)
               (_E8166881678_
                (lambda () (error '"No clause matching" _self8166681674_)))
               (_K8166981685_
                (lambda (_phi81681_ _ctx81682_ _K81683_)
                  (gx#core-apply-user-macro
                   _K81683_
                   _stx81664_
                   _ctx81682_
                   _phi81681_
                   _method81665_))))
          (if (##structure-instance-of? _self8166681674_ 'gx#macro-expander::t)
              (let* ((_e8167081688_
                      (##unchecked-structure-ref
                       _self8166681674_
                       '1
                       gx#expander::t
                       '#f))
                     (_K81691_ _e8167081688_)
                     (_e8167181693_
                      (##unchecked-structure-ref
                       _self8166681674_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx81696_ _e8167181693_)
                     (_e8167281698_
                      (##unchecked-structure-ref
                       _self8166681674_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi81701_ _e8167281698_))
                (_K8166981685_ _phi81701_ _ctx81696_ _K81691_))
              (_E8166881678_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self81706_ _stx81707_)
        (let ((_method81709_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self81706_
           _stx81707_
           _method81709_))))
    (define gx#core-apply-user-expander
      (lambda _g83736_
        (let ((_g83735_ (##length _g83736_)))
          (cond ((##fx= _g83735_ 2)
                 (apply (lambda (_self81706_ _stx81707_)
                          (gx#core-apply-user-expander__0
                           _self81706_
                           _stx81707_))
                        _g83736_))
                ((##fx= _g83735_ 3)
                 (apply (lambda (_self81711_ _stx81712_ _method81713_)
                          (gx#core-apply-user-expander__%
                           _self81711_
                           _stx81712_
                           _method81713_))
                        _g83736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g83736_))))))
    (define gx#core-apply-user-macro
      (lambda (_K81653_ _stx81654_ _ctx81655_ _phi81656_ _method81657_)
        (let ((_mark81659_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx81655_
                _phi81656_
                _stx81654_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K81653_
               (gx#stx-apply-mark _stx81654_ _mark81659_)
               _method81657_)
              _mark81659_))
           gx#current-expander-marks
           (cons _mark81659_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx81505_ _phi81506_ _ctx81507_)
        (let _lp81509_ ((_bind81511_
                         (gx#core-resolve-identifier__%
                          _stx81505_
                          _phi81506_
                          _ctx81507_)))
          (if (##structure-direct-instance-of?
               _bind81511_
               'gx#import-binding::t)
              (_lp81509_
               (##unchecked-structure-ref
                _bind81511_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind81511_
                   'gx#alias-binding::t)
                  (_lp81509_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind81511_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi81506_
                    _ctx81507_))
                  _bind81511_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx81516_)
        (let* ((_phi81518_ (gx#current-expander-phi))
               (_ctx81520_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81516_ _phi81518_ _ctx81520_))))
    (define gx#resolve-identifier__1
      (lambda (_stx81522_ _phi81523_)
        (let ((_ctx81525_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81522_ _phi81523_ _ctx81525_))))
    (define gx#resolve-identifier
      (lambda _g83738_
        (let ((_g83737_ (##length _g83738_)))
          (cond ((##fx= _g83737_ 1)
                 (apply (lambda (_stx81516_)
                          (gx#resolve-identifier__0 _stx81516_))
                        _g83738_))
                ((##fx= _g83737_ 2)
                 (apply (lambda (_stx81522_ _phi81523_)
                          (gx#resolve-identifier__1 _stx81522_ _phi81523_))
                        _g83738_))
                ((##fx= _g83737_ 3)
                 (apply (lambda (_stx81527_ _phi81528_ _ctx81529_)
                          (gx#resolve-identifier__%
                           _stx81527_
                           _phi81528_
                           _ctx81529_))
                        _g83738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g83738_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx81463_ _val81464_ _rebind?81465_ _phi81466_ _ctx81467_)
        (let ((_rebind?81469_
               (if (not _rebind?81465_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?81465_) _rebind?81465_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx81463_)
           _val81464_
           _rebind?81469_
           _phi81466_
           _ctx81467_))))
    (define gx#bind-identifier!__0
      (lambda (_stx81474_ _val81475_)
        (let* ((_rebind?81477_ '#f)
               (_phi81479_ (gx#current-expander-phi))
               (_ctx81481_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81474_
           _val81475_
           _rebind?81477_
           _phi81479_
           _ctx81481_))))
    (define gx#bind-identifier!__1
      (lambda (_stx81483_ _val81484_ _rebind?81485_)
        (let* ((_phi81487_ (gx#current-expander-phi))
               (_ctx81489_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81483_
           _val81484_
           _rebind?81485_
           _phi81487_
           _ctx81489_))))
    (define gx#bind-identifier!__2
      (lambda (_stx81491_ _val81492_ _rebind?81493_ _phi81494_)
        (let ((_ctx81496_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81491_
           _val81492_
           _rebind?81493_
           _phi81494_
           _ctx81496_))))
    (define gx#bind-identifier!
      (lambda _g83740_
        (let ((_g83739_ (##length _g83740_)))
          (cond ((##fx= _g83739_ 2)
                 (apply (lambda (_stx81474_ _val81475_)
                          (gx#bind-identifier!__0 _stx81474_ _val81475_))
                        _g83740_))
                ((##fx= _g83739_ 3)
                 (apply (lambda (_stx81483_ _val81484_ _rebind?81485_)
                          (gx#bind-identifier!__1
                           _stx81483_
                           _val81484_
                           _rebind?81485_))
                        _g83740_))
                ((##fx= _g83739_ 4)
                 (apply (lambda (_stx81491_
                                 _val81492_
                                 _rebind?81493_
                                 _phi81494_)
                          (gx#bind-identifier!__2
                           _stx81491_
                           _val81492_
                           _rebind?81493_
                           _phi81494_))
                        _g83740_))
                ((##fx= _g83739_ 5)
                 (apply (lambda (_stx81498_
                                 _val81499_
                                 _rebind?81500_
                                 _phi81501_
                                 _ctx81502_)
                          (gx#bind-identifier!__%
                           _stx81498_
                           _val81499_
                           _rebind?81500_
                           _phi81501_
                           _ctx81502_))
                        _g83740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g83740_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx81435_ _phi81436_ _ctx81437_)
        (let _lp81439_ ((_e81441_ _stx81435_)
                        (_marks81442_ (gx#current-expander-marks)))
          (if (symbol? _e81441_)
              (gx#core-resolve-binding
               _e81441_
               _phi81436_
               _phi81436_
               _ctx81437_
               (reverse _marks81442_))
              (if (gx#identifier-quote? _e81441_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e81441_ '1 gx#AST::t '#f)
                   _phi81436_
                   '0
                   (##unchecked-structure-ref
                    _e81441_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e81441_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e81441_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e81441_ '1 gx#AST::t '#f)
                       _phi81436_
                       _phi81436_
                       _ctx81437_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81441_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81442_))
                      (if (##structure-direct-instance-of?
                           _e81441_
                           'gx#syntax-wrap::t)
                          (_lp81439_
                           (##unchecked-structure-ref
                            _e81441_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e81441_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks81442_))
                          (if (##structure-instance-of?
                               _e81441_
                               'gerbil#AST::t)
                              (_lp81439_
                               (##unchecked-structure-ref
                                _e81441_
                                '1
                                gx#AST::t
                                '#f)
                               _marks81442_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx81435_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx81447_)
        (let* ((_phi81449_ (gx#current-expander-phi))
               (_ctx81451_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81447_ _phi81449_ _ctx81451_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx81453_ _phi81454_)
        (let ((_ctx81456_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81453_ _phi81454_ _ctx81456_))))
    (define gx#core-resolve-identifier
      (lambda _g83742_
        (let ((_g83741_ (##length _g83742_)))
          (cond ((##fx= _g83741_ 1)
                 (apply (lambda (_stx81447_)
                          (gx#core-resolve-identifier__0 _stx81447_))
                        _g83742_))
                ((##fx= _g83741_ 2)
                 (apply (lambda (_stx81453_ _phi81454_)
                          (gx#core-resolve-identifier__1
                           _stx81453_
                           _phi81454_))
                        _g83742_))
                ((##fx= _g83741_ 3)
                 (apply (lambda (_stx81458_ _phi81459_ _ctx81460_)
                          (gx#core-resolve-identifier__%
                           _stx81458_
                           _phi81459_
                           _ctx81460_))
                        _g83742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g83742_))))))
    (define gx#core-resolve-binding
      (lambda (_id81348_ _phi81349_ _src-phi81350_ _ctx81351_ _marks81352_)
        (letrec ((_resolve81354_
                  (lambda (_ctx81422_ _src-phi81423_ _key81424_)
                    (let _lp81426_ ((_ctx81428_
                                     (gx#core-context-shift
                                      _ctx81422_
                                      _phi81349_))
                                    (_dphi81429_
                                     (fx- _phi81349_ _src-phi81423_)))
                      (let ((_$e81431_
                             (gx#core-context-resolve _ctx81428_ _key81424_)))
                        (if _$e81431_
                            (values _$e81431_)
                            (if (fxzero? _dphi81429_)
                                '#f
                                (if (fxpositive? _dphi81429_)
                                    (_lp81426_
                                     (gx#core-context-shift _ctx81428_ '-1)
                                     (fx- _dphi81429_ '1))
                                    (_lp81426_
                                     (gx#core-context-shift _ctx81428_ '1)
                                     (fx+ _dphi81429_ '1))))))))))
          (let _lp81356_ ((_ctx81358_ _ctx81351_)
                          (_src-phi81359_ _src-phi81350_)
                          (_rest81360_ _marks81352_))
            (let* ((_rest8136181369_ _rest81360_)
                   (_else8136381377_
                    (lambda ()
                      (_resolve81354_ _ctx81358_ _src-phi81359_ _id81348_)))
                   (_K8136581410_
                    (lambda (_rest81380_ _hd81381_)
                      (let* ((_hd8138281388_ _hd81381_)
                             (_E8138481392_
                              (lambda ()
                                (error '"No clause matching" _hd8138281388_)))
                             (_K8138581402_
                              (lambda (_subst81395_)
                                (let ((_$e81399_
                                       (let ((_key81397_
                                              (if _subst81395_
                                                  (hash-get
                                                   _subst81395_
                                                   _id81348_)
                                                  '#f)))
                                         (if _key81397_
                                             (_resolve81354_
                                              _ctx81358_
                                              _src-phi81359_
                                              _key81397_)
                                             '#f))))
                                  (if _$e81399_
                                      _$e81399_
                                      (_lp81356_
                                       (##unchecked-structure-ref
                                        _hd81381_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd81381_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest81380_))))))
                        (if (##structure-instance-of?
                             _hd8138281388_
                             'gx#expander-mark::t)
                            (let* ((_e8138681405_
                                    (##unchecked-structure-ref
                                     _hd8138281388_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst81408_ _e8138681405_))
                              (_K8138581402_ _subst81408_))
                            (_E8138481392_))))))
              (if (##pair? _rest8136181369_)
                  (let ((_hd8136681413_ (##car _rest8136181369_))
                        (_tl8136781415_ (##cdr _rest8136181369_)))
                    (let* ((_hd81418_ _hd8136681413_)
                           (_rest81420_ _tl8136781415_))
                      (_K8136581410_ _rest81420_ _hd81418_)))
                  (_else8136381377_)))))))
    (define gx#core-bind!__%
      (lambda (_key81224_ _val81225_ _rebind?81226_ _phi81227_ _ctx81228_)
        (letrec ((_update-binding81230_
                  (lambda (_xval81301_)
                    (if (or (_rebind?81226_ _ctx81228_ _xval81301_ _val81225_)
                            (and (##structure-direct-instance-of?
                                  _xval81301_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval81301_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val81225_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val81225_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval81301_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val81225_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val81225_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval81301_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val81225_
                        (if (and (##structure-direct-instance-of?
                                  _val81225_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val81225_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval81301_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val81225_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval81301_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval81301_
                            (if (and (##structure-direct-instance-of?
                                      _val81225_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval81301_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key81224_
                                 (cons (##unchecked-structure-ref
                                        _val81225_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val81225_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval81301_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval81301_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval81301_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval81301_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key81224_
                                 _val81225_
                                 _xval81301_))))))
                 (_gensubst81231_
                  (lambda (_subst81296_ _id81297_)
                    (let ((_eid81299_
                           (gensym (if (uninterned-symbol? _id81297_)
                                       '%
                                       _id81297_))))
                      (hash-put! _subst81296_ _id81297_ _eid81299_)
                      _eid81299_)))
                 (_subst!81232_
                  (lambda (_key81234_)
                    (let* ((_key8123581243_ _key81234_)
                           (_else8123781251_ (lambda () _key81234_))
                           (_K8123981284_
                            (lambda (_mark81254_ _id81255_)
                              (let* ((_mark8125681262_ _mark81254_)
                                     (_E8125881266_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8125681262_)))
                                     (_K8125981276_
                                      (lambda (_subst81269_)
                                        (if (not _subst81269_)
                                            (let ((_subst81271_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark81254_
                                               _subst81271_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst81231_
                                               _subst81271_
                                               _id81255_))
                                            (let ((_$e81273_
                                                   (hash-get
                                                    _subst81269_
                                                    _id81255_)))
                                              (if _$e81273_
                                                  (values _$e81273_)
                                                  (_gensubst81231_
                                                   _subst81269_
                                                   _id81255_)))))))
                                (if (##structure-instance-of?
                                     _mark8125681262_
                                     'gx#expander-mark::t)
                                    (let* ((_e8126081279_
                                            (##unchecked-structure-ref
                                             _mark8125681262_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst81282_ _e8126081279_))
                                      (_K8125981276_ _subst81282_))
                                    (_E8125881266_))))))
                      (if (##pair? _key8123581243_)
                          (let ((_hd8124081287_ (##car _key8123581243_))
                                (_tl8124181289_ (##cdr _key8123581243_)))
                            (let* ((_id81292_ _hd8124081287_)
                                   (_mark81294_ _tl8124181289_))
                              (_K8123981284_ _mark81294_ _id81292_)))
                          (_else8123781251_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx81228_ _phi81227_)
           (_subst!81232_ _key81224_)
           _val81225_
           _update-binding81230_))))
    (define gx#core-bind!__0
      (lambda (_key81318_ _val81319_)
        (let* ((_rebind?81321_ false)
               (_phi81323_ (gx#current-expander-phi))
               (_ctx81325_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81318_
           _val81319_
           _rebind?81321_
           _phi81323_
           _ctx81325_))))
    (define gx#core-bind!__1
      (lambda (_key81327_ _val81328_ _rebind?81329_)
        (let* ((_phi81331_ (gx#current-expander-phi))
               (_ctx81333_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81327_
           _val81328_
           _rebind?81329_
           _phi81331_
           _ctx81333_))))
    (define gx#core-bind!__2
      (lambda (_key81335_ _val81336_ _rebind?81337_ _phi81338_)
        (let ((_ctx81340_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81335_
           _val81336_
           _rebind?81337_
           _phi81338_
           _ctx81340_))))
    (define gx#core-bind!
      (lambda _g83744_
        (let ((_g83743_ (##length _g83744_)))
          (cond ((##fx= _g83743_ 2)
                 (apply (lambda (_key81318_ _val81319_)
                          (gx#core-bind!__0 _key81318_ _val81319_))
                        _g83744_))
                ((##fx= _g83743_ 3)
                 (apply (lambda (_key81327_ _val81328_ _rebind?81329_)
                          (gx#core-bind!__1
                           _key81327_
                           _val81328_
                           _rebind?81329_))
                        _g83744_))
                ((##fx= _g83743_ 4)
                 (apply (lambda (_key81335_
                                 _val81336_
                                 _rebind?81337_
                                 _phi81338_)
                          (gx#core-bind!__2
                           _key81335_
                           _val81336_
                           _rebind?81337_
                           _phi81338_))
                        _g83744_))
                ((##fx= _g83743_ 5)
                 (apply (lambda (_key81342_
                                 _val81343_
                                 _rebind?81344_
                                 _phi81345_
                                 _ctx81346_)
                          (gx#core-bind!__%
                           _key81342_
                           _val81343_
                           _rebind?81344_
                           _phi81345_
                           _ctx81346_))
                        _g83744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g83744_))))))
    (define gx#core-identifier-key
      (lambda (_stx81158_)
        (if (symbol? _stx81158_)
            (let* ((_g8115981167_ (gx#current-expander-marks))
                   (_else8116181175_ (lambda () _stx81158_))
                   (_K8116381180_
                    (lambda (_hd81178_) (cons _stx81158_ _hd81178_))))
              (if (##pair? _g8115981167_)
                  (let* ((_hd8116481183_ (##car _g8115981167_))
                         (_hd81186_ _hd8116481183_))
                    (_K8116381180_ _hd81186_))
                  (_else8116181175_)))
            (if (gx#identifier? _stx81158_)
                (let* ((_id81188_ (gx#syntax-local-unwrap _stx81158_))
                       (_eid81190_ (gx#stx-e _id81188_))
                       (_marks81192_ (gx#stx-identifier-marks* _id81188_)))
                  (let* ((_marks8119481202_ _marks81192_)
                         (_else8119681210_ (lambda () _eid81190_))
                         (_K8119881215_
                          (lambda (_hd81213_) (cons _eid81190_ _hd81213_))))
                    (if (##pair? _marks8119481202_)
                        (let* ((_hd8119981218_ (##car _marks8119481202_))
                               (_hd81221_ _hd8119981218_))
                          (_K8119881215_ _hd81221_))
                        (_else8119681210_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx81158_)))))
    (define gx#core-context-shift
      (lambda (_ctx81103_ _phi81104_)
        (letrec ((_make-phi81106_
                  (lambda (_super81156_)
                    (let ((__obj83715
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj83715
                       (gensym 'phi)
                       _super81156_)
                      __obj83715)))
                 (_make-phi/up81107_
                  (lambda (_ctx81151_ _super81152_)
                    (let ((_ctx+181154_ (_make-phi81106_ _super81152_)))
                      (##unchecked-structure-set!
                       _ctx81151_
                       _ctx+181154_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+181154_
                       _ctx81151_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+181154_)))
                 (_make-phi/down81108_
                  (lambda (_ctx81146_ _super81147_)
                    (let ((_ctx-181149_ (_make-phi81106_ _super81147_)))
                      (##unchecked-structure-set!
                       _ctx-181149_
                       _ctx81146_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx81146_
                       _ctx-181149_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-181149_)))
                 (_shift81109_
                  (lambda (_ctx81130_
                           _delta81131_
                           _make-delta-context81132_
                           _phi81133_
                           _K81134_)
                    (let ((_$e81136_
                           (##unchecked-structure-ref
                            _ctx81130_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e81136_
                          ((lambda (_super81139_)
                             (let* ((_super81141_
                                     (_K81134_ _super81139_ _delta81131_))
                                    (_ctx+d81143_
                                     (_make-delta-context81132_
                                      _ctx81130_
                                      _super81141_)))
                               (_K81134_
                                _ctx+d81143_
                                (fx- _phi81133_ _delta81131_))))
                           _$e81136_)
                          (error '"Bad context" _ctx81130_))))))
          (let _K81111_ ((_ctx81113_ _ctx81103_) (_phi81114_ _phi81104_))
            (if (fxzero? _phi81114_)
                _ctx81113_
                (if (fx> (##vector-length _ctx81113_) '3)
                    (if (fxpositive? _phi81114_)
                        (let ((_$e81116_
                               (##unchecked-structure-ref
                                _ctx81113_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e81116_
                              ((lambda (_g8111881120_)
                                 (_K81111_ _g8111881120_ (fx- _phi81114_ '1)))
                               _$e81116_)
                              (_shift81109_
                               _ctx81113_
                               '1
                               _make-phi/up81107_
                               _phi81114_
                               _K81111_)))
                        (let ((_$e81123_
                               (##unchecked-structure-ref
                                _ctx81113_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e81123_
                              ((lambda (_g8112581127_)
                                 (_K81111_ _g8112581127_ (fx+ _phi81114_ '1)))
                               _$e81123_)
                              (_shift81109_
                               _ctx81113_
                               '-1
                               _make-phi/down81108_
                               _phi81114_
                               _K81111_))))
                    _ctx81113_))))))
    (define gx#core-context-get
      (lambda (_ctx81100_ _key81101_)
        (hash-get
         (##unchecked-structure-ref _ctx81100_ '2 gx#expander-context::t '#f)
         _key81101_)))
    (define gx#core-context-put!
      (lambda (_ctx81096_ _key81097_ _val81098_)
        (hash-put!
         (##unchecked-structure-ref _ctx81096_ '2 gx#expander-context::t '#f)
         _key81097_
         _val81098_)))
    (define gx#core-context-resolve
      (lambda (_ctx81083_ _key81084_)
        (let _lp81086_ ((_ctx81088_ _ctx81083_))
          (let ((_$e81090_ (gx#core-context-get _ctx81088_ _key81084_)))
            (if _$e81090_
                (values _$e81090_)
                (let ((_$e81093_
                       (if (fx> (##vector-length _ctx81088_) '3)
                           (##unchecked-structure-ref
                            _ctx81088_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e81093_ (_lp81086_ _$e81093_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx81073_ _key81074_ _val81075_ _rebind81076_)
        (let ((_$e81078_ (gx#core-context-get _ctx81073_ _key81074_)))
          (if _$e81078_
              ((lambda (_xval81081_)
                 (gx#core-context-put!
                  _ctx81073_
                  _key81074_
                  (_rebind81076_ _xval81081_)))
               _$e81078_)
              (gx#core-context-put! _ctx81073_ _key81074_ _val81075_)))))
    (define gx#core-context-top__%
      (lambda (_ctx81051_ _stop?81052_)
        (let _lp81054_ ((_ctx81056_ _ctx81051_))
          (if (_stop?81052_ _ctx81056_)
              _ctx81056_
              (if (##structure-instance-of? _ctx81056_ 'gx#context-phi::t)
                  (_lp81054_
                   (##unchecked-structure-ref
                    _ctx81056_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx81062_ (gx#current-expander-context))
               (_stop?81064_ gx#top-context?))
          (gx#core-context-top__% _ctx81062_ _stop?81064_))))
    (define gx#core-context-top__1
      (lambda (_ctx81066_)
        (let ((_stop?81068_ gx#top-context?))
          (gx#core-context-top__% _ctx81066_ _stop?81068_))))
    (define gx#core-context-top
      (lambda _g83746_
        (let ((_g83745_ (##length _g83746_)))
          (cond ((##fx= _g83745_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g83746_))
                ((##fx= _g83745_ 1)
                 (apply (lambda (_ctx81066_)
                          (gx#core-context-top__1 _ctx81066_))
                        _g83746_))
                ((##fx= _g83745_ 2)
                 (apply (lambda (_ctx81070_ _stop?81071_)
                          (gx#core-context-top__% _ctx81070_ _stop?81071_))
                        _g83746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g83746_))))))
    (define gx#core-context-root__%
      (lambda (_ctx81036_)
        (let _lp81038_ ((_ctx81040_ _ctx81036_))
          (if (##structure-instance-of? _ctx81040_ 'gx#context-phi::t)
              (_lp81038_
               (##unchecked-structure-ref _ctx81040_ '3 gx#phi-context::t '#f))
              _ctx81040_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx81046_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx81046_))))
    (define gx#core-context-root
      (lambda _g83748_
        (let ((_g83747_ (##length _g83748_)))
          (cond ((##fx= _g83747_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g83748_))
                ((##fx= _g83747_ 1)
                 (apply (lambda (_ctx81048_)
                          (gx#core-context-root__% _ctx81048_))
                        _g83748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g83748_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx81017_ . __8101481018_)
        (let ((_$e81021_ (gx#current-expander-allow-rebind?)))
          (if _$e81021_
              _$e81021_
              (if (##structure-instance-of? _ctx81017_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx81017_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx81017_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx81028_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx81028_))))
    (define gx#core-context-rebind?
      (lambda _g83750_
        (let ((_g83749_ (##length _g83750_)))
          (cond ((##fx= _g83749_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g83750_))
                ((##fx= _g83749_ 1)
                 (apply (lambda (_ctx81030_)
                          (gx#core-context-rebind?__% _ctx81030_))
                        _g83750_))
                ((##fx>= _g83749_ 1)
                 (apply gx#core-context-rebind?__% _g83750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g83750_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx81000_)
        (let ((_$e81002_ (gx#core-context-top__1 _ctx81000_)))
          (if _$e81002_
              ((lambda (_ctx81005_)
                 (if (##structure-instance-of?
                      _ctx81005_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx81005_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e81002_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx81011_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx81011_))))
    (define gx#core-context-namespace
      (lambda _g83752_
        (let ((_g83751_ (##length _g83752_)))
          (cond ((##fx= _g83751_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g83752_))
                ((##fx= _g83751_ 1)
                 (apply (lambda (_ctx81013_)
                          (gx#core-context-namespace__% _ctx81013_))
                        _g83752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g83752_))))))
    (define gx#expander-binding?__%
      (lambda (_bind80986_ _is?80987_)
        (if (##structure-direct-instance-of? _bind80986_ 'gx#syntax-binding::t)
            (_is?80987_
             (##unchecked-structure-ref
              _bind80986_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind80992_)
        (let ((_is?80994_ gx#expander?))
          (gx#expander-binding?__% _bind80992_ _is?80994_))))
    (define gx#expander-binding?
      (lambda _g83754_
        (let ((_g83753_ (##length _g83754_)))
          (cond ((##fx= _g83753_ 1)
                 (apply (lambda (_bind80992_)
                          (gx#expander-binding?__0 _bind80992_))
                        _g83754_))
                ((##fx= _g83753_ 2)
                 (apply (lambda (_bind80996_ _is?80997_)
                          (gx#expander-binding?__% _bind80996_ _is?80997_))
                        _g83754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g83754_))))))
    (define gx#core-expander-binding?
      (lambda (_bind80983_)
        (gx#expander-binding?__% _bind80983_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind80981_)
        (gx#expander-binding?__% _bind80981_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind80975_)
        (letrec ((_direct-special-form?80977_
                  (lambda (_obj80979_)
                    (##structure-direct-instance-of?
                     _obj80979_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind80975_ _direct-special-form?80977_))))
    (define gx#special-form-binding?
      (lambda (_bind80973_)
        (gx#expander-binding?__% _bind80973_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind80964_)
        (letrec ((_feature?80966_
                  (lambda (_e80968_)
                    (let ((_$e80970_
                           (##structure-instance-of?
                            _e80968_
                            'gx#feature-expander::t)))
                      (if _$e80970_
                          _$e80970_
                          (##structure-instance-of?
                           _e80968_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind80964_ _feature?80966_))))
    (define gx#private-feature-binding?
      (lambda (_bind80962_)
        (gx#expander-binding?__% _bind80962_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id80949_ _bound?80950_)
        (if (gx#identifier? _id80949_)
            (_bound?80950_ (gx#resolve-identifier__0 _id80949_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id80955_)
        (let ((_bound?80957_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id80955_ _bound?80957_))))
    (define gx#core-bound-identifier?
      (lambda _g83756_
        (let ((_g83755_ (##length _g83756_)))
          (cond ((##fx= _g83755_ 1)
                 (apply (lambda (_id80955_)
                          (gx#core-bound-identifier?__0 _id80955_))
                        _g83756_))
                ((##fx= _g83755_ 2)
                 (apply (lambda (_id80959_ _bound?80960_)
                          (gx#core-bound-identifier?__%
                           _id80959_
                           _bound?80960_))
                        _g83756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g83756_))))))
    (define gx#core-identifier=?
      (lambda (_x80939_ _y80940_)
        (letrec ((_y=?80942_
                  (lambda (_xid80946_)
                    ((if (list? _y80940_) memq eq?) _xid80946_ _y80940_))))
          (let ((_bind80944_ (gx#resolve-identifier__0 _x80939_)))
            (if (##structure-instance-of? _bind80944_ 'gx#binding::t)
                (_y=?80942_
                 (##unchecked-structure-ref _bind80944_ '1 gx#binding::t '#f))
                (_y=?80942_ (gx#stx-e _x80939_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e80937_)
        (if (interned-symbol? _e80937_)
            (string-index__0 (symbol->string _e80937_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx80892_ _src80893_ _ctx80894_ _marks80895_)
        (if (##structure? _stx80892_)
            (let ((_$e80897_ (gx#sealed-syntax-unwrap _stx80892_)))
              (if _$e80897_
                  (values _$e80897_)
                  (if (gx#identifier? _stx80892_)
                      (let ((_id80900_
                             (gx#stx-unwrap__% _stx80892_ _marks80895_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id80900_ '1 gx#AST::t '#f)
                         (let ((_$e80902_
                                (##unchecked-structure-ref
                                 _id80900_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e80902_ _$e80902_ _src80893_))
                         _ctx80894_
                         (##unchecked-structure-ref
                          _id80900_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx80892_)
                       (let ((_$e80905_ (gx#stx-source _stx80892_)))
                         (if _$e80905_ _$e80905_ _src80893_))
                       _ctx80894_
                       (reverse _marks80895_)))))
            (##structure
             gx#syntax-quote::t
             _stx80892_
             _src80893_
             _ctx80894_
             (reverse _marks80895_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx80911_)
        (let* ((_src80913_ '#f)
               (_ctx80915_ (gx#current-expander-context))
               (_marks80917_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80911_
           _src80913_
           _ctx80915_
           _marks80917_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx80919_ _src80920_)
        (let* ((_ctx80922_ (gx#current-expander-context))
               (_marks80924_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80919_
           _src80920_
           _ctx80922_
           _marks80924_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx80926_ _src80927_ _ctx80928_)
        (let ((_marks80930_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80926_
           _src80927_
           _ctx80928_
           _marks80930_))))
    (define gx#core-quote-syntax
      (lambda _g83758_
        (let ((_g83757_ (##length _g83758_)))
          (cond ((##fx= _g83757_ 1)
                 (apply (lambda (_stx80911_)
                          (gx#core-quote-syntax__0 _stx80911_))
                        _g83758_))
                ((##fx= _g83757_ 2)
                 (apply (lambda (_stx80919_ _src80920_)
                          (gx#core-quote-syntax__1 _stx80919_ _src80920_))
                        _g83758_))
                ((##fx= _g83757_ 3)
                 (apply (lambda (_stx80926_ _src80927_ _ctx80928_)
                          (gx#core-quote-syntax__2
                           _stx80926_
                           _src80927_
                           _ctx80928_))
                        _g83758_))
                ((##fx= _g83757_ 4)
                 (apply (lambda (_stx80932_ _src80933_ _ctx80934_ _marks80935_)
                          (gx#core-quote-syntax__%
                           _stx80932_
                           _src80933_
                           _ctx80934_
                           _marks80935_))
                        _g83758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g83758_))))))
    (define gx#core-cons
      (lambda (_hd80888_ _tl80889_)
        (cons (gx#core-quote-syntax__0 _hd80888_) _tl80889_)))
    (define gx#core-list
      (lambda (_hd80885_ . _rest80886_)
        (cons (gx#core-quote-syntax__0 _hd80885_) _rest80886_)))
    (define gx#core-cons*
      (lambda (_hd80882_ . _rest80883_)
        (apply cons* (gx#core-quote-syntax__0 _hd80882_) _rest80883_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path80856_ _rel80857_)
        (let ((_path80869_ (gx#stx-e _stx-path80856_))
              (_reldir80870_
               (let _lp80859_ ((_relsrc80861_
                                (let ((_$e80866_
                                       (gx#stx-source _stx-path80856_)))
                                  (if _$e80866_ _$e80866_ _rel80857_))))
                 (if (##structure-instance-of? _relsrc80861_ 'gerbil#AST::t)
                     (_lp80859_
                      (let ((_$e80863_ (gx#stx-source _relsrc80861_)))
                        (if _$e80863_ _$e80863_ (gx#stx-e _relsrc80861_))))
                     (if (source-location-path? _relsrc80861_)
                         (path-directory (source-location-path _relsrc80861_))
                         (if (string? _relsrc80861_)
                             (path-directory _relsrc80861_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path80869_ (path-normalize _reldir80870_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path80875_)
        (let ((_rel80877_ '#f))
          (gx#core-resolve-path__% _stx-path80875_ _rel80877_))))
    (define gx#core-resolve-path
      (lambda _g83760_
        (let ((_g83759_ (##length _g83760_)))
          (cond ((##fx= _g83759_ 1)
                 (apply (lambda (_stx-path80875_)
                          (gx#core-resolve-path__0 _stx-path80875_))
                        _g83760_))
                ((##fx= _g83759_ 2)
                 (apply (lambda (_stx-path80879_ _rel80880_)
                          (gx#core-resolve-path__% _stx-path80879_ _rel80880_))
                        _g83760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g83760_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr80812_ _ctx80813_)
        (let* ((_repr8081480821_ _repr80812_)
               (_E8081680825_
                (lambda () (error '"No clause matching" _repr8081480821_)))
               (_K8081780833_
                (lambda (_subs80828_ _phi80829_)
                  (let ((_subst80831_
                         (if (not (null? _subs80828_))
                             (list->hash-table-eq _subs80828_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst80831_
                     _ctx80813_
                     _phi80829_
                     '#f)))))
          (if (##pair? _repr8081480821_)
              (let ((_hd8081880836_ (##car _repr8081480821_))
                    (_tl8081980838_ (##cdr _repr8081480821_)))
                (let* ((_phi80841_ _hd8081880836_)
                       (_subs80843_ _tl8081980838_))
                  (_K8081780833_ _subs80843_ _phi80841_)))
              (_E8081680825_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr80848_)
        (let ((_ctx80850_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr80848_ _ctx80850_))))
    (define gx#core-deserialize-mark
      (lambda _g83762_
        (let ((_g83761_ (##length _g83762_)))
          (cond ((##fx= _g83761_ 1)
                 (apply (lambda (_repr80848_)
                          (gx#core-deserialize-mark__0 _repr80848_))
                        _g83762_))
                ((##fx= _g83761_ 2)
                 (apply (lambda (_repr80852_ _ctx80853_)
                          (gx#core-deserialize-mark__% _repr80852_ _ctx80853_))
                        _g83762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g83762_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx80809_)
        (gx#stx-rewrap _stx80809_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx80807_)
        (gx#stx-unwrap__% _stx80807_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx80777_)
        (let* ((_g8077880786_ (gx#current-expander-marks))
               (_else8078080794_ (lambda () _stx80777_))
               (_K8078280799_
                (lambda (_hd80797_) (gx#stx-apply-mark _stx80777_ _hd80797_))))
          (if (##pair? _g8077880786_)
              (let* ((_hd8078380802_ (##car _g8077880786_))
                     (_hd80805_ _hd8078380802_))
                (_K8078280799_ _hd80805_))
              (_else8078080794_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx80762_ _E80763_)
        (let ((_bind80765_ (gx#resolve-identifier__0 _stx80762_)))
          (if (##structure-direct-instance-of?
               _bind80765_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind80765_
               '4
               gx#syntax-binding::t
               '#f)
              (_E80763_ _stx80762_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx80770_)
        (let ((_E80772_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx80770_ _E80772_))))
    (define gx#syntax-local-e
      (lambda _g83764_
        (let ((_g83763_ (##length _g83764_)))
          (cond ((##fx= _g83763_ 1)
                 (apply (lambda (_stx80770_) (gx#syntax-local-e__0 _stx80770_))
                        _g83764_))
                ((##fx= _g83763_ 2)
                 (apply (lambda (_stx80774_ _E80775_)
                          (gx#syntax-local-e__% _stx80774_ _E80775_))
                        _g83764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g83764_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx80746_ _E80747_)
        (let ((_e80749_ (gx#syntax-local-e__% _stx80746_ _E80747_)))
          (if (##structure-instance-of? _e80749_ 'gx#expander::t)
              (##structure-ref _e80749_ '1 gx#expander::t '#f)
              _e80749_))))
    (define gx#syntax-local-value__0
      (lambda (_stx80754_)
        (let ((_E80756_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx80754_ _E80756_))))
    (define gx#syntax-local-value
      (lambda _g83766_
        (let ((_g83765_ (##length _g83766_)))
          (cond ((##fx= _g83765_ 1)
                 (apply (lambda (_stx80754_)
                          (gx#syntax-local-value__0 _stx80754_))
                        _g83766_))
                ((##fx= _g83765_ 2)
                 (apply (lambda (_stx80758_ _E80759_)
                          (gx#syntax-local-value__% _stx80758_ _E80759_))
                        _g83766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g83766_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx80743_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx80743_)))))
