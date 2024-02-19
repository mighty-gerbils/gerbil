(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708370114)
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
      (lambda _$args83673_
        (apply make-instance gx#expander-context::t _$args83673_)))
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
      (lambda _$args83670_
        (apply make-instance gx#root-context::t _$args83670_)))
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
      (lambda _$args83667_
        (apply make-instance gx#phi-context::t _$args83667_)))
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
      (lambda _$args83664_
        (apply make-instance gx#top-context::t _$args83664_)))
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
      (lambda _$args83661_
        (apply make-instance gx#module-context::t _$args83661_)))
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
      (lambda _$args83658_
        (apply make-instance gx#prelude-context::t _$args83658_)))
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
      (lambda _$args83655_
        (apply make-instance gx#local-context::t _$args83655_)))
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
      (lambda (_self83639_ _id83640_ _super83641_)
        (if (##fx< '3 (##structure-length _self83639_))
            (begin
              (##unchecked-structure-set!
               _self83639_
               _id83640_
               '1
               (##structure-type _self83639_)
               '#f)
              (##unchecked-structure-set!
               _self83639_
               (make-hash-table-eq)
               '2
               (##structure-type _self83639_)
               '#f)
              (##unchecked-structure-set!
               _self83639_
               _super83641_
               '3
               (##structure-type _self83639_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83639_
                   '3
                   (##vector-length _self83639_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self83646_ _id83647_)
        (let ((_super83649_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self83646_ _id83647_ _super83649_))))
    (define gx#phi-context:::init!
      (lambda _g83716_
        (let ((_g83715_ (##length _g83716_)))
          (cond ((##fx= _g83715_ 2)
                 (apply (lambda (_self83646_ _id83647_)
                          (gx#phi-context:::init!__0 _self83646_ _id83647_))
                        _g83716_))
                ((##fx= _g83715_ 3)
                 (apply (lambda (_self83651_ _id83652_ _super83653_)
                          (gx#phi-context:::init!__%
                           _self83651_
                           _id83652_
                           _super83653_))
                        _g83716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g83716_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self83503_ _super83504_)
        (if (##fx< '3 (##structure-length _self83503_))
            (begin
              (##unchecked-structure-set!
               _self83503_
               (gensym 'L)
               '1
               (##structure-type _self83503_)
               '#f)
              (##unchecked-structure-set!
               _self83503_
               (make-hash-table-eq)
               '2
               (##structure-type _self83503_)
               '#f)
              (##unchecked-structure-set!
               _self83503_
               _super83504_
               '3
               (##structure-type _self83503_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83503_
                   '3
                   (##vector-length _self83503_)))))
    (define gx#local-context:::init!__0
      (lambda (_self83509_)
        (let ((_super83511_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self83509_ _super83511_))))
    (define gx#local-context:::init!
      (lambda _g83718_
        (let ((_g83717_ (##length _g83718_)))
          (cond ((##fx= _g83717_ 1)
                 (apply (lambda (_self83509_)
                          (gx#local-context:::init!__0 _self83509_))
                        _g83718_))
                ((##fx= _g83717_ 2)
                 (apply (lambda (_self83513_ _super83514_)
                          (gx#local-context:::init!__%
                           _self83513_
                           _super83514_))
                        _g83718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g83718_))))))
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
      (lambda _$args83377_ (apply make-instance gx#binding::t _$args83377_)))
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
      (lambda _$args83374_
        (apply make-instance gx#runtime-binding::t _$args83374_)))
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
      (lambda _$args83371_
        (apply make-instance gx#local-binding::t _$args83371_)))
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
      (lambda _$args83368_
        (apply make-instance gx#top-binding::t _$args83368_)))
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
      (lambda _$args83365_
        (apply make-instance gx#module-binding::t _$args83365_)))
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
      (lambda _$args83362_
        (apply make-instance gx#extern-binding::t _$args83362_)))
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
      (lambda _$args83359_
        (apply make-instance gx#syntax-binding::t _$args83359_)))
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
      (lambda _$args83356_
        (apply make-instance gx#import-binding::t _$args83356_)))
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
      (lambda _$args83353_
        (apply make-instance gx#alias-binding::t _$args83353_)))
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
      (lambda _$args83350_ (apply make-instance gx#expander::t _$args83350_)))
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
      (lambda _$args83347_
        (apply make-instance gx#core-expander::t _$args83347_)))
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
      (lambda _$args83344_
        (apply make-instance gx#expression-form::t _$args83344_)))
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
      (lambda _$args83341_
        (apply make-instance gx#special-form::t _$args83341_)))
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
      (lambda _$args83338_
        (apply make-instance gx#definition-form::t _$args83338_)))
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
      (lambda _$args83335_
        (apply make-instance gx#top-special-form::t _$args83335_)))
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
      (lambda _$args83332_
        (apply make-instance gx#module-special-form::t _$args83332_)))
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
      (lambda _$args83329_
        (apply make-instance gx#feature-expander::t _$args83329_)))
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
      (lambda _$args83326_
        (apply make-instance gx#private-feature-expander::t _$args83326_)))
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
      (lambda _$args83323_
        (apply make-instance gx#reserved-expander::t _$args83323_)))
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
      (lambda _$args83320_
        (apply make-instance gx#macro-expander::t _$args83320_)))
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
      (lambda _$args83317_
        (apply make-instance gx#rename-macro-expander::t _$args83317_)))
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
      (lambda _$args83314_
        (apply make-instance gx#user-expander::t _$args83314_)))
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
      (lambda _$args83311_
        (apply make-instance gx#expander-mark::t _$args83311_)))
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
      (lambda (_ctx83296_ _message83297_ _stx83298_ . _details83299_)
        (let ((_ctx83309_
               (let ((_$e83301_ _ctx83296_))
                 (if _$e83301_
                     _$e83301_
                     (let ((_$e83304_ (gx#core-context-top__0)))
                       (if _$e83304_
                           ((lambda (_ctx83307_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx83307_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e83304_)
                           '#f))))))
          (raise (make-syntax-error
                  _message83297_
                  (cons _stx83298_ _details83299_)
                  _ctx83309_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx83283_ _expression?83284_)
        (gx#eval-syntax* (gx#core-expand__% _stx83283_ _expression?83284_))))
    (define gx#eval-syntax__0
      (lambda (_stx83289_)
        (let ((_expression?83291_ '#f))
          (gx#eval-syntax__% _stx83289_ _expression?83291_))))
    (define gx#eval-syntax
      (lambda _g83720_
        (let ((_g83719_ (##length _g83720_)))
          (cond ((##fx= _g83719_ 1)
                 (apply (lambda (_stx83289_) (gx#eval-syntax__0 _stx83289_))
                        _g83720_))
                ((##fx= _g83719_ 2)
                 (apply (lambda (_stx83293_ _expression?83294_)
                          (gx#eval-syntax__% _stx83293_ _expression?83294_))
                        _g83720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g83720_))))))
    (define gx#eval-syntax*
      (lambda (_stx83280_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx83280_))))
    (define gx#core-expand__%
      (lambda (_stx83267_ _expression?83268_)
        (if _expression?83268_
            (gx#core-expand-expression _stx83267_)
            (gx#core-expand-top _stx83267_))))
    (define gx#core-expand__0
      (lambda (_stx83273_)
        (let ((_expression?83275_ '#f))
          (gx#core-expand__% _stx83273_ _expression?83275_))))
    (define gx#core-expand
      (lambda _g83722_
        (let ((_g83721_ (##length _g83722_)))
          (cond ((##fx= _g83721_ 1)
                 (apply (lambda (_stx83273_) (gx#core-expand__0 _stx83273_))
                        _g83722_))
                ((##fx= _g83721_ 2)
                 (apply (lambda (_stx83277_ _expression?83278_)
                          (gx#core-expand__% _stx83277_ _expression?83278_))
                        _g83722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g83722_))))))
    (define gx#core-expand-top
      (lambda (_stx83234_)
        (let* ((_stx83236_ (gx#core-expand*__0 _stx83234_))
               (_e8323783244_ _stx83236_)
               (_E8323983248_
                (lambda () (gx#core-expand-expression _stx83236_)))
               (_E8323883262_
                (lambda ()
                  (if (gx#stx-pair? _e8323783244_)
                      (let ((_e8324083252_ (gx#syntax-e _e8323783244_)))
                        (let ((_hd8324183255_ (##car _e8324083252_))
                              (_tl8324283257_ (##cdr _e8324083252_)))
                          (let ((_form83260_ _hd8324183255_))
                            (if (gx#core-bound-identifier?__0 _form83260_)
                                _stx83236_
                                (_E8323983248_)))))
                      (_E8323983248_)))))
          (_E8323883262_))))
    (define gx#core-expand-expression
      (lambda (_stx83181_)
        (letrec ((_sealed-expression?83183_
                  (lambda (_hd83204_)
                    (if (gx#sealed-syntax? _hd83204_)
                        (let* ((_e8320583212_ _hd83204_)
                               (_E8320783216_ (lambda () '#f))
                               (_E8320683230_
                                (lambda ()
                                  (if (gx#stx-pair? _e8320583212_)
                                      (let ((_e8320883220_
                                             (gx#syntax-e _e8320583212_)))
                                        (let ((_hd8320983223_
                                               (##car _e8320883220_))
                                              (_tl8321083225_
                                               (##cdr _e8320883220_)))
                                          (let ((_form83228_ _hd8320983223_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form83228_
                                                 gx#expression-form-binding?)
                                                (_E8320783216_)))))
                                      (_E8320783216_)))))
                          (_E8320683230_))
                        '#f)))
                 (_illegal-expression83184_
                  (lambda (_hd83202_ . _g83723_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx83181_
                     _hd83202_)))
                 (_expand-e83185_
                  (lambda (_form83197_ _hd83198_)
                    (let ((_bind83200_
                           (if (##structure-instance-of?
                                _form83197_
                                'gx#binding::t)
                               _form83197_
                               (gx#resolve-identifier__0 _form83197_))))
                      (if (gx#core-expander-binding? _bind83200_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind83200_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd83198_
                            (gx#stx-source _stx83181_)))
                          (if (##structure-direct-instance-of?
                               _bind83200_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind83200_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd83198_
                                 (gx#stx-source _stx83181_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx83181_
                               _form83197_)))))))
          (let ((_hd83187_ (gx#core-expand-head _stx83181_)))
            (if (_sealed-expression?83183_ _hd83187_)
                _hd83187_
                (if (gx#stx-pair? _hd83187_)
                    (let* ((_form83189_ (gx#stx-car _hd83187_))
                           (_bind83191_
                            (if (gx#identifier? _form83189_)
                                (gx#resolve-identifier__0 _form83189_)
                                '#f)))
                      (if (or (not _bind83191_)
                              (not (gx#core-expander-binding? _bind83191_)))
                          (_expand-e83185_ '%%app (cons '%%app _hd83187_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind83191_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd83187_
                               _illegal-expression83184_)
                              (if (gx#expression-form-binding? _bind83191_)
                                  (_expand-e83185_ _bind83191_ _hd83187_)
                                  (if (gx#direct-special-form-binding?
                                       _bind83191_)
                                      (gx#core-expand-expression
                                       (_expand-e83185_ _bind83191_ _hd83187_))
                                      (_illegal-expression83184_
                                       _hd83187_))))))
                    (if (gx#core-bound-identifier?__0 _hd83187_)
                        (_illegal-expression83184_ _hd83187_)
                        (if (gx#identifier? _hd83187_)
                            (_expand-e83185_
                             '%%ref
                             (cons '%%ref (cons _hd83187_ '())))
                            (if (gx#stx-datum? _hd83187_)
                                (_expand-e83185_
                                 '%#quote
                                 (cons '%#quote (cons _hd83187_ '())))
                                (_illegal-expression83184_ _hd83187_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx83176_)
        (call-with-parameters
         (lambda ()
           (let ((_stx83179_ (gx#core-expand-expression _stx83176_)))
             (values _stx83179_ (gx#eval-syntax* _stx83179_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx83157_ _stop?83158_)
        (let _lp83160_ ((_stx83162_ _stx83157_))
          (if (_stop?83158_ _stx83162_)
              _stx83162_
              (let ((_rstx83164_ (gx#core-expand1 _stx83162_)))
                (if (eq? _stx83162_ _rstx83164_)
                    _stx83162_
                    (_lp83160_ _rstx83164_)))))))
    (define gx#core-expand*__0
      (lambda (_stx83169_)
        (let ((_stop?83171_ false))
          (gx#core-expand*__% _stx83169_ _stop?83171_))))
    (define gx#core-expand*
      (lambda _g83725_
        (let ((_g83724_ (##length _g83725_)))
          (cond ((##fx= _g83724_ 1)
                 (apply (lambda (_stx83169_) (gx#core-expand*__0 _stx83169_))
                        _g83725_))
                ((##fx= _g83724_ 2)
                 (apply (lambda (_stx83173_ _stop?83174_)
                          (gx#core-expand*__% _stx83173_ _stop?83174_))
                        _g83725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g83725_))))))
    (define gx#core-expand1
      (lambda (_stx83113_)
        (letrec ((_step83115_
                  (lambda (_hd83152_)
                    (let ((_bind83154_ (gx#resolve-identifier__0 _hd83152_)))
                      (if (##structure-instance-of?
                           _bind83154_
                           'gx#runtime-binding::t)
                          _stx83113_
                          (if (##structure-direct-instance-of?
                               _bind83154_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind83154_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx83113_)
                              (if (not _bind83154_)
                                  _stx83113_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx83113_))))))))
          (let* ((_e8311683124_ _stx83113_)
                 (_E8312283128_ (lambda () _stx83113_))
                 (_E8311883134_
                  (lambda ()
                    (let ((_hd83132_ _e8311683124_))
                      (if (gx#identifier? _hd83132_)
                          (_step83115_ _hd83132_)
                          (_E8312283128_)))))
                 (_E8311783148_
                  (lambda ()
                    (if (gx#stx-pair? _e8311683124_)
                        (let ((_e8311983138_ (gx#syntax-e _e8311683124_)))
                          (let ((_hd8312083141_ (##car _e8311983138_))
                                (_tl8312183143_ (##cdr _e8311983138_)))
                            (let ((_hd83146_ _hd8312083141_))
                              (if (gx#identifier? _hd83146_)
                                  (_step83115_ _hd83146_)
                                  (_E8311883134_)))))
                        (_E8311883134_)))))
            (_E8311783148_)))))
    (define gx#core-expand-head
      (lambda (_stx83079_)
        (letrec ((_stop?83081_
                  (lambda (_stx83083_)
                    (let* ((_e8308483091_ _stx83083_)
                           (_E8308683095_ (lambda () '#f))
                           (_E8308583109_
                            (lambda ()
                              (if (gx#stx-pair? _e8308483091_)
                                  (let ((_e8308783099_
                                         (gx#syntax-e _e8308483091_)))
                                    (let ((_hd8308883102_
                                           (##car _e8308783099_))
                                          (_tl8308983104_
                                           (##cdr _e8308783099_)))
                                      (let ((_hd83107_ _hd8308883102_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd83107_)
                                            (_E8308683095_)))))
                                  (_E8308683095_)))))
                      (_E8308583109_)))))
          (gx#core-expand*__% _stx83079_ _stop?83081_))))
    (define gx#core-expand-block__%
      (lambda (_stx82885_
               _expand-special82886_
               _begin-form82887_
               _expand-e82888_)
        (letrec ((_expand-splice82890_
                  (lambda (_hd83053_ _body83054_ _rest83055_ _r83056_)
                    (if (gx#stx-list? _body83054_)
                        (_K82894_
                         (gx#stx-foldr cons _rest83055_ _body83054_)
                         _r83056_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx82885_
                         _hd83053_))))
                 (_expand-cond-expand82891_
                  (lambda (_hd83049_ _rest83050_ _r83051_)
                    (_K82894_
                     (cons (gx#core-expand-cond-expand% _hd83049_) _rest83050_)
                     _r83051_)))
                 (_expand-include82892_
                  (lambda (_hd82998_ _rest82999_ _r83000_)
                    (let* ((_e8300183011_ _hd82998_)
                           (_E8300383015_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8300183011_)))
                           (_E8300283045_
                            (lambda ()
                              (if (gx#stx-pair? _e8300183011_)
                                  (let ((_e8300483019_
                                         (gx#syntax-e _e8300183011_)))
                                    (let ((_hd8300583022_
                                           (##car _e8300483019_))
                                          (_tl8300683024_
                                           (##cdr _e8300483019_)))
                                      (if (gx#stx-pair? _tl8300683024_)
                                          (let ((_e8300783027_
                                                 (gx#syntax-e _tl8300683024_)))
                                            (let ((_hd8300883030_
                                                   (##car _e8300783027_))
                                                  (_tl8300983032_
                                                   (##cdr _e8300783027_)))
                                              (let ((_path83035_
                                                     _hd8300883030_))
                                                (if (gx#stx-null?
                                                     _tl8300983032_)
                                                    (if (gx#stx-string?
                                                         _path83035_)
                                                        (let* ((_rpath83037_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path83035_
                         (gx#stx-source _hd82998_)))
                       (_block83039_
                        (gx#core-expand-include%__% _hd82998_ _rpath83037_))
                       (_rbody83042_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block83039_
                            _expand-special82886_
                            '#f
                            _expand-e82888_))
                         gx#current-expander-path
                         (cons _rpath83037_ (gx#current-expander-path)))))
                  (_K82894_ _rest82999_ (foldr1 cons _r83000_ _rbody83042_)))
                (_E8300383015_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8300383015_)))))
                                          (_E8300383015_))))
                                  (_E8300383015_)))))
                      (_E8300283045_))))
                 (_expand-expression82893_
                  (lambda (_hd82994_ _rest82995_ _r82996_)
                    (_K82894_
                     _rest82995_
                     (cons (_expand-e82888_ _hd82994_) _r82996_))))
                 (_K82894_
                  (lambda (_rest82924_ _r82925_)
                    (let* ((_e8292682933_ _rest82924_)
                           (_E8292882937_
                            (lambda ()
                              (if _begin-form82887_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form82887_
                                    (reverse _r82925_))
                                   (gx#stx-source _stx82885_))
                                  _r82925_)))
                           (_E8292782990_
                            (lambda ()
                              (if (gx#stx-pair? _e8292682933_)
                                  (let ((_e8292982941_
                                         (gx#syntax-e _e8292682933_)))
                                    (let ((_hd8293082944_
                                           (##car _e8292982941_))
                                          (_tl8293182946_
                                           (##cdr _e8292982941_)))
                                      (let* ((_hd82949_ _hd8293082944_)
                                             (_rest82951_ _tl8293182946_))
                                        (if '#t
                                            (let* ((_hd82953_
                                                    (gx#core-expand-head
                                                     _hd82949_))
                                                   (_e8295482961_ _hd82953_)
                                                   (_E8295682965_
                                                    (lambda ()
                                                      (_expand-expression82893_
                                                       _hd82953_
                                                       _rest82951_
                                                       _r82925_)))
                                                   (_E8295582986_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8295482961_)
                                                          (let ((_e8295782969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8295482961_)))
                    (let ((_hd8295882972_ (##car _e8295782969_))
                          (_tl8295982974_ (##cdr _e8295782969_)))
                      (let* ((_form82977_ _hd8295882972_)
                             (_body82979_ _tl8295982974_))
                        (if '#t
                            (let ((_bind82981_
                                   (if (gx#identifier? _form82977_)
                                       (gx#resolve-identifier__0 _form82977_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind82981_)
                                  (let ((_$e82983_
                                         (##unchecked-structure-ref
                                          _bind82981_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e82983_)
                                        (_expand-splice82890_
                                         _hd82953_
                                         _body82979_
                                         _rest82951_
                                         _r82925_)
                                        (if (eq? '%#cond-expand _$e82983_)
                                            (_expand-cond-expand82891_
                                             _hd82953_
                                             _rest82951_
                                             _r82925_)
                                            (if (eq? '%#include _$e82983_)
                                                (_expand-include82892_
                                                 _hd82953_
                                                 _rest82951_
                                                 _r82925_)
                                                (_expand-special82886_
                                                 _hd82953_
                                                 _K82894_
                                                 _rest82951_
                                                 _r82925_)))))
                                  (_expand-expression82893_
                                   _hd82953_
                                   _rest82951_
                                   _r82925_)))
                            (_E8295682965_)))))
                  (_E8295682965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8295582986_))
                                            (_E8292882937_)))))
                                  (_E8292882937_)))))
                      (_E8292782990_)))))
          (let* ((_e8289582902_ _stx82885_)
                 (_E8289782906_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8289582902_)))
                 (_E8289682920_
                  (lambda ()
                    (if (gx#stx-pair? _e8289582902_)
                        (let ((_e8289882910_ (gx#syntax-e _e8289582902_)))
                          (let ((_hd8289982913_ (##car _e8289882910_))
                                (_tl8290082915_ (##cdr _e8289882910_)))
                            (let ((_body82918_ _tl8290082915_))
                              (if (gx#stx-list? _body82918_)
                                  (_K82894_ _body82918_ '())
                                  (_E8289782906_)))))
                        (_E8289782906_)))))
            (_E8289682920_)))))
    (define gx#core-expand-block__0
      (lambda (_stx83061_ _expand-special83062_)
        (let* ((_begin-form83064_ '%#begin)
               (_expand-e83066_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83061_
           _expand-special83062_
           _begin-form83064_
           _expand-e83066_))))
    (define gx#core-expand-block__1
      (lambda (_stx83068_ _expand-special83069_ _begin-form83070_)
        (let ((_expand-e83072_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83068_
           _expand-special83069_
           _begin-form83070_
           _expand-e83072_))))
    (define gx#core-expand-block
      (lambda _g83727_
        (let ((_g83726_ (##length _g83727_)))
          (cond ((##fx= _g83726_ 2)
                 (apply (lambda (_stx83061_ _expand-special83062_)
                          (gx#core-expand-block__0
                           _stx83061_
                           _expand-special83062_))
                        _g83727_))
                ((##fx= _g83726_ 3)
                 (apply (lambda (_stx83068_
                                 _expand-special83069_
                                 _begin-form83070_)
                          (gx#core-expand-block__1
                           _stx83068_
                           _expand-special83069_
                           _begin-form83070_))
                        _g83727_))
                ((##fx= _g83726_ 4)
                 (apply (lambda (_stx83074_
                                 _expand-special83075_
                                 _begin-form83076_
                                 _expand-e83077_)
                          (gx#core-expand-block__%
                           _stx83074_
                           _expand-special83075_
                           _begin-form83076_
                           _expand-e83077_))
                        _g83727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g83727_))))))
    (define gx#core-expand-block*
      (lambda (_stx82833_ _expand-special82834_)
        (let* ((_g8283582846_
                (gx#core-expand-block__1 _stx82833_ _expand-special82834_ '#f))
               (_E8283982850_
                (lambda () (error '"No clause matching" _g8283582846_))))
          (let ((_K8284482881_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx82833_)))
                (_K8284182867_ (lambda (_expr82865_) _expr82865_))
                (_K8284082856_
                 (lambda (_body82854_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body82854_))
                    (gx#stx-source _stx82833_)))))
            (let ((_try-match8283782877_
                   (lambda ()
                     (if (##pair? _g8283582846_)
                         (let ((_tl8284382872_ (##cdr _g8283582846_))
                               (_hd8284282870_ (##car _g8283582846_)))
                           (if (##null? _tl8284382872_)
                               (let ((_expr82875_ _hd8284282870_))
                                 (_K8284182867_ _expr82875_))
                               (let ((_body82859_ _g8283582846_))
                                 (_K8284082856_ _body82859_))))
                         (let ((_body82859_ _g8283582846_))
                           (_K8284082856_ _body82859_))))))
              (if (##null? _g8283582846_)
                  (_K8284482881_)
                  (_try-match8283782877_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx82661_)
        (letrec ((_satisfied?82663_
                  (lambda (_condition82761_)
                    (let* ((_e8276282777_ _condition82761_)
                           (_E8277282781_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8276282777_)))
                           (_E8276582800_
                            (lambda ()
                              (if (gx#stx-pair? _e8276282777_)
                                  (let ((_e8277382785_
                                         (gx#syntax-e _e8276282777_)))
                                    (let ((_hd8277482788_
                                           (##car _e8277382785_))
                                          (_tl8277582790_
                                           (##cdr _e8277382785_)))
                                      (let* ((_combinator82793_ _hd8277482788_)
                                             (_body82795_ _tl8277582790_))
                                        (if (gx#stx-list? _body82795_)
                                            (let ((_$e82797_
                                                   (gx#stx-e
                                                    _combinator82793_)))
                                              (if (eq? 'not _$e82797_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?82663_
                                                        _body82795_))
                                                  (if (eq? 'and _$e82797_)
                                                      (gx#stx-andmap
                                                       _satisfied?82663_
                                                       _body82795_)
                                                      (if (eq? 'or _$e82797_)
                                                          (gx#stx-ormap
                                                           _satisfied?82663_
                                                           _body82795_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e82797_)
                      (gx#stx-andmap gx#core-resolve-identifier _body82795_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx82661_
                       _combinator82793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8277282781_)))))
                                  (_E8277282781_))))
                           (_E8276482823_
                            (lambda ()
                              (if (gx#stx-pair? _e8276282777_)
                                  (let ((_e8276682804_
                                         (gx#syntax-e _e8276282777_)))
                                    (let ((_hd8276782807_
                                           (##car _e8276682804_))
                                          (_tl8276882809_
                                           (##cdr _e8276682804_)))
                                      (if (and (gx#identifier? _hd8276782807_)
                                               (gx#core-identifier=?
                                                _hd8276782807_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8276882809_)
                                              (let ((_e8276982812_
                                                     (gx#syntax-e
                                                      _tl8276882809_)))
                                                (let ((_hd8277082815_
                                                       (##car _e8276982812_))
                                                      (_tl8277182817_
                                                       (##cdr _e8276982812_)))
                                                  (let ((_expr82820_
                                                         _hd8277082815_))
                                                    (if (gx#stx-null?
                                                         _tl8277182817_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr82820_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8276582800_))
                (_E8276582800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8276582800_))
                                          (_E8276582800_))))
                                  (_E8276582800_))))
                           (_E8276382829_
                            (lambda ()
                              (let ((_id82827_ _e8276282777_))
                                (if (gx#identifier? _id82827_)
                                    (gx#core-bound-identifier?__%
                                     _id82827_
                                     gx#feature-binding?)
                                    (_E8276482823_))))))
                      (_E8276382829_))))
                 (_loop82664_
                  (lambda (_rest82694_)
                    (let* ((_e8269582703_ _rest82694_)
                           (_E8270182707_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8269582703_)))
                           (_E8269782711_
                            (lambda ()
                              (if (gx#stx-null? _e8269582703_)
                                  (if '#t '() (_E8270182707_))
                                  (_E8270182707_))))
                           (_E8269682757_
                            (lambda ()
                              (if (gx#stx-pair? _e8269582703_)
                                  (let ((_e8269882715_
                                         (gx#syntax-e _e8269582703_)))
                                    (let ((_hd8269982718_
                                           (##car _e8269882715_))
                                          (_tl8270082720_
                                           (##cdr _e8269882715_)))
                                      (let* ((_hd82723_ _hd8269982718_)
                                             (_rest82725_ _tl8270082720_))
                                        (if '#t
                                            (let* ((_e8272682733_ _hd82723_)
                                                   (_E8272882737_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8272682733_)))
                                                   (_E8272782753_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8272682733_)
                                                          (let ((_e8272982741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8272682733_)))
                    (let ((_hd8273082744_ (##car _e8272982741_))
                          (_tl8273182746_ (##cdr _e8272982741_)))
                      (let* ((_condition82749_ _hd8273082744_)
                             (_body82751_ _tl8273182746_))
                        (if '#t
                            (if (gx#stx-eq? _condition82749_ 'else)
                                (if (gx#stx-null? _rest82725_)
                                    _body82751_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx82661_
                                     _hd82723_))
                                (if (_satisfied?82663_ _condition82749_)
                                    _body82751_
                                    (_loop82664_ _rest82725_)))
                            (_E8272882737_)))))
                  (_E8272882737_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8272782753_))
                                            (_E8269782711_)))))
                                  (_E8269782711_)))))
                      (_E8269682757_)))))
          (let* ((_e8266582672_ _stx82661_)
                 (_E8266782676_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8266582672_)))
                 (_E8266682690_
                  (lambda ()
                    (if (gx#stx-pair? _e8266582672_)
                        (let ((_e8266882680_ (gx#syntax-e _e8266582672_)))
                          (let ((_hd8266982683_ (##car _e8266882680_))
                                (_tl8267082685_ (##cdr _e8266882680_)))
                            (let ((_clauses82688_ _tl8267082685_))
                              (if (gx#stx-list? _clauses82688_)
                                  (gx#core-cons
                                   'begin
                                   (_loop82664_ _clauses82688_))
                                  (_E8266782676_)))))
                        (_E8266782676_)))))
            (_E8266682690_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx82604_ _rpath82605_)
        (let* ((_e8260682616_ _stx82604_)
               (_E8260882620_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8260682616_)))
               (_E8260782647_
                (lambda ()
                  (if (gx#stx-pair? _e8260682616_)
                      (let ((_e8260982624_ (gx#syntax-e _e8260682616_)))
                        (let ((_hd8261082627_ (##car _e8260982624_))
                              (_tl8261182629_ (##cdr _e8260982624_)))
                          (if (gx#stx-pair? _tl8261182629_)
                              (let ((_e8261282632_
                                     (gx#syntax-e _tl8261182629_)))
                                (let ((_hd8261382635_ (##car _e8261282632_))
                                      (_tl8261482637_ (##cdr _e8261282632_)))
                                  (let ((_path82640_ _hd8261382635_))
                                    (if (gx#stx-null? _tl8261482637_)
                                        (if (gx#stx-string? _path82640_)
                                            (let ((_rpath82645_
                                                   (let ((_$e82642_
                                                          _rpath82605_))
                                                     (if _$e82642_
                                                         _$e82642_
                                                         (gx#core-resolve-path__%
                                                          _path82640_
                                                          (gx#stx-source
                                                           _stx82604_))))))
                                              (if (member _rpath82645_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx82604_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath82645_))
                                                    (gx#stx-source
                                                     _stx82604_)))))
                                            (_E8260882620_))
                                        (_E8260882620_)))))
                              (_E8260882620_))))
                      (_E8260882620_)))))
          (_E8260782647_))))
    (define gx#core-expand-include%__0
      (lambda (_stx82654_)
        (let ((_rpath82656_ '#f))
          (gx#core-expand-include%__% _stx82654_ _rpath82656_))))
    (define gx#core-expand-include%
      (lambda _g83729_
        (let ((_g83728_ (##length _g83729_)))
          (cond ((##fx= _g83728_ 1)
                 (apply (lambda (_stx82654_)
                          (gx#core-expand-include%__0 _stx82654_))
                        _g83729_))
                ((##fx= _g83728_ 2)
                 (apply (lambda (_stx82658_ _rpath82659_)
                          (gx#core-expand-include%__% _stx82658_ _rpath82659_))
                        _g83729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g83729_))))))
    (define gx#core-apply-expander__%
      (lambda (_K82573_ _stx82574_ _method82575_)
        (if (procedure? _K82573_)
            (let ((_$e82577_ (gx#stx-source _stx82574_)))
              (if _$e82577_
                  ((lambda (_g8257982581_)
                     (gx#stx-wrap-source (_K82573_ _stx82574_) _g8257982581_))
                   _$e82577_)
                  (_K82573_ _stx82574_)))
            (let ((_$e82584_ (bound-method-ref _K82573_ _method82575_)))
              (if _$e82584_
                  ((lambda (_g8258682588_)
                     (gx#core-apply-expander__%
                      _g8258682588_
                      _stx82574_
                      _method82575_))
                   _$e82584_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx82574_
                   _method82575_))))))
    (define gx#core-apply-expander__0
      (lambda (_K82594_ _stx82595_)
        (let ((_method82597_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K82594_ _stx82595_ _method82597_))))
    (define gx#core-apply-expander
      (lambda _g83731_
        (let ((_g83730_ (##length _g83731_)))
          (cond ((##fx= _g83730_ 2)
                 (apply (lambda (_K82594_ _stx82595_)
                          (gx#core-apply-expander__0 _K82594_ _stx82595_))
                        _g83731_))
                ((##fx= _g83730_ 3)
                 (apply (lambda (_K82599_ _stx82600_ _method82601_)
                          (gx#core-apply-expander__%
                           _K82599_
                           _stx82600_
                           _method82601_))
                        _g83731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g83731_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self82569_ _stx82570_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx82570_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self82422_ _stx82423_)
        (let* ((_self8242482430_ _self82422_)
               (_E8242682434_
                (lambda () (error '"No clause matching" _self8242482430_)))
               (_K8242782439_
                (lambda (_K82437_)
                  (gx#core-apply-expander__0 _K82437_ _stx82423_))))
          (if (##structure-instance-of? _self8242482430_ 'gx#core-macro::t)
              (let* ((_e8242882442_
                      (##unchecked-structure-ref
                       _self8242482430_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82445_ _e8242882442_))
                (_K8242782439_ _K82445_))
              (_E8242682434_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self82275_ _stx82276_)
        (if (gx#sealed-syntax? _stx82276_)
            _stx82276_
            (let* ((_self8227782283_ _self82275_)
                   (_E8227982287_
                    (lambda () (error '"No clause matching" _self8227782283_)))
                   (_K8228082292_
                    (lambda (_K82290_)
                      (gx#core-apply-expander__0 _K82290_ _stx82276_))))
              (if (##structure-instance-of?
                   _self8227782283_
                   'gx#core-expander::t)
                  (let* ((_e8228182295_
                          (##unchecked-structure-ref
                           _self8227782283_
                           '1
                           gx#expander::t
                           '#f))
                         (_K82298_ _e8228182295_))
                    (_K8228082292_ _K82298_))
                  (_E8227982287_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self82137_ _stx82138_ _top?82139_)
        (if (_top?82139_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self82137_ _stx82138_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx82138_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self82144_ _stx82145_)
        (let ((_top?82147_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self82144_
           _stx82145_
           _top?82147_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g83733_
        (let ((_g83732_ (##length _g83733_)))
          (cond ((##fx= _g83732_ 2)
                 (apply (lambda (_self82144_ _stx82145_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self82144_
                           _stx82145_))
                        _g83733_))
                ((##fx= _g83732_ 3)
                 (apply (lambda (_self82149_ _stx82150_ _top?82151_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self82149_
                           _stx82150_
                           _top?82151_))
                        _g83733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g83733_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self82011_ _stx82012_)
        (gx#top-special-form::apply-macro-expander__%
         _self82011_
         _stx82012_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self81836_ _stx81837_)
        (let* ((_self8183881844_ _self81836_)
               (_E8184081848_
                (lambda () (error '"No clause matching" _self8183881844_)))
               (_K8184181881_
                (lambda (_id81851_)
                  (let* ((_e8185281859_ _stx81837_)
                         (_E8185481863_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8185281859_)))
                         (_E8185381877_
                          (lambda ()
                            (if (gx#stx-pair? _e8185281859_)
                                (let ((_e8185581867_
                                       (gx#syntax-e _e8185281859_)))
                                  (let ((_hd8185681870_ (##car _e8185581867_))
                                        (_tl8185781872_ (##cdr _e8185581867_)))
                                    (let ((_body81875_ _tl8185781872_))
                                      (if '#t
                                          (gx#core-cons _id81851_ _body81875_)
                                          (_E8185481863_)))))
                                (_E8185481863_)))))
                    (_E8185381877_)))))
          (if (##structure-instance-of?
               _self8183881844_
               'gx#rename-macro-expander::t)
              (let* ((_e8184281884_
                      (##unchecked-structure-ref
                       _self8183881844_
                       '1
                       gx#expander::t
                       '#f))
                     (_id81887_ _e8184281884_))
                (_K8184181881_ _id81887_))
              (_E8184081848_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self81662_ _stx81663_ _method81664_)
        (let* ((_self8166581673_ _self81662_)
               (_E8166781677_
                (lambda () (error '"No clause matching" _self8166581673_)))
               (_K8166881684_
                (lambda (_phi81680_ _ctx81681_ _K81682_)
                  (gx#core-apply-user-macro
                   _K81682_
                   _stx81663_
                   _ctx81681_
                   _phi81680_
                   _method81664_))))
          (if (##structure-instance-of? _self8166581673_ 'gx#macro-expander::t)
              (let* ((_e8166981687_
                      (##unchecked-structure-ref
                       _self8166581673_
                       '1
                       gx#expander::t
                       '#f))
                     (_K81690_ _e8166981687_)
                     (_e8167081692_
                      (##unchecked-structure-ref
                       _self8166581673_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx81695_ _e8167081692_)
                     (_e8167181697_
                      (##unchecked-structure-ref
                       _self8166581673_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi81700_ _e8167181697_))
                (_K8166881684_ _phi81700_ _ctx81695_ _K81690_))
              (_E8166781677_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self81705_ _stx81706_)
        (let ((_method81708_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self81705_
           _stx81706_
           _method81708_))))
    (define gx#core-apply-user-expander
      (lambda _g83735_
        (let ((_g83734_ (##length _g83735_)))
          (cond ((##fx= _g83734_ 2)
                 (apply (lambda (_self81705_ _stx81706_)
                          (gx#core-apply-user-expander__0
                           _self81705_
                           _stx81706_))
                        _g83735_))
                ((##fx= _g83734_ 3)
                 (apply (lambda (_self81710_ _stx81711_ _method81712_)
                          (gx#core-apply-user-expander__%
                           _self81710_
                           _stx81711_
                           _method81712_))
                        _g83735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g83735_))))))
    (define gx#core-apply-user-macro
      (lambda (_K81652_ _stx81653_ _ctx81654_ _phi81655_ _method81656_)
        (let ((_mark81658_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx81654_
                _phi81655_
                _stx81653_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K81652_
               (gx#stx-apply-mark _stx81653_ _mark81658_)
               _method81656_)
              _mark81658_))
           gx#current-expander-marks
           (cons _mark81658_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx81504_ _phi81505_ _ctx81506_)
        (let _lp81508_ ((_bind81510_
                         (gx#core-resolve-identifier__%
                          _stx81504_
                          _phi81505_
                          _ctx81506_)))
          (if (##structure-direct-instance-of?
               _bind81510_
               'gx#import-binding::t)
              (_lp81508_
               (##unchecked-structure-ref
                _bind81510_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind81510_
                   'gx#alias-binding::t)
                  (_lp81508_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind81510_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi81505_
                    _ctx81506_))
                  _bind81510_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx81515_)
        (let* ((_phi81517_ (gx#current-expander-phi))
               (_ctx81519_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81515_ _phi81517_ _ctx81519_))))
    (define gx#resolve-identifier__1
      (lambda (_stx81521_ _phi81522_)
        (let ((_ctx81524_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81521_ _phi81522_ _ctx81524_))))
    (define gx#resolve-identifier
      (lambda _g83737_
        (let ((_g83736_ (##length _g83737_)))
          (cond ((##fx= _g83736_ 1)
                 (apply (lambda (_stx81515_)
                          (gx#resolve-identifier__0 _stx81515_))
                        _g83737_))
                ((##fx= _g83736_ 2)
                 (apply (lambda (_stx81521_ _phi81522_)
                          (gx#resolve-identifier__1 _stx81521_ _phi81522_))
                        _g83737_))
                ((##fx= _g83736_ 3)
                 (apply (lambda (_stx81526_ _phi81527_ _ctx81528_)
                          (gx#resolve-identifier__%
                           _stx81526_
                           _phi81527_
                           _ctx81528_))
                        _g83737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g83737_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx81462_ _val81463_ _rebind?81464_ _phi81465_ _ctx81466_)
        (let ((_rebind?81468_
               (if (not _rebind?81464_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?81464_) _rebind?81464_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx81462_)
           _val81463_
           _rebind?81468_
           _phi81465_
           _ctx81466_))))
    (define gx#bind-identifier!__0
      (lambda (_stx81473_ _val81474_)
        (let* ((_rebind?81476_ '#f)
               (_phi81478_ (gx#current-expander-phi))
               (_ctx81480_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81473_
           _val81474_
           _rebind?81476_
           _phi81478_
           _ctx81480_))))
    (define gx#bind-identifier!__1
      (lambda (_stx81482_ _val81483_ _rebind?81484_)
        (let* ((_phi81486_ (gx#current-expander-phi))
               (_ctx81488_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81482_
           _val81483_
           _rebind?81484_
           _phi81486_
           _ctx81488_))))
    (define gx#bind-identifier!__2
      (lambda (_stx81490_ _val81491_ _rebind?81492_ _phi81493_)
        (let ((_ctx81495_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81490_
           _val81491_
           _rebind?81492_
           _phi81493_
           _ctx81495_))))
    (define gx#bind-identifier!
      (lambda _g83739_
        (let ((_g83738_ (##length _g83739_)))
          (cond ((##fx= _g83738_ 2)
                 (apply (lambda (_stx81473_ _val81474_)
                          (gx#bind-identifier!__0 _stx81473_ _val81474_))
                        _g83739_))
                ((##fx= _g83738_ 3)
                 (apply (lambda (_stx81482_ _val81483_ _rebind?81484_)
                          (gx#bind-identifier!__1
                           _stx81482_
                           _val81483_
                           _rebind?81484_))
                        _g83739_))
                ((##fx= _g83738_ 4)
                 (apply (lambda (_stx81490_
                                 _val81491_
                                 _rebind?81492_
                                 _phi81493_)
                          (gx#bind-identifier!__2
                           _stx81490_
                           _val81491_
                           _rebind?81492_
                           _phi81493_))
                        _g83739_))
                ((##fx= _g83738_ 5)
                 (apply (lambda (_stx81497_
                                 _val81498_
                                 _rebind?81499_
                                 _phi81500_
                                 _ctx81501_)
                          (gx#bind-identifier!__%
                           _stx81497_
                           _val81498_
                           _rebind?81499_
                           _phi81500_
                           _ctx81501_))
                        _g83739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g83739_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx81434_ _phi81435_ _ctx81436_)
        (let _lp81438_ ((_e81440_ _stx81434_)
                        (_marks81441_ (gx#current-expander-marks)))
          (if (symbol? _e81440_)
              (gx#core-resolve-binding
               _e81440_
               _phi81435_
               _phi81435_
               _ctx81436_
               (reverse _marks81441_))
              (if (gx#identifier-quote? _e81440_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e81440_ '1 gx#AST::t '#f)
                   _phi81435_
                   '0
                   (##unchecked-structure-ref
                    _e81440_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e81440_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e81440_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e81440_ '1 gx#AST::t '#f)
                       _phi81435_
                       _phi81435_
                       _ctx81436_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81440_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81441_))
                      (if (##structure-direct-instance-of?
                           _e81440_
                           'gx#syntax-wrap::t)
                          (_lp81438_
                           (##unchecked-structure-ref
                            _e81440_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e81440_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks81441_))
                          (if (##structure-instance-of?
                               _e81440_
                               'gerbil#AST::t)
                              (_lp81438_
                               (##unchecked-structure-ref
                                _e81440_
                                '1
                                gx#AST::t
                                '#f)
                               _marks81441_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx81434_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx81446_)
        (let* ((_phi81448_ (gx#current-expander-phi))
               (_ctx81450_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81446_ _phi81448_ _ctx81450_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx81452_ _phi81453_)
        (let ((_ctx81455_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81452_ _phi81453_ _ctx81455_))))
    (define gx#core-resolve-identifier
      (lambda _g83741_
        (let ((_g83740_ (##length _g83741_)))
          (cond ((##fx= _g83740_ 1)
                 (apply (lambda (_stx81446_)
                          (gx#core-resolve-identifier__0 _stx81446_))
                        _g83741_))
                ((##fx= _g83740_ 2)
                 (apply (lambda (_stx81452_ _phi81453_)
                          (gx#core-resolve-identifier__1
                           _stx81452_
                           _phi81453_))
                        _g83741_))
                ((##fx= _g83740_ 3)
                 (apply (lambda (_stx81457_ _phi81458_ _ctx81459_)
                          (gx#core-resolve-identifier__%
                           _stx81457_
                           _phi81458_
                           _ctx81459_))
                        _g83741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g83741_))))))
    (define gx#core-resolve-binding
      (lambda (_id81347_ _phi81348_ _src-phi81349_ _ctx81350_ _marks81351_)
        (letrec ((_resolve81353_
                  (lambda (_ctx81421_ _src-phi81422_ _key81423_)
                    (let _lp81425_ ((_ctx81427_
                                     (gx#core-context-shift
                                      _ctx81421_
                                      _phi81348_))
                                    (_dphi81428_
                                     (fx- _phi81348_ _src-phi81422_)))
                      (let ((_$e81430_
                             (gx#core-context-resolve _ctx81427_ _key81423_)))
                        (if _$e81430_
                            (values _$e81430_)
                            (if (fxzero? _dphi81428_)
                                '#f
                                (if (fxpositive? _dphi81428_)
                                    (_lp81425_
                                     (gx#core-context-shift _ctx81427_ '-1)
                                     (fx- _dphi81428_ '1))
                                    (_lp81425_
                                     (gx#core-context-shift _ctx81427_ '1)
                                     (fx+ _dphi81428_ '1))))))))))
          (let _lp81355_ ((_ctx81357_ _ctx81350_)
                          (_src-phi81358_ _src-phi81349_)
                          (_rest81359_ _marks81351_))
            (let* ((_rest8136081368_ _rest81359_)
                   (_else8136281376_
                    (lambda ()
                      (_resolve81353_ _ctx81357_ _src-phi81358_ _id81347_)))
                   (_K8136481409_
                    (lambda (_rest81379_ _hd81380_)
                      (let* ((_hd8138181387_ _hd81380_)
                             (_E8138381391_
                              (lambda ()
                                (error '"No clause matching" _hd8138181387_)))
                             (_K8138481401_
                              (lambda (_subst81394_)
                                (let ((_$e81398_
                                       (let ((_key81396_
                                              (if _subst81394_
                                                  (hash-get
                                                   _subst81394_
                                                   _id81347_)
                                                  '#f)))
                                         (if _key81396_
                                             (_resolve81353_
                                              _ctx81357_
                                              _src-phi81358_
                                              _key81396_)
                                             '#f))))
                                  (if _$e81398_
                                      _$e81398_
                                      (_lp81355_
                                       (##unchecked-structure-ref
                                        _hd81380_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd81380_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest81379_))))))
                        (if (##structure-instance-of?
                             _hd8138181387_
                             'gx#expander-mark::t)
                            (let* ((_e8138581404_
                                    (##unchecked-structure-ref
                                     _hd8138181387_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst81407_ _e8138581404_))
                              (_K8138481401_ _subst81407_))
                            (_E8138381391_))))))
              (if (##pair? _rest8136081368_)
                  (let ((_hd8136581412_ (##car _rest8136081368_))
                        (_tl8136681414_ (##cdr _rest8136081368_)))
                    (let* ((_hd81417_ _hd8136581412_)
                           (_rest81419_ _tl8136681414_))
                      (_K8136481409_ _rest81419_ _hd81417_)))
                  (_else8136281376_)))))))
    (define gx#core-bind!__%
      (lambda (_key81223_ _val81224_ _rebind?81225_ _phi81226_ _ctx81227_)
        (letrec ((_update-binding81229_
                  (lambda (_xval81300_)
                    (if (or (_rebind?81225_ _ctx81227_ _xval81300_ _val81224_)
                            (and (##structure-direct-instance-of?
                                  _xval81300_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval81300_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val81224_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val81224_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval81300_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val81224_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val81224_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval81300_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val81224_
                        (if (and (##structure-direct-instance-of?
                                  _val81224_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val81224_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval81300_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val81224_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval81300_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval81300_
                            (if (and (##structure-direct-instance-of?
                                      _val81224_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval81300_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key81223_
                                 (cons (##unchecked-structure-ref
                                        _val81224_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val81224_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval81300_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval81300_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval81300_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval81300_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key81223_
                                 _val81224_
                                 _xval81300_))))))
                 (_gensubst81230_
                  (lambda (_subst81295_ _id81296_)
                    (let ((_eid81298_
                           (gensym (if (uninterned-symbol? _id81296_)
                                       '%
                                       _id81296_))))
                      (hash-put! _subst81295_ _id81296_ _eid81298_)
                      _eid81298_)))
                 (_subst!81231_
                  (lambda (_key81233_)
                    (let* ((_key8123481242_ _key81233_)
                           (_else8123681250_ (lambda () _key81233_))
                           (_K8123881283_
                            (lambda (_mark81253_ _id81254_)
                              (let* ((_mark8125581261_ _mark81253_)
                                     (_E8125781265_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8125581261_)))
                                     (_K8125881275_
                                      (lambda (_subst81268_)
                                        (if (not _subst81268_)
                                            (let ((_subst81270_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark81253_
                                               _subst81270_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst81230_
                                               _subst81270_
                                               _id81254_))
                                            (let ((_$e81272_
                                                   (hash-get
                                                    _subst81268_
                                                    _id81254_)))
                                              (if _$e81272_
                                                  (values _$e81272_)
                                                  (_gensubst81230_
                                                   _subst81268_
                                                   _id81254_)))))))
                                (if (##structure-instance-of?
                                     _mark8125581261_
                                     'gx#expander-mark::t)
                                    (let* ((_e8125981278_
                                            (##unchecked-structure-ref
                                             _mark8125581261_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst81281_ _e8125981278_))
                                      (_K8125881275_ _subst81281_))
                                    (_E8125781265_))))))
                      (if (##pair? _key8123481242_)
                          (let ((_hd8123981286_ (##car _key8123481242_))
                                (_tl8124081288_ (##cdr _key8123481242_)))
                            (let* ((_id81291_ _hd8123981286_)
                                   (_mark81293_ _tl8124081288_))
                              (_K8123881283_ _mark81293_ _id81291_)))
                          (_else8123681250_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx81227_ _phi81226_)
           (_subst!81231_ _key81223_)
           _val81224_
           _update-binding81229_))))
    (define gx#core-bind!__0
      (lambda (_key81317_ _val81318_)
        (let* ((_rebind?81320_ false)
               (_phi81322_ (gx#current-expander-phi))
               (_ctx81324_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81317_
           _val81318_
           _rebind?81320_
           _phi81322_
           _ctx81324_))))
    (define gx#core-bind!__1
      (lambda (_key81326_ _val81327_ _rebind?81328_)
        (let* ((_phi81330_ (gx#current-expander-phi))
               (_ctx81332_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81326_
           _val81327_
           _rebind?81328_
           _phi81330_
           _ctx81332_))))
    (define gx#core-bind!__2
      (lambda (_key81334_ _val81335_ _rebind?81336_ _phi81337_)
        (let ((_ctx81339_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81334_
           _val81335_
           _rebind?81336_
           _phi81337_
           _ctx81339_))))
    (define gx#core-bind!
      (lambda _g83743_
        (let ((_g83742_ (##length _g83743_)))
          (cond ((##fx= _g83742_ 2)
                 (apply (lambda (_key81317_ _val81318_)
                          (gx#core-bind!__0 _key81317_ _val81318_))
                        _g83743_))
                ((##fx= _g83742_ 3)
                 (apply (lambda (_key81326_ _val81327_ _rebind?81328_)
                          (gx#core-bind!__1
                           _key81326_
                           _val81327_
                           _rebind?81328_))
                        _g83743_))
                ((##fx= _g83742_ 4)
                 (apply (lambda (_key81334_
                                 _val81335_
                                 _rebind?81336_
                                 _phi81337_)
                          (gx#core-bind!__2
                           _key81334_
                           _val81335_
                           _rebind?81336_
                           _phi81337_))
                        _g83743_))
                ((##fx= _g83742_ 5)
                 (apply (lambda (_key81341_
                                 _val81342_
                                 _rebind?81343_
                                 _phi81344_
                                 _ctx81345_)
                          (gx#core-bind!__%
                           _key81341_
                           _val81342_
                           _rebind?81343_
                           _phi81344_
                           _ctx81345_))
                        _g83743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g83743_))))))
    (define gx#core-identifier-key
      (lambda (_stx81157_)
        (if (symbol? _stx81157_)
            (let* ((_g8115881166_ (gx#current-expander-marks))
                   (_else8116081174_ (lambda () _stx81157_))
                   (_K8116281179_
                    (lambda (_hd81177_) (cons _stx81157_ _hd81177_))))
              (if (##pair? _g8115881166_)
                  (let* ((_hd8116381182_ (##car _g8115881166_))
                         (_hd81185_ _hd8116381182_))
                    (_K8116281179_ _hd81185_))
                  (_else8116081174_)))
            (if (gx#identifier? _stx81157_)
                (let* ((_id81187_ (gx#syntax-local-unwrap _stx81157_))
                       (_eid81189_ (gx#stx-e _id81187_))
                       (_marks81191_ (gx#stx-identifier-marks* _id81187_)))
                  (let* ((_marks8119381201_ _marks81191_)
                         (_else8119581209_ (lambda () _eid81189_))
                         (_K8119781214_
                          (lambda (_hd81212_) (cons _eid81189_ _hd81212_))))
                    (if (##pair? _marks8119381201_)
                        (let* ((_hd8119881217_ (##car _marks8119381201_))
                               (_hd81220_ _hd8119881217_))
                          (_K8119781214_ _hd81220_))
                        (_else8119581209_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx81157_)))))
    (define gx#core-context-shift
      (lambda (_ctx81102_ _phi81103_)
        (letrec ((_make-phi81105_
                  (lambda (_super81155_)
                    (let ((__obj83714
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj83714
                       (gensym 'phi)
                       _super81155_)
                      __obj83714)))
                 (_make-phi/up81106_
                  (lambda (_ctx81150_ _super81151_)
                    (let ((_ctx+181153_ (_make-phi81105_ _super81151_)))
                      (##unchecked-structure-set!
                       _ctx81150_
                       _ctx+181153_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+181153_
                       _ctx81150_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+181153_)))
                 (_make-phi/down81107_
                  (lambda (_ctx81145_ _super81146_)
                    (let ((_ctx-181148_ (_make-phi81105_ _super81146_)))
                      (##unchecked-structure-set!
                       _ctx-181148_
                       _ctx81145_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx81145_
                       _ctx-181148_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-181148_)))
                 (_shift81108_
                  (lambda (_ctx81129_
                           _delta81130_
                           _make-delta-context81131_
                           _phi81132_
                           _K81133_)
                    (let ((_$e81135_
                           (##unchecked-structure-ref
                            _ctx81129_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e81135_
                          ((lambda (_super81138_)
                             (let* ((_super81140_
                                     (_K81133_ _super81138_ _delta81130_))
                                    (_ctx+d81142_
                                     (_make-delta-context81131_
                                      _ctx81129_
                                      _super81140_)))
                               (_K81133_
                                _ctx+d81142_
                                (fx- _phi81132_ _delta81130_))))
                           _$e81135_)
                          (error '"Bad context" _ctx81129_))))))
          (let _K81110_ ((_ctx81112_ _ctx81102_) (_phi81113_ _phi81103_))
            (if (fxzero? _phi81113_)
                _ctx81112_
                (if (fx> (##vector-length _ctx81112_) '3)
                    (if (fxpositive? _phi81113_)
                        (let ((_$e81115_
                               (##unchecked-structure-ref
                                _ctx81112_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e81115_
                              ((lambda (_g8111781119_)
                                 (_K81110_ _g8111781119_ (fx- _phi81113_ '1)))
                               _$e81115_)
                              (_shift81108_
                               _ctx81112_
                               '1
                               _make-phi/up81106_
                               _phi81113_
                               _K81110_)))
                        (let ((_$e81122_
                               (##unchecked-structure-ref
                                _ctx81112_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e81122_
                              ((lambda (_g8112481126_)
                                 (_K81110_ _g8112481126_ (fx+ _phi81113_ '1)))
                               _$e81122_)
                              (_shift81108_
                               _ctx81112_
                               '-1
                               _make-phi/down81107_
                               _phi81113_
                               _K81110_))))
                    _ctx81112_))))))
    (define gx#core-context-get
      (lambda (_ctx81099_ _key81100_)
        (hash-get
         (##unchecked-structure-ref _ctx81099_ '2 gx#expander-context::t '#f)
         _key81100_)))
    (define gx#core-context-put!
      (lambda (_ctx81095_ _key81096_ _val81097_)
        (hash-put!
         (##unchecked-structure-ref _ctx81095_ '2 gx#expander-context::t '#f)
         _key81096_
         _val81097_)))
    (define gx#core-context-resolve
      (lambda (_ctx81082_ _key81083_)
        (let _lp81085_ ((_ctx81087_ _ctx81082_))
          (let ((_$e81089_ (gx#core-context-get _ctx81087_ _key81083_)))
            (if _$e81089_
                (values _$e81089_)
                (let ((_$e81092_
                       (if (fx> (##vector-length _ctx81087_) '3)
                           (##unchecked-structure-ref
                            _ctx81087_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e81092_ (_lp81085_ _$e81092_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx81072_ _key81073_ _val81074_ _rebind81075_)
        (let ((_$e81077_ (gx#core-context-get _ctx81072_ _key81073_)))
          (if _$e81077_
              ((lambda (_xval81080_)
                 (gx#core-context-put!
                  _ctx81072_
                  _key81073_
                  (_rebind81075_ _xval81080_)))
               _$e81077_)
              (gx#core-context-put! _ctx81072_ _key81073_ _val81074_)))))
    (define gx#core-context-top__%
      (lambda (_ctx81050_ _stop?81051_)
        (let _lp81053_ ((_ctx81055_ _ctx81050_))
          (if (_stop?81051_ _ctx81055_)
              _ctx81055_
              (if (##structure-instance-of? _ctx81055_ 'gx#context-phi::t)
                  (_lp81053_
                   (##unchecked-structure-ref
                    _ctx81055_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx81061_ (gx#current-expander-context))
               (_stop?81063_ gx#top-context?))
          (gx#core-context-top__% _ctx81061_ _stop?81063_))))
    (define gx#core-context-top__1
      (lambda (_ctx81065_)
        (let ((_stop?81067_ gx#top-context?))
          (gx#core-context-top__% _ctx81065_ _stop?81067_))))
    (define gx#core-context-top
      (lambda _g83745_
        (let ((_g83744_ (##length _g83745_)))
          (cond ((##fx= _g83744_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g83745_))
                ((##fx= _g83744_ 1)
                 (apply (lambda (_ctx81065_)
                          (gx#core-context-top__1 _ctx81065_))
                        _g83745_))
                ((##fx= _g83744_ 2)
                 (apply (lambda (_ctx81069_ _stop?81070_)
                          (gx#core-context-top__% _ctx81069_ _stop?81070_))
                        _g83745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g83745_))))))
    (define gx#core-context-root__%
      (lambda (_ctx81035_)
        (let _lp81037_ ((_ctx81039_ _ctx81035_))
          (if (##structure-instance-of? _ctx81039_ 'gx#context-phi::t)
              (_lp81037_
               (##unchecked-structure-ref _ctx81039_ '3 gx#phi-context::t '#f))
              _ctx81039_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx81045_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx81045_))))
    (define gx#core-context-root
      (lambda _g83747_
        (let ((_g83746_ (##length _g83747_)))
          (cond ((##fx= _g83746_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g83747_))
                ((##fx= _g83746_ 1)
                 (apply (lambda (_ctx81047_)
                          (gx#core-context-root__% _ctx81047_))
                        _g83747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g83747_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx81016_ . __8101381017_)
        (let ((_$e81020_ (gx#current-expander-allow-rebind?)))
          (if _$e81020_
              _$e81020_
              (if (##structure-instance-of? _ctx81016_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx81016_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx81016_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx81027_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx81027_))))
    (define gx#core-context-rebind?
      (lambda _g83749_
        (let ((_g83748_ (##length _g83749_)))
          (cond ((##fx= _g83748_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g83749_))
                ((##fx= _g83748_ 1)
                 (apply (lambda (_ctx81029_)
                          (gx#core-context-rebind?__% _ctx81029_))
                        _g83749_))
                ((##fx>= _g83748_ 1)
                 (apply gx#core-context-rebind?__% _g83749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g83749_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx80999_)
        (let ((_$e81001_ (gx#core-context-top__1 _ctx80999_)))
          (if _$e81001_
              ((lambda (_ctx81004_)
                 (if (##structure-instance-of?
                      _ctx81004_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx81004_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e81001_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx81010_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx81010_))))
    (define gx#core-context-namespace
      (lambda _g83751_
        (let ((_g83750_ (##length _g83751_)))
          (cond ((##fx= _g83750_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g83751_))
                ((##fx= _g83750_ 1)
                 (apply (lambda (_ctx81012_)
                          (gx#core-context-namespace__% _ctx81012_))
                        _g83751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g83751_))))))
    (define gx#expander-binding?__%
      (lambda (_bind80985_ _is?80986_)
        (if (##structure-direct-instance-of? _bind80985_ 'gx#syntax-binding::t)
            (_is?80986_
             (##unchecked-structure-ref
              _bind80985_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind80991_)
        (let ((_is?80993_ gx#expander?))
          (gx#expander-binding?__% _bind80991_ _is?80993_))))
    (define gx#expander-binding?
      (lambda _g83753_
        (let ((_g83752_ (##length _g83753_)))
          (cond ((##fx= _g83752_ 1)
                 (apply (lambda (_bind80991_)
                          (gx#expander-binding?__0 _bind80991_))
                        _g83753_))
                ((##fx= _g83752_ 2)
                 (apply (lambda (_bind80995_ _is?80996_)
                          (gx#expander-binding?__% _bind80995_ _is?80996_))
                        _g83753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g83753_))))))
    (define gx#core-expander-binding?
      (lambda (_bind80982_)
        (gx#expander-binding?__% _bind80982_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind80980_)
        (gx#expander-binding?__% _bind80980_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind80974_)
        (letrec ((_direct-special-form?80976_
                  (lambda (_obj80978_)
                    (##structure-direct-instance-of?
                     _obj80978_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind80974_ _direct-special-form?80976_))))
    (define gx#special-form-binding?
      (lambda (_bind80972_)
        (gx#expander-binding?__% _bind80972_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind80963_)
        (letrec ((_feature?80965_
                  (lambda (_e80967_)
                    (let ((_$e80969_
                           (##structure-instance-of?
                            _e80967_
                            'gx#feature-expander::t)))
                      (if _$e80969_
                          _$e80969_
                          (##structure-instance-of?
                           _e80967_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind80963_ _feature?80965_))))
    (define gx#private-feature-binding?
      (lambda (_bind80961_)
        (gx#expander-binding?__% _bind80961_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id80948_ _bound?80949_)
        (if (gx#identifier? _id80948_)
            (_bound?80949_ (gx#resolve-identifier__0 _id80948_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id80954_)
        (let ((_bound?80956_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id80954_ _bound?80956_))))
    (define gx#core-bound-identifier?
      (lambda _g83755_
        (let ((_g83754_ (##length _g83755_)))
          (cond ((##fx= _g83754_ 1)
                 (apply (lambda (_id80954_)
                          (gx#core-bound-identifier?__0 _id80954_))
                        _g83755_))
                ((##fx= _g83754_ 2)
                 (apply (lambda (_id80958_ _bound?80959_)
                          (gx#core-bound-identifier?__%
                           _id80958_
                           _bound?80959_))
                        _g83755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g83755_))))))
    (define gx#core-identifier=?
      (lambda (_x80938_ _y80939_)
        (letrec ((_y=?80941_
                  (lambda (_xid80945_)
                    ((if (list? _y80939_) memq eq?) _xid80945_ _y80939_))))
          (let ((_bind80943_ (gx#resolve-identifier__0 _x80938_)))
            (if (##structure-instance-of? _bind80943_ 'gx#binding::t)
                (_y=?80941_
                 (##unchecked-structure-ref _bind80943_ '1 gx#binding::t '#f))
                (_y=?80941_ (gx#stx-e _x80938_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e80936_)
        (if (interned-symbol? _e80936_)
            (string-index__0 (symbol->string _e80936_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx80891_ _src80892_ _ctx80893_ _marks80894_)
        (if (##structure? _stx80891_)
            (let ((_$e80896_ (gx#sealed-syntax-unwrap _stx80891_)))
              (if _$e80896_
                  (values _$e80896_)
                  (if (gx#identifier? _stx80891_)
                      (let ((_id80899_
                             (gx#stx-unwrap__% _stx80891_ _marks80894_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id80899_ '1 gx#AST::t '#f)
                         (let ((_$e80901_
                                (##unchecked-structure-ref
                                 _id80899_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e80901_ _$e80901_ _src80892_))
                         _ctx80893_
                         (##unchecked-structure-ref
                          _id80899_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx80891_)
                       (let ((_$e80904_ (gx#stx-source _stx80891_)))
                         (if _$e80904_ _$e80904_ _src80892_))
                       _ctx80893_
                       (reverse _marks80894_)))))
            (##structure
             gx#syntax-quote::t
             _stx80891_
             _src80892_
             _ctx80893_
             (reverse _marks80894_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx80910_)
        (let* ((_src80912_ '#f)
               (_ctx80914_ (gx#current-expander-context))
               (_marks80916_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80910_
           _src80912_
           _ctx80914_
           _marks80916_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx80918_ _src80919_)
        (let* ((_ctx80921_ (gx#current-expander-context))
               (_marks80923_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80918_
           _src80919_
           _ctx80921_
           _marks80923_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx80925_ _src80926_ _ctx80927_)
        (let ((_marks80929_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80925_
           _src80926_
           _ctx80927_
           _marks80929_))))
    (define gx#core-quote-syntax
      (lambda _g83757_
        (let ((_g83756_ (##length _g83757_)))
          (cond ((##fx= _g83756_ 1)
                 (apply (lambda (_stx80910_)
                          (gx#core-quote-syntax__0 _stx80910_))
                        _g83757_))
                ((##fx= _g83756_ 2)
                 (apply (lambda (_stx80918_ _src80919_)
                          (gx#core-quote-syntax__1 _stx80918_ _src80919_))
                        _g83757_))
                ((##fx= _g83756_ 3)
                 (apply (lambda (_stx80925_ _src80926_ _ctx80927_)
                          (gx#core-quote-syntax__2
                           _stx80925_
                           _src80926_
                           _ctx80927_))
                        _g83757_))
                ((##fx= _g83756_ 4)
                 (apply (lambda (_stx80931_ _src80932_ _ctx80933_ _marks80934_)
                          (gx#core-quote-syntax__%
                           _stx80931_
                           _src80932_
                           _ctx80933_
                           _marks80934_))
                        _g83757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g83757_))))))
    (define gx#core-cons
      (lambda (_hd80887_ _tl80888_)
        (cons (gx#core-quote-syntax__0 _hd80887_) _tl80888_)))
    (define gx#core-list
      (lambda (_hd80884_ . _rest80885_)
        (cons (gx#core-quote-syntax__0 _hd80884_) _rest80885_)))
    (define gx#core-cons*
      (lambda (_hd80881_ . _rest80882_)
        (apply cons* (gx#core-quote-syntax__0 _hd80881_) _rest80882_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path80855_ _rel80856_)
        (let ((_path80868_ (gx#stx-e _stx-path80855_))
              (_reldir80869_
               (let _lp80858_ ((_relsrc80860_
                                (let ((_$e80865_
                                       (gx#stx-source _stx-path80855_)))
                                  (if _$e80865_ _$e80865_ _rel80856_))))
                 (if (##structure-instance-of? _relsrc80860_ 'gerbil#AST::t)
                     (_lp80858_
                      (let ((_$e80862_ (gx#stx-source _relsrc80860_)))
                        (if _$e80862_ _$e80862_ (gx#stx-e _relsrc80860_))))
                     (if (source-location-path? _relsrc80860_)
                         (path-directory (source-location-path _relsrc80860_))
                         (if (string? _relsrc80860_)
                             (path-directory _relsrc80860_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path80868_ (path-normalize _reldir80869_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path80874_)
        (let ((_rel80876_ '#f))
          (gx#core-resolve-path__% _stx-path80874_ _rel80876_))))
    (define gx#core-resolve-path
      (lambda _g83759_
        (let ((_g83758_ (##length _g83759_)))
          (cond ((##fx= _g83758_ 1)
                 (apply (lambda (_stx-path80874_)
                          (gx#core-resolve-path__0 _stx-path80874_))
                        _g83759_))
                ((##fx= _g83758_ 2)
                 (apply (lambda (_stx-path80878_ _rel80879_)
                          (gx#core-resolve-path__% _stx-path80878_ _rel80879_))
                        _g83759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g83759_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr80811_ _ctx80812_)
        (let* ((_repr8081380820_ _repr80811_)
               (_E8081580824_
                (lambda () (error '"No clause matching" _repr8081380820_)))
               (_K8081680832_
                (lambda (_subs80827_ _phi80828_)
                  (let ((_subst80830_
                         (if (not (null? _subs80827_))
                             (list->hash-table-eq _subs80827_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst80830_
                     _ctx80812_
                     _phi80828_
                     '#f)))))
          (if (##pair? _repr8081380820_)
              (let ((_hd8081780835_ (##car _repr8081380820_))
                    (_tl8081880837_ (##cdr _repr8081380820_)))
                (let* ((_phi80840_ _hd8081780835_)
                       (_subs80842_ _tl8081880837_))
                  (_K8081680832_ _subs80842_ _phi80840_)))
              (_E8081580824_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr80847_)
        (let ((_ctx80849_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr80847_ _ctx80849_))))
    (define gx#core-deserialize-mark
      (lambda _g83761_
        (let ((_g83760_ (##length _g83761_)))
          (cond ((##fx= _g83760_ 1)
                 (apply (lambda (_repr80847_)
                          (gx#core-deserialize-mark__0 _repr80847_))
                        _g83761_))
                ((##fx= _g83760_ 2)
                 (apply (lambda (_repr80851_ _ctx80852_)
                          (gx#core-deserialize-mark__% _repr80851_ _ctx80852_))
                        _g83761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g83761_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx80808_)
        (gx#stx-rewrap _stx80808_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx80806_)
        (gx#stx-unwrap__% _stx80806_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx80776_)
        (let* ((_g8077780785_ (gx#current-expander-marks))
               (_else8077980793_ (lambda () _stx80776_))
               (_K8078180798_
                (lambda (_hd80796_) (gx#stx-apply-mark _stx80776_ _hd80796_))))
          (if (##pair? _g8077780785_)
              (let* ((_hd8078280801_ (##car _g8077780785_))
                     (_hd80804_ _hd8078280801_))
                (_K8078180798_ _hd80804_))
              (_else8077980793_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx80761_ _E80762_)
        (let ((_bind80764_ (gx#resolve-identifier__0 _stx80761_)))
          (if (##structure-direct-instance-of?
               _bind80764_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind80764_
               '4
               gx#syntax-binding::t
               '#f)
              (_E80762_ _stx80761_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx80769_)
        (let ((_E80771_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx80769_ _E80771_))))
    (define gx#syntax-local-e
      (lambda _g83763_
        (let ((_g83762_ (##length _g83763_)))
          (cond ((##fx= _g83762_ 1)
                 (apply (lambda (_stx80769_) (gx#syntax-local-e__0 _stx80769_))
                        _g83763_))
                ((##fx= _g83762_ 2)
                 (apply (lambda (_stx80773_ _E80774_)
                          (gx#syntax-local-e__% _stx80773_ _E80774_))
                        _g83763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g83763_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx80745_ _E80746_)
        (let ((_e80748_ (gx#syntax-local-e__% _stx80745_ _E80746_)))
          (if (##structure-instance-of? _e80748_ 'gx#expander::t)
              (##structure-ref _e80748_ '1 gx#expander::t '#f)
              _e80748_))))
    (define gx#syntax-local-value__0
      (lambda (_stx80753_)
        (let ((_E80755_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx80753_ _E80755_))))
    (define gx#syntax-local-value
      (lambda _g83765_
        (let ((_g83764_ (##length _g83765_)))
          (cond ((##fx= _g83764_ 1)
                 (apply (lambda (_stx80753_)
                          (gx#syntax-local-value__0 _stx80753_))
                        _g83765_))
                ((##fx= _g83764_ 2)
                 (apply (lambda (_stx80757_ _E80758_)
                          (gx#syntax-local-value__% _stx80757_ _E80758_))
                        _g83765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g83765_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx80742_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx80742_)))))
