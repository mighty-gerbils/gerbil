(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710781149)
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
      (lambda _$args86051_
        (apply make-instance gx#expander-context::t _$args86051_)))
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
      (lambda _$args86048_
        (apply make-instance gx#root-context::t _$args86048_)))
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
      (lambda _$args86045_
        (apply make-instance gx#phi-context::t _$args86045_)))
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
      (lambda _$args86042_
        (apply make-instance gx#top-context::t _$args86042_)))
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
      (lambda _$args86039_
        (apply make-instance gx#module-context::t _$args86039_)))
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
      (lambda _$args86036_
        (apply make-instance gx#prelude-context::t _$args86036_)))
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
      (lambda _$args86033_
        (apply make-instance gx#local-context::t _$args86033_)))
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
      (lambda (_self86017_ _id86018_ _super86019_)
        (if (##fx< '3 (##structure-length _self86017_))
            (begin
              (##unchecked-structure-set!
               _self86017_
               _id86018_
               '1
               (##structure-type _self86017_)
               '#f)
              (##unchecked-structure-set!
               _self86017_
               (make-hash-table-eq)
               '2
               (##structure-type _self86017_)
               '#f)
              (##unchecked-structure-set!
               _self86017_
               _super86019_
               '3
               (##structure-type _self86017_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self86017_
                   '3
                   (##vector-length _self86017_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self86024_ _id86025_)
        (let ((_super86027_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self86024_ _id86025_ _super86027_))))
    (define gx#phi-context:::init!
      (lambda _g86094_
        (let ((_g86093_ (##length _g86094_)))
          (cond ((##fx= _g86093_ 2)
                 (apply (lambda (_self86024_ _id86025_)
                          (gx#phi-context:::init!__0 _self86024_ _id86025_))
                        _g86094_))
                ((##fx= _g86093_ 3)
                 (apply (lambda (_self86029_ _id86030_ _super86031_)
                          (gx#phi-context:::init!__%
                           _self86029_
                           _id86030_
                           _super86031_))
                        _g86094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g86094_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self85881_ _super85882_)
        (if (##fx< '3 (##structure-length _self85881_))
            (begin
              (##unchecked-structure-set!
               _self85881_
               (gensym 'L)
               '1
               (##structure-type _self85881_)
               '#f)
              (##unchecked-structure-set!
               _self85881_
               (make-hash-table-eq)
               '2
               (##structure-type _self85881_)
               '#f)
              (##unchecked-structure-set!
               _self85881_
               _super85882_
               '3
               (##structure-type _self85881_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85881_
                   '3
                   (##vector-length _self85881_)))))
    (define gx#local-context:::init!__0
      (lambda (_self85887_)
        (let ((_super85889_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self85887_ _super85889_))))
    (define gx#local-context:::init!
      (lambda _g86096_
        (let ((_g86095_ (##length _g86096_)))
          (cond ((##fx= _g86095_ 1)
                 (apply (lambda (_self85887_)
                          (gx#local-context:::init!__0 _self85887_))
                        _g86096_))
                ((##fx= _g86095_ 2)
                 (apply (lambda (_self85891_ _super85892_)
                          (gx#local-context:::init!__%
                           _self85891_
                           _super85892_))
                        _g86096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g86096_))))))
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
      (lambda _$args85755_ (apply make-instance gx#binding::t _$args85755_)))
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
      (lambda _$args85752_
        (apply make-instance gx#runtime-binding::t _$args85752_)))
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
      (lambda _$args85749_
        (apply make-instance gx#local-binding::t _$args85749_)))
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
      (lambda _$args85746_
        (apply make-instance gx#top-binding::t _$args85746_)))
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
      (lambda _$args85743_
        (apply make-instance gx#module-binding::t _$args85743_)))
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
      (lambda _$args85740_
        (apply make-instance gx#extern-binding::t _$args85740_)))
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
      (lambda _$args85737_
        (apply make-instance gx#syntax-binding::t _$args85737_)))
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
      (lambda _$args85734_
        (apply make-instance gx#import-binding::t _$args85734_)))
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
      (lambda _$args85731_
        (apply make-instance gx#alias-binding::t _$args85731_)))
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
      (lambda _$args85728_ (apply make-instance gx#expander::t _$args85728_)))
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
      (lambda _$args85725_
        (apply make-instance gx#core-expander::t _$args85725_)))
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
      (lambda _$args85722_
        (apply make-instance gx#expression-form::t _$args85722_)))
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
      (lambda _$args85719_
        (apply make-instance gx#special-form::t _$args85719_)))
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
      (lambda _$args85716_
        (apply make-instance gx#definition-form::t _$args85716_)))
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
      (lambda _$args85713_
        (apply make-instance gx#top-special-form::t _$args85713_)))
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
      (lambda _$args85710_
        (apply make-instance gx#module-special-form::t _$args85710_)))
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
      (lambda _$args85707_
        (apply make-instance gx#feature-expander::t _$args85707_)))
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
      (lambda _$args85704_
        (apply make-instance gx#private-feature-expander::t _$args85704_)))
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
      (lambda _$args85701_
        (apply make-instance gx#reserved-expander::t _$args85701_)))
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
      (lambda _$args85698_
        (apply make-instance gx#macro-expander::t _$args85698_)))
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
      (lambda _$args85695_
        (apply make-instance gx#rename-macro-expander::t _$args85695_)))
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
      (lambda _$args85692_
        (apply make-instance gx#user-expander::t _$args85692_)))
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
      (lambda _$args85689_
        (apply make-instance gx#expander-mark::t _$args85689_)))
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
      (lambda (_ctx85674_ _message85675_ _stx85676_ . _details85677_)
        (let ((_ctx85687_
               (let ((_$e85679_ _ctx85674_))
                 (if _$e85679_
                     _$e85679_
                     (let ((_$e85682_ (gx#core-context-top__0)))
                       (if _$e85682_
                           ((lambda (_ctx85685_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx85685_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e85682_)
                           '#f))))))
          (raise (make-syntax-error
                  _message85675_
                  (cons _stx85676_ _details85677_)
                  _ctx85687_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx85661_ _expression?85662_)
        (gx#eval-syntax* (gx#core-expand__% _stx85661_ _expression?85662_))))
    (define gx#eval-syntax__0
      (lambda (_stx85667_)
        (let ((_expression?85669_ '#f))
          (gx#eval-syntax__% _stx85667_ _expression?85669_))))
    (define gx#eval-syntax
      (lambda _g86098_
        (let ((_g86097_ (##length _g86098_)))
          (cond ((##fx= _g86097_ 1)
                 (apply (lambda (_stx85667_) (gx#eval-syntax__0 _stx85667_))
                        _g86098_))
                ((##fx= _g86097_ 2)
                 (apply (lambda (_stx85671_ _expression?85672_)
                          (gx#eval-syntax__% _stx85671_ _expression?85672_))
                        _g86098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g86098_))))))
    (define gx#eval-syntax*
      (lambda (_stx85658_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx85658_))))
    (define gx#core-expand__%
      (lambda (_stx85645_ _expression?85646_)
        (if _expression?85646_
            (gx#core-expand-expression _stx85645_)
            (gx#core-expand-top _stx85645_))))
    (define gx#core-expand__0
      (lambda (_stx85651_)
        (let ((_expression?85653_ '#f))
          (gx#core-expand__% _stx85651_ _expression?85653_))))
    (define gx#core-expand
      (lambda _g86100_
        (let ((_g86099_ (##length _g86100_)))
          (cond ((##fx= _g86099_ 1)
                 (apply (lambda (_stx85651_) (gx#core-expand__0 _stx85651_))
                        _g86100_))
                ((##fx= _g86099_ 2)
                 (apply (lambda (_stx85655_ _expression?85656_)
                          (gx#core-expand__% _stx85655_ _expression?85656_))
                        _g86100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g86100_))))))
    (define gx#core-expand-top
      (lambda (_stx85612_)
        (let* ((_stx85614_ (gx#core-expand*__0 _stx85612_))
               (_e8561585622_ _stx85614_)
               (_E8561785626_
                (lambda () (gx#core-expand-expression _stx85614_)))
               (_E8561685640_
                (lambda ()
                  (if (gx#stx-pair? _e8561585622_)
                      (let ((_e8561885630_ (gx#syntax-e _e8561585622_)))
                        (let ((_hd8561985633_ (##car _e8561885630_))
                              (_tl8562085635_ (##cdr _e8561885630_)))
                          (let ((_form85638_ _hd8561985633_))
                            (if (gx#core-bound-identifier?__0 _form85638_)
                                _stx85614_
                                (_E8561785626_)))))
                      (_E8561785626_)))))
          (_E8561685640_))))
    (define gx#core-expand-expression
      (lambda (_stx85559_)
        (letrec ((_sealed-expression?85561_
                  (lambda (_hd85582_)
                    (if (gx#sealed-syntax? _hd85582_)
                        (let* ((_e8558385590_ _hd85582_)
                               (_E8558585594_ (lambda () '#f))
                               (_E8558485608_
                                (lambda ()
                                  (if (gx#stx-pair? _e8558385590_)
                                      (let ((_e8558685598_
                                             (gx#syntax-e _e8558385590_)))
                                        (let ((_hd8558785601_
                                               (##car _e8558685598_))
                                              (_tl8558885603_
                                               (##cdr _e8558685598_)))
                                          (let ((_form85606_ _hd8558785601_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form85606_
                                                 gx#expression-form-binding?)
                                                (_E8558585594_)))))
                                      (_E8558585594_)))))
                          (_E8558485608_))
                        '#f)))
                 (_illegal-expression85562_
                  (lambda (_hd85580_ . _g86101_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx85559_
                     _hd85580_)))
                 (_expand-e85563_
                  (lambda (_form85575_ _hd85576_)
                    (let ((_bind85578_
                           (if (##structure-instance-of?
                                _form85575_
                                'gx#binding::t)
                               _form85575_
                               (gx#resolve-identifier__0 _form85575_))))
                      (if (gx#core-expander-binding? _bind85578_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind85578_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd85576_
                            (gx#stx-source _stx85559_)))
                          (if (##structure-direct-instance-of?
                               _bind85578_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind85578_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd85576_
                                 (gx#stx-source _stx85559_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx85559_
                               _form85575_)))))))
          (let ((_hd85565_ (gx#core-expand-head _stx85559_)))
            (if (_sealed-expression?85561_ _hd85565_)
                _hd85565_
                (if (gx#stx-pair? _hd85565_)
                    (let* ((_form85567_ (gx#stx-car _hd85565_))
                           (_bind85569_
                            (if (gx#identifier? _form85567_)
                                (gx#resolve-identifier__0 _form85567_)
                                '#f)))
                      (if (or (not _bind85569_)
                              (not (gx#core-expander-binding? _bind85569_)))
                          (_expand-e85563_ '%%app (cons '%%app _hd85565_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind85569_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd85565_
                               _illegal-expression85562_)
                              (if (gx#expression-form-binding? _bind85569_)
                                  (_expand-e85563_ _bind85569_ _hd85565_)
                                  (if (gx#direct-special-form-binding?
                                       _bind85569_)
                                      (gx#core-expand-expression
                                       (_expand-e85563_ _bind85569_ _hd85565_))
                                      (_illegal-expression85562_
                                       _hd85565_))))))
                    (if (gx#core-bound-identifier?__0 _hd85565_)
                        (_illegal-expression85562_ _hd85565_)
                        (if (gx#identifier? _hd85565_)
                            (_expand-e85563_
                             '%%ref
                             (cons '%%ref (cons _hd85565_ '())))
                            (if (gx#stx-datum? _hd85565_)
                                (_expand-e85563_
                                 '%#quote
                                 (cons '%#quote (cons _hd85565_ '())))
                                (_illegal-expression85562_ _hd85565_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx85554_)
        (call-with-parameters
         (lambda ()
           (let ((_stx85557_ (gx#core-expand-expression _stx85554_)))
             (values _stx85557_ (gx#eval-syntax* _stx85557_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx85535_ _stop?85536_)
        (let _lp85538_ ((_stx85540_ _stx85535_))
          (if (_stop?85536_ _stx85540_)
              _stx85540_
              (let ((_rstx85542_ (gx#core-expand1 _stx85540_)))
                (if (eq? _stx85540_ _rstx85542_)
                    _stx85540_
                    (_lp85538_ _rstx85542_)))))))
    (define gx#core-expand*__0
      (lambda (_stx85547_)
        (let ((_stop?85549_ false))
          (gx#core-expand*__% _stx85547_ _stop?85549_))))
    (define gx#core-expand*
      (lambda _g86103_
        (let ((_g86102_ (##length _g86103_)))
          (cond ((##fx= _g86102_ 1)
                 (apply (lambda (_stx85547_) (gx#core-expand*__0 _stx85547_))
                        _g86103_))
                ((##fx= _g86102_ 2)
                 (apply (lambda (_stx85551_ _stop?85552_)
                          (gx#core-expand*__% _stx85551_ _stop?85552_))
                        _g86103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g86103_))))))
    (define gx#core-expand1
      (lambda (_stx85491_)
        (letrec ((_step85493_
                  (lambda (_hd85530_)
                    (let ((_bind85532_ (gx#resolve-identifier__0 _hd85530_)))
                      (if (##structure-instance-of?
                           _bind85532_
                           'gx#runtime-binding::t)
                          _stx85491_
                          (if (##structure-direct-instance-of?
                               _bind85532_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind85532_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx85491_)
                              (if (not _bind85532_)
                                  _stx85491_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx85491_))))))))
          (let* ((_e8549485502_ _stx85491_)
                 (_E8550085506_ (lambda () _stx85491_))
                 (_E8549685512_
                  (lambda ()
                    (let ((_hd85510_ _e8549485502_))
                      (if (gx#identifier? _hd85510_)
                          (_step85493_ _hd85510_)
                          (_E8550085506_)))))
                 (_E8549585526_
                  (lambda ()
                    (if (gx#stx-pair? _e8549485502_)
                        (let ((_e8549785516_ (gx#syntax-e _e8549485502_)))
                          (let ((_hd8549885519_ (##car _e8549785516_))
                                (_tl8549985521_ (##cdr _e8549785516_)))
                            (let ((_hd85524_ _hd8549885519_))
                              (if (gx#identifier? _hd85524_)
                                  (_step85493_ _hd85524_)
                                  (_E8549685512_)))))
                        (_E8549685512_)))))
            (_E8549585526_)))))
    (define gx#core-expand-head
      (lambda (_stx85457_)
        (letrec ((_stop?85459_
                  (lambda (_stx85461_)
                    (let* ((_e8546285469_ _stx85461_)
                           (_E8546485473_ (lambda () '#f))
                           (_E8546385487_
                            (lambda ()
                              (if (gx#stx-pair? _e8546285469_)
                                  (let ((_e8546585477_
                                         (gx#syntax-e _e8546285469_)))
                                    (let ((_hd8546685480_
                                           (##car _e8546585477_))
                                          (_tl8546785482_
                                           (##cdr _e8546585477_)))
                                      (let ((_hd85485_ _hd8546685480_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd85485_)
                                            (_E8546485473_)))))
                                  (_E8546485473_)))))
                      (_E8546385487_)))))
          (gx#core-expand*__% _stx85457_ _stop?85459_))))
    (define gx#core-expand-block__%
      (lambda (_stx85263_
               _expand-special85264_
               _begin-form85265_
               _expand-e85266_)
        (letrec ((_expand-splice85268_
                  (lambda (_hd85431_ _body85432_ _rest85433_ _r85434_)
                    (if (gx#stx-list? _body85432_)
                        (_K85272_
                         (gx#stx-foldr cons _rest85433_ _body85432_)
                         _r85434_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx85263_
                         _hd85431_))))
                 (_expand-cond-expand85269_
                  (lambda (_hd85427_ _rest85428_ _r85429_)
                    (_K85272_
                     (cons (gx#core-expand-cond-expand% _hd85427_) _rest85428_)
                     _r85429_)))
                 (_expand-include85270_
                  (lambda (_hd85376_ _rest85377_ _r85378_)
                    (let* ((_e8537985389_ _hd85376_)
                           (_E8538185393_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8537985389_)))
                           (_E8538085423_
                            (lambda ()
                              (if (gx#stx-pair? _e8537985389_)
                                  (let ((_e8538285397_
                                         (gx#syntax-e _e8537985389_)))
                                    (let ((_hd8538385400_
                                           (##car _e8538285397_))
                                          (_tl8538485402_
                                           (##cdr _e8538285397_)))
                                      (if (gx#stx-pair? _tl8538485402_)
                                          (let ((_e8538585405_
                                                 (gx#syntax-e _tl8538485402_)))
                                            (let ((_hd8538685408_
                                                   (##car _e8538585405_))
                                                  (_tl8538785410_
                                                   (##cdr _e8538585405_)))
                                              (let ((_path85413_
                                                     _hd8538685408_))
                                                (if (gx#stx-null?
                                                     _tl8538785410_)
                                                    (if (gx#stx-string?
                                                         _path85413_)
                                                        (let* ((_rpath85415_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path85413_
                         (gx#stx-source _hd85376_)))
                       (_block85417_
                        (gx#core-expand-include%__% _hd85376_ _rpath85415_))
                       (_rbody85420_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block85417_
                            _expand-special85264_
                            '#f
                            _expand-e85266_))
                         gx#current-expander-path
                         (cons _rpath85415_ (gx#current-expander-path)))))
                  (_K85272_ _rest85377_ (foldr1 cons _r85378_ _rbody85420_)))
                (_E8538185393_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8538185393_)))))
                                          (_E8538185393_))))
                                  (_E8538185393_)))))
                      (_E8538085423_))))
                 (_expand-expression85271_
                  (lambda (_hd85372_ _rest85373_ _r85374_)
                    (_K85272_
                     _rest85373_
                     (cons (_expand-e85266_ _hd85372_) _r85374_))))
                 (_K85272_
                  (lambda (_rest85302_ _r85303_)
                    (let* ((_e8530485311_ _rest85302_)
                           (_E8530685315_
                            (lambda ()
                              (if _begin-form85265_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form85265_
                                    (reverse _r85303_))
                                   (gx#stx-source _stx85263_))
                                  _r85303_)))
                           (_E8530585368_
                            (lambda ()
                              (if (gx#stx-pair? _e8530485311_)
                                  (let ((_e8530785319_
                                         (gx#syntax-e _e8530485311_)))
                                    (let ((_hd8530885322_
                                           (##car _e8530785319_))
                                          (_tl8530985324_
                                           (##cdr _e8530785319_)))
                                      (let* ((_hd85327_ _hd8530885322_)
                                             (_rest85329_ _tl8530985324_))
                                        (if '#t
                                            (let* ((_hd85331_
                                                    (gx#core-expand-head
                                                     _hd85327_))
                                                   (_e8533285339_ _hd85331_)
                                                   (_E8533485343_
                                                    (lambda ()
                                                      (_expand-expression85271_
                                                       _hd85331_
                                                       _rest85329_
                                                       _r85303_)))
                                                   (_E8533385364_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8533285339_)
                                                          (let ((_e8533585347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8533285339_)))
                    (let ((_hd8533685350_ (##car _e8533585347_))
                          (_tl8533785352_ (##cdr _e8533585347_)))
                      (let* ((_form85355_ _hd8533685350_)
                             (_body85357_ _tl8533785352_))
                        (if '#t
                            (let ((_bind85359_
                                   (if (gx#identifier? _form85355_)
                                       (gx#resolve-identifier__0 _form85355_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind85359_)
                                  (let ((_$e85361_
                                         (##unchecked-structure-ref
                                          _bind85359_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e85361_)
                                        (_expand-splice85268_
                                         _hd85331_
                                         _body85357_
                                         _rest85329_
                                         _r85303_)
                                        (if (eq? '%#cond-expand _$e85361_)
                                            (_expand-cond-expand85269_
                                             _hd85331_
                                             _rest85329_
                                             _r85303_)
                                            (if (eq? '%#include _$e85361_)
                                                (_expand-include85270_
                                                 _hd85331_
                                                 _rest85329_
                                                 _r85303_)
                                                (_expand-special85264_
                                                 _hd85331_
                                                 _K85272_
                                                 _rest85329_
                                                 _r85303_)))))
                                  (_expand-expression85271_
                                   _hd85331_
                                   _rest85329_
                                   _r85303_)))
                            (_E8533485343_)))))
                  (_E8533485343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8533385364_))
                                            (_E8530685315_)))))
                                  (_E8530685315_)))))
                      (_E8530585368_)))))
          (let* ((_e8527385280_ _stx85263_)
                 (_E8527585284_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8527385280_)))
                 (_E8527485298_
                  (lambda ()
                    (if (gx#stx-pair? _e8527385280_)
                        (let ((_e8527685288_ (gx#syntax-e _e8527385280_)))
                          (let ((_hd8527785291_ (##car _e8527685288_))
                                (_tl8527885293_ (##cdr _e8527685288_)))
                            (let ((_body85296_ _tl8527885293_))
                              (if (gx#stx-list? _body85296_)
                                  (_K85272_ _body85296_ '())
                                  (_E8527585284_)))))
                        (_E8527585284_)))))
            (_E8527485298_)))))
    (define gx#core-expand-block__0
      (lambda (_stx85439_ _expand-special85440_)
        (let* ((_begin-form85442_ '%#begin)
               (_expand-e85444_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85439_
           _expand-special85440_
           _begin-form85442_
           _expand-e85444_))))
    (define gx#core-expand-block__1
      (lambda (_stx85446_ _expand-special85447_ _begin-form85448_)
        (let ((_expand-e85450_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85446_
           _expand-special85447_
           _begin-form85448_
           _expand-e85450_))))
    (define gx#core-expand-block
      (lambda _g86105_
        (let ((_g86104_ (##length _g86105_)))
          (cond ((##fx= _g86104_ 2)
                 (apply (lambda (_stx85439_ _expand-special85440_)
                          (gx#core-expand-block__0
                           _stx85439_
                           _expand-special85440_))
                        _g86105_))
                ((##fx= _g86104_ 3)
                 (apply (lambda (_stx85446_
                                 _expand-special85447_
                                 _begin-form85448_)
                          (gx#core-expand-block__1
                           _stx85446_
                           _expand-special85447_
                           _begin-form85448_))
                        _g86105_))
                ((##fx= _g86104_ 4)
                 (apply (lambda (_stx85452_
                                 _expand-special85453_
                                 _begin-form85454_
                                 _expand-e85455_)
                          (gx#core-expand-block__%
                           _stx85452_
                           _expand-special85453_
                           _begin-form85454_
                           _expand-e85455_))
                        _g86105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g86105_))))))
    (define gx#core-expand-block*
      (lambda (_stx85211_ _expand-special85212_)
        (let* ((_g8521385224_
                (gx#core-expand-block__1 _stx85211_ _expand-special85212_ '#f))
               (_E8521785228_
                (lambda () (error '"No clause matching" _g8521385224_))))
          (let ((_K8522285259_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx85211_)))
                (_K8521985245_ (lambda (_expr85243_) _expr85243_))
                (_K8521885234_
                 (lambda (_body85232_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body85232_))
                    (gx#stx-source _stx85211_)))))
            (let ((_try-match8521585255_
                   (lambda ()
                     (if (##pair? _g8521385224_)
                         (let ((_tl8522185250_ (##cdr _g8521385224_))
                               (_hd8522085248_ (##car _g8521385224_)))
                           (if (##null? _tl8522185250_)
                               (let ((_expr85253_ _hd8522085248_))
                                 (_K8521985245_ _expr85253_))
                               (let ((_body85237_ _g8521385224_))
                                 (_K8521885234_ _body85237_))))
                         (let ((_body85237_ _g8521385224_))
                           (_K8521885234_ _body85237_))))))
              (if (##null? _g8521385224_)
                  (_K8522285259_)
                  (_try-match8521585255_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx85039_)
        (letrec ((_satisfied?85041_
                  (lambda (_condition85139_)
                    (let* ((_e8514085155_ _condition85139_)
                           (_E8515085159_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8514085155_)))
                           (_E8514385178_
                            (lambda ()
                              (if (gx#stx-pair? _e8514085155_)
                                  (let ((_e8515185163_
                                         (gx#syntax-e _e8514085155_)))
                                    (let ((_hd8515285166_
                                           (##car _e8515185163_))
                                          (_tl8515385168_
                                           (##cdr _e8515185163_)))
                                      (let* ((_combinator85171_ _hd8515285166_)
                                             (_body85173_ _tl8515385168_))
                                        (if (gx#stx-list? _body85173_)
                                            (let ((_$e85175_
                                                   (gx#stx-e
                                                    _combinator85171_)))
                                              (if (eq? 'not _$e85175_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?85041_
                                                        _body85173_))
                                                  (if (eq? 'and _$e85175_)
                                                      (gx#stx-andmap
                                                       _satisfied?85041_
                                                       _body85173_)
                                                      (if (eq? 'or _$e85175_)
                                                          (gx#stx-ormap
                                                           _satisfied?85041_
                                                           _body85173_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e85175_)
                      (gx#stx-andmap gx#core-resolve-identifier _body85173_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx85039_
                       _combinator85171_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8515085159_)))))
                                  (_E8515085159_))))
                           (_E8514285201_
                            (lambda ()
                              (if (gx#stx-pair? _e8514085155_)
                                  (let ((_e8514485182_
                                         (gx#syntax-e _e8514085155_)))
                                    (let ((_hd8514585185_
                                           (##car _e8514485182_))
                                          (_tl8514685187_
                                           (##cdr _e8514485182_)))
                                      (if (and (gx#identifier? _hd8514585185_)
                                               (gx#core-identifier=?
                                                _hd8514585185_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8514685187_)
                                              (let ((_e8514785190_
                                                     (gx#syntax-e
                                                      _tl8514685187_)))
                                                (let ((_hd8514885193_
                                                       (##car _e8514785190_))
                                                      (_tl8514985195_
                                                       (##cdr _e8514785190_)))
                                                  (let ((_expr85198_
                                                         _hd8514885193_))
                                                    (if (gx#stx-null?
                                                         _tl8514985195_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr85198_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8514385178_))
                (_E8514385178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8514385178_))
                                          (_E8514385178_))))
                                  (_E8514385178_))))
                           (_E8514185207_
                            (lambda ()
                              (let ((_id85205_ _e8514085155_))
                                (if (gx#identifier? _id85205_)
                                    (gx#core-bound-identifier?__%
                                     _id85205_
                                     gx#feature-binding?)
                                    (_E8514285201_))))))
                      (_E8514185207_))))
                 (_loop85042_
                  (lambda (_rest85072_)
                    (let* ((_e8507385081_ _rest85072_)
                           (_E8507985085_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8507385081_)))
                           (_E8507585089_
                            (lambda ()
                              (if (gx#stx-null? _e8507385081_)
                                  (if '#t '() (_E8507985085_))
                                  (_E8507985085_))))
                           (_E8507485135_
                            (lambda ()
                              (if (gx#stx-pair? _e8507385081_)
                                  (let ((_e8507685093_
                                         (gx#syntax-e _e8507385081_)))
                                    (let ((_hd8507785096_
                                           (##car _e8507685093_))
                                          (_tl8507885098_
                                           (##cdr _e8507685093_)))
                                      (let* ((_hd85101_ _hd8507785096_)
                                             (_rest85103_ _tl8507885098_))
                                        (if '#t
                                            (let* ((_e8510485111_ _hd85101_)
                                                   (_E8510685115_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8510485111_)))
                                                   (_E8510585131_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8510485111_)
                                                          (let ((_e8510785119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8510485111_)))
                    (let ((_hd8510885122_ (##car _e8510785119_))
                          (_tl8510985124_ (##cdr _e8510785119_)))
                      (let* ((_condition85127_ _hd8510885122_)
                             (_body85129_ _tl8510985124_))
                        (if '#t
                            (if (gx#stx-eq? _condition85127_ 'else)
                                (if (gx#stx-null? _rest85103_)
                                    _body85129_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx85039_
                                     _hd85101_))
                                (if (_satisfied?85041_ _condition85127_)
                                    _body85129_
                                    (_loop85042_ _rest85103_)))
                            (_E8510685115_)))))
                  (_E8510685115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8510585131_))
                                            (_E8507585089_)))))
                                  (_E8507585089_)))))
                      (_E8507485135_)))))
          (let* ((_e8504385050_ _stx85039_)
                 (_E8504585054_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8504385050_)))
                 (_E8504485068_
                  (lambda ()
                    (if (gx#stx-pair? _e8504385050_)
                        (let ((_e8504685058_ (gx#syntax-e _e8504385050_)))
                          (let ((_hd8504785061_ (##car _e8504685058_))
                                (_tl8504885063_ (##cdr _e8504685058_)))
                            (let ((_clauses85066_ _tl8504885063_))
                              (if (gx#stx-list? _clauses85066_)
                                  (gx#core-cons
                                   'begin
                                   (_loop85042_ _clauses85066_))
                                  (_E8504585054_)))))
                        (_E8504585054_)))))
            (_E8504485068_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx84982_ _rpath84983_)
        (let* ((_e8498484994_ _stx84982_)
               (_E8498684998_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8498484994_)))
               (_E8498585025_
                (lambda ()
                  (if (gx#stx-pair? _e8498484994_)
                      (let ((_e8498785002_ (gx#syntax-e _e8498484994_)))
                        (let ((_hd8498885005_ (##car _e8498785002_))
                              (_tl8498985007_ (##cdr _e8498785002_)))
                          (if (gx#stx-pair? _tl8498985007_)
                              (let ((_e8499085010_
                                     (gx#syntax-e _tl8498985007_)))
                                (let ((_hd8499185013_ (##car _e8499085010_))
                                      (_tl8499285015_ (##cdr _e8499085010_)))
                                  (let ((_path85018_ _hd8499185013_))
                                    (if (gx#stx-null? _tl8499285015_)
                                        (if (gx#stx-string? _path85018_)
                                            (let ((_rpath85023_
                                                   (let ((_$e85020_
                                                          _rpath84983_))
                                                     (if _$e85020_
                                                         _$e85020_
                                                         (gx#core-resolve-path__%
                                                          _path85018_
                                                          (gx#stx-source
                                                           _stx84982_))))))
                                              (if (member _rpath85023_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx84982_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath85023_))
                                                    (gx#stx-source
                                                     _stx84982_)))))
                                            (_E8498684998_))
                                        (_E8498684998_)))))
                              (_E8498684998_))))
                      (_E8498684998_)))))
          (_E8498585025_))))
    (define gx#core-expand-include%__0
      (lambda (_stx85032_)
        (let ((_rpath85034_ '#f))
          (gx#core-expand-include%__% _stx85032_ _rpath85034_))))
    (define gx#core-expand-include%
      (lambda _g86107_
        (let ((_g86106_ (##length _g86107_)))
          (cond ((##fx= _g86106_ 1)
                 (apply (lambda (_stx85032_)
                          (gx#core-expand-include%__0 _stx85032_))
                        _g86107_))
                ((##fx= _g86106_ 2)
                 (apply (lambda (_stx85036_ _rpath85037_)
                          (gx#core-expand-include%__% _stx85036_ _rpath85037_))
                        _g86107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g86107_))))))
    (define gx#core-apply-expander__%
      (lambda (_K84951_ _stx84952_ _method84953_)
        (if (procedure? _K84951_)
            (let ((_$e84955_ (gx#stx-source _stx84952_)))
              (if _$e84955_
                  ((lambda (_g8495784959_)
                     (gx#stx-wrap-source (_K84951_ _stx84952_) _g8495784959_))
                   _$e84955_)
                  (_K84951_ _stx84952_)))
            (let ((_$e84962_ (bound-method-ref _K84951_ _method84953_)))
              (if _$e84962_
                  ((lambda (_g8496484966_)
                     (gx#core-apply-expander__%
                      _g8496484966_
                      _stx84952_
                      _method84953_))
                   _$e84962_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx84952_
                   _method84953_))))))
    (define gx#core-apply-expander__0
      (lambda (_K84972_ _stx84973_)
        (let ((_method84975_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K84972_ _stx84973_ _method84975_))))
    (define gx#core-apply-expander
      (lambda _g86109_
        (let ((_g86108_ (##length _g86109_)))
          (cond ((##fx= _g86108_ 2)
                 (apply (lambda (_K84972_ _stx84973_)
                          (gx#core-apply-expander__0 _K84972_ _stx84973_))
                        _g86109_))
                ((##fx= _g86108_ 3)
                 (apply (lambda (_K84977_ _stx84978_ _method84979_)
                          (gx#core-apply-expander__%
                           _K84977_
                           _stx84978_
                           _method84979_))
                        _g86109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g86109_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self84947_ _stx84948_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx84948_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self84800_ _stx84801_)
        (let* ((_self8480284808_ _self84800_)
               (_E8480484812_
                (lambda () (error '"No clause matching" _self8480284808_)))
               (_K8480584817_
                (lambda (_K84815_)
                  (gx#core-apply-expander__0 _K84815_ _stx84801_))))
          (if (##structure-instance-of? _self8480284808_ 'gx#core-macro::t)
              (let* ((_e8480684820_
                      (##unchecked-structure-ref
                       _self8480284808_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84823_ _e8480684820_))
                (_K8480584817_ _K84823_))
              (_E8480484812_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self84653_ _stx84654_)
        (if (gx#sealed-syntax? _stx84654_)
            _stx84654_
            (let* ((_self8465584661_ _self84653_)
                   (_E8465784665_
                    (lambda () (error '"No clause matching" _self8465584661_)))
                   (_K8465884670_
                    (lambda (_K84668_)
                      (gx#core-apply-expander__0 _K84668_ _stx84654_))))
              (if (##structure-instance-of?
                   _self8465584661_
                   'gx#core-expander::t)
                  (let* ((_e8465984673_
                          (##unchecked-structure-ref
                           _self8465584661_
                           '1
                           gx#expander::t
                           '#f))
                         (_K84676_ _e8465984673_))
                    (_K8465884670_ _K84676_))
                  (_E8465784665_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self84515_ _stx84516_ _top?84517_)
        (if (_top?84517_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self84515_ _stx84516_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx84516_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self84522_ _stx84523_)
        (let ((_top?84525_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self84522_
           _stx84523_
           _top?84525_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g86111_
        (let ((_g86110_ (##length _g86111_)))
          (cond ((##fx= _g86110_ 2)
                 (apply (lambda (_self84522_ _stx84523_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self84522_
                           _stx84523_))
                        _g86111_))
                ((##fx= _g86110_ 3)
                 (apply (lambda (_self84527_ _stx84528_ _top?84529_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self84527_
                           _stx84528_
                           _top?84529_))
                        _g86111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g86111_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self84389_ _stx84390_)
        (gx#top-special-form::apply-macro-expander__%
         _self84389_
         _stx84390_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self84214_ _stx84215_)
        (let* ((_self8421684222_ _self84214_)
               (_E8421884226_
                (lambda () (error '"No clause matching" _self8421684222_)))
               (_K8421984259_
                (lambda (_id84229_)
                  (let* ((_e8423084237_ _stx84215_)
                         (_E8423284241_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8423084237_)))
                         (_E8423184255_
                          (lambda ()
                            (if (gx#stx-pair? _e8423084237_)
                                (let ((_e8423384245_
                                       (gx#syntax-e _e8423084237_)))
                                  (let ((_hd8423484248_ (##car _e8423384245_))
                                        (_tl8423584250_ (##cdr _e8423384245_)))
                                    (let ((_body84253_ _tl8423584250_))
                                      (if '#t
                                          (gx#core-cons _id84229_ _body84253_)
                                          (_E8423284241_)))))
                                (_E8423284241_)))))
                    (_E8423184255_)))))
          (if (##structure-instance-of?
               _self8421684222_
               'gx#rename-macro-expander::t)
              (let* ((_e8422084262_
                      (##unchecked-structure-ref
                       _self8421684222_
                       '1
                       gx#expander::t
                       '#f))
                     (_id84265_ _e8422084262_))
                (_K8421984259_ _id84265_))
              (_E8421884226_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self84040_ _stx84041_ _method84042_)
        (let* ((_self8404384051_ _self84040_)
               (_E8404584055_
                (lambda () (error '"No clause matching" _self8404384051_)))
               (_K8404684062_
                (lambda (_phi84058_ _ctx84059_ _K84060_)
                  (gx#core-apply-user-macro
                   _K84060_
                   _stx84041_
                   _ctx84059_
                   _phi84058_
                   _method84042_))))
          (if (##structure-instance-of? _self8404384051_ 'gx#macro-expander::t)
              (let* ((_e8404784065_
                      (##unchecked-structure-ref
                       _self8404384051_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84068_ _e8404784065_)
                     (_e8404884070_
                      (##unchecked-structure-ref
                       _self8404384051_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx84073_ _e8404884070_)
                     (_e8404984075_
                      (##unchecked-structure-ref
                       _self8404384051_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi84078_ _e8404984075_))
                (_K8404684062_ _phi84078_ _ctx84073_ _K84068_))
              (_E8404584055_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self84083_ _stx84084_)
        (let ((_method84086_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self84083_
           _stx84084_
           _method84086_))))
    (define gx#core-apply-user-expander
      (lambda _g86113_
        (let ((_g86112_ (##length _g86113_)))
          (cond ((##fx= _g86112_ 2)
                 (apply (lambda (_self84083_ _stx84084_)
                          (gx#core-apply-user-expander__0
                           _self84083_
                           _stx84084_))
                        _g86113_))
                ((##fx= _g86112_ 3)
                 (apply (lambda (_self84088_ _stx84089_ _method84090_)
                          (gx#core-apply-user-expander__%
                           _self84088_
                           _stx84089_
                           _method84090_))
                        _g86113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g86113_))))))
    (define gx#core-apply-user-macro
      (lambda (_K84030_ _stx84031_ _ctx84032_ _phi84033_ _method84034_)
        (let ((_mark84036_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx84032_
                _phi84033_
                _stx84031_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K84030_
               (gx#stx-apply-mark _stx84031_ _mark84036_)
               _method84034_)
              _mark84036_))
           gx#current-expander-marks
           (cons _mark84036_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx83881_ _phi83882_ _ctx83883_)
        (let _lp83885_ ((_bind83887_
                         (gx#core-resolve-identifier__%
                          _stx83881_
                          _phi83882_
                          _ctx83883_)))
          (if (##structure-direct-instance-of?
               _bind83887_
               'gx#import-binding::t)
              (_lp83885_
               (##unchecked-structure-ref
                _bind83887_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind83887_
                   'gx#alias-binding::t)
                  (_lp83885_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind83887_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi83882_
                    _ctx83883_))
                  _bind83887_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx83892_)
        (let* ((_phi83894_ (gx#current-expander-phi))
               (_ctx83896_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83892_ _phi83894_ _ctx83896_))))
    (define gx#resolve-identifier__1
      (lambda (_stx83898_ _phi83899_)
        (let ((_ctx83901_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83898_ _phi83899_ _ctx83901_))))
    (define gx#resolve-identifier
      (lambda _g86115_
        (let ((_g86114_ (##length _g86115_)))
          (cond ((##fx= _g86114_ 1)
                 (apply (lambda (_stx83892_)
                          (gx#resolve-identifier__0 _stx83892_))
                        _g86115_))
                ((##fx= _g86114_ 2)
                 (apply (lambda (_stx83898_ _phi83899_)
                          (gx#resolve-identifier__1 _stx83898_ _phi83899_))
                        _g86115_))
                ((##fx= _g86114_ 3)
                 (apply (lambda (_stx83903_ _phi83904_ _ctx83905_)
                          (gx#resolve-identifier__%
                           _stx83903_
                           _phi83904_
                           _ctx83905_))
                        _g86115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g86115_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx83839_ _val83840_ _rebind?83841_ _phi83842_ _ctx83843_)
        (let ((_rebind?83845_
               (if (not _rebind?83841_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?83841_) _rebind?83841_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx83839_)
           _val83840_
           _rebind?83845_
           _phi83842_
           _ctx83843_))))
    (define gx#bind-identifier!__0
      (lambda (_stx83850_ _val83851_)
        (let* ((_rebind?83853_ '#f)
               (_phi83855_ (gx#current-expander-phi))
               (_ctx83857_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83850_
           _val83851_
           _rebind?83853_
           _phi83855_
           _ctx83857_))))
    (define gx#bind-identifier!__1
      (lambda (_stx83859_ _val83860_ _rebind?83861_)
        (let* ((_phi83863_ (gx#current-expander-phi))
               (_ctx83865_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83859_
           _val83860_
           _rebind?83861_
           _phi83863_
           _ctx83865_))))
    (define gx#bind-identifier!__2
      (lambda (_stx83867_ _val83868_ _rebind?83869_ _phi83870_)
        (let ((_ctx83872_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83867_
           _val83868_
           _rebind?83869_
           _phi83870_
           _ctx83872_))))
    (define gx#bind-identifier!
      (lambda _g86117_
        (let ((_g86116_ (##length _g86117_)))
          (cond ((##fx= _g86116_ 2)
                 (apply (lambda (_stx83850_ _val83851_)
                          (gx#bind-identifier!__0 _stx83850_ _val83851_))
                        _g86117_))
                ((##fx= _g86116_ 3)
                 (apply (lambda (_stx83859_ _val83860_ _rebind?83861_)
                          (gx#bind-identifier!__1
                           _stx83859_
                           _val83860_
                           _rebind?83861_))
                        _g86117_))
                ((##fx= _g86116_ 4)
                 (apply (lambda (_stx83867_
                                 _val83868_
                                 _rebind?83869_
                                 _phi83870_)
                          (gx#bind-identifier!__2
                           _stx83867_
                           _val83868_
                           _rebind?83869_
                           _phi83870_))
                        _g86117_))
                ((##fx= _g86116_ 5)
                 (apply (lambda (_stx83874_
                                 _val83875_
                                 _rebind?83876_
                                 _phi83877_
                                 _ctx83878_)
                          (gx#bind-identifier!__%
                           _stx83874_
                           _val83875_
                           _rebind?83876_
                           _phi83877_
                           _ctx83878_))
                        _g86117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g86117_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx83811_ _phi83812_ _ctx83813_)
        (let _lp83815_ ((_e83817_ _stx83811_)
                        (_marks83818_ (gx#current-expander-marks)))
          (if (symbol? _e83817_)
              (gx#core-resolve-binding
               _e83817_
               _phi83812_
               _phi83812_
               _ctx83813_
               (reverse _marks83818_))
              (if (gx#identifier-quote? _e83817_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e83817_ '1 gx#AST::t '#f)
                   _phi83812_
                   '0
                   (##unchecked-structure-ref
                    _e83817_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e83817_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e83817_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e83817_ '1 gx#AST::t '#f)
                       _phi83812_
                       _phi83812_
                       _ctx83813_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e83817_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks83818_))
                      (if (##structure-direct-instance-of?
                           _e83817_
                           'gx#syntax-wrap::t)
                          (_lp83815_
                           (##unchecked-structure-ref
                            _e83817_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e83817_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks83818_))
                          (if (##structure-instance-of?
                               _e83817_
                               'gerbil#AST::t)
                              (_lp83815_
                               (##unchecked-structure-ref
                                _e83817_
                                '1
                                gx#AST::t
                                '#f)
                               _marks83818_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx83811_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx83823_)
        (let* ((_phi83825_ (gx#current-expander-phi))
               (_ctx83827_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83823_ _phi83825_ _ctx83827_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx83829_ _phi83830_)
        (let ((_ctx83832_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83829_ _phi83830_ _ctx83832_))))
    (define gx#core-resolve-identifier
      (lambda _g86119_
        (let ((_g86118_ (##length _g86119_)))
          (cond ((##fx= _g86118_ 1)
                 (apply (lambda (_stx83823_)
                          (gx#core-resolve-identifier__0 _stx83823_))
                        _g86119_))
                ((##fx= _g86118_ 2)
                 (apply (lambda (_stx83829_ _phi83830_)
                          (gx#core-resolve-identifier__1
                           _stx83829_
                           _phi83830_))
                        _g86119_))
                ((##fx= _g86118_ 3)
                 (apply (lambda (_stx83834_ _phi83835_ _ctx83836_)
                          (gx#core-resolve-identifier__%
                           _stx83834_
                           _phi83835_
                           _ctx83836_))
                        _g86119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g86119_))))))
    (define gx#core-resolve-binding
      (lambda (_id83724_ _phi83725_ _src-phi83726_ _ctx83727_ _marks83728_)
        (letrec ((_resolve83730_
                  (lambda (_ctx83798_ _src-phi83799_ _key83800_)
                    (let _lp83802_ ((_ctx83804_
                                     (gx#core-context-shift
                                      _ctx83798_
                                      _phi83725_))
                                    (_dphi83805_
                                     (fx- _phi83725_ _src-phi83799_)))
                      (let ((_$e83807_
                             (gx#core-context-resolve _ctx83804_ _key83800_)))
                        (if _$e83807_
                            (values _$e83807_)
                            (if (fxzero? _dphi83805_)
                                '#f
                                (if (fxpositive? _dphi83805_)
                                    (_lp83802_
                                     (gx#core-context-shift _ctx83804_ '-1)
                                     (fx- _dphi83805_ '1))
                                    (_lp83802_
                                     (gx#core-context-shift _ctx83804_ '1)
                                     (fx+ _dphi83805_ '1))))))))))
          (let _lp83732_ ((_ctx83734_ _ctx83727_)
                          (_src-phi83735_ _src-phi83726_)
                          (_rest83736_ _marks83728_))
            (let* ((_rest8373783745_ _rest83736_)
                   (_else8373983753_
                    (lambda ()
                      (_resolve83730_ _ctx83734_ _src-phi83735_ _id83724_)))
                   (_K8374183786_
                    (lambda (_rest83756_ _hd83757_)
                      (let* ((_hd8375883764_ _hd83757_)
                             (_E8376083768_
                              (lambda ()
                                (error '"No clause matching" _hd8375883764_)))
                             (_K8376183778_
                              (lambda (_subst83771_)
                                (let ((_$e83775_
                                       (let ((_key83773_
                                              (if _subst83771_
                                                  (hash-get
                                                   _subst83771_
                                                   _id83724_)
                                                  '#f)))
                                         (if _key83773_
                                             (_resolve83730_
                                              _ctx83734_
                                              _src-phi83735_
                                              _key83773_)
                                             '#f))))
                                  (if _$e83775_
                                      _$e83775_
                                      (_lp83732_
                                       (##unchecked-structure-ref
                                        _hd83757_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd83757_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest83756_))))))
                        (if (##structure-instance-of?
                             _hd8375883764_
                             'gx#expander-mark::t)
                            (let* ((_e8376283781_
                                    (##unchecked-structure-ref
                                     _hd8375883764_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst83784_ _e8376283781_))
                              (_K8376183778_ _subst83784_))
                            (_E8376083768_))))))
              (if (##pair? _rest8373783745_)
                  (let ((_hd8374283789_ (##car _rest8373783745_))
                        (_tl8374383791_ (##cdr _rest8373783745_)))
                    (let* ((_hd83794_ _hd8374283789_)
                           (_rest83796_ _tl8374383791_))
                      (_K8374183786_ _rest83796_ _hd83794_)))
                  (_else8373983753_)))))))
    (define gx#core-bind!__%
      (lambda (_key83600_ _val83601_ _rebind?83602_ _phi83603_ _ctx83604_)
        (letrec ((_update-binding83606_
                  (lambda (_xval83677_)
                    (if (or (_rebind?83602_ _ctx83604_ _xval83677_ _val83601_)
                            (and (##structure-direct-instance-of?
                                  _xval83677_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval83677_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val83601_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val83601_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval83677_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val83601_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val83601_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval83677_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val83601_
                        (if (and (##structure-direct-instance-of?
                                  _val83601_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val83601_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval83677_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val83601_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval83677_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval83677_
                            (if (and (##structure-direct-instance-of?
                                      _val83601_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval83677_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key83600_
                                 (cons (##unchecked-structure-ref
                                        _val83601_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val83601_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval83677_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval83677_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval83677_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval83677_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key83600_
                                 _val83601_
                                 _xval83677_))))))
                 (_gensubst83607_
                  (lambda (_subst83672_ _id83673_)
                    (let ((_eid83675_
                           (gensym (if (uninterned-symbol? _id83673_)
                                       '%
                                       _id83673_))))
                      (hash-put! _subst83672_ _id83673_ _eid83675_)
                      _eid83675_)))
                 (_subst!83608_
                  (lambda (_key83610_)
                    (let* ((_key8361183619_ _key83610_)
                           (_else8361383627_ (lambda () _key83610_))
                           (_K8361583660_
                            (lambda (_mark83630_ _id83631_)
                              (let* ((_mark8363283638_ _mark83630_)
                                     (_E8363483642_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8363283638_)))
                                     (_K8363583652_
                                      (lambda (_subst83645_)
                                        (if (not _subst83645_)
                                            (let ((_subst83647_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark83630_
                                               _subst83647_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst83607_
                                               _subst83647_
                                               _id83631_))
                                            (let ((_$e83649_
                                                   (hash-get
                                                    _subst83645_
                                                    _id83631_)))
                                              (if _$e83649_
                                                  (values _$e83649_)
                                                  (_gensubst83607_
                                                   _subst83645_
                                                   _id83631_)))))))
                                (if (##structure-instance-of?
                                     _mark8363283638_
                                     'gx#expander-mark::t)
                                    (let* ((_e8363683655_
                                            (##unchecked-structure-ref
                                             _mark8363283638_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst83658_ _e8363683655_))
                                      (_K8363583652_ _subst83658_))
                                    (_E8363483642_))))))
                      (if (##pair? _key8361183619_)
                          (let ((_hd8361683663_ (##car _key8361183619_))
                                (_tl8361783665_ (##cdr _key8361183619_)))
                            (let* ((_id83668_ _hd8361683663_)
                                   (_mark83670_ _tl8361783665_))
                              (_K8361583660_ _mark83670_ _id83668_)))
                          (_else8361383627_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx83604_ _phi83603_)
           (_subst!83608_ _key83600_)
           _val83601_
           _update-binding83606_))))
    (define gx#core-bind!__0
      (lambda (_key83694_ _val83695_)
        (let* ((_rebind?83697_ false)
               (_phi83699_ (gx#current-expander-phi))
               (_ctx83701_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83694_
           _val83695_
           _rebind?83697_
           _phi83699_
           _ctx83701_))))
    (define gx#core-bind!__1
      (lambda (_key83703_ _val83704_ _rebind?83705_)
        (let* ((_phi83707_ (gx#current-expander-phi))
               (_ctx83709_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83703_
           _val83704_
           _rebind?83705_
           _phi83707_
           _ctx83709_))))
    (define gx#core-bind!__2
      (lambda (_key83711_ _val83712_ _rebind?83713_ _phi83714_)
        (let ((_ctx83716_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83711_
           _val83712_
           _rebind?83713_
           _phi83714_
           _ctx83716_))))
    (define gx#core-bind!
      (lambda _g86121_
        (let ((_g86120_ (##length _g86121_)))
          (cond ((##fx= _g86120_ 2)
                 (apply (lambda (_key83694_ _val83695_)
                          (gx#core-bind!__0 _key83694_ _val83695_))
                        _g86121_))
                ((##fx= _g86120_ 3)
                 (apply (lambda (_key83703_ _val83704_ _rebind?83705_)
                          (gx#core-bind!__1
                           _key83703_
                           _val83704_
                           _rebind?83705_))
                        _g86121_))
                ((##fx= _g86120_ 4)
                 (apply (lambda (_key83711_
                                 _val83712_
                                 _rebind?83713_
                                 _phi83714_)
                          (gx#core-bind!__2
                           _key83711_
                           _val83712_
                           _rebind?83713_
                           _phi83714_))
                        _g86121_))
                ((##fx= _g86120_ 5)
                 (apply (lambda (_key83718_
                                 _val83719_
                                 _rebind?83720_
                                 _phi83721_
                                 _ctx83722_)
                          (gx#core-bind!__%
                           _key83718_
                           _val83719_
                           _rebind?83720_
                           _phi83721_
                           _ctx83722_))
                        _g86121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g86121_))))))
    (define gx#core-identifier-key
      (lambda (_stx83534_)
        (if (symbol? _stx83534_)
            (let* ((_g8353583543_ (gx#current-expander-marks))
                   (_else8353783551_ (lambda () _stx83534_))
                   (_K8353983556_
                    (lambda (_hd83554_) (cons _stx83534_ _hd83554_))))
              (if (##pair? _g8353583543_)
                  (let* ((_hd8354083559_ (##car _g8353583543_))
                         (_hd83562_ _hd8354083559_))
                    (_K8353983556_ _hd83562_))
                  (_else8353783551_)))
            (if (gx#identifier? _stx83534_)
                (let* ((_id83564_ (gx#syntax-local-unwrap _stx83534_))
                       (_eid83566_ (gx#stx-e _id83564_))
                       (_marks83568_ (gx#stx-identifier-marks* _id83564_)))
                  (let* ((_marks8357083578_ _marks83568_)
                         (_else8357283586_ (lambda () _eid83566_))
                         (_K8357483591_
                          (lambda (_hd83589_) (cons _eid83566_ _hd83589_))))
                    (if (##pair? _marks8357083578_)
                        (let* ((_hd8357583594_ (##car _marks8357083578_))
                               (_hd83597_ _hd8357583594_))
                          (_K8357483591_ _hd83597_))
                        (_else8357283586_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx83534_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx83479_ _phi83480_)
        (letrec ((_make-phi83482_
                  (lambda (_super83532_)
                    (let ((__obj86092
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj86092
                       (gensym 'phi)
                       _super83532_)
                      __obj86092)))
                 (_make-phi/up83483_
                  (lambda (_ctx83527_ _super83528_)
                    (let ((_ctx+183530_ (_make-phi83482_ _super83528_)))
                      (##unchecked-structure-set!
                       _ctx83527_
                       _ctx+183530_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+183530_
                       _ctx83527_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+183530_)))
                 (_make-phi/down83484_
                  (lambda (_ctx83522_ _super83523_)
                    (let ((_ctx-183525_ (_make-phi83482_ _super83523_)))
                      (##unchecked-structure-set!
                       _ctx-183525_
                       _ctx83522_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx83522_
                       _ctx-183525_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-183525_)))
                 (_shift83485_
                  (lambda (_ctx83506_
                           _delta83507_
                           _make-delta-context83508_
                           _phi83509_
                           _K83510_)
                    (let ((_$e83512_
                           (##unchecked-structure-ref
                            _ctx83506_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e83512_
                          ((lambda (_super83515_)
                             (let* ((_super83517_
                                     (_K83510_ _super83515_ _delta83507_))
                                    (_ctx+d83519_
                                     (_make-delta-context83508_
                                      _ctx83506_
                                      _super83517_)))
                               (_K83510_
                                _ctx+d83519_
                                (fx- _phi83509_ _delta83507_))))
                           _$e83512_)
                          (error '"Bad context" _ctx83506_))))))
          (let _K83487_ ((_ctx83489_ _ctx83479_) (_phi83490_ _phi83480_))
            (if (fxzero? _phi83490_)
                _ctx83489_
                (if (##structure-instance-of? _ctx83489_ 'gx#context-phi::t)
                    (if (fxpositive? _phi83490_)
                        (let ((_$e83492_
                               (##unchecked-structure-ref
                                _ctx83489_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e83492_
                              ((lambda (_g8349483496_)
                                 (_K83487_ _g8349483496_ (fx- _phi83490_ '1)))
                               _$e83492_)
                              (_shift83485_
                               _ctx83489_
                               '1
                               _make-phi/up83483_
                               _phi83490_
                               _K83487_)))
                        (let ((_$e83499_
                               (##unchecked-structure-ref
                                _ctx83489_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e83499_
                              ((lambda (_g8350183503_)
                                 (_K83487_ _g8350183503_ (fx+ _phi83490_ '1)))
                               _$e83499_)
                              (_shift83485_
                               _ctx83489_
                               '-1
                               _make-phi/down83484_
                               _phi83490_
                               _K83487_))))
                    _ctx83489_))))))
    (define gx#core-context-get
      (lambda (_ctx83476_ _key83477_)
        (hash-get
         (##unchecked-structure-ref _ctx83476_ '2 gx#expander-context::t '#f)
         _key83477_)))
    (define gx#core-context-put!
      (lambda (_ctx83472_ _key83473_ _val83474_)
        (hash-put!
         (##unchecked-structure-ref _ctx83472_ '2 gx#expander-context::t '#f)
         _key83473_
         _val83474_)))
    (define gx#core-context-resolve
      (lambda (_ctx83459_ _key83460_)
        (let _lp83462_ ((_ctx83464_ _ctx83459_))
          (let ((_$e83466_ (gx#core-context-get _ctx83464_ _key83460_)))
            (if _$e83466_
                (values _$e83466_)
                (let ((_$e83469_
                       (if (##structure-instance-of?
                            _ctx83464_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx83464_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e83469_ (_lp83462_ _$e83469_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx83449_ _key83450_ _val83451_ _rebind83452_)
        (let ((_$e83454_ (gx#core-context-get _ctx83449_ _key83450_)))
          (if _$e83454_
              ((lambda (_xval83457_)
                 (gx#core-context-put!
                  _ctx83449_
                  _key83450_
                  (_rebind83452_ _xval83457_)))
               _$e83454_)
              (gx#core-context-put! _ctx83449_ _key83450_ _val83451_)))))
    (define gx#core-context-top__%
      (lambda (_ctx83427_ _stop?83428_)
        (let _lp83430_ ((_ctx83432_ _ctx83427_))
          (if (_stop?83428_ _ctx83432_)
              _ctx83432_
              (if (##structure-instance-of? _ctx83432_ 'gx#context-phi::t)
                  (_lp83430_
                   (##unchecked-structure-ref
                    _ctx83432_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx83438_ (gx#current-expander-context))
               (_stop?83440_ gx#top-context?))
          (gx#core-context-top__% _ctx83438_ _stop?83440_))))
    (define gx#core-context-top__1
      (lambda (_ctx83442_)
        (let ((_stop?83444_ gx#top-context?))
          (gx#core-context-top__% _ctx83442_ _stop?83444_))))
    (define gx#core-context-top
      (lambda _g86123_
        (let ((_g86122_ (##length _g86123_)))
          (cond ((##fx= _g86122_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g86123_))
                ((##fx= _g86122_ 1)
                 (apply (lambda (_ctx83442_)
                          (gx#core-context-top__1 _ctx83442_))
                        _g86123_))
                ((##fx= _g86122_ 2)
                 (apply (lambda (_ctx83446_ _stop?83447_)
                          (gx#core-context-top__% _ctx83446_ _stop?83447_))
                        _g86123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g86123_))))))
    (define gx#core-context-root__%
      (lambda (_ctx83412_)
        (let _lp83414_ ((_ctx83416_ _ctx83412_))
          (if (##structure-instance-of? _ctx83416_ 'gx#context-phi::t)
              (_lp83414_
               (##unchecked-structure-ref _ctx83416_ '3 gx#phi-context::t '#f))
              _ctx83416_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx83422_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx83422_))))
    (define gx#core-context-root
      (lambda _g86125_
        (let ((_g86124_ (##length _g86125_)))
          (cond ((##fx= _g86124_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g86125_))
                ((##fx= _g86124_ 1)
                 (apply (lambda (_ctx83424_)
                          (gx#core-context-root__% _ctx83424_))
                        _g86125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g86125_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx83393_ . __8339083394_)
        (let ((_$e83397_ (gx#current-expander-allow-rebind?)))
          (if _$e83397_
              _$e83397_
              (if (##structure-instance-of? _ctx83393_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx83393_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx83393_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx83404_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx83404_))))
    (define gx#core-context-rebind?
      (lambda _g86127_
        (let ((_g86126_ (##length _g86127_)))
          (cond ((##fx= _g86126_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g86127_))
                ((##fx= _g86126_ 1)
                 (apply (lambda (_ctx83406_)
                          (gx#core-context-rebind?__% _ctx83406_))
                        _g86127_))
                ((##fx>= _g86126_ 1)
                 (apply gx#core-context-rebind?__% _g86127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g86127_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx83376_)
        (let ((_$e83378_ (gx#core-context-top__1 _ctx83376_)))
          (if _$e83378_
              ((lambda (_ctx83381_)
                 (if (##structure-instance-of?
                      _ctx83381_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx83381_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e83378_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx83387_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx83387_))))
    (define gx#core-context-namespace
      (lambda _g86129_
        (let ((_g86128_ (##length _g86129_)))
          (cond ((##fx= _g86128_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g86129_))
                ((##fx= _g86128_ 1)
                 (apply (lambda (_ctx83389_)
                          (gx#core-context-namespace__% _ctx83389_))
                        _g86129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g86129_))))))
    (define gx#expander-binding?__%
      (lambda (_bind83362_ _is?83363_)
        (if (##structure-direct-instance-of? _bind83362_ 'gx#syntax-binding::t)
            (_is?83363_
             (##unchecked-structure-ref
              _bind83362_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind83368_)
        (let ((_is?83370_ gx#expander?))
          (gx#expander-binding?__% _bind83368_ _is?83370_))))
    (define gx#expander-binding?
      (lambda _g86131_
        (let ((_g86130_ (##length _g86131_)))
          (cond ((##fx= _g86130_ 1)
                 (apply (lambda (_bind83368_)
                          (gx#expander-binding?__0 _bind83368_))
                        _g86131_))
                ((##fx= _g86130_ 2)
                 (apply (lambda (_bind83372_ _is?83373_)
                          (gx#expander-binding?__% _bind83372_ _is?83373_))
                        _g86131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g86131_))))))
    (define gx#core-expander-binding?
      (lambda (_bind83359_)
        (gx#expander-binding?__% _bind83359_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind83357_)
        (gx#expander-binding?__% _bind83357_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind83351_)
        (letrec ((_direct-special-form?83353_
                  (lambda (_obj83355_)
                    (##structure-direct-instance-of?
                     _obj83355_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind83351_ _direct-special-form?83353_))))
    (define gx#special-form-binding?
      (lambda (_bind83349_)
        (gx#expander-binding?__% _bind83349_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind83340_)
        (letrec ((_feature?83342_
                  (lambda (_e83344_)
                    (let ((_$e83346_
                           (##structure-instance-of?
                            _e83344_
                            'gx#feature-expander::t)))
                      (if _$e83346_
                          _$e83346_
                          (##structure-instance-of?
                           _e83344_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind83340_ _feature?83342_))))
    (define gx#private-feature-binding?
      (lambda (_bind83338_)
        (gx#expander-binding?__% _bind83338_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id83325_ _bound?83326_)
        (if (gx#identifier? _id83325_)
            (_bound?83326_ (gx#resolve-identifier__0 _id83325_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id83331_)
        (let ((_bound?83333_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id83331_ _bound?83333_))))
    (define gx#core-bound-identifier?
      (lambda _g86133_
        (let ((_g86132_ (##length _g86133_)))
          (cond ((##fx= _g86132_ 1)
                 (apply (lambda (_id83331_)
                          (gx#core-bound-identifier?__0 _id83331_))
                        _g86133_))
                ((##fx= _g86132_ 2)
                 (apply (lambda (_id83335_ _bound?83336_)
                          (gx#core-bound-identifier?__%
                           _id83335_
                           _bound?83336_))
                        _g86133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g86133_))))))
    (define gx#core-identifier=?
      (lambda (_x83315_ _y83316_)
        (letrec ((_y=?83318_
                  (lambda (_xid83322_)
                    ((if (list? _y83316_) memq eq?) _xid83322_ _y83316_))))
          (let ((_bind83320_ (gx#resolve-identifier__0 _x83315_)))
            (if (##structure-instance-of? _bind83320_ 'gx#binding::t)
                (_y=?83318_
                 (##unchecked-structure-ref _bind83320_ '1 gx#binding::t '#f))
                (_y=?83318_ (gx#stx-e _x83315_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e83313_)
        (if (interned-symbol? _e83313_)
            (string-index__0 (symbol->string _e83313_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx83268_ _src83269_ _ctx83270_ _marks83271_)
        (if (##structure? _stx83268_)
            (let ((_$e83273_ (gx#sealed-syntax-unwrap _stx83268_)))
              (if _$e83273_
                  (values _$e83273_)
                  (if (gx#identifier? _stx83268_)
                      (let ((_id83276_
                             (gx#stx-unwrap__% _stx83268_ _marks83271_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id83276_ '1 gx#AST::t '#f)
                         (let ((_$e83278_
                                (##unchecked-structure-ref
                                 _id83276_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e83278_ _$e83278_ _src83269_))
                         _ctx83270_
                         (##unchecked-structure-ref
                          _id83276_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx83268_)
                       (let ((_$e83281_ (gx#stx-source _stx83268_)))
                         (if _$e83281_ _$e83281_ _src83269_))
                       _ctx83270_
                       (reverse _marks83271_)))))
            (##structure
             gx#syntax-quote::t
             _stx83268_
             _src83269_
             _ctx83270_
             (reverse _marks83271_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx83287_)
        (let* ((_src83289_ '#f)
               (_ctx83291_ (gx#current-expander-context))
               (_marks83293_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83287_
           _src83289_
           _ctx83291_
           _marks83293_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx83295_ _src83296_)
        (let* ((_ctx83298_ (gx#current-expander-context))
               (_marks83300_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83295_
           _src83296_
           _ctx83298_
           _marks83300_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx83302_ _src83303_ _ctx83304_)
        (let ((_marks83306_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83302_
           _src83303_
           _ctx83304_
           _marks83306_))))
    (define gx#core-quote-syntax
      (lambda _g86135_
        (let ((_g86134_ (##length _g86135_)))
          (cond ((##fx= _g86134_ 1)
                 (apply (lambda (_stx83287_)
                          (gx#core-quote-syntax__0 _stx83287_))
                        _g86135_))
                ((##fx= _g86134_ 2)
                 (apply (lambda (_stx83295_ _src83296_)
                          (gx#core-quote-syntax__1 _stx83295_ _src83296_))
                        _g86135_))
                ((##fx= _g86134_ 3)
                 (apply (lambda (_stx83302_ _src83303_ _ctx83304_)
                          (gx#core-quote-syntax__2
                           _stx83302_
                           _src83303_
                           _ctx83304_))
                        _g86135_))
                ((##fx= _g86134_ 4)
                 (apply (lambda (_stx83308_ _src83309_ _ctx83310_ _marks83311_)
                          (gx#core-quote-syntax__%
                           _stx83308_
                           _src83309_
                           _ctx83310_
                           _marks83311_))
                        _g86135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g86135_))))))
    (define gx#core-cons
      (lambda (_hd83264_ _tl83265_)
        (cons (gx#core-quote-syntax__0 _hd83264_) _tl83265_)))
    (define gx#core-list
      (lambda (_hd83261_ . _rest83262_)
        (cons (gx#core-quote-syntax__0 _hd83261_) _rest83262_)))
    (define gx#core-cons*
      (lambda (_hd83258_ . _rest83259_)
        (apply cons* (gx#core-quote-syntax__0 _hd83258_) _rest83259_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path83232_ _rel83233_)
        (let ((_path83245_ (gx#stx-e _stx-path83232_))
              (_reldir83246_
               (let _lp83235_ ((_relsrc83237_
                                (let ((_$e83242_
                                       (gx#stx-source _stx-path83232_)))
                                  (if _$e83242_ _$e83242_ _rel83233_))))
                 (if (##structure-instance-of? _relsrc83237_ 'gerbil#AST::t)
                     (_lp83235_
                      (let ((_$e83239_ (gx#stx-source _relsrc83237_)))
                        (if _$e83239_ _$e83239_ (gx#stx-e _relsrc83237_))))
                     (if (source-location-path? _relsrc83237_)
                         (path-directory (source-location-path _relsrc83237_))
                         (if (string? _relsrc83237_)
                             (path-directory _relsrc83237_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path83245_ (path-normalize _reldir83246_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path83251_)
        (let ((_rel83253_ '#f))
          (gx#core-resolve-path__% _stx-path83251_ _rel83253_))))
    (define gx#core-resolve-path
      (lambda _g86137_
        (let ((_g86136_ (##length _g86137_)))
          (cond ((##fx= _g86136_ 1)
                 (apply (lambda (_stx-path83251_)
                          (gx#core-resolve-path__0 _stx-path83251_))
                        _g86137_))
                ((##fx= _g86136_ 2)
                 (apply (lambda (_stx-path83255_ _rel83256_)
                          (gx#core-resolve-path__% _stx-path83255_ _rel83256_))
                        _g86137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g86137_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr83188_ _ctx83189_)
        (let* ((_repr8319083197_ _repr83188_)
               (_E8319283201_
                (lambda () (error '"No clause matching" _repr8319083197_)))
               (_K8319383209_
                (lambda (_subs83204_ _phi83205_)
                  (let ((_subst83207_
                         (if (not (null? _subs83204_))
                             (list->hash-table-eq _subs83204_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst83207_
                     _ctx83189_
                     _phi83205_
                     '#f)))))
          (if (##pair? _repr8319083197_)
              (let ((_hd8319483212_ (##car _repr8319083197_))
                    (_tl8319583214_ (##cdr _repr8319083197_)))
                (let* ((_phi83217_ _hd8319483212_)
                       (_subs83219_ _tl8319583214_))
                  (_K8319383209_ _subs83219_ _phi83217_)))
              (_E8319283201_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr83224_)
        (let ((_ctx83226_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr83224_ _ctx83226_))))
    (define gx#core-deserialize-mark
      (lambda _g86139_
        (let ((_g86138_ (##length _g86139_)))
          (cond ((##fx= _g86138_ 1)
                 (apply (lambda (_repr83224_)
                          (gx#core-deserialize-mark__0 _repr83224_))
                        _g86139_))
                ((##fx= _g86138_ 2)
                 (apply (lambda (_repr83228_ _ctx83229_)
                          (gx#core-deserialize-mark__% _repr83228_ _ctx83229_))
                        _g86139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g86139_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx83185_)
        (gx#stx-rewrap _stx83185_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx83183_)
        (gx#stx-unwrap__% _stx83183_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx83153_)
        (let* ((_g8315483162_ (gx#current-expander-marks))
               (_else8315683170_ (lambda () _stx83153_))
               (_K8315883175_
                (lambda (_hd83173_) (gx#stx-apply-mark _stx83153_ _hd83173_))))
          (if (##pair? _g8315483162_)
              (let* ((_hd8315983178_ (##car _g8315483162_))
                     (_hd83181_ _hd8315983178_))
                (_K8315883175_ _hd83181_))
              (_else8315683170_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx83138_ _E83139_)
        (let ((_bind83141_ (gx#resolve-identifier__0 _stx83138_)))
          (if (##structure-direct-instance-of?
               _bind83141_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind83141_
               '4
               gx#syntax-binding::t
               '#f)
              (_E83139_ _stx83138_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx83146_)
        (let ((_E83148_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx83146_ _E83148_))))
    (define gx#syntax-local-e
      (lambda _g86141_
        (let ((_g86140_ (##length _g86141_)))
          (cond ((##fx= _g86140_ 1)
                 (apply (lambda (_stx83146_) (gx#syntax-local-e__0 _stx83146_))
                        _g86141_))
                ((##fx= _g86140_ 2)
                 (apply (lambda (_stx83150_ _E83151_)
                          (gx#syntax-local-e__% _stx83150_ _E83151_))
                        _g86141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g86141_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx83122_ _E83123_)
        (let ((_e83125_ (gx#syntax-local-e__% _stx83122_ _E83123_)))
          (if (##structure-instance-of? _e83125_ 'gx#expander::t)
              (##structure-ref _e83125_ '1 gx#expander::t '#f)
              _e83125_))))
    (define gx#syntax-local-value__0
      (lambda (_stx83130_)
        (let ((_E83132_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx83130_ _E83132_))))
    (define gx#syntax-local-value
      (lambda _g86143_
        (let ((_g86142_ (##length _g86143_)))
          (cond ((##fx= _g86142_ 1)
                 (apply (lambda (_stx83130_)
                          (gx#syntax-local-value__0 _stx83130_))
                        _g86143_))
                ((##fx= _g86142_ 2)
                 (apply (lambda (_stx83134_ _E83135_)
                          (gx#syntax-local-value__% _stx83134_ _E83135_))
                        _g86143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g86143_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx83119_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx83119_)))))
