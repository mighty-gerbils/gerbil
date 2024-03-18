(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710774316)
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
      (lambda _$args86004_
        (apply make-instance gx#expander-context::t _$args86004_)))
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
      (lambda _$args86001_
        (apply make-instance gx#root-context::t _$args86001_)))
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
      (lambda _$args85998_
        (apply make-instance gx#phi-context::t _$args85998_)))
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
      (lambda _$args85995_
        (apply make-instance gx#top-context::t _$args85995_)))
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
      (lambda _$args85992_
        (apply make-instance gx#module-context::t _$args85992_)))
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
      (lambda _$args85989_
        (apply make-instance gx#prelude-context::t _$args85989_)))
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
      (lambda _$args85986_
        (apply make-instance gx#local-context::t _$args85986_)))
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
      (lambda (_self85970_ _id85971_ _super85972_)
        (if (##fx< '3 (##structure-length _self85970_))
            (begin
              (##unchecked-structure-set!
               _self85970_
               _id85971_
               '1
               (##structure-type _self85970_)
               '#f)
              (##unchecked-structure-set!
               _self85970_
               (make-hash-table-eq)
               '2
               (##structure-type _self85970_)
               '#f)
              (##unchecked-structure-set!
               _self85970_
               _super85972_
               '3
               (##structure-type _self85970_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85970_
                   '3
                   (##vector-length _self85970_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self85977_ _id85978_)
        (let ((_super85980_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self85977_ _id85978_ _super85980_))))
    (define gx#phi-context:::init!
      (lambda _g86047_
        (let ((_g86046_ (##length _g86047_)))
          (cond ((##fx= _g86046_ 2)
                 (apply (lambda (_self85977_ _id85978_)
                          (gx#phi-context:::init!__0 _self85977_ _id85978_))
                        _g86047_))
                ((##fx= _g86046_ 3)
                 (apply (lambda (_self85982_ _id85983_ _super85984_)
                          (gx#phi-context:::init!__%
                           _self85982_
                           _id85983_
                           _super85984_))
                        _g86047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g86047_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self85834_ _super85835_)
        (if (##fx< '3 (##structure-length _self85834_))
            (begin
              (##unchecked-structure-set!
               _self85834_
               (gensym 'L)
               '1
               (##structure-type _self85834_)
               '#f)
              (##unchecked-structure-set!
               _self85834_
               (make-hash-table-eq)
               '2
               (##structure-type _self85834_)
               '#f)
              (##unchecked-structure-set!
               _self85834_
               _super85835_
               '3
               (##structure-type _self85834_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85834_
                   '3
                   (##vector-length _self85834_)))))
    (define gx#local-context:::init!__0
      (lambda (_self85840_)
        (let ((_super85842_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self85840_ _super85842_))))
    (define gx#local-context:::init!
      (lambda _g86049_
        (let ((_g86048_ (##length _g86049_)))
          (cond ((##fx= _g86048_ 1)
                 (apply (lambda (_self85840_)
                          (gx#local-context:::init!__0 _self85840_))
                        _g86049_))
                ((##fx= _g86048_ 2)
                 (apply (lambda (_self85844_ _super85845_)
                          (gx#local-context:::init!__%
                           _self85844_
                           _super85845_))
                        _g86049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g86049_))))))
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
      (lambda _$args85708_ (apply make-instance gx#binding::t _$args85708_)))
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
      (lambda _$args85705_
        (apply make-instance gx#runtime-binding::t _$args85705_)))
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
      (lambda _$args85702_
        (apply make-instance gx#local-binding::t _$args85702_)))
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
      (lambda _$args85699_
        (apply make-instance gx#top-binding::t _$args85699_)))
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
      (lambda _$args85696_
        (apply make-instance gx#module-binding::t _$args85696_)))
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
      (lambda _$args85693_
        (apply make-instance gx#extern-binding::t _$args85693_)))
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
      (lambda _$args85690_
        (apply make-instance gx#syntax-binding::t _$args85690_)))
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
      (lambda _$args85687_
        (apply make-instance gx#import-binding::t _$args85687_)))
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
      (lambda _$args85684_
        (apply make-instance gx#alias-binding::t _$args85684_)))
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
      (lambda _$args85681_ (apply make-instance gx#expander::t _$args85681_)))
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
      (lambda _$args85678_
        (apply make-instance gx#core-expander::t _$args85678_)))
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
      (lambda _$args85675_
        (apply make-instance gx#expression-form::t _$args85675_)))
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
      (lambda _$args85672_
        (apply make-instance gx#special-form::t _$args85672_)))
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
      (lambda _$args85669_
        (apply make-instance gx#definition-form::t _$args85669_)))
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
      (lambda _$args85666_
        (apply make-instance gx#top-special-form::t _$args85666_)))
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
      (lambda _$args85663_
        (apply make-instance gx#module-special-form::t _$args85663_)))
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
      (lambda _$args85660_
        (apply make-instance gx#feature-expander::t _$args85660_)))
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
      (lambda _$args85657_
        (apply make-instance gx#private-feature-expander::t _$args85657_)))
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
      (lambda _$args85654_
        (apply make-instance gx#reserved-expander::t _$args85654_)))
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
      (lambda _$args85651_
        (apply make-instance gx#macro-expander::t _$args85651_)))
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
      (lambda _$args85648_
        (apply make-instance gx#rename-macro-expander::t _$args85648_)))
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
      (lambda _$args85645_
        (apply make-instance gx#user-expander::t _$args85645_)))
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
      (lambda _$args85642_
        (apply make-instance gx#expander-mark::t _$args85642_)))
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
      (lambda (_ctx85627_ _message85628_ _stx85629_ . _details85630_)
        (let ((_ctx85640_
               (let ((_$e85632_ _ctx85627_))
                 (if _$e85632_
                     _$e85632_
                     (let ((_$e85635_ (gx#core-context-top__0)))
                       (if _$e85635_
                           ((lambda (_ctx85638_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx85638_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e85635_)
                           '#f))))))
          (raise (make-syntax-error
                  _message85628_
                  (cons _stx85629_ _details85630_)
                  _ctx85640_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx85614_ _expression?85615_)
        (gx#eval-syntax* (gx#core-expand__% _stx85614_ _expression?85615_))))
    (define gx#eval-syntax__0
      (lambda (_stx85620_)
        (let ((_expression?85622_ '#f))
          (gx#eval-syntax__% _stx85620_ _expression?85622_))))
    (define gx#eval-syntax
      (lambda _g86051_
        (let ((_g86050_ (##length _g86051_)))
          (cond ((##fx= _g86050_ 1)
                 (apply (lambda (_stx85620_) (gx#eval-syntax__0 _stx85620_))
                        _g86051_))
                ((##fx= _g86050_ 2)
                 (apply (lambda (_stx85624_ _expression?85625_)
                          (gx#eval-syntax__% _stx85624_ _expression?85625_))
                        _g86051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g86051_))))))
    (define gx#eval-syntax*
      (lambda (_stx85611_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx85611_))))
    (define gx#core-expand__%
      (lambda (_stx85598_ _expression?85599_)
        (if _expression?85599_
            (gx#core-expand-expression _stx85598_)
            (gx#core-expand-top _stx85598_))))
    (define gx#core-expand__0
      (lambda (_stx85604_)
        (let ((_expression?85606_ '#f))
          (gx#core-expand__% _stx85604_ _expression?85606_))))
    (define gx#core-expand
      (lambda _g86053_
        (let ((_g86052_ (##length _g86053_)))
          (cond ((##fx= _g86052_ 1)
                 (apply (lambda (_stx85604_) (gx#core-expand__0 _stx85604_))
                        _g86053_))
                ((##fx= _g86052_ 2)
                 (apply (lambda (_stx85608_ _expression?85609_)
                          (gx#core-expand__% _stx85608_ _expression?85609_))
                        _g86053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g86053_))))))
    (define gx#core-expand-top
      (lambda (_stx85565_)
        (let* ((_stx85567_ (gx#core-expand*__0 _stx85565_))
               (_e8556885575_ _stx85567_)
               (_E8557085579_
                (lambda () (gx#core-expand-expression _stx85567_)))
               (_E8556985593_
                (lambda ()
                  (if (gx#stx-pair? _e8556885575_)
                      (let ((_e8557185583_ (gx#syntax-e _e8556885575_)))
                        (let ((_hd8557285586_ (##car _e8557185583_))
                              (_tl8557385588_ (##cdr _e8557185583_)))
                          (let ((_form85591_ _hd8557285586_))
                            (if (gx#core-bound-identifier?__0 _form85591_)
                                _stx85567_
                                (_E8557085579_)))))
                      (_E8557085579_)))))
          (_E8556985593_))))
    (define gx#core-expand-expression
      (lambda (_stx85512_)
        (letrec ((_sealed-expression?85514_
                  (lambda (_hd85535_)
                    (if (gx#sealed-syntax? _hd85535_)
                        (let* ((_e8553685543_ _hd85535_)
                               (_E8553885547_ (lambda () '#f))
                               (_E8553785561_
                                (lambda ()
                                  (if (gx#stx-pair? _e8553685543_)
                                      (let ((_e8553985551_
                                             (gx#syntax-e _e8553685543_)))
                                        (let ((_hd8554085554_
                                               (##car _e8553985551_))
                                              (_tl8554185556_
                                               (##cdr _e8553985551_)))
                                          (let ((_form85559_ _hd8554085554_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form85559_
                                                 gx#expression-form-binding?)
                                                (_E8553885547_)))))
                                      (_E8553885547_)))))
                          (_E8553785561_))
                        '#f)))
                 (_illegal-expression85515_
                  (lambda (_hd85533_ . _g86054_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx85512_
                     _hd85533_)))
                 (_expand-e85516_
                  (lambda (_form85528_ _hd85529_)
                    (let ((_bind85531_
                           (if (##structure-instance-of?
                                _form85528_
                                'gx#binding::t)
                               _form85528_
                               (gx#resolve-identifier__0 _form85528_))))
                      (if (gx#core-expander-binding? _bind85531_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind85531_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd85529_
                            (gx#stx-source _stx85512_)))
                          (if (##structure-direct-instance-of?
                               _bind85531_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind85531_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd85529_
                                 (gx#stx-source _stx85512_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx85512_
                               _form85528_)))))))
          (let ((_hd85518_ (gx#core-expand-head _stx85512_)))
            (if (_sealed-expression?85514_ _hd85518_)
                _hd85518_
                (if (gx#stx-pair? _hd85518_)
                    (let* ((_form85520_ (gx#stx-car _hd85518_))
                           (_bind85522_
                            (if (gx#identifier? _form85520_)
                                (gx#resolve-identifier__0 _form85520_)
                                '#f)))
                      (if (or (not _bind85522_)
                              (not (gx#core-expander-binding? _bind85522_)))
                          (_expand-e85516_ '%%app (cons '%%app _hd85518_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind85522_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd85518_
                               _illegal-expression85515_)
                              (if (gx#expression-form-binding? _bind85522_)
                                  (_expand-e85516_ _bind85522_ _hd85518_)
                                  (if (gx#direct-special-form-binding?
                                       _bind85522_)
                                      (gx#core-expand-expression
                                       (_expand-e85516_ _bind85522_ _hd85518_))
                                      (_illegal-expression85515_
                                       _hd85518_))))))
                    (if (gx#core-bound-identifier?__0 _hd85518_)
                        (_illegal-expression85515_ _hd85518_)
                        (if (gx#identifier? _hd85518_)
                            (_expand-e85516_
                             '%%ref
                             (cons '%%ref (cons _hd85518_ '())))
                            (if (gx#stx-datum? _hd85518_)
                                (_expand-e85516_
                                 '%#quote
                                 (cons '%#quote (cons _hd85518_ '())))
                                (_illegal-expression85515_ _hd85518_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx85507_)
        (call-with-parameters
         (lambda ()
           (let ((_stx85510_ (gx#core-expand-expression _stx85507_)))
             (values _stx85510_ (gx#eval-syntax* _stx85510_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx85488_ _stop?85489_)
        (let _lp85491_ ((_stx85493_ _stx85488_))
          (if (_stop?85489_ _stx85493_)
              _stx85493_
              (let ((_rstx85495_ (gx#core-expand1 _stx85493_)))
                (if (eq? _stx85493_ _rstx85495_)
                    _stx85493_
                    (_lp85491_ _rstx85495_)))))))
    (define gx#core-expand*__0
      (lambda (_stx85500_)
        (let ((_stop?85502_ false))
          (gx#core-expand*__% _stx85500_ _stop?85502_))))
    (define gx#core-expand*
      (lambda _g86056_
        (let ((_g86055_ (##length _g86056_)))
          (cond ((##fx= _g86055_ 1)
                 (apply (lambda (_stx85500_) (gx#core-expand*__0 _stx85500_))
                        _g86056_))
                ((##fx= _g86055_ 2)
                 (apply (lambda (_stx85504_ _stop?85505_)
                          (gx#core-expand*__% _stx85504_ _stop?85505_))
                        _g86056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g86056_))))))
    (define gx#core-expand1
      (lambda (_stx85444_)
        (letrec ((_step85446_
                  (lambda (_hd85483_)
                    (let ((_bind85485_ (gx#resolve-identifier__0 _hd85483_)))
                      (if (##structure-instance-of?
                           _bind85485_
                           'gx#runtime-binding::t)
                          _stx85444_
                          (if (##structure-direct-instance-of?
                               _bind85485_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind85485_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx85444_)
                              (if (not _bind85485_)
                                  _stx85444_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx85444_))))))))
          (let* ((_e8544785455_ _stx85444_)
                 (_E8545385459_ (lambda () _stx85444_))
                 (_E8544985465_
                  (lambda ()
                    (let ((_hd85463_ _e8544785455_))
                      (if (gx#identifier? _hd85463_)
                          (_step85446_ _hd85463_)
                          (_E8545385459_)))))
                 (_E8544885479_
                  (lambda ()
                    (if (gx#stx-pair? _e8544785455_)
                        (let ((_e8545085469_ (gx#syntax-e _e8544785455_)))
                          (let ((_hd8545185472_ (##car _e8545085469_))
                                (_tl8545285474_ (##cdr _e8545085469_)))
                            (let ((_hd85477_ _hd8545185472_))
                              (if (gx#identifier? _hd85477_)
                                  (_step85446_ _hd85477_)
                                  (_E8544985465_)))))
                        (_E8544985465_)))))
            (_E8544885479_)))))
    (define gx#core-expand-head
      (lambda (_stx85410_)
        (letrec ((_stop?85412_
                  (lambda (_stx85414_)
                    (let* ((_e8541585422_ _stx85414_)
                           (_E8541785426_ (lambda () '#f))
                           (_E8541685440_
                            (lambda ()
                              (if (gx#stx-pair? _e8541585422_)
                                  (let ((_e8541885430_
                                         (gx#syntax-e _e8541585422_)))
                                    (let ((_hd8541985433_
                                           (##car _e8541885430_))
                                          (_tl8542085435_
                                           (##cdr _e8541885430_)))
                                      (let ((_hd85438_ _hd8541985433_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd85438_)
                                            (_E8541785426_)))))
                                  (_E8541785426_)))))
                      (_E8541685440_)))))
          (gx#core-expand*__% _stx85410_ _stop?85412_))))
    (define gx#core-expand-block__%
      (lambda (_stx85216_
               _expand-special85217_
               _begin-form85218_
               _expand-e85219_)
        (letrec ((_expand-splice85221_
                  (lambda (_hd85384_ _body85385_ _rest85386_ _r85387_)
                    (if (gx#stx-list? _body85385_)
                        (_K85225_
                         (gx#stx-foldr cons _rest85386_ _body85385_)
                         _r85387_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx85216_
                         _hd85384_))))
                 (_expand-cond-expand85222_
                  (lambda (_hd85380_ _rest85381_ _r85382_)
                    (_K85225_
                     (cons (gx#core-expand-cond-expand% _hd85380_) _rest85381_)
                     _r85382_)))
                 (_expand-include85223_
                  (lambda (_hd85329_ _rest85330_ _r85331_)
                    (let* ((_e8533285342_ _hd85329_)
                           (_E8533485346_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8533285342_)))
                           (_E8533385376_
                            (lambda ()
                              (if (gx#stx-pair? _e8533285342_)
                                  (let ((_e8533585350_
                                         (gx#syntax-e _e8533285342_)))
                                    (let ((_hd8533685353_
                                           (##car _e8533585350_))
                                          (_tl8533785355_
                                           (##cdr _e8533585350_)))
                                      (if (gx#stx-pair? _tl8533785355_)
                                          (let ((_e8533885358_
                                                 (gx#syntax-e _tl8533785355_)))
                                            (let ((_hd8533985361_
                                                   (##car _e8533885358_))
                                                  (_tl8534085363_
                                                   (##cdr _e8533885358_)))
                                              (let ((_path85366_
                                                     _hd8533985361_))
                                                (if (gx#stx-null?
                                                     _tl8534085363_)
                                                    (if (gx#stx-string?
                                                         _path85366_)
                                                        (let* ((_rpath85368_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path85366_
                         (gx#stx-source _hd85329_)))
                       (_block85370_
                        (gx#core-expand-include%__% _hd85329_ _rpath85368_))
                       (_rbody85373_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block85370_
                            _expand-special85217_
                            '#f
                            _expand-e85219_))
                         gx#current-expander-path
                         (cons _rpath85368_ (gx#current-expander-path)))))
                  (_K85225_ _rest85330_ (foldr1 cons _r85331_ _rbody85373_)))
                (_E8533485346_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8533485346_)))))
                                          (_E8533485346_))))
                                  (_E8533485346_)))))
                      (_E8533385376_))))
                 (_expand-expression85224_
                  (lambda (_hd85325_ _rest85326_ _r85327_)
                    (_K85225_
                     _rest85326_
                     (cons (_expand-e85219_ _hd85325_) _r85327_))))
                 (_K85225_
                  (lambda (_rest85255_ _r85256_)
                    (let* ((_e8525785264_ _rest85255_)
                           (_E8525985268_
                            (lambda ()
                              (if _begin-form85218_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form85218_
                                    (reverse _r85256_))
                                   (gx#stx-source _stx85216_))
                                  _r85256_)))
                           (_E8525885321_
                            (lambda ()
                              (if (gx#stx-pair? _e8525785264_)
                                  (let ((_e8526085272_
                                         (gx#syntax-e _e8525785264_)))
                                    (let ((_hd8526185275_
                                           (##car _e8526085272_))
                                          (_tl8526285277_
                                           (##cdr _e8526085272_)))
                                      (let* ((_hd85280_ _hd8526185275_)
                                             (_rest85282_ _tl8526285277_))
                                        (if '#t
                                            (let* ((_hd85284_
                                                    (gx#core-expand-head
                                                     _hd85280_))
                                                   (_e8528585292_ _hd85284_)
                                                   (_E8528785296_
                                                    (lambda ()
                                                      (_expand-expression85224_
                                                       _hd85284_
                                                       _rest85282_
                                                       _r85256_)))
                                                   (_E8528685317_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8528585292_)
                                                          (let ((_e8528885300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8528585292_)))
                    (let ((_hd8528985303_ (##car _e8528885300_))
                          (_tl8529085305_ (##cdr _e8528885300_)))
                      (let* ((_form85308_ _hd8528985303_)
                             (_body85310_ _tl8529085305_))
                        (if '#t
                            (let ((_bind85312_
                                   (if (gx#identifier? _form85308_)
                                       (gx#resolve-identifier__0 _form85308_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind85312_)
                                  (let ((_$e85314_
                                         (##unchecked-structure-ref
                                          _bind85312_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e85314_)
                                        (_expand-splice85221_
                                         _hd85284_
                                         _body85310_
                                         _rest85282_
                                         _r85256_)
                                        (if (eq? '%#cond-expand _$e85314_)
                                            (_expand-cond-expand85222_
                                             _hd85284_
                                             _rest85282_
                                             _r85256_)
                                            (if (eq? '%#include _$e85314_)
                                                (_expand-include85223_
                                                 _hd85284_
                                                 _rest85282_
                                                 _r85256_)
                                                (_expand-special85217_
                                                 _hd85284_
                                                 _K85225_
                                                 _rest85282_
                                                 _r85256_)))))
                                  (_expand-expression85224_
                                   _hd85284_
                                   _rest85282_
                                   _r85256_)))
                            (_E8528785296_)))))
                  (_E8528785296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8528685317_))
                                            (_E8525985268_)))))
                                  (_E8525985268_)))))
                      (_E8525885321_)))))
          (let* ((_e8522685233_ _stx85216_)
                 (_E8522885237_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8522685233_)))
                 (_E8522785251_
                  (lambda ()
                    (if (gx#stx-pair? _e8522685233_)
                        (let ((_e8522985241_ (gx#syntax-e _e8522685233_)))
                          (let ((_hd8523085244_ (##car _e8522985241_))
                                (_tl8523185246_ (##cdr _e8522985241_)))
                            (let ((_body85249_ _tl8523185246_))
                              (if (gx#stx-list? _body85249_)
                                  (_K85225_ _body85249_ '())
                                  (_E8522885237_)))))
                        (_E8522885237_)))))
            (_E8522785251_)))))
    (define gx#core-expand-block__0
      (lambda (_stx85392_ _expand-special85393_)
        (let* ((_begin-form85395_ '%#begin)
               (_expand-e85397_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85392_
           _expand-special85393_
           _begin-form85395_
           _expand-e85397_))))
    (define gx#core-expand-block__1
      (lambda (_stx85399_ _expand-special85400_ _begin-form85401_)
        (let ((_expand-e85403_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85399_
           _expand-special85400_
           _begin-form85401_
           _expand-e85403_))))
    (define gx#core-expand-block
      (lambda _g86058_
        (let ((_g86057_ (##length _g86058_)))
          (cond ((##fx= _g86057_ 2)
                 (apply (lambda (_stx85392_ _expand-special85393_)
                          (gx#core-expand-block__0
                           _stx85392_
                           _expand-special85393_))
                        _g86058_))
                ((##fx= _g86057_ 3)
                 (apply (lambda (_stx85399_
                                 _expand-special85400_
                                 _begin-form85401_)
                          (gx#core-expand-block__1
                           _stx85399_
                           _expand-special85400_
                           _begin-form85401_))
                        _g86058_))
                ((##fx= _g86057_ 4)
                 (apply (lambda (_stx85405_
                                 _expand-special85406_
                                 _begin-form85407_
                                 _expand-e85408_)
                          (gx#core-expand-block__%
                           _stx85405_
                           _expand-special85406_
                           _begin-form85407_
                           _expand-e85408_))
                        _g86058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g86058_))))))
    (define gx#core-expand-block*
      (lambda (_stx85164_ _expand-special85165_)
        (let* ((_g8516685177_
                (gx#core-expand-block__1 _stx85164_ _expand-special85165_ '#f))
               (_E8517085181_
                (lambda () (error '"No clause matching" _g8516685177_))))
          (let ((_K8517585212_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx85164_)))
                (_K8517285198_ (lambda (_expr85196_) _expr85196_))
                (_K8517185187_
                 (lambda (_body85185_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body85185_))
                    (gx#stx-source _stx85164_)))))
            (let ((_try-match8516885208_
                   (lambda ()
                     (if (##pair? _g8516685177_)
                         (let ((_tl8517485203_ (##cdr _g8516685177_))
                               (_hd8517385201_ (##car _g8516685177_)))
                           (if (##null? _tl8517485203_)
                               (let ((_expr85206_ _hd8517385201_))
                                 (_K8517285198_ _expr85206_))
                               (let ((_body85190_ _g8516685177_))
                                 (_K8517185187_ _body85190_))))
                         (let ((_body85190_ _g8516685177_))
                           (_K8517185187_ _body85190_))))))
              (if (##null? _g8516685177_)
                  (_K8517585212_)
                  (_try-match8516885208_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx84992_)
        (letrec ((_satisfied?84994_
                  (lambda (_condition85092_)
                    (let* ((_e8509385108_ _condition85092_)
                           (_E8510385112_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8509385108_)))
                           (_E8509685131_
                            (lambda ()
                              (if (gx#stx-pair? _e8509385108_)
                                  (let ((_e8510485116_
                                         (gx#syntax-e _e8509385108_)))
                                    (let ((_hd8510585119_
                                           (##car _e8510485116_))
                                          (_tl8510685121_
                                           (##cdr _e8510485116_)))
                                      (let* ((_combinator85124_ _hd8510585119_)
                                             (_body85126_ _tl8510685121_))
                                        (if (gx#stx-list? _body85126_)
                                            (let ((_$e85128_
                                                   (gx#stx-e
                                                    _combinator85124_)))
                                              (if (eq? 'not _$e85128_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?84994_
                                                        _body85126_))
                                                  (if (eq? 'and _$e85128_)
                                                      (gx#stx-andmap
                                                       _satisfied?84994_
                                                       _body85126_)
                                                      (if (eq? 'or _$e85128_)
                                                          (gx#stx-ormap
                                                           _satisfied?84994_
                                                           _body85126_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e85128_)
                      (gx#stx-andmap gx#core-resolve-identifier _body85126_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx84992_
                       _combinator85124_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8510385112_)))))
                                  (_E8510385112_))))
                           (_E8509585154_
                            (lambda ()
                              (if (gx#stx-pair? _e8509385108_)
                                  (let ((_e8509785135_
                                         (gx#syntax-e _e8509385108_)))
                                    (let ((_hd8509885138_
                                           (##car _e8509785135_))
                                          (_tl8509985140_
                                           (##cdr _e8509785135_)))
                                      (if (and (gx#identifier? _hd8509885138_)
                                               (gx#core-identifier=?
                                                _hd8509885138_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8509985140_)
                                              (let ((_e8510085143_
                                                     (gx#syntax-e
                                                      _tl8509985140_)))
                                                (let ((_hd8510185146_
                                                       (##car _e8510085143_))
                                                      (_tl8510285148_
                                                       (##cdr _e8510085143_)))
                                                  (let ((_expr85151_
                                                         _hd8510185146_))
                                                    (if (gx#stx-null?
                                                         _tl8510285148_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr85151_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8509685131_))
                (_E8509685131_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8509685131_))
                                          (_E8509685131_))))
                                  (_E8509685131_))))
                           (_E8509485160_
                            (lambda ()
                              (let ((_id85158_ _e8509385108_))
                                (if (gx#identifier? _id85158_)
                                    (gx#core-bound-identifier?__%
                                     _id85158_
                                     gx#feature-binding?)
                                    (_E8509585154_))))))
                      (_E8509485160_))))
                 (_loop84995_
                  (lambda (_rest85025_)
                    (let* ((_e8502685034_ _rest85025_)
                           (_E8503285038_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8502685034_)))
                           (_E8502885042_
                            (lambda ()
                              (if (gx#stx-null? _e8502685034_)
                                  (if '#t '() (_E8503285038_))
                                  (_E8503285038_))))
                           (_E8502785088_
                            (lambda ()
                              (if (gx#stx-pair? _e8502685034_)
                                  (let ((_e8502985046_
                                         (gx#syntax-e _e8502685034_)))
                                    (let ((_hd8503085049_
                                           (##car _e8502985046_))
                                          (_tl8503185051_
                                           (##cdr _e8502985046_)))
                                      (let* ((_hd85054_ _hd8503085049_)
                                             (_rest85056_ _tl8503185051_))
                                        (if '#t
                                            (let* ((_e8505785064_ _hd85054_)
                                                   (_E8505985068_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8505785064_)))
                                                   (_E8505885084_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8505785064_)
                                                          (let ((_e8506085072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8505785064_)))
                    (let ((_hd8506185075_ (##car _e8506085072_))
                          (_tl8506285077_ (##cdr _e8506085072_)))
                      (let* ((_condition85080_ _hd8506185075_)
                             (_body85082_ _tl8506285077_))
                        (if '#t
                            (if (gx#stx-eq? _condition85080_ 'else)
                                (if (gx#stx-null? _rest85056_)
                                    _body85082_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx84992_
                                     _hd85054_))
                                (if (_satisfied?84994_ _condition85080_)
                                    _body85082_
                                    (_loop84995_ _rest85056_)))
                            (_E8505985068_)))))
                  (_E8505985068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8505885084_))
                                            (_E8502885042_)))))
                                  (_E8502885042_)))))
                      (_E8502785088_)))))
          (let* ((_e8499685003_ _stx84992_)
                 (_E8499885007_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8499685003_)))
                 (_E8499785021_
                  (lambda ()
                    (if (gx#stx-pair? _e8499685003_)
                        (let ((_e8499985011_ (gx#syntax-e _e8499685003_)))
                          (let ((_hd8500085014_ (##car _e8499985011_))
                                (_tl8500185016_ (##cdr _e8499985011_)))
                            (let ((_clauses85019_ _tl8500185016_))
                              (if (gx#stx-list? _clauses85019_)
                                  (gx#core-cons
                                   'begin
                                   (_loop84995_ _clauses85019_))
                                  (_E8499885007_)))))
                        (_E8499885007_)))))
            (_E8499785021_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx84935_ _rpath84936_)
        (let* ((_e8493784947_ _stx84935_)
               (_E8493984951_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8493784947_)))
               (_E8493884978_
                (lambda ()
                  (if (gx#stx-pair? _e8493784947_)
                      (let ((_e8494084955_ (gx#syntax-e _e8493784947_)))
                        (let ((_hd8494184958_ (##car _e8494084955_))
                              (_tl8494284960_ (##cdr _e8494084955_)))
                          (if (gx#stx-pair? _tl8494284960_)
                              (let ((_e8494384963_
                                     (gx#syntax-e _tl8494284960_)))
                                (let ((_hd8494484966_ (##car _e8494384963_))
                                      (_tl8494584968_ (##cdr _e8494384963_)))
                                  (let ((_path84971_ _hd8494484966_))
                                    (if (gx#stx-null? _tl8494584968_)
                                        (if (gx#stx-string? _path84971_)
                                            (let ((_rpath84976_
                                                   (let ((_$e84973_
                                                          _rpath84936_))
                                                     (if _$e84973_
                                                         _$e84973_
                                                         (gx#core-resolve-path__%
                                                          _path84971_
                                                          (gx#stx-source
                                                           _stx84935_))))))
                                              (if (member _rpath84976_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx84935_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath84976_))
                                                    (gx#stx-source
                                                     _stx84935_)))))
                                            (_E8493984951_))
                                        (_E8493984951_)))))
                              (_E8493984951_))))
                      (_E8493984951_)))))
          (_E8493884978_))))
    (define gx#core-expand-include%__0
      (lambda (_stx84985_)
        (let ((_rpath84987_ '#f))
          (gx#core-expand-include%__% _stx84985_ _rpath84987_))))
    (define gx#core-expand-include%
      (lambda _g86060_
        (let ((_g86059_ (##length _g86060_)))
          (cond ((##fx= _g86059_ 1)
                 (apply (lambda (_stx84985_)
                          (gx#core-expand-include%__0 _stx84985_))
                        _g86060_))
                ((##fx= _g86059_ 2)
                 (apply (lambda (_stx84989_ _rpath84990_)
                          (gx#core-expand-include%__% _stx84989_ _rpath84990_))
                        _g86060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g86060_))))))
    (define gx#core-apply-expander__%
      (lambda (_K84904_ _stx84905_ _method84906_)
        (if (procedure? _K84904_)
            (let ((_$e84908_ (gx#stx-source _stx84905_)))
              (if _$e84908_
                  ((lambda (_g8491084912_)
                     (gx#stx-wrap-source (_K84904_ _stx84905_) _g8491084912_))
                   _$e84908_)
                  (_K84904_ _stx84905_)))
            (let ((_$e84915_ (bound-method-ref _K84904_ _method84906_)))
              (if _$e84915_
                  ((lambda (_g8491784919_)
                     (gx#core-apply-expander__%
                      _g8491784919_
                      _stx84905_
                      _method84906_))
                   _$e84915_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx84905_
                   _method84906_))))))
    (define gx#core-apply-expander__0
      (lambda (_K84925_ _stx84926_)
        (let ((_method84928_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K84925_ _stx84926_ _method84928_))))
    (define gx#core-apply-expander
      (lambda _g86062_
        (let ((_g86061_ (##length _g86062_)))
          (cond ((##fx= _g86061_ 2)
                 (apply (lambda (_K84925_ _stx84926_)
                          (gx#core-apply-expander__0 _K84925_ _stx84926_))
                        _g86062_))
                ((##fx= _g86061_ 3)
                 (apply (lambda (_K84930_ _stx84931_ _method84932_)
                          (gx#core-apply-expander__%
                           _K84930_
                           _stx84931_
                           _method84932_))
                        _g86062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g86062_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self84900_ _stx84901_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx84901_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self84753_ _stx84754_)
        (let* ((_self8475584761_ _self84753_)
               (_E8475784765_
                (lambda () (error '"No clause matching" _self8475584761_)))
               (_K8475884770_
                (lambda (_K84768_)
                  (gx#core-apply-expander__0 _K84768_ _stx84754_))))
          (if (##structure-instance-of? _self8475584761_ 'gx#core-macro::t)
              (let* ((_e8475984773_
                      (##unchecked-structure-ref
                       _self8475584761_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84776_ _e8475984773_))
                (_K8475884770_ _K84776_))
              (_E8475784765_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self84606_ _stx84607_)
        (if (gx#sealed-syntax? _stx84607_)
            _stx84607_
            (let* ((_self8460884614_ _self84606_)
                   (_E8461084618_
                    (lambda () (error '"No clause matching" _self8460884614_)))
                   (_K8461184623_
                    (lambda (_K84621_)
                      (gx#core-apply-expander__0 _K84621_ _stx84607_))))
              (if (##structure-instance-of?
                   _self8460884614_
                   'gx#core-expander::t)
                  (let* ((_e8461284626_
                          (##unchecked-structure-ref
                           _self8460884614_
                           '1
                           gx#expander::t
                           '#f))
                         (_K84629_ _e8461284626_))
                    (_K8461184623_ _K84629_))
                  (_E8461084618_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self84468_ _stx84469_ _top?84470_)
        (if (_top?84470_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self84468_ _stx84469_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx84469_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self84475_ _stx84476_)
        (let ((_top?84478_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self84475_
           _stx84476_
           _top?84478_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g86064_
        (let ((_g86063_ (##length _g86064_)))
          (cond ((##fx= _g86063_ 2)
                 (apply (lambda (_self84475_ _stx84476_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self84475_
                           _stx84476_))
                        _g86064_))
                ((##fx= _g86063_ 3)
                 (apply (lambda (_self84480_ _stx84481_ _top?84482_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self84480_
                           _stx84481_
                           _top?84482_))
                        _g86064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g86064_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self84342_ _stx84343_)
        (gx#top-special-form::apply-macro-expander__%
         _self84342_
         _stx84343_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self84167_ _stx84168_)
        (let* ((_self8416984175_ _self84167_)
               (_E8417184179_
                (lambda () (error '"No clause matching" _self8416984175_)))
               (_K8417284212_
                (lambda (_id84182_)
                  (let* ((_e8418384190_ _stx84168_)
                         (_E8418584194_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8418384190_)))
                         (_E8418484208_
                          (lambda ()
                            (if (gx#stx-pair? _e8418384190_)
                                (let ((_e8418684198_
                                       (gx#syntax-e _e8418384190_)))
                                  (let ((_hd8418784201_ (##car _e8418684198_))
                                        (_tl8418884203_ (##cdr _e8418684198_)))
                                    (let ((_body84206_ _tl8418884203_))
                                      (if '#t
                                          (gx#core-cons _id84182_ _body84206_)
                                          (_E8418584194_)))))
                                (_E8418584194_)))))
                    (_E8418484208_)))))
          (if (##structure-instance-of?
               _self8416984175_
               'gx#rename-macro-expander::t)
              (let* ((_e8417384215_
                      (##unchecked-structure-ref
                       _self8416984175_
                       '1
                       gx#expander::t
                       '#f))
                     (_id84218_ _e8417384215_))
                (_K8417284212_ _id84218_))
              (_E8417184179_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self83993_ _stx83994_ _method83995_)
        (let* ((_self8399684004_ _self83993_)
               (_E8399884008_
                (lambda () (error '"No clause matching" _self8399684004_)))
               (_K8399984015_
                (lambda (_phi84011_ _ctx84012_ _K84013_)
                  (gx#core-apply-user-macro
                   _K84013_
                   _stx83994_
                   _ctx84012_
                   _phi84011_
                   _method83995_))))
          (if (##structure-instance-of? _self8399684004_ 'gx#macro-expander::t)
              (let* ((_e8400084018_
                      (##unchecked-structure-ref
                       _self8399684004_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84021_ _e8400084018_)
                     (_e8400184023_
                      (##unchecked-structure-ref
                       _self8399684004_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx84026_ _e8400184023_)
                     (_e8400284028_
                      (##unchecked-structure-ref
                       _self8399684004_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi84031_ _e8400284028_))
                (_K8399984015_ _phi84031_ _ctx84026_ _K84021_))
              (_E8399884008_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self84036_ _stx84037_)
        (let ((_method84039_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self84036_
           _stx84037_
           _method84039_))))
    (define gx#core-apply-user-expander
      (lambda _g86066_
        (let ((_g86065_ (##length _g86066_)))
          (cond ((##fx= _g86065_ 2)
                 (apply (lambda (_self84036_ _stx84037_)
                          (gx#core-apply-user-expander__0
                           _self84036_
                           _stx84037_))
                        _g86066_))
                ((##fx= _g86065_ 3)
                 (apply (lambda (_self84041_ _stx84042_ _method84043_)
                          (gx#core-apply-user-expander__%
                           _self84041_
                           _stx84042_
                           _method84043_))
                        _g86066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g86066_))))))
    (define gx#core-apply-user-macro
      (lambda (_K83983_ _stx83984_ _ctx83985_ _phi83986_ _method83987_)
        (let ((_mark83989_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx83985_
                _phi83986_
                _stx83984_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K83983_
               (gx#stx-apply-mark _stx83984_ _mark83989_)
               _method83987_)
              _mark83989_))
           gx#current-expander-marks
           (cons _mark83989_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx83834_ _phi83835_ _ctx83836_)
        (let _lp83838_ ((_bind83840_
                         (gx#core-resolve-identifier__%
                          _stx83834_
                          _phi83835_
                          _ctx83836_)))
          (if (##structure-direct-instance-of?
               _bind83840_
               'gx#import-binding::t)
              (_lp83838_
               (##unchecked-structure-ref
                _bind83840_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind83840_
                   'gx#alias-binding::t)
                  (_lp83838_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind83840_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi83835_
                    _ctx83836_))
                  _bind83840_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx83845_)
        (let* ((_phi83847_ (gx#current-expander-phi))
               (_ctx83849_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83845_ _phi83847_ _ctx83849_))))
    (define gx#resolve-identifier__1
      (lambda (_stx83851_ _phi83852_)
        (let ((_ctx83854_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83851_ _phi83852_ _ctx83854_))))
    (define gx#resolve-identifier
      (lambda _g86068_
        (let ((_g86067_ (##length _g86068_)))
          (cond ((##fx= _g86067_ 1)
                 (apply (lambda (_stx83845_)
                          (gx#resolve-identifier__0 _stx83845_))
                        _g86068_))
                ((##fx= _g86067_ 2)
                 (apply (lambda (_stx83851_ _phi83852_)
                          (gx#resolve-identifier__1 _stx83851_ _phi83852_))
                        _g86068_))
                ((##fx= _g86067_ 3)
                 (apply (lambda (_stx83856_ _phi83857_ _ctx83858_)
                          (gx#resolve-identifier__%
                           _stx83856_
                           _phi83857_
                           _ctx83858_))
                        _g86068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g86068_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx83792_ _val83793_ _rebind?83794_ _phi83795_ _ctx83796_)
        (let ((_rebind?83798_
               (if (not _rebind?83794_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?83794_) _rebind?83794_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx83792_)
           _val83793_
           _rebind?83798_
           _phi83795_
           _ctx83796_))))
    (define gx#bind-identifier!__0
      (lambda (_stx83803_ _val83804_)
        (let* ((_rebind?83806_ '#f)
               (_phi83808_ (gx#current-expander-phi))
               (_ctx83810_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83803_
           _val83804_
           _rebind?83806_
           _phi83808_
           _ctx83810_))))
    (define gx#bind-identifier!__1
      (lambda (_stx83812_ _val83813_ _rebind?83814_)
        (let* ((_phi83816_ (gx#current-expander-phi))
               (_ctx83818_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83812_
           _val83813_
           _rebind?83814_
           _phi83816_
           _ctx83818_))))
    (define gx#bind-identifier!__2
      (lambda (_stx83820_ _val83821_ _rebind?83822_ _phi83823_)
        (let ((_ctx83825_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83820_
           _val83821_
           _rebind?83822_
           _phi83823_
           _ctx83825_))))
    (define gx#bind-identifier!
      (lambda _g86070_
        (let ((_g86069_ (##length _g86070_)))
          (cond ((##fx= _g86069_ 2)
                 (apply (lambda (_stx83803_ _val83804_)
                          (gx#bind-identifier!__0 _stx83803_ _val83804_))
                        _g86070_))
                ((##fx= _g86069_ 3)
                 (apply (lambda (_stx83812_ _val83813_ _rebind?83814_)
                          (gx#bind-identifier!__1
                           _stx83812_
                           _val83813_
                           _rebind?83814_))
                        _g86070_))
                ((##fx= _g86069_ 4)
                 (apply (lambda (_stx83820_
                                 _val83821_
                                 _rebind?83822_
                                 _phi83823_)
                          (gx#bind-identifier!__2
                           _stx83820_
                           _val83821_
                           _rebind?83822_
                           _phi83823_))
                        _g86070_))
                ((##fx= _g86069_ 5)
                 (apply (lambda (_stx83827_
                                 _val83828_
                                 _rebind?83829_
                                 _phi83830_
                                 _ctx83831_)
                          (gx#bind-identifier!__%
                           _stx83827_
                           _val83828_
                           _rebind?83829_
                           _phi83830_
                           _ctx83831_))
                        _g86070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g86070_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx83764_ _phi83765_ _ctx83766_)
        (let _lp83768_ ((_e83770_ _stx83764_)
                        (_marks83771_ (gx#current-expander-marks)))
          (if (symbol? _e83770_)
              (gx#core-resolve-binding
               _e83770_
               _phi83765_
               _phi83765_
               _ctx83766_
               (reverse _marks83771_))
              (if (gx#identifier-quote? _e83770_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e83770_ '1 gx#AST::t '#f)
                   _phi83765_
                   '0
                   (##unchecked-structure-ref
                    _e83770_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e83770_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e83770_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e83770_ '1 gx#AST::t '#f)
                       _phi83765_
                       _phi83765_
                       _ctx83766_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e83770_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks83771_))
                      (if (##structure-direct-instance-of?
                           _e83770_
                           'gx#syntax-wrap::t)
                          (_lp83768_
                           (##unchecked-structure-ref
                            _e83770_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e83770_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks83771_))
                          (if (##structure-instance-of?
                               _e83770_
                               'gerbil#AST::t)
                              (_lp83768_
                               (##unchecked-structure-ref
                                _e83770_
                                '1
                                gx#AST::t
                                '#f)
                               _marks83771_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx83764_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx83776_)
        (let* ((_phi83778_ (gx#current-expander-phi))
               (_ctx83780_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83776_ _phi83778_ _ctx83780_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx83782_ _phi83783_)
        (let ((_ctx83785_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83782_ _phi83783_ _ctx83785_))))
    (define gx#core-resolve-identifier
      (lambda _g86072_
        (let ((_g86071_ (##length _g86072_)))
          (cond ((##fx= _g86071_ 1)
                 (apply (lambda (_stx83776_)
                          (gx#core-resolve-identifier__0 _stx83776_))
                        _g86072_))
                ((##fx= _g86071_ 2)
                 (apply (lambda (_stx83782_ _phi83783_)
                          (gx#core-resolve-identifier__1
                           _stx83782_
                           _phi83783_))
                        _g86072_))
                ((##fx= _g86071_ 3)
                 (apply (lambda (_stx83787_ _phi83788_ _ctx83789_)
                          (gx#core-resolve-identifier__%
                           _stx83787_
                           _phi83788_
                           _ctx83789_))
                        _g86072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g86072_))))))
    (define gx#core-resolve-binding
      (lambda (_id83677_ _phi83678_ _src-phi83679_ _ctx83680_ _marks83681_)
        (letrec ((_resolve83683_
                  (lambda (_ctx83751_ _src-phi83752_ _key83753_)
                    (let _lp83755_ ((_ctx83757_
                                     (gx#core-context-shift
                                      _ctx83751_
                                      _phi83678_))
                                    (_dphi83758_
                                     (fx- _phi83678_ _src-phi83752_)))
                      (let ((_$e83760_
                             (gx#core-context-resolve _ctx83757_ _key83753_)))
                        (if _$e83760_
                            (values _$e83760_)
                            (if (fxzero? _dphi83758_)
                                '#f
                                (if (fxpositive? _dphi83758_)
                                    (_lp83755_
                                     (gx#core-context-shift _ctx83757_ '-1)
                                     (fx- _dphi83758_ '1))
                                    (_lp83755_
                                     (gx#core-context-shift _ctx83757_ '1)
                                     (fx+ _dphi83758_ '1))))))))))
          (let _lp83685_ ((_ctx83687_ _ctx83680_)
                          (_src-phi83688_ _src-phi83679_)
                          (_rest83689_ _marks83681_))
            (let* ((_rest8369083698_ _rest83689_)
                   (_else8369283706_
                    (lambda ()
                      (_resolve83683_ _ctx83687_ _src-phi83688_ _id83677_)))
                   (_K8369483739_
                    (lambda (_rest83709_ _hd83710_)
                      (let* ((_hd8371183717_ _hd83710_)
                             (_E8371383721_
                              (lambda ()
                                (error '"No clause matching" _hd8371183717_)))
                             (_K8371483731_
                              (lambda (_subst83724_)
                                (let ((_$e83728_
                                       (let ((_key83726_
                                              (if _subst83724_
                                                  (hash-get
                                                   _subst83724_
                                                   _id83677_)
                                                  '#f)))
                                         (if _key83726_
                                             (_resolve83683_
                                              _ctx83687_
                                              _src-phi83688_
                                              _key83726_)
                                             '#f))))
                                  (if _$e83728_
                                      _$e83728_
                                      (_lp83685_
                                       (##unchecked-structure-ref
                                        _hd83710_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd83710_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest83709_))))))
                        (if (##structure-instance-of?
                             _hd8371183717_
                             'gx#expander-mark::t)
                            (let* ((_e8371583734_
                                    (##unchecked-structure-ref
                                     _hd8371183717_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst83737_ _e8371583734_))
                              (_K8371483731_ _subst83737_))
                            (_E8371383721_))))))
              (if (##pair? _rest8369083698_)
                  (let ((_hd8369583742_ (##car _rest8369083698_))
                        (_tl8369683744_ (##cdr _rest8369083698_)))
                    (let* ((_hd83747_ _hd8369583742_)
                           (_rest83749_ _tl8369683744_))
                      (_K8369483739_ _rest83749_ _hd83747_)))
                  (_else8369283706_)))))))
    (define gx#core-bind!__%
      (lambda (_key83553_ _val83554_ _rebind?83555_ _phi83556_ _ctx83557_)
        (letrec ((_update-binding83559_
                  (lambda (_xval83630_)
                    (if (or (_rebind?83555_ _ctx83557_ _xval83630_ _val83554_)
                            (and (##structure-direct-instance-of?
                                  _xval83630_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval83630_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val83554_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val83554_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval83630_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val83554_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val83554_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval83630_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val83554_
                        (if (and (##structure-direct-instance-of?
                                  _val83554_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val83554_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval83630_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val83554_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval83630_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval83630_
                            (if (and (##structure-direct-instance-of?
                                      _val83554_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval83630_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key83553_
                                 (cons (##unchecked-structure-ref
                                        _val83554_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val83554_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval83630_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval83630_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval83630_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval83630_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key83553_
                                 _val83554_
                                 _xval83630_))))))
                 (_gensubst83560_
                  (lambda (_subst83625_ _id83626_)
                    (let ((_eid83628_
                           (gensym (if (uninterned-symbol? _id83626_)
                                       '%
                                       _id83626_))))
                      (hash-put! _subst83625_ _id83626_ _eid83628_)
                      _eid83628_)))
                 (_subst!83561_
                  (lambda (_key83563_)
                    (let* ((_key8356483572_ _key83563_)
                           (_else8356683580_ (lambda () _key83563_))
                           (_K8356883613_
                            (lambda (_mark83583_ _id83584_)
                              (let* ((_mark8358583591_ _mark83583_)
                                     (_E8358783595_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8358583591_)))
                                     (_K8358883605_
                                      (lambda (_subst83598_)
                                        (if (not _subst83598_)
                                            (let ((_subst83600_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark83583_
                                               _subst83600_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst83560_
                                               _subst83600_
                                               _id83584_))
                                            (let ((_$e83602_
                                                   (hash-get
                                                    _subst83598_
                                                    _id83584_)))
                                              (if _$e83602_
                                                  (values _$e83602_)
                                                  (_gensubst83560_
                                                   _subst83598_
                                                   _id83584_)))))))
                                (if (##structure-instance-of?
                                     _mark8358583591_
                                     'gx#expander-mark::t)
                                    (let* ((_e8358983608_
                                            (##unchecked-structure-ref
                                             _mark8358583591_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst83611_ _e8358983608_))
                                      (_K8358883605_ _subst83611_))
                                    (_E8358783595_))))))
                      (if (##pair? _key8356483572_)
                          (let ((_hd8356983616_ (##car _key8356483572_))
                                (_tl8357083618_ (##cdr _key8356483572_)))
                            (let* ((_id83621_ _hd8356983616_)
                                   (_mark83623_ _tl8357083618_))
                              (_K8356883613_ _mark83623_ _id83621_)))
                          (_else8356683580_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx83557_ _phi83556_)
           (_subst!83561_ _key83553_)
           _val83554_
           _update-binding83559_))))
    (define gx#core-bind!__0
      (lambda (_key83647_ _val83648_)
        (let* ((_rebind?83650_ false)
               (_phi83652_ (gx#current-expander-phi))
               (_ctx83654_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83647_
           _val83648_
           _rebind?83650_
           _phi83652_
           _ctx83654_))))
    (define gx#core-bind!__1
      (lambda (_key83656_ _val83657_ _rebind?83658_)
        (let* ((_phi83660_ (gx#current-expander-phi))
               (_ctx83662_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83656_
           _val83657_
           _rebind?83658_
           _phi83660_
           _ctx83662_))))
    (define gx#core-bind!__2
      (lambda (_key83664_ _val83665_ _rebind?83666_ _phi83667_)
        (let ((_ctx83669_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83664_
           _val83665_
           _rebind?83666_
           _phi83667_
           _ctx83669_))))
    (define gx#core-bind!
      (lambda _g86074_
        (let ((_g86073_ (##length _g86074_)))
          (cond ((##fx= _g86073_ 2)
                 (apply (lambda (_key83647_ _val83648_)
                          (gx#core-bind!__0 _key83647_ _val83648_))
                        _g86074_))
                ((##fx= _g86073_ 3)
                 (apply (lambda (_key83656_ _val83657_ _rebind?83658_)
                          (gx#core-bind!__1
                           _key83656_
                           _val83657_
                           _rebind?83658_))
                        _g86074_))
                ((##fx= _g86073_ 4)
                 (apply (lambda (_key83664_
                                 _val83665_
                                 _rebind?83666_
                                 _phi83667_)
                          (gx#core-bind!__2
                           _key83664_
                           _val83665_
                           _rebind?83666_
                           _phi83667_))
                        _g86074_))
                ((##fx= _g86073_ 5)
                 (apply (lambda (_key83671_
                                 _val83672_
                                 _rebind?83673_
                                 _phi83674_
                                 _ctx83675_)
                          (gx#core-bind!__%
                           _key83671_
                           _val83672_
                           _rebind?83673_
                           _phi83674_
                           _ctx83675_))
                        _g86074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g86074_))))))
    (define gx#core-identifier-key
      (lambda (_stx83487_)
        (if (symbol? _stx83487_)
            (let* ((_g8348883496_ (gx#current-expander-marks))
                   (_else8349083504_ (lambda () _stx83487_))
                   (_K8349283509_
                    (lambda (_hd83507_) (cons _stx83487_ _hd83507_))))
              (if (##pair? _g8348883496_)
                  (let* ((_hd8349383512_ (##car _g8348883496_))
                         (_hd83515_ _hd8349383512_))
                    (_K8349283509_ _hd83515_))
                  (_else8349083504_)))
            (if (gx#identifier? _stx83487_)
                (let* ((_id83517_ (gx#syntax-local-unwrap _stx83487_))
                       (_eid83519_ (gx#stx-e _id83517_))
                       (_marks83521_ (gx#stx-identifier-marks* _id83517_)))
                  (let* ((_marks8352383531_ _marks83521_)
                         (_else8352583539_ (lambda () _eid83519_))
                         (_K8352783544_
                          (lambda (_hd83542_) (cons _eid83519_ _hd83542_))))
                    (if (##pair? _marks8352383531_)
                        (let* ((_hd8352883547_ (##car _marks8352383531_))
                               (_hd83550_ _hd8352883547_))
                          (_K8352783544_ _hd83550_))
                        (_else8352583539_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx83487_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx83432_ _phi83433_)
        (letrec ((_make-phi83435_
                  (lambda (_super83485_)
                    (let ((__obj86045
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj86045
                       (gensym 'phi)
                       _super83485_)
                      __obj86045)))
                 (_make-phi/up83436_
                  (lambda (_ctx83480_ _super83481_)
                    (let ((_ctx+183483_ (_make-phi83435_ _super83481_)))
                      (##unchecked-structure-set!
                       _ctx83480_
                       _ctx+183483_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+183483_
                       _ctx83480_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+183483_)))
                 (_make-phi/down83437_
                  (lambda (_ctx83475_ _super83476_)
                    (let ((_ctx-183478_ (_make-phi83435_ _super83476_)))
                      (##unchecked-structure-set!
                       _ctx-183478_
                       _ctx83475_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx83475_
                       _ctx-183478_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-183478_)))
                 (_shift83438_
                  (lambda (_ctx83459_
                           _delta83460_
                           _make-delta-context83461_
                           _phi83462_
                           _K83463_)
                    (let ((_$e83465_
                           (##unchecked-structure-ref
                            _ctx83459_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e83465_
                          ((lambda (_super83468_)
                             (let* ((_super83470_
                                     (_K83463_ _super83468_ _delta83460_))
                                    (_ctx+d83472_
                                     (_make-delta-context83461_
                                      _ctx83459_
                                      _super83470_)))
                               (_K83463_
                                _ctx+d83472_
                                (fx- _phi83462_ _delta83460_))))
                           _$e83465_)
                          (error '"Bad context" _ctx83459_))))))
          (let _K83440_ ((_ctx83442_ _ctx83432_) (_phi83443_ _phi83433_))
            (if (fxzero? _phi83443_)
                _ctx83442_
                (if (##structure-instance-of? _ctx83442_ 'gx#context-phi::t)
                    (if (fxpositive? _phi83443_)
                        (let ((_$e83445_
                               (##unchecked-structure-ref
                                _ctx83442_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e83445_
                              ((lambda (_g8344783449_)
                                 (_K83440_ _g8344783449_ (fx- _phi83443_ '1)))
                               _$e83445_)
                              (_shift83438_
                               _ctx83442_
                               '1
                               _make-phi/up83436_
                               _phi83443_
                               _K83440_)))
                        (let ((_$e83452_
                               (##unchecked-structure-ref
                                _ctx83442_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e83452_
                              ((lambda (_g8345483456_)
                                 (_K83440_ _g8345483456_ (fx+ _phi83443_ '1)))
                               _$e83452_)
                              (_shift83438_
                               _ctx83442_
                               '-1
                               _make-phi/down83437_
                               _phi83443_
                               _K83440_))))
                    _ctx83442_))))))
    (define gx#core-context-get
      (lambda (_ctx83429_ _key83430_)
        (hash-get
         (##unchecked-structure-ref _ctx83429_ '2 gx#expander-context::t '#f)
         _key83430_)))
    (define gx#core-context-put!
      (lambda (_ctx83425_ _key83426_ _val83427_)
        (hash-put!
         (##unchecked-structure-ref _ctx83425_ '2 gx#expander-context::t '#f)
         _key83426_
         _val83427_)))
    (define gx#core-context-resolve
      (lambda (_ctx83412_ _key83413_)
        (let _lp83415_ ((_ctx83417_ _ctx83412_))
          (let ((_$e83419_ (gx#core-context-get _ctx83417_ _key83413_)))
            (if _$e83419_
                (values _$e83419_)
                (let ((_$e83422_
                       (if (##structure-instance-of?
                            _ctx83417_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx83417_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e83422_ (_lp83415_ _$e83422_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx83402_ _key83403_ _val83404_ _rebind83405_)
        (let ((_$e83407_ (gx#core-context-get _ctx83402_ _key83403_)))
          (if _$e83407_
              ((lambda (_xval83410_)
                 (gx#core-context-put!
                  _ctx83402_
                  _key83403_
                  (_rebind83405_ _xval83410_)))
               _$e83407_)
              (gx#core-context-put! _ctx83402_ _key83403_ _val83404_)))))
    (define gx#core-context-top__%
      (lambda (_ctx83380_ _stop?83381_)
        (let _lp83383_ ((_ctx83385_ _ctx83380_))
          (if (_stop?83381_ _ctx83385_)
              _ctx83385_
              (if (##structure-instance-of? _ctx83385_ 'gx#context-phi::t)
                  (_lp83383_
                   (##unchecked-structure-ref
                    _ctx83385_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx83391_ (gx#current-expander-context))
               (_stop?83393_ gx#top-context?))
          (gx#core-context-top__% _ctx83391_ _stop?83393_))))
    (define gx#core-context-top__1
      (lambda (_ctx83395_)
        (let ((_stop?83397_ gx#top-context?))
          (gx#core-context-top__% _ctx83395_ _stop?83397_))))
    (define gx#core-context-top
      (lambda _g86076_
        (let ((_g86075_ (##length _g86076_)))
          (cond ((##fx= _g86075_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g86076_))
                ((##fx= _g86075_ 1)
                 (apply (lambda (_ctx83395_)
                          (gx#core-context-top__1 _ctx83395_))
                        _g86076_))
                ((##fx= _g86075_ 2)
                 (apply (lambda (_ctx83399_ _stop?83400_)
                          (gx#core-context-top__% _ctx83399_ _stop?83400_))
                        _g86076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g86076_))))))
    (define gx#core-context-root__%
      (lambda (_ctx83365_)
        (let _lp83367_ ((_ctx83369_ _ctx83365_))
          (if (##structure-instance-of? _ctx83369_ 'gx#context-phi::t)
              (_lp83367_
               (##unchecked-structure-ref _ctx83369_ '3 gx#phi-context::t '#f))
              _ctx83369_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx83375_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx83375_))))
    (define gx#core-context-root
      (lambda _g86078_
        (let ((_g86077_ (##length _g86078_)))
          (cond ((##fx= _g86077_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g86078_))
                ((##fx= _g86077_ 1)
                 (apply (lambda (_ctx83377_)
                          (gx#core-context-root__% _ctx83377_))
                        _g86078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g86078_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx83346_ . __8334383347_)
        (let ((_$e83350_ (gx#current-expander-allow-rebind?)))
          (if _$e83350_
              _$e83350_
              (if (##structure-instance-of? _ctx83346_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx83346_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx83346_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx83357_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx83357_))))
    (define gx#core-context-rebind?
      (lambda _g86080_
        (let ((_g86079_ (##length _g86080_)))
          (cond ((##fx= _g86079_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g86080_))
                ((##fx= _g86079_ 1)
                 (apply (lambda (_ctx83359_)
                          (gx#core-context-rebind?__% _ctx83359_))
                        _g86080_))
                ((##fx>= _g86079_ 1)
                 (apply gx#core-context-rebind?__% _g86080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g86080_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx83329_)
        (let ((_$e83331_ (gx#core-context-top__1 _ctx83329_)))
          (if _$e83331_
              ((lambda (_ctx83334_)
                 (if (##structure-instance-of?
                      _ctx83334_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx83334_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e83331_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx83340_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx83340_))))
    (define gx#core-context-namespace
      (lambda _g86082_
        (let ((_g86081_ (##length _g86082_)))
          (cond ((##fx= _g86081_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g86082_))
                ((##fx= _g86081_ 1)
                 (apply (lambda (_ctx83342_)
                          (gx#core-context-namespace__% _ctx83342_))
                        _g86082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g86082_))))))
    (define gx#expander-binding?__%
      (lambda (_bind83315_ _is?83316_)
        (if (##structure-direct-instance-of? _bind83315_ 'gx#syntax-binding::t)
            (_is?83316_
             (##unchecked-structure-ref
              _bind83315_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind83321_)
        (let ((_is?83323_ gx#expander?))
          (gx#expander-binding?__% _bind83321_ _is?83323_))))
    (define gx#expander-binding?
      (lambda _g86084_
        (let ((_g86083_ (##length _g86084_)))
          (cond ((##fx= _g86083_ 1)
                 (apply (lambda (_bind83321_)
                          (gx#expander-binding?__0 _bind83321_))
                        _g86084_))
                ((##fx= _g86083_ 2)
                 (apply (lambda (_bind83325_ _is?83326_)
                          (gx#expander-binding?__% _bind83325_ _is?83326_))
                        _g86084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g86084_))))))
    (define gx#core-expander-binding?
      (lambda (_bind83312_)
        (gx#expander-binding?__% _bind83312_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind83310_)
        (gx#expander-binding?__% _bind83310_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind83304_)
        (letrec ((_direct-special-form?83306_
                  (lambda (_obj83308_)
                    (##structure-direct-instance-of?
                     _obj83308_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind83304_ _direct-special-form?83306_))))
    (define gx#special-form-binding?
      (lambda (_bind83302_)
        (gx#expander-binding?__% _bind83302_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind83293_)
        (letrec ((_feature?83295_
                  (lambda (_e83297_)
                    (let ((_$e83299_
                           (##structure-instance-of?
                            _e83297_
                            'gx#feature-expander::t)))
                      (if _$e83299_
                          _$e83299_
                          (##structure-instance-of?
                           _e83297_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind83293_ _feature?83295_))))
    (define gx#private-feature-binding?
      (lambda (_bind83291_)
        (gx#expander-binding?__% _bind83291_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id83278_ _bound?83279_)
        (if (gx#identifier? _id83278_)
            (_bound?83279_ (gx#resolve-identifier__0 _id83278_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id83284_)
        (let ((_bound?83286_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id83284_ _bound?83286_))))
    (define gx#core-bound-identifier?
      (lambda _g86086_
        (let ((_g86085_ (##length _g86086_)))
          (cond ((##fx= _g86085_ 1)
                 (apply (lambda (_id83284_)
                          (gx#core-bound-identifier?__0 _id83284_))
                        _g86086_))
                ((##fx= _g86085_ 2)
                 (apply (lambda (_id83288_ _bound?83289_)
                          (gx#core-bound-identifier?__%
                           _id83288_
                           _bound?83289_))
                        _g86086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g86086_))))))
    (define gx#core-identifier=?
      (lambda (_x83268_ _y83269_)
        (letrec ((_y=?83271_
                  (lambda (_xid83275_)
                    ((if (list? _y83269_) memq eq?) _xid83275_ _y83269_))))
          (let ((_bind83273_ (gx#resolve-identifier__0 _x83268_)))
            (if (##structure-instance-of? _bind83273_ 'gx#binding::t)
                (_y=?83271_
                 (##unchecked-structure-ref _bind83273_ '1 gx#binding::t '#f))
                (_y=?83271_ (gx#stx-e _x83268_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e83266_)
        (if (interned-symbol? _e83266_)
            (string-index__0 (symbol->string _e83266_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx83221_ _src83222_ _ctx83223_ _marks83224_)
        (if (##structure? _stx83221_)
            (let ((_$e83226_ (gx#sealed-syntax-unwrap _stx83221_)))
              (if _$e83226_
                  (values _$e83226_)
                  (if (gx#identifier? _stx83221_)
                      (let ((_id83229_
                             (gx#stx-unwrap__% _stx83221_ _marks83224_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id83229_ '1 gx#AST::t '#f)
                         (let ((_$e83231_
                                (##unchecked-structure-ref
                                 _id83229_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e83231_ _$e83231_ _src83222_))
                         _ctx83223_
                         (##unchecked-structure-ref
                          _id83229_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx83221_)
                       (let ((_$e83234_ (gx#stx-source _stx83221_)))
                         (if _$e83234_ _$e83234_ _src83222_))
                       _ctx83223_
                       (reverse _marks83224_)))))
            (##structure
             gx#syntax-quote::t
             _stx83221_
             _src83222_
             _ctx83223_
             (reverse _marks83224_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx83240_)
        (let* ((_src83242_ '#f)
               (_ctx83244_ (gx#current-expander-context))
               (_marks83246_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83240_
           _src83242_
           _ctx83244_
           _marks83246_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx83248_ _src83249_)
        (let* ((_ctx83251_ (gx#current-expander-context))
               (_marks83253_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83248_
           _src83249_
           _ctx83251_
           _marks83253_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx83255_ _src83256_ _ctx83257_)
        (let ((_marks83259_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83255_
           _src83256_
           _ctx83257_
           _marks83259_))))
    (define gx#core-quote-syntax
      (lambda _g86088_
        (let ((_g86087_ (##length _g86088_)))
          (cond ((##fx= _g86087_ 1)
                 (apply (lambda (_stx83240_)
                          (gx#core-quote-syntax__0 _stx83240_))
                        _g86088_))
                ((##fx= _g86087_ 2)
                 (apply (lambda (_stx83248_ _src83249_)
                          (gx#core-quote-syntax__1 _stx83248_ _src83249_))
                        _g86088_))
                ((##fx= _g86087_ 3)
                 (apply (lambda (_stx83255_ _src83256_ _ctx83257_)
                          (gx#core-quote-syntax__2
                           _stx83255_
                           _src83256_
                           _ctx83257_))
                        _g86088_))
                ((##fx= _g86087_ 4)
                 (apply (lambda (_stx83261_ _src83262_ _ctx83263_ _marks83264_)
                          (gx#core-quote-syntax__%
                           _stx83261_
                           _src83262_
                           _ctx83263_
                           _marks83264_))
                        _g86088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g86088_))))))
    (define gx#core-cons
      (lambda (_hd83217_ _tl83218_)
        (cons (gx#core-quote-syntax__0 _hd83217_) _tl83218_)))
    (define gx#core-list
      (lambda (_hd83214_ . _rest83215_)
        (cons (gx#core-quote-syntax__0 _hd83214_) _rest83215_)))
    (define gx#core-cons*
      (lambda (_hd83211_ . _rest83212_)
        (apply cons* (gx#core-quote-syntax__0 _hd83211_) _rest83212_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path83185_ _rel83186_)
        (let ((_path83198_ (gx#stx-e _stx-path83185_))
              (_reldir83199_
               (let _lp83188_ ((_relsrc83190_
                                (let ((_$e83195_
                                       (gx#stx-source _stx-path83185_)))
                                  (if _$e83195_ _$e83195_ _rel83186_))))
                 (if (##structure-instance-of? _relsrc83190_ 'gerbil#AST::t)
                     (_lp83188_
                      (let ((_$e83192_ (gx#stx-source _relsrc83190_)))
                        (if _$e83192_ _$e83192_ (gx#stx-e _relsrc83190_))))
                     (if (source-location-path? _relsrc83190_)
                         (path-directory (source-location-path _relsrc83190_))
                         (if (string? _relsrc83190_)
                             (path-directory _relsrc83190_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path83198_ (path-normalize _reldir83199_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path83204_)
        (let ((_rel83206_ '#f))
          (gx#core-resolve-path__% _stx-path83204_ _rel83206_))))
    (define gx#core-resolve-path
      (lambda _g86090_
        (let ((_g86089_ (##length _g86090_)))
          (cond ((##fx= _g86089_ 1)
                 (apply (lambda (_stx-path83204_)
                          (gx#core-resolve-path__0 _stx-path83204_))
                        _g86090_))
                ((##fx= _g86089_ 2)
                 (apply (lambda (_stx-path83208_ _rel83209_)
                          (gx#core-resolve-path__% _stx-path83208_ _rel83209_))
                        _g86090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g86090_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr83141_ _ctx83142_)
        (let* ((_repr8314383150_ _repr83141_)
               (_E8314583154_
                (lambda () (error '"No clause matching" _repr8314383150_)))
               (_K8314683162_
                (lambda (_subs83157_ _phi83158_)
                  (let ((_subst83160_
                         (if (not (null? _subs83157_))
                             (list->hash-table-eq _subs83157_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst83160_
                     _ctx83142_
                     _phi83158_
                     '#f)))))
          (if (##pair? _repr8314383150_)
              (let ((_hd8314783165_ (##car _repr8314383150_))
                    (_tl8314883167_ (##cdr _repr8314383150_)))
                (let* ((_phi83170_ _hd8314783165_)
                       (_subs83172_ _tl8314883167_))
                  (_K8314683162_ _subs83172_ _phi83170_)))
              (_E8314583154_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr83177_)
        (let ((_ctx83179_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr83177_ _ctx83179_))))
    (define gx#core-deserialize-mark
      (lambda _g86092_
        (let ((_g86091_ (##length _g86092_)))
          (cond ((##fx= _g86091_ 1)
                 (apply (lambda (_repr83177_)
                          (gx#core-deserialize-mark__0 _repr83177_))
                        _g86092_))
                ((##fx= _g86091_ 2)
                 (apply (lambda (_repr83181_ _ctx83182_)
                          (gx#core-deserialize-mark__% _repr83181_ _ctx83182_))
                        _g86092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g86092_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx83138_)
        (gx#stx-rewrap _stx83138_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx83136_)
        (gx#stx-unwrap__% _stx83136_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx83106_)
        (let* ((_g8310783115_ (gx#current-expander-marks))
               (_else8310983123_ (lambda () _stx83106_))
               (_K8311183128_
                (lambda (_hd83126_) (gx#stx-apply-mark _stx83106_ _hd83126_))))
          (if (##pair? _g8310783115_)
              (let* ((_hd8311283131_ (##car _g8310783115_))
                     (_hd83134_ _hd8311283131_))
                (_K8311183128_ _hd83134_))
              (_else8310983123_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx83091_ _E83092_)
        (let ((_bind83094_ (gx#resolve-identifier__0 _stx83091_)))
          (if (##structure-direct-instance-of?
               _bind83094_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind83094_
               '4
               gx#syntax-binding::t
               '#f)
              (_E83092_ _stx83091_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx83099_)
        (let ((_E83101_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx83099_ _E83101_))))
    (define gx#syntax-local-e
      (lambda _g86094_
        (let ((_g86093_ (##length _g86094_)))
          (cond ((##fx= _g86093_ 1)
                 (apply (lambda (_stx83099_) (gx#syntax-local-e__0 _stx83099_))
                        _g86094_))
                ((##fx= _g86093_ 2)
                 (apply (lambda (_stx83103_ _E83104_)
                          (gx#syntax-local-e__% _stx83103_ _E83104_))
                        _g86094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g86094_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx83075_ _E83076_)
        (let ((_e83078_ (gx#syntax-local-e__% _stx83075_ _E83076_)))
          (if (##structure-instance-of? _e83078_ 'gx#expander::t)
              (##structure-ref _e83078_ '1 gx#expander::t '#f)
              _e83078_))))
    (define gx#syntax-local-value__0
      (lambda (_stx83083_)
        (let ((_E83085_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx83083_ _E83085_))))
    (define gx#syntax-local-value
      (lambda _g86096_
        (let ((_g86095_ (##length _g86096_)))
          (cond ((##fx= _g86095_ 1)
                 (apply (lambda (_stx83083_)
                          (gx#syntax-local-value__0 _stx83083_))
                        _g86096_))
                ((##fx= _g86095_ 2)
                 (apply (lambda (_stx83087_ _E83088_)
                          (gx#syntax-local-value__% _stx83087_ _E83088_))
                        _g86096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g86096_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx83072_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx83072_)))))
