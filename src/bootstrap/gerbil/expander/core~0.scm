(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710954836)
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
      (lambda _$args86037_
        (apply make-instance gx#expander-context::t _$args86037_)))
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
      (lambda _$args86034_
        (apply make-instance gx#root-context::t _$args86034_)))
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
      (lambda _$args86031_
        (apply make-instance gx#phi-context::t _$args86031_)))
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
      (lambda _$args86028_
        (apply make-instance gx#top-context::t _$args86028_)))
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
      (lambda _$args86025_
        (apply make-instance gx#module-context::t _$args86025_)))
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
      (lambda _$args86022_
        (apply make-instance gx#prelude-context::t _$args86022_)))
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
      (lambda _$args86019_
        (apply make-instance gx#local-context::t _$args86019_)))
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
      (lambda (_self86003_ _id86004_ _super86005_)
        (if (##fx< '3 (##structure-length _self86003_))
            (begin
              (##unchecked-structure-set!
               _self86003_
               _id86004_
               '1
               (##structure-type _self86003_)
               '#f)
              (##unchecked-structure-set!
               _self86003_
               (make-hash-table-eq)
               '2
               (##structure-type _self86003_)
               '#f)
              (##unchecked-structure-set!
               _self86003_
               _super86005_
               '3
               (##structure-type _self86003_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self86003_
                   '3
                   (##vector-length _self86003_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self86010_ _id86011_)
        (let ((_super86013_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self86010_ _id86011_ _super86013_))))
    (define gx#phi-context:::init!
      (lambda _g86080_
        (let ((_g86079_ (##length _g86080_)))
          (cond ((##fx= _g86079_ 2)
                 (apply (lambda (_self86010_ _id86011_)
                          (gx#phi-context:::init!__0 _self86010_ _id86011_))
                        _g86080_))
                ((##fx= _g86079_ 3)
                 (apply (lambda (_self86015_ _id86016_ _super86017_)
                          (gx#phi-context:::init!__%
                           _self86015_
                           _id86016_
                           _super86017_))
                        _g86080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g86080_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self85867_ _super85868_)
        (if (##fx< '3 (##structure-length _self85867_))
            (begin
              (##unchecked-structure-set!
               _self85867_
               (gensym 'L)
               '1
               (##structure-type _self85867_)
               '#f)
              (##unchecked-structure-set!
               _self85867_
               (make-hash-table-eq)
               '2
               (##structure-type _self85867_)
               '#f)
              (##unchecked-structure-set!
               _self85867_
               _super85868_
               '3
               (##structure-type _self85867_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85867_
                   '3
                   (##vector-length _self85867_)))))
    (define gx#local-context:::init!__0
      (lambda (_self85873_)
        (let ((_super85875_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self85873_ _super85875_))))
    (define gx#local-context:::init!
      (lambda _g86082_
        (let ((_g86081_ (##length _g86082_)))
          (cond ((##fx= _g86081_ 1)
                 (apply (lambda (_self85873_)
                          (gx#local-context:::init!__0 _self85873_))
                        _g86082_))
                ((##fx= _g86081_ 2)
                 (apply (lambda (_self85877_ _super85878_)
                          (gx#local-context:::init!__%
                           _self85877_
                           _super85878_))
                        _g86082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g86082_))))))
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
      (lambda _$args85741_ (apply make-instance gx#binding::t _$args85741_)))
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
      (lambda _$args85738_
        (apply make-instance gx#runtime-binding::t _$args85738_)))
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
      (lambda _$args85735_
        (apply make-instance gx#local-binding::t _$args85735_)))
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
      (lambda _$args85732_
        (apply make-instance gx#top-binding::t _$args85732_)))
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
      (lambda _$args85729_
        (apply make-instance gx#module-binding::t _$args85729_)))
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
      (lambda _$args85726_
        (apply make-instance gx#extern-binding::t _$args85726_)))
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
      (lambda _$args85723_
        (apply make-instance gx#syntax-binding::t _$args85723_)))
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
      (lambda _$args85720_
        (apply make-instance gx#import-binding::t _$args85720_)))
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
      (lambda _$args85717_
        (apply make-instance gx#alias-binding::t _$args85717_)))
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
      (lambda _$args85714_ (apply make-instance gx#expander::t _$args85714_)))
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
      (lambda _$args85711_
        (apply make-instance gx#core-expander::t _$args85711_)))
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
      (lambda _$args85708_
        (apply make-instance gx#expression-form::t _$args85708_)))
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
      (lambda _$args85705_
        (apply make-instance gx#special-form::t _$args85705_)))
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
      (lambda _$args85702_
        (apply make-instance gx#definition-form::t _$args85702_)))
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
      (lambda _$args85699_
        (apply make-instance gx#top-special-form::t _$args85699_)))
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
      (lambda _$args85696_
        (apply make-instance gx#module-special-form::t _$args85696_)))
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
      (lambda _$args85693_
        (apply make-instance gx#feature-expander::t _$args85693_)))
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
      (lambda _$args85690_
        (apply make-instance gx#private-feature-expander::t _$args85690_)))
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
      (lambda _$args85687_
        (apply make-instance gx#reserved-expander::t _$args85687_)))
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
      (lambda _$args85684_
        (apply make-instance gx#macro-expander::t _$args85684_)))
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
      (lambda _$args85681_
        (apply make-instance gx#rename-macro-expander::t _$args85681_)))
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
      (lambda _$args85678_
        (apply make-instance gx#user-expander::t _$args85678_)))
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
      (lambda _$args85675_
        (apply make-instance gx#expander-mark::t _$args85675_)))
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
      (lambda (_ctx85660_ _message85661_ _stx85662_ . _details85663_)
        (let ((_ctx85673_
               (let ((_$e85665_ _ctx85660_))
                 (if _$e85665_
                     _$e85665_
                     (let ((_$e85668_ (gx#core-context-top__0)))
                       (if _$e85668_
                           ((lambda (_ctx85671_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx85671_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e85668_)
                           '#f))))))
          (raise (make-syntax-error
                  _message85661_
                  (cons _stx85662_ _details85663_)
                  _ctx85673_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx85647_ _expression?85648_)
        (gx#eval-syntax* (gx#core-expand__% _stx85647_ _expression?85648_))))
    (define gx#eval-syntax__0
      (lambda (_stx85653_)
        (let ((_expression?85655_ '#f))
          (gx#eval-syntax__% _stx85653_ _expression?85655_))))
    (define gx#eval-syntax
      (lambda _g86084_
        (let ((_g86083_ (##length _g86084_)))
          (cond ((##fx= _g86083_ 1)
                 (apply (lambda (_stx85653_) (gx#eval-syntax__0 _stx85653_))
                        _g86084_))
                ((##fx= _g86083_ 2)
                 (apply (lambda (_stx85657_ _expression?85658_)
                          (gx#eval-syntax__% _stx85657_ _expression?85658_))
                        _g86084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g86084_))))))
    (define gx#eval-syntax*
      (lambda (_stx85644_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx85644_))))
    (define gx#core-expand__%
      (lambda (_stx85631_ _expression?85632_)
        (if _expression?85632_
            (gx#core-expand-expression _stx85631_)
            (gx#core-expand-top _stx85631_))))
    (define gx#core-expand__0
      (lambda (_stx85637_)
        (let ((_expression?85639_ '#f))
          (gx#core-expand__% _stx85637_ _expression?85639_))))
    (define gx#core-expand
      (lambda _g86086_
        (let ((_g86085_ (##length _g86086_)))
          (cond ((##fx= _g86085_ 1)
                 (apply (lambda (_stx85637_) (gx#core-expand__0 _stx85637_))
                        _g86086_))
                ((##fx= _g86085_ 2)
                 (apply (lambda (_stx85641_ _expression?85642_)
                          (gx#core-expand__% _stx85641_ _expression?85642_))
                        _g86086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g86086_))))))
    (define gx#core-expand-top
      (lambda (_stx85598_)
        (let* ((_stx85600_ (gx#core-expand*__0 _stx85598_))
               (_e8560185608_ _stx85600_)
               (_E8560385612_
                (lambda () (gx#core-expand-expression _stx85600_)))
               (_E8560285626_
                (lambda ()
                  (if (gx#stx-pair? _e8560185608_)
                      (let ((_e8560485616_ (gx#syntax-e _e8560185608_)))
                        (let ((_hd8560585619_ (##car _e8560485616_))
                              (_tl8560685621_ (##cdr _e8560485616_)))
                          (let ((_form85624_ _hd8560585619_))
                            (if (gx#core-bound-identifier?__0 _form85624_)
                                _stx85600_
                                (_E8560385612_)))))
                      (_E8560385612_)))))
          (_E8560285626_))))
    (define gx#core-expand-expression
      (lambda (_stx85545_)
        (letrec ((_sealed-expression?85547_
                  (lambda (_hd85568_)
                    (if (gx#sealed-syntax? _hd85568_)
                        (let* ((_e8556985576_ _hd85568_)
                               (_E8557185580_ (lambda () '#f))
                               (_E8557085594_
                                (lambda ()
                                  (if (gx#stx-pair? _e8556985576_)
                                      (let ((_e8557285584_
                                             (gx#syntax-e _e8556985576_)))
                                        (let ((_hd8557385587_
                                               (##car _e8557285584_))
                                              (_tl8557485589_
                                               (##cdr _e8557285584_)))
                                          (let ((_form85592_ _hd8557385587_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form85592_
                                                 gx#expression-form-binding?)
                                                (_E8557185580_)))))
                                      (_E8557185580_)))))
                          (_E8557085594_))
                        '#f)))
                 (_illegal-expression85548_
                  (lambda (_hd85566_ . _g86087_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx85545_
                     _hd85566_)))
                 (_expand-e85549_
                  (lambda (_form85561_ _hd85562_)
                    (let ((_bind85564_
                           (if (##structure-instance-of?
                                _form85561_
                                'gx#binding::t)
                               _form85561_
                               (gx#resolve-identifier__0 _form85561_))))
                      (if (gx#core-expander-binding? _bind85564_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind85564_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd85562_
                            (gx#stx-source _stx85545_)))
                          (if (##structure-direct-instance-of?
                               _bind85564_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind85564_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd85562_
                                 (gx#stx-source _stx85545_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx85545_
                               _form85561_)))))))
          (let ((_hd85551_ (gx#core-expand-head _stx85545_)))
            (if (_sealed-expression?85547_ _hd85551_)
                _hd85551_
                (if (gx#stx-pair? _hd85551_)
                    (let* ((_form85553_ (gx#stx-car _hd85551_))
                           (_bind85555_
                            (if (gx#identifier? _form85553_)
                                (gx#resolve-identifier__0 _form85553_)
                                '#f)))
                      (if (or (not _bind85555_)
                              (not (gx#core-expander-binding? _bind85555_)))
                          (_expand-e85549_ '%%app (cons '%%app _hd85551_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind85555_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd85551_
                               _illegal-expression85548_)
                              (if (gx#expression-form-binding? _bind85555_)
                                  (_expand-e85549_ _bind85555_ _hd85551_)
                                  (if (gx#direct-special-form-binding?
                                       _bind85555_)
                                      (gx#core-expand-expression
                                       (_expand-e85549_ _bind85555_ _hd85551_))
                                      (_illegal-expression85548_
                                       _hd85551_))))))
                    (if (gx#core-bound-identifier?__0 _hd85551_)
                        (_illegal-expression85548_ _hd85551_)
                        (if (gx#identifier? _hd85551_)
                            (_expand-e85549_
                             '%%ref
                             (cons '%%ref (cons _hd85551_ '())))
                            (if (gx#stx-datum? _hd85551_)
                                (_expand-e85549_
                                 '%#quote
                                 (cons '%#quote (cons _hd85551_ '())))
                                (_illegal-expression85548_ _hd85551_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx85540_)
        (call-with-parameters
         (lambda ()
           (let ((_stx85543_ (gx#core-expand-expression _stx85540_)))
             (values _stx85543_ (gx#eval-syntax* _stx85543_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx85521_ _stop?85522_)
        (let _lp85524_ ((_stx85526_ _stx85521_))
          (if (_stop?85522_ _stx85526_)
              _stx85526_
              (let ((_rstx85528_ (gx#core-expand1 _stx85526_)))
                (if (eq? _stx85526_ _rstx85528_)
                    _stx85526_
                    (_lp85524_ _rstx85528_)))))))
    (define gx#core-expand*__0
      (lambda (_stx85533_)
        (let ((_stop?85535_ false))
          (gx#core-expand*__% _stx85533_ _stop?85535_))))
    (define gx#core-expand*
      (lambda _g86089_
        (let ((_g86088_ (##length _g86089_)))
          (cond ((##fx= _g86088_ 1)
                 (apply (lambda (_stx85533_) (gx#core-expand*__0 _stx85533_))
                        _g86089_))
                ((##fx= _g86088_ 2)
                 (apply (lambda (_stx85537_ _stop?85538_)
                          (gx#core-expand*__% _stx85537_ _stop?85538_))
                        _g86089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g86089_))))))
    (define gx#core-expand1
      (lambda (_stx85477_)
        (letrec ((_step85479_
                  (lambda (_hd85516_)
                    (let ((_bind85518_ (gx#resolve-identifier__0 _hd85516_)))
                      (if (##structure-instance-of?
                           _bind85518_
                           'gx#runtime-binding::t)
                          _stx85477_
                          (if (##structure-direct-instance-of?
                               _bind85518_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind85518_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx85477_)
                              (if (not _bind85518_)
                                  _stx85477_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx85477_))))))))
          (let* ((_e8548085488_ _stx85477_)
                 (_E8548685492_ (lambda () _stx85477_))
                 (_E8548285498_
                  (lambda ()
                    (let ((_hd85496_ _e8548085488_))
                      (if (gx#identifier? _hd85496_)
                          (_step85479_ _hd85496_)
                          (_E8548685492_)))))
                 (_E8548185512_
                  (lambda ()
                    (if (gx#stx-pair? _e8548085488_)
                        (let ((_e8548385502_ (gx#syntax-e _e8548085488_)))
                          (let ((_hd8548485505_ (##car _e8548385502_))
                                (_tl8548585507_ (##cdr _e8548385502_)))
                            (let ((_hd85510_ _hd8548485505_))
                              (if (gx#identifier? _hd85510_)
                                  (_step85479_ _hd85510_)
                                  (_E8548285498_)))))
                        (_E8548285498_)))))
            (_E8548185512_)))))
    (define gx#core-expand-head
      (lambda (_stx85443_)
        (letrec ((_stop?85445_
                  (lambda (_stx85447_)
                    (let* ((_e8544885455_ _stx85447_)
                           (_E8545085459_ (lambda () '#f))
                           (_E8544985473_
                            (lambda ()
                              (if (gx#stx-pair? _e8544885455_)
                                  (let ((_e8545185463_
                                         (gx#syntax-e _e8544885455_)))
                                    (let ((_hd8545285466_
                                           (##car _e8545185463_))
                                          (_tl8545385468_
                                           (##cdr _e8545185463_)))
                                      (let ((_hd85471_ _hd8545285466_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd85471_)
                                            (_E8545085459_)))))
                                  (_E8545085459_)))))
                      (_E8544985473_)))))
          (gx#core-expand*__% _stx85443_ _stop?85445_))))
    (define gx#core-expand-block__%
      (lambda (_stx85249_
               _expand-special85250_
               _begin-form85251_
               _expand-e85252_)
        (letrec ((_expand-splice85254_
                  (lambda (_hd85417_ _body85418_ _rest85419_ _r85420_)
                    (if (gx#stx-list? _body85418_)
                        (_K85258_
                         (gx#stx-foldr cons _rest85419_ _body85418_)
                         _r85420_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx85249_
                         _hd85417_))))
                 (_expand-cond-expand85255_
                  (lambda (_hd85413_ _rest85414_ _r85415_)
                    (_K85258_
                     (cons (gx#core-expand-cond-expand% _hd85413_) _rest85414_)
                     _r85415_)))
                 (_expand-include85256_
                  (lambda (_hd85362_ _rest85363_ _r85364_)
                    (let* ((_e8536585375_ _hd85362_)
                           (_E8536785379_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8536585375_)))
                           (_E8536685409_
                            (lambda ()
                              (if (gx#stx-pair? _e8536585375_)
                                  (let ((_e8536885383_
                                         (gx#syntax-e _e8536585375_)))
                                    (let ((_hd8536985386_
                                           (##car _e8536885383_))
                                          (_tl8537085388_
                                           (##cdr _e8536885383_)))
                                      (if (gx#stx-pair? _tl8537085388_)
                                          (let ((_e8537185391_
                                                 (gx#syntax-e _tl8537085388_)))
                                            (let ((_hd8537285394_
                                                   (##car _e8537185391_))
                                                  (_tl8537385396_
                                                   (##cdr _e8537185391_)))
                                              (let ((_path85399_
                                                     _hd8537285394_))
                                                (if (gx#stx-null?
                                                     _tl8537385396_)
                                                    (if (gx#stx-string?
                                                         _path85399_)
                                                        (let* ((_rpath85401_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path85399_
                         (gx#stx-source _hd85362_)))
                       (_block85403_
                        (gx#core-expand-include%__% _hd85362_ _rpath85401_))
                       (_rbody85406_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block85403_
                            _expand-special85250_
                            '#f
                            _expand-e85252_))
                         gx#current-expander-path
                         (cons _rpath85401_ (gx#current-expander-path)))))
                  (_K85258_ _rest85363_ (foldr1 cons _r85364_ _rbody85406_)))
                (_E8536785379_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8536785379_)))))
                                          (_E8536785379_))))
                                  (_E8536785379_)))))
                      (_E8536685409_))))
                 (_expand-expression85257_
                  (lambda (_hd85358_ _rest85359_ _r85360_)
                    (_K85258_
                     _rest85359_
                     (cons (_expand-e85252_ _hd85358_) _r85360_))))
                 (_K85258_
                  (lambda (_rest85288_ _r85289_)
                    (let* ((_e8529085297_ _rest85288_)
                           (_E8529285301_
                            (lambda ()
                              (if _begin-form85251_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form85251_
                                    (reverse _r85289_))
                                   (gx#stx-source _stx85249_))
                                  _r85289_)))
                           (_E8529185354_
                            (lambda ()
                              (if (gx#stx-pair? _e8529085297_)
                                  (let ((_e8529385305_
                                         (gx#syntax-e _e8529085297_)))
                                    (let ((_hd8529485308_
                                           (##car _e8529385305_))
                                          (_tl8529585310_
                                           (##cdr _e8529385305_)))
                                      (let* ((_hd85313_ _hd8529485308_)
                                             (_rest85315_ _tl8529585310_))
                                        (if '#t
                                            (let* ((_hd85317_
                                                    (gx#core-expand-head
                                                     _hd85313_))
                                                   (_e8531885325_ _hd85317_)
                                                   (_E8532085329_
                                                    (lambda ()
                                                      (_expand-expression85257_
                                                       _hd85317_
                                                       _rest85315_
                                                       _r85289_)))
                                                   (_E8531985350_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8531885325_)
                                                          (let ((_e8532185333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8531885325_)))
                    (let ((_hd8532285336_ (##car _e8532185333_))
                          (_tl8532385338_ (##cdr _e8532185333_)))
                      (let* ((_form85341_ _hd8532285336_)
                             (_body85343_ _tl8532385338_))
                        (if '#t
                            (let ((_bind85345_
                                   (if (gx#identifier? _form85341_)
                                       (gx#resolve-identifier__0 _form85341_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind85345_)
                                  (let ((_$e85347_
                                         (##unchecked-structure-ref
                                          _bind85345_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e85347_)
                                        (_expand-splice85254_
                                         _hd85317_
                                         _body85343_
                                         _rest85315_
                                         _r85289_)
                                        (if (eq? '%#cond-expand _$e85347_)
                                            (_expand-cond-expand85255_
                                             _hd85317_
                                             _rest85315_
                                             _r85289_)
                                            (if (eq? '%#include _$e85347_)
                                                (_expand-include85256_
                                                 _hd85317_
                                                 _rest85315_
                                                 _r85289_)
                                                (_expand-special85250_
                                                 _hd85317_
                                                 _K85258_
                                                 _rest85315_
                                                 _r85289_)))))
                                  (_expand-expression85257_
                                   _hd85317_
                                   _rest85315_
                                   _r85289_)))
                            (_E8532085329_)))))
                  (_E8532085329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8531985350_))
                                            (_E8529285301_)))))
                                  (_E8529285301_)))))
                      (_E8529185354_)))))
          (let* ((_e8525985266_ _stx85249_)
                 (_E8526185270_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8525985266_)))
                 (_E8526085284_
                  (lambda ()
                    (if (gx#stx-pair? _e8525985266_)
                        (let ((_e8526285274_ (gx#syntax-e _e8525985266_)))
                          (let ((_hd8526385277_ (##car _e8526285274_))
                                (_tl8526485279_ (##cdr _e8526285274_)))
                            (let ((_body85282_ _tl8526485279_))
                              (if (gx#stx-list? _body85282_)
                                  (_K85258_ _body85282_ '())
                                  (_E8526185270_)))))
                        (_E8526185270_)))))
            (_E8526085284_)))))
    (define gx#core-expand-block__0
      (lambda (_stx85425_ _expand-special85426_)
        (let* ((_begin-form85428_ '%#begin)
               (_expand-e85430_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85425_
           _expand-special85426_
           _begin-form85428_
           _expand-e85430_))))
    (define gx#core-expand-block__1
      (lambda (_stx85432_ _expand-special85433_ _begin-form85434_)
        (let ((_expand-e85436_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85432_
           _expand-special85433_
           _begin-form85434_
           _expand-e85436_))))
    (define gx#core-expand-block
      (lambda _g86091_
        (let ((_g86090_ (##length _g86091_)))
          (cond ((##fx= _g86090_ 2)
                 (apply (lambda (_stx85425_ _expand-special85426_)
                          (gx#core-expand-block__0
                           _stx85425_
                           _expand-special85426_))
                        _g86091_))
                ((##fx= _g86090_ 3)
                 (apply (lambda (_stx85432_
                                 _expand-special85433_
                                 _begin-form85434_)
                          (gx#core-expand-block__1
                           _stx85432_
                           _expand-special85433_
                           _begin-form85434_))
                        _g86091_))
                ((##fx= _g86090_ 4)
                 (apply (lambda (_stx85438_
                                 _expand-special85439_
                                 _begin-form85440_
                                 _expand-e85441_)
                          (gx#core-expand-block__%
                           _stx85438_
                           _expand-special85439_
                           _begin-form85440_
                           _expand-e85441_))
                        _g86091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g86091_))))))
    (define gx#core-expand-block*
      (lambda (_stx85197_ _expand-special85198_)
        (let* ((_g8519985210_
                (gx#core-expand-block__1 _stx85197_ _expand-special85198_ '#f))
               (_E8520385214_
                (lambda () (error '"No clause matching" _g8519985210_))))
          (let ((_K8520885245_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx85197_)))
                (_K8520585231_ (lambda (_expr85229_) _expr85229_))
                (_K8520485220_
                 (lambda (_body85218_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body85218_))
                    (gx#stx-source _stx85197_)))))
            (let ((_try-match8520185241_
                   (lambda ()
                     (if (##pair? _g8519985210_)
                         (let ((_tl8520785236_ (##cdr _g8519985210_))
                               (_hd8520685234_ (##car _g8519985210_)))
                           (if (##null? _tl8520785236_)
                               (let ((_expr85239_ _hd8520685234_))
                                 (_K8520585231_ _expr85239_))
                               (let ((_body85223_ _g8519985210_))
                                 (_K8520485220_ _body85223_))))
                         (let ((_body85223_ _g8519985210_))
                           (_K8520485220_ _body85223_))))))
              (if (##null? _g8519985210_)
                  (_K8520885245_)
                  (_try-match8520185241_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx85025_)
        (letrec ((_satisfied?85027_
                  (lambda (_condition85125_)
                    (let* ((_e8512685141_ _condition85125_)
                           (_E8513685145_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8512685141_)))
                           (_E8512985164_
                            (lambda ()
                              (if (gx#stx-pair? _e8512685141_)
                                  (let ((_e8513785149_
                                         (gx#syntax-e _e8512685141_)))
                                    (let ((_hd8513885152_
                                           (##car _e8513785149_))
                                          (_tl8513985154_
                                           (##cdr _e8513785149_)))
                                      (let* ((_combinator85157_ _hd8513885152_)
                                             (_body85159_ _tl8513985154_))
                                        (if (gx#stx-list? _body85159_)
                                            (let ((_$e85161_
                                                   (gx#stx-e
                                                    _combinator85157_)))
                                              (if (eq? 'not _$e85161_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?85027_
                                                        _body85159_))
                                                  (if (eq? 'and _$e85161_)
                                                      (gx#stx-andmap
                                                       _satisfied?85027_
                                                       _body85159_)
                                                      (if (eq? 'or _$e85161_)
                                                          (gx#stx-ormap
                                                           _satisfied?85027_
                                                           _body85159_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e85161_)
                      (gx#stx-andmap gx#core-resolve-identifier _body85159_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx85025_
                       _combinator85157_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8513685145_)))))
                                  (_E8513685145_))))
                           (_E8512885187_
                            (lambda ()
                              (if (gx#stx-pair? _e8512685141_)
                                  (let ((_e8513085168_
                                         (gx#syntax-e _e8512685141_)))
                                    (let ((_hd8513185171_
                                           (##car _e8513085168_))
                                          (_tl8513285173_
                                           (##cdr _e8513085168_)))
                                      (if (and (gx#identifier? _hd8513185171_)
                                               (gx#core-identifier=?
                                                _hd8513185171_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8513285173_)
                                              (let ((_e8513385176_
                                                     (gx#syntax-e
                                                      _tl8513285173_)))
                                                (let ((_hd8513485179_
                                                       (##car _e8513385176_))
                                                      (_tl8513585181_
                                                       (##cdr _e8513385176_)))
                                                  (let ((_expr85184_
                                                         _hd8513485179_))
                                                    (if (gx#stx-null?
                                                         _tl8513585181_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr85184_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8512985164_))
                (_E8512985164_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8512985164_))
                                          (_E8512985164_))))
                                  (_E8512985164_))))
                           (_E8512785193_
                            (lambda ()
                              (let ((_id85191_ _e8512685141_))
                                (if (gx#identifier? _id85191_)
                                    (gx#core-bound-identifier?__%
                                     _id85191_
                                     gx#feature-binding?)
                                    (_E8512885187_))))))
                      (_E8512785193_))))
                 (_loop85028_
                  (lambda (_rest85058_)
                    (let* ((_e8505985067_ _rest85058_)
                           (_E8506585071_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8505985067_)))
                           (_E8506185075_
                            (lambda ()
                              (if (gx#stx-null? _e8505985067_)
                                  (if '#t '() (_E8506585071_))
                                  (_E8506585071_))))
                           (_E8506085121_
                            (lambda ()
                              (if (gx#stx-pair? _e8505985067_)
                                  (let ((_e8506285079_
                                         (gx#syntax-e _e8505985067_)))
                                    (let ((_hd8506385082_
                                           (##car _e8506285079_))
                                          (_tl8506485084_
                                           (##cdr _e8506285079_)))
                                      (let* ((_hd85087_ _hd8506385082_)
                                             (_rest85089_ _tl8506485084_))
                                        (if '#t
                                            (let* ((_e8509085097_ _hd85087_)
                                                   (_E8509285101_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8509085097_)))
                                                   (_E8509185117_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8509085097_)
                                                          (let ((_e8509385105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8509085097_)))
                    (let ((_hd8509485108_ (##car _e8509385105_))
                          (_tl8509585110_ (##cdr _e8509385105_)))
                      (let* ((_condition85113_ _hd8509485108_)
                             (_body85115_ _tl8509585110_))
                        (if '#t
                            (if (gx#stx-eq? _condition85113_ 'else)
                                (if (gx#stx-null? _rest85089_)
                                    _body85115_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx85025_
                                     _hd85087_))
                                (if (_satisfied?85027_ _condition85113_)
                                    _body85115_
                                    (_loop85028_ _rest85089_)))
                            (_E8509285101_)))))
                  (_E8509285101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8509185117_))
                                            (_E8506185075_)))))
                                  (_E8506185075_)))))
                      (_E8506085121_)))))
          (let* ((_e8502985036_ _stx85025_)
                 (_E8503185040_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8502985036_)))
                 (_E8503085054_
                  (lambda ()
                    (if (gx#stx-pair? _e8502985036_)
                        (let ((_e8503285044_ (gx#syntax-e _e8502985036_)))
                          (let ((_hd8503385047_ (##car _e8503285044_))
                                (_tl8503485049_ (##cdr _e8503285044_)))
                            (let ((_clauses85052_ _tl8503485049_))
                              (if (gx#stx-list? _clauses85052_)
                                  (gx#core-cons
                                   'begin
                                   (_loop85028_ _clauses85052_))
                                  (_E8503185040_)))))
                        (_E8503185040_)))))
            (_E8503085054_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx84968_ _rpath84969_)
        (let* ((_e8497084980_ _stx84968_)
               (_E8497284984_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8497084980_)))
               (_E8497185011_
                (lambda ()
                  (if (gx#stx-pair? _e8497084980_)
                      (let ((_e8497384988_ (gx#syntax-e _e8497084980_)))
                        (let ((_hd8497484991_ (##car _e8497384988_))
                              (_tl8497584993_ (##cdr _e8497384988_)))
                          (if (gx#stx-pair? _tl8497584993_)
                              (let ((_e8497684996_
                                     (gx#syntax-e _tl8497584993_)))
                                (let ((_hd8497784999_ (##car _e8497684996_))
                                      (_tl8497885001_ (##cdr _e8497684996_)))
                                  (let ((_path85004_ _hd8497784999_))
                                    (if (gx#stx-null? _tl8497885001_)
                                        (if (gx#stx-string? _path85004_)
                                            (let ((_rpath85009_
                                                   (let ((_$e85006_
                                                          _rpath84969_))
                                                     (if _$e85006_
                                                         _$e85006_
                                                         (gx#core-resolve-path__%
                                                          _path85004_
                                                          (gx#stx-source
                                                           _stx84968_))))))
                                              (if (member _rpath85009_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx84968_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath85009_))
                                                    (gx#stx-source
                                                     _stx84968_)))))
                                            (_E8497284984_))
                                        (_E8497284984_)))))
                              (_E8497284984_))))
                      (_E8497284984_)))))
          (_E8497185011_))))
    (define gx#core-expand-include%__0
      (lambda (_stx85018_)
        (let ((_rpath85020_ '#f))
          (gx#core-expand-include%__% _stx85018_ _rpath85020_))))
    (define gx#core-expand-include%
      (lambda _g86093_
        (let ((_g86092_ (##length _g86093_)))
          (cond ((##fx= _g86092_ 1)
                 (apply (lambda (_stx85018_)
                          (gx#core-expand-include%__0 _stx85018_))
                        _g86093_))
                ((##fx= _g86092_ 2)
                 (apply (lambda (_stx85022_ _rpath85023_)
                          (gx#core-expand-include%__% _stx85022_ _rpath85023_))
                        _g86093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g86093_))))))
    (define gx#core-apply-expander__%
      (lambda (_K84937_ _stx84938_ _method84939_)
        (if (procedure? _K84937_)
            (let ((_$e84941_ (gx#stx-source _stx84938_)))
              (if _$e84941_
                  ((lambda (_g8494384945_)
                     (gx#stx-wrap-source (_K84937_ _stx84938_) _g8494384945_))
                   _$e84941_)
                  (_K84937_ _stx84938_)))
            (let ((_$e84948_ (bound-method-ref _K84937_ _method84939_)))
              (if _$e84948_
                  ((lambda (_g8495084952_)
                     (gx#core-apply-expander__%
                      _g8495084952_
                      _stx84938_
                      _method84939_))
                   _$e84948_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx84938_
                   _method84939_))))))
    (define gx#core-apply-expander__0
      (lambda (_K84958_ _stx84959_)
        (let ((_method84961_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K84958_ _stx84959_ _method84961_))))
    (define gx#core-apply-expander
      (lambda _g86095_
        (let ((_g86094_ (##length _g86095_)))
          (cond ((##fx= _g86094_ 2)
                 (apply (lambda (_K84958_ _stx84959_)
                          (gx#core-apply-expander__0 _K84958_ _stx84959_))
                        _g86095_))
                ((##fx= _g86094_ 3)
                 (apply (lambda (_K84963_ _stx84964_ _method84965_)
                          (gx#core-apply-expander__%
                           _K84963_
                           _stx84964_
                           _method84965_))
                        _g86095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g86095_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self84933_ _stx84934_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx84934_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self84786_ _stx84787_)
        (let* ((_self8478884794_ _self84786_)
               (_E8479084798_
                (lambda () (error '"No clause matching" _self8478884794_)))
               (_K8479184803_
                (lambda (_K84801_)
                  (gx#core-apply-expander__0 _K84801_ _stx84787_))))
          (if (##structure-instance-of? _self8478884794_ 'gx#core-macro::t)
              (let* ((_e8479284806_
                      (##unchecked-structure-ref
                       _self8478884794_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84809_ _e8479284806_))
                (_K8479184803_ _K84809_))
              (_E8479084798_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self84639_ _stx84640_)
        (if (gx#sealed-syntax? _stx84640_)
            _stx84640_
            (let* ((_self8464184647_ _self84639_)
                   (_E8464384651_
                    (lambda () (error '"No clause matching" _self8464184647_)))
                   (_K8464484656_
                    (lambda (_K84654_)
                      (gx#core-apply-expander__0 _K84654_ _stx84640_))))
              (if (##structure-instance-of?
                   _self8464184647_
                   'gx#core-expander::t)
                  (let* ((_e8464584659_
                          (##unchecked-structure-ref
                           _self8464184647_
                           '1
                           gx#expander::t
                           '#f))
                         (_K84662_ _e8464584659_))
                    (_K8464484656_ _K84662_))
                  (_E8464384651_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self84501_ _stx84502_ _top?84503_)
        (if (_top?84503_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self84501_ _stx84502_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx84502_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self84508_ _stx84509_)
        (let ((_top?84511_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self84508_
           _stx84509_
           _top?84511_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g86097_
        (let ((_g86096_ (##length _g86097_)))
          (cond ((##fx= _g86096_ 2)
                 (apply (lambda (_self84508_ _stx84509_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self84508_
                           _stx84509_))
                        _g86097_))
                ((##fx= _g86096_ 3)
                 (apply (lambda (_self84513_ _stx84514_ _top?84515_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self84513_
                           _stx84514_
                           _top?84515_))
                        _g86097_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g86097_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self84375_ _stx84376_)
        (gx#top-special-form::apply-macro-expander__%
         _self84375_
         _stx84376_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self84200_ _stx84201_)
        (let* ((_self8420284208_ _self84200_)
               (_E8420484212_
                (lambda () (error '"No clause matching" _self8420284208_)))
               (_K8420584245_
                (lambda (_id84215_)
                  (let* ((_e8421684223_ _stx84201_)
                         (_E8421884227_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8421684223_)))
                         (_E8421784241_
                          (lambda ()
                            (if (gx#stx-pair? _e8421684223_)
                                (let ((_e8421984231_
                                       (gx#syntax-e _e8421684223_)))
                                  (let ((_hd8422084234_ (##car _e8421984231_))
                                        (_tl8422184236_ (##cdr _e8421984231_)))
                                    (let ((_body84239_ _tl8422184236_))
                                      (if '#t
                                          (gx#core-cons _id84215_ _body84239_)
                                          (_E8421884227_)))))
                                (_E8421884227_)))))
                    (_E8421784241_)))))
          (if (##structure-instance-of?
               _self8420284208_
               'gx#rename-macro-expander::t)
              (let* ((_e8420684248_
                      (##unchecked-structure-ref
                       _self8420284208_
                       '1
                       gx#expander::t
                       '#f))
                     (_id84251_ _e8420684248_))
                (_K8420584245_ _id84251_))
              (_E8420484212_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self84026_ _stx84027_ _method84028_)
        (let* ((_self8402984037_ _self84026_)
               (_E8403184041_
                (lambda () (error '"No clause matching" _self8402984037_)))
               (_K8403284048_
                (lambda (_phi84044_ _ctx84045_ _K84046_)
                  (gx#core-apply-user-macro
                   _K84046_
                   _stx84027_
                   _ctx84045_
                   _phi84044_
                   _method84028_))))
          (if (##structure-instance-of? _self8402984037_ 'gx#macro-expander::t)
              (let* ((_e8403384051_
                      (##unchecked-structure-ref
                       _self8402984037_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84054_ _e8403384051_)
                     (_e8403484056_
                      (##unchecked-structure-ref
                       _self8402984037_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx84059_ _e8403484056_)
                     (_e8403584061_
                      (##unchecked-structure-ref
                       _self8402984037_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi84064_ _e8403584061_))
                (_K8403284048_ _phi84064_ _ctx84059_ _K84054_))
              (_E8403184041_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self84069_ _stx84070_)
        (let ((_method84072_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self84069_
           _stx84070_
           _method84072_))))
    (define gx#core-apply-user-expander
      (lambda _g86099_
        (let ((_g86098_ (##length _g86099_)))
          (cond ((##fx= _g86098_ 2)
                 (apply (lambda (_self84069_ _stx84070_)
                          (gx#core-apply-user-expander__0
                           _self84069_
                           _stx84070_))
                        _g86099_))
                ((##fx= _g86098_ 3)
                 (apply (lambda (_self84074_ _stx84075_ _method84076_)
                          (gx#core-apply-user-expander__%
                           _self84074_
                           _stx84075_
                           _method84076_))
                        _g86099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g86099_))))))
    (define gx#core-apply-user-macro
      (lambda (_K84016_ _stx84017_ _ctx84018_ _phi84019_ _method84020_)
        (let ((_mark84022_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx84018_
                _phi84019_
                _stx84017_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K84016_
               (gx#stx-apply-mark _stx84017_ _mark84022_)
               _method84020_)
              _mark84022_))
           gx#current-expander-marks
           (cons _mark84022_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx83867_ _phi83868_ _ctx83869_)
        (let _lp83871_ ((_bind83873_
                         (gx#core-resolve-identifier__%
                          _stx83867_
                          _phi83868_
                          _ctx83869_)))
          (if (##structure-direct-instance-of?
               _bind83873_
               'gx#import-binding::t)
              (_lp83871_
               (##unchecked-structure-ref
                _bind83873_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind83873_
                   'gx#alias-binding::t)
                  (_lp83871_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind83873_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi83868_
                    _ctx83869_))
                  _bind83873_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx83878_)
        (let* ((_phi83880_ (gx#current-expander-phi))
               (_ctx83882_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83878_ _phi83880_ _ctx83882_))))
    (define gx#resolve-identifier__1
      (lambda (_stx83884_ _phi83885_)
        (let ((_ctx83887_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83884_ _phi83885_ _ctx83887_))))
    (define gx#resolve-identifier
      (lambda _g86101_
        (let ((_g86100_ (##length _g86101_)))
          (cond ((##fx= _g86100_ 1)
                 (apply (lambda (_stx83878_)
                          (gx#resolve-identifier__0 _stx83878_))
                        _g86101_))
                ((##fx= _g86100_ 2)
                 (apply (lambda (_stx83884_ _phi83885_)
                          (gx#resolve-identifier__1 _stx83884_ _phi83885_))
                        _g86101_))
                ((##fx= _g86100_ 3)
                 (apply (lambda (_stx83889_ _phi83890_ _ctx83891_)
                          (gx#resolve-identifier__%
                           _stx83889_
                           _phi83890_
                           _ctx83891_))
                        _g86101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g86101_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx83825_ _val83826_ _rebind?83827_ _phi83828_ _ctx83829_)
        (let ((_rebind?83831_
               (if (not _rebind?83827_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?83827_) _rebind?83827_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx83825_)
           _val83826_
           _rebind?83831_
           _phi83828_
           _ctx83829_))))
    (define gx#bind-identifier!__0
      (lambda (_stx83836_ _val83837_)
        (let* ((_rebind?83839_ '#f)
               (_phi83841_ (gx#current-expander-phi))
               (_ctx83843_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83836_
           _val83837_
           _rebind?83839_
           _phi83841_
           _ctx83843_))))
    (define gx#bind-identifier!__1
      (lambda (_stx83845_ _val83846_ _rebind?83847_)
        (let* ((_phi83849_ (gx#current-expander-phi))
               (_ctx83851_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83845_
           _val83846_
           _rebind?83847_
           _phi83849_
           _ctx83851_))))
    (define gx#bind-identifier!__2
      (lambda (_stx83853_ _val83854_ _rebind?83855_ _phi83856_)
        (let ((_ctx83858_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83853_
           _val83854_
           _rebind?83855_
           _phi83856_
           _ctx83858_))))
    (define gx#bind-identifier!
      (lambda _g86103_
        (let ((_g86102_ (##length _g86103_)))
          (cond ((##fx= _g86102_ 2)
                 (apply (lambda (_stx83836_ _val83837_)
                          (gx#bind-identifier!__0 _stx83836_ _val83837_))
                        _g86103_))
                ((##fx= _g86102_ 3)
                 (apply (lambda (_stx83845_ _val83846_ _rebind?83847_)
                          (gx#bind-identifier!__1
                           _stx83845_
                           _val83846_
                           _rebind?83847_))
                        _g86103_))
                ((##fx= _g86102_ 4)
                 (apply (lambda (_stx83853_
                                 _val83854_
                                 _rebind?83855_
                                 _phi83856_)
                          (gx#bind-identifier!__2
                           _stx83853_
                           _val83854_
                           _rebind?83855_
                           _phi83856_))
                        _g86103_))
                ((##fx= _g86102_ 5)
                 (apply (lambda (_stx83860_
                                 _val83861_
                                 _rebind?83862_
                                 _phi83863_
                                 _ctx83864_)
                          (gx#bind-identifier!__%
                           _stx83860_
                           _val83861_
                           _rebind?83862_
                           _phi83863_
                           _ctx83864_))
                        _g86103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g86103_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx83797_ _phi83798_ _ctx83799_)
        (let _lp83801_ ((_e83803_ _stx83797_)
                        (_marks83804_ (gx#current-expander-marks)))
          (if (symbol? _e83803_)
              (gx#core-resolve-binding
               _e83803_
               _phi83798_
               _phi83798_
               _ctx83799_
               (reverse _marks83804_))
              (if (gx#identifier-quote? _e83803_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e83803_ '1 gx#AST::t '#f)
                   _phi83798_
                   '0
                   (##unchecked-structure-ref
                    _e83803_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e83803_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e83803_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e83803_ '1 gx#AST::t '#f)
                       _phi83798_
                       _phi83798_
                       _ctx83799_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e83803_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks83804_))
                      (if (##structure-direct-instance-of?
                           _e83803_
                           'gx#syntax-wrap::t)
                          (_lp83801_
                           (##unchecked-structure-ref
                            _e83803_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e83803_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks83804_))
                          (if (##structure-instance-of?
                               _e83803_
                               'gerbil#AST::t)
                              (_lp83801_
                               (##unchecked-structure-ref
                                _e83803_
                                '1
                                gx#AST::t
                                '#f)
                               _marks83804_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx83797_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx83809_)
        (let* ((_phi83811_ (gx#current-expander-phi))
               (_ctx83813_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83809_ _phi83811_ _ctx83813_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx83815_ _phi83816_)
        (let ((_ctx83818_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83815_ _phi83816_ _ctx83818_))))
    (define gx#core-resolve-identifier
      (lambda _g86105_
        (let ((_g86104_ (##length _g86105_)))
          (cond ((##fx= _g86104_ 1)
                 (apply (lambda (_stx83809_)
                          (gx#core-resolve-identifier__0 _stx83809_))
                        _g86105_))
                ((##fx= _g86104_ 2)
                 (apply (lambda (_stx83815_ _phi83816_)
                          (gx#core-resolve-identifier__1
                           _stx83815_
                           _phi83816_))
                        _g86105_))
                ((##fx= _g86104_ 3)
                 (apply (lambda (_stx83820_ _phi83821_ _ctx83822_)
                          (gx#core-resolve-identifier__%
                           _stx83820_
                           _phi83821_
                           _ctx83822_))
                        _g86105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g86105_))))))
    (define gx#core-resolve-binding
      (lambda (_id83710_ _phi83711_ _src-phi83712_ _ctx83713_ _marks83714_)
        (letrec ((_resolve83716_
                  (lambda (_ctx83784_ _src-phi83785_ _key83786_)
                    (let _lp83788_ ((_ctx83790_
                                     (gx#core-context-shift
                                      _ctx83784_
                                      _phi83711_))
                                    (_dphi83791_
                                     (fx- _phi83711_ _src-phi83785_)))
                      (let ((_$e83793_
                             (gx#core-context-resolve _ctx83790_ _key83786_)))
                        (if _$e83793_
                            (values _$e83793_)
                            (if (fxzero? _dphi83791_)
                                '#f
                                (if (fxpositive? _dphi83791_)
                                    (_lp83788_
                                     (gx#core-context-shift _ctx83790_ '-1)
                                     (fx- _dphi83791_ '1))
                                    (_lp83788_
                                     (gx#core-context-shift _ctx83790_ '1)
                                     (fx+ _dphi83791_ '1))))))))))
          (let _lp83718_ ((_ctx83720_ _ctx83713_)
                          (_src-phi83721_ _src-phi83712_)
                          (_rest83722_ _marks83714_))
            (let* ((_rest8372383731_ _rest83722_)
                   (_else8372583739_
                    (lambda ()
                      (_resolve83716_ _ctx83720_ _src-phi83721_ _id83710_)))
                   (_K8372783772_
                    (lambda (_rest83742_ _hd83743_)
                      (let* ((_hd8374483750_ _hd83743_)
                             (_E8374683754_
                              (lambda ()
                                (error '"No clause matching" _hd8374483750_)))
                             (_K8374783764_
                              (lambda (_subst83757_)
                                (let ((_$e83761_
                                       (let ((_key83759_
                                              (if _subst83757_
                                                  (hash-get
                                                   _subst83757_
                                                   _id83710_)
                                                  '#f)))
                                         (if _key83759_
                                             (_resolve83716_
                                              _ctx83720_
                                              _src-phi83721_
                                              _key83759_)
                                             '#f))))
                                  (if _$e83761_
                                      _$e83761_
                                      (_lp83718_
                                       (##unchecked-structure-ref
                                        _hd83743_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd83743_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest83742_))))))
                        (if (##structure-instance-of?
                             _hd8374483750_
                             'gx#expander-mark::t)
                            (let* ((_e8374883767_
                                    (##unchecked-structure-ref
                                     _hd8374483750_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst83770_ _e8374883767_))
                              (_K8374783764_ _subst83770_))
                            (_E8374683754_))))))
              (if (##pair? _rest8372383731_)
                  (let ((_hd8372883775_ (##car _rest8372383731_))
                        (_tl8372983777_ (##cdr _rest8372383731_)))
                    (let* ((_hd83780_ _hd8372883775_)
                           (_rest83782_ _tl8372983777_))
                      (_K8372783772_ _rest83782_ _hd83780_)))
                  (_else8372583739_)))))))
    (define gx#core-bind!__%
      (lambda (_key83586_ _val83587_ _rebind?83588_ _phi83589_ _ctx83590_)
        (letrec ((_update-binding83592_
                  (lambda (_xval83663_)
                    (if (or (_rebind?83588_ _ctx83590_ _xval83663_ _val83587_)
                            (and (##structure-direct-instance-of?
                                  _xval83663_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval83663_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val83587_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val83587_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval83663_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val83587_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val83587_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval83663_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val83587_
                        (if (and (##structure-direct-instance-of?
                                  _val83587_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val83587_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval83663_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val83587_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval83663_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval83663_
                            (if (and (##structure-direct-instance-of?
                                      _val83587_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval83663_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key83586_
                                 (cons (##unchecked-structure-ref
                                        _val83587_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val83587_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval83663_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval83663_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval83663_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval83663_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key83586_
                                 _val83587_
                                 _xval83663_))))))
                 (_gensubst83593_
                  (lambda (_subst83658_ _id83659_)
                    (let ((_eid83661_
                           (gensym (if (uninterned-symbol? _id83659_)
                                       '%
                                       _id83659_))))
                      (hash-put! _subst83658_ _id83659_ _eid83661_)
                      _eid83661_)))
                 (_subst!83594_
                  (lambda (_key83596_)
                    (let* ((_key8359783605_ _key83596_)
                           (_else8359983613_ (lambda () _key83596_))
                           (_K8360183646_
                            (lambda (_mark83616_ _id83617_)
                              (let* ((_mark8361883624_ _mark83616_)
                                     (_E8362083628_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8361883624_)))
                                     (_K8362183638_
                                      (lambda (_subst83631_)
                                        (if (not _subst83631_)
                                            (let ((_subst83633_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark83616_
                                               _subst83633_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst83593_
                                               _subst83633_
                                               _id83617_))
                                            (let ((_$e83635_
                                                   (hash-get
                                                    _subst83631_
                                                    _id83617_)))
                                              (if _$e83635_
                                                  (values _$e83635_)
                                                  (_gensubst83593_
                                                   _subst83631_
                                                   _id83617_)))))))
                                (if (##structure-instance-of?
                                     _mark8361883624_
                                     'gx#expander-mark::t)
                                    (let* ((_e8362283641_
                                            (##unchecked-structure-ref
                                             _mark8361883624_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst83644_ _e8362283641_))
                                      (_K8362183638_ _subst83644_))
                                    (_E8362083628_))))))
                      (if (##pair? _key8359783605_)
                          (let ((_hd8360283649_ (##car _key8359783605_))
                                (_tl8360383651_ (##cdr _key8359783605_)))
                            (let* ((_id83654_ _hd8360283649_)
                                   (_mark83656_ _tl8360383651_))
                              (_K8360183646_ _mark83656_ _id83654_)))
                          (_else8359983613_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx83590_ _phi83589_)
           (_subst!83594_ _key83586_)
           _val83587_
           _update-binding83592_))))
    (define gx#core-bind!__0
      (lambda (_key83680_ _val83681_)
        (let* ((_rebind?83683_ false)
               (_phi83685_ (gx#current-expander-phi))
               (_ctx83687_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83680_
           _val83681_
           _rebind?83683_
           _phi83685_
           _ctx83687_))))
    (define gx#core-bind!__1
      (lambda (_key83689_ _val83690_ _rebind?83691_)
        (let* ((_phi83693_ (gx#current-expander-phi))
               (_ctx83695_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83689_
           _val83690_
           _rebind?83691_
           _phi83693_
           _ctx83695_))))
    (define gx#core-bind!__2
      (lambda (_key83697_ _val83698_ _rebind?83699_ _phi83700_)
        (let ((_ctx83702_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83697_
           _val83698_
           _rebind?83699_
           _phi83700_
           _ctx83702_))))
    (define gx#core-bind!
      (lambda _g86107_
        (let ((_g86106_ (##length _g86107_)))
          (cond ((##fx= _g86106_ 2)
                 (apply (lambda (_key83680_ _val83681_)
                          (gx#core-bind!__0 _key83680_ _val83681_))
                        _g86107_))
                ((##fx= _g86106_ 3)
                 (apply (lambda (_key83689_ _val83690_ _rebind?83691_)
                          (gx#core-bind!__1
                           _key83689_
                           _val83690_
                           _rebind?83691_))
                        _g86107_))
                ((##fx= _g86106_ 4)
                 (apply (lambda (_key83697_
                                 _val83698_
                                 _rebind?83699_
                                 _phi83700_)
                          (gx#core-bind!__2
                           _key83697_
                           _val83698_
                           _rebind?83699_
                           _phi83700_))
                        _g86107_))
                ((##fx= _g86106_ 5)
                 (apply (lambda (_key83704_
                                 _val83705_
                                 _rebind?83706_
                                 _phi83707_
                                 _ctx83708_)
                          (gx#core-bind!__%
                           _key83704_
                           _val83705_
                           _rebind?83706_
                           _phi83707_
                           _ctx83708_))
                        _g86107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g86107_))))))
    (define gx#core-identifier-key
      (lambda (_stx83520_)
        (if (symbol? _stx83520_)
            (let* ((_g8352183529_ (gx#current-expander-marks))
                   (_else8352383537_ (lambda () _stx83520_))
                   (_K8352583542_
                    (lambda (_hd83540_) (cons _stx83520_ _hd83540_))))
              (if (##pair? _g8352183529_)
                  (let* ((_hd8352683545_ (##car _g8352183529_))
                         (_hd83548_ _hd8352683545_))
                    (_K8352583542_ _hd83548_))
                  (_else8352383537_)))
            (if (gx#identifier? _stx83520_)
                (let* ((_id83550_ (gx#syntax-local-unwrap _stx83520_))
                       (_eid83552_ (gx#stx-e _id83550_))
                       (_marks83554_ (gx#stx-identifier-marks* _id83550_)))
                  (let* ((_marks8355683564_ _marks83554_)
                         (_else8355883572_ (lambda () _eid83552_))
                         (_K8356083577_
                          (lambda (_hd83575_) (cons _eid83552_ _hd83575_))))
                    (if (##pair? _marks8355683564_)
                        (let* ((_hd8356183580_ (##car _marks8355683564_))
                               (_hd83583_ _hd8356183580_))
                          (_K8356083577_ _hd83583_))
                        (_else8355883572_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx83520_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx83465_ _phi83466_)
        (letrec ((_make-phi83468_
                  (lambda (_super83518_)
                    (let ((__obj86078
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj86078
                       (gensym 'phi)
                       _super83518_)
                      __obj86078)))
                 (_make-phi/up83469_
                  (lambda (_ctx83513_ _super83514_)
                    (let ((_ctx+183516_ (_make-phi83468_ _super83514_)))
                      (##unchecked-structure-set!
                       _ctx83513_
                       _ctx+183516_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+183516_
                       _ctx83513_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+183516_)))
                 (_make-phi/down83470_
                  (lambda (_ctx83508_ _super83509_)
                    (let ((_ctx-183511_ (_make-phi83468_ _super83509_)))
                      (##unchecked-structure-set!
                       _ctx-183511_
                       _ctx83508_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx83508_
                       _ctx-183511_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-183511_)))
                 (_shift83471_
                  (lambda (_ctx83492_
                           _delta83493_
                           _make-delta-context83494_
                           _phi83495_
                           _K83496_)
                    (let ((_$e83498_
                           (##unchecked-structure-ref
                            _ctx83492_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e83498_
                          ((lambda (_super83501_)
                             (let* ((_super83503_
                                     (_K83496_ _super83501_ _delta83493_))
                                    (_ctx+d83505_
                                     (_make-delta-context83494_
                                      _ctx83492_
                                      _super83503_)))
                               (_K83496_
                                _ctx+d83505_
                                (fx- _phi83495_ _delta83493_))))
                           _$e83498_)
                          (error '"Bad context" _ctx83492_))))))
          (let _K83473_ ((_ctx83475_ _ctx83465_) (_phi83476_ _phi83466_))
            (if (fxzero? _phi83476_)
                _ctx83475_
                (if (##structure-instance-of? _ctx83475_ 'gx#context-phi::t)
                    (if (fxpositive? _phi83476_)
                        (let ((_$e83478_
                               (##unchecked-structure-ref
                                _ctx83475_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e83478_
                              ((lambda (_g8348083482_)
                                 (_K83473_ _g8348083482_ (fx- _phi83476_ '1)))
                               _$e83478_)
                              (_shift83471_
                               _ctx83475_
                               '1
                               _make-phi/up83469_
                               _phi83476_
                               _K83473_)))
                        (let ((_$e83485_
                               (##unchecked-structure-ref
                                _ctx83475_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e83485_
                              ((lambda (_g8348783489_)
                                 (_K83473_ _g8348783489_ (fx+ _phi83476_ '1)))
                               _$e83485_)
                              (_shift83471_
                               _ctx83475_
                               '-1
                               _make-phi/down83470_
                               _phi83476_
                               _K83473_))))
                    _ctx83475_))))))
    (define gx#core-context-get
      (lambda (_ctx83462_ _key83463_)
        (hash-get
         (##unchecked-structure-ref _ctx83462_ '2 gx#expander-context::t '#f)
         _key83463_)))
    (define gx#core-context-put!
      (lambda (_ctx83458_ _key83459_ _val83460_)
        (hash-put!
         (##unchecked-structure-ref _ctx83458_ '2 gx#expander-context::t '#f)
         _key83459_
         _val83460_)))
    (define gx#core-context-resolve
      (lambda (_ctx83445_ _key83446_)
        (let _lp83448_ ((_ctx83450_ _ctx83445_))
          (let ((_$e83452_ (gx#core-context-get _ctx83450_ _key83446_)))
            (if _$e83452_
                (values _$e83452_)
                (let ((_$e83455_
                       (if (##structure-instance-of?
                            _ctx83450_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx83450_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e83455_ (_lp83448_ _$e83455_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx83435_ _key83436_ _val83437_ _rebind83438_)
        (let ((_$e83440_ (gx#core-context-get _ctx83435_ _key83436_)))
          (if _$e83440_
              ((lambda (_xval83443_)
                 (gx#core-context-put!
                  _ctx83435_
                  _key83436_
                  (_rebind83438_ _xval83443_)))
               _$e83440_)
              (gx#core-context-put! _ctx83435_ _key83436_ _val83437_)))))
    (define gx#core-context-top__%
      (lambda (_ctx83413_ _stop?83414_)
        (let _lp83416_ ((_ctx83418_ _ctx83413_))
          (if (_stop?83414_ _ctx83418_)
              _ctx83418_
              (if (##structure-instance-of? _ctx83418_ 'gx#context-phi::t)
                  (_lp83416_
                   (##unchecked-structure-ref
                    _ctx83418_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx83424_ (gx#current-expander-context))
               (_stop?83426_ gx#top-context?))
          (gx#core-context-top__% _ctx83424_ _stop?83426_))))
    (define gx#core-context-top__1
      (lambda (_ctx83428_)
        (let ((_stop?83430_ gx#top-context?))
          (gx#core-context-top__% _ctx83428_ _stop?83430_))))
    (define gx#core-context-top
      (lambda _g86109_
        (let ((_g86108_ (##length _g86109_)))
          (cond ((##fx= _g86108_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g86109_))
                ((##fx= _g86108_ 1)
                 (apply (lambda (_ctx83428_)
                          (gx#core-context-top__1 _ctx83428_))
                        _g86109_))
                ((##fx= _g86108_ 2)
                 (apply (lambda (_ctx83432_ _stop?83433_)
                          (gx#core-context-top__% _ctx83432_ _stop?83433_))
                        _g86109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g86109_))))))
    (define gx#core-context-root__%
      (lambda (_ctx83398_)
        (let _lp83400_ ((_ctx83402_ _ctx83398_))
          (if (##structure-instance-of? _ctx83402_ 'gx#context-phi::t)
              (_lp83400_
               (##unchecked-structure-ref _ctx83402_ '3 gx#phi-context::t '#f))
              _ctx83402_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx83408_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx83408_))))
    (define gx#core-context-root
      (lambda _g86111_
        (let ((_g86110_ (##length _g86111_)))
          (cond ((##fx= _g86110_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g86111_))
                ((##fx= _g86110_ 1)
                 (apply (lambda (_ctx83410_)
                          (gx#core-context-root__% _ctx83410_))
                        _g86111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g86111_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx83379_ . __8337683380_)
        (let ((_$e83383_ (gx#current-expander-allow-rebind?)))
          (if _$e83383_
              _$e83383_
              (if (##structure-instance-of? _ctx83379_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx83379_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx83379_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx83390_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx83390_))))
    (define gx#core-context-rebind?
      (lambda _g86113_
        (let ((_g86112_ (##length _g86113_)))
          (cond ((##fx= _g86112_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g86113_))
                ((##fx= _g86112_ 1)
                 (apply (lambda (_ctx83392_)
                          (gx#core-context-rebind?__% _ctx83392_))
                        _g86113_))
                ((##fx>= _g86112_ 1)
                 (apply gx#core-context-rebind?__% _g86113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g86113_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx83362_)
        (let ((_$e83364_ (gx#core-context-top__1 _ctx83362_)))
          (if _$e83364_
              ((lambda (_ctx83367_)
                 (if (##structure-instance-of?
                      _ctx83367_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx83367_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e83364_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx83373_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx83373_))))
    (define gx#core-context-namespace
      (lambda _g86115_
        (let ((_g86114_ (##length _g86115_)))
          (cond ((##fx= _g86114_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g86115_))
                ((##fx= _g86114_ 1)
                 (apply (lambda (_ctx83375_)
                          (gx#core-context-namespace__% _ctx83375_))
                        _g86115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g86115_))))))
    (define gx#expander-binding?__%
      (lambda (_bind83348_ _is?83349_)
        (if (##structure-direct-instance-of? _bind83348_ 'gx#syntax-binding::t)
            (_is?83349_
             (##unchecked-structure-ref
              _bind83348_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind83354_)
        (let ((_is?83356_ gx#expander?))
          (gx#expander-binding?__% _bind83354_ _is?83356_))))
    (define gx#expander-binding?
      (lambda _g86117_
        (let ((_g86116_ (##length _g86117_)))
          (cond ((##fx= _g86116_ 1)
                 (apply (lambda (_bind83354_)
                          (gx#expander-binding?__0 _bind83354_))
                        _g86117_))
                ((##fx= _g86116_ 2)
                 (apply (lambda (_bind83358_ _is?83359_)
                          (gx#expander-binding?__% _bind83358_ _is?83359_))
                        _g86117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g86117_))))))
    (define gx#core-expander-binding?
      (lambda (_bind83345_)
        (gx#expander-binding?__% _bind83345_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind83343_)
        (gx#expander-binding?__% _bind83343_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind83337_)
        (letrec ((_direct-special-form?83339_
                  (lambda (_obj83341_)
                    (##structure-direct-instance-of?
                     _obj83341_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind83337_ _direct-special-form?83339_))))
    (define gx#special-form-binding?
      (lambda (_bind83335_)
        (gx#expander-binding?__% _bind83335_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind83326_)
        (letrec ((_feature?83328_
                  (lambda (_e83330_)
                    (let ((_$e83332_
                           (##structure-instance-of?
                            _e83330_
                            'gx#feature-expander::t)))
                      (if _$e83332_
                          _$e83332_
                          (##structure-instance-of?
                           _e83330_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind83326_ _feature?83328_))))
    (define gx#private-feature-binding?
      (lambda (_bind83324_)
        (gx#expander-binding?__% _bind83324_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id83311_ _bound?83312_)
        (if (gx#identifier? _id83311_)
            (_bound?83312_ (gx#resolve-identifier__0 _id83311_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id83317_)
        (let ((_bound?83319_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id83317_ _bound?83319_))))
    (define gx#core-bound-identifier?
      (lambda _g86119_
        (let ((_g86118_ (##length _g86119_)))
          (cond ((##fx= _g86118_ 1)
                 (apply (lambda (_id83317_)
                          (gx#core-bound-identifier?__0 _id83317_))
                        _g86119_))
                ((##fx= _g86118_ 2)
                 (apply (lambda (_id83321_ _bound?83322_)
                          (gx#core-bound-identifier?__%
                           _id83321_
                           _bound?83322_))
                        _g86119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g86119_))))))
    (define gx#core-identifier=?
      (lambda (_x83301_ _y83302_)
        (letrec ((_y=?83304_
                  (lambda (_xid83308_)
                    ((if (list? _y83302_) memq eq?) _xid83308_ _y83302_))))
          (let ((_bind83306_ (gx#resolve-identifier__0 _x83301_)))
            (if (##structure-instance-of? _bind83306_ 'gx#binding::t)
                (_y=?83304_
                 (##unchecked-structure-ref _bind83306_ '1 gx#binding::t '#f))
                (_y=?83304_ (gx#stx-e _x83301_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e83299_)
        (if (interned-symbol? _e83299_)
            (string-index__0 (symbol->string _e83299_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx83254_ _src83255_ _ctx83256_ _marks83257_)
        (if (##structure? _stx83254_)
            (let ((_$e83259_ (gx#sealed-syntax-unwrap _stx83254_)))
              (if _$e83259_
                  (values _$e83259_)
                  (if (gx#identifier? _stx83254_)
                      (let ((_id83262_
                             (gx#stx-unwrap__% _stx83254_ _marks83257_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id83262_ '1 gx#AST::t '#f)
                         (let ((_$e83264_
                                (##unchecked-structure-ref
                                 _id83262_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e83264_ _$e83264_ _src83255_))
                         _ctx83256_
                         (##unchecked-structure-ref
                          _id83262_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx83254_)
                       (let ((_$e83267_ (gx#stx-source _stx83254_)))
                         (if _$e83267_ _$e83267_ _src83255_))
                       _ctx83256_
                       (reverse _marks83257_)))))
            (##structure
             gx#syntax-quote::t
             _stx83254_
             _src83255_
             _ctx83256_
             (reverse _marks83257_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx83273_)
        (let* ((_src83275_ '#f)
               (_ctx83277_ (gx#current-expander-context))
               (_marks83279_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83273_
           _src83275_
           _ctx83277_
           _marks83279_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx83281_ _src83282_)
        (let* ((_ctx83284_ (gx#current-expander-context))
               (_marks83286_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83281_
           _src83282_
           _ctx83284_
           _marks83286_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx83288_ _src83289_ _ctx83290_)
        (let ((_marks83292_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83288_
           _src83289_
           _ctx83290_
           _marks83292_))))
    (define gx#core-quote-syntax
      (lambda _g86121_
        (let ((_g86120_ (##length _g86121_)))
          (cond ((##fx= _g86120_ 1)
                 (apply (lambda (_stx83273_)
                          (gx#core-quote-syntax__0 _stx83273_))
                        _g86121_))
                ((##fx= _g86120_ 2)
                 (apply (lambda (_stx83281_ _src83282_)
                          (gx#core-quote-syntax__1 _stx83281_ _src83282_))
                        _g86121_))
                ((##fx= _g86120_ 3)
                 (apply (lambda (_stx83288_ _src83289_ _ctx83290_)
                          (gx#core-quote-syntax__2
                           _stx83288_
                           _src83289_
                           _ctx83290_))
                        _g86121_))
                ((##fx= _g86120_ 4)
                 (apply (lambda (_stx83294_ _src83295_ _ctx83296_ _marks83297_)
                          (gx#core-quote-syntax__%
                           _stx83294_
                           _src83295_
                           _ctx83296_
                           _marks83297_))
                        _g86121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g86121_))))))
    (define gx#core-cons
      (lambda (_hd83250_ _tl83251_)
        (cons (gx#core-quote-syntax__0 _hd83250_) _tl83251_)))
    (define gx#core-list
      (lambda (_hd83247_ . _rest83248_)
        (cons (gx#core-quote-syntax__0 _hd83247_) _rest83248_)))
    (define gx#core-cons*
      (lambda (_hd83244_ . _rest83245_)
        (apply cons* (gx#core-quote-syntax__0 _hd83244_) _rest83245_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path83218_ _rel83219_)
        (let ((_path83231_ (gx#stx-e _stx-path83218_))
              (_reldir83232_
               (let _lp83221_ ((_relsrc83223_
                                (let ((_$e83228_
                                       (gx#stx-source _stx-path83218_)))
                                  (if _$e83228_ _$e83228_ _rel83219_))))
                 (if (##structure-instance-of? _relsrc83223_ 'gerbil#AST::t)
                     (_lp83221_
                      (let ((_$e83225_ (gx#stx-source _relsrc83223_)))
                        (if _$e83225_ _$e83225_ (gx#stx-e _relsrc83223_))))
                     (if (source-location-path? _relsrc83223_)
                         (path-directory (source-location-path _relsrc83223_))
                         (if (string? _relsrc83223_)
                             (path-directory _relsrc83223_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path83231_ (path-normalize _reldir83232_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path83237_)
        (let ((_rel83239_ '#f))
          (gx#core-resolve-path__% _stx-path83237_ _rel83239_))))
    (define gx#core-resolve-path
      (lambda _g86123_
        (let ((_g86122_ (##length _g86123_)))
          (cond ((##fx= _g86122_ 1)
                 (apply (lambda (_stx-path83237_)
                          (gx#core-resolve-path__0 _stx-path83237_))
                        _g86123_))
                ((##fx= _g86122_ 2)
                 (apply (lambda (_stx-path83241_ _rel83242_)
                          (gx#core-resolve-path__% _stx-path83241_ _rel83242_))
                        _g86123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g86123_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr83174_ _ctx83175_)
        (let* ((_repr8317683183_ _repr83174_)
               (_E8317883187_
                (lambda () (error '"No clause matching" _repr8317683183_)))
               (_K8317983195_
                (lambda (_subs83190_ _phi83191_)
                  (let ((_subst83193_
                         (if (not (null? _subs83190_))
                             (list->hash-table-eq _subs83190_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst83193_
                     _ctx83175_
                     _phi83191_
                     '#f)))))
          (if (##pair? _repr8317683183_)
              (let ((_hd8318083198_ (##car _repr8317683183_))
                    (_tl8318183200_ (##cdr _repr8317683183_)))
                (let* ((_phi83203_ _hd8318083198_)
                       (_subs83205_ _tl8318183200_))
                  (_K8317983195_ _subs83205_ _phi83203_)))
              (_E8317883187_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr83210_)
        (let ((_ctx83212_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr83210_ _ctx83212_))))
    (define gx#core-deserialize-mark
      (lambda _g86125_
        (let ((_g86124_ (##length _g86125_)))
          (cond ((##fx= _g86124_ 1)
                 (apply (lambda (_repr83210_)
                          (gx#core-deserialize-mark__0 _repr83210_))
                        _g86125_))
                ((##fx= _g86124_ 2)
                 (apply (lambda (_repr83214_ _ctx83215_)
                          (gx#core-deserialize-mark__% _repr83214_ _ctx83215_))
                        _g86125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g86125_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx83171_)
        (gx#stx-rewrap _stx83171_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx83169_)
        (gx#stx-unwrap__% _stx83169_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx83139_)
        (let* ((_g8314083148_ (gx#current-expander-marks))
               (_else8314283156_ (lambda () _stx83139_))
               (_K8314483161_
                (lambda (_hd83159_) (gx#stx-apply-mark _stx83139_ _hd83159_))))
          (if (##pair? _g8314083148_)
              (let* ((_hd8314583164_ (##car _g8314083148_))
                     (_hd83167_ _hd8314583164_))
                (_K8314483161_ _hd83167_))
              (_else8314283156_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx83124_ _E83125_)
        (let ((_bind83127_ (gx#resolve-identifier__0 _stx83124_)))
          (if (##structure-direct-instance-of?
               _bind83127_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind83127_
               '4
               gx#syntax-binding::t
               '#f)
              (_E83125_ _stx83124_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx83132_)
        (let ((_E83134_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx83132_ _E83134_))))
    (define gx#syntax-local-e
      (lambda _g86127_
        (let ((_g86126_ (##length _g86127_)))
          (cond ((##fx= _g86126_ 1)
                 (apply (lambda (_stx83132_) (gx#syntax-local-e__0 _stx83132_))
                        _g86127_))
                ((##fx= _g86126_ 2)
                 (apply (lambda (_stx83136_ _E83137_)
                          (gx#syntax-local-e__% _stx83136_ _E83137_))
                        _g86127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g86127_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx83108_ _E83109_)
        (let ((_e83111_ (gx#syntax-local-e__% _stx83108_ _E83109_)))
          (if (##structure-instance-of? _e83111_ 'gx#expander::t)
              (##structure-ref _e83111_ '1 gx#expander::t '#f)
              _e83111_))))
    (define gx#syntax-local-value__0
      (lambda (_stx83116_)
        (let ((_E83118_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx83116_ _E83118_))))
    (define gx#syntax-local-value
      (lambda _g86129_
        (let ((_g86128_ (##length _g86129_)))
          (cond ((##fx= _g86128_ 1)
                 (apply (lambda (_stx83116_)
                          (gx#syntax-local-value__0 _stx83116_))
                        _g86129_))
                ((##fx= _g86128_ 2)
                 (apply (lambda (_stx83120_ _E83121_)
                          (gx#syntax-local-value__% _stx83120_ _E83121_))
                        _g86129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g86129_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx83105_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx83105_)))))
