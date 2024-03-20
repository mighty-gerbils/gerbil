(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710943025)
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
      (lambda _$args86056_
        (apply make-instance gx#expander-context::t _$args86056_)))
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
      (lambda _$args86053_
        (apply make-instance gx#root-context::t _$args86053_)))
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
      (lambda _$args86050_
        (apply make-instance gx#phi-context::t _$args86050_)))
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
      (lambda _$args86047_
        (apply make-instance gx#top-context::t _$args86047_)))
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
      (lambda _$args86044_
        (apply make-instance gx#module-context::t _$args86044_)))
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
      (lambda _$args86041_
        (apply make-instance gx#prelude-context::t _$args86041_)))
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
      (lambda _$args86038_
        (apply make-instance gx#local-context::t _$args86038_)))
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
      (lambda (_self86022_ _id86023_ _super86024_)
        (if (##fx< '3 (##structure-length _self86022_))
            (begin
              (##unchecked-structure-set!
               _self86022_
               _id86023_
               '1
               (##structure-type _self86022_)
               '#f)
              (##unchecked-structure-set!
               _self86022_
               (make-hash-table-eq)
               '2
               (##structure-type _self86022_)
               '#f)
              (##unchecked-structure-set!
               _self86022_
               _super86024_
               '3
               (##structure-type _self86022_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self86022_
                   '3
                   (##vector-length _self86022_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self86029_ _id86030_)
        (let ((_super86032_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self86029_ _id86030_ _super86032_))))
    (define gx#phi-context:::init!
      (lambda _g86099_
        (let ((_g86098_ (##length _g86099_)))
          (cond ((##fx= _g86098_ 2)
                 (apply (lambda (_self86029_ _id86030_)
                          (gx#phi-context:::init!__0 _self86029_ _id86030_))
                        _g86099_))
                ((##fx= _g86098_ 3)
                 (apply (lambda (_self86034_ _id86035_ _super86036_)
                          (gx#phi-context:::init!__%
                           _self86034_
                           _id86035_
                           _super86036_))
                        _g86099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g86099_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self85886_ _super85887_)
        (if (##fx< '3 (##structure-length _self85886_))
            (begin
              (##unchecked-structure-set!
               _self85886_
               (gensym 'L)
               '1
               (##structure-type _self85886_)
               '#f)
              (##unchecked-structure-set!
               _self85886_
               (make-hash-table-eq)
               '2
               (##structure-type _self85886_)
               '#f)
              (##unchecked-structure-set!
               _self85886_
               _super85887_
               '3
               (##structure-type _self85886_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85886_
                   '3
                   (##vector-length _self85886_)))))
    (define gx#local-context:::init!__0
      (lambda (_self85892_)
        (let ((_super85894_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self85892_ _super85894_))))
    (define gx#local-context:::init!
      (lambda _g86101_
        (let ((_g86100_ (##length _g86101_)))
          (cond ((##fx= _g86100_ 1)
                 (apply (lambda (_self85892_)
                          (gx#local-context:::init!__0 _self85892_))
                        _g86101_))
                ((##fx= _g86100_ 2)
                 (apply (lambda (_self85896_ _super85897_)
                          (gx#local-context:::init!__%
                           _self85896_
                           _super85897_))
                        _g86101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g86101_))))))
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
      (lambda _$args85760_ (apply make-instance gx#binding::t _$args85760_)))
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
      (lambda _$args85757_
        (apply make-instance gx#runtime-binding::t _$args85757_)))
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
      (lambda _$args85754_
        (apply make-instance gx#local-binding::t _$args85754_)))
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
      (lambda _$args85751_
        (apply make-instance gx#top-binding::t _$args85751_)))
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
      (lambda _$args85748_
        (apply make-instance gx#module-binding::t _$args85748_)))
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
      (lambda _$args85745_
        (apply make-instance gx#extern-binding::t _$args85745_)))
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
      (lambda _$args85742_
        (apply make-instance gx#syntax-binding::t _$args85742_)))
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
      (lambda _$args85739_
        (apply make-instance gx#import-binding::t _$args85739_)))
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
      (lambda _$args85736_
        (apply make-instance gx#alias-binding::t _$args85736_)))
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
      (lambda _$args85733_ (apply make-instance gx#expander::t _$args85733_)))
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
      (lambda _$args85730_
        (apply make-instance gx#core-expander::t _$args85730_)))
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
      (lambda _$args85727_
        (apply make-instance gx#expression-form::t _$args85727_)))
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
      (lambda _$args85724_
        (apply make-instance gx#special-form::t _$args85724_)))
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
      (lambda _$args85721_
        (apply make-instance gx#definition-form::t _$args85721_)))
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
      (lambda _$args85718_
        (apply make-instance gx#top-special-form::t _$args85718_)))
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
      (lambda _$args85715_
        (apply make-instance gx#module-special-form::t _$args85715_)))
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
      (lambda _$args85712_
        (apply make-instance gx#feature-expander::t _$args85712_)))
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
      (lambda _$args85709_
        (apply make-instance gx#private-feature-expander::t _$args85709_)))
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
      (lambda _$args85706_
        (apply make-instance gx#reserved-expander::t _$args85706_)))
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
      (lambda _$args85703_
        (apply make-instance gx#macro-expander::t _$args85703_)))
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
      (lambda _$args85700_
        (apply make-instance gx#rename-macro-expander::t _$args85700_)))
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
      (lambda _$args85697_
        (apply make-instance gx#user-expander::t _$args85697_)))
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
      (lambda _$args85694_
        (apply make-instance gx#expander-mark::t _$args85694_)))
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
      (lambda (_ctx85679_ _message85680_ _stx85681_ . _details85682_)
        (let ((_ctx85692_
               (let ((_$e85684_ _ctx85679_))
                 (if _$e85684_
                     _$e85684_
                     (let ((_$e85687_ (gx#core-context-top__0)))
                       (if _$e85687_
                           ((lambda (_ctx85690_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx85690_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e85687_)
                           '#f))))))
          (raise (make-syntax-error
                  _message85680_
                  (cons _stx85681_ _details85682_)
                  _ctx85692_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx85666_ _expression?85667_)
        (gx#eval-syntax* (gx#core-expand__% _stx85666_ _expression?85667_))))
    (define gx#eval-syntax__0
      (lambda (_stx85672_)
        (let ((_expression?85674_ '#f))
          (gx#eval-syntax__% _stx85672_ _expression?85674_))))
    (define gx#eval-syntax
      (lambda _g86103_
        (let ((_g86102_ (##length _g86103_)))
          (cond ((##fx= _g86102_ 1)
                 (apply (lambda (_stx85672_) (gx#eval-syntax__0 _stx85672_))
                        _g86103_))
                ((##fx= _g86102_ 2)
                 (apply (lambda (_stx85676_ _expression?85677_)
                          (gx#eval-syntax__% _stx85676_ _expression?85677_))
                        _g86103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g86103_))))))
    (define gx#eval-syntax*
      (lambda (_stx85663_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx85663_))))
    (define gx#core-expand__%
      (lambda (_stx85650_ _expression?85651_)
        (if _expression?85651_
            (gx#core-expand-expression _stx85650_)
            (gx#core-expand-top _stx85650_))))
    (define gx#core-expand__0
      (lambda (_stx85656_)
        (let ((_expression?85658_ '#f))
          (gx#core-expand__% _stx85656_ _expression?85658_))))
    (define gx#core-expand
      (lambda _g86105_
        (let ((_g86104_ (##length _g86105_)))
          (cond ((##fx= _g86104_ 1)
                 (apply (lambda (_stx85656_) (gx#core-expand__0 _stx85656_))
                        _g86105_))
                ((##fx= _g86104_ 2)
                 (apply (lambda (_stx85660_ _expression?85661_)
                          (gx#core-expand__% _stx85660_ _expression?85661_))
                        _g86105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g86105_))))))
    (define gx#core-expand-top
      (lambda (_stx85617_)
        (let* ((_stx85619_ (gx#core-expand*__0 _stx85617_))
               (_e8562085627_ _stx85619_)
               (_E8562285631_
                (lambda () (gx#core-expand-expression _stx85619_)))
               (_E8562185645_
                (lambda ()
                  (if (gx#stx-pair? _e8562085627_)
                      (let ((_e8562385635_ (gx#syntax-e _e8562085627_)))
                        (let ((_hd8562485638_ (##car _e8562385635_))
                              (_tl8562585640_ (##cdr _e8562385635_)))
                          (let ((_form85643_ _hd8562485638_))
                            (if (gx#core-bound-identifier?__0 _form85643_)
                                _stx85619_
                                (_E8562285631_)))))
                      (_E8562285631_)))))
          (_E8562185645_))))
    (define gx#core-expand-expression
      (lambda (_stx85564_)
        (letrec ((_sealed-expression?85566_
                  (lambda (_hd85587_)
                    (if (gx#sealed-syntax? _hd85587_)
                        (let* ((_e8558885595_ _hd85587_)
                               (_E8559085599_ (lambda () '#f))
                               (_E8558985613_
                                (lambda ()
                                  (if (gx#stx-pair? _e8558885595_)
                                      (let ((_e8559185603_
                                             (gx#syntax-e _e8558885595_)))
                                        (let ((_hd8559285606_
                                               (##car _e8559185603_))
                                              (_tl8559385608_
                                               (##cdr _e8559185603_)))
                                          (let ((_form85611_ _hd8559285606_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form85611_
                                                 gx#expression-form-binding?)
                                                (_E8559085599_)))))
                                      (_E8559085599_)))))
                          (_E8558985613_))
                        '#f)))
                 (_illegal-expression85567_
                  (lambda (_hd85585_ . _g86106_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx85564_
                     _hd85585_)))
                 (_expand-e85568_
                  (lambda (_form85580_ _hd85581_)
                    (let ((_bind85583_
                           (if (##structure-instance-of?
                                _form85580_
                                'gx#binding::t)
                               _form85580_
                               (gx#resolve-identifier__0 _form85580_))))
                      (if (gx#core-expander-binding? _bind85583_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind85583_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd85581_
                            (gx#stx-source _stx85564_)))
                          (if (##structure-direct-instance-of?
                               _bind85583_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind85583_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd85581_
                                 (gx#stx-source _stx85564_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx85564_
                               _form85580_)))))))
          (let ((_hd85570_ (gx#core-expand-head _stx85564_)))
            (if (_sealed-expression?85566_ _hd85570_)
                _hd85570_
                (if (gx#stx-pair? _hd85570_)
                    (let* ((_form85572_ (gx#stx-car _hd85570_))
                           (_bind85574_
                            (if (gx#identifier? _form85572_)
                                (gx#resolve-identifier__0 _form85572_)
                                '#f)))
                      (if (or (not _bind85574_)
                              (not (gx#core-expander-binding? _bind85574_)))
                          (_expand-e85568_ '%%app (cons '%%app _hd85570_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind85574_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd85570_
                               _illegal-expression85567_)
                              (if (gx#expression-form-binding? _bind85574_)
                                  (_expand-e85568_ _bind85574_ _hd85570_)
                                  (if (gx#direct-special-form-binding?
                                       _bind85574_)
                                      (gx#core-expand-expression
                                       (_expand-e85568_ _bind85574_ _hd85570_))
                                      (_illegal-expression85567_
                                       _hd85570_))))))
                    (if (gx#core-bound-identifier?__0 _hd85570_)
                        (_illegal-expression85567_ _hd85570_)
                        (if (gx#identifier? _hd85570_)
                            (_expand-e85568_
                             '%%ref
                             (cons '%%ref (cons _hd85570_ '())))
                            (if (gx#stx-datum? _hd85570_)
                                (_expand-e85568_
                                 '%#quote
                                 (cons '%#quote (cons _hd85570_ '())))
                                (_illegal-expression85567_ _hd85570_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx85559_)
        (call-with-parameters
         (lambda ()
           (let ((_stx85562_ (gx#core-expand-expression _stx85559_)))
             (values _stx85562_ (gx#eval-syntax* _stx85562_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx85540_ _stop?85541_)
        (let _lp85543_ ((_stx85545_ _stx85540_))
          (if (_stop?85541_ _stx85545_)
              _stx85545_
              (let ((_rstx85547_ (gx#core-expand1 _stx85545_)))
                (if (eq? _stx85545_ _rstx85547_)
                    _stx85545_
                    (_lp85543_ _rstx85547_)))))))
    (define gx#core-expand*__0
      (lambda (_stx85552_)
        (let ((_stop?85554_ false))
          (gx#core-expand*__% _stx85552_ _stop?85554_))))
    (define gx#core-expand*
      (lambda _g86108_
        (let ((_g86107_ (##length _g86108_)))
          (cond ((##fx= _g86107_ 1)
                 (apply (lambda (_stx85552_) (gx#core-expand*__0 _stx85552_))
                        _g86108_))
                ((##fx= _g86107_ 2)
                 (apply (lambda (_stx85556_ _stop?85557_)
                          (gx#core-expand*__% _stx85556_ _stop?85557_))
                        _g86108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g86108_))))))
    (define gx#core-expand1
      (lambda (_stx85496_)
        (letrec ((_step85498_
                  (lambda (_hd85535_)
                    (let ((_bind85537_ (gx#resolve-identifier__0 _hd85535_)))
                      (if (##structure-instance-of?
                           _bind85537_
                           'gx#runtime-binding::t)
                          _stx85496_
                          (if (##structure-direct-instance-of?
                               _bind85537_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind85537_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx85496_)
                              (if (not _bind85537_)
                                  _stx85496_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx85496_))))))))
          (let* ((_e8549985507_ _stx85496_)
                 (_E8550585511_ (lambda () _stx85496_))
                 (_E8550185517_
                  (lambda ()
                    (let ((_hd85515_ _e8549985507_))
                      (if (gx#identifier? _hd85515_)
                          (_step85498_ _hd85515_)
                          (_E8550585511_)))))
                 (_E8550085531_
                  (lambda ()
                    (if (gx#stx-pair? _e8549985507_)
                        (let ((_e8550285521_ (gx#syntax-e _e8549985507_)))
                          (let ((_hd8550385524_ (##car _e8550285521_))
                                (_tl8550485526_ (##cdr _e8550285521_)))
                            (let ((_hd85529_ _hd8550385524_))
                              (if (gx#identifier? _hd85529_)
                                  (_step85498_ _hd85529_)
                                  (_E8550185517_)))))
                        (_E8550185517_)))))
            (_E8550085531_)))))
    (define gx#core-expand-head
      (lambda (_stx85462_)
        (letrec ((_stop?85464_
                  (lambda (_stx85466_)
                    (let* ((_e8546785474_ _stx85466_)
                           (_E8546985478_ (lambda () '#f))
                           (_E8546885492_
                            (lambda ()
                              (if (gx#stx-pair? _e8546785474_)
                                  (let ((_e8547085482_
                                         (gx#syntax-e _e8546785474_)))
                                    (let ((_hd8547185485_
                                           (##car _e8547085482_))
                                          (_tl8547285487_
                                           (##cdr _e8547085482_)))
                                      (let ((_hd85490_ _hd8547185485_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd85490_)
                                            (_E8546985478_)))))
                                  (_E8546985478_)))))
                      (_E8546885492_)))))
          (gx#core-expand*__% _stx85462_ _stop?85464_))))
    (define gx#core-expand-block__%
      (lambda (_stx85268_
               _expand-special85269_
               _begin-form85270_
               _expand-e85271_)
        (letrec ((_expand-splice85273_
                  (lambda (_hd85436_ _body85437_ _rest85438_ _r85439_)
                    (if (gx#stx-list? _body85437_)
                        (_K85277_
                         (gx#stx-foldr cons _rest85438_ _body85437_)
                         _r85439_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx85268_
                         _hd85436_))))
                 (_expand-cond-expand85274_
                  (lambda (_hd85432_ _rest85433_ _r85434_)
                    (_K85277_
                     (cons (gx#core-expand-cond-expand% _hd85432_) _rest85433_)
                     _r85434_)))
                 (_expand-include85275_
                  (lambda (_hd85381_ _rest85382_ _r85383_)
                    (let* ((_e8538485394_ _hd85381_)
                           (_E8538685398_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8538485394_)))
                           (_E8538585428_
                            (lambda ()
                              (if (gx#stx-pair? _e8538485394_)
                                  (let ((_e8538785402_
                                         (gx#syntax-e _e8538485394_)))
                                    (let ((_hd8538885405_
                                           (##car _e8538785402_))
                                          (_tl8538985407_
                                           (##cdr _e8538785402_)))
                                      (if (gx#stx-pair? _tl8538985407_)
                                          (let ((_e8539085410_
                                                 (gx#syntax-e _tl8538985407_)))
                                            (let ((_hd8539185413_
                                                   (##car _e8539085410_))
                                                  (_tl8539285415_
                                                   (##cdr _e8539085410_)))
                                              (let ((_path85418_
                                                     _hd8539185413_))
                                                (if (gx#stx-null?
                                                     _tl8539285415_)
                                                    (if (gx#stx-string?
                                                         _path85418_)
                                                        (let* ((_rpath85420_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path85418_
                         (gx#stx-source _hd85381_)))
                       (_block85422_
                        (gx#core-expand-include%__% _hd85381_ _rpath85420_))
                       (_rbody85425_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block85422_
                            _expand-special85269_
                            '#f
                            _expand-e85271_))
                         gx#current-expander-path
                         (cons _rpath85420_ (gx#current-expander-path)))))
                  (_K85277_ _rest85382_ (foldr1 cons _r85383_ _rbody85425_)))
                (_E8538685398_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8538685398_)))))
                                          (_E8538685398_))))
                                  (_E8538685398_)))))
                      (_E8538585428_))))
                 (_expand-expression85276_
                  (lambda (_hd85377_ _rest85378_ _r85379_)
                    (_K85277_
                     _rest85378_
                     (cons (_expand-e85271_ _hd85377_) _r85379_))))
                 (_K85277_
                  (lambda (_rest85307_ _r85308_)
                    (let* ((_e8530985316_ _rest85307_)
                           (_E8531185320_
                            (lambda ()
                              (if _begin-form85270_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form85270_
                                    (reverse _r85308_))
                                   (gx#stx-source _stx85268_))
                                  _r85308_)))
                           (_E8531085373_
                            (lambda ()
                              (if (gx#stx-pair? _e8530985316_)
                                  (let ((_e8531285324_
                                         (gx#syntax-e _e8530985316_)))
                                    (let ((_hd8531385327_
                                           (##car _e8531285324_))
                                          (_tl8531485329_
                                           (##cdr _e8531285324_)))
                                      (let* ((_hd85332_ _hd8531385327_)
                                             (_rest85334_ _tl8531485329_))
                                        (if '#t
                                            (let* ((_hd85336_
                                                    (gx#core-expand-head
                                                     _hd85332_))
                                                   (_e8533785344_ _hd85336_)
                                                   (_E8533985348_
                                                    (lambda ()
                                                      (_expand-expression85276_
                                                       _hd85336_
                                                       _rest85334_
                                                       _r85308_)))
                                                   (_E8533885369_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8533785344_)
                                                          (let ((_e8534085352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8533785344_)))
                    (let ((_hd8534185355_ (##car _e8534085352_))
                          (_tl8534285357_ (##cdr _e8534085352_)))
                      (let* ((_form85360_ _hd8534185355_)
                             (_body85362_ _tl8534285357_))
                        (if '#t
                            (let ((_bind85364_
                                   (if (gx#identifier? _form85360_)
                                       (gx#resolve-identifier__0 _form85360_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind85364_)
                                  (let ((_$e85366_
                                         (##unchecked-structure-ref
                                          _bind85364_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e85366_)
                                        (_expand-splice85273_
                                         _hd85336_
                                         _body85362_
                                         _rest85334_
                                         _r85308_)
                                        (if (eq? '%#cond-expand _$e85366_)
                                            (_expand-cond-expand85274_
                                             _hd85336_
                                             _rest85334_
                                             _r85308_)
                                            (if (eq? '%#include _$e85366_)
                                                (_expand-include85275_
                                                 _hd85336_
                                                 _rest85334_
                                                 _r85308_)
                                                (_expand-special85269_
                                                 _hd85336_
                                                 _K85277_
                                                 _rest85334_
                                                 _r85308_)))))
                                  (_expand-expression85276_
                                   _hd85336_
                                   _rest85334_
                                   _r85308_)))
                            (_E8533985348_)))))
                  (_E8533985348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8533885369_))
                                            (_E8531185320_)))))
                                  (_E8531185320_)))))
                      (_E8531085373_)))))
          (let* ((_e8527885285_ _stx85268_)
                 (_E8528085289_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8527885285_)))
                 (_E8527985303_
                  (lambda ()
                    (if (gx#stx-pair? _e8527885285_)
                        (let ((_e8528185293_ (gx#syntax-e _e8527885285_)))
                          (let ((_hd8528285296_ (##car _e8528185293_))
                                (_tl8528385298_ (##cdr _e8528185293_)))
                            (let ((_body85301_ _tl8528385298_))
                              (if (gx#stx-list? _body85301_)
                                  (_K85277_ _body85301_ '())
                                  (_E8528085289_)))))
                        (_E8528085289_)))))
            (_E8527985303_)))))
    (define gx#core-expand-block__0
      (lambda (_stx85444_ _expand-special85445_)
        (let* ((_begin-form85447_ '%#begin)
               (_expand-e85449_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85444_
           _expand-special85445_
           _begin-form85447_
           _expand-e85449_))))
    (define gx#core-expand-block__1
      (lambda (_stx85451_ _expand-special85452_ _begin-form85453_)
        (let ((_expand-e85455_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85451_
           _expand-special85452_
           _begin-form85453_
           _expand-e85455_))))
    (define gx#core-expand-block
      (lambda _g86110_
        (let ((_g86109_ (##length _g86110_)))
          (cond ((##fx= _g86109_ 2)
                 (apply (lambda (_stx85444_ _expand-special85445_)
                          (gx#core-expand-block__0
                           _stx85444_
                           _expand-special85445_))
                        _g86110_))
                ((##fx= _g86109_ 3)
                 (apply (lambda (_stx85451_
                                 _expand-special85452_
                                 _begin-form85453_)
                          (gx#core-expand-block__1
                           _stx85451_
                           _expand-special85452_
                           _begin-form85453_))
                        _g86110_))
                ((##fx= _g86109_ 4)
                 (apply (lambda (_stx85457_
                                 _expand-special85458_
                                 _begin-form85459_
                                 _expand-e85460_)
                          (gx#core-expand-block__%
                           _stx85457_
                           _expand-special85458_
                           _begin-form85459_
                           _expand-e85460_))
                        _g86110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g86110_))))))
    (define gx#core-expand-block*
      (lambda (_stx85216_ _expand-special85217_)
        (let* ((_g8521885229_
                (gx#core-expand-block__1 _stx85216_ _expand-special85217_ '#f))
               (_E8522285233_
                (lambda () (error '"No clause matching" _g8521885229_))))
          (let ((_K8522785264_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx85216_)))
                (_K8522485250_ (lambda (_expr85248_) _expr85248_))
                (_K8522385239_
                 (lambda (_body85237_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body85237_))
                    (gx#stx-source _stx85216_)))))
            (let ((_try-match8522085260_
                   (lambda ()
                     (if (##pair? _g8521885229_)
                         (let ((_tl8522685255_ (##cdr _g8521885229_))
                               (_hd8522585253_ (##car _g8521885229_)))
                           (if (##null? _tl8522685255_)
                               (let ((_expr85258_ _hd8522585253_))
                                 (_K8522485250_ _expr85258_))
                               (let ((_body85242_ _g8521885229_))
                                 (_K8522385239_ _body85242_))))
                         (let ((_body85242_ _g8521885229_))
                           (_K8522385239_ _body85242_))))))
              (if (##null? _g8521885229_)
                  (_K8522785264_)
                  (_try-match8522085260_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx85044_)
        (letrec ((_satisfied?85046_
                  (lambda (_condition85144_)
                    (let* ((_e8514585160_ _condition85144_)
                           (_E8515585164_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8514585160_)))
                           (_E8514885183_
                            (lambda ()
                              (if (gx#stx-pair? _e8514585160_)
                                  (let ((_e8515685168_
                                         (gx#syntax-e _e8514585160_)))
                                    (let ((_hd8515785171_
                                           (##car _e8515685168_))
                                          (_tl8515885173_
                                           (##cdr _e8515685168_)))
                                      (let* ((_combinator85176_ _hd8515785171_)
                                             (_body85178_ _tl8515885173_))
                                        (if (gx#stx-list? _body85178_)
                                            (let ((_$e85180_
                                                   (gx#stx-e
                                                    _combinator85176_)))
                                              (if (eq? 'not _$e85180_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?85046_
                                                        _body85178_))
                                                  (if (eq? 'and _$e85180_)
                                                      (gx#stx-andmap
                                                       _satisfied?85046_
                                                       _body85178_)
                                                      (if (eq? 'or _$e85180_)
                                                          (gx#stx-ormap
                                                           _satisfied?85046_
                                                           _body85178_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e85180_)
                      (gx#stx-andmap gx#core-resolve-identifier _body85178_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx85044_
                       _combinator85176_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8515585164_)))))
                                  (_E8515585164_))))
                           (_E8514785206_
                            (lambda ()
                              (if (gx#stx-pair? _e8514585160_)
                                  (let ((_e8514985187_
                                         (gx#syntax-e _e8514585160_)))
                                    (let ((_hd8515085190_
                                           (##car _e8514985187_))
                                          (_tl8515185192_
                                           (##cdr _e8514985187_)))
                                      (if (and (gx#identifier? _hd8515085190_)
                                               (gx#core-identifier=?
                                                _hd8515085190_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8515185192_)
                                              (let ((_e8515285195_
                                                     (gx#syntax-e
                                                      _tl8515185192_)))
                                                (let ((_hd8515385198_
                                                       (##car _e8515285195_))
                                                      (_tl8515485200_
                                                       (##cdr _e8515285195_)))
                                                  (let ((_expr85203_
                                                         _hd8515385198_))
                                                    (if (gx#stx-null?
                                                         _tl8515485200_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr85203_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8514885183_))
                (_E8514885183_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8514885183_))
                                          (_E8514885183_))))
                                  (_E8514885183_))))
                           (_E8514685212_
                            (lambda ()
                              (let ((_id85210_ _e8514585160_))
                                (if (gx#identifier? _id85210_)
                                    (gx#core-bound-identifier?__%
                                     _id85210_
                                     gx#feature-binding?)
                                    (_E8514785206_))))))
                      (_E8514685212_))))
                 (_loop85047_
                  (lambda (_rest85077_)
                    (let* ((_e8507885086_ _rest85077_)
                           (_E8508485090_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8507885086_)))
                           (_E8508085094_
                            (lambda ()
                              (if (gx#stx-null? _e8507885086_)
                                  (if '#t '() (_E8508485090_))
                                  (_E8508485090_))))
                           (_E8507985140_
                            (lambda ()
                              (if (gx#stx-pair? _e8507885086_)
                                  (let ((_e8508185098_
                                         (gx#syntax-e _e8507885086_)))
                                    (let ((_hd8508285101_
                                           (##car _e8508185098_))
                                          (_tl8508385103_
                                           (##cdr _e8508185098_)))
                                      (let* ((_hd85106_ _hd8508285101_)
                                             (_rest85108_ _tl8508385103_))
                                        (if '#t
                                            (let* ((_e8510985116_ _hd85106_)
                                                   (_E8511185120_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8510985116_)))
                                                   (_E8511085136_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8510985116_)
                                                          (let ((_e8511285124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8510985116_)))
                    (let ((_hd8511385127_ (##car _e8511285124_))
                          (_tl8511485129_ (##cdr _e8511285124_)))
                      (let* ((_condition85132_ _hd8511385127_)
                             (_body85134_ _tl8511485129_))
                        (if '#t
                            (if (gx#stx-eq? _condition85132_ 'else)
                                (if (gx#stx-null? _rest85108_)
                                    _body85134_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx85044_
                                     _hd85106_))
                                (if (_satisfied?85046_ _condition85132_)
                                    _body85134_
                                    (_loop85047_ _rest85108_)))
                            (_E8511185120_)))))
                  (_E8511185120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8511085136_))
                                            (_E8508085094_)))))
                                  (_E8508085094_)))))
                      (_E8507985140_)))))
          (let* ((_e8504885055_ _stx85044_)
                 (_E8505085059_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8504885055_)))
                 (_E8504985073_
                  (lambda ()
                    (if (gx#stx-pair? _e8504885055_)
                        (let ((_e8505185063_ (gx#syntax-e _e8504885055_)))
                          (let ((_hd8505285066_ (##car _e8505185063_))
                                (_tl8505385068_ (##cdr _e8505185063_)))
                            (let ((_clauses85071_ _tl8505385068_))
                              (if (gx#stx-list? _clauses85071_)
                                  (gx#core-cons
                                   'begin
                                   (_loop85047_ _clauses85071_))
                                  (_E8505085059_)))))
                        (_E8505085059_)))))
            (_E8504985073_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx84987_ _rpath84988_)
        (let* ((_e8498984999_ _stx84987_)
               (_E8499185003_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8498984999_)))
               (_E8499085030_
                (lambda ()
                  (if (gx#stx-pair? _e8498984999_)
                      (let ((_e8499285007_ (gx#syntax-e _e8498984999_)))
                        (let ((_hd8499385010_ (##car _e8499285007_))
                              (_tl8499485012_ (##cdr _e8499285007_)))
                          (if (gx#stx-pair? _tl8499485012_)
                              (let ((_e8499585015_
                                     (gx#syntax-e _tl8499485012_)))
                                (let ((_hd8499685018_ (##car _e8499585015_))
                                      (_tl8499785020_ (##cdr _e8499585015_)))
                                  (let ((_path85023_ _hd8499685018_))
                                    (if (gx#stx-null? _tl8499785020_)
                                        (if (gx#stx-string? _path85023_)
                                            (let ((_rpath85028_
                                                   (let ((_$e85025_
                                                          _rpath84988_))
                                                     (if _$e85025_
                                                         _$e85025_
                                                         (gx#core-resolve-path__%
                                                          _path85023_
                                                          (gx#stx-source
                                                           _stx84987_))))))
                                              (if (member _rpath85028_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx84987_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath85028_))
                                                    (gx#stx-source
                                                     _stx84987_)))))
                                            (_E8499185003_))
                                        (_E8499185003_)))))
                              (_E8499185003_))))
                      (_E8499185003_)))))
          (_E8499085030_))))
    (define gx#core-expand-include%__0
      (lambda (_stx85037_)
        (let ((_rpath85039_ '#f))
          (gx#core-expand-include%__% _stx85037_ _rpath85039_))))
    (define gx#core-expand-include%
      (lambda _g86112_
        (let ((_g86111_ (##length _g86112_)))
          (cond ((##fx= _g86111_ 1)
                 (apply (lambda (_stx85037_)
                          (gx#core-expand-include%__0 _stx85037_))
                        _g86112_))
                ((##fx= _g86111_ 2)
                 (apply (lambda (_stx85041_ _rpath85042_)
                          (gx#core-expand-include%__% _stx85041_ _rpath85042_))
                        _g86112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g86112_))))))
    (define gx#core-apply-expander__%
      (lambda (_K84956_ _stx84957_ _method84958_)
        (if (procedure? _K84956_)
            (let ((_$e84960_ (gx#stx-source _stx84957_)))
              (if _$e84960_
                  ((lambda (_g8496284964_)
                     (gx#stx-wrap-source (_K84956_ _stx84957_) _g8496284964_))
                   _$e84960_)
                  (_K84956_ _stx84957_)))
            (let ((_$e84967_ (bound-method-ref _K84956_ _method84958_)))
              (if _$e84967_
                  ((lambda (_g8496984971_)
                     (gx#core-apply-expander__%
                      _g8496984971_
                      _stx84957_
                      _method84958_))
                   _$e84967_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx84957_
                   _method84958_))))))
    (define gx#core-apply-expander__0
      (lambda (_K84977_ _stx84978_)
        (let ((_method84980_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K84977_ _stx84978_ _method84980_))))
    (define gx#core-apply-expander
      (lambda _g86114_
        (let ((_g86113_ (##length _g86114_)))
          (cond ((##fx= _g86113_ 2)
                 (apply (lambda (_K84977_ _stx84978_)
                          (gx#core-apply-expander__0 _K84977_ _stx84978_))
                        _g86114_))
                ((##fx= _g86113_ 3)
                 (apply (lambda (_K84982_ _stx84983_ _method84984_)
                          (gx#core-apply-expander__%
                           _K84982_
                           _stx84983_
                           _method84984_))
                        _g86114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g86114_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self84952_ _stx84953_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx84953_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self84805_ _stx84806_)
        (let* ((_self8480784813_ _self84805_)
               (_E8480984817_
                (lambda () (error '"No clause matching" _self8480784813_)))
               (_K8481084822_
                (lambda (_K84820_)
                  (gx#core-apply-expander__0 _K84820_ _stx84806_))))
          (if (##structure-instance-of? _self8480784813_ 'gx#core-macro::t)
              (let* ((_e8481184825_
                      (##unchecked-structure-ref
                       _self8480784813_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84828_ _e8481184825_))
                (_K8481084822_ _K84828_))
              (_E8480984817_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self84658_ _stx84659_)
        (if (gx#sealed-syntax? _stx84659_)
            _stx84659_
            (let* ((_self8466084666_ _self84658_)
                   (_E8466284670_
                    (lambda () (error '"No clause matching" _self8466084666_)))
                   (_K8466384675_
                    (lambda (_K84673_)
                      (gx#core-apply-expander__0 _K84673_ _stx84659_))))
              (if (##structure-instance-of?
                   _self8466084666_
                   'gx#core-expander::t)
                  (let* ((_e8466484678_
                          (##unchecked-structure-ref
                           _self8466084666_
                           '1
                           gx#expander::t
                           '#f))
                         (_K84681_ _e8466484678_))
                    (_K8466384675_ _K84681_))
                  (_E8466284670_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self84520_ _stx84521_ _top?84522_)
        (if (_top?84522_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self84520_ _stx84521_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx84521_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self84527_ _stx84528_)
        (let ((_top?84530_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self84527_
           _stx84528_
           _top?84530_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g86116_
        (let ((_g86115_ (##length _g86116_)))
          (cond ((##fx= _g86115_ 2)
                 (apply (lambda (_self84527_ _stx84528_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self84527_
                           _stx84528_))
                        _g86116_))
                ((##fx= _g86115_ 3)
                 (apply (lambda (_self84532_ _stx84533_ _top?84534_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self84532_
                           _stx84533_
                           _top?84534_))
                        _g86116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g86116_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self84394_ _stx84395_)
        (gx#top-special-form::apply-macro-expander__%
         _self84394_
         _stx84395_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self84219_ _stx84220_)
        (let* ((_self8422184227_ _self84219_)
               (_E8422384231_
                (lambda () (error '"No clause matching" _self8422184227_)))
               (_K8422484264_
                (lambda (_id84234_)
                  (let* ((_e8423584242_ _stx84220_)
                         (_E8423784246_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8423584242_)))
                         (_E8423684260_
                          (lambda ()
                            (if (gx#stx-pair? _e8423584242_)
                                (let ((_e8423884250_
                                       (gx#syntax-e _e8423584242_)))
                                  (let ((_hd8423984253_ (##car _e8423884250_))
                                        (_tl8424084255_ (##cdr _e8423884250_)))
                                    (let ((_body84258_ _tl8424084255_))
                                      (if '#t
                                          (gx#core-cons _id84234_ _body84258_)
                                          (_E8423784246_)))))
                                (_E8423784246_)))))
                    (_E8423684260_)))))
          (if (##structure-instance-of?
               _self8422184227_
               'gx#rename-macro-expander::t)
              (let* ((_e8422584267_
                      (##unchecked-structure-ref
                       _self8422184227_
                       '1
                       gx#expander::t
                       '#f))
                     (_id84270_ _e8422584267_))
                (_K8422484264_ _id84270_))
              (_E8422384231_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self84045_ _stx84046_ _method84047_)
        (let* ((_self8404884056_ _self84045_)
               (_E8405084060_
                (lambda () (error '"No clause matching" _self8404884056_)))
               (_K8405184067_
                (lambda (_phi84063_ _ctx84064_ _K84065_)
                  (gx#core-apply-user-macro
                   _K84065_
                   _stx84046_
                   _ctx84064_
                   _phi84063_
                   _method84047_))))
          (if (##structure-instance-of? _self8404884056_ 'gx#macro-expander::t)
              (let* ((_e8405284070_
                      (##unchecked-structure-ref
                       _self8404884056_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84073_ _e8405284070_)
                     (_e8405384075_
                      (##unchecked-structure-ref
                       _self8404884056_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx84078_ _e8405384075_)
                     (_e8405484080_
                      (##unchecked-structure-ref
                       _self8404884056_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi84083_ _e8405484080_))
                (_K8405184067_ _phi84083_ _ctx84078_ _K84073_))
              (_E8405084060_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self84088_ _stx84089_)
        (let ((_method84091_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self84088_
           _stx84089_
           _method84091_))))
    (define gx#core-apply-user-expander
      (lambda _g86118_
        (let ((_g86117_ (##length _g86118_)))
          (cond ((##fx= _g86117_ 2)
                 (apply (lambda (_self84088_ _stx84089_)
                          (gx#core-apply-user-expander__0
                           _self84088_
                           _stx84089_))
                        _g86118_))
                ((##fx= _g86117_ 3)
                 (apply (lambda (_self84093_ _stx84094_ _method84095_)
                          (gx#core-apply-user-expander__%
                           _self84093_
                           _stx84094_
                           _method84095_))
                        _g86118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g86118_))))))
    (define gx#core-apply-user-macro
      (lambda (_K84035_ _stx84036_ _ctx84037_ _phi84038_ _method84039_)
        (let ((_mark84041_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx84037_
                _phi84038_
                _stx84036_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K84035_
               (gx#stx-apply-mark _stx84036_ _mark84041_)
               _method84039_)
              _mark84041_))
           gx#current-expander-marks
           (cons _mark84041_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx83886_ _phi83887_ _ctx83888_)
        (let _lp83890_ ((_bind83892_
                         (gx#core-resolve-identifier__%
                          _stx83886_
                          _phi83887_
                          _ctx83888_)))
          (if (##structure-direct-instance-of?
               _bind83892_
               'gx#import-binding::t)
              (_lp83890_
               (##unchecked-structure-ref
                _bind83892_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind83892_
                   'gx#alias-binding::t)
                  (_lp83890_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind83892_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi83887_
                    _ctx83888_))
                  _bind83892_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx83897_)
        (let* ((_phi83899_ (gx#current-expander-phi))
               (_ctx83901_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83897_ _phi83899_ _ctx83901_))))
    (define gx#resolve-identifier__1
      (lambda (_stx83903_ _phi83904_)
        (let ((_ctx83906_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83903_ _phi83904_ _ctx83906_))))
    (define gx#resolve-identifier
      (lambda _g86120_
        (let ((_g86119_ (##length _g86120_)))
          (cond ((##fx= _g86119_ 1)
                 (apply (lambda (_stx83897_)
                          (gx#resolve-identifier__0 _stx83897_))
                        _g86120_))
                ((##fx= _g86119_ 2)
                 (apply (lambda (_stx83903_ _phi83904_)
                          (gx#resolve-identifier__1 _stx83903_ _phi83904_))
                        _g86120_))
                ((##fx= _g86119_ 3)
                 (apply (lambda (_stx83908_ _phi83909_ _ctx83910_)
                          (gx#resolve-identifier__%
                           _stx83908_
                           _phi83909_
                           _ctx83910_))
                        _g86120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g86120_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx83844_ _val83845_ _rebind?83846_ _phi83847_ _ctx83848_)
        (let ((_rebind?83850_
               (if (not _rebind?83846_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?83846_) _rebind?83846_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx83844_)
           _val83845_
           _rebind?83850_
           _phi83847_
           _ctx83848_))))
    (define gx#bind-identifier!__0
      (lambda (_stx83855_ _val83856_)
        (let* ((_rebind?83858_ '#f)
               (_phi83860_ (gx#current-expander-phi))
               (_ctx83862_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83855_
           _val83856_
           _rebind?83858_
           _phi83860_
           _ctx83862_))))
    (define gx#bind-identifier!__1
      (lambda (_stx83864_ _val83865_ _rebind?83866_)
        (let* ((_phi83868_ (gx#current-expander-phi))
               (_ctx83870_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83864_
           _val83865_
           _rebind?83866_
           _phi83868_
           _ctx83870_))))
    (define gx#bind-identifier!__2
      (lambda (_stx83872_ _val83873_ _rebind?83874_ _phi83875_)
        (let ((_ctx83877_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83872_
           _val83873_
           _rebind?83874_
           _phi83875_
           _ctx83877_))))
    (define gx#bind-identifier!
      (lambda _g86122_
        (let ((_g86121_ (##length _g86122_)))
          (cond ((##fx= _g86121_ 2)
                 (apply (lambda (_stx83855_ _val83856_)
                          (gx#bind-identifier!__0 _stx83855_ _val83856_))
                        _g86122_))
                ((##fx= _g86121_ 3)
                 (apply (lambda (_stx83864_ _val83865_ _rebind?83866_)
                          (gx#bind-identifier!__1
                           _stx83864_
                           _val83865_
                           _rebind?83866_))
                        _g86122_))
                ((##fx= _g86121_ 4)
                 (apply (lambda (_stx83872_
                                 _val83873_
                                 _rebind?83874_
                                 _phi83875_)
                          (gx#bind-identifier!__2
                           _stx83872_
                           _val83873_
                           _rebind?83874_
                           _phi83875_))
                        _g86122_))
                ((##fx= _g86121_ 5)
                 (apply (lambda (_stx83879_
                                 _val83880_
                                 _rebind?83881_
                                 _phi83882_
                                 _ctx83883_)
                          (gx#bind-identifier!__%
                           _stx83879_
                           _val83880_
                           _rebind?83881_
                           _phi83882_
                           _ctx83883_))
                        _g86122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g86122_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx83816_ _phi83817_ _ctx83818_)
        (let _lp83820_ ((_e83822_ _stx83816_)
                        (_marks83823_ (gx#current-expander-marks)))
          (if (symbol? _e83822_)
              (gx#core-resolve-binding
               _e83822_
               _phi83817_
               _phi83817_
               _ctx83818_
               (reverse _marks83823_))
              (if (gx#identifier-quote? _e83822_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e83822_ '1 gx#AST::t '#f)
                   _phi83817_
                   '0
                   (##unchecked-structure-ref
                    _e83822_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e83822_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e83822_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e83822_ '1 gx#AST::t '#f)
                       _phi83817_
                       _phi83817_
                       _ctx83818_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e83822_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks83823_))
                      (if (##structure-direct-instance-of?
                           _e83822_
                           'gx#syntax-wrap::t)
                          (_lp83820_
                           (##unchecked-structure-ref
                            _e83822_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e83822_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks83823_))
                          (if (##structure-instance-of?
                               _e83822_
                               'gerbil#AST::t)
                              (_lp83820_
                               (##unchecked-structure-ref
                                _e83822_
                                '1
                                gx#AST::t
                                '#f)
                               _marks83823_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx83816_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx83828_)
        (let* ((_phi83830_ (gx#current-expander-phi))
               (_ctx83832_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83828_ _phi83830_ _ctx83832_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx83834_ _phi83835_)
        (let ((_ctx83837_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83834_ _phi83835_ _ctx83837_))))
    (define gx#core-resolve-identifier
      (lambda _g86124_
        (let ((_g86123_ (##length _g86124_)))
          (cond ((##fx= _g86123_ 1)
                 (apply (lambda (_stx83828_)
                          (gx#core-resolve-identifier__0 _stx83828_))
                        _g86124_))
                ((##fx= _g86123_ 2)
                 (apply (lambda (_stx83834_ _phi83835_)
                          (gx#core-resolve-identifier__1
                           _stx83834_
                           _phi83835_))
                        _g86124_))
                ((##fx= _g86123_ 3)
                 (apply (lambda (_stx83839_ _phi83840_ _ctx83841_)
                          (gx#core-resolve-identifier__%
                           _stx83839_
                           _phi83840_
                           _ctx83841_))
                        _g86124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g86124_))))))
    (define gx#core-resolve-binding
      (lambda (_id83729_ _phi83730_ _src-phi83731_ _ctx83732_ _marks83733_)
        (letrec ((_resolve83735_
                  (lambda (_ctx83803_ _src-phi83804_ _key83805_)
                    (let _lp83807_ ((_ctx83809_
                                     (gx#core-context-shift
                                      _ctx83803_
                                      _phi83730_))
                                    (_dphi83810_
                                     (fx- _phi83730_ _src-phi83804_)))
                      (let ((_$e83812_
                             (gx#core-context-resolve _ctx83809_ _key83805_)))
                        (if _$e83812_
                            (values _$e83812_)
                            (if (fxzero? _dphi83810_)
                                '#f
                                (if (fxpositive? _dphi83810_)
                                    (_lp83807_
                                     (gx#core-context-shift _ctx83809_ '-1)
                                     (fx- _dphi83810_ '1))
                                    (_lp83807_
                                     (gx#core-context-shift _ctx83809_ '1)
                                     (fx+ _dphi83810_ '1))))))))))
          (let _lp83737_ ((_ctx83739_ _ctx83732_)
                          (_src-phi83740_ _src-phi83731_)
                          (_rest83741_ _marks83733_))
            (let* ((_rest8374283750_ _rest83741_)
                   (_else8374483758_
                    (lambda ()
                      (_resolve83735_ _ctx83739_ _src-phi83740_ _id83729_)))
                   (_K8374683791_
                    (lambda (_rest83761_ _hd83762_)
                      (let* ((_hd8376383769_ _hd83762_)
                             (_E8376583773_
                              (lambda ()
                                (error '"No clause matching" _hd8376383769_)))
                             (_K8376683783_
                              (lambda (_subst83776_)
                                (let ((_$e83780_
                                       (let ((_key83778_
                                              (if _subst83776_
                                                  (hash-get
                                                   _subst83776_
                                                   _id83729_)
                                                  '#f)))
                                         (if _key83778_
                                             (_resolve83735_
                                              _ctx83739_
                                              _src-phi83740_
                                              _key83778_)
                                             '#f))))
                                  (if _$e83780_
                                      _$e83780_
                                      (_lp83737_
                                       (##unchecked-structure-ref
                                        _hd83762_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd83762_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest83761_))))))
                        (if (##structure-instance-of?
                             _hd8376383769_
                             'gx#expander-mark::t)
                            (let* ((_e8376783786_
                                    (##unchecked-structure-ref
                                     _hd8376383769_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst83789_ _e8376783786_))
                              (_K8376683783_ _subst83789_))
                            (_E8376583773_))))))
              (if (##pair? _rest8374283750_)
                  (let ((_hd8374783794_ (##car _rest8374283750_))
                        (_tl8374883796_ (##cdr _rest8374283750_)))
                    (let* ((_hd83799_ _hd8374783794_)
                           (_rest83801_ _tl8374883796_))
                      (_K8374683791_ _rest83801_ _hd83799_)))
                  (_else8374483758_)))))))
    (define gx#core-bind!__%
      (lambda (_key83605_ _val83606_ _rebind?83607_ _phi83608_ _ctx83609_)
        (letrec ((_update-binding83611_
                  (lambda (_xval83682_)
                    (if (or (_rebind?83607_ _ctx83609_ _xval83682_ _val83606_)
                            (and (##structure-direct-instance-of?
                                  _xval83682_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval83682_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val83606_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val83606_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval83682_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val83606_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val83606_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval83682_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val83606_
                        (if (and (##structure-direct-instance-of?
                                  _val83606_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val83606_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval83682_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val83606_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval83682_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval83682_
                            (if (and (##structure-direct-instance-of?
                                      _val83606_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval83682_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key83605_
                                 (cons (##unchecked-structure-ref
                                        _val83606_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val83606_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval83682_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval83682_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval83682_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval83682_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key83605_
                                 _val83606_
                                 _xval83682_))))))
                 (_gensubst83612_
                  (lambda (_subst83677_ _id83678_)
                    (let ((_eid83680_
                           (gensym (if (uninterned-symbol? _id83678_)
                                       '%
                                       _id83678_))))
                      (hash-put! _subst83677_ _id83678_ _eid83680_)
                      _eid83680_)))
                 (_subst!83613_
                  (lambda (_key83615_)
                    (let* ((_key8361683624_ _key83615_)
                           (_else8361883632_ (lambda () _key83615_))
                           (_K8362083665_
                            (lambda (_mark83635_ _id83636_)
                              (let* ((_mark8363783643_ _mark83635_)
                                     (_E8363983647_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8363783643_)))
                                     (_K8364083657_
                                      (lambda (_subst83650_)
                                        (if (not _subst83650_)
                                            (let ((_subst83652_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark83635_
                                               _subst83652_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst83612_
                                               _subst83652_
                                               _id83636_))
                                            (let ((_$e83654_
                                                   (hash-get
                                                    _subst83650_
                                                    _id83636_)))
                                              (if _$e83654_
                                                  (values _$e83654_)
                                                  (_gensubst83612_
                                                   _subst83650_
                                                   _id83636_)))))))
                                (if (##structure-instance-of?
                                     _mark8363783643_
                                     'gx#expander-mark::t)
                                    (let* ((_e8364183660_
                                            (##unchecked-structure-ref
                                             _mark8363783643_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst83663_ _e8364183660_))
                                      (_K8364083657_ _subst83663_))
                                    (_E8363983647_))))))
                      (if (##pair? _key8361683624_)
                          (let ((_hd8362183668_ (##car _key8361683624_))
                                (_tl8362283670_ (##cdr _key8361683624_)))
                            (let* ((_id83673_ _hd8362183668_)
                                   (_mark83675_ _tl8362283670_))
                              (_K8362083665_ _mark83675_ _id83673_)))
                          (_else8361883632_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx83609_ _phi83608_)
           (_subst!83613_ _key83605_)
           _val83606_
           _update-binding83611_))))
    (define gx#core-bind!__0
      (lambda (_key83699_ _val83700_)
        (let* ((_rebind?83702_ false)
               (_phi83704_ (gx#current-expander-phi))
               (_ctx83706_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83699_
           _val83700_
           _rebind?83702_
           _phi83704_
           _ctx83706_))))
    (define gx#core-bind!__1
      (lambda (_key83708_ _val83709_ _rebind?83710_)
        (let* ((_phi83712_ (gx#current-expander-phi))
               (_ctx83714_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83708_
           _val83709_
           _rebind?83710_
           _phi83712_
           _ctx83714_))))
    (define gx#core-bind!__2
      (lambda (_key83716_ _val83717_ _rebind?83718_ _phi83719_)
        (let ((_ctx83721_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83716_
           _val83717_
           _rebind?83718_
           _phi83719_
           _ctx83721_))))
    (define gx#core-bind!
      (lambda _g86126_
        (let ((_g86125_ (##length _g86126_)))
          (cond ((##fx= _g86125_ 2)
                 (apply (lambda (_key83699_ _val83700_)
                          (gx#core-bind!__0 _key83699_ _val83700_))
                        _g86126_))
                ((##fx= _g86125_ 3)
                 (apply (lambda (_key83708_ _val83709_ _rebind?83710_)
                          (gx#core-bind!__1
                           _key83708_
                           _val83709_
                           _rebind?83710_))
                        _g86126_))
                ((##fx= _g86125_ 4)
                 (apply (lambda (_key83716_
                                 _val83717_
                                 _rebind?83718_
                                 _phi83719_)
                          (gx#core-bind!__2
                           _key83716_
                           _val83717_
                           _rebind?83718_
                           _phi83719_))
                        _g86126_))
                ((##fx= _g86125_ 5)
                 (apply (lambda (_key83723_
                                 _val83724_
                                 _rebind?83725_
                                 _phi83726_
                                 _ctx83727_)
                          (gx#core-bind!__%
                           _key83723_
                           _val83724_
                           _rebind?83725_
                           _phi83726_
                           _ctx83727_))
                        _g86126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g86126_))))))
    (define gx#core-identifier-key
      (lambda (_stx83539_)
        (if (symbol? _stx83539_)
            (let* ((_g8354083548_ (gx#current-expander-marks))
                   (_else8354283556_ (lambda () _stx83539_))
                   (_K8354483561_
                    (lambda (_hd83559_) (cons _stx83539_ _hd83559_))))
              (if (##pair? _g8354083548_)
                  (let* ((_hd8354583564_ (##car _g8354083548_))
                         (_hd83567_ _hd8354583564_))
                    (_K8354483561_ _hd83567_))
                  (_else8354283556_)))
            (if (gx#identifier? _stx83539_)
                (let* ((_id83569_ (gx#syntax-local-unwrap _stx83539_))
                       (_eid83571_ (gx#stx-e _id83569_))
                       (_marks83573_ (gx#stx-identifier-marks* _id83569_)))
                  (let* ((_marks8357583583_ _marks83573_)
                         (_else8357783591_ (lambda () _eid83571_))
                         (_K8357983596_
                          (lambda (_hd83594_) (cons _eid83571_ _hd83594_))))
                    (if (##pair? _marks8357583583_)
                        (let* ((_hd8358083599_ (##car _marks8357583583_))
                               (_hd83602_ _hd8358083599_))
                          (_K8357983596_ _hd83602_))
                        (_else8357783591_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx83539_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx83484_ _phi83485_)
        (letrec ((_make-phi83487_
                  (lambda (_super83537_)
                    (let ((__obj86097
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj86097
                       (gensym 'phi)
                       _super83537_)
                      __obj86097)))
                 (_make-phi/up83488_
                  (lambda (_ctx83532_ _super83533_)
                    (let ((_ctx+183535_ (_make-phi83487_ _super83533_)))
                      (##unchecked-structure-set!
                       _ctx83532_
                       _ctx+183535_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+183535_
                       _ctx83532_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+183535_)))
                 (_make-phi/down83489_
                  (lambda (_ctx83527_ _super83528_)
                    (let ((_ctx-183530_ (_make-phi83487_ _super83528_)))
                      (##unchecked-structure-set!
                       _ctx-183530_
                       _ctx83527_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx83527_
                       _ctx-183530_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-183530_)))
                 (_shift83490_
                  (lambda (_ctx83511_
                           _delta83512_
                           _make-delta-context83513_
                           _phi83514_
                           _K83515_)
                    (let ((_$e83517_
                           (##unchecked-structure-ref
                            _ctx83511_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e83517_
                          ((lambda (_super83520_)
                             (let* ((_super83522_
                                     (_K83515_ _super83520_ _delta83512_))
                                    (_ctx+d83524_
                                     (_make-delta-context83513_
                                      _ctx83511_
                                      _super83522_)))
                               (_K83515_
                                _ctx+d83524_
                                (fx- _phi83514_ _delta83512_))))
                           _$e83517_)
                          (error '"Bad context" _ctx83511_))))))
          (let _K83492_ ((_ctx83494_ _ctx83484_) (_phi83495_ _phi83485_))
            (if (fxzero? _phi83495_)
                _ctx83494_
                (if (##structure-instance-of? _ctx83494_ 'gx#context-phi::t)
                    (if (fxpositive? _phi83495_)
                        (let ((_$e83497_
                               (##unchecked-structure-ref
                                _ctx83494_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e83497_
                              ((lambda (_g8349983501_)
                                 (_K83492_ _g8349983501_ (fx- _phi83495_ '1)))
                               _$e83497_)
                              (_shift83490_
                               _ctx83494_
                               '1
                               _make-phi/up83488_
                               _phi83495_
                               _K83492_)))
                        (let ((_$e83504_
                               (##unchecked-structure-ref
                                _ctx83494_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e83504_
                              ((lambda (_g8350683508_)
                                 (_K83492_ _g8350683508_ (fx+ _phi83495_ '1)))
                               _$e83504_)
                              (_shift83490_
                               _ctx83494_
                               '-1
                               _make-phi/down83489_
                               _phi83495_
                               _K83492_))))
                    _ctx83494_))))))
    (define gx#core-context-get
      (lambda (_ctx83481_ _key83482_)
        (hash-get
         (##unchecked-structure-ref _ctx83481_ '2 gx#expander-context::t '#f)
         _key83482_)))
    (define gx#core-context-put!
      (lambda (_ctx83477_ _key83478_ _val83479_)
        (hash-put!
         (##unchecked-structure-ref _ctx83477_ '2 gx#expander-context::t '#f)
         _key83478_
         _val83479_)))
    (define gx#core-context-resolve
      (lambda (_ctx83464_ _key83465_)
        (let _lp83467_ ((_ctx83469_ _ctx83464_))
          (let ((_$e83471_ (gx#core-context-get _ctx83469_ _key83465_)))
            (if _$e83471_
                (values _$e83471_)
                (let ((_$e83474_
                       (if (##structure-instance-of?
                            _ctx83469_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx83469_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e83474_ (_lp83467_ _$e83474_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx83454_ _key83455_ _val83456_ _rebind83457_)
        (let ((_$e83459_ (gx#core-context-get _ctx83454_ _key83455_)))
          (if _$e83459_
              ((lambda (_xval83462_)
                 (gx#core-context-put!
                  _ctx83454_
                  _key83455_
                  (_rebind83457_ _xval83462_)))
               _$e83459_)
              (gx#core-context-put! _ctx83454_ _key83455_ _val83456_)))))
    (define gx#core-context-top__%
      (lambda (_ctx83432_ _stop?83433_)
        (let _lp83435_ ((_ctx83437_ _ctx83432_))
          (if (_stop?83433_ _ctx83437_)
              _ctx83437_
              (if (##structure-instance-of? _ctx83437_ 'gx#context-phi::t)
                  (_lp83435_
                   (##unchecked-structure-ref
                    _ctx83437_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx83443_ (gx#current-expander-context))
               (_stop?83445_ gx#top-context?))
          (gx#core-context-top__% _ctx83443_ _stop?83445_))))
    (define gx#core-context-top__1
      (lambda (_ctx83447_)
        (let ((_stop?83449_ gx#top-context?))
          (gx#core-context-top__% _ctx83447_ _stop?83449_))))
    (define gx#core-context-top
      (lambda _g86128_
        (let ((_g86127_ (##length _g86128_)))
          (cond ((##fx= _g86127_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g86128_))
                ((##fx= _g86127_ 1)
                 (apply (lambda (_ctx83447_)
                          (gx#core-context-top__1 _ctx83447_))
                        _g86128_))
                ((##fx= _g86127_ 2)
                 (apply (lambda (_ctx83451_ _stop?83452_)
                          (gx#core-context-top__% _ctx83451_ _stop?83452_))
                        _g86128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g86128_))))))
    (define gx#core-context-root__%
      (lambda (_ctx83417_)
        (let _lp83419_ ((_ctx83421_ _ctx83417_))
          (if (##structure-instance-of? _ctx83421_ 'gx#context-phi::t)
              (_lp83419_
               (##unchecked-structure-ref _ctx83421_ '3 gx#phi-context::t '#f))
              _ctx83421_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx83427_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx83427_))))
    (define gx#core-context-root
      (lambda _g86130_
        (let ((_g86129_ (##length _g86130_)))
          (cond ((##fx= _g86129_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g86130_))
                ((##fx= _g86129_ 1)
                 (apply (lambda (_ctx83429_)
                          (gx#core-context-root__% _ctx83429_))
                        _g86130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g86130_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx83398_ . __8339583399_)
        (let ((_$e83402_ (gx#current-expander-allow-rebind?)))
          (if _$e83402_
              _$e83402_
              (if (##structure-instance-of? _ctx83398_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx83398_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx83398_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx83409_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx83409_))))
    (define gx#core-context-rebind?
      (lambda _g86132_
        (let ((_g86131_ (##length _g86132_)))
          (cond ((##fx= _g86131_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g86132_))
                ((##fx= _g86131_ 1)
                 (apply (lambda (_ctx83411_)
                          (gx#core-context-rebind?__% _ctx83411_))
                        _g86132_))
                ((##fx>= _g86131_ 1)
                 (apply gx#core-context-rebind?__% _g86132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g86132_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx83381_)
        (let ((_$e83383_ (gx#core-context-top__1 _ctx83381_)))
          (if _$e83383_
              ((lambda (_ctx83386_)
                 (if (##structure-instance-of?
                      _ctx83386_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx83386_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e83383_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx83392_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx83392_))))
    (define gx#core-context-namespace
      (lambda _g86134_
        (let ((_g86133_ (##length _g86134_)))
          (cond ((##fx= _g86133_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g86134_))
                ((##fx= _g86133_ 1)
                 (apply (lambda (_ctx83394_)
                          (gx#core-context-namespace__% _ctx83394_))
                        _g86134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g86134_))))))
    (define gx#expander-binding?__%
      (lambda (_bind83367_ _is?83368_)
        (if (##structure-direct-instance-of? _bind83367_ 'gx#syntax-binding::t)
            (_is?83368_
             (##unchecked-structure-ref
              _bind83367_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind83373_)
        (let ((_is?83375_ gx#expander?))
          (gx#expander-binding?__% _bind83373_ _is?83375_))))
    (define gx#expander-binding?
      (lambda _g86136_
        (let ((_g86135_ (##length _g86136_)))
          (cond ((##fx= _g86135_ 1)
                 (apply (lambda (_bind83373_)
                          (gx#expander-binding?__0 _bind83373_))
                        _g86136_))
                ((##fx= _g86135_ 2)
                 (apply (lambda (_bind83377_ _is?83378_)
                          (gx#expander-binding?__% _bind83377_ _is?83378_))
                        _g86136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g86136_))))))
    (define gx#core-expander-binding?
      (lambda (_bind83364_)
        (gx#expander-binding?__% _bind83364_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind83362_)
        (gx#expander-binding?__% _bind83362_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind83356_)
        (letrec ((_direct-special-form?83358_
                  (lambda (_obj83360_)
                    (##structure-direct-instance-of?
                     _obj83360_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind83356_ _direct-special-form?83358_))))
    (define gx#special-form-binding?
      (lambda (_bind83354_)
        (gx#expander-binding?__% _bind83354_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind83345_)
        (letrec ((_feature?83347_
                  (lambda (_e83349_)
                    (let ((_$e83351_
                           (##structure-instance-of?
                            _e83349_
                            'gx#feature-expander::t)))
                      (if _$e83351_
                          _$e83351_
                          (##structure-instance-of?
                           _e83349_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind83345_ _feature?83347_))))
    (define gx#private-feature-binding?
      (lambda (_bind83343_)
        (gx#expander-binding?__% _bind83343_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id83330_ _bound?83331_)
        (if (gx#identifier? _id83330_)
            (_bound?83331_ (gx#resolve-identifier__0 _id83330_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id83336_)
        (let ((_bound?83338_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id83336_ _bound?83338_))))
    (define gx#core-bound-identifier?
      (lambda _g86138_
        (let ((_g86137_ (##length _g86138_)))
          (cond ((##fx= _g86137_ 1)
                 (apply (lambda (_id83336_)
                          (gx#core-bound-identifier?__0 _id83336_))
                        _g86138_))
                ((##fx= _g86137_ 2)
                 (apply (lambda (_id83340_ _bound?83341_)
                          (gx#core-bound-identifier?__%
                           _id83340_
                           _bound?83341_))
                        _g86138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g86138_))))))
    (define gx#core-identifier=?
      (lambda (_x83320_ _y83321_)
        (letrec ((_y=?83323_
                  (lambda (_xid83327_)
                    ((if (list? _y83321_) memq eq?) _xid83327_ _y83321_))))
          (let ((_bind83325_ (gx#resolve-identifier__0 _x83320_)))
            (if (##structure-instance-of? _bind83325_ 'gx#binding::t)
                (_y=?83323_
                 (##unchecked-structure-ref _bind83325_ '1 gx#binding::t '#f))
                (_y=?83323_ (gx#stx-e _x83320_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e83318_)
        (if (interned-symbol? _e83318_)
            (string-index__0 (symbol->string _e83318_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx83273_ _src83274_ _ctx83275_ _marks83276_)
        (if (##structure? _stx83273_)
            (let ((_$e83278_ (gx#sealed-syntax-unwrap _stx83273_)))
              (if _$e83278_
                  (values _$e83278_)
                  (if (gx#identifier? _stx83273_)
                      (let ((_id83281_
                             (gx#stx-unwrap__% _stx83273_ _marks83276_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id83281_ '1 gx#AST::t '#f)
                         (let ((_$e83283_
                                (##unchecked-structure-ref
                                 _id83281_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e83283_ _$e83283_ _src83274_))
                         _ctx83275_
                         (##unchecked-structure-ref
                          _id83281_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx83273_)
                       (let ((_$e83286_ (gx#stx-source _stx83273_)))
                         (if _$e83286_ _$e83286_ _src83274_))
                       _ctx83275_
                       (reverse _marks83276_)))))
            (##structure
             gx#syntax-quote::t
             _stx83273_
             _src83274_
             _ctx83275_
             (reverse _marks83276_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx83292_)
        (let* ((_src83294_ '#f)
               (_ctx83296_ (gx#current-expander-context))
               (_marks83298_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83292_
           _src83294_
           _ctx83296_
           _marks83298_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx83300_ _src83301_)
        (let* ((_ctx83303_ (gx#current-expander-context))
               (_marks83305_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83300_
           _src83301_
           _ctx83303_
           _marks83305_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx83307_ _src83308_ _ctx83309_)
        (let ((_marks83311_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83307_
           _src83308_
           _ctx83309_
           _marks83311_))))
    (define gx#core-quote-syntax
      (lambda _g86140_
        (let ((_g86139_ (##length _g86140_)))
          (cond ((##fx= _g86139_ 1)
                 (apply (lambda (_stx83292_)
                          (gx#core-quote-syntax__0 _stx83292_))
                        _g86140_))
                ((##fx= _g86139_ 2)
                 (apply (lambda (_stx83300_ _src83301_)
                          (gx#core-quote-syntax__1 _stx83300_ _src83301_))
                        _g86140_))
                ((##fx= _g86139_ 3)
                 (apply (lambda (_stx83307_ _src83308_ _ctx83309_)
                          (gx#core-quote-syntax__2
                           _stx83307_
                           _src83308_
                           _ctx83309_))
                        _g86140_))
                ((##fx= _g86139_ 4)
                 (apply (lambda (_stx83313_ _src83314_ _ctx83315_ _marks83316_)
                          (gx#core-quote-syntax__%
                           _stx83313_
                           _src83314_
                           _ctx83315_
                           _marks83316_))
                        _g86140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g86140_))))))
    (define gx#core-cons
      (lambda (_hd83269_ _tl83270_)
        (cons (gx#core-quote-syntax__0 _hd83269_) _tl83270_)))
    (define gx#core-list
      (lambda (_hd83266_ . _rest83267_)
        (cons (gx#core-quote-syntax__0 _hd83266_) _rest83267_)))
    (define gx#core-cons*
      (lambda (_hd83263_ . _rest83264_)
        (apply cons* (gx#core-quote-syntax__0 _hd83263_) _rest83264_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path83237_ _rel83238_)
        (let ((_path83250_ (gx#stx-e _stx-path83237_))
              (_reldir83251_
               (let _lp83240_ ((_relsrc83242_
                                (let ((_$e83247_
                                       (gx#stx-source _stx-path83237_)))
                                  (if _$e83247_ _$e83247_ _rel83238_))))
                 (if (##structure-instance-of? _relsrc83242_ 'gerbil#AST::t)
                     (_lp83240_
                      (let ((_$e83244_ (gx#stx-source _relsrc83242_)))
                        (if _$e83244_ _$e83244_ (gx#stx-e _relsrc83242_))))
                     (if (source-location-path? _relsrc83242_)
                         (path-directory (source-location-path _relsrc83242_))
                         (if (string? _relsrc83242_)
                             (path-directory _relsrc83242_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path83250_ (path-normalize _reldir83251_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path83256_)
        (let ((_rel83258_ '#f))
          (gx#core-resolve-path__% _stx-path83256_ _rel83258_))))
    (define gx#core-resolve-path
      (lambda _g86142_
        (let ((_g86141_ (##length _g86142_)))
          (cond ((##fx= _g86141_ 1)
                 (apply (lambda (_stx-path83256_)
                          (gx#core-resolve-path__0 _stx-path83256_))
                        _g86142_))
                ((##fx= _g86141_ 2)
                 (apply (lambda (_stx-path83260_ _rel83261_)
                          (gx#core-resolve-path__% _stx-path83260_ _rel83261_))
                        _g86142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g86142_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr83193_ _ctx83194_)
        (let* ((_repr8319583202_ _repr83193_)
               (_E8319783206_
                (lambda () (error '"No clause matching" _repr8319583202_)))
               (_K8319883214_
                (lambda (_subs83209_ _phi83210_)
                  (let ((_subst83212_
                         (if (not (null? _subs83209_))
                             (list->hash-table-eq _subs83209_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst83212_
                     _ctx83194_
                     _phi83210_
                     '#f)))))
          (if (##pair? _repr8319583202_)
              (let ((_hd8319983217_ (##car _repr8319583202_))
                    (_tl8320083219_ (##cdr _repr8319583202_)))
                (let* ((_phi83222_ _hd8319983217_)
                       (_subs83224_ _tl8320083219_))
                  (_K8319883214_ _subs83224_ _phi83222_)))
              (_E8319783206_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr83229_)
        (let ((_ctx83231_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr83229_ _ctx83231_))))
    (define gx#core-deserialize-mark
      (lambda _g86144_
        (let ((_g86143_ (##length _g86144_)))
          (cond ((##fx= _g86143_ 1)
                 (apply (lambda (_repr83229_)
                          (gx#core-deserialize-mark__0 _repr83229_))
                        _g86144_))
                ((##fx= _g86143_ 2)
                 (apply (lambda (_repr83233_ _ctx83234_)
                          (gx#core-deserialize-mark__% _repr83233_ _ctx83234_))
                        _g86144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g86144_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx83190_)
        (gx#stx-rewrap _stx83190_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx83188_)
        (gx#stx-unwrap__% _stx83188_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx83158_)
        (let* ((_g8315983167_ (gx#current-expander-marks))
               (_else8316183175_ (lambda () _stx83158_))
               (_K8316383180_
                (lambda (_hd83178_) (gx#stx-apply-mark _stx83158_ _hd83178_))))
          (if (##pair? _g8315983167_)
              (let* ((_hd8316483183_ (##car _g8315983167_))
                     (_hd83186_ _hd8316483183_))
                (_K8316383180_ _hd83186_))
              (_else8316183175_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx83143_ _E83144_)
        (let ((_bind83146_ (gx#resolve-identifier__0 _stx83143_)))
          (if (##structure-direct-instance-of?
               _bind83146_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind83146_
               '4
               gx#syntax-binding::t
               '#f)
              (_E83144_ _stx83143_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx83151_)
        (let ((_E83153_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx83151_ _E83153_))))
    (define gx#syntax-local-e
      (lambda _g86146_
        (let ((_g86145_ (##length _g86146_)))
          (cond ((##fx= _g86145_ 1)
                 (apply (lambda (_stx83151_) (gx#syntax-local-e__0 _stx83151_))
                        _g86146_))
                ((##fx= _g86145_ 2)
                 (apply (lambda (_stx83155_ _E83156_)
                          (gx#syntax-local-e__% _stx83155_ _E83156_))
                        _g86146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g86146_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx83127_ _E83128_)
        (let ((_e83130_ (gx#syntax-local-e__% _stx83127_ _E83128_)))
          (if (##structure-instance-of? _e83130_ 'gx#expander::t)
              (##structure-ref _e83130_ '1 gx#expander::t '#f)
              _e83130_))))
    (define gx#syntax-local-value__0
      (lambda (_stx83135_)
        (let ((_E83137_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx83135_ _E83137_))))
    (define gx#syntax-local-value
      (lambda _g86148_
        (let ((_g86147_ (##length _g86148_)))
          (cond ((##fx= _g86147_ 1)
                 (apply (lambda (_stx83135_)
                          (gx#syntax-local-value__0 _stx83135_))
                        _g86148_))
                ((##fx= _g86147_ 2)
                 (apply (lambda (_stx83139_ _E83140_)
                          (gx#syntax-local-value__% _stx83139_ _E83140_))
                        _g86148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g86148_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx83124_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx83124_)))))
