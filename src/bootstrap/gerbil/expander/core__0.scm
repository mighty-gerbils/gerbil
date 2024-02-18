(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708280333)
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
      (lambda _$args156716_
        (apply make-instance gx#expander-context::t _$args156716_)))
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
      (lambda _$args156713_
        (apply make-instance gx#root-context::t _$args156713_)))
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
      (lambda _$args156710_
        (apply make-instance gx#phi-context::t _$args156710_)))
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
      (lambda _$args156707_
        (apply make-instance gx#top-context::t _$args156707_)))
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
      (lambda _$args156704_
        (apply make-instance gx#module-context::t _$args156704_)))
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
      (lambda _$args156701_
        (apply make-instance gx#prelude-context::t _$args156701_)))
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
      (lambda _$args156698_
        (apply make-instance gx#local-context::t _$args156698_)))
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
      (lambda (_self156682_ _id156683_ _super156684_)
        (if (##fx< '3 (##structure-length _self156682_))
            (begin
              (##unchecked-structure-set!
               _self156682_
               _id156683_
               '1
               (##structure-type _self156682_)
               '#f)
              (##unchecked-structure-set!
               _self156682_
               (make-hash-table-eq)
               '2
               (##structure-type _self156682_)
               '#f)
              (##unchecked-structure-set!
               _self156682_
               _super156684_
               '3
               (##structure-type _self156682_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self156682_
                   '3
                   (##vector-length _self156682_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self156689_ _id156690_)
        (let ((_super156692_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self156689_ _id156690_ _super156692_))))
    (define gx#phi-context:::init!
      (lambda _g160826_
        (let ((_g160825_ (##length _g160826_)))
          (cond ((##fx= _g160825_ 2)
                 (apply (lambda (_self156689_ _id156690_)
                          (gx#phi-context:::init!__0 _self156689_ _id156690_))
                        _g160826_))
                ((##fx= _g160825_ 3)
                 (apply (lambda (_self156694_ _id156695_ _super156696_)
                          (gx#phi-context:::init!__%
                           _self156694_
                           _id156695_
                           _super156696_))
                        _g160826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g160826_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self156546_ _super156547_)
        (if (##fx< '3 (##structure-length _self156546_))
            (begin
              (##unchecked-structure-set!
               _self156546_
               (gensym 'L)
               '1
               (##structure-type _self156546_)
               '#f)
              (##unchecked-structure-set!
               _self156546_
               (make-hash-table-eq)
               '2
               (##structure-type _self156546_)
               '#f)
              (##unchecked-structure-set!
               _self156546_
               _super156547_
               '3
               (##structure-type _self156546_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self156546_
                   '3
                   (##vector-length _self156546_)))))
    (define gx#local-context:::init!__0
      (lambda (_self156552_)
        (let ((_super156554_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self156552_ _super156554_))))
    (define gx#local-context:::init!
      (lambda _g160828_
        (let ((_g160827_ (##length _g160828_)))
          (cond ((##fx= _g160827_ 1)
                 (apply (lambda (_self156552_)
                          (gx#local-context:::init!__0 _self156552_))
                        _g160828_))
                ((##fx= _g160827_ 2)
                 (apply (lambda (_self156556_ _super156557_)
                          (gx#local-context:::init!__%
                           _self156556_
                           _super156557_))
                        _g160828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g160828_))))))
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
      (lambda _$args156420_ (apply make-instance gx#binding::t _$args156420_)))
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
      (lambda _$args156417_
        (apply make-instance gx#runtime-binding::t _$args156417_)))
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
      (lambda _$args156414_
        (apply make-instance gx#local-binding::t _$args156414_)))
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
      (lambda _$args156411_
        (apply make-instance gx#top-binding::t _$args156411_)))
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
      (lambda _$args156408_
        (apply make-instance gx#module-binding::t _$args156408_)))
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
      (lambda _$args156405_
        (apply make-instance gx#extern-binding::t _$args156405_)))
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
      (lambda _$args156402_
        (apply make-instance gx#syntax-binding::t _$args156402_)))
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
      (lambda _$args156399_
        (apply make-instance gx#import-binding::t _$args156399_)))
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
      (lambda _$args156396_
        (apply make-instance gx#alias-binding::t _$args156396_)))
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
      (lambda _$args156393_
        (apply make-instance gx#expander::t _$args156393_)))
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
      (lambda _$args156390_
        (apply make-instance gx#core-expander::t _$args156390_)))
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
      (lambda _$args156387_
        (apply make-instance gx#expression-form::t _$args156387_)))
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
      (lambda _$args156384_
        (apply make-instance gx#special-form::t _$args156384_)))
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
      (lambda _$args156381_
        (apply make-instance gx#definition-form::t _$args156381_)))
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
      (lambda _$args156378_
        (apply make-instance gx#top-special-form::t _$args156378_)))
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
      (lambda _$args156375_
        (apply make-instance gx#module-special-form::t _$args156375_)))
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
      (lambda _$args156372_
        (apply make-instance gx#feature-expander::t _$args156372_)))
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
      (lambda _$args156369_
        (apply make-instance gx#private-feature-expander::t _$args156369_)))
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
      (lambda _$args156366_
        (apply make-instance gx#reserved-expander::t _$args156366_)))
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
      (lambda _$args156363_
        (apply make-instance gx#macro-expander::t _$args156363_)))
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
      (lambda _$args156360_
        (apply make-instance gx#rename-macro-expander::t _$args156360_)))
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
      (lambda _$args156357_
        (apply make-instance gx#user-expander::t _$args156357_)))
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
      (lambda _$args156354_
        (apply make-instance gx#expander-mark::t _$args156354_)))
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
      (lambda (_ctx156339_ _message156340_ _stx156341_ . _details156342_)
        (let ((_ctx156352_
               (let ((_$e156344_ _ctx156339_))
                 (if _$e156344_
                     _$e156344_
                     (let ((_$e156347_ (gx#core-context-top__0)))
                       (if _$e156347_
                           ((lambda (_ctx156350_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx156350_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e156347_)
                           '#f))))))
          (raise (make-syntax-error
                  _message156340_
                  (cons _stx156341_ _details156342_)
                  _ctx156352_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx156326_ _expression?156327_)
        (gx#eval-syntax* (gx#core-expand__% _stx156326_ _expression?156327_))))
    (define gx#eval-syntax__0
      (lambda (_stx156332_)
        (let ((_expression?156334_ '#f))
          (gx#eval-syntax__% _stx156332_ _expression?156334_))))
    (define gx#eval-syntax
      (lambda _g160830_
        (let ((_g160829_ (##length _g160830_)))
          (cond ((##fx= _g160829_ 1)
                 (apply (lambda (_stx156332_) (gx#eval-syntax__0 _stx156332_))
                        _g160830_))
                ((##fx= _g160829_ 2)
                 (apply (lambda (_stx156336_ _expression?156337_)
                          (gx#eval-syntax__% _stx156336_ _expression?156337_))
                        _g160830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g160830_))))))
    (define gx#eval-syntax*
      (lambda (_stx156323_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx156323_))))
    (define gx#core-expand__%
      (lambda (_stx156310_ _expression?156311_)
        (if _expression?156311_
            (gx#core-expand-expression _stx156310_)
            (gx#core-expand-top _stx156310_))))
    (define gx#core-expand__0
      (lambda (_stx156316_)
        (let ((_expression?156318_ '#f))
          (gx#core-expand__% _stx156316_ _expression?156318_))))
    (define gx#core-expand
      (lambda _g160832_
        (let ((_g160831_ (##length _g160832_)))
          (cond ((##fx= _g160831_ 1)
                 (apply (lambda (_stx156316_) (gx#core-expand__0 _stx156316_))
                        _g160832_))
                ((##fx= _g160831_ 2)
                 (apply (lambda (_stx156320_ _expression?156321_)
                          (gx#core-expand__% _stx156320_ _expression?156321_))
                        _g160832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g160832_))))))
    (define gx#core-expand-top
      (lambda (_stx156277_)
        (let* ((_stx156279_ (gx#core-expand*__0 _stx156277_))
               (_e156280156287_ _stx156279_)
               (_E156282156291_
                (lambda () (gx#core-expand-expression _stx156279_)))
               (_E156281156305_
                (lambda ()
                  (if (gx#stx-pair? _e156280156287_)
                      (let ((_e156283156295_ (gx#syntax-e _e156280156287_)))
                        (let ((_hd156284156298_ (##car _e156283156295_))
                              (_tl156285156300_ (##cdr _e156283156295_)))
                          (let ((_form156303_ _hd156284156298_))
                            (if (gx#core-bound-identifier?__0 _form156303_)
                                _stx156279_
                                (_E156282156291_)))))
                      (_E156282156291_)))))
          (_E156281156305_))))
    (define gx#core-expand-expression
      (lambda (_stx156224_)
        (letrec ((_sealed-expression?156226_
                  (lambda (_hd156247_)
                    (if (gx#sealed-syntax? _hd156247_)
                        (let* ((_e156248156255_ _hd156247_)
                               (_E156250156259_ (lambda () '#f))
                               (_E156249156273_
                                (lambda ()
                                  (if (gx#stx-pair? _e156248156255_)
                                      (let ((_e156251156263_
                                             (gx#syntax-e _e156248156255_)))
                                        (let ((_hd156252156266_
                                               (##car _e156251156263_))
                                              (_tl156253156268_
                                               (##cdr _e156251156263_)))
                                          (let ((_form156271_
                                                 _hd156252156266_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form156271_
                                                 gx#expression-form-binding?)
                                                (_E156250156259_)))))
                                      (_E156250156259_)))))
                          (_E156249156273_))
                        '#f)))
                 (_illegal-expression156227_
                  (lambda (_hd156245_ . _g160833_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx156224_
                     _hd156245_)))
                 (_expand-e156228_
                  (lambda (_form156240_ _hd156241_)
                    (let ((_bind156243_
                           (if (##structure-instance-of?
                                _form156240_
                                'gx#binding::t)
                               _form156240_
                               (gx#resolve-identifier__0 _form156240_))))
                      (if (gx#core-expander-binding? _bind156243_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind156243_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd156241_
                            (gx#stx-source _stx156224_)))
                          (if (##structure-direct-instance-of?
                               _bind156243_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind156243_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd156241_
                                 (gx#stx-source _stx156224_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx156224_
                               _form156240_)))))))
          (let ((_hd156230_ (gx#core-expand-head _stx156224_)))
            (if (_sealed-expression?156226_ _hd156230_)
                _hd156230_
                (if (gx#stx-pair? _hd156230_)
                    (let* ((_form156232_ (gx#stx-car _hd156230_))
                           (_bind156234_
                            (if (gx#identifier? _form156232_)
                                (gx#resolve-identifier__0 _form156232_)
                                '#f)))
                      (if (or (not _bind156234_)
                              (not (gx#core-expander-binding? _bind156234_)))
                          (_expand-e156228_ '%%app (cons '%%app _hd156230_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind156234_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd156230_
                               _illegal-expression156227_)
                              (if (gx#expression-form-binding? _bind156234_)
                                  (_expand-e156228_ _bind156234_ _hd156230_)
                                  (if (gx#direct-special-form-binding?
                                       _bind156234_)
                                      (gx#core-expand-expression
                                       (_expand-e156228_
                                        _bind156234_
                                        _hd156230_))
                                      (_illegal-expression156227_
                                       _hd156230_))))))
                    (if (gx#core-bound-identifier?__0 _hd156230_)
                        (_illegal-expression156227_ _hd156230_)
                        (if (gx#identifier? _hd156230_)
                            (_expand-e156228_
                             '%%ref
                             (cons '%%ref (cons _hd156230_ '())))
                            (if (gx#stx-datum? _hd156230_)
                                (_expand-e156228_
                                 '%#quote
                                 (cons '%#quote (cons _hd156230_ '())))
                                (_illegal-expression156227_
                                 _hd156230_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx156219_)
        (call-with-parameters
         (lambda ()
           (let ((_stx156222_ (gx#core-expand-expression _stx156219_)))
             (values _stx156222_ (gx#eval-syntax* _stx156222_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx156200_ _stop?156201_)
        (let _lp156203_ ((_stx156205_ _stx156200_))
          (if (_stop?156201_ _stx156205_)
              _stx156205_
              (let ((_rstx156207_ (gx#core-expand1 _stx156205_)))
                (if (eq? _stx156205_ _rstx156207_)
                    _stx156205_
                    (_lp156203_ _rstx156207_)))))))
    (define gx#core-expand*__0
      (lambda (_stx156212_)
        (let ((_stop?156214_ false))
          (gx#core-expand*__% _stx156212_ _stop?156214_))))
    (define gx#core-expand*
      (lambda _g160835_
        (let ((_g160834_ (##length _g160835_)))
          (cond ((##fx= _g160834_ 1)
                 (apply (lambda (_stx156212_) (gx#core-expand*__0 _stx156212_))
                        _g160835_))
                ((##fx= _g160834_ 2)
                 (apply (lambda (_stx156216_ _stop?156217_)
                          (gx#core-expand*__% _stx156216_ _stop?156217_))
                        _g160835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g160835_))))))
    (define gx#core-expand1
      (lambda (_stx156156_)
        (letrec ((_step156158_
                  (lambda (_hd156195_)
                    (let ((_bind156197_ (gx#resolve-identifier__0 _hd156195_)))
                      (if (##structure-instance-of?
                           _bind156197_
                           'gx#runtime-binding::t)
                          _stx156156_
                          (if (##structure-direct-instance-of?
                               _bind156197_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind156197_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx156156_)
                              (if (not _bind156197_)
                                  _stx156156_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx156156_))))))))
          (let* ((_e156159156167_ _stx156156_)
                 (_E156165156171_ (lambda () _stx156156_))
                 (_E156161156177_
                  (lambda ()
                    (let ((_hd156175_ _e156159156167_))
                      (if (gx#identifier? _hd156175_)
                          (_step156158_ _hd156175_)
                          (_E156165156171_)))))
                 (_E156160156191_
                  (lambda ()
                    (if (gx#stx-pair? _e156159156167_)
                        (let ((_e156162156181_ (gx#syntax-e _e156159156167_)))
                          (let ((_hd156163156184_ (##car _e156162156181_))
                                (_tl156164156186_ (##cdr _e156162156181_)))
                            (let ((_hd156189_ _hd156163156184_))
                              (if (gx#identifier? _hd156189_)
                                  (_step156158_ _hd156189_)
                                  (_E156161156177_)))))
                        (_E156161156177_)))))
            (_E156160156191_)))))
    (define gx#core-expand-head
      (lambda (_stx156122_)
        (letrec ((_stop?156124_
                  (lambda (_stx156126_)
                    (let* ((_e156127156134_ _stx156126_)
                           (_E156129156138_ (lambda () '#f))
                           (_E156128156152_
                            (lambda ()
                              (if (gx#stx-pair? _e156127156134_)
                                  (let ((_e156130156142_
                                         (gx#syntax-e _e156127156134_)))
                                    (let ((_hd156131156145_
                                           (##car _e156130156142_))
                                          (_tl156132156147_
                                           (##cdr _e156130156142_)))
                                      (let ((_hd156150_ _hd156131156145_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd156150_)
                                            (_E156129156138_)))))
                                  (_E156129156138_)))))
                      (_E156128156152_)))))
          (gx#core-expand*__% _stx156122_ _stop?156124_))))
    (define gx#core-expand-block__%
      (lambda (_stx155928_
               _expand-special155929_
               _begin-form155930_
               _expand-e155931_)
        (letrec ((_expand-splice155933_
                  (lambda (_hd156096_ _body156097_ _rest156098_ _r156099_)
                    (if (gx#stx-list? _body156097_)
                        (_K155937_
                         (gx#stx-foldr cons _rest156098_ _body156097_)
                         _r156099_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx155928_
                         _hd156096_))))
                 (_expand-cond-expand155934_
                  (lambda (_hd156092_ _rest156093_ _r156094_)
                    (_K155937_
                     (cons (gx#core-expand-cond-expand% _hd156092_)
                           _rest156093_)
                     _r156094_)))
                 (_expand-include155935_
                  (lambda (_hd156041_ _rest156042_ _r156043_)
                    (let* ((_e156044156054_ _hd156041_)
                           (_E156046156058_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e156044156054_)))
                           (_E156045156088_
                            (lambda ()
                              (if (gx#stx-pair? _e156044156054_)
                                  (let ((_e156047156062_
                                         (gx#syntax-e _e156044156054_)))
                                    (let ((_hd156048156065_
                                           (##car _e156047156062_))
                                          (_tl156049156067_
                                           (##cdr _e156047156062_)))
                                      (if (gx#stx-pair? _tl156049156067_)
                                          (let ((_e156050156070_
                                                 (gx#syntax-e
                                                  _tl156049156067_)))
                                            (let ((_hd156051156073_
                                                   (##car _e156050156070_))
                                                  (_tl156052156075_
                                                   (##cdr _e156050156070_)))
                                              (let ((_path156078_
                                                     _hd156051156073_))
                                                (if (gx#stx-null?
                                                     _tl156052156075_)
                                                    (if (gx#stx-string?
                                                         _path156078_)
                                                        (let* ((_rpath156080_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path156078_
                         (gx#stx-source _hd156041_)))
                       (_block156082_
                        (gx#core-expand-include%__% _hd156041_ _rpath156080_))
                       (_rbody156085_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block156082_
                            _expand-special155929_
                            '#f
                            _expand-e155931_))
                         gx#current-expander-path
                         (cons _rpath156080_ (gx#current-expander-path)))))
                  (_K155937_
                   _rest156042_
                   (foldr1 cons _r156043_ _rbody156085_)))
                (_E156046156058_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E156046156058_)))))
                                          (_E156046156058_))))
                                  (_E156046156058_)))))
                      (_E156045156088_))))
                 (_expand-expression155936_
                  (lambda (_hd156037_ _rest156038_ _r156039_)
                    (_K155937_
                     _rest156038_
                     (cons (_expand-e155931_ _hd156037_) _r156039_))))
                 (_K155937_
                  (lambda (_rest155967_ _r155968_)
                    (let* ((_e155969155976_ _rest155967_)
                           (_E155971155980_
                            (lambda ()
                              (if _begin-form155930_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form155930_
                                    (reverse _r155968_))
                                   (gx#stx-source _stx155928_))
                                  _r155968_)))
                           (_E155970156033_
                            (lambda ()
                              (if (gx#stx-pair? _e155969155976_)
                                  (let ((_e155972155984_
                                         (gx#syntax-e _e155969155976_)))
                                    (let ((_hd155973155987_
                                           (##car _e155972155984_))
                                          (_tl155974155989_
                                           (##cdr _e155972155984_)))
                                      (let* ((_hd155992_ _hd155973155987_)
                                             (_rest155994_ _tl155974155989_))
                                        (if '#t
                                            (let* ((_hd155996_
                                                    (gx#core-expand-head
                                                     _hd155992_))
                                                   (_e155997156004_ _hd155996_)
                                                   (_E155999156008_
                                                    (lambda ()
                                                      (_expand-expression155936_
                                                       _hd155996_
                                                       _rest155994_
                                                       _r155968_)))
                                                   (_E155998156029_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e155997156004_)
                                                          (let ((_e156000156012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e155997156004_)))
                    (let ((_hd156001156015_ (##car _e156000156012_))
                          (_tl156002156017_ (##cdr _e156000156012_)))
                      (let* ((_form156020_ _hd156001156015_)
                             (_body156022_ _tl156002156017_))
                        (if '#t
                            (let ((_bind156024_
                                   (if (gx#identifier? _form156020_)
                                       (gx#resolve-identifier__0 _form156020_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind156024_)
                                  (let ((_$e156026_
                                         (##unchecked-structure-ref
                                          _bind156024_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e156026_)
                                        (_expand-splice155933_
                                         _hd155996_
                                         _body156022_
                                         _rest155994_
                                         _r155968_)
                                        (if (eq? '%#cond-expand _$e156026_)
                                            (_expand-cond-expand155934_
                                             _hd155996_
                                             _rest155994_
                                             _r155968_)
                                            (if (eq? '%#include _$e156026_)
                                                (_expand-include155935_
                                                 _hd155996_
                                                 _rest155994_
                                                 _r155968_)
                                                (_expand-special155929_
                                                 _hd155996_
                                                 _K155937_
                                                 _rest155994_
                                                 _r155968_)))))
                                  (_expand-expression155936_
                                   _hd155996_
                                   _rest155994_
                                   _r155968_)))
                            (_E155999156008_)))))
                  (_E155999156008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155998156029_))
                                            (_E155971155980_)))))
                                  (_E155971155980_)))))
                      (_E155970156033_)))))
          (let* ((_e155938155945_ _stx155928_)
                 (_E155940155949_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e155938155945_)))
                 (_E155939155963_
                  (lambda ()
                    (if (gx#stx-pair? _e155938155945_)
                        (let ((_e155941155953_ (gx#syntax-e _e155938155945_)))
                          (let ((_hd155942155956_ (##car _e155941155953_))
                                (_tl155943155958_ (##cdr _e155941155953_)))
                            (let ((_body155961_ _tl155943155958_))
                              (if (gx#stx-list? _body155961_)
                                  (_K155937_ _body155961_ '())
                                  (_E155940155949_)))))
                        (_E155940155949_)))))
            (_E155939155963_)))))
    (define gx#core-expand-block__0
      (lambda (_stx156104_ _expand-special156105_)
        (let* ((_begin-form156107_ '%#begin)
               (_expand-e156109_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx156104_
           _expand-special156105_
           _begin-form156107_
           _expand-e156109_))))
    (define gx#core-expand-block__1
      (lambda (_stx156111_ _expand-special156112_ _begin-form156113_)
        (let ((_expand-e156115_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx156111_
           _expand-special156112_
           _begin-form156113_
           _expand-e156115_))))
    (define gx#core-expand-block
      (lambda _g160837_
        (let ((_g160836_ (##length _g160837_)))
          (cond ((##fx= _g160836_ 2)
                 (apply (lambda (_stx156104_ _expand-special156105_)
                          (gx#core-expand-block__0
                           _stx156104_
                           _expand-special156105_))
                        _g160837_))
                ((##fx= _g160836_ 3)
                 (apply (lambda (_stx156111_
                                 _expand-special156112_
                                 _begin-form156113_)
                          (gx#core-expand-block__1
                           _stx156111_
                           _expand-special156112_
                           _begin-form156113_))
                        _g160837_))
                ((##fx= _g160836_ 4)
                 (apply (lambda (_stx156117_
                                 _expand-special156118_
                                 _begin-form156119_
                                 _expand-e156120_)
                          (gx#core-expand-block__%
                           _stx156117_
                           _expand-special156118_
                           _begin-form156119_
                           _expand-e156120_))
                        _g160837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g160837_))))))
    (define gx#core-expand-block*
      (lambda (_stx155876_ _expand-special155877_)
        (let* ((_g155878155889_
                (gx#core-expand-block__1
                 _stx155876_
                 _expand-special155877_
                 '#f))
               (_E155882155893_
                (lambda () (error '"No clause matching" _g155878155889_))))
          (let ((_K155887155924_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx155876_)))
                (_K155884155910_ (lambda (_expr155908_) _expr155908_))
                (_K155883155899_
                 (lambda (_body155897_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body155897_))
                    (gx#stx-source _stx155876_)))))
            (let ((_try-match155880155920_
                   (lambda ()
                     (if (##pair? _g155878155889_)
                         (let ((_tl155886155915_ (##cdr _g155878155889_))
                               (_hd155885155913_ (##car _g155878155889_)))
                           (if (##null? _tl155886155915_)
                               (let ((_expr155918_ _hd155885155913_))
                                 (_K155884155910_ _expr155918_))
                               (let ((_body155902_ _g155878155889_))
                                 (_K155883155899_ _body155902_))))
                         (let ((_body155902_ _g155878155889_))
                           (_K155883155899_ _body155902_))))))
              (if (##null? _g155878155889_)
                  (_K155887155924_)
                  (_try-match155880155920_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx155704_)
        (letrec ((_satisfied?155706_
                  (lambda (_condition155804_)
                    (let* ((_e155805155820_ _condition155804_)
                           (_E155815155824_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155805155820_)))
                           (_E155808155843_
                            (lambda ()
                              (if (gx#stx-pair? _e155805155820_)
                                  (let ((_e155816155828_
                                         (gx#syntax-e _e155805155820_)))
                                    (let ((_hd155817155831_
                                           (##car _e155816155828_))
                                          (_tl155818155833_
                                           (##cdr _e155816155828_)))
                                      (let* ((_combinator155836_
                                              _hd155817155831_)
                                             (_body155838_ _tl155818155833_))
                                        (if (gx#stx-list? _body155838_)
                                            (let ((_$e155840_
                                                   (gx#stx-e
                                                    _combinator155836_)))
                                              (if (eq? 'not _$e155840_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?155706_
                                                        _body155838_))
                                                  (if (eq? 'and _$e155840_)
                                                      (gx#stx-andmap
                                                       _satisfied?155706_
                                                       _body155838_)
                                                      (if (eq? 'or _$e155840_)
                                                          (gx#stx-ormap
                                                           _satisfied?155706_
                                                           _body155838_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e155840_)
                      (gx#stx-andmap gx#core-resolve-identifier _body155838_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx155704_
                       _combinator155836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E155815155824_)))))
                                  (_E155815155824_))))
                           (_E155807155866_
                            (lambda ()
                              (if (gx#stx-pair? _e155805155820_)
                                  (let ((_e155809155847_
                                         (gx#syntax-e _e155805155820_)))
                                    (let ((_hd155810155850_
                                           (##car _e155809155847_))
                                          (_tl155811155852_
                                           (##cdr _e155809155847_)))
                                      (if (and (gx#identifier?
                                                _hd155810155850_)
                                               (gx#core-identifier=?
                                                _hd155810155850_
                                                'unquote))
                                          (if (gx#stx-pair? _tl155811155852_)
                                              (let ((_e155812155855_
                                                     (gx#syntax-e
                                                      _tl155811155852_)))
                                                (let ((_hd155813155858_
                                                       (##car _e155812155855_))
                                                      (_tl155814155860_
                                                       (##cdr _e155812155855_)))
                                                  (let ((_expr155863_
                                                         _hd155813155858_))
                                                    (if (gx#stx-null?
                                                         _tl155814155860_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr155863_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E155808155843_))
                (_E155808155843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155808155843_))
                                          (_E155808155843_))))
                                  (_E155808155843_))))
                           (_E155806155872_
                            (lambda ()
                              (let ((_id155870_ _e155805155820_))
                                (if (gx#identifier? _id155870_)
                                    (gx#core-bound-identifier?__%
                                     _id155870_
                                     gx#feature-binding?)
                                    (_E155807155866_))))))
                      (_E155806155872_))))
                 (_loop155707_
                  (lambda (_rest155737_)
                    (let* ((_e155738155746_ _rest155737_)
                           (_E155744155750_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155738155746_)))
                           (_E155740155754_
                            (lambda ()
                              (if (gx#stx-null? _e155738155746_)
                                  (if '#t '() (_E155744155750_))
                                  (_E155744155750_))))
                           (_E155739155800_
                            (lambda ()
                              (if (gx#stx-pair? _e155738155746_)
                                  (let ((_e155741155758_
                                         (gx#syntax-e _e155738155746_)))
                                    (let ((_hd155742155761_
                                           (##car _e155741155758_))
                                          (_tl155743155763_
                                           (##cdr _e155741155758_)))
                                      (let* ((_hd155766_ _hd155742155761_)
                                             (_rest155768_ _tl155743155763_))
                                        (if '#t
                                            (let* ((_e155769155776_ _hd155766_)
                                                   (_E155771155780_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e155769155776_)))
                                                   (_E155770155796_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e155769155776_)
                                                          (let ((_e155772155784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e155769155776_)))
                    (let ((_hd155773155787_ (##car _e155772155784_))
                          (_tl155774155789_ (##cdr _e155772155784_)))
                      (let* ((_condition155792_ _hd155773155787_)
                             (_body155794_ _tl155774155789_))
                        (if '#t
                            (if (gx#stx-eq? _condition155792_ 'else)
                                (if (gx#stx-null? _rest155768_)
                                    _body155794_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx155704_
                                     _hd155766_))
                                (if (_satisfied?155706_ _condition155792_)
                                    _body155794_
                                    (_loop155707_ _rest155768_)))
                            (_E155771155780_)))))
                  (_E155771155780_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155770155796_))
                                            (_E155740155754_)))))
                                  (_E155740155754_)))))
                      (_E155739155800_)))))
          (let* ((_e155708155715_ _stx155704_)
                 (_E155710155719_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e155708155715_)))
                 (_E155709155733_
                  (lambda ()
                    (if (gx#stx-pair? _e155708155715_)
                        (let ((_e155711155723_ (gx#syntax-e _e155708155715_)))
                          (let ((_hd155712155726_ (##car _e155711155723_))
                                (_tl155713155728_ (##cdr _e155711155723_)))
                            (let ((_clauses155731_ _tl155713155728_))
                              (if (gx#stx-list? _clauses155731_)
                                  (gx#core-cons
                                   'begin
                                   (_loop155707_ _clauses155731_))
                                  (_E155710155719_)))))
                        (_E155710155719_)))))
            (_E155709155733_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx155647_ _rpath155648_)
        (let* ((_e155649155659_ _stx155647_)
               (_E155651155663_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155649155659_)))
               (_E155650155690_
                (lambda ()
                  (if (gx#stx-pair? _e155649155659_)
                      (let ((_e155652155667_ (gx#syntax-e _e155649155659_)))
                        (let ((_hd155653155670_ (##car _e155652155667_))
                              (_tl155654155672_ (##cdr _e155652155667_)))
                          (if (gx#stx-pair? _tl155654155672_)
                              (let ((_e155655155675_
                                     (gx#syntax-e _tl155654155672_)))
                                (let ((_hd155656155678_
                                       (##car _e155655155675_))
                                      (_tl155657155680_
                                       (##cdr _e155655155675_)))
                                  (let ((_path155683_ _hd155656155678_))
                                    (if (gx#stx-null? _tl155657155680_)
                                        (if (gx#stx-string? _path155683_)
                                            (let ((_rpath155688_
                                                   (let ((_$e155685_
                                                          _rpath155648_))
                                                     (if _$e155685_
                                                         _$e155685_
                                                         (gx#core-resolve-path__%
                                                          _path155683_
                                                          (gx#stx-source
                                                           _stx155647_))))))
                                              (if (member _rpath155688_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx155647_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath155688_))
                                                    (gx#stx-source
                                                     _stx155647_)))))
                                            (_E155651155663_))
                                        (_E155651155663_)))))
                              (_E155651155663_))))
                      (_E155651155663_)))))
          (_E155650155690_))))
    (define gx#core-expand-include%__0
      (lambda (_stx155697_)
        (let ((_rpath155699_ '#f))
          (gx#core-expand-include%__% _stx155697_ _rpath155699_))))
    (define gx#core-expand-include%
      (lambda _g160839_
        (let ((_g160838_ (##length _g160839_)))
          (cond ((##fx= _g160838_ 1)
                 (apply (lambda (_stx155697_)
                          (gx#core-expand-include%__0 _stx155697_))
                        _g160839_))
                ((##fx= _g160838_ 2)
                 (apply (lambda (_stx155701_ _rpath155702_)
                          (gx#core-expand-include%__%
                           _stx155701_
                           _rpath155702_))
                        _g160839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g160839_))))))
    (define gx#core-apply-expander__%
      (lambda (_K155616_ _stx155617_ _method155618_)
        (if (procedure? _K155616_)
            (let ((_$e155620_ (gx#stx-source _stx155617_)))
              (if _$e155620_
                  ((lambda (_g155622155624_)
                     (gx#stx-wrap-source
                      (_K155616_ _stx155617_)
                      _g155622155624_))
                   _$e155620_)
                  (_K155616_ _stx155617_)))
            (let ((_$e155627_ (bound-method-ref _K155616_ _method155618_)))
              (if _$e155627_
                  ((lambda (_g155629155631_)
                     (gx#core-apply-expander__%
                      _g155629155631_
                      _stx155617_
                      _method155618_))
                   _$e155627_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx155617_
                   _method155618_))))))
    (define gx#core-apply-expander__0
      (lambda (_K155637_ _stx155638_)
        (let ((_method155640_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K155637_ _stx155638_ _method155640_))))
    (define gx#core-apply-expander
      (lambda _g160841_
        (let ((_g160840_ (##length _g160841_)))
          (cond ((##fx= _g160840_ 2)
                 (apply (lambda (_K155637_ _stx155638_)
                          (gx#core-apply-expander__0 _K155637_ _stx155638_))
                        _g160841_))
                ((##fx= _g160840_ 3)
                 (apply (lambda (_K155642_ _stx155643_ _method155644_)
                          (gx#core-apply-expander__%
                           _K155642_
                           _stx155643_
                           _method155644_))
                        _g160841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g160841_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self155612_ _stx155613_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx155613_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self155465_ _stx155466_)
        (let* ((_self155467155473_ _self155465_)
               (_E155469155477_
                (lambda () (error '"No clause matching" _self155467155473_)))
               (_K155470155482_
                (lambda (_K155480_)
                  (gx#core-apply-expander__0 _K155480_ _stx155466_))))
          (if (##structure-instance-of? _self155467155473_ 'gx#core-macro::t)
              (let* ((_e155471155485_
                      (##unchecked-structure-ref
                       _self155467155473_
                       '1
                       gx#expander::t
                       '#f))
                     (_K155488_ _e155471155485_))
                (_K155470155482_ _K155488_))
              (_E155469155477_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self155318_ _stx155319_)
        (if (gx#sealed-syntax? _stx155319_)
            _stx155319_
            (let* ((_self155320155326_ _self155318_)
                   (_E155322155330_
                    (lambda ()
                      (error '"No clause matching" _self155320155326_)))
                   (_K155323155335_
                    (lambda (_K155333_)
                      (gx#core-apply-expander__0 _K155333_ _stx155319_))))
              (if (##structure-instance-of?
                   _self155320155326_
                   'gx#core-expander::t)
                  (let* ((_e155324155338_
                          (##unchecked-structure-ref
                           _self155320155326_
                           '1
                           gx#expander::t
                           '#f))
                         (_K155341_ _e155324155338_))
                    (_K155323155335_ _K155341_))
                  (_E155322155330_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self155180_ _stx155181_ _top?155182_)
        (if (_top?155182_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self155180_ _stx155181_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx155181_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self155187_ _stx155188_)
        (let ((_top?155190_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self155187_
           _stx155188_
           _top?155190_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g160843_
        (let ((_g160842_ (##length _g160843_)))
          (cond ((##fx= _g160842_ 2)
                 (apply (lambda (_self155187_ _stx155188_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self155187_
                           _stx155188_))
                        _g160843_))
                ((##fx= _g160842_ 3)
                 (apply (lambda (_self155192_ _stx155193_ _top?155194_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self155192_
                           _stx155193_
                           _top?155194_))
                        _g160843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g160843_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self155054_ _stx155055_)
        (gx#top-special-form::apply-macro-expander__%
         _self155054_
         _stx155055_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self154879_ _stx154880_)
        (let* ((_self154881154887_ _self154879_)
               (_E154883154891_
                (lambda () (error '"No clause matching" _self154881154887_)))
               (_K154884154924_
                (lambda (_id154894_)
                  (let* ((_e154895154902_ _stx154880_)
                         (_E154897154906_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e154895154902_)))
                         (_E154896154920_
                          (lambda ()
                            (if (gx#stx-pair? _e154895154902_)
                                (let ((_e154898154910_
                                       (gx#syntax-e _e154895154902_)))
                                  (let ((_hd154899154913_
                                         (##car _e154898154910_))
                                        (_tl154900154915_
                                         (##cdr _e154898154910_)))
                                    (let ((_body154918_ _tl154900154915_))
                                      (if '#t
                                          (gx#core-cons
                                           _id154894_
                                           _body154918_)
                                          (_E154897154906_)))))
                                (_E154897154906_)))))
                    (_E154896154920_)))))
          (if (##structure-instance-of?
               _self154881154887_
               'gx#rename-macro-expander::t)
              (let* ((_e154885154927_
                      (##unchecked-structure-ref
                       _self154881154887_
                       '1
                       gx#expander::t
                       '#f))
                     (_id154930_ _e154885154927_))
                (_K154884154924_ _id154930_))
              (_E154883154891_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self154705_ _stx154706_ _method154707_)
        (let* ((_self154708154716_ _self154705_)
               (_E154710154720_
                (lambda () (error '"No clause matching" _self154708154716_)))
               (_K154711154727_
                (lambda (_phi154723_ _ctx154724_ _K154725_)
                  (gx#core-apply-user-macro
                   _K154725_
                   _stx154706_
                   _ctx154724_
                   _phi154723_
                   _method154707_))))
          (if (##structure-instance-of?
               _self154708154716_
               'gx#macro-expander::t)
              (let* ((_e154712154730_
                      (##unchecked-structure-ref
                       _self154708154716_
                       '1
                       gx#expander::t
                       '#f))
                     (_K154733_ _e154712154730_)
                     (_e154713154735_
                      (##unchecked-structure-ref
                       _self154708154716_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx154738_ _e154713154735_)
                     (_e154714154740_
                      (##unchecked-structure-ref
                       _self154708154716_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi154743_ _e154714154740_))
                (_K154711154727_ _phi154743_ _ctx154738_ _K154733_))
              (_E154710154720_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self154748_ _stx154749_)
        (let ((_method154751_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self154748_
           _stx154749_
           _method154751_))))
    (define gx#core-apply-user-expander
      (lambda _g160845_
        (let ((_g160844_ (##length _g160845_)))
          (cond ((##fx= _g160844_ 2)
                 (apply (lambda (_self154748_ _stx154749_)
                          (gx#core-apply-user-expander__0
                           _self154748_
                           _stx154749_))
                        _g160845_))
                ((##fx= _g160844_ 3)
                 (apply (lambda (_self154753_ _stx154754_ _method154755_)
                          (gx#core-apply-user-expander__%
                           _self154753_
                           _stx154754_
                           _method154755_))
                        _g160845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g160845_))))))
    (define gx#core-apply-user-macro
      (lambda (_K154695_ _stx154696_ _ctx154697_ _phi154698_ _method154699_)
        (let ((_mark154701_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx154697_
                _phi154698_
                _stx154696_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K154695_
               (gx#stx-apply-mark _stx154696_ _mark154701_)
               _method154699_)
              _mark154701_))
           gx#current-expander-marks
           (cons _mark154701_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx154547_ _phi154548_ _ctx154549_)
        (let _lp154551_ ((_bind154553_
                          (gx#core-resolve-identifier__%
                           _stx154547_
                           _phi154548_
                           _ctx154549_)))
          (if (##structure-direct-instance-of?
               _bind154553_
               'gx#import-binding::t)
              (_lp154551_
               (##unchecked-structure-ref
                _bind154553_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind154553_
                   'gx#alias-binding::t)
                  (_lp154551_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind154553_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi154548_
                    _ctx154549_))
                  _bind154553_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx154558_)
        (let* ((_phi154560_ (gx#current-expander-phi))
               (_ctx154562_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx154558_ _phi154560_ _ctx154562_))))
    (define gx#resolve-identifier__1
      (lambda (_stx154564_ _phi154565_)
        (let ((_ctx154567_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx154564_ _phi154565_ _ctx154567_))))
    (define gx#resolve-identifier
      (lambda _g160847_
        (let ((_g160846_ (##length _g160847_)))
          (cond ((##fx= _g160846_ 1)
                 (apply (lambda (_stx154558_)
                          (gx#resolve-identifier__0 _stx154558_))
                        _g160847_))
                ((##fx= _g160846_ 2)
                 (apply (lambda (_stx154564_ _phi154565_)
                          (gx#resolve-identifier__1 _stx154564_ _phi154565_))
                        _g160847_))
                ((##fx= _g160846_ 3)
                 (apply (lambda (_stx154569_ _phi154570_ _ctx154571_)
                          (gx#resolve-identifier__%
                           _stx154569_
                           _phi154570_
                           _ctx154571_))
                        _g160847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g160847_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx154505_ _val154506_ _rebind?154507_ _phi154508_ _ctx154509_)
        (let ((_rebind?154511_
               (if (not _rebind?154507_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?154507_) _rebind?154507_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx154505_)
           _val154506_
           _rebind?154511_
           _phi154508_
           _ctx154509_))))
    (define gx#bind-identifier!__0
      (lambda (_stx154516_ _val154517_)
        (let* ((_rebind?154519_ '#f)
               (_phi154521_ (gx#current-expander-phi))
               (_ctx154523_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx154516_
           _val154517_
           _rebind?154519_
           _phi154521_
           _ctx154523_))))
    (define gx#bind-identifier!__1
      (lambda (_stx154525_ _val154526_ _rebind?154527_)
        (let* ((_phi154529_ (gx#current-expander-phi))
               (_ctx154531_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx154525_
           _val154526_
           _rebind?154527_
           _phi154529_
           _ctx154531_))))
    (define gx#bind-identifier!__2
      (lambda (_stx154533_ _val154534_ _rebind?154535_ _phi154536_)
        (let ((_ctx154538_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx154533_
           _val154534_
           _rebind?154535_
           _phi154536_
           _ctx154538_))))
    (define gx#bind-identifier!
      (lambda _g160849_
        (let ((_g160848_ (##length _g160849_)))
          (cond ((##fx= _g160848_ 2)
                 (apply (lambda (_stx154516_ _val154517_)
                          (gx#bind-identifier!__0 _stx154516_ _val154517_))
                        _g160849_))
                ((##fx= _g160848_ 3)
                 (apply (lambda (_stx154525_ _val154526_ _rebind?154527_)
                          (gx#bind-identifier!__1
                           _stx154525_
                           _val154526_
                           _rebind?154527_))
                        _g160849_))
                ((##fx= _g160848_ 4)
                 (apply (lambda (_stx154533_
                                 _val154534_
                                 _rebind?154535_
                                 _phi154536_)
                          (gx#bind-identifier!__2
                           _stx154533_
                           _val154534_
                           _rebind?154535_
                           _phi154536_))
                        _g160849_))
                ((##fx= _g160848_ 5)
                 (apply (lambda (_stx154540_
                                 _val154541_
                                 _rebind?154542_
                                 _phi154543_
                                 _ctx154544_)
                          (gx#bind-identifier!__%
                           _stx154540_
                           _val154541_
                           _rebind?154542_
                           _phi154543_
                           _ctx154544_))
                        _g160849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g160849_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx154477_ _phi154478_ _ctx154479_)
        (let _lp154481_ ((_e154483_ _stx154477_)
                         (_marks154484_ (gx#current-expander-marks)))
          (if (symbol? _e154483_)
              (gx#core-resolve-binding
               _e154483_
               _phi154478_
               _phi154478_
               _ctx154479_
               (reverse _marks154484_))
              (if (gx#identifier-quote? _e154483_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e154483_ '1 gx#AST::t '#f)
                   _phi154478_
                   '0
                   (##unchecked-structure-ref
                    _e154483_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e154483_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e154483_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e154483_ '1 gx#AST::t '#f)
                       _phi154478_
                       _phi154478_
                       _ctx154479_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e154483_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks154484_))
                      (if (##structure-direct-instance-of?
                           _e154483_
                           'gx#syntax-wrap::t)
                          (_lp154481_
                           (##unchecked-structure-ref
                            _e154483_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e154483_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks154484_))
                          (if (##structure-instance-of?
                               _e154483_
                               'gerbil#AST::t)
                              (_lp154481_
                               (##unchecked-structure-ref
                                _e154483_
                                '1
                                gx#AST::t
                                '#f)
                               _marks154484_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx154477_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx154489_)
        (let* ((_phi154491_ (gx#current-expander-phi))
               (_ctx154493_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx154489_
           _phi154491_
           _ctx154493_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx154495_ _phi154496_)
        (let ((_ctx154498_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx154495_
           _phi154496_
           _ctx154498_))))
    (define gx#core-resolve-identifier
      (lambda _g160851_
        (let ((_g160850_ (##length _g160851_)))
          (cond ((##fx= _g160850_ 1)
                 (apply (lambda (_stx154489_)
                          (gx#core-resolve-identifier__0 _stx154489_))
                        _g160851_))
                ((##fx= _g160850_ 2)
                 (apply (lambda (_stx154495_ _phi154496_)
                          (gx#core-resolve-identifier__1
                           _stx154495_
                           _phi154496_))
                        _g160851_))
                ((##fx= _g160850_ 3)
                 (apply (lambda (_stx154500_ _phi154501_ _ctx154502_)
                          (gx#core-resolve-identifier__%
                           _stx154500_
                           _phi154501_
                           _ctx154502_))
                        _g160851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g160851_))))))
    (define gx#core-resolve-binding
      (lambda (_id154390_
               _phi154391_
               _src-phi154392_
               _ctx154393_
               _marks154394_)
        (letrec ((_resolve154396_
                  (lambda (_ctx154464_ _src-phi154465_ _key154466_)
                    (let _lp154468_ ((_ctx154470_
                                      (gx#core-context-shift
                                       _ctx154464_
                                       _phi154391_))
                                     (_dphi154471_
                                      (fx- _phi154391_ _src-phi154465_)))
                      (let ((_$e154473_
                             (gx#core-context-resolve
                              _ctx154470_
                              _key154466_)))
                        (if _$e154473_
                            (values _$e154473_)
                            (if (fxzero? _dphi154471_)
                                '#f
                                (if (fxpositive? _dphi154471_)
                                    (_lp154468_
                                     (gx#core-context-shift _ctx154470_ '-1)
                                     (fx- _dphi154471_ '1))
                                    (_lp154468_
                                     (gx#core-context-shift _ctx154470_ '1)
                                     (fx+ _dphi154471_ '1))))))))))
          (let _lp154398_ ((_ctx154400_ _ctx154393_)
                           (_src-phi154401_ _src-phi154392_)
                           (_rest154402_ _marks154394_))
            (let* ((_rest154403154411_ _rest154402_)
                   (_else154405154419_
                    (lambda ()
                      (_resolve154396_
                       _ctx154400_
                       _src-phi154401_
                       _id154390_)))
                   (_K154407154452_
                    (lambda (_rest154422_ _hd154423_)
                      (let* ((_hd154424154430_ _hd154423_)
                             (_E154426154434_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd154424154430_)))
                             (_K154427154444_
                              (lambda (_subst154437_)
                                (let ((_$e154441_
                                       (let ((_key154439_
                                              (if _subst154437_
                                                  (hash-get
                                                   _subst154437_
                                                   _id154390_)
                                                  '#f)))
                                         (if _key154439_
                                             (_resolve154396_
                                              _ctx154400_
                                              _src-phi154401_
                                              _key154439_)
                                             '#f))))
                                  (if _$e154441_
                                      _$e154441_
                                      (_lp154398_
                                       (##unchecked-structure-ref
                                        _hd154423_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd154423_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest154422_))))))
                        (if (##structure-instance-of?
                             _hd154424154430_
                             'gx#expander-mark::t)
                            (let* ((_e154428154447_
                                    (##unchecked-structure-ref
                                     _hd154424154430_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst154450_ _e154428154447_))
                              (_K154427154444_ _subst154450_))
                            (_E154426154434_))))))
              (if (##pair? _rest154403154411_)
                  (let ((_hd154408154455_ (##car _rest154403154411_))
                        (_tl154409154457_ (##cdr _rest154403154411_)))
                    (let* ((_hd154460_ _hd154408154455_)
                           (_rest154462_ _tl154409154457_))
                      (_K154407154452_ _rest154462_ _hd154460_)))
                  (_else154405154419_)))))))
    (define gx#core-bind!__%
      (lambda (_key154266_ _val154267_ _rebind?154268_ _phi154269_ _ctx154270_)
        (letrec ((_update-binding154272_
                  (lambda (_xval154343_)
                    (if (or (_rebind?154268_
                             _ctx154270_
                             _xval154343_
                             _val154267_)
                            (and (##structure-direct-instance-of?
                                  _xval154343_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval154343_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val154267_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val154267_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval154343_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val154267_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val154267_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval154343_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val154267_
                        (if (and (##structure-direct-instance-of?
                                  _val154267_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val154267_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval154343_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val154267_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval154343_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval154343_
                            (if (and (##structure-direct-instance-of?
                                      _val154267_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval154343_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key154266_
                                 (cons (##unchecked-structure-ref
                                        _val154267_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val154267_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval154343_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval154343_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval154343_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval154343_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key154266_
                                 _val154267_
                                 _xval154343_))))))
                 (_gensubst154273_
                  (lambda (_subst154338_ _id154339_)
                    (let ((_eid154341_
                           (gensym (if (uninterned-symbol? _id154339_)
                                       '%
                                       _id154339_))))
                      (hash-put! _subst154338_ _id154339_ _eid154341_)
                      _eid154341_)))
                 (_subst!154274_
                  (lambda (_key154276_)
                    (let* ((_key154277154285_ _key154276_)
                           (_else154279154293_ (lambda () _key154276_))
                           (_K154281154326_
                            (lambda (_mark154296_ _id154297_)
                              (let* ((_mark154298154304_ _mark154296_)
                                     (_E154300154308_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark154298154304_)))
                                     (_K154301154318_
                                      (lambda (_subst154311_)
                                        (if (not _subst154311_)
                                            (let ((_subst154313_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark154296_
                                               _subst154313_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst154273_
                                               _subst154313_
                                               _id154297_))
                                            (let ((_$e154315_
                                                   (hash-get
                                                    _subst154311_
                                                    _id154297_)))
                                              (if _$e154315_
                                                  (values _$e154315_)
                                                  (_gensubst154273_
                                                   _subst154311_
                                                   _id154297_)))))))
                                (if (##structure-instance-of?
                                     _mark154298154304_
                                     'gx#expander-mark::t)
                                    (let* ((_e154302154321_
                                            (##unchecked-structure-ref
                                             _mark154298154304_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst154324_ _e154302154321_))
                                      (_K154301154318_ _subst154324_))
                                    (_E154300154308_))))))
                      (if (##pair? _key154277154285_)
                          (let ((_hd154282154329_ (##car _key154277154285_))
                                (_tl154283154331_ (##cdr _key154277154285_)))
                            (let* ((_id154334_ _hd154282154329_)
                                   (_mark154336_ _tl154283154331_))
                              (_K154281154326_ _mark154336_ _id154334_)))
                          (_else154279154293_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx154270_ _phi154269_)
           (_subst!154274_ _key154266_)
           _val154267_
           _update-binding154272_))))
    (define gx#core-bind!__0
      (lambda (_key154360_ _val154361_)
        (let* ((_rebind?154363_ false)
               (_phi154365_ (gx#current-expander-phi))
               (_ctx154367_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key154360_
           _val154361_
           _rebind?154363_
           _phi154365_
           _ctx154367_))))
    (define gx#core-bind!__1
      (lambda (_key154369_ _val154370_ _rebind?154371_)
        (let* ((_phi154373_ (gx#current-expander-phi))
               (_ctx154375_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key154369_
           _val154370_
           _rebind?154371_
           _phi154373_
           _ctx154375_))))
    (define gx#core-bind!__2
      (lambda (_key154377_ _val154378_ _rebind?154379_ _phi154380_)
        (let ((_ctx154382_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key154377_
           _val154378_
           _rebind?154379_
           _phi154380_
           _ctx154382_))))
    (define gx#core-bind!
      (lambda _g160853_
        (let ((_g160852_ (##length _g160853_)))
          (cond ((##fx= _g160852_ 2)
                 (apply (lambda (_key154360_ _val154361_)
                          (gx#core-bind!__0 _key154360_ _val154361_))
                        _g160853_))
                ((##fx= _g160852_ 3)
                 (apply (lambda (_key154369_ _val154370_ _rebind?154371_)
                          (gx#core-bind!__1
                           _key154369_
                           _val154370_
                           _rebind?154371_))
                        _g160853_))
                ((##fx= _g160852_ 4)
                 (apply (lambda (_key154377_
                                 _val154378_
                                 _rebind?154379_
                                 _phi154380_)
                          (gx#core-bind!__2
                           _key154377_
                           _val154378_
                           _rebind?154379_
                           _phi154380_))
                        _g160853_))
                ((##fx= _g160852_ 5)
                 (apply (lambda (_key154384_
                                 _val154385_
                                 _rebind?154386_
                                 _phi154387_
                                 _ctx154388_)
                          (gx#core-bind!__%
                           _key154384_
                           _val154385_
                           _rebind?154386_
                           _phi154387_
                           _ctx154388_))
                        _g160853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g160853_))))))
    (define gx#core-identifier-key
      (lambda (_stx154200_)
        (if (symbol? _stx154200_)
            (let* ((_g154201154209_ (gx#current-expander-marks))
                   (_else154203154217_ (lambda () _stx154200_))
                   (_K154205154222_
                    (lambda (_hd154220_) (cons _stx154200_ _hd154220_))))
              (if (##pair? _g154201154209_)
                  (let* ((_hd154206154225_ (##car _g154201154209_))
                         (_hd154228_ _hd154206154225_))
                    (_K154205154222_ _hd154228_))
                  (_else154203154217_)))
            (if (gx#identifier? _stx154200_)
                (let* ((_id154230_ (gx#syntax-local-unwrap _stx154200_))
                       (_eid154232_ (gx#stx-e _id154230_))
                       (_marks154234_ (gx#stx-identifier-marks* _id154230_)))
                  (let* ((_marks154236154244_ _marks154234_)
                         (_else154238154252_ (lambda () _eid154232_))
                         (_K154240154257_
                          (lambda (_hd154255_) (cons _eid154232_ _hd154255_))))
                    (if (##pair? _marks154236154244_)
                        (let* ((_hd154241154260_ (##car _marks154236154244_))
                               (_hd154263_ _hd154241154260_))
                          (_K154240154257_ _hd154263_))
                        (_else154238154252_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx154200_)))))
    (define gx#core-context-shift
      (lambda (_ctx154145_ _phi154146_)
        (letrec ((_make-phi154148_
                  (lambda (_super154198_)
                    (let ((__obj160824
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj160824
                       (gensym 'phi)
                       _super154198_)
                      __obj160824)))
                 (_make-phi/up154149_
                  (lambda (_ctx154193_ _super154194_)
                    (let ((_ctx+1154196_ (_make-phi154148_ _super154194_)))
                      (##unchecked-structure-set!
                       _ctx154193_
                       _ctx+1154196_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1154196_
                       _ctx154193_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1154196_)))
                 (_make-phi/down154150_
                  (lambda (_ctx154188_ _super154189_)
                    (let ((_ctx-1154191_ (_make-phi154148_ _super154189_)))
                      (##unchecked-structure-set!
                       _ctx-1154191_
                       _ctx154188_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx154188_
                       _ctx-1154191_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1154191_)))
                 (_shift154151_
                  (lambda (_ctx154172_
                           _delta154173_
                           _make-delta-context154174_
                           _phi154175_
                           _K154176_)
                    (let ((_$e154178_
                           (##unchecked-structure-ref
                            _ctx154172_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e154178_
                          ((lambda (_super154181_)
                             (let* ((_super154183_
                                     (_K154176_ _super154181_ _delta154173_))
                                    (_ctx+d154185_
                                     (_make-delta-context154174_
                                      _ctx154172_
                                      _super154183_)))
                               (_K154176_
                                _ctx+d154185_
                                (fx- _phi154175_ _delta154173_))))
                           _$e154178_)
                          (error '"Bad context" _ctx154172_))))))
          (let _K154153_ ((_ctx154155_ _ctx154145_) (_phi154156_ _phi154146_))
            (if (fxzero? _phi154156_)
                _ctx154155_
                (if (fx> (##vector-length _ctx154155_) '3)
                    (if (fxpositive? _phi154156_)
                        (let ((_$e154158_
                               (##unchecked-structure-ref
                                _ctx154155_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e154158_
                              ((lambda (_g154160154162_)
                                 (_K154153_
                                  _g154160154162_
                                  (fx- _phi154156_ '1)))
                               _$e154158_)
                              (_shift154151_
                               _ctx154155_
                               '1
                               _make-phi/up154149_
                               _phi154156_
                               _K154153_)))
                        (let ((_$e154165_
                               (##unchecked-structure-ref
                                _ctx154155_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e154165_
                              ((lambda (_g154167154169_)
                                 (_K154153_
                                  _g154167154169_
                                  (fx+ _phi154156_ '1)))
                               _$e154165_)
                              (_shift154151_
                               _ctx154155_
                               '-1
                               _make-phi/down154150_
                               _phi154156_
                               _K154153_))))
                    _ctx154155_))))))
    (define gx#core-context-get
      (lambda (_ctx154142_ _key154143_)
        (hash-get
         (##unchecked-structure-ref _ctx154142_ '2 gx#expander-context::t '#f)
         _key154143_)))
    (define gx#core-context-put!
      (lambda (_ctx154138_ _key154139_ _val154140_)
        (hash-put!
         (##unchecked-structure-ref _ctx154138_ '2 gx#expander-context::t '#f)
         _key154139_
         _val154140_)))
    (define gx#core-context-resolve
      (lambda (_ctx154125_ _key154126_)
        (let _lp154128_ ((_ctx154130_ _ctx154125_))
          (let ((_$e154132_ (gx#core-context-get _ctx154130_ _key154126_)))
            (if _$e154132_
                (values _$e154132_)
                (let ((_$e154135_
                       (if (fx> (##vector-length _ctx154130_) '3)
                           (##unchecked-structure-ref
                            _ctx154130_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e154135_ (_lp154128_ _$e154135_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx154115_ _key154116_ _val154117_ _rebind154118_)
        (let ((_$e154120_ (gx#core-context-get _ctx154115_ _key154116_)))
          (if _$e154120_
              ((lambda (_xval154123_)
                 (gx#core-context-put!
                  _ctx154115_
                  _key154116_
                  (_rebind154118_ _xval154123_)))
               _$e154120_)
              (gx#core-context-put! _ctx154115_ _key154116_ _val154117_)))))
    (define gx#core-context-top__%
      (lambda (_ctx154093_ _stop?154094_)
        (let _lp154096_ ((_ctx154098_ _ctx154093_))
          (if (_stop?154094_ _ctx154098_)
              _ctx154098_
              (if (##structure-instance-of? _ctx154098_ 'gx#context-phi::t)
                  (_lp154096_
                   (##unchecked-structure-ref
                    _ctx154098_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx154104_ (gx#current-expander-context))
               (_stop?154106_ gx#top-context?))
          (gx#core-context-top__% _ctx154104_ _stop?154106_))))
    (define gx#core-context-top__1
      (lambda (_ctx154108_)
        (let ((_stop?154110_ gx#top-context?))
          (gx#core-context-top__% _ctx154108_ _stop?154110_))))
    (define gx#core-context-top
      (lambda _g160855_
        (let ((_g160854_ (##length _g160855_)))
          (cond ((##fx= _g160854_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g160855_))
                ((##fx= _g160854_ 1)
                 (apply (lambda (_ctx154108_)
                          (gx#core-context-top__1 _ctx154108_))
                        _g160855_))
                ((##fx= _g160854_ 2)
                 (apply (lambda (_ctx154112_ _stop?154113_)
                          (gx#core-context-top__% _ctx154112_ _stop?154113_))
                        _g160855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g160855_))))))
    (define gx#core-context-root__%
      (lambda (_ctx154078_)
        (let _lp154080_ ((_ctx154082_ _ctx154078_))
          (if (##structure-instance-of? _ctx154082_ 'gx#context-phi::t)
              (_lp154080_
               (##unchecked-structure-ref
                _ctx154082_
                '3
                gx#phi-context::t
                '#f))
              _ctx154082_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx154088_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx154088_))))
    (define gx#core-context-root
      (lambda _g160857_
        (let ((_g160856_ (##length _g160857_)))
          (cond ((##fx= _g160856_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g160857_))
                ((##fx= _g160856_ 1)
                 (apply (lambda (_ctx154090_)
                          (gx#core-context-root__% _ctx154090_))
                        _g160857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g160857_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx154059_ . __154056154060_)
        (let ((_$e154063_ (gx#current-expander-allow-rebind?)))
          (if _$e154063_
              _$e154063_
              (if (##structure-instance-of? _ctx154059_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx154059_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx154059_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx154070_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx154070_))))
    (define gx#core-context-rebind?
      (lambda _g160859_
        (let ((_g160858_ (##length _g160859_)))
          (cond ((##fx= _g160858_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g160859_))
                ((##fx= _g160858_ 1)
                 (apply (lambda (_ctx154072_)
                          (gx#core-context-rebind?__% _ctx154072_))
                        _g160859_))
                ((##fx>= _g160858_ 1)
                 (apply gx#core-context-rebind?__% _g160859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g160859_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx154042_)
        (let ((_$e154044_ (gx#core-context-top__1 _ctx154042_)))
          (if _$e154044_
              ((lambda (_ctx154047_)
                 (if (##structure-instance-of?
                      _ctx154047_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx154047_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e154044_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx154053_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx154053_))))
    (define gx#core-context-namespace
      (lambda _g160861_
        (let ((_g160860_ (##length _g160861_)))
          (cond ((##fx= _g160860_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g160861_))
                ((##fx= _g160860_ 1)
                 (apply (lambda (_ctx154055_)
                          (gx#core-context-namespace__% _ctx154055_))
                        _g160861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g160861_))))))
    (define gx#expander-binding?__%
      (lambda (_bind154028_ _is?154029_)
        (if (##structure-direct-instance-of?
             _bind154028_
             'gx#syntax-binding::t)
            (_is?154029_
             (##unchecked-structure-ref
              _bind154028_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind154034_)
        (let ((_is?154036_ gx#expander?))
          (gx#expander-binding?__% _bind154034_ _is?154036_))))
    (define gx#expander-binding?
      (lambda _g160863_
        (let ((_g160862_ (##length _g160863_)))
          (cond ((##fx= _g160862_ 1)
                 (apply (lambda (_bind154034_)
                          (gx#expander-binding?__0 _bind154034_))
                        _g160863_))
                ((##fx= _g160862_ 2)
                 (apply (lambda (_bind154038_ _is?154039_)
                          (gx#expander-binding?__% _bind154038_ _is?154039_))
                        _g160863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g160863_))))))
    (define gx#core-expander-binding?
      (lambda (_bind154025_)
        (gx#expander-binding?__% _bind154025_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind154023_)
        (gx#expander-binding?__% _bind154023_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind154017_)
        (letrec ((_direct-special-form?154019_
                  (lambda (_obj154021_)
                    (##structure-direct-instance-of?
                     _obj154021_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind154017_
           _direct-special-form?154019_))))
    (define gx#special-form-binding?
      (lambda (_bind154015_)
        (gx#expander-binding?__% _bind154015_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind154006_)
        (letrec ((_feature?154008_
                  (lambda (_e154010_)
                    (let ((_$e154012_
                           (##structure-instance-of?
                            _e154010_
                            'gx#feature-expander::t)))
                      (if _$e154012_
                          _$e154012_
                          (##structure-instance-of?
                           _e154010_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind154006_ _feature?154008_))))
    (define gx#private-feature-binding?
      (lambda (_bind154004_)
        (gx#expander-binding?__% _bind154004_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id153991_ _bound?153992_)
        (if (gx#identifier? _id153991_)
            (_bound?153992_ (gx#resolve-identifier__0 _id153991_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id153997_)
        (let ((_bound?153999_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id153997_ _bound?153999_))))
    (define gx#core-bound-identifier?
      (lambda _g160865_
        (let ((_g160864_ (##length _g160865_)))
          (cond ((##fx= _g160864_ 1)
                 (apply (lambda (_id153997_)
                          (gx#core-bound-identifier?__0 _id153997_))
                        _g160865_))
                ((##fx= _g160864_ 2)
                 (apply (lambda (_id154001_ _bound?154002_)
                          (gx#core-bound-identifier?__%
                           _id154001_
                           _bound?154002_))
                        _g160865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g160865_))))))
    (define gx#core-identifier=?
      (lambda (_x153981_ _y153982_)
        (letrec ((_y=?153984_
                  (lambda (_xid153988_)
                    ((if (list? _y153982_) memq eq?) _xid153988_ _y153982_))))
          (let ((_bind153986_ (gx#resolve-identifier__0 _x153981_)))
            (if (##structure-instance-of? _bind153986_ 'gx#binding::t)
                (_y=?153984_
                 (##unchecked-structure-ref _bind153986_ '1 gx#binding::t '#f))
                (_y=?153984_ (gx#stx-e _x153981_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e153979_)
        (if (interned-symbol? _e153979_)
            (string-index (symbol->string _e153979_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx153934_ _src153935_ _ctx153936_ _marks153937_)
        (if (##structure? _stx153934_)
            (let ((_$e153939_ (gx#sealed-syntax-unwrap _stx153934_)))
              (if _$e153939_
                  (values _$e153939_)
                  (if (gx#identifier? _stx153934_)
                      (let ((_id153942_
                             (gx#stx-unwrap__% _stx153934_ _marks153937_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id153942_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e153944_
                                (##unchecked-structure-ref
                                 _id153942_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e153944_ _$e153944_ _src153935_))
                         _ctx153936_
                         (##unchecked-structure-ref
                          _id153942_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx153934_)
                       (let ((_$e153947_ (gx#stx-source _stx153934_)))
                         (if _$e153947_ _$e153947_ _src153935_))
                       _ctx153936_
                       (reverse _marks153937_)))))
            (##structure
             gx#syntax-quote::t
             _stx153934_
             _src153935_
             _ctx153936_
             (reverse _marks153937_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx153953_)
        (let* ((_src153955_ '#f)
               (_ctx153957_ (gx#current-expander-context))
               (_marks153959_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx153953_
           _src153955_
           _ctx153957_
           _marks153959_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx153961_ _src153962_)
        (let* ((_ctx153964_ (gx#current-expander-context))
               (_marks153966_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx153961_
           _src153962_
           _ctx153964_
           _marks153966_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx153968_ _src153969_ _ctx153970_)
        (let ((_marks153972_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx153968_
           _src153969_
           _ctx153970_
           _marks153972_))))
    (define gx#core-quote-syntax
      (lambda _g160867_
        (let ((_g160866_ (##length _g160867_)))
          (cond ((##fx= _g160866_ 1)
                 (apply (lambda (_stx153953_)
                          (gx#core-quote-syntax__0 _stx153953_))
                        _g160867_))
                ((##fx= _g160866_ 2)
                 (apply (lambda (_stx153961_ _src153962_)
                          (gx#core-quote-syntax__1 _stx153961_ _src153962_))
                        _g160867_))
                ((##fx= _g160866_ 3)
                 (apply (lambda (_stx153968_ _src153969_ _ctx153970_)
                          (gx#core-quote-syntax__2
                           _stx153968_
                           _src153969_
                           _ctx153970_))
                        _g160867_))
                ((##fx= _g160866_ 4)
                 (apply (lambda (_stx153974_
                                 _src153975_
                                 _ctx153976_
                                 _marks153977_)
                          (gx#core-quote-syntax__%
                           _stx153974_
                           _src153975_
                           _ctx153976_
                           _marks153977_))
                        _g160867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g160867_))))))
    (define gx#core-cons
      (lambda (_hd153930_ _tl153931_)
        (cons (gx#core-quote-syntax__0 _hd153930_) _tl153931_)))
    (define gx#core-list
      (lambda (_hd153927_ . _rest153928_)
        (cons (gx#core-quote-syntax__0 _hd153927_) _rest153928_)))
    (define gx#core-cons*
      (lambda (_hd153924_ . _rest153925_)
        (apply cons* (gx#core-quote-syntax__0 _hd153924_) _rest153925_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path153898_ _rel153899_)
        (let ((_path153911_ (gx#stx-e _stx-path153898_))
              (_reldir153912_
               (let _lp153901_ ((_relsrc153903_
                                 (let ((_$e153908_
                                        (gx#stx-source _stx-path153898_)))
                                   (if _$e153908_ _$e153908_ _rel153899_))))
                 (if (##structure-instance-of? _relsrc153903_ 'gerbil#AST::t)
                     (_lp153901_
                      (let ((_$e153905_ (gx#stx-source _relsrc153903_)))
                        (if _$e153905_ _$e153905_ (gx#stx-e _relsrc153903_))))
                     (if (source-location-path? _relsrc153903_)
                         (path-directory (source-location-path _relsrc153903_))
                         (if (string? _relsrc153903_)
                             (path-directory _relsrc153903_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path153911_ (path-normalize _reldir153912_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path153917_)
        (let ((_rel153919_ '#f))
          (gx#core-resolve-path__% _stx-path153917_ _rel153919_))))
    (define gx#core-resolve-path
      (lambda _g160869_
        (let ((_g160868_ (##length _g160869_)))
          (cond ((##fx= _g160868_ 1)
                 (apply (lambda (_stx-path153917_)
                          (gx#core-resolve-path__0 _stx-path153917_))
                        _g160869_))
                ((##fx= _g160868_ 2)
                 (apply (lambda (_stx-path153921_ _rel153922_)
                          (gx#core-resolve-path__%
                           _stx-path153921_
                           _rel153922_))
                        _g160869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g160869_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr153854_ _ctx153855_)
        (let* ((_repr153856153863_ _repr153854_)
               (_E153858153867_
                (lambda () (error '"No clause matching" _repr153856153863_)))
               (_K153859153875_
                (lambda (_subs153870_ _phi153871_)
                  (let ((_subst153873_
                         (if (not (null? _subs153870_))
                             (list->hash-table-eq _subs153870_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst153873_
                     _ctx153855_
                     _phi153871_
                     '#f)))))
          (if (##pair? _repr153856153863_)
              (let ((_hd153860153878_ (##car _repr153856153863_))
                    (_tl153861153880_ (##cdr _repr153856153863_)))
                (let* ((_phi153883_ _hd153860153878_)
                       (_subs153885_ _tl153861153880_))
                  (_K153859153875_ _subs153885_ _phi153883_)))
              (_E153858153867_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr153890_)
        (let ((_ctx153892_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr153890_ _ctx153892_))))
    (define gx#core-deserialize-mark
      (lambda _g160871_
        (let ((_g160870_ (##length _g160871_)))
          (cond ((##fx= _g160870_ 1)
                 (apply (lambda (_repr153890_)
                          (gx#core-deserialize-mark__0 _repr153890_))
                        _g160871_))
                ((##fx= _g160870_ 2)
                 (apply (lambda (_repr153894_ _ctx153895_)
                          (gx#core-deserialize-mark__%
                           _repr153894_
                           _ctx153895_))
                        _g160871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g160871_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx153851_)
        (gx#stx-rewrap _stx153851_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx153849_)
        (gx#stx-unwrap__% _stx153849_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx153819_)
        (let* ((_g153820153828_ (gx#current-expander-marks))
               (_else153822153836_ (lambda () _stx153819_))
               (_K153824153841_
                (lambda (_hd153839_)
                  (gx#stx-apply-mark _stx153819_ _hd153839_))))
          (if (##pair? _g153820153828_)
              (let* ((_hd153825153844_ (##car _g153820153828_))
                     (_hd153847_ _hd153825153844_))
                (_K153824153841_ _hd153847_))
              (_else153822153836_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx153804_ _E153805_)
        (let ((_bind153807_ (gx#resolve-identifier__0 _stx153804_)))
          (if (##structure-direct-instance-of?
               _bind153807_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind153807_
               '4
               gx#syntax-binding::t
               '#f)
              (_E153805_ _stx153804_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx153812_)
        (let ((_E153814_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx153812_ _E153814_))))
    (define gx#syntax-local-e
      (lambda _g160873_
        (let ((_g160872_ (##length _g160873_)))
          (cond ((##fx= _g160872_ 1)
                 (apply (lambda (_stx153812_)
                          (gx#syntax-local-e__0 _stx153812_))
                        _g160873_))
                ((##fx= _g160872_ 2)
                 (apply (lambda (_stx153816_ _E153817_)
                          (gx#syntax-local-e__% _stx153816_ _E153817_))
                        _g160873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g160873_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx153788_ _E153789_)
        (let ((_e153791_ (gx#syntax-local-e__% _stx153788_ _E153789_)))
          (if (##structure-instance-of? _e153791_ 'gx#expander::t)
              (##structure-ref _e153791_ '1 gx#expander::t '#f)
              _e153791_))))
    (define gx#syntax-local-value__0
      (lambda (_stx153796_)
        (let ((_E153798_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx153796_ _E153798_))))
    (define gx#syntax-local-value
      (lambda _g160875_
        (let ((_g160874_ (##length _g160875_)))
          (cond ((##fx= _g160874_ 1)
                 (apply (lambda (_stx153796_)
                          (gx#syntax-local-value__0 _stx153796_))
                        _g160875_))
                ((##fx= _g160874_ 2)
                 (apply (lambda (_stx153800_ _E153801_)
                          (gx#syntax-local-value__% _stx153800_ _E153801_))
                        _g160875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g160875_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx153785_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx153785_)))))
