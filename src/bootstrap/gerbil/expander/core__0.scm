(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708387688)
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
      (lambda _$args83685_
        (apply make-instance gx#expander-context::t _$args83685_)))
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
      (lambda _$args83682_
        (apply make-instance gx#root-context::t _$args83682_)))
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
      (lambda _$args83679_
        (apply make-instance gx#phi-context::t _$args83679_)))
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
      (lambda _$args83676_
        (apply make-instance gx#top-context::t _$args83676_)))
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
      (lambda _$args83673_
        (apply make-instance gx#module-context::t _$args83673_)))
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
      (lambda _$args83670_
        (apply make-instance gx#prelude-context::t _$args83670_)))
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
      (lambda _$args83667_
        (apply make-instance gx#local-context::t _$args83667_)))
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
      (lambda (_self83651_ _id83652_ _super83653_)
        (if (##fx< '3 (##structure-length _self83651_))
            (begin
              (##unchecked-structure-set!
               _self83651_
               _id83652_
               '1
               (##structure-type _self83651_)
               '#f)
              (##unchecked-structure-set!
               _self83651_
               (make-hash-table-eq)
               '2
               (##structure-type _self83651_)
               '#f)
              (##unchecked-structure-set!
               _self83651_
               _super83653_
               '3
               (##structure-type _self83651_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83651_
                   '3
                   (##vector-length _self83651_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self83658_ _id83659_)
        (let ((_super83661_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self83658_ _id83659_ _super83661_))))
    (define gx#phi-context:::init!
      (lambda _g83728_
        (let ((_g83727_ (##length _g83728_)))
          (cond ((##fx= _g83727_ 2)
                 (apply (lambda (_self83658_ _id83659_)
                          (gx#phi-context:::init!__0 _self83658_ _id83659_))
                        _g83728_))
                ((##fx= _g83727_ 3)
                 (apply (lambda (_self83663_ _id83664_ _super83665_)
                          (gx#phi-context:::init!__%
                           _self83663_
                           _id83664_
                           _super83665_))
                        _g83728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g83728_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self83515_ _super83516_)
        (if (##fx< '3 (##structure-length _self83515_))
            (begin
              (##unchecked-structure-set!
               _self83515_
               (gensym 'L)
               '1
               (##structure-type _self83515_)
               '#f)
              (##unchecked-structure-set!
               _self83515_
               (make-hash-table-eq)
               '2
               (##structure-type _self83515_)
               '#f)
              (##unchecked-structure-set!
               _self83515_
               _super83516_
               '3
               (##structure-type _self83515_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83515_
                   '3
                   (##vector-length _self83515_)))))
    (define gx#local-context:::init!__0
      (lambda (_self83521_)
        (let ((_super83523_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self83521_ _super83523_))))
    (define gx#local-context:::init!
      (lambda _g83730_
        (let ((_g83729_ (##length _g83730_)))
          (cond ((##fx= _g83729_ 1)
                 (apply (lambda (_self83521_)
                          (gx#local-context:::init!__0 _self83521_))
                        _g83730_))
                ((##fx= _g83729_ 2)
                 (apply (lambda (_self83525_ _super83526_)
                          (gx#local-context:::init!__%
                           _self83525_
                           _super83526_))
                        _g83730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g83730_))))))
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
      (lambda _$args83389_ (apply make-instance gx#binding::t _$args83389_)))
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
      (lambda _$args83386_
        (apply make-instance gx#runtime-binding::t _$args83386_)))
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
      (lambda _$args83383_
        (apply make-instance gx#local-binding::t _$args83383_)))
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
      (lambda _$args83380_
        (apply make-instance gx#top-binding::t _$args83380_)))
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
      (lambda _$args83377_
        (apply make-instance gx#module-binding::t _$args83377_)))
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
      (lambda _$args83374_
        (apply make-instance gx#extern-binding::t _$args83374_)))
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
      (lambda _$args83371_
        (apply make-instance gx#syntax-binding::t _$args83371_)))
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
      (lambda _$args83368_
        (apply make-instance gx#import-binding::t _$args83368_)))
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
      (lambda _$args83365_
        (apply make-instance gx#alias-binding::t _$args83365_)))
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
      (lambda _$args83362_ (apply make-instance gx#expander::t _$args83362_)))
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
      (lambda _$args83359_
        (apply make-instance gx#core-expander::t _$args83359_)))
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
      (lambda _$args83356_
        (apply make-instance gx#expression-form::t _$args83356_)))
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
      (lambda _$args83353_
        (apply make-instance gx#special-form::t _$args83353_)))
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
      (lambda _$args83350_
        (apply make-instance gx#definition-form::t _$args83350_)))
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
      (lambda _$args83347_
        (apply make-instance gx#top-special-form::t _$args83347_)))
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
      (lambda _$args83344_
        (apply make-instance gx#module-special-form::t _$args83344_)))
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
      (lambda _$args83341_
        (apply make-instance gx#feature-expander::t _$args83341_)))
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
      (lambda _$args83338_
        (apply make-instance gx#private-feature-expander::t _$args83338_)))
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
      (lambda _$args83335_
        (apply make-instance gx#reserved-expander::t _$args83335_)))
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
      (lambda _$args83332_
        (apply make-instance gx#macro-expander::t _$args83332_)))
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
      (lambda _$args83329_
        (apply make-instance gx#rename-macro-expander::t _$args83329_)))
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
      (lambda _$args83326_
        (apply make-instance gx#user-expander::t _$args83326_)))
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
      (lambda _$args83323_
        (apply make-instance gx#expander-mark::t _$args83323_)))
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
      (lambda (_ctx83308_ _message83309_ _stx83310_ . _details83311_)
        (let ((_ctx83321_
               (let ((_$e83313_ _ctx83308_))
                 (if _$e83313_
                     _$e83313_
                     (let ((_$e83316_ (gx#core-context-top__0)))
                       (if _$e83316_
                           ((lambda (_ctx83319_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx83319_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e83316_)
                           '#f))))))
          (raise (make-syntax-error
                  _message83309_
                  (cons _stx83310_ _details83311_)
                  _ctx83321_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx83295_ _expression?83296_)
        (gx#eval-syntax* (gx#core-expand__% _stx83295_ _expression?83296_))))
    (define gx#eval-syntax__0
      (lambda (_stx83301_)
        (let ((_expression?83303_ '#f))
          (gx#eval-syntax__% _stx83301_ _expression?83303_))))
    (define gx#eval-syntax
      (lambda _g83732_
        (let ((_g83731_ (##length _g83732_)))
          (cond ((##fx= _g83731_ 1)
                 (apply (lambda (_stx83301_) (gx#eval-syntax__0 _stx83301_))
                        _g83732_))
                ((##fx= _g83731_ 2)
                 (apply (lambda (_stx83305_ _expression?83306_)
                          (gx#eval-syntax__% _stx83305_ _expression?83306_))
                        _g83732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g83732_))))))
    (define gx#eval-syntax*
      (lambda (_stx83292_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx83292_))))
    (define gx#core-expand__%
      (lambda (_stx83279_ _expression?83280_)
        (if _expression?83280_
            (gx#core-expand-expression _stx83279_)
            (gx#core-expand-top _stx83279_))))
    (define gx#core-expand__0
      (lambda (_stx83285_)
        (let ((_expression?83287_ '#f))
          (gx#core-expand__% _stx83285_ _expression?83287_))))
    (define gx#core-expand
      (lambda _g83734_
        (let ((_g83733_ (##length _g83734_)))
          (cond ((##fx= _g83733_ 1)
                 (apply (lambda (_stx83285_) (gx#core-expand__0 _stx83285_))
                        _g83734_))
                ((##fx= _g83733_ 2)
                 (apply (lambda (_stx83289_ _expression?83290_)
                          (gx#core-expand__% _stx83289_ _expression?83290_))
                        _g83734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g83734_))))))
    (define gx#core-expand-top
      (lambda (_stx83246_)
        (let* ((_stx83248_ (gx#core-expand*__0 _stx83246_))
               (_e8324983256_ _stx83248_)
               (_E8325183260_
                (lambda () (gx#core-expand-expression _stx83248_)))
               (_E8325083274_
                (lambda ()
                  (if (gx#stx-pair? _e8324983256_)
                      (let ((_e8325283264_ (gx#syntax-e _e8324983256_)))
                        (let ((_hd8325383267_ (##car _e8325283264_))
                              (_tl8325483269_ (##cdr _e8325283264_)))
                          (let ((_form83272_ _hd8325383267_))
                            (if (gx#core-bound-identifier?__0 _form83272_)
                                _stx83248_
                                (_E8325183260_)))))
                      (_E8325183260_)))))
          (_E8325083274_))))
    (define gx#core-expand-expression
      (lambda (_stx83193_)
        (letrec ((_sealed-expression?83195_
                  (lambda (_hd83216_)
                    (if (gx#sealed-syntax? _hd83216_)
                        (let* ((_e8321783224_ _hd83216_)
                               (_E8321983228_ (lambda () '#f))
                               (_E8321883242_
                                (lambda ()
                                  (if (gx#stx-pair? _e8321783224_)
                                      (let ((_e8322083232_
                                             (gx#syntax-e _e8321783224_)))
                                        (let ((_hd8322183235_
                                               (##car _e8322083232_))
                                              (_tl8322283237_
                                               (##cdr _e8322083232_)))
                                          (let ((_form83240_ _hd8322183235_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form83240_
                                                 gx#expression-form-binding?)
                                                (_E8321983228_)))))
                                      (_E8321983228_)))))
                          (_E8321883242_))
                        '#f)))
                 (_illegal-expression83196_
                  (lambda (_hd83214_ . _g83735_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx83193_
                     _hd83214_)))
                 (_expand-e83197_
                  (lambda (_form83209_ _hd83210_)
                    (let ((_bind83212_
                           (if (##structure-instance-of?
                                _form83209_
                                'gx#binding::t)
                               _form83209_
                               (gx#resolve-identifier__0 _form83209_))))
                      (if (gx#core-expander-binding? _bind83212_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind83212_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd83210_
                            (gx#stx-source _stx83193_)))
                          (if (##structure-direct-instance-of?
                               _bind83212_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind83212_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd83210_
                                 (gx#stx-source _stx83193_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx83193_
                               _form83209_)))))))
          (let ((_hd83199_ (gx#core-expand-head _stx83193_)))
            (if (_sealed-expression?83195_ _hd83199_)
                _hd83199_
                (if (gx#stx-pair? _hd83199_)
                    (let* ((_form83201_ (gx#stx-car _hd83199_))
                           (_bind83203_
                            (if (gx#identifier? _form83201_)
                                (gx#resolve-identifier__0 _form83201_)
                                '#f)))
                      (if (or (not _bind83203_)
                              (not (gx#core-expander-binding? _bind83203_)))
                          (_expand-e83197_ '%%app (cons '%%app _hd83199_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind83203_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd83199_
                               _illegal-expression83196_)
                              (if (gx#expression-form-binding? _bind83203_)
                                  (_expand-e83197_ _bind83203_ _hd83199_)
                                  (if (gx#direct-special-form-binding?
                                       _bind83203_)
                                      (gx#core-expand-expression
                                       (_expand-e83197_ _bind83203_ _hd83199_))
                                      (_illegal-expression83196_
                                       _hd83199_))))))
                    (if (gx#core-bound-identifier?__0 _hd83199_)
                        (_illegal-expression83196_ _hd83199_)
                        (if (gx#identifier? _hd83199_)
                            (_expand-e83197_
                             '%%ref
                             (cons '%%ref (cons _hd83199_ '())))
                            (if (gx#stx-datum? _hd83199_)
                                (_expand-e83197_
                                 '%#quote
                                 (cons '%#quote (cons _hd83199_ '())))
                                (_illegal-expression83196_ _hd83199_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx83188_)
        (call-with-parameters
         (lambda ()
           (let ((_stx83191_ (gx#core-expand-expression _stx83188_)))
             (values _stx83191_ (gx#eval-syntax* _stx83191_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx83169_ _stop?83170_)
        (let _lp83172_ ((_stx83174_ _stx83169_))
          (if (_stop?83170_ _stx83174_)
              _stx83174_
              (let ((_rstx83176_ (gx#core-expand1 _stx83174_)))
                (if (eq? _stx83174_ _rstx83176_)
                    _stx83174_
                    (_lp83172_ _rstx83176_)))))))
    (define gx#core-expand*__0
      (lambda (_stx83181_)
        (let ((_stop?83183_ false))
          (gx#core-expand*__% _stx83181_ _stop?83183_))))
    (define gx#core-expand*
      (lambda _g83737_
        (let ((_g83736_ (##length _g83737_)))
          (cond ((##fx= _g83736_ 1)
                 (apply (lambda (_stx83181_) (gx#core-expand*__0 _stx83181_))
                        _g83737_))
                ((##fx= _g83736_ 2)
                 (apply (lambda (_stx83185_ _stop?83186_)
                          (gx#core-expand*__% _stx83185_ _stop?83186_))
                        _g83737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g83737_))))))
    (define gx#core-expand1
      (lambda (_stx83125_)
        (letrec ((_step83127_
                  (lambda (_hd83164_)
                    (let ((_bind83166_ (gx#resolve-identifier__0 _hd83164_)))
                      (if (##structure-instance-of?
                           _bind83166_
                           'gx#runtime-binding::t)
                          _stx83125_
                          (if (##structure-direct-instance-of?
                               _bind83166_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind83166_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx83125_)
                              (if (not _bind83166_)
                                  _stx83125_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx83125_))))))))
          (let* ((_e8312883136_ _stx83125_)
                 (_E8313483140_ (lambda () _stx83125_))
                 (_E8313083146_
                  (lambda ()
                    (let ((_hd83144_ _e8312883136_))
                      (if (gx#identifier? _hd83144_)
                          (_step83127_ _hd83144_)
                          (_E8313483140_)))))
                 (_E8312983160_
                  (lambda ()
                    (if (gx#stx-pair? _e8312883136_)
                        (let ((_e8313183150_ (gx#syntax-e _e8312883136_)))
                          (let ((_hd8313283153_ (##car _e8313183150_))
                                (_tl8313383155_ (##cdr _e8313183150_)))
                            (let ((_hd83158_ _hd8313283153_))
                              (if (gx#identifier? _hd83158_)
                                  (_step83127_ _hd83158_)
                                  (_E8313083146_)))))
                        (_E8313083146_)))))
            (_E8312983160_)))))
    (define gx#core-expand-head
      (lambda (_stx83091_)
        (letrec ((_stop?83093_
                  (lambda (_stx83095_)
                    (let* ((_e8309683103_ _stx83095_)
                           (_E8309883107_ (lambda () '#f))
                           (_E8309783121_
                            (lambda ()
                              (if (gx#stx-pair? _e8309683103_)
                                  (let ((_e8309983111_
                                         (gx#syntax-e _e8309683103_)))
                                    (let ((_hd8310083114_
                                           (##car _e8309983111_))
                                          (_tl8310183116_
                                           (##cdr _e8309983111_)))
                                      (let ((_hd83119_ _hd8310083114_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd83119_)
                                            (_E8309883107_)))))
                                  (_E8309883107_)))))
                      (_E8309783121_)))))
          (gx#core-expand*__% _stx83091_ _stop?83093_))))
    (define gx#core-expand-block__%
      (lambda (_stx82897_
               _expand-special82898_
               _begin-form82899_
               _expand-e82900_)
        (letrec ((_expand-splice82902_
                  (lambda (_hd83065_ _body83066_ _rest83067_ _r83068_)
                    (if (gx#stx-list? _body83066_)
                        (_K82906_
                         (gx#stx-foldr cons _rest83067_ _body83066_)
                         _r83068_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx82897_
                         _hd83065_))))
                 (_expand-cond-expand82903_
                  (lambda (_hd83061_ _rest83062_ _r83063_)
                    (_K82906_
                     (cons (gx#core-expand-cond-expand% _hd83061_) _rest83062_)
                     _r83063_)))
                 (_expand-include82904_
                  (lambda (_hd83010_ _rest83011_ _r83012_)
                    (let* ((_e8301383023_ _hd83010_)
                           (_E8301583027_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8301383023_)))
                           (_E8301483057_
                            (lambda ()
                              (if (gx#stx-pair? _e8301383023_)
                                  (let ((_e8301683031_
                                         (gx#syntax-e _e8301383023_)))
                                    (let ((_hd8301783034_
                                           (##car _e8301683031_))
                                          (_tl8301883036_
                                           (##cdr _e8301683031_)))
                                      (if (gx#stx-pair? _tl8301883036_)
                                          (let ((_e8301983039_
                                                 (gx#syntax-e _tl8301883036_)))
                                            (let ((_hd8302083042_
                                                   (##car _e8301983039_))
                                                  (_tl8302183044_
                                                   (##cdr _e8301983039_)))
                                              (let ((_path83047_
                                                     _hd8302083042_))
                                                (if (gx#stx-null?
                                                     _tl8302183044_)
                                                    (if (gx#stx-string?
                                                         _path83047_)
                                                        (let* ((_rpath83049_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path83047_
                         (gx#stx-source _hd83010_)))
                       (_block83051_
                        (gx#core-expand-include%__% _hd83010_ _rpath83049_))
                       (_rbody83054_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block83051_
                            _expand-special82898_
                            '#f
                            _expand-e82900_))
                         gx#current-expander-path
                         (cons _rpath83049_ (gx#current-expander-path)))))
                  (_K82906_ _rest83011_ (foldr1 cons _r83012_ _rbody83054_)))
                (_E8301583027_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8301583027_)))))
                                          (_E8301583027_))))
                                  (_E8301583027_)))))
                      (_E8301483057_))))
                 (_expand-expression82905_
                  (lambda (_hd83006_ _rest83007_ _r83008_)
                    (_K82906_
                     _rest83007_
                     (cons (_expand-e82900_ _hd83006_) _r83008_))))
                 (_K82906_
                  (lambda (_rest82936_ _r82937_)
                    (let* ((_e8293882945_ _rest82936_)
                           (_E8294082949_
                            (lambda ()
                              (if _begin-form82899_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form82899_
                                    (reverse _r82937_))
                                   (gx#stx-source _stx82897_))
                                  _r82937_)))
                           (_E8293983002_
                            (lambda ()
                              (if (gx#stx-pair? _e8293882945_)
                                  (let ((_e8294182953_
                                         (gx#syntax-e _e8293882945_)))
                                    (let ((_hd8294282956_
                                           (##car _e8294182953_))
                                          (_tl8294382958_
                                           (##cdr _e8294182953_)))
                                      (let* ((_hd82961_ _hd8294282956_)
                                             (_rest82963_ _tl8294382958_))
                                        (if '#t
                                            (let* ((_hd82965_
                                                    (gx#core-expand-head
                                                     _hd82961_))
                                                   (_e8296682973_ _hd82965_)
                                                   (_E8296882977_
                                                    (lambda ()
                                                      (_expand-expression82905_
                                                       _hd82965_
                                                       _rest82963_
                                                       _r82937_)))
                                                   (_E8296782998_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8296682973_)
                                                          (let ((_e8296982981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8296682973_)))
                    (let ((_hd8297082984_ (##car _e8296982981_))
                          (_tl8297182986_ (##cdr _e8296982981_)))
                      (let* ((_form82989_ _hd8297082984_)
                             (_body82991_ _tl8297182986_))
                        (if '#t
                            (let ((_bind82993_
                                   (if (gx#identifier? _form82989_)
                                       (gx#resolve-identifier__0 _form82989_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind82993_)
                                  (let ((_$e82995_
                                         (##unchecked-structure-ref
                                          _bind82993_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e82995_)
                                        (_expand-splice82902_
                                         _hd82965_
                                         _body82991_
                                         _rest82963_
                                         _r82937_)
                                        (if (eq? '%#cond-expand _$e82995_)
                                            (_expand-cond-expand82903_
                                             _hd82965_
                                             _rest82963_
                                             _r82937_)
                                            (if (eq? '%#include _$e82995_)
                                                (_expand-include82904_
                                                 _hd82965_
                                                 _rest82963_
                                                 _r82937_)
                                                (_expand-special82898_
                                                 _hd82965_
                                                 _K82906_
                                                 _rest82963_
                                                 _r82937_)))))
                                  (_expand-expression82905_
                                   _hd82965_
                                   _rest82963_
                                   _r82937_)))
                            (_E8296882977_)))))
                  (_E8296882977_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8296782998_))
                                            (_E8294082949_)))))
                                  (_E8294082949_)))))
                      (_E8293983002_)))))
          (let* ((_e8290782914_ _stx82897_)
                 (_E8290982918_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8290782914_)))
                 (_E8290882932_
                  (lambda ()
                    (if (gx#stx-pair? _e8290782914_)
                        (let ((_e8291082922_ (gx#syntax-e _e8290782914_)))
                          (let ((_hd8291182925_ (##car _e8291082922_))
                                (_tl8291282927_ (##cdr _e8291082922_)))
                            (let ((_body82930_ _tl8291282927_))
                              (if (gx#stx-list? _body82930_)
                                  (_K82906_ _body82930_ '())
                                  (_E8290982918_)))))
                        (_E8290982918_)))))
            (_E8290882932_)))))
    (define gx#core-expand-block__0
      (lambda (_stx83073_ _expand-special83074_)
        (let* ((_begin-form83076_ '%#begin)
               (_expand-e83078_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83073_
           _expand-special83074_
           _begin-form83076_
           _expand-e83078_))))
    (define gx#core-expand-block__1
      (lambda (_stx83080_ _expand-special83081_ _begin-form83082_)
        (let ((_expand-e83084_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83080_
           _expand-special83081_
           _begin-form83082_
           _expand-e83084_))))
    (define gx#core-expand-block
      (lambda _g83739_
        (let ((_g83738_ (##length _g83739_)))
          (cond ((##fx= _g83738_ 2)
                 (apply (lambda (_stx83073_ _expand-special83074_)
                          (gx#core-expand-block__0
                           _stx83073_
                           _expand-special83074_))
                        _g83739_))
                ((##fx= _g83738_ 3)
                 (apply (lambda (_stx83080_
                                 _expand-special83081_
                                 _begin-form83082_)
                          (gx#core-expand-block__1
                           _stx83080_
                           _expand-special83081_
                           _begin-form83082_))
                        _g83739_))
                ((##fx= _g83738_ 4)
                 (apply (lambda (_stx83086_
                                 _expand-special83087_
                                 _begin-form83088_
                                 _expand-e83089_)
                          (gx#core-expand-block__%
                           _stx83086_
                           _expand-special83087_
                           _begin-form83088_
                           _expand-e83089_))
                        _g83739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g83739_))))))
    (define gx#core-expand-block*
      (lambda (_stx82845_ _expand-special82846_)
        (let* ((_g8284782858_
                (gx#core-expand-block__1 _stx82845_ _expand-special82846_ '#f))
               (_E8285182862_
                (lambda () (error '"No clause matching" _g8284782858_))))
          (let ((_K8285682893_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx82845_)))
                (_K8285382879_ (lambda (_expr82877_) _expr82877_))
                (_K8285282868_
                 (lambda (_body82866_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body82866_))
                    (gx#stx-source _stx82845_)))))
            (let ((_try-match8284982889_
                   (lambda ()
                     (if (##pair? _g8284782858_)
                         (let ((_tl8285582884_ (##cdr _g8284782858_))
                               (_hd8285482882_ (##car _g8284782858_)))
                           (if (##null? _tl8285582884_)
                               (let ((_expr82887_ _hd8285482882_))
                                 (_K8285382879_ _expr82887_))
                               (let ((_body82871_ _g8284782858_))
                                 (_K8285282868_ _body82871_))))
                         (let ((_body82871_ _g8284782858_))
                           (_K8285282868_ _body82871_))))))
              (if (##null? _g8284782858_)
                  (_K8285682893_)
                  (_try-match8284982889_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx82673_)
        (letrec ((_satisfied?82675_
                  (lambda (_condition82773_)
                    (let* ((_e8277482789_ _condition82773_)
                           (_E8278482793_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8277482789_)))
                           (_E8277782812_
                            (lambda ()
                              (if (gx#stx-pair? _e8277482789_)
                                  (let ((_e8278582797_
                                         (gx#syntax-e _e8277482789_)))
                                    (let ((_hd8278682800_
                                           (##car _e8278582797_))
                                          (_tl8278782802_
                                           (##cdr _e8278582797_)))
                                      (let* ((_combinator82805_ _hd8278682800_)
                                             (_body82807_ _tl8278782802_))
                                        (if (gx#stx-list? _body82807_)
                                            (let ((_$e82809_
                                                   (gx#stx-e
                                                    _combinator82805_)))
                                              (if (eq? 'not _$e82809_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?82675_
                                                        _body82807_))
                                                  (if (eq? 'and _$e82809_)
                                                      (gx#stx-andmap
                                                       _satisfied?82675_
                                                       _body82807_)
                                                      (if (eq? 'or _$e82809_)
                                                          (gx#stx-ormap
                                                           _satisfied?82675_
                                                           _body82807_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e82809_)
                      (gx#stx-andmap gx#core-resolve-identifier _body82807_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx82673_
                       _combinator82805_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8278482793_)))))
                                  (_E8278482793_))))
                           (_E8277682835_
                            (lambda ()
                              (if (gx#stx-pair? _e8277482789_)
                                  (let ((_e8277882816_
                                         (gx#syntax-e _e8277482789_)))
                                    (let ((_hd8277982819_
                                           (##car _e8277882816_))
                                          (_tl8278082821_
                                           (##cdr _e8277882816_)))
                                      (if (and (gx#identifier? _hd8277982819_)
                                               (gx#core-identifier=?
                                                _hd8277982819_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8278082821_)
                                              (let ((_e8278182824_
                                                     (gx#syntax-e
                                                      _tl8278082821_)))
                                                (let ((_hd8278282827_
                                                       (##car _e8278182824_))
                                                      (_tl8278382829_
                                                       (##cdr _e8278182824_)))
                                                  (let ((_expr82832_
                                                         _hd8278282827_))
                                                    (if (gx#stx-null?
                                                         _tl8278382829_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr82832_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8277782812_))
                (_E8277782812_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8277782812_))
                                          (_E8277782812_))))
                                  (_E8277782812_))))
                           (_E8277582841_
                            (lambda ()
                              (let ((_id82839_ _e8277482789_))
                                (if (gx#identifier? _id82839_)
                                    (gx#core-bound-identifier?__%
                                     _id82839_
                                     gx#feature-binding?)
                                    (_E8277682835_))))))
                      (_E8277582841_))))
                 (_loop82676_
                  (lambda (_rest82706_)
                    (let* ((_e8270782715_ _rest82706_)
                           (_E8271382719_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8270782715_)))
                           (_E8270982723_
                            (lambda ()
                              (if (gx#stx-null? _e8270782715_)
                                  (if '#t '() (_E8271382719_))
                                  (_E8271382719_))))
                           (_E8270882769_
                            (lambda ()
                              (if (gx#stx-pair? _e8270782715_)
                                  (let ((_e8271082727_
                                         (gx#syntax-e _e8270782715_)))
                                    (let ((_hd8271182730_
                                           (##car _e8271082727_))
                                          (_tl8271282732_
                                           (##cdr _e8271082727_)))
                                      (let* ((_hd82735_ _hd8271182730_)
                                             (_rest82737_ _tl8271282732_))
                                        (if '#t
                                            (let* ((_e8273882745_ _hd82735_)
                                                   (_E8274082749_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8273882745_)))
                                                   (_E8273982765_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8273882745_)
                                                          (let ((_e8274182753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8273882745_)))
                    (let ((_hd8274282756_ (##car _e8274182753_))
                          (_tl8274382758_ (##cdr _e8274182753_)))
                      (let* ((_condition82761_ _hd8274282756_)
                             (_body82763_ _tl8274382758_))
                        (if '#t
                            (if (gx#stx-eq? _condition82761_ 'else)
                                (if (gx#stx-null? _rest82737_)
                                    _body82763_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx82673_
                                     _hd82735_))
                                (if (_satisfied?82675_ _condition82761_)
                                    _body82763_
                                    (_loop82676_ _rest82737_)))
                            (_E8274082749_)))))
                  (_E8274082749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8273982765_))
                                            (_E8270982723_)))))
                                  (_E8270982723_)))))
                      (_E8270882769_)))))
          (let* ((_e8267782684_ _stx82673_)
                 (_E8267982688_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8267782684_)))
                 (_E8267882702_
                  (lambda ()
                    (if (gx#stx-pair? _e8267782684_)
                        (let ((_e8268082692_ (gx#syntax-e _e8267782684_)))
                          (let ((_hd8268182695_ (##car _e8268082692_))
                                (_tl8268282697_ (##cdr _e8268082692_)))
                            (let ((_clauses82700_ _tl8268282697_))
                              (if (gx#stx-list? _clauses82700_)
                                  (gx#core-cons
                                   'begin
                                   (_loop82676_ _clauses82700_))
                                  (_E8267982688_)))))
                        (_E8267982688_)))))
            (_E8267882702_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx82616_ _rpath82617_)
        (let* ((_e8261882628_ _stx82616_)
               (_E8262082632_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8261882628_)))
               (_E8261982659_
                (lambda ()
                  (if (gx#stx-pair? _e8261882628_)
                      (let ((_e8262182636_ (gx#syntax-e _e8261882628_)))
                        (let ((_hd8262282639_ (##car _e8262182636_))
                              (_tl8262382641_ (##cdr _e8262182636_)))
                          (if (gx#stx-pair? _tl8262382641_)
                              (let ((_e8262482644_
                                     (gx#syntax-e _tl8262382641_)))
                                (let ((_hd8262582647_ (##car _e8262482644_))
                                      (_tl8262682649_ (##cdr _e8262482644_)))
                                  (let ((_path82652_ _hd8262582647_))
                                    (if (gx#stx-null? _tl8262682649_)
                                        (if (gx#stx-string? _path82652_)
                                            (let ((_rpath82657_
                                                   (let ((_$e82654_
                                                          _rpath82617_))
                                                     (if _$e82654_
                                                         _$e82654_
                                                         (gx#core-resolve-path__%
                                                          _path82652_
                                                          (gx#stx-source
                                                           _stx82616_))))))
                                              (if (member _rpath82657_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx82616_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath82657_))
                                                    (gx#stx-source
                                                     _stx82616_)))))
                                            (_E8262082632_))
                                        (_E8262082632_)))))
                              (_E8262082632_))))
                      (_E8262082632_)))))
          (_E8261982659_))))
    (define gx#core-expand-include%__0
      (lambda (_stx82666_)
        (let ((_rpath82668_ '#f))
          (gx#core-expand-include%__% _stx82666_ _rpath82668_))))
    (define gx#core-expand-include%
      (lambda _g83741_
        (let ((_g83740_ (##length _g83741_)))
          (cond ((##fx= _g83740_ 1)
                 (apply (lambda (_stx82666_)
                          (gx#core-expand-include%__0 _stx82666_))
                        _g83741_))
                ((##fx= _g83740_ 2)
                 (apply (lambda (_stx82670_ _rpath82671_)
                          (gx#core-expand-include%__% _stx82670_ _rpath82671_))
                        _g83741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g83741_))))))
    (define gx#core-apply-expander__%
      (lambda (_K82585_ _stx82586_ _method82587_)
        (if (procedure? _K82585_)
            (let ((_$e82589_ (gx#stx-source _stx82586_)))
              (if _$e82589_
                  ((lambda (_g8259182593_)
                     (gx#stx-wrap-source (_K82585_ _stx82586_) _g8259182593_))
                   _$e82589_)
                  (_K82585_ _stx82586_)))
            (let ((_$e82596_ (bound-method-ref _K82585_ _method82587_)))
              (if _$e82596_
                  ((lambda (_g8259882600_)
                     (gx#core-apply-expander__%
                      _g8259882600_
                      _stx82586_
                      _method82587_))
                   _$e82596_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx82586_
                   _method82587_))))))
    (define gx#core-apply-expander__0
      (lambda (_K82606_ _stx82607_)
        (let ((_method82609_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K82606_ _stx82607_ _method82609_))))
    (define gx#core-apply-expander
      (lambda _g83743_
        (let ((_g83742_ (##length _g83743_)))
          (cond ((##fx= _g83742_ 2)
                 (apply (lambda (_K82606_ _stx82607_)
                          (gx#core-apply-expander__0 _K82606_ _stx82607_))
                        _g83743_))
                ((##fx= _g83742_ 3)
                 (apply (lambda (_K82611_ _stx82612_ _method82613_)
                          (gx#core-apply-expander__%
                           _K82611_
                           _stx82612_
                           _method82613_))
                        _g83743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g83743_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self82581_ _stx82582_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx82582_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self82434_ _stx82435_)
        (let* ((_self8243682442_ _self82434_)
               (_E8243882446_
                (lambda () (error '"No clause matching" _self8243682442_)))
               (_K8243982451_
                (lambda (_K82449_)
                  (gx#core-apply-expander__0 _K82449_ _stx82435_))))
          (if (##structure-instance-of? _self8243682442_ 'gx#core-macro::t)
              (let* ((_e8244082454_
                      (##unchecked-structure-ref
                       _self8243682442_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82457_ _e8244082454_))
                (_K8243982451_ _K82457_))
              (_E8243882446_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self82287_ _stx82288_)
        (if (gx#sealed-syntax? _stx82288_)
            _stx82288_
            (let* ((_self8228982295_ _self82287_)
                   (_E8229182299_
                    (lambda () (error '"No clause matching" _self8228982295_)))
                   (_K8229282304_
                    (lambda (_K82302_)
                      (gx#core-apply-expander__0 _K82302_ _stx82288_))))
              (if (##structure-instance-of?
                   _self8228982295_
                   'gx#core-expander::t)
                  (let* ((_e8229382307_
                          (##unchecked-structure-ref
                           _self8228982295_
                           '1
                           gx#expander::t
                           '#f))
                         (_K82310_ _e8229382307_))
                    (_K8229282304_ _K82310_))
                  (_E8229182299_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self82149_ _stx82150_ _top?82151_)
        (if (_top?82151_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self82149_ _stx82150_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx82150_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self82156_ _stx82157_)
        (let ((_top?82159_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self82156_
           _stx82157_
           _top?82159_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g83745_
        (let ((_g83744_ (##length _g83745_)))
          (cond ((##fx= _g83744_ 2)
                 (apply (lambda (_self82156_ _stx82157_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self82156_
                           _stx82157_))
                        _g83745_))
                ((##fx= _g83744_ 3)
                 (apply (lambda (_self82161_ _stx82162_ _top?82163_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self82161_
                           _stx82162_
                           _top?82163_))
                        _g83745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g83745_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self82023_ _stx82024_)
        (gx#top-special-form::apply-macro-expander__%
         _self82023_
         _stx82024_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self81848_ _stx81849_)
        (let* ((_self8185081856_ _self81848_)
               (_E8185281860_
                (lambda () (error '"No clause matching" _self8185081856_)))
               (_K8185381893_
                (lambda (_id81863_)
                  (let* ((_e8186481871_ _stx81849_)
                         (_E8186681875_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8186481871_)))
                         (_E8186581889_
                          (lambda ()
                            (if (gx#stx-pair? _e8186481871_)
                                (let ((_e8186781879_
                                       (gx#syntax-e _e8186481871_)))
                                  (let ((_hd8186881882_ (##car _e8186781879_))
                                        (_tl8186981884_ (##cdr _e8186781879_)))
                                    (let ((_body81887_ _tl8186981884_))
                                      (if '#t
                                          (gx#core-cons _id81863_ _body81887_)
                                          (_E8186681875_)))))
                                (_E8186681875_)))))
                    (_E8186581889_)))))
          (if (##structure-instance-of?
               _self8185081856_
               'gx#rename-macro-expander::t)
              (let* ((_e8185481896_
                      (##unchecked-structure-ref
                       _self8185081856_
                       '1
                       gx#expander::t
                       '#f))
                     (_id81899_ _e8185481896_))
                (_K8185381893_ _id81899_))
              (_E8185281860_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self81674_ _stx81675_ _method81676_)
        (let* ((_self8167781685_ _self81674_)
               (_E8167981689_
                (lambda () (error '"No clause matching" _self8167781685_)))
               (_K8168081696_
                (lambda (_phi81692_ _ctx81693_ _K81694_)
                  (gx#core-apply-user-macro
                   _K81694_
                   _stx81675_
                   _ctx81693_
                   _phi81692_
                   _method81676_))))
          (if (##structure-instance-of? _self8167781685_ 'gx#macro-expander::t)
              (let* ((_e8168181699_
                      (##unchecked-structure-ref
                       _self8167781685_
                       '1
                       gx#expander::t
                       '#f))
                     (_K81702_ _e8168181699_)
                     (_e8168281704_
                      (##unchecked-structure-ref
                       _self8167781685_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx81707_ _e8168281704_)
                     (_e8168381709_
                      (##unchecked-structure-ref
                       _self8167781685_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi81712_ _e8168381709_))
                (_K8168081696_ _phi81712_ _ctx81707_ _K81702_))
              (_E8167981689_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self81717_ _stx81718_)
        (let ((_method81720_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self81717_
           _stx81718_
           _method81720_))))
    (define gx#core-apply-user-expander
      (lambda _g83747_
        (let ((_g83746_ (##length _g83747_)))
          (cond ((##fx= _g83746_ 2)
                 (apply (lambda (_self81717_ _stx81718_)
                          (gx#core-apply-user-expander__0
                           _self81717_
                           _stx81718_))
                        _g83747_))
                ((##fx= _g83746_ 3)
                 (apply (lambda (_self81722_ _stx81723_ _method81724_)
                          (gx#core-apply-user-expander__%
                           _self81722_
                           _stx81723_
                           _method81724_))
                        _g83747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g83747_))))))
    (define gx#core-apply-user-macro
      (lambda (_K81664_ _stx81665_ _ctx81666_ _phi81667_ _method81668_)
        (let ((_mark81670_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx81666_
                _phi81667_
                _stx81665_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K81664_
               (gx#stx-apply-mark _stx81665_ _mark81670_)
               _method81668_)
              _mark81670_))
           gx#current-expander-marks
           (cons _mark81670_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx81516_ _phi81517_ _ctx81518_)
        (let _lp81520_ ((_bind81522_
                         (gx#core-resolve-identifier__%
                          _stx81516_
                          _phi81517_
                          _ctx81518_)))
          (if (##structure-direct-instance-of?
               _bind81522_
               'gx#import-binding::t)
              (_lp81520_
               (##unchecked-structure-ref
                _bind81522_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind81522_
                   'gx#alias-binding::t)
                  (_lp81520_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind81522_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi81517_
                    _ctx81518_))
                  _bind81522_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx81527_)
        (let* ((_phi81529_ (gx#current-expander-phi))
               (_ctx81531_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81527_ _phi81529_ _ctx81531_))))
    (define gx#resolve-identifier__1
      (lambda (_stx81533_ _phi81534_)
        (let ((_ctx81536_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81533_ _phi81534_ _ctx81536_))))
    (define gx#resolve-identifier
      (lambda _g83749_
        (let ((_g83748_ (##length _g83749_)))
          (cond ((##fx= _g83748_ 1)
                 (apply (lambda (_stx81527_)
                          (gx#resolve-identifier__0 _stx81527_))
                        _g83749_))
                ((##fx= _g83748_ 2)
                 (apply (lambda (_stx81533_ _phi81534_)
                          (gx#resolve-identifier__1 _stx81533_ _phi81534_))
                        _g83749_))
                ((##fx= _g83748_ 3)
                 (apply (lambda (_stx81538_ _phi81539_ _ctx81540_)
                          (gx#resolve-identifier__%
                           _stx81538_
                           _phi81539_
                           _ctx81540_))
                        _g83749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g83749_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx81474_ _val81475_ _rebind?81476_ _phi81477_ _ctx81478_)
        (let ((_rebind?81480_
               (if (not _rebind?81476_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?81476_) _rebind?81476_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx81474_)
           _val81475_
           _rebind?81480_
           _phi81477_
           _ctx81478_))))
    (define gx#bind-identifier!__0
      (lambda (_stx81485_ _val81486_)
        (let* ((_rebind?81488_ '#f)
               (_phi81490_ (gx#current-expander-phi))
               (_ctx81492_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81485_
           _val81486_
           _rebind?81488_
           _phi81490_
           _ctx81492_))))
    (define gx#bind-identifier!__1
      (lambda (_stx81494_ _val81495_ _rebind?81496_)
        (let* ((_phi81498_ (gx#current-expander-phi))
               (_ctx81500_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81494_
           _val81495_
           _rebind?81496_
           _phi81498_
           _ctx81500_))))
    (define gx#bind-identifier!__2
      (lambda (_stx81502_ _val81503_ _rebind?81504_ _phi81505_)
        (let ((_ctx81507_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81502_
           _val81503_
           _rebind?81504_
           _phi81505_
           _ctx81507_))))
    (define gx#bind-identifier!
      (lambda _g83751_
        (let ((_g83750_ (##length _g83751_)))
          (cond ((##fx= _g83750_ 2)
                 (apply (lambda (_stx81485_ _val81486_)
                          (gx#bind-identifier!__0 _stx81485_ _val81486_))
                        _g83751_))
                ((##fx= _g83750_ 3)
                 (apply (lambda (_stx81494_ _val81495_ _rebind?81496_)
                          (gx#bind-identifier!__1
                           _stx81494_
                           _val81495_
                           _rebind?81496_))
                        _g83751_))
                ((##fx= _g83750_ 4)
                 (apply (lambda (_stx81502_
                                 _val81503_
                                 _rebind?81504_
                                 _phi81505_)
                          (gx#bind-identifier!__2
                           _stx81502_
                           _val81503_
                           _rebind?81504_
                           _phi81505_))
                        _g83751_))
                ((##fx= _g83750_ 5)
                 (apply (lambda (_stx81509_
                                 _val81510_
                                 _rebind?81511_
                                 _phi81512_
                                 _ctx81513_)
                          (gx#bind-identifier!__%
                           _stx81509_
                           _val81510_
                           _rebind?81511_
                           _phi81512_
                           _ctx81513_))
                        _g83751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g83751_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx81446_ _phi81447_ _ctx81448_)
        (let _lp81450_ ((_e81452_ _stx81446_)
                        (_marks81453_ (gx#current-expander-marks)))
          (if (symbol? _e81452_)
              (gx#core-resolve-binding
               _e81452_
               _phi81447_
               _phi81447_
               _ctx81448_
               (reverse _marks81453_))
              (if (gx#identifier-quote? _e81452_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e81452_ '1 gx#AST::t '#f)
                   _phi81447_
                   '0
                   (##unchecked-structure-ref
                    _e81452_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e81452_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e81452_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e81452_ '1 gx#AST::t '#f)
                       _phi81447_
                       _phi81447_
                       _ctx81448_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81452_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81453_))
                      (if (##structure-direct-instance-of?
                           _e81452_
                           'gx#syntax-wrap::t)
                          (_lp81450_
                           (##unchecked-structure-ref
                            _e81452_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e81452_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks81453_))
                          (if (##structure-instance-of?
                               _e81452_
                               'gerbil#AST::t)
                              (_lp81450_
                               (##unchecked-structure-ref
                                _e81452_
                                '1
                                gx#AST::t
                                '#f)
                               _marks81453_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx81446_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx81458_)
        (let* ((_phi81460_ (gx#current-expander-phi))
               (_ctx81462_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81458_ _phi81460_ _ctx81462_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx81464_ _phi81465_)
        (let ((_ctx81467_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81464_ _phi81465_ _ctx81467_))))
    (define gx#core-resolve-identifier
      (lambda _g83753_
        (let ((_g83752_ (##length _g83753_)))
          (cond ((##fx= _g83752_ 1)
                 (apply (lambda (_stx81458_)
                          (gx#core-resolve-identifier__0 _stx81458_))
                        _g83753_))
                ((##fx= _g83752_ 2)
                 (apply (lambda (_stx81464_ _phi81465_)
                          (gx#core-resolve-identifier__1
                           _stx81464_
                           _phi81465_))
                        _g83753_))
                ((##fx= _g83752_ 3)
                 (apply (lambda (_stx81469_ _phi81470_ _ctx81471_)
                          (gx#core-resolve-identifier__%
                           _stx81469_
                           _phi81470_
                           _ctx81471_))
                        _g83753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g83753_))))))
    (define gx#core-resolve-binding
      (lambda (_id81359_ _phi81360_ _src-phi81361_ _ctx81362_ _marks81363_)
        (letrec ((_resolve81365_
                  (lambda (_ctx81433_ _src-phi81434_ _key81435_)
                    (let _lp81437_ ((_ctx81439_
                                     (gx#core-context-shift
                                      _ctx81433_
                                      _phi81360_))
                                    (_dphi81440_
                                     (fx- _phi81360_ _src-phi81434_)))
                      (let ((_$e81442_
                             (gx#core-context-resolve _ctx81439_ _key81435_)))
                        (if _$e81442_
                            (values _$e81442_)
                            (if (fxzero? _dphi81440_)
                                '#f
                                (if (fxpositive? _dphi81440_)
                                    (_lp81437_
                                     (gx#core-context-shift _ctx81439_ '-1)
                                     (fx- _dphi81440_ '1))
                                    (_lp81437_
                                     (gx#core-context-shift _ctx81439_ '1)
                                     (fx+ _dphi81440_ '1))))))))))
          (let _lp81367_ ((_ctx81369_ _ctx81362_)
                          (_src-phi81370_ _src-phi81361_)
                          (_rest81371_ _marks81363_))
            (let* ((_rest8137281380_ _rest81371_)
                   (_else8137481388_
                    (lambda ()
                      (_resolve81365_ _ctx81369_ _src-phi81370_ _id81359_)))
                   (_K8137681421_
                    (lambda (_rest81391_ _hd81392_)
                      (let* ((_hd8139381399_ _hd81392_)
                             (_E8139581403_
                              (lambda ()
                                (error '"No clause matching" _hd8139381399_)))
                             (_K8139681413_
                              (lambda (_subst81406_)
                                (let ((_$e81410_
                                       (let ((_key81408_
                                              (if _subst81406_
                                                  (hash-get
                                                   _subst81406_
                                                   _id81359_)
                                                  '#f)))
                                         (if _key81408_
                                             (_resolve81365_
                                              _ctx81369_
                                              _src-phi81370_
                                              _key81408_)
                                             '#f))))
                                  (if _$e81410_
                                      _$e81410_
                                      (_lp81367_
                                       (##unchecked-structure-ref
                                        _hd81392_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd81392_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest81391_))))))
                        (if (##structure-instance-of?
                             _hd8139381399_
                             'gx#expander-mark::t)
                            (let* ((_e8139781416_
                                    (##unchecked-structure-ref
                                     _hd8139381399_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst81419_ _e8139781416_))
                              (_K8139681413_ _subst81419_))
                            (_E8139581403_))))))
              (if (##pair? _rest8137281380_)
                  (let ((_hd8137781424_ (##car _rest8137281380_))
                        (_tl8137881426_ (##cdr _rest8137281380_)))
                    (let* ((_hd81429_ _hd8137781424_)
                           (_rest81431_ _tl8137881426_))
                      (_K8137681421_ _rest81431_ _hd81429_)))
                  (_else8137481388_)))))))
    (define gx#core-bind!__%
      (lambda (_key81235_ _val81236_ _rebind?81237_ _phi81238_ _ctx81239_)
        (letrec ((_update-binding81241_
                  (lambda (_xval81312_)
                    (if (or (_rebind?81237_ _ctx81239_ _xval81312_ _val81236_)
                            (and (##structure-direct-instance-of?
                                  _xval81312_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval81312_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val81236_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val81236_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval81312_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val81236_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val81236_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval81312_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val81236_
                        (if (and (##structure-direct-instance-of?
                                  _val81236_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val81236_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval81312_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val81236_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval81312_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval81312_
                            (if (and (##structure-direct-instance-of?
                                      _val81236_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval81312_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key81235_
                                 (cons (##unchecked-structure-ref
                                        _val81236_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val81236_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval81312_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval81312_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval81312_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval81312_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key81235_
                                 _val81236_
                                 _xval81312_))))))
                 (_gensubst81242_
                  (lambda (_subst81307_ _id81308_)
                    (let ((_eid81310_
                           (gensym (if (uninterned-symbol? _id81308_)
                                       '%
                                       _id81308_))))
                      (hash-put! _subst81307_ _id81308_ _eid81310_)
                      _eid81310_)))
                 (_subst!81243_
                  (lambda (_key81245_)
                    (let* ((_key8124681254_ _key81245_)
                           (_else8124881262_ (lambda () _key81245_))
                           (_K8125081295_
                            (lambda (_mark81265_ _id81266_)
                              (let* ((_mark8126781273_ _mark81265_)
                                     (_E8126981277_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8126781273_)))
                                     (_K8127081287_
                                      (lambda (_subst81280_)
                                        (if (not _subst81280_)
                                            (let ((_subst81282_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark81265_
                                               _subst81282_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst81242_
                                               _subst81282_
                                               _id81266_))
                                            (let ((_$e81284_
                                                   (hash-get
                                                    _subst81280_
                                                    _id81266_)))
                                              (if _$e81284_
                                                  (values _$e81284_)
                                                  (_gensubst81242_
                                                   _subst81280_
                                                   _id81266_)))))))
                                (if (##structure-instance-of?
                                     _mark8126781273_
                                     'gx#expander-mark::t)
                                    (let* ((_e8127181290_
                                            (##unchecked-structure-ref
                                             _mark8126781273_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst81293_ _e8127181290_))
                                      (_K8127081287_ _subst81293_))
                                    (_E8126981277_))))))
                      (if (##pair? _key8124681254_)
                          (let ((_hd8125181298_ (##car _key8124681254_))
                                (_tl8125281300_ (##cdr _key8124681254_)))
                            (let* ((_id81303_ _hd8125181298_)
                                   (_mark81305_ _tl8125281300_))
                              (_K8125081295_ _mark81305_ _id81303_)))
                          (_else8124881262_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx81239_ _phi81238_)
           (_subst!81243_ _key81235_)
           _val81236_
           _update-binding81241_))))
    (define gx#core-bind!__0
      (lambda (_key81329_ _val81330_)
        (let* ((_rebind?81332_ false)
               (_phi81334_ (gx#current-expander-phi))
               (_ctx81336_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81329_
           _val81330_
           _rebind?81332_
           _phi81334_
           _ctx81336_))))
    (define gx#core-bind!__1
      (lambda (_key81338_ _val81339_ _rebind?81340_)
        (let* ((_phi81342_ (gx#current-expander-phi))
               (_ctx81344_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81338_
           _val81339_
           _rebind?81340_
           _phi81342_
           _ctx81344_))))
    (define gx#core-bind!__2
      (lambda (_key81346_ _val81347_ _rebind?81348_ _phi81349_)
        (let ((_ctx81351_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81346_
           _val81347_
           _rebind?81348_
           _phi81349_
           _ctx81351_))))
    (define gx#core-bind!
      (lambda _g83755_
        (let ((_g83754_ (##length _g83755_)))
          (cond ((##fx= _g83754_ 2)
                 (apply (lambda (_key81329_ _val81330_)
                          (gx#core-bind!__0 _key81329_ _val81330_))
                        _g83755_))
                ((##fx= _g83754_ 3)
                 (apply (lambda (_key81338_ _val81339_ _rebind?81340_)
                          (gx#core-bind!__1
                           _key81338_
                           _val81339_
                           _rebind?81340_))
                        _g83755_))
                ((##fx= _g83754_ 4)
                 (apply (lambda (_key81346_
                                 _val81347_
                                 _rebind?81348_
                                 _phi81349_)
                          (gx#core-bind!__2
                           _key81346_
                           _val81347_
                           _rebind?81348_
                           _phi81349_))
                        _g83755_))
                ((##fx= _g83754_ 5)
                 (apply (lambda (_key81353_
                                 _val81354_
                                 _rebind?81355_
                                 _phi81356_
                                 _ctx81357_)
                          (gx#core-bind!__%
                           _key81353_
                           _val81354_
                           _rebind?81355_
                           _phi81356_
                           _ctx81357_))
                        _g83755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g83755_))))))
    (define gx#core-identifier-key
      (lambda (_stx81169_)
        (if (symbol? _stx81169_)
            (let* ((_g8117081178_ (gx#current-expander-marks))
                   (_else8117281186_ (lambda () _stx81169_))
                   (_K8117481191_
                    (lambda (_hd81189_) (cons _stx81169_ _hd81189_))))
              (if (##pair? _g8117081178_)
                  (let* ((_hd8117581194_ (##car _g8117081178_))
                         (_hd81197_ _hd8117581194_))
                    (_K8117481191_ _hd81197_))
                  (_else8117281186_)))
            (if (gx#identifier? _stx81169_)
                (let* ((_id81199_ (gx#syntax-local-unwrap _stx81169_))
                       (_eid81201_ (gx#stx-e _id81199_))
                       (_marks81203_ (gx#stx-identifier-marks* _id81199_)))
                  (let* ((_marks8120581213_ _marks81203_)
                         (_else8120781221_ (lambda () _eid81201_))
                         (_K8120981226_
                          (lambda (_hd81224_) (cons _eid81201_ _hd81224_))))
                    (if (##pair? _marks8120581213_)
                        (let* ((_hd8121081229_ (##car _marks8120581213_))
                               (_hd81232_ _hd8121081229_))
                          (_K8120981226_ _hd81232_))
                        (_else8120781221_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx81169_)))))
    (define gx#core-context-shift
      (lambda (_ctx81114_ _phi81115_)
        (letrec ((_make-phi81117_
                  (lambda (_super81167_)
                    (let ((__obj83726
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj83726
                       (gensym 'phi)
                       _super81167_)
                      __obj83726)))
                 (_make-phi/up81118_
                  (lambda (_ctx81162_ _super81163_)
                    (let ((_ctx+181165_ (_make-phi81117_ _super81163_)))
                      (##unchecked-structure-set!
                       _ctx81162_
                       _ctx+181165_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+181165_
                       _ctx81162_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+181165_)))
                 (_make-phi/down81119_
                  (lambda (_ctx81157_ _super81158_)
                    (let ((_ctx-181160_ (_make-phi81117_ _super81158_)))
                      (##unchecked-structure-set!
                       _ctx-181160_
                       _ctx81157_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx81157_
                       _ctx-181160_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-181160_)))
                 (_shift81120_
                  (lambda (_ctx81141_
                           _delta81142_
                           _make-delta-context81143_
                           _phi81144_
                           _K81145_)
                    (let ((_$e81147_
                           (##unchecked-structure-ref
                            _ctx81141_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e81147_
                          ((lambda (_super81150_)
                             (let* ((_super81152_
                                     (_K81145_ _super81150_ _delta81142_))
                                    (_ctx+d81154_
                                     (_make-delta-context81143_
                                      _ctx81141_
                                      _super81152_)))
                               (_K81145_
                                _ctx+d81154_
                                (fx- _phi81144_ _delta81142_))))
                           _$e81147_)
                          (error '"Bad context" _ctx81141_))))))
          (let _K81122_ ((_ctx81124_ _ctx81114_) (_phi81125_ _phi81115_))
            (if (fxzero? _phi81125_)
                _ctx81124_
                (if (fx> (##vector-length _ctx81124_) '3)
                    (if (fxpositive? _phi81125_)
                        (let ((_$e81127_
                               (##unchecked-structure-ref
                                _ctx81124_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e81127_
                              ((lambda (_g8112981131_)
                                 (_K81122_ _g8112981131_ (fx- _phi81125_ '1)))
                               _$e81127_)
                              (_shift81120_
                               _ctx81124_
                               '1
                               _make-phi/up81118_
                               _phi81125_
                               _K81122_)))
                        (let ((_$e81134_
                               (##unchecked-structure-ref
                                _ctx81124_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e81134_
                              ((lambda (_g8113681138_)
                                 (_K81122_ _g8113681138_ (fx+ _phi81125_ '1)))
                               _$e81134_)
                              (_shift81120_
                               _ctx81124_
                               '-1
                               _make-phi/down81119_
                               _phi81125_
                               _K81122_))))
                    _ctx81124_))))))
    (define gx#core-context-get
      (lambda (_ctx81111_ _key81112_)
        (hash-get
         (##unchecked-structure-ref _ctx81111_ '2 gx#expander-context::t '#f)
         _key81112_)))
    (define gx#core-context-put!
      (lambda (_ctx81107_ _key81108_ _val81109_)
        (hash-put!
         (##unchecked-structure-ref _ctx81107_ '2 gx#expander-context::t '#f)
         _key81108_
         _val81109_)))
    (define gx#core-context-resolve
      (lambda (_ctx81094_ _key81095_)
        (let _lp81097_ ((_ctx81099_ _ctx81094_))
          (let ((_$e81101_ (gx#core-context-get _ctx81099_ _key81095_)))
            (if _$e81101_
                (values _$e81101_)
                (let ((_$e81104_
                       (if (fx> (##vector-length _ctx81099_) '3)
                           (##unchecked-structure-ref
                            _ctx81099_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e81104_ (_lp81097_ _$e81104_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx81084_ _key81085_ _val81086_ _rebind81087_)
        (let ((_$e81089_ (gx#core-context-get _ctx81084_ _key81085_)))
          (if _$e81089_
              ((lambda (_xval81092_)
                 (gx#core-context-put!
                  _ctx81084_
                  _key81085_
                  (_rebind81087_ _xval81092_)))
               _$e81089_)
              (gx#core-context-put! _ctx81084_ _key81085_ _val81086_)))))
    (define gx#core-context-top__%
      (lambda (_ctx81062_ _stop?81063_)
        (let _lp81065_ ((_ctx81067_ _ctx81062_))
          (if (_stop?81063_ _ctx81067_)
              _ctx81067_
              (if (##structure-instance-of? _ctx81067_ 'gx#context-phi::t)
                  (_lp81065_
                   (##unchecked-structure-ref
                    _ctx81067_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx81073_ (gx#current-expander-context))
               (_stop?81075_ gx#top-context?))
          (gx#core-context-top__% _ctx81073_ _stop?81075_))))
    (define gx#core-context-top__1
      (lambda (_ctx81077_)
        (let ((_stop?81079_ gx#top-context?))
          (gx#core-context-top__% _ctx81077_ _stop?81079_))))
    (define gx#core-context-top
      (lambda _g83757_
        (let ((_g83756_ (##length _g83757_)))
          (cond ((##fx= _g83756_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g83757_))
                ((##fx= _g83756_ 1)
                 (apply (lambda (_ctx81077_)
                          (gx#core-context-top__1 _ctx81077_))
                        _g83757_))
                ((##fx= _g83756_ 2)
                 (apply (lambda (_ctx81081_ _stop?81082_)
                          (gx#core-context-top__% _ctx81081_ _stop?81082_))
                        _g83757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g83757_))))))
    (define gx#core-context-root__%
      (lambda (_ctx81047_)
        (let _lp81049_ ((_ctx81051_ _ctx81047_))
          (if (##structure-instance-of? _ctx81051_ 'gx#context-phi::t)
              (_lp81049_
               (##unchecked-structure-ref _ctx81051_ '3 gx#phi-context::t '#f))
              _ctx81051_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx81057_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx81057_))))
    (define gx#core-context-root
      (lambda _g83759_
        (let ((_g83758_ (##length _g83759_)))
          (cond ((##fx= _g83758_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g83759_))
                ((##fx= _g83758_ 1)
                 (apply (lambda (_ctx81059_)
                          (gx#core-context-root__% _ctx81059_))
                        _g83759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g83759_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx81028_ . __8102581029_)
        (let ((_$e81032_ (gx#current-expander-allow-rebind?)))
          (if _$e81032_
              _$e81032_
              (if (##structure-instance-of? _ctx81028_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx81028_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx81028_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx81039_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx81039_))))
    (define gx#core-context-rebind?
      (lambda _g83761_
        (let ((_g83760_ (##length _g83761_)))
          (cond ((##fx= _g83760_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g83761_))
                ((##fx= _g83760_ 1)
                 (apply (lambda (_ctx81041_)
                          (gx#core-context-rebind?__% _ctx81041_))
                        _g83761_))
                ((##fx>= _g83760_ 1)
                 (apply gx#core-context-rebind?__% _g83761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g83761_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx81011_)
        (let ((_$e81013_ (gx#core-context-top__1 _ctx81011_)))
          (if _$e81013_
              ((lambda (_ctx81016_)
                 (if (##structure-instance-of?
                      _ctx81016_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx81016_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e81013_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx81022_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx81022_))))
    (define gx#core-context-namespace
      (lambda _g83763_
        (let ((_g83762_ (##length _g83763_)))
          (cond ((##fx= _g83762_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g83763_))
                ((##fx= _g83762_ 1)
                 (apply (lambda (_ctx81024_)
                          (gx#core-context-namespace__% _ctx81024_))
                        _g83763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g83763_))))))
    (define gx#expander-binding?__%
      (lambda (_bind80997_ _is?80998_)
        (if (##structure-direct-instance-of? _bind80997_ 'gx#syntax-binding::t)
            (_is?80998_
             (##unchecked-structure-ref
              _bind80997_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind81003_)
        (let ((_is?81005_ gx#expander?))
          (gx#expander-binding?__% _bind81003_ _is?81005_))))
    (define gx#expander-binding?
      (lambda _g83765_
        (let ((_g83764_ (##length _g83765_)))
          (cond ((##fx= _g83764_ 1)
                 (apply (lambda (_bind81003_)
                          (gx#expander-binding?__0 _bind81003_))
                        _g83765_))
                ((##fx= _g83764_ 2)
                 (apply (lambda (_bind81007_ _is?81008_)
                          (gx#expander-binding?__% _bind81007_ _is?81008_))
                        _g83765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g83765_))))))
    (define gx#core-expander-binding?
      (lambda (_bind80994_)
        (gx#expander-binding?__% _bind80994_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind80992_)
        (gx#expander-binding?__% _bind80992_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind80986_)
        (letrec ((_direct-special-form?80988_
                  (lambda (_obj80990_)
                    (##structure-direct-instance-of?
                     _obj80990_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind80986_ _direct-special-form?80988_))))
    (define gx#special-form-binding?
      (lambda (_bind80984_)
        (gx#expander-binding?__% _bind80984_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind80975_)
        (letrec ((_feature?80977_
                  (lambda (_e80979_)
                    (let ((_$e80981_
                           (##structure-instance-of?
                            _e80979_
                            'gx#feature-expander::t)))
                      (if _$e80981_
                          _$e80981_
                          (##structure-instance-of?
                           _e80979_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind80975_ _feature?80977_))))
    (define gx#private-feature-binding?
      (lambda (_bind80973_)
        (gx#expander-binding?__% _bind80973_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id80960_ _bound?80961_)
        (if (gx#identifier? _id80960_)
            (_bound?80961_ (gx#resolve-identifier__0 _id80960_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id80966_)
        (let ((_bound?80968_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id80966_ _bound?80968_))))
    (define gx#core-bound-identifier?
      (lambda _g83767_
        (let ((_g83766_ (##length _g83767_)))
          (cond ((##fx= _g83766_ 1)
                 (apply (lambda (_id80966_)
                          (gx#core-bound-identifier?__0 _id80966_))
                        _g83767_))
                ((##fx= _g83766_ 2)
                 (apply (lambda (_id80970_ _bound?80971_)
                          (gx#core-bound-identifier?__%
                           _id80970_
                           _bound?80971_))
                        _g83767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g83767_))))))
    (define gx#core-identifier=?
      (lambda (_x80950_ _y80951_)
        (letrec ((_y=?80953_
                  (lambda (_xid80957_)
                    ((if (list? _y80951_) memq eq?) _xid80957_ _y80951_))))
          (let ((_bind80955_ (gx#resolve-identifier__0 _x80950_)))
            (if (##structure-instance-of? _bind80955_ 'gx#binding::t)
                (_y=?80953_
                 (##unchecked-structure-ref _bind80955_ '1 gx#binding::t '#f))
                (_y=?80953_ (gx#stx-e _x80950_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e80948_)
        (if (interned-symbol? _e80948_)
            (string-index__0 (symbol->string _e80948_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx80903_ _src80904_ _ctx80905_ _marks80906_)
        (if (##structure? _stx80903_)
            (let ((_$e80908_ (gx#sealed-syntax-unwrap _stx80903_)))
              (if _$e80908_
                  (values _$e80908_)
                  (if (gx#identifier? _stx80903_)
                      (let ((_id80911_
                             (gx#stx-unwrap__% _stx80903_ _marks80906_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id80911_ '1 gx#AST::t '#f)
                         (let ((_$e80913_
                                (##unchecked-structure-ref
                                 _id80911_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e80913_ _$e80913_ _src80904_))
                         _ctx80905_
                         (##unchecked-structure-ref
                          _id80911_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx80903_)
                       (let ((_$e80916_ (gx#stx-source _stx80903_)))
                         (if _$e80916_ _$e80916_ _src80904_))
                       _ctx80905_
                       (reverse _marks80906_)))))
            (##structure
             gx#syntax-quote::t
             _stx80903_
             _src80904_
             _ctx80905_
             (reverse _marks80906_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx80922_)
        (let* ((_src80924_ '#f)
               (_ctx80926_ (gx#current-expander-context))
               (_marks80928_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80922_
           _src80924_
           _ctx80926_
           _marks80928_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx80930_ _src80931_)
        (let* ((_ctx80933_ (gx#current-expander-context))
               (_marks80935_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80930_
           _src80931_
           _ctx80933_
           _marks80935_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx80937_ _src80938_ _ctx80939_)
        (let ((_marks80941_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80937_
           _src80938_
           _ctx80939_
           _marks80941_))))
    (define gx#core-quote-syntax
      (lambda _g83769_
        (let ((_g83768_ (##length _g83769_)))
          (cond ((##fx= _g83768_ 1)
                 (apply (lambda (_stx80922_)
                          (gx#core-quote-syntax__0 _stx80922_))
                        _g83769_))
                ((##fx= _g83768_ 2)
                 (apply (lambda (_stx80930_ _src80931_)
                          (gx#core-quote-syntax__1 _stx80930_ _src80931_))
                        _g83769_))
                ((##fx= _g83768_ 3)
                 (apply (lambda (_stx80937_ _src80938_ _ctx80939_)
                          (gx#core-quote-syntax__2
                           _stx80937_
                           _src80938_
                           _ctx80939_))
                        _g83769_))
                ((##fx= _g83768_ 4)
                 (apply (lambda (_stx80943_ _src80944_ _ctx80945_ _marks80946_)
                          (gx#core-quote-syntax__%
                           _stx80943_
                           _src80944_
                           _ctx80945_
                           _marks80946_))
                        _g83769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g83769_))))))
    (define gx#core-cons
      (lambda (_hd80899_ _tl80900_)
        (cons (gx#core-quote-syntax__0 _hd80899_) _tl80900_)))
    (define gx#core-list
      (lambda (_hd80896_ . _rest80897_)
        (cons (gx#core-quote-syntax__0 _hd80896_) _rest80897_)))
    (define gx#core-cons*
      (lambda (_hd80893_ . _rest80894_)
        (apply cons* (gx#core-quote-syntax__0 _hd80893_) _rest80894_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path80867_ _rel80868_)
        (let ((_path80880_ (gx#stx-e _stx-path80867_))
              (_reldir80881_
               (let _lp80870_ ((_relsrc80872_
                                (let ((_$e80877_
                                       (gx#stx-source _stx-path80867_)))
                                  (if _$e80877_ _$e80877_ _rel80868_))))
                 (if (##structure-instance-of? _relsrc80872_ 'gerbil#AST::t)
                     (_lp80870_
                      (let ((_$e80874_ (gx#stx-source _relsrc80872_)))
                        (if _$e80874_ _$e80874_ (gx#stx-e _relsrc80872_))))
                     (if (source-location-path? _relsrc80872_)
                         (path-directory (source-location-path _relsrc80872_))
                         (if (string? _relsrc80872_)
                             (path-directory _relsrc80872_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path80880_ (path-normalize _reldir80881_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path80886_)
        (let ((_rel80888_ '#f))
          (gx#core-resolve-path__% _stx-path80886_ _rel80888_))))
    (define gx#core-resolve-path
      (lambda _g83771_
        (let ((_g83770_ (##length _g83771_)))
          (cond ((##fx= _g83770_ 1)
                 (apply (lambda (_stx-path80886_)
                          (gx#core-resolve-path__0 _stx-path80886_))
                        _g83771_))
                ((##fx= _g83770_ 2)
                 (apply (lambda (_stx-path80890_ _rel80891_)
                          (gx#core-resolve-path__% _stx-path80890_ _rel80891_))
                        _g83771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g83771_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr80823_ _ctx80824_)
        (let* ((_repr8082580832_ _repr80823_)
               (_E8082780836_
                (lambda () (error '"No clause matching" _repr8082580832_)))
               (_K8082880844_
                (lambda (_subs80839_ _phi80840_)
                  (let ((_subst80842_
                         (if (not (null? _subs80839_))
                             (list->hash-table-eq _subs80839_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst80842_
                     _ctx80824_
                     _phi80840_
                     '#f)))))
          (if (##pair? _repr8082580832_)
              (let ((_hd8082980847_ (##car _repr8082580832_))
                    (_tl8083080849_ (##cdr _repr8082580832_)))
                (let* ((_phi80852_ _hd8082980847_)
                       (_subs80854_ _tl8083080849_))
                  (_K8082880844_ _subs80854_ _phi80852_)))
              (_E8082780836_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr80859_)
        (let ((_ctx80861_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr80859_ _ctx80861_))))
    (define gx#core-deserialize-mark
      (lambda _g83773_
        (let ((_g83772_ (##length _g83773_)))
          (cond ((##fx= _g83772_ 1)
                 (apply (lambda (_repr80859_)
                          (gx#core-deserialize-mark__0 _repr80859_))
                        _g83773_))
                ((##fx= _g83772_ 2)
                 (apply (lambda (_repr80863_ _ctx80864_)
                          (gx#core-deserialize-mark__% _repr80863_ _ctx80864_))
                        _g83773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g83773_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx80820_)
        (gx#stx-rewrap _stx80820_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx80818_)
        (gx#stx-unwrap__% _stx80818_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx80788_)
        (let* ((_g8078980797_ (gx#current-expander-marks))
               (_else8079180805_ (lambda () _stx80788_))
               (_K8079380810_
                (lambda (_hd80808_) (gx#stx-apply-mark _stx80788_ _hd80808_))))
          (if (##pair? _g8078980797_)
              (let* ((_hd8079480813_ (##car _g8078980797_))
                     (_hd80816_ _hd8079480813_))
                (_K8079380810_ _hd80816_))
              (_else8079180805_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx80773_ _E80774_)
        (let ((_bind80776_ (gx#resolve-identifier__0 _stx80773_)))
          (if (##structure-direct-instance-of?
               _bind80776_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind80776_
               '4
               gx#syntax-binding::t
               '#f)
              (_E80774_ _stx80773_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx80781_)
        (let ((_E80783_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx80781_ _E80783_))))
    (define gx#syntax-local-e
      (lambda _g83775_
        (let ((_g83774_ (##length _g83775_)))
          (cond ((##fx= _g83774_ 1)
                 (apply (lambda (_stx80781_) (gx#syntax-local-e__0 _stx80781_))
                        _g83775_))
                ((##fx= _g83774_ 2)
                 (apply (lambda (_stx80785_ _E80786_)
                          (gx#syntax-local-e__% _stx80785_ _E80786_))
                        _g83775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g83775_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx80757_ _E80758_)
        (let ((_e80760_ (gx#syntax-local-e__% _stx80757_ _E80758_)))
          (if (##structure-instance-of? _e80760_ 'gx#expander::t)
              (##structure-ref _e80760_ '1 gx#expander::t '#f)
              _e80760_))))
    (define gx#syntax-local-value__0
      (lambda (_stx80765_)
        (let ((_E80767_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx80765_ _E80767_))))
    (define gx#syntax-local-value
      (lambda _g83777_
        (let ((_g83776_ (##length _g83777_)))
          (cond ((##fx= _g83776_ 1)
                 (apply (lambda (_stx80765_)
                          (gx#syntax-local-value__0 _stx80765_))
                        _g83777_))
                ((##fx= _g83776_ 2)
                 (apply (lambda (_stx80769_ _E80770_)
                          (gx#syntax-local-value__% _stx80769_ _E80770_))
                        _g83777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g83777_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx80754_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx80754_)))))
