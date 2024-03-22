(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1711108655)
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
      (lambda _$args86046_
        (apply make-instance gx#expander-context::t _$args86046_)))
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
      (lambda _$args86043_
        (apply make-instance gx#root-context::t _$args86043_)))
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
      (lambda _$args86040_
        (apply make-instance gx#phi-context::t _$args86040_)))
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
      (lambda _$args86037_
        (apply make-instance gx#top-context::t _$args86037_)))
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
      (lambda _$args86034_
        (apply make-instance gx#module-context::t _$args86034_)))
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
      (lambda _$args86031_
        (apply make-instance gx#prelude-context::t _$args86031_)))
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
      (lambda _$args86028_
        (apply make-instance gx#local-context::t _$args86028_)))
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
      (lambda (_self86012_ _id86013_ _super86014_)
        (if (##fx< '3 (##structure-length _self86012_))
            (begin
              (##unchecked-structure-set!
               _self86012_
               _id86013_
               '1
               (##structure-type _self86012_)
               '#f)
              (##unchecked-structure-set!
               _self86012_
               (make-hash-table-eq)
               '2
               (##structure-type _self86012_)
               '#f)
              (##unchecked-structure-set!
               _self86012_
               _super86014_
               '3
               (##structure-type _self86012_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self86012_
                   '3
                   (##vector-length _self86012_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self86019_ _id86020_)
        (let ((_super86022_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self86019_ _id86020_ _super86022_))))
    (define gx#phi-context:::init!
      (lambda _g86089_
        (let ((_g86088_ (##length _g86089_)))
          (cond ((##fx= _g86088_ 2)
                 (apply (lambda (_self86019_ _id86020_)
                          (gx#phi-context:::init!__0 _self86019_ _id86020_))
                        _g86089_))
                ((##fx= _g86088_ 3)
                 (apply (lambda (_self86024_ _id86025_ _super86026_)
                          (gx#phi-context:::init!__%
                           _self86024_
                           _id86025_
                           _super86026_))
                        _g86089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g86089_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self85876_ _super85877_)
        (if (##fx< '3 (##structure-length _self85876_))
            (begin
              (##unchecked-structure-set!
               _self85876_
               (gensym 'L)
               '1
               (##structure-type _self85876_)
               '#f)
              (##unchecked-structure-set!
               _self85876_
               (make-hash-table-eq)
               '2
               (##structure-type _self85876_)
               '#f)
              (##unchecked-structure-set!
               _self85876_
               _super85877_
               '3
               (##structure-type _self85876_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85876_
                   '3
                   (##vector-length _self85876_)))))
    (define gx#local-context:::init!__0
      (lambda (_self85882_)
        (let ((_super85884_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self85882_ _super85884_))))
    (define gx#local-context:::init!
      (lambda _g86091_
        (let ((_g86090_ (##length _g86091_)))
          (cond ((##fx= _g86090_ 1)
                 (apply (lambda (_self85882_)
                          (gx#local-context:::init!__0 _self85882_))
                        _g86091_))
                ((##fx= _g86090_ 2)
                 (apply (lambda (_self85886_ _super85887_)
                          (gx#local-context:::init!__%
                           _self85886_
                           _super85887_))
                        _g86091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g86091_))))))
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
      (lambda _$args85750_ (apply make-instance gx#binding::t _$args85750_)))
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
      (lambda _$args85747_
        (apply make-instance gx#runtime-binding::t _$args85747_)))
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
      (lambda _$args85744_
        (apply make-instance gx#local-binding::t _$args85744_)))
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
      (lambda _$args85741_
        (apply make-instance gx#top-binding::t _$args85741_)))
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
      (lambda _$args85738_
        (apply make-instance gx#module-binding::t _$args85738_)))
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
      (lambda _$args85735_
        (apply make-instance gx#extern-binding::t _$args85735_)))
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
      (lambda _$args85732_
        (apply make-instance gx#syntax-binding::t _$args85732_)))
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
      (lambda _$args85729_
        (apply make-instance gx#import-binding::t _$args85729_)))
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
      (lambda _$args85726_
        (apply make-instance gx#alias-binding::t _$args85726_)))
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
      (lambda _$args85723_ (apply make-instance gx#expander::t _$args85723_)))
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
      (lambda _$args85720_
        (apply make-instance gx#core-expander::t _$args85720_)))
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
      (lambda _$args85717_
        (apply make-instance gx#expression-form::t _$args85717_)))
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
      (lambda _$args85714_
        (apply make-instance gx#special-form::t _$args85714_)))
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
      (lambda _$args85711_
        (apply make-instance gx#definition-form::t _$args85711_)))
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
      (lambda _$args85708_
        (apply make-instance gx#top-special-form::t _$args85708_)))
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
      (lambda _$args85705_
        (apply make-instance gx#module-special-form::t _$args85705_)))
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
      (lambda _$args85702_
        (apply make-instance gx#feature-expander::t _$args85702_)))
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
      (lambda _$args85699_
        (apply make-instance gx#private-feature-expander::t _$args85699_)))
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
      (lambda _$args85696_
        (apply make-instance gx#reserved-expander::t _$args85696_)))
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
      (lambda _$args85693_
        (apply make-instance gx#macro-expander::t _$args85693_)))
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
      (lambda _$args85690_
        (apply make-instance gx#rename-macro-expander::t _$args85690_)))
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
      (lambda _$args85687_
        (apply make-instance gx#user-expander::t _$args85687_)))
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
      (lambda _$args85684_
        (apply make-instance gx#expander-mark::t _$args85684_)))
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
      (lambda (_ctx85669_ _message85670_ _stx85671_ . _details85672_)
        (let ((_ctx85682_
               (let ((_$e85674_ _ctx85669_))
                 (if _$e85674_
                     _$e85674_
                     (let ((_$e85677_ (gx#core-context-top__0)))
                       (if _$e85677_
                           ((lambda (_ctx85680_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx85680_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e85677_)
                           '#f))))))
          (raise (make-syntax-error
                  _message85670_
                  (cons _stx85671_ _details85672_)
                  _ctx85682_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx85656_ _expression?85657_)
        (gx#eval-syntax* (gx#core-expand__% _stx85656_ _expression?85657_))))
    (define gx#eval-syntax__0
      (lambda (_stx85662_)
        (let ((_expression?85664_ '#f))
          (gx#eval-syntax__% _stx85662_ _expression?85664_))))
    (define gx#eval-syntax
      (lambda _g86093_
        (let ((_g86092_ (##length _g86093_)))
          (cond ((##fx= _g86092_ 1)
                 (apply (lambda (_stx85662_) (gx#eval-syntax__0 _stx85662_))
                        _g86093_))
                ((##fx= _g86092_ 2)
                 (apply (lambda (_stx85666_ _expression?85667_)
                          (gx#eval-syntax__% _stx85666_ _expression?85667_))
                        _g86093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g86093_))))))
    (define gx#eval-syntax*
      (lambda (_stx85653_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx85653_))))
    (define gx#core-expand__%
      (lambda (_stx85640_ _expression?85641_)
        (if _expression?85641_
            (gx#core-expand-expression _stx85640_)
            (gx#core-expand-top _stx85640_))))
    (define gx#core-expand__0
      (lambda (_stx85646_)
        (let ((_expression?85648_ '#f))
          (gx#core-expand__% _stx85646_ _expression?85648_))))
    (define gx#core-expand
      (lambda _g86095_
        (let ((_g86094_ (##length _g86095_)))
          (cond ((##fx= _g86094_ 1)
                 (apply (lambda (_stx85646_) (gx#core-expand__0 _stx85646_))
                        _g86095_))
                ((##fx= _g86094_ 2)
                 (apply (lambda (_stx85650_ _expression?85651_)
                          (gx#core-expand__% _stx85650_ _expression?85651_))
                        _g86095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g86095_))))))
    (define gx#core-expand-top
      (lambda (_stx85607_)
        (let* ((_stx85609_ (gx#core-expand*__0 _stx85607_))
               (_e8561085617_ _stx85609_)
               (_E8561285621_
                (lambda () (gx#core-expand-expression _stx85609_)))
               (_E8561185635_
                (lambda ()
                  (if (gx#stx-pair? _e8561085617_)
                      (let ((_e8561385625_ (gx#syntax-e _e8561085617_)))
                        (let ((_hd8561485628_ (##car _e8561385625_))
                              (_tl8561585630_ (##cdr _e8561385625_)))
                          (let ((_form85633_ _hd8561485628_))
                            (if (gx#core-bound-identifier?__0 _form85633_)
                                _stx85609_
                                (_E8561285621_)))))
                      (_E8561285621_)))))
          (_E8561185635_))))
    (define gx#core-expand-expression
      (lambda (_stx85554_)
        (letrec ((_sealed-expression?85556_
                  (lambda (_hd85577_)
                    (if (gx#sealed-syntax? _hd85577_)
                        (let* ((_e8557885585_ _hd85577_)
                               (_E8558085589_ (lambda () '#f))
                               (_E8557985603_
                                (lambda ()
                                  (if (gx#stx-pair? _e8557885585_)
                                      (let ((_e8558185593_
                                             (gx#syntax-e _e8557885585_)))
                                        (let ((_hd8558285596_
                                               (##car _e8558185593_))
                                              (_tl8558385598_
                                               (##cdr _e8558185593_)))
                                          (let ((_form85601_ _hd8558285596_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form85601_
                                                 gx#expression-form-binding?)
                                                (_E8558085589_)))))
                                      (_E8558085589_)))))
                          (_E8557985603_))
                        '#f)))
                 (_illegal-expression85557_
                  (lambda (_hd85575_ . _g86096_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx85554_
                     _hd85575_)))
                 (_expand-e85558_
                  (lambda (_form85570_ _hd85571_)
                    (let ((_bind85573_
                           (if (##structure-instance-of?
                                _form85570_
                                'gx#binding::t)
                               _form85570_
                               (gx#resolve-identifier__0 _form85570_))))
                      (if (gx#core-expander-binding? _bind85573_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind85573_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd85571_
                            (gx#stx-source _stx85554_)))
                          (if (##structure-direct-instance-of?
                               _bind85573_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind85573_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd85571_
                                 (gx#stx-source _stx85554_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx85554_
                               _form85570_)))))))
          (let ((_hd85560_ (gx#core-expand-head _stx85554_)))
            (if (_sealed-expression?85556_ _hd85560_)
                _hd85560_
                (if (gx#stx-pair? _hd85560_)
                    (let* ((_form85562_ (gx#stx-car _hd85560_))
                           (_bind85564_
                            (if (gx#identifier? _form85562_)
                                (gx#resolve-identifier__0 _form85562_)
                                '#f)))
                      (if (or (not _bind85564_)
                              (not (gx#core-expander-binding? _bind85564_)))
                          (_expand-e85558_ '%%app (cons '%%app _hd85560_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind85564_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd85560_
                               _illegal-expression85557_)
                              (if (gx#expression-form-binding? _bind85564_)
                                  (_expand-e85558_ _bind85564_ _hd85560_)
                                  (if (gx#direct-special-form-binding?
                                       _bind85564_)
                                      (gx#core-expand-expression
                                       (_expand-e85558_ _bind85564_ _hd85560_))
                                      (_illegal-expression85557_
                                       _hd85560_))))))
                    (if (gx#core-bound-identifier?__0 _hd85560_)
                        (_illegal-expression85557_ _hd85560_)
                        (if (gx#identifier? _hd85560_)
                            (_expand-e85558_
                             '%%ref
                             (cons '%%ref (cons _hd85560_ '())))
                            (if (gx#stx-datum? _hd85560_)
                                (_expand-e85558_
                                 '%#quote
                                 (cons '%#quote (cons _hd85560_ '())))
                                (_illegal-expression85557_ _hd85560_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx85549_)
        (call-with-parameters
         (lambda ()
           (let ((_stx85552_ (gx#core-expand-expression _stx85549_)))
             (values _stx85552_ (gx#eval-syntax* _stx85552_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx85530_ _stop?85531_)
        (let _lp85533_ ((_stx85535_ _stx85530_))
          (if (_stop?85531_ _stx85535_)
              _stx85535_
              (let ((_rstx85537_ (gx#core-expand1 _stx85535_)))
                (if (eq? _stx85535_ _rstx85537_)
                    _stx85535_
                    (_lp85533_ _rstx85537_)))))))
    (define gx#core-expand*__0
      (lambda (_stx85542_)
        (let ((_stop?85544_ false))
          (gx#core-expand*__% _stx85542_ _stop?85544_))))
    (define gx#core-expand*
      (lambda _g86098_
        (let ((_g86097_ (##length _g86098_)))
          (cond ((##fx= _g86097_ 1)
                 (apply (lambda (_stx85542_) (gx#core-expand*__0 _stx85542_))
                        _g86098_))
                ((##fx= _g86097_ 2)
                 (apply (lambda (_stx85546_ _stop?85547_)
                          (gx#core-expand*__% _stx85546_ _stop?85547_))
                        _g86098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g86098_))))))
    (define gx#core-expand1
      (lambda (_stx85486_)
        (letrec ((_step85488_
                  (lambda (_hd85525_)
                    (let ((_bind85527_ (gx#resolve-identifier__0 _hd85525_)))
                      (if (##structure-instance-of?
                           _bind85527_
                           'gx#runtime-binding::t)
                          _stx85486_
                          (if (##structure-direct-instance-of?
                               _bind85527_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind85527_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx85486_)
                              (if (not _bind85527_)
                                  _stx85486_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx85486_))))))))
          (let* ((_e8548985497_ _stx85486_)
                 (_E8549585501_ (lambda () _stx85486_))
                 (_E8549185507_
                  (lambda ()
                    (let ((_hd85505_ _e8548985497_))
                      (if (gx#identifier? _hd85505_)
                          (_step85488_ _hd85505_)
                          (_E8549585501_)))))
                 (_E8549085521_
                  (lambda ()
                    (if (gx#stx-pair? _e8548985497_)
                        (let ((_e8549285511_ (gx#syntax-e _e8548985497_)))
                          (let ((_hd8549385514_ (##car _e8549285511_))
                                (_tl8549485516_ (##cdr _e8549285511_)))
                            (let ((_hd85519_ _hd8549385514_))
                              (if (gx#identifier? _hd85519_)
                                  (_step85488_ _hd85519_)
                                  (_E8549185507_)))))
                        (_E8549185507_)))))
            (_E8549085521_)))))
    (define gx#core-expand-head
      (lambda (_stx85452_)
        (letrec ((_stop?85454_
                  (lambda (_stx85456_)
                    (let* ((_e8545785464_ _stx85456_)
                           (_E8545985468_ (lambda () '#f))
                           (_E8545885482_
                            (lambda ()
                              (if (gx#stx-pair? _e8545785464_)
                                  (let ((_e8546085472_
                                         (gx#syntax-e _e8545785464_)))
                                    (let ((_hd8546185475_
                                           (##car _e8546085472_))
                                          (_tl8546285477_
                                           (##cdr _e8546085472_)))
                                      (let ((_hd85480_ _hd8546185475_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd85480_)
                                            (_E8545985468_)))))
                                  (_E8545985468_)))))
                      (_E8545885482_)))))
          (gx#core-expand*__% _stx85452_ _stop?85454_))))
    (define gx#core-expand-block__%
      (lambda (_stx85258_
               _expand-special85259_
               _begin-form85260_
               _expand-e85261_)
        (letrec ((_expand-splice85263_
                  (lambda (_hd85426_ _body85427_ _rest85428_ _r85429_)
                    (if (gx#stx-list? _body85427_)
                        (_K85267_
                         (gx#stx-foldr cons _rest85428_ _body85427_)
                         _r85429_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx85258_
                         _hd85426_))))
                 (_expand-cond-expand85264_
                  (lambda (_hd85422_ _rest85423_ _r85424_)
                    (_K85267_
                     (cons (gx#core-expand-cond-expand% _hd85422_) _rest85423_)
                     _r85424_)))
                 (_expand-include85265_
                  (lambda (_hd85371_ _rest85372_ _r85373_)
                    (let* ((_e8537485384_ _hd85371_)
                           (_E8537685388_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8537485384_)))
                           (_E8537585418_
                            (lambda ()
                              (if (gx#stx-pair? _e8537485384_)
                                  (let ((_e8537785392_
                                         (gx#syntax-e _e8537485384_)))
                                    (let ((_hd8537885395_
                                           (##car _e8537785392_))
                                          (_tl8537985397_
                                           (##cdr _e8537785392_)))
                                      (if (gx#stx-pair? _tl8537985397_)
                                          (let ((_e8538085400_
                                                 (gx#syntax-e _tl8537985397_)))
                                            (let ((_hd8538185403_
                                                   (##car _e8538085400_))
                                                  (_tl8538285405_
                                                   (##cdr _e8538085400_)))
                                              (let ((_path85408_
                                                     _hd8538185403_))
                                                (if (gx#stx-null?
                                                     _tl8538285405_)
                                                    (if (gx#stx-string?
                                                         _path85408_)
                                                        (let* ((_rpath85410_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path85408_
                         (gx#stx-source _hd85371_)))
                       (_block85412_
                        (gx#core-expand-include%__% _hd85371_ _rpath85410_))
                       (_rbody85415_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block85412_
                            _expand-special85259_
                            '#f
                            _expand-e85261_))
                         gx#current-expander-path
                         (cons _rpath85410_ (gx#current-expander-path)))))
                  (_K85267_ _rest85372_ (foldr1 cons _r85373_ _rbody85415_)))
                (_E8537685388_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8537685388_)))))
                                          (_E8537685388_))))
                                  (_E8537685388_)))))
                      (_E8537585418_))))
                 (_expand-expression85266_
                  (lambda (_hd85367_ _rest85368_ _r85369_)
                    (_K85267_
                     _rest85368_
                     (cons (_expand-e85261_ _hd85367_) _r85369_))))
                 (_K85267_
                  (lambda (_rest85297_ _r85298_)
                    (let* ((_e8529985306_ _rest85297_)
                           (_E8530185310_
                            (lambda ()
                              (if _begin-form85260_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form85260_
                                    (reverse _r85298_))
                                   (gx#stx-source _stx85258_))
                                  _r85298_)))
                           (_E8530085363_
                            (lambda ()
                              (if (gx#stx-pair? _e8529985306_)
                                  (let ((_e8530285314_
                                         (gx#syntax-e _e8529985306_)))
                                    (let ((_hd8530385317_
                                           (##car _e8530285314_))
                                          (_tl8530485319_
                                           (##cdr _e8530285314_)))
                                      (let* ((_hd85322_ _hd8530385317_)
                                             (_rest85324_ _tl8530485319_))
                                        (if '#t
                                            (let* ((_hd85326_
                                                    (gx#core-expand-head
                                                     _hd85322_))
                                                   (_e8532785334_ _hd85326_)
                                                   (_E8532985338_
                                                    (lambda ()
                                                      (_expand-expression85266_
                                                       _hd85326_
                                                       _rest85324_
                                                       _r85298_)))
                                                   (_E8532885359_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8532785334_)
                                                          (let ((_e8533085342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8532785334_)))
                    (let ((_hd8533185345_ (##car _e8533085342_))
                          (_tl8533285347_ (##cdr _e8533085342_)))
                      (let* ((_form85350_ _hd8533185345_)
                             (_body85352_ _tl8533285347_))
                        (if '#t
                            (let ((_bind85354_
                                   (if (gx#identifier? _form85350_)
                                       (gx#resolve-identifier__0 _form85350_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind85354_)
                                  (let ((_$e85356_
                                         (##unchecked-structure-ref
                                          _bind85354_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e85356_)
                                        (_expand-splice85263_
                                         _hd85326_
                                         _body85352_
                                         _rest85324_
                                         _r85298_)
                                        (if (eq? '%#cond-expand _$e85356_)
                                            (_expand-cond-expand85264_
                                             _hd85326_
                                             _rest85324_
                                             _r85298_)
                                            (if (eq? '%#include _$e85356_)
                                                (_expand-include85265_
                                                 _hd85326_
                                                 _rest85324_
                                                 _r85298_)
                                                (_expand-special85259_
                                                 _hd85326_
                                                 _K85267_
                                                 _rest85324_
                                                 _r85298_)))))
                                  (_expand-expression85266_
                                   _hd85326_
                                   _rest85324_
                                   _r85298_)))
                            (_E8532985338_)))))
                  (_E8532985338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8532885359_))
                                            (_E8530185310_)))))
                                  (_E8530185310_)))))
                      (_E8530085363_)))))
          (let* ((_e8526885275_ _stx85258_)
                 (_E8527085279_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8526885275_)))
                 (_E8526985293_
                  (lambda ()
                    (if (gx#stx-pair? _e8526885275_)
                        (let ((_e8527185283_ (gx#syntax-e _e8526885275_)))
                          (let ((_hd8527285286_ (##car _e8527185283_))
                                (_tl8527385288_ (##cdr _e8527185283_)))
                            (let ((_body85291_ _tl8527385288_))
                              (if (gx#stx-list? _body85291_)
                                  (_K85267_ _body85291_ '())
                                  (_E8527085279_)))))
                        (_E8527085279_)))))
            (_E8526985293_)))))
    (define gx#core-expand-block__0
      (lambda (_stx85434_ _expand-special85435_)
        (let* ((_begin-form85437_ '%#begin)
               (_expand-e85439_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85434_
           _expand-special85435_
           _begin-form85437_
           _expand-e85439_))))
    (define gx#core-expand-block__1
      (lambda (_stx85441_ _expand-special85442_ _begin-form85443_)
        (let ((_expand-e85445_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85441_
           _expand-special85442_
           _begin-form85443_
           _expand-e85445_))))
    (define gx#core-expand-block
      (lambda _g86100_
        (let ((_g86099_ (##length _g86100_)))
          (cond ((##fx= _g86099_ 2)
                 (apply (lambda (_stx85434_ _expand-special85435_)
                          (gx#core-expand-block__0
                           _stx85434_
                           _expand-special85435_))
                        _g86100_))
                ((##fx= _g86099_ 3)
                 (apply (lambda (_stx85441_
                                 _expand-special85442_
                                 _begin-form85443_)
                          (gx#core-expand-block__1
                           _stx85441_
                           _expand-special85442_
                           _begin-form85443_))
                        _g86100_))
                ((##fx= _g86099_ 4)
                 (apply (lambda (_stx85447_
                                 _expand-special85448_
                                 _begin-form85449_
                                 _expand-e85450_)
                          (gx#core-expand-block__%
                           _stx85447_
                           _expand-special85448_
                           _begin-form85449_
                           _expand-e85450_))
                        _g86100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g86100_))))))
    (define gx#core-expand-block*
      (lambda (_stx85206_ _expand-special85207_)
        (let* ((_g8520885219_
                (gx#core-expand-block__1 _stx85206_ _expand-special85207_ '#f))
               (_E8521285223_
                (lambda () (error '"No clause matching" _g8520885219_))))
          (let ((_K8521785254_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx85206_)))
                (_K8521485240_ (lambda (_expr85238_) _expr85238_))
                (_K8521385229_
                 (lambda (_body85227_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body85227_))
                    (gx#stx-source _stx85206_)))))
            (let ((_try-match8521085250_
                   (lambda ()
                     (if (##pair? _g8520885219_)
                         (let ((_tl8521685245_ (##cdr _g8520885219_))
                               (_hd8521585243_ (##car _g8520885219_)))
                           (if (##null? _tl8521685245_)
                               (let ((_expr85248_ _hd8521585243_))
                                 (_K8521485240_ _expr85248_))
                               (let ((_body85232_ _g8520885219_))
                                 (_K8521385229_ _body85232_))))
                         (let ((_body85232_ _g8520885219_))
                           (_K8521385229_ _body85232_))))))
              (if (##null? _g8520885219_)
                  (_K8521785254_)
                  (_try-match8521085250_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx85034_)
        (letrec ((_satisfied?85036_
                  (lambda (_condition85134_)
                    (let* ((_e8513585150_ _condition85134_)
                           (_E8514585154_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8513585150_)))
                           (_E8513885173_
                            (lambda ()
                              (if (gx#stx-pair? _e8513585150_)
                                  (let ((_e8514685158_
                                         (gx#syntax-e _e8513585150_)))
                                    (let ((_hd8514785161_
                                           (##car _e8514685158_))
                                          (_tl8514885163_
                                           (##cdr _e8514685158_)))
                                      (let* ((_combinator85166_ _hd8514785161_)
                                             (_body85168_ _tl8514885163_))
                                        (if (gx#stx-list? _body85168_)
                                            (let ((_$e85170_
                                                   (gx#stx-e
                                                    _combinator85166_)))
                                              (if (eq? 'not _$e85170_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?85036_
                                                        _body85168_))
                                                  (if (eq? 'and _$e85170_)
                                                      (gx#stx-andmap
                                                       _satisfied?85036_
                                                       _body85168_)
                                                      (if (eq? 'or _$e85170_)
                                                          (gx#stx-ormap
                                                           _satisfied?85036_
                                                           _body85168_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e85170_)
                      (gx#stx-andmap gx#core-resolve-identifier _body85168_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx85034_
                       _combinator85166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8514585154_)))))
                                  (_E8514585154_))))
                           (_E8513785196_
                            (lambda ()
                              (if (gx#stx-pair? _e8513585150_)
                                  (let ((_e8513985177_
                                         (gx#syntax-e _e8513585150_)))
                                    (let ((_hd8514085180_
                                           (##car _e8513985177_))
                                          (_tl8514185182_
                                           (##cdr _e8513985177_)))
                                      (if (and (gx#identifier? _hd8514085180_)
                                               (gx#core-identifier=?
                                                _hd8514085180_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8514185182_)
                                              (let ((_e8514285185_
                                                     (gx#syntax-e
                                                      _tl8514185182_)))
                                                (let ((_hd8514385188_
                                                       (##car _e8514285185_))
                                                      (_tl8514485190_
                                                       (##cdr _e8514285185_)))
                                                  (let ((_expr85193_
                                                         _hd8514385188_))
                                                    (if (gx#stx-null?
                                                         _tl8514485190_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr85193_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8513885173_))
                (_E8513885173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8513885173_))
                                          (_E8513885173_))))
                                  (_E8513885173_))))
                           (_E8513685202_
                            (lambda ()
                              (let ((_id85200_ _e8513585150_))
                                (if (gx#identifier? _id85200_)
                                    (gx#core-bound-identifier?__%
                                     _id85200_
                                     gx#feature-binding?)
                                    (_E8513785196_))))))
                      (_E8513685202_))))
                 (_loop85037_
                  (lambda (_rest85067_)
                    (let* ((_e8506885076_ _rest85067_)
                           (_E8507485080_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8506885076_)))
                           (_E8507085084_
                            (lambda ()
                              (if (gx#stx-null? _e8506885076_)
                                  (if '#t '() (_E8507485080_))
                                  (_E8507485080_))))
                           (_E8506985130_
                            (lambda ()
                              (if (gx#stx-pair? _e8506885076_)
                                  (let ((_e8507185088_
                                         (gx#syntax-e _e8506885076_)))
                                    (let ((_hd8507285091_
                                           (##car _e8507185088_))
                                          (_tl8507385093_
                                           (##cdr _e8507185088_)))
                                      (let* ((_hd85096_ _hd8507285091_)
                                             (_rest85098_ _tl8507385093_))
                                        (if '#t
                                            (let* ((_e8509985106_ _hd85096_)
                                                   (_E8510185110_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8509985106_)))
                                                   (_E8510085126_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8509985106_)
                                                          (let ((_e8510285114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8509985106_)))
                    (let ((_hd8510385117_ (##car _e8510285114_))
                          (_tl8510485119_ (##cdr _e8510285114_)))
                      (let* ((_condition85122_ _hd8510385117_)
                             (_body85124_ _tl8510485119_))
                        (if '#t
                            (if (gx#stx-eq? _condition85122_ 'else)
                                (if (gx#stx-null? _rest85098_)
                                    _body85124_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx85034_
                                     _hd85096_))
                                (if (_satisfied?85036_ _condition85122_)
                                    _body85124_
                                    (_loop85037_ _rest85098_)))
                            (_E8510185110_)))))
                  (_E8510185110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8510085126_))
                                            (_E8507085084_)))))
                                  (_E8507085084_)))))
                      (_E8506985130_)))))
          (let* ((_e8503885045_ _stx85034_)
                 (_E8504085049_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8503885045_)))
                 (_E8503985063_
                  (lambda ()
                    (if (gx#stx-pair? _e8503885045_)
                        (let ((_e8504185053_ (gx#syntax-e _e8503885045_)))
                          (let ((_hd8504285056_ (##car _e8504185053_))
                                (_tl8504385058_ (##cdr _e8504185053_)))
                            (let ((_clauses85061_ _tl8504385058_))
                              (if (gx#stx-list? _clauses85061_)
                                  (gx#core-cons
                                   'begin
                                   (_loop85037_ _clauses85061_))
                                  (_E8504085049_)))))
                        (_E8504085049_)))))
            (_E8503985063_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx84977_ _rpath84978_)
        (let* ((_e8497984989_ _stx84977_)
               (_E8498184993_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8497984989_)))
               (_E8498085020_
                (lambda ()
                  (if (gx#stx-pair? _e8497984989_)
                      (let ((_e8498284997_ (gx#syntax-e _e8497984989_)))
                        (let ((_hd8498385000_ (##car _e8498284997_))
                              (_tl8498485002_ (##cdr _e8498284997_)))
                          (if (gx#stx-pair? _tl8498485002_)
                              (let ((_e8498585005_
                                     (gx#syntax-e _tl8498485002_)))
                                (let ((_hd8498685008_ (##car _e8498585005_))
                                      (_tl8498785010_ (##cdr _e8498585005_)))
                                  (let ((_path85013_ _hd8498685008_))
                                    (if (gx#stx-null? _tl8498785010_)
                                        (if (gx#stx-string? _path85013_)
                                            (let ((_rpath85018_
                                                   (let ((_$e85015_
                                                          _rpath84978_))
                                                     (if _$e85015_
                                                         _$e85015_
                                                         (gx#core-resolve-path__%
                                                          _path85013_
                                                          (gx#stx-source
                                                           _stx84977_))))))
                                              (if (member _rpath85018_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx84977_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath85018_))
                                                    (gx#stx-source
                                                     _stx84977_)))))
                                            (_E8498184993_))
                                        (_E8498184993_)))))
                              (_E8498184993_))))
                      (_E8498184993_)))))
          (_E8498085020_))))
    (define gx#core-expand-include%__0
      (lambda (_stx85027_)
        (let ((_rpath85029_ '#f))
          (gx#core-expand-include%__% _stx85027_ _rpath85029_))))
    (define gx#core-expand-include%
      (lambda _g86102_
        (let ((_g86101_ (##length _g86102_)))
          (cond ((##fx= _g86101_ 1)
                 (apply (lambda (_stx85027_)
                          (gx#core-expand-include%__0 _stx85027_))
                        _g86102_))
                ((##fx= _g86101_ 2)
                 (apply (lambda (_stx85031_ _rpath85032_)
                          (gx#core-expand-include%__% _stx85031_ _rpath85032_))
                        _g86102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g86102_))))))
    (define gx#core-apply-expander__%
      (lambda (_K84946_ _stx84947_ _method84948_)
        (if (procedure? _K84946_)
            (let ((_$e84950_ (gx#stx-source _stx84947_)))
              (if _$e84950_
                  ((lambda (_g8495284954_)
                     (gx#stx-wrap-source (_K84946_ _stx84947_) _g8495284954_))
                   _$e84950_)
                  (_K84946_ _stx84947_)))
            (let ((_$e84957_ (bound-method-ref _K84946_ _method84948_)))
              (if _$e84957_
                  ((lambda (_g8495984961_)
                     (gx#core-apply-expander__%
                      _g8495984961_
                      _stx84947_
                      _method84948_))
                   _$e84957_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx84947_
                   _method84948_))))))
    (define gx#core-apply-expander__0
      (lambda (_K84967_ _stx84968_)
        (let ((_method84970_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K84967_ _stx84968_ _method84970_))))
    (define gx#core-apply-expander
      (lambda _g86104_
        (let ((_g86103_ (##length _g86104_)))
          (cond ((##fx= _g86103_ 2)
                 (apply (lambda (_K84967_ _stx84968_)
                          (gx#core-apply-expander__0 _K84967_ _stx84968_))
                        _g86104_))
                ((##fx= _g86103_ 3)
                 (apply (lambda (_K84972_ _stx84973_ _method84974_)
                          (gx#core-apply-expander__%
                           _K84972_
                           _stx84973_
                           _method84974_))
                        _g86104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g86104_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self84942_ _stx84943_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx84943_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self84795_ _stx84796_)
        (let* ((_self8479784803_ _self84795_)
               (_E8479984807_
                (lambda () (error '"No clause matching" _self8479784803_)))
               (_K8480084812_
                (lambda (_K84810_)
                  (gx#core-apply-expander__0 _K84810_ _stx84796_))))
          (if (##structure-instance-of? _self8479784803_ 'gx#core-macro::t)
              (let* ((_e8480184815_
                      (##unchecked-structure-ref
                       _self8479784803_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84818_ _e8480184815_))
                (_K8480084812_ _K84818_))
              (_E8479984807_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self84648_ _stx84649_)
        (if (gx#sealed-syntax? _stx84649_)
            _stx84649_
            (let* ((_self8465084656_ _self84648_)
                   (_E8465284660_
                    (lambda () (error '"No clause matching" _self8465084656_)))
                   (_K8465384665_
                    (lambda (_K84663_)
                      (gx#core-apply-expander__0 _K84663_ _stx84649_))))
              (if (##structure-instance-of?
                   _self8465084656_
                   'gx#core-expander::t)
                  (let* ((_e8465484668_
                          (##unchecked-structure-ref
                           _self8465084656_
                           '1
                           gx#expander::t
                           '#f))
                         (_K84671_ _e8465484668_))
                    (_K8465384665_ _K84671_))
                  (_E8465284660_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self84510_ _stx84511_ _top?84512_)
        (if (_top?84512_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self84510_ _stx84511_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx84511_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self84517_ _stx84518_)
        (let ((_top?84520_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self84517_
           _stx84518_
           _top?84520_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g86106_
        (let ((_g86105_ (##length _g86106_)))
          (cond ((##fx= _g86105_ 2)
                 (apply (lambda (_self84517_ _stx84518_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self84517_
                           _stx84518_))
                        _g86106_))
                ((##fx= _g86105_ 3)
                 (apply (lambda (_self84522_ _stx84523_ _top?84524_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self84522_
                           _stx84523_
                           _top?84524_))
                        _g86106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g86106_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self84384_ _stx84385_)
        (gx#top-special-form::apply-macro-expander__%
         _self84384_
         _stx84385_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self84209_ _stx84210_)
        (let* ((_self8421184217_ _self84209_)
               (_E8421384221_
                (lambda () (error '"No clause matching" _self8421184217_)))
               (_K8421484254_
                (lambda (_id84224_)
                  (let* ((_e8422584232_ _stx84210_)
                         (_E8422784236_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8422584232_)))
                         (_E8422684250_
                          (lambda ()
                            (if (gx#stx-pair? _e8422584232_)
                                (let ((_e8422884240_
                                       (gx#syntax-e _e8422584232_)))
                                  (let ((_hd8422984243_ (##car _e8422884240_))
                                        (_tl8423084245_ (##cdr _e8422884240_)))
                                    (let ((_body84248_ _tl8423084245_))
                                      (if '#t
                                          (gx#core-cons _id84224_ _body84248_)
                                          (_E8422784236_)))))
                                (_E8422784236_)))))
                    (_E8422684250_)))))
          (if (##structure-instance-of?
               _self8421184217_
               'gx#rename-macro-expander::t)
              (let* ((_e8421584257_
                      (##unchecked-structure-ref
                       _self8421184217_
                       '1
                       gx#expander::t
                       '#f))
                     (_id84260_ _e8421584257_))
                (_K8421484254_ _id84260_))
              (_E8421384221_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self84035_ _stx84036_ _method84037_)
        (let* ((_self8403884046_ _self84035_)
               (_E8404084050_
                (lambda () (error '"No clause matching" _self8403884046_)))
               (_K8404184057_
                (lambda (_phi84053_ _ctx84054_ _K84055_)
                  (gx#core-apply-user-macro
                   _K84055_
                   _stx84036_
                   _ctx84054_
                   _phi84053_
                   _method84037_))))
          (if (##structure-instance-of? _self8403884046_ 'gx#macro-expander::t)
              (let* ((_e8404284060_
                      (##unchecked-structure-ref
                       _self8403884046_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84063_ _e8404284060_)
                     (_e8404384065_
                      (##unchecked-structure-ref
                       _self8403884046_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx84068_ _e8404384065_)
                     (_e8404484070_
                      (##unchecked-structure-ref
                       _self8403884046_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi84073_ _e8404484070_))
                (_K8404184057_ _phi84073_ _ctx84068_ _K84063_))
              (_E8404084050_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self84078_ _stx84079_)
        (let ((_method84081_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self84078_
           _stx84079_
           _method84081_))))
    (define gx#core-apply-user-expander
      (lambda _g86108_
        (let ((_g86107_ (##length _g86108_)))
          (cond ((##fx= _g86107_ 2)
                 (apply (lambda (_self84078_ _stx84079_)
                          (gx#core-apply-user-expander__0
                           _self84078_
                           _stx84079_))
                        _g86108_))
                ((##fx= _g86107_ 3)
                 (apply (lambda (_self84083_ _stx84084_ _method84085_)
                          (gx#core-apply-user-expander__%
                           _self84083_
                           _stx84084_
                           _method84085_))
                        _g86108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g86108_))))))
    (define gx#core-apply-user-macro
      (lambda (_K84025_ _stx84026_ _ctx84027_ _phi84028_ _method84029_)
        (let ((_mark84031_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx84027_
                _phi84028_
                _stx84026_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K84025_
               (gx#stx-apply-mark _stx84026_ _mark84031_)
               _method84029_)
              _mark84031_))
           gx#current-expander-marks
           (cons _mark84031_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx83876_ _phi83877_ _ctx83878_)
        (let _lp83880_ ((_bind83882_
                         (gx#core-resolve-identifier__%
                          _stx83876_
                          _phi83877_
                          _ctx83878_)))
          (if (##structure-direct-instance-of?
               _bind83882_
               'gx#import-binding::t)
              (_lp83880_
               (##unchecked-structure-ref
                _bind83882_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind83882_
                   'gx#alias-binding::t)
                  (_lp83880_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind83882_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi83877_
                    _ctx83878_))
                  _bind83882_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx83887_)
        (let* ((_phi83889_ (gx#current-expander-phi))
               (_ctx83891_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83887_ _phi83889_ _ctx83891_))))
    (define gx#resolve-identifier__1
      (lambda (_stx83893_ _phi83894_)
        (let ((_ctx83896_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83893_ _phi83894_ _ctx83896_))))
    (define gx#resolve-identifier
      (lambda _g86110_
        (let ((_g86109_ (##length _g86110_)))
          (cond ((##fx= _g86109_ 1)
                 (apply (lambda (_stx83887_)
                          (gx#resolve-identifier__0 _stx83887_))
                        _g86110_))
                ((##fx= _g86109_ 2)
                 (apply (lambda (_stx83893_ _phi83894_)
                          (gx#resolve-identifier__1 _stx83893_ _phi83894_))
                        _g86110_))
                ((##fx= _g86109_ 3)
                 (apply (lambda (_stx83898_ _phi83899_ _ctx83900_)
                          (gx#resolve-identifier__%
                           _stx83898_
                           _phi83899_
                           _ctx83900_))
                        _g86110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g86110_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx83834_ _val83835_ _rebind?83836_ _phi83837_ _ctx83838_)
        (let ((_rebind?83840_
               (if (not _rebind?83836_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?83836_) _rebind?83836_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx83834_)
           _val83835_
           _rebind?83840_
           _phi83837_
           _ctx83838_))))
    (define gx#bind-identifier!__0
      (lambda (_stx83845_ _val83846_)
        (let* ((_rebind?83848_ '#f)
               (_phi83850_ (gx#current-expander-phi))
               (_ctx83852_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83845_
           _val83846_
           _rebind?83848_
           _phi83850_
           _ctx83852_))))
    (define gx#bind-identifier!__1
      (lambda (_stx83854_ _val83855_ _rebind?83856_)
        (let* ((_phi83858_ (gx#current-expander-phi))
               (_ctx83860_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83854_
           _val83855_
           _rebind?83856_
           _phi83858_
           _ctx83860_))))
    (define gx#bind-identifier!__2
      (lambda (_stx83862_ _val83863_ _rebind?83864_ _phi83865_)
        (let ((_ctx83867_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83862_
           _val83863_
           _rebind?83864_
           _phi83865_
           _ctx83867_))))
    (define gx#bind-identifier!
      (lambda _g86112_
        (let ((_g86111_ (##length _g86112_)))
          (cond ((##fx= _g86111_ 2)
                 (apply (lambda (_stx83845_ _val83846_)
                          (gx#bind-identifier!__0 _stx83845_ _val83846_))
                        _g86112_))
                ((##fx= _g86111_ 3)
                 (apply (lambda (_stx83854_ _val83855_ _rebind?83856_)
                          (gx#bind-identifier!__1
                           _stx83854_
                           _val83855_
                           _rebind?83856_))
                        _g86112_))
                ((##fx= _g86111_ 4)
                 (apply (lambda (_stx83862_
                                 _val83863_
                                 _rebind?83864_
                                 _phi83865_)
                          (gx#bind-identifier!__2
                           _stx83862_
                           _val83863_
                           _rebind?83864_
                           _phi83865_))
                        _g86112_))
                ((##fx= _g86111_ 5)
                 (apply (lambda (_stx83869_
                                 _val83870_
                                 _rebind?83871_
                                 _phi83872_
                                 _ctx83873_)
                          (gx#bind-identifier!__%
                           _stx83869_
                           _val83870_
                           _rebind?83871_
                           _phi83872_
                           _ctx83873_))
                        _g86112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g86112_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx83806_ _phi83807_ _ctx83808_)
        (let _lp83810_ ((_e83812_ _stx83806_)
                        (_marks83813_ (gx#current-expander-marks)))
          (if (symbol? _e83812_)
              (gx#core-resolve-binding
               _e83812_
               _phi83807_
               _phi83807_
               _ctx83808_
               (reverse _marks83813_))
              (if (gx#identifier-quote? _e83812_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e83812_ '1 gx#AST::t '#f)
                   _phi83807_
                   '0
                   (##unchecked-structure-ref
                    _e83812_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e83812_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e83812_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e83812_ '1 gx#AST::t '#f)
                       _phi83807_
                       _phi83807_
                       _ctx83808_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e83812_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks83813_))
                      (if (##structure-direct-instance-of?
                           _e83812_
                           'gx#syntax-wrap::t)
                          (_lp83810_
                           (##unchecked-structure-ref
                            _e83812_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e83812_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks83813_))
                          (if (##structure-instance-of?
                               _e83812_
                               'gerbil#AST::t)
                              (_lp83810_
                               (##unchecked-structure-ref
                                _e83812_
                                '1
                                gx#AST::t
                                '#f)
                               _marks83813_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx83806_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx83818_)
        (let* ((_phi83820_ (gx#current-expander-phi))
               (_ctx83822_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83818_ _phi83820_ _ctx83822_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx83824_ _phi83825_)
        (let ((_ctx83827_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83824_ _phi83825_ _ctx83827_))))
    (define gx#core-resolve-identifier
      (lambda _g86114_
        (let ((_g86113_ (##length _g86114_)))
          (cond ((##fx= _g86113_ 1)
                 (apply (lambda (_stx83818_)
                          (gx#core-resolve-identifier__0 _stx83818_))
                        _g86114_))
                ((##fx= _g86113_ 2)
                 (apply (lambda (_stx83824_ _phi83825_)
                          (gx#core-resolve-identifier__1
                           _stx83824_
                           _phi83825_))
                        _g86114_))
                ((##fx= _g86113_ 3)
                 (apply (lambda (_stx83829_ _phi83830_ _ctx83831_)
                          (gx#core-resolve-identifier__%
                           _stx83829_
                           _phi83830_
                           _ctx83831_))
                        _g86114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g86114_))))))
    (define gx#core-resolve-binding
      (lambda (_id83719_ _phi83720_ _src-phi83721_ _ctx83722_ _marks83723_)
        (letrec ((_resolve83725_
                  (lambda (_ctx83793_ _src-phi83794_ _key83795_)
                    (let _lp83797_ ((_ctx83799_
                                     (gx#core-context-shift
                                      _ctx83793_
                                      _phi83720_))
                                    (_dphi83800_
                                     (fx- _phi83720_ _src-phi83794_)))
                      (let ((_$e83802_
                             (gx#core-context-resolve _ctx83799_ _key83795_)))
                        (if _$e83802_
                            (values _$e83802_)
                            (if (fxzero? _dphi83800_)
                                '#f
                                (if (fxpositive? _dphi83800_)
                                    (_lp83797_
                                     (gx#core-context-shift _ctx83799_ '-1)
                                     (fx- _dphi83800_ '1))
                                    (_lp83797_
                                     (gx#core-context-shift _ctx83799_ '1)
                                     (fx+ _dphi83800_ '1))))))))))
          (let _lp83727_ ((_ctx83729_ _ctx83722_)
                          (_src-phi83730_ _src-phi83721_)
                          (_rest83731_ _marks83723_))
            (let* ((_rest8373283740_ _rest83731_)
                   (_else8373483748_
                    (lambda ()
                      (_resolve83725_ _ctx83729_ _src-phi83730_ _id83719_)))
                   (_K8373683781_
                    (lambda (_rest83751_ _hd83752_)
                      (let* ((_hd8375383759_ _hd83752_)
                             (_E8375583763_
                              (lambda ()
                                (error '"No clause matching" _hd8375383759_)))
                             (_K8375683773_
                              (lambda (_subst83766_)
                                (let ((_$e83770_
                                       (let ((_key83768_
                                              (if _subst83766_
                                                  (hash-get
                                                   _subst83766_
                                                   _id83719_)
                                                  '#f)))
                                         (if _key83768_
                                             (_resolve83725_
                                              _ctx83729_
                                              _src-phi83730_
                                              _key83768_)
                                             '#f))))
                                  (if _$e83770_
                                      _$e83770_
                                      (_lp83727_
                                       (##unchecked-structure-ref
                                        _hd83752_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd83752_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest83751_))))))
                        (if (##structure-instance-of?
                             _hd8375383759_
                             'gx#expander-mark::t)
                            (let* ((_e8375783776_
                                    (##unchecked-structure-ref
                                     _hd8375383759_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst83779_ _e8375783776_))
                              (_K8375683773_ _subst83779_))
                            (_E8375583763_))))))
              (if (##pair? _rest8373283740_)
                  (let ((_hd8373783784_ (##car _rest8373283740_))
                        (_tl8373883786_ (##cdr _rest8373283740_)))
                    (let* ((_hd83789_ _hd8373783784_)
                           (_rest83791_ _tl8373883786_))
                      (_K8373683781_ _rest83791_ _hd83789_)))
                  (_else8373483748_)))))))
    (define gx#core-bind!__%
      (lambda (_key83595_ _val83596_ _rebind?83597_ _phi83598_ _ctx83599_)
        (letrec ((_update-binding83601_
                  (lambda (_xval83672_)
                    (if (or (_rebind?83597_ _ctx83599_ _xval83672_ _val83596_)
                            (and (##structure-direct-instance-of?
                                  _xval83672_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval83672_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val83596_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val83596_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval83672_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val83596_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val83596_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval83672_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val83596_
                        (if (and (##structure-direct-instance-of?
                                  _val83596_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val83596_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval83672_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val83596_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval83672_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval83672_
                            (if (and (##structure-direct-instance-of?
                                      _val83596_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval83672_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key83595_
                                 (cons (##unchecked-structure-ref
                                        _val83596_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val83596_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval83672_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval83672_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval83672_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval83672_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key83595_
                                 _val83596_
                                 _xval83672_))))))
                 (_gensubst83602_
                  (lambda (_subst83667_ _id83668_)
                    (let ((_eid83670_
                           (gensym (if (uninterned-symbol? _id83668_)
                                       '%
                                       _id83668_))))
                      (hash-put! _subst83667_ _id83668_ _eid83670_)
                      _eid83670_)))
                 (_subst!83603_
                  (lambda (_key83605_)
                    (let* ((_key8360683614_ _key83605_)
                           (_else8360883622_ (lambda () _key83605_))
                           (_K8361083655_
                            (lambda (_mark83625_ _id83626_)
                              (let* ((_mark8362783633_ _mark83625_)
                                     (_E8362983637_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8362783633_)))
                                     (_K8363083647_
                                      (lambda (_subst83640_)
                                        (if (not _subst83640_)
                                            (let ((_subst83642_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark83625_
                                               _subst83642_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst83602_
                                               _subst83642_
                                               _id83626_))
                                            (let ((_$e83644_
                                                   (hash-get
                                                    _subst83640_
                                                    _id83626_)))
                                              (if _$e83644_
                                                  (values _$e83644_)
                                                  (_gensubst83602_
                                                   _subst83640_
                                                   _id83626_)))))))
                                (if (##structure-instance-of?
                                     _mark8362783633_
                                     'gx#expander-mark::t)
                                    (let* ((_e8363183650_
                                            (##unchecked-structure-ref
                                             _mark8362783633_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst83653_ _e8363183650_))
                                      (_K8363083647_ _subst83653_))
                                    (_E8362983637_))))))
                      (if (##pair? _key8360683614_)
                          (let ((_hd8361183658_ (##car _key8360683614_))
                                (_tl8361283660_ (##cdr _key8360683614_)))
                            (let* ((_id83663_ _hd8361183658_)
                                   (_mark83665_ _tl8361283660_))
                              (_K8361083655_ _mark83665_ _id83663_)))
                          (_else8360883622_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx83599_ _phi83598_)
           (_subst!83603_ _key83595_)
           _val83596_
           _update-binding83601_))))
    (define gx#core-bind!__0
      (lambda (_key83689_ _val83690_)
        (let* ((_rebind?83692_ false)
               (_phi83694_ (gx#current-expander-phi))
               (_ctx83696_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83689_
           _val83690_
           _rebind?83692_
           _phi83694_
           _ctx83696_))))
    (define gx#core-bind!__1
      (lambda (_key83698_ _val83699_ _rebind?83700_)
        (let* ((_phi83702_ (gx#current-expander-phi))
               (_ctx83704_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83698_
           _val83699_
           _rebind?83700_
           _phi83702_
           _ctx83704_))))
    (define gx#core-bind!__2
      (lambda (_key83706_ _val83707_ _rebind?83708_ _phi83709_)
        (let ((_ctx83711_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83706_
           _val83707_
           _rebind?83708_
           _phi83709_
           _ctx83711_))))
    (define gx#core-bind!
      (lambda _g86116_
        (let ((_g86115_ (##length _g86116_)))
          (cond ((##fx= _g86115_ 2)
                 (apply (lambda (_key83689_ _val83690_)
                          (gx#core-bind!__0 _key83689_ _val83690_))
                        _g86116_))
                ((##fx= _g86115_ 3)
                 (apply (lambda (_key83698_ _val83699_ _rebind?83700_)
                          (gx#core-bind!__1
                           _key83698_
                           _val83699_
                           _rebind?83700_))
                        _g86116_))
                ((##fx= _g86115_ 4)
                 (apply (lambda (_key83706_
                                 _val83707_
                                 _rebind?83708_
                                 _phi83709_)
                          (gx#core-bind!__2
                           _key83706_
                           _val83707_
                           _rebind?83708_
                           _phi83709_))
                        _g86116_))
                ((##fx= _g86115_ 5)
                 (apply (lambda (_key83713_
                                 _val83714_
                                 _rebind?83715_
                                 _phi83716_
                                 _ctx83717_)
                          (gx#core-bind!__%
                           _key83713_
                           _val83714_
                           _rebind?83715_
                           _phi83716_
                           _ctx83717_))
                        _g86116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g86116_))))))
    (define gx#core-identifier-key
      (lambda (_stx83529_)
        (if (symbol? _stx83529_)
            (let* ((_g8353083538_ (gx#current-expander-marks))
                   (_else8353283546_ (lambda () _stx83529_))
                   (_K8353483551_
                    (lambda (_hd83549_) (cons _stx83529_ _hd83549_))))
              (if (##pair? _g8353083538_)
                  (let* ((_hd8353583554_ (##car _g8353083538_))
                         (_hd83557_ _hd8353583554_))
                    (_K8353483551_ _hd83557_))
                  (_else8353283546_)))
            (if (gx#identifier? _stx83529_)
                (let* ((_id83559_ (gx#syntax-local-unwrap _stx83529_))
                       (_eid83561_ (gx#stx-e _id83559_))
                       (_marks83563_ (gx#stx-identifier-marks* _id83559_)))
                  (let* ((_marks8356583573_ _marks83563_)
                         (_else8356783581_ (lambda () _eid83561_))
                         (_K8356983586_
                          (lambda (_hd83584_) (cons _eid83561_ _hd83584_))))
                    (if (##pair? _marks8356583573_)
                        (let* ((_hd8357083589_ (##car _marks8356583573_))
                               (_hd83592_ _hd8357083589_))
                          (_K8356983586_ _hd83592_))
                        (_else8356783581_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx83529_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx83474_ _phi83475_)
        (letrec ((_make-phi83477_
                  (lambda (_super83527_)
                    (let ((__obj86087
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj86087
                       (gensym 'phi)
                       _super83527_)
                      __obj86087)))
                 (_make-phi/up83478_
                  (lambda (_ctx83522_ _super83523_)
                    (let ((_ctx+183525_ (_make-phi83477_ _super83523_)))
                      (##unchecked-structure-set!
                       _ctx83522_
                       _ctx+183525_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+183525_
                       _ctx83522_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+183525_)))
                 (_make-phi/down83479_
                  (lambda (_ctx83517_ _super83518_)
                    (let ((_ctx-183520_ (_make-phi83477_ _super83518_)))
                      (##unchecked-structure-set!
                       _ctx-183520_
                       _ctx83517_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx83517_
                       _ctx-183520_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-183520_)))
                 (_shift83480_
                  (lambda (_ctx83501_
                           _delta83502_
                           _make-delta-context83503_
                           _phi83504_
                           _K83505_)
                    (let ((_$e83507_
                           (##unchecked-structure-ref
                            _ctx83501_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e83507_
                          ((lambda (_super83510_)
                             (let* ((_super83512_
                                     (_K83505_ _super83510_ _delta83502_))
                                    (_ctx+d83514_
                                     (_make-delta-context83503_
                                      _ctx83501_
                                      _super83512_)))
                               (_K83505_
                                _ctx+d83514_
                                (fx- _phi83504_ _delta83502_))))
                           _$e83507_)
                          (error '"Bad context" _ctx83501_))))))
          (let _K83482_ ((_ctx83484_ _ctx83474_) (_phi83485_ _phi83475_))
            (if (fxzero? _phi83485_)
                _ctx83484_
                (if (##structure-instance-of? _ctx83484_ 'gx#context-phi::t)
                    (if (fxpositive? _phi83485_)
                        (let ((_$e83487_
                               (##unchecked-structure-ref
                                _ctx83484_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e83487_
                              ((lambda (_g8348983491_)
                                 (_K83482_ _g8348983491_ (fx- _phi83485_ '1)))
                               _$e83487_)
                              (_shift83480_
                               _ctx83484_
                               '1
                               _make-phi/up83478_
                               _phi83485_
                               _K83482_)))
                        (let ((_$e83494_
                               (##unchecked-structure-ref
                                _ctx83484_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e83494_
                              ((lambda (_g8349683498_)
                                 (_K83482_ _g8349683498_ (fx+ _phi83485_ '1)))
                               _$e83494_)
                              (_shift83480_
                               _ctx83484_
                               '-1
                               _make-phi/down83479_
                               _phi83485_
                               _K83482_))))
                    _ctx83484_))))))
    (define gx#core-context-get
      (lambda (_ctx83471_ _key83472_)
        (hash-get
         (##unchecked-structure-ref _ctx83471_ '2 gx#expander-context::t '#f)
         _key83472_)))
    (define gx#core-context-put!
      (lambda (_ctx83467_ _key83468_ _val83469_)
        (hash-put!
         (##unchecked-structure-ref _ctx83467_ '2 gx#expander-context::t '#f)
         _key83468_
         _val83469_)))
    (define gx#core-context-resolve
      (lambda (_ctx83454_ _key83455_)
        (let _lp83457_ ((_ctx83459_ _ctx83454_))
          (let ((_$e83461_ (gx#core-context-get _ctx83459_ _key83455_)))
            (if _$e83461_
                (values _$e83461_)
                (let ((_$e83464_
                       (if (##structure-instance-of?
                            _ctx83459_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx83459_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e83464_ (_lp83457_ _$e83464_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx83444_ _key83445_ _val83446_ _rebind83447_)
        (let ((_$e83449_ (gx#core-context-get _ctx83444_ _key83445_)))
          (if _$e83449_
              ((lambda (_xval83452_)
                 (gx#core-context-put!
                  _ctx83444_
                  _key83445_
                  (_rebind83447_ _xval83452_)))
               _$e83449_)
              (gx#core-context-put! _ctx83444_ _key83445_ _val83446_)))))
    (define gx#core-context-top__%
      (lambda (_ctx83422_ _stop?83423_)
        (let _lp83425_ ((_ctx83427_ _ctx83422_))
          (if (_stop?83423_ _ctx83427_)
              _ctx83427_
              (if (##structure-instance-of? _ctx83427_ 'gx#context-phi::t)
                  (_lp83425_
                   (##unchecked-structure-ref
                    _ctx83427_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx83433_ (gx#current-expander-context))
               (_stop?83435_ gx#top-context?))
          (gx#core-context-top__% _ctx83433_ _stop?83435_))))
    (define gx#core-context-top__1
      (lambda (_ctx83437_)
        (let ((_stop?83439_ gx#top-context?))
          (gx#core-context-top__% _ctx83437_ _stop?83439_))))
    (define gx#core-context-top
      (lambda _g86118_
        (let ((_g86117_ (##length _g86118_)))
          (cond ((##fx= _g86117_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g86118_))
                ((##fx= _g86117_ 1)
                 (apply (lambda (_ctx83437_)
                          (gx#core-context-top__1 _ctx83437_))
                        _g86118_))
                ((##fx= _g86117_ 2)
                 (apply (lambda (_ctx83441_ _stop?83442_)
                          (gx#core-context-top__% _ctx83441_ _stop?83442_))
                        _g86118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g86118_))))))
    (define gx#core-context-root__%
      (lambda (_ctx83407_)
        (let _lp83409_ ((_ctx83411_ _ctx83407_))
          (if (##structure-instance-of? _ctx83411_ 'gx#context-phi::t)
              (_lp83409_
               (##unchecked-structure-ref _ctx83411_ '3 gx#phi-context::t '#f))
              _ctx83411_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx83417_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx83417_))))
    (define gx#core-context-root
      (lambda _g86120_
        (let ((_g86119_ (##length _g86120_)))
          (cond ((##fx= _g86119_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g86120_))
                ((##fx= _g86119_ 1)
                 (apply (lambda (_ctx83419_)
                          (gx#core-context-root__% _ctx83419_))
                        _g86120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g86120_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx83388_ . __8338583389_)
        (let ((_$e83392_ (gx#current-expander-allow-rebind?)))
          (if _$e83392_
              _$e83392_
              (if (##structure-instance-of? _ctx83388_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx83388_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx83388_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx83399_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx83399_))))
    (define gx#core-context-rebind?
      (lambda _g86122_
        (let ((_g86121_ (##length _g86122_)))
          (cond ((##fx= _g86121_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g86122_))
                ((##fx= _g86121_ 1)
                 (apply (lambda (_ctx83401_)
                          (gx#core-context-rebind?__% _ctx83401_))
                        _g86122_))
                ((##fx>= _g86121_ 1)
                 (apply gx#core-context-rebind?__% _g86122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g86122_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx83371_)
        (let ((_$e83373_ (gx#core-context-top__1 _ctx83371_)))
          (if _$e83373_
              ((lambda (_ctx83376_)
                 (if (##structure-instance-of?
                      _ctx83376_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx83376_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e83373_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx83382_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx83382_))))
    (define gx#core-context-namespace
      (lambda _g86124_
        (let ((_g86123_ (##length _g86124_)))
          (cond ((##fx= _g86123_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g86124_))
                ((##fx= _g86123_ 1)
                 (apply (lambda (_ctx83384_)
                          (gx#core-context-namespace__% _ctx83384_))
                        _g86124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g86124_))))))
    (define gx#expander-binding?__%
      (lambda (_bind83357_ _is?83358_)
        (if (##structure-direct-instance-of? _bind83357_ 'gx#syntax-binding::t)
            (_is?83358_
             (##unchecked-structure-ref
              _bind83357_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind83363_)
        (let ((_is?83365_ gx#expander?))
          (gx#expander-binding?__% _bind83363_ _is?83365_))))
    (define gx#expander-binding?
      (lambda _g86126_
        (let ((_g86125_ (##length _g86126_)))
          (cond ((##fx= _g86125_ 1)
                 (apply (lambda (_bind83363_)
                          (gx#expander-binding?__0 _bind83363_))
                        _g86126_))
                ((##fx= _g86125_ 2)
                 (apply (lambda (_bind83367_ _is?83368_)
                          (gx#expander-binding?__% _bind83367_ _is?83368_))
                        _g86126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g86126_))))))
    (define gx#core-expander-binding?
      (lambda (_bind83354_)
        (gx#expander-binding?__% _bind83354_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind83352_)
        (gx#expander-binding?__% _bind83352_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind83346_)
        (letrec ((_direct-special-form?83348_
                  (lambda (_obj83350_)
                    (##structure-direct-instance-of?
                     _obj83350_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind83346_ _direct-special-form?83348_))))
    (define gx#special-form-binding?
      (lambda (_bind83344_)
        (gx#expander-binding?__% _bind83344_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind83335_)
        (letrec ((_feature?83337_
                  (lambda (_e83339_)
                    (let ((_$e83341_
                           (##structure-instance-of?
                            _e83339_
                            'gx#feature-expander::t)))
                      (if _$e83341_
                          _$e83341_
                          (##structure-instance-of?
                           _e83339_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind83335_ _feature?83337_))))
    (define gx#private-feature-binding?
      (lambda (_bind83333_)
        (gx#expander-binding?__% _bind83333_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id83320_ _bound?83321_)
        (if (gx#identifier? _id83320_)
            (_bound?83321_ (gx#resolve-identifier__0 _id83320_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id83326_)
        (let ((_bound?83328_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id83326_ _bound?83328_))))
    (define gx#core-bound-identifier?
      (lambda _g86128_
        (let ((_g86127_ (##length _g86128_)))
          (cond ((##fx= _g86127_ 1)
                 (apply (lambda (_id83326_)
                          (gx#core-bound-identifier?__0 _id83326_))
                        _g86128_))
                ((##fx= _g86127_ 2)
                 (apply (lambda (_id83330_ _bound?83331_)
                          (gx#core-bound-identifier?__%
                           _id83330_
                           _bound?83331_))
                        _g86128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g86128_))))))
    (define gx#core-identifier=?
      (lambda (_x83310_ _y83311_)
        (letrec ((_y=?83313_
                  (lambda (_xid83317_)
                    ((if (list? _y83311_) memq eq?) _xid83317_ _y83311_))))
          (let ((_bind83315_ (gx#resolve-identifier__0 _x83310_)))
            (if (##structure-instance-of? _bind83315_ 'gx#binding::t)
                (_y=?83313_
                 (##unchecked-structure-ref _bind83315_ '1 gx#binding::t '#f))
                (_y=?83313_ (gx#stx-e _x83310_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e83308_)
        (if (interned-symbol? _e83308_)
            (string-index__0 (symbol->string _e83308_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx83263_ _src83264_ _ctx83265_ _marks83266_)
        (if (##structure? _stx83263_)
            (let ((_$e83268_ (gx#sealed-syntax-unwrap _stx83263_)))
              (if _$e83268_
                  (values _$e83268_)
                  (if (gx#identifier? _stx83263_)
                      (let ((_id83271_
                             (gx#stx-unwrap__% _stx83263_ _marks83266_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id83271_ '1 gx#AST::t '#f)
                         (let ((_$e83273_
                                (##unchecked-structure-ref
                                 _id83271_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e83273_ _$e83273_ _src83264_))
                         _ctx83265_
                         (##unchecked-structure-ref
                          _id83271_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx83263_)
                       (let ((_$e83276_ (gx#stx-source _stx83263_)))
                         (if _$e83276_ _$e83276_ _src83264_))
                       _ctx83265_
                       (reverse _marks83266_)))))
            (##structure
             gx#syntax-quote::t
             _stx83263_
             _src83264_
             _ctx83265_
             (reverse _marks83266_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx83282_)
        (let* ((_src83284_ '#f)
               (_ctx83286_ (gx#current-expander-context))
               (_marks83288_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83282_
           _src83284_
           _ctx83286_
           _marks83288_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx83290_ _src83291_)
        (let* ((_ctx83293_ (gx#current-expander-context))
               (_marks83295_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83290_
           _src83291_
           _ctx83293_
           _marks83295_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx83297_ _src83298_ _ctx83299_)
        (let ((_marks83301_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83297_
           _src83298_
           _ctx83299_
           _marks83301_))))
    (define gx#core-quote-syntax
      (lambda _g86130_
        (let ((_g86129_ (##length _g86130_)))
          (cond ((##fx= _g86129_ 1)
                 (apply (lambda (_stx83282_)
                          (gx#core-quote-syntax__0 _stx83282_))
                        _g86130_))
                ((##fx= _g86129_ 2)
                 (apply (lambda (_stx83290_ _src83291_)
                          (gx#core-quote-syntax__1 _stx83290_ _src83291_))
                        _g86130_))
                ((##fx= _g86129_ 3)
                 (apply (lambda (_stx83297_ _src83298_ _ctx83299_)
                          (gx#core-quote-syntax__2
                           _stx83297_
                           _src83298_
                           _ctx83299_))
                        _g86130_))
                ((##fx= _g86129_ 4)
                 (apply (lambda (_stx83303_ _src83304_ _ctx83305_ _marks83306_)
                          (gx#core-quote-syntax__%
                           _stx83303_
                           _src83304_
                           _ctx83305_
                           _marks83306_))
                        _g86130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g86130_))))))
    (define gx#core-cons
      (lambda (_hd83259_ _tl83260_)
        (cons (gx#core-quote-syntax__0 _hd83259_) _tl83260_)))
    (define gx#core-list
      (lambda (_hd83256_ . _rest83257_)
        (cons (gx#core-quote-syntax__0 _hd83256_) _rest83257_)))
    (define gx#core-cons*
      (lambda (_hd83253_ . _rest83254_)
        (apply cons* (gx#core-quote-syntax__0 _hd83253_) _rest83254_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path83227_ _rel83228_)
        (let ((_path83240_ (gx#stx-e _stx-path83227_))
              (_reldir83241_
               (let _lp83230_ ((_relsrc83232_
                                (let ((_$e83237_
                                       (gx#stx-source _stx-path83227_)))
                                  (if _$e83237_ _$e83237_ _rel83228_))))
                 (if (##structure-instance-of? _relsrc83232_ 'gerbil#AST::t)
                     (_lp83230_
                      (let ((_$e83234_ (gx#stx-source _relsrc83232_)))
                        (if _$e83234_ _$e83234_ (gx#stx-e _relsrc83232_))))
                     (if (source-location-path? _relsrc83232_)
                         (path-directory (source-location-path _relsrc83232_))
                         (if (string? _relsrc83232_)
                             (path-directory _relsrc83232_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path83240_ (path-normalize _reldir83241_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path83246_)
        (let ((_rel83248_ '#f))
          (gx#core-resolve-path__% _stx-path83246_ _rel83248_))))
    (define gx#core-resolve-path
      (lambda _g86132_
        (let ((_g86131_ (##length _g86132_)))
          (cond ((##fx= _g86131_ 1)
                 (apply (lambda (_stx-path83246_)
                          (gx#core-resolve-path__0 _stx-path83246_))
                        _g86132_))
                ((##fx= _g86131_ 2)
                 (apply (lambda (_stx-path83250_ _rel83251_)
                          (gx#core-resolve-path__% _stx-path83250_ _rel83251_))
                        _g86132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g86132_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr83183_ _ctx83184_)
        (let* ((_repr8318583192_ _repr83183_)
               (_E8318783196_
                (lambda () (error '"No clause matching" _repr8318583192_)))
               (_K8318883204_
                (lambda (_subs83199_ _phi83200_)
                  (let ((_subst83202_
                         (if (not (null? _subs83199_))
                             (list->hash-table-eq _subs83199_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst83202_
                     _ctx83184_
                     _phi83200_
                     '#f)))))
          (if (##pair? _repr8318583192_)
              (let ((_hd8318983207_ (##car _repr8318583192_))
                    (_tl8319083209_ (##cdr _repr8318583192_)))
                (let* ((_phi83212_ _hd8318983207_)
                       (_subs83214_ _tl8319083209_))
                  (_K8318883204_ _subs83214_ _phi83212_)))
              (_E8318783196_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr83219_)
        (let ((_ctx83221_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr83219_ _ctx83221_))))
    (define gx#core-deserialize-mark
      (lambda _g86134_
        (let ((_g86133_ (##length _g86134_)))
          (cond ((##fx= _g86133_ 1)
                 (apply (lambda (_repr83219_)
                          (gx#core-deserialize-mark__0 _repr83219_))
                        _g86134_))
                ((##fx= _g86133_ 2)
                 (apply (lambda (_repr83223_ _ctx83224_)
                          (gx#core-deserialize-mark__% _repr83223_ _ctx83224_))
                        _g86134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g86134_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx83180_)
        (gx#stx-rewrap _stx83180_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx83178_)
        (gx#stx-unwrap__% _stx83178_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx83148_)
        (let* ((_g8314983157_ (gx#current-expander-marks))
               (_else8315183165_ (lambda () _stx83148_))
               (_K8315383170_
                (lambda (_hd83168_) (gx#stx-apply-mark _stx83148_ _hd83168_))))
          (if (##pair? _g8314983157_)
              (let* ((_hd8315483173_ (##car _g8314983157_))
                     (_hd83176_ _hd8315483173_))
                (_K8315383170_ _hd83176_))
              (_else8315183165_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx83133_ _E83134_)
        (let ((_bind83136_ (gx#resolve-identifier__0 _stx83133_)))
          (if (##structure-direct-instance-of?
               _bind83136_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind83136_
               '4
               gx#syntax-binding::t
               '#f)
              (_E83134_ _stx83133_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx83141_)
        (let ((_E83143_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx83141_ _E83143_))))
    (define gx#syntax-local-e
      (lambda _g86136_
        (let ((_g86135_ (##length _g86136_)))
          (cond ((##fx= _g86135_ 1)
                 (apply (lambda (_stx83141_) (gx#syntax-local-e__0 _stx83141_))
                        _g86136_))
                ((##fx= _g86135_ 2)
                 (apply (lambda (_stx83145_ _E83146_)
                          (gx#syntax-local-e__% _stx83145_ _E83146_))
                        _g86136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g86136_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx83117_ _E83118_)
        (let ((_e83120_ (gx#syntax-local-e__% _stx83117_ _E83118_)))
          (if (##structure-instance-of? _e83120_ 'gx#expander::t)
              (##structure-ref _e83120_ '1 gx#expander::t '#f)
              _e83120_))))
    (define gx#syntax-local-value__0
      (lambda (_stx83125_)
        (let ((_E83127_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx83125_ _E83127_))))
    (define gx#syntax-local-value
      (lambda _g86138_
        (let ((_g86137_ (##length _g86138_)))
          (cond ((##fx= _g86137_ 1)
                 (apply (lambda (_stx83125_)
                          (gx#syntax-local-value__0 _stx83125_))
                        _g86138_))
                ((##fx= _g86137_ 2)
                 (apply (lambda (_stx83129_ _E83130_)
                          (gx#syntax-local-value__% _stx83129_ _E83130_))
                        _g86138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g86138_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx83114_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx83114_)))))
