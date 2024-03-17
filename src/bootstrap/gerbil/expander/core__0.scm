(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710694203)
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
      (lambda _$args83044_
        (apply make-instance gx#expander-context::t _$args83044_)))
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
      (lambda _$args83041_
        (apply make-instance gx#root-context::t _$args83041_)))
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
      (lambda _$args83038_
        (apply make-instance gx#phi-context::t _$args83038_)))
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
      (lambda _$args83035_
        (apply make-instance gx#top-context::t _$args83035_)))
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
      (lambda _$args83032_
        (apply make-instance gx#module-context::t _$args83032_)))
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
      (lambda _$args83029_
        (apply make-instance gx#prelude-context::t _$args83029_)))
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
      (lambda _$args83026_
        (apply make-instance gx#local-context::t _$args83026_)))
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
      (lambda (_self83010_ _id83011_ _super83012_)
        (if (##fx< '3 (##structure-length _self83010_))
            (begin
              (##unchecked-structure-set!
               _self83010_
               _id83011_
               '1
               (##structure-type _self83010_)
               '#f)
              (##unchecked-structure-set!
               _self83010_
               (make-hash-table-eq)
               '2
               (##structure-type _self83010_)
               '#f)
              (##unchecked-structure-set!
               _self83010_
               _super83012_
               '3
               (##structure-type _self83010_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83010_
                   '3
                   (##vector-length _self83010_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self83017_ _id83018_)
        (let ((_super83020_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self83017_ _id83018_ _super83020_))))
    (define gx#phi-context:::init!
      (lambda _g83087_
        (let ((_g83086_ (##length _g83087_)))
          (cond ((##fx= _g83086_ 2)
                 (apply (lambda (_self83017_ _id83018_)
                          (gx#phi-context:::init!__0 _self83017_ _id83018_))
                        _g83087_))
                ((##fx= _g83086_ 3)
                 (apply (lambda (_self83022_ _id83023_ _super83024_)
                          (gx#phi-context:::init!__%
                           _self83022_
                           _id83023_
                           _super83024_))
                        _g83087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g83087_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self82874_ _super82875_)
        (if (##fx< '3 (##structure-length _self82874_))
            (begin
              (##unchecked-structure-set!
               _self82874_
               (gensym 'L)
               '1
               (##structure-type _self82874_)
               '#f)
              (##unchecked-structure-set!
               _self82874_
               (make-hash-table-eq)
               '2
               (##structure-type _self82874_)
               '#f)
              (##unchecked-structure-set!
               _self82874_
               _super82875_
               '3
               (##structure-type _self82874_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self82874_
                   '3
                   (##vector-length _self82874_)))))
    (define gx#local-context:::init!__0
      (lambda (_self82880_)
        (let ((_super82882_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self82880_ _super82882_))))
    (define gx#local-context:::init!
      (lambda _g83089_
        (let ((_g83088_ (##length _g83089_)))
          (cond ((##fx= _g83088_ 1)
                 (apply (lambda (_self82880_)
                          (gx#local-context:::init!__0 _self82880_))
                        _g83089_))
                ((##fx= _g83088_ 2)
                 (apply (lambda (_self82884_ _super82885_)
                          (gx#local-context:::init!__%
                           _self82884_
                           _super82885_))
                        _g83089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g83089_))))))
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
      (lambda _$args82748_ (apply make-instance gx#binding::t _$args82748_)))
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
      (lambda _$args82745_
        (apply make-instance gx#runtime-binding::t _$args82745_)))
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
      (lambda _$args82742_
        (apply make-instance gx#local-binding::t _$args82742_)))
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
      (lambda _$args82739_
        (apply make-instance gx#top-binding::t _$args82739_)))
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
      (lambda _$args82736_
        (apply make-instance gx#module-binding::t _$args82736_)))
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
      (lambda _$args82733_
        (apply make-instance gx#extern-binding::t _$args82733_)))
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
      (lambda _$args82730_
        (apply make-instance gx#syntax-binding::t _$args82730_)))
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
      (lambda _$args82727_
        (apply make-instance gx#import-binding::t _$args82727_)))
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
      (lambda _$args82724_
        (apply make-instance gx#alias-binding::t _$args82724_)))
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
      (lambda _$args82721_ (apply make-instance gx#expander::t _$args82721_)))
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
      (lambda _$args82718_
        (apply make-instance gx#core-expander::t _$args82718_)))
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
      (lambda _$args82715_
        (apply make-instance gx#expression-form::t _$args82715_)))
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
      (lambda _$args82712_
        (apply make-instance gx#special-form::t _$args82712_)))
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
      (lambda _$args82709_
        (apply make-instance gx#definition-form::t _$args82709_)))
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
      (lambda _$args82706_
        (apply make-instance gx#top-special-form::t _$args82706_)))
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
      (lambda _$args82703_
        (apply make-instance gx#module-special-form::t _$args82703_)))
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
      (lambda _$args82700_
        (apply make-instance gx#feature-expander::t _$args82700_)))
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
      (lambda _$args82697_
        (apply make-instance gx#private-feature-expander::t _$args82697_)))
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
      (lambda _$args82694_
        (apply make-instance gx#reserved-expander::t _$args82694_)))
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
      (lambda _$args82691_
        (apply make-instance gx#macro-expander::t _$args82691_)))
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
      (lambda _$args82688_
        (apply make-instance gx#rename-macro-expander::t _$args82688_)))
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
      (lambda _$args82685_
        (apply make-instance gx#user-expander::t _$args82685_)))
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
      (lambda _$args82682_
        (apply make-instance gx#expander-mark::t _$args82682_)))
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
      (lambda (_ctx82667_ _message82668_ _stx82669_ . _details82670_)
        (let ((_ctx82680_
               (let ((_$e82672_ _ctx82667_))
                 (if _$e82672_
                     _$e82672_
                     (let ((_$e82675_ (gx#core-context-top__0)))
                       (if _$e82675_
                           ((lambda (_ctx82678_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx82678_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e82675_)
                           '#f))))))
          (raise (make-syntax-error
                  _message82668_
                  (cons _stx82669_ _details82670_)
                  _ctx82680_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx82654_ _expression?82655_)
        (gx#eval-syntax* (gx#core-expand__% _stx82654_ _expression?82655_))))
    (define gx#eval-syntax__0
      (lambda (_stx82660_)
        (let ((_expression?82662_ '#f))
          (gx#eval-syntax__% _stx82660_ _expression?82662_))))
    (define gx#eval-syntax
      (lambda _g83091_
        (let ((_g83090_ (##length _g83091_)))
          (cond ((##fx= _g83090_ 1)
                 (apply (lambda (_stx82660_) (gx#eval-syntax__0 _stx82660_))
                        _g83091_))
                ((##fx= _g83090_ 2)
                 (apply (lambda (_stx82664_ _expression?82665_)
                          (gx#eval-syntax__% _stx82664_ _expression?82665_))
                        _g83091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g83091_))))))
    (define gx#eval-syntax*
      (lambda (_stx82651_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx82651_))))
    (define gx#core-expand__%
      (lambda (_stx82638_ _expression?82639_)
        (if _expression?82639_
            (gx#core-expand-expression _stx82638_)
            (gx#core-expand-top _stx82638_))))
    (define gx#core-expand__0
      (lambda (_stx82644_)
        (let ((_expression?82646_ '#f))
          (gx#core-expand__% _stx82644_ _expression?82646_))))
    (define gx#core-expand
      (lambda _g83093_
        (let ((_g83092_ (##length _g83093_)))
          (cond ((##fx= _g83092_ 1)
                 (apply (lambda (_stx82644_) (gx#core-expand__0 _stx82644_))
                        _g83093_))
                ((##fx= _g83092_ 2)
                 (apply (lambda (_stx82648_ _expression?82649_)
                          (gx#core-expand__% _stx82648_ _expression?82649_))
                        _g83093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g83093_))))))
    (define gx#core-expand-top
      (lambda (_stx82605_)
        (let* ((_stx82607_ (gx#core-expand*__0 _stx82605_))
               (_e8260882615_ _stx82607_)
               (_E8261082619_
                (lambda () (gx#core-expand-expression _stx82607_)))
               (_E8260982633_
                (lambda ()
                  (if (gx#stx-pair? _e8260882615_)
                      (let ((_e8261182623_ (gx#syntax-e _e8260882615_)))
                        (let ((_hd8261282626_ (##car _e8261182623_))
                              (_tl8261382628_ (##cdr _e8261182623_)))
                          (let ((_form82631_ _hd8261282626_))
                            (if (gx#core-bound-identifier?__0 _form82631_)
                                _stx82607_
                                (_E8261082619_)))))
                      (_E8261082619_)))))
          (_E8260982633_))))
    (define gx#core-expand-expression
      (lambda (_stx82552_)
        (letrec ((_sealed-expression?82554_
                  (lambda (_hd82575_)
                    (if (gx#sealed-syntax? _hd82575_)
                        (let* ((_e8257682583_ _hd82575_)
                               (_E8257882587_ (lambda () '#f))
                               (_E8257782601_
                                (lambda ()
                                  (if (gx#stx-pair? _e8257682583_)
                                      (let ((_e8257982591_
                                             (gx#syntax-e _e8257682583_)))
                                        (let ((_hd8258082594_
                                               (##car _e8257982591_))
                                              (_tl8258182596_
                                               (##cdr _e8257982591_)))
                                          (let ((_form82599_ _hd8258082594_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form82599_
                                                 gx#expression-form-binding?)
                                                (_E8257882587_)))))
                                      (_E8257882587_)))))
                          (_E8257782601_))
                        '#f)))
                 (_illegal-expression82555_
                  (lambda (_hd82573_ . _g83094_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx82552_
                     _hd82573_)))
                 (_expand-e82556_
                  (lambda (_form82568_ _hd82569_)
                    (let ((_bind82571_
                           (if (##structure-instance-of?
                                _form82568_
                                'gx#binding::t)
                               _form82568_
                               (gx#resolve-identifier__0 _form82568_))))
                      (if (gx#core-expander-binding? _bind82571_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind82571_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd82569_
                            (gx#stx-source _stx82552_)))
                          (if (##structure-direct-instance-of?
                               _bind82571_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind82571_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd82569_
                                 (gx#stx-source _stx82552_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx82552_
                               _form82568_)))))))
          (let ((_hd82558_ (gx#core-expand-head _stx82552_)))
            (if (_sealed-expression?82554_ _hd82558_)
                _hd82558_
                (if (gx#stx-pair? _hd82558_)
                    (let* ((_form82560_ (gx#stx-car _hd82558_))
                           (_bind82562_
                            (if (gx#identifier? _form82560_)
                                (gx#resolve-identifier__0 _form82560_)
                                '#f)))
                      (if (or (not _bind82562_)
                              (not (gx#core-expander-binding? _bind82562_)))
                          (_expand-e82556_ '%%app (cons '%%app _hd82558_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind82562_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd82558_
                               _illegal-expression82555_)
                              (if (gx#expression-form-binding? _bind82562_)
                                  (_expand-e82556_ _bind82562_ _hd82558_)
                                  (if (gx#direct-special-form-binding?
                                       _bind82562_)
                                      (gx#core-expand-expression
                                       (_expand-e82556_ _bind82562_ _hd82558_))
                                      (_illegal-expression82555_
                                       _hd82558_))))))
                    (if (gx#core-bound-identifier?__0 _hd82558_)
                        (_illegal-expression82555_ _hd82558_)
                        (if (gx#identifier? _hd82558_)
                            (_expand-e82556_
                             '%%ref
                             (cons '%%ref (cons _hd82558_ '())))
                            (if (gx#stx-datum? _hd82558_)
                                (_expand-e82556_
                                 '%#quote
                                 (cons '%#quote (cons _hd82558_ '())))
                                (_illegal-expression82555_ _hd82558_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx82547_)
        (call-with-parameters
         (lambda ()
           (let ((_stx82550_ (gx#core-expand-expression _stx82547_)))
             (values _stx82550_ (gx#eval-syntax* _stx82550_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx82528_ _stop?82529_)
        (let _lp82531_ ((_stx82533_ _stx82528_))
          (if (_stop?82529_ _stx82533_)
              _stx82533_
              (let ((_rstx82535_ (gx#core-expand1 _stx82533_)))
                (if (eq? _stx82533_ _rstx82535_)
                    _stx82533_
                    (_lp82531_ _rstx82535_)))))))
    (define gx#core-expand*__0
      (lambda (_stx82540_)
        (let ((_stop?82542_ false))
          (gx#core-expand*__% _stx82540_ _stop?82542_))))
    (define gx#core-expand*
      (lambda _g83096_
        (let ((_g83095_ (##length _g83096_)))
          (cond ((##fx= _g83095_ 1)
                 (apply (lambda (_stx82540_) (gx#core-expand*__0 _stx82540_))
                        _g83096_))
                ((##fx= _g83095_ 2)
                 (apply (lambda (_stx82544_ _stop?82545_)
                          (gx#core-expand*__% _stx82544_ _stop?82545_))
                        _g83096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g83096_))))))
    (define gx#core-expand1
      (lambda (_stx82484_)
        (letrec ((_step82486_
                  (lambda (_hd82523_)
                    (let ((_bind82525_ (gx#resolve-identifier__0 _hd82523_)))
                      (if (##structure-instance-of?
                           _bind82525_
                           'gx#runtime-binding::t)
                          _stx82484_
                          (if (##structure-direct-instance-of?
                               _bind82525_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind82525_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx82484_)
                              (if (not _bind82525_)
                                  _stx82484_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx82484_))))))))
          (let* ((_e8248782495_ _stx82484_)
                 (_E8249382499_ (lambda () _stx82484_))
                 (_E8248982505_
                  (lambda ()
                    (let ((_hd82503_ _e8248782495_))
                      (if (gx#identifier? _hd82503_)
                          (_step82486_ _hd82503_)
                          (_E8249382499_)))))
                 (_E8248882519_
                  (lambda ()
                    (if (gx#stx-pair? _e8248782495_)
                        (let ((_e8249082509_ (gx#syntax-e _e8248782495_)))
                          (let ((_hd8249182512_ (##car _e8249082509_))
                                (_tl8249282514_ (##cdr _e8249082509_)))
                            (let ((_hd82517_ _hd8249182512_))
                              (if (gx#identifier? _hd82517_)
                                  (_step82486_ _hd82517_)
                                  (_E8248982505_)))))
                        (_E8248982505_)))))
            (_E8248882519_)))))
    (define gx#core-expand-head
      (lambda (_stx82450_)
        (letrec ((_stop?82452_
                  (lambda (_stx82454_)
                    (let* ((_e8245582462_ _stx82454_)
                           (_E8245782466_ (lambda () '#f))
                           (_E8245682480_
                            (lambda ()
                              (if (gx#stx-pair? _e8245582462_)
                                  (let ((_e8245882470_
                                         (gx#syntax-e _e8245582462_)))
                                    (let ((_hd8245982473_
                                           (##car _e8245882470_))
                                          (_tl8246082475_
                                           (##cdr _e8245882470_)))
                                      (let ((_hd82478_ _hd8245982473_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd82478_)
                                            (_E8245782466_)))))
                                  (_E8245782466_)))))
                      (_E8245682480_)))))
          (gx#core-expand*__% _stx82450_ _stop?82452_))))
    (define gx#core-expand-block__%
      (lambda (_stx82256_
               _expand-special82257_
               _begin-form82258_
               _expand-e82259_)
        (letrec ((_expand-splice82261_
                  (lambda (_hd82424_ _body82425_ _rest82426_ _r82427_)
                    (if (gx#stx-list? _body82425_)
                        (_K82265_
                         (gx#stx-foldr cons _rest82426_ _body82425_)
                         _r82427_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx82256_
                         _hd82424_))))
                 (_expand-cond-expand82262_
                  (lambda (_hd82420_ _rest82421_ _r82422_)
                    (_K82265_
                     (cons (gx#core-expand-cond-expand% _hd82420_) _rest82421_)
                     _r82422_)))
                 (_expand-include82263_
                  (lambda (_hd82369_ _rest82370_ _r82371_)
                    (let* ((_e8237282382_ _hd82369_)
                           (_E8237482386_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8237282382_)))
                           (_E8237382416_
                            (lambda ()
                              (if (gx#stx-pair? _e8237282382_)
                                  (let ((_e8237582390_
                                         (gx#syntax-e _e8237282382_)))
                                    (let ((_hd8237682393_
                                           (##car _e8237582390_))
                                          (_tl8237782395_
                                           (##cdr _e8237582390_)))
                                      (if (gx#stx-pair? _tl8237782395_)
                                          (let ((_e8237882398_
                                                 (gx#syntax-e _tl8237782395_)))
                                            (let ((_hd8237982401_
                                                   (##car _e8237882398_))
                                                  (_tl8238082403_
                                                   (##cdr _e8237882398_)))
                                              (let ((_path82406_
                                                     _hd8237982401_))
                                                (if (gx#stx-null?
                                                     _tl8238082403_)
                                                    (if (gx#stx-string?
                                                         _path82406_)
                                                        (let* ((_rpath82408_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path82406_
                         (gx#stx-source _hd82369_)))
                       (_block82410_
                        (gx#core-expand-include%__% _hd82369_ _rpath82408_))
                       (_rbody82413_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block82410_
                            _expand-special82257_
                            '#f
                            _expand-e82259_))
                         gx#current-expander-path
                         (cons _rpath82408_ (gx#current-expander-path)))))
                  (_K82265_ _rest82370_ (foldr1 cons _r82371_ _rbody82413_)))
                (_E8237482386_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8237482386_)))))
                                          (_E8237482386_))))
                                  (_E8237482386_)))))
                      (_E8237382416_))))
                 (_expand-expression82264_
                  (lambda (_hd82365_ _rest82366_ _r82367_)
                    (_K82265_
                     _rest82366_
                     (cons (_expand-e82259_ _hd82365_) _r82367_))))
                 (_K82265_
                  (lambda (_rest82295_ _r82296_)
                    (let* ((_e8229782304_ _rest82295_)
                           (_E8229982308_
                            (lambda ()
                              (if _begin-form82258_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form82258_
                                    (reverse _r82296_))
                                   (gx#stx-source _stx82256_))
                                  _r82296_)))
                           (_E8229882361_
                            (lambda ()
                              (if (gx#stx-pair? _e8229782304_)
                                  (let ((_e8230082312_
                                         (gx#syntax-e _e8229782304_)))
                                    (let ((_hd8230182315_
                                           (##car _e8230082312_))
                                          (_tl8230282317_
                                           (##cdr _e8230082312_)))
                                      (let* ((_hd82320_ _hd8230182315_)
                                             (_rest82322_ _tl8230282317_))
                                        (if '#t
                                            (let* ((_hd82324_
                                                    (gx#core-expand-head
                                                     _hd82320_))
                                                   (_e8232582332_ _hd82324_)
                                                   (_E8232782336_
                                                    (lambda ()
                                                      (_expand-expression82264_
                                                       _hd82324_
                                                       _rest82322_
                                                       _r82296_)))
                                                   (_E8232682357_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8232582332_)
                                                          (let ((_e8232882340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8232582332_)))
                    (let ((_hd8232982343_ (##car _e8232882340_))
                          (_tl8233082345_ (##cdr _e8232882340_)))
                      (let* ((_form82348_ _hd8232982343_)
                             (_body82350_ _tl8233082345_))
                        (if '#t
                            (let ((_bind82352_
                                   (if (gx#identifier? _form82348_)
                                       (gx#resolve-identifier__0 _form82348_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind82352_)
                                  (let ((_$e82354_
                                         (##unchecked-structure-ref
                                          _bind82352_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e82354_)
                                        (_expand-splice82261_
                                         _hd82324_
                                         _body82350_
                                         _rest82322_
                                         _r82296_)
                                        (if (eq? '%#cond-expand _$e82354_)
                                            (_expand-cond-expand82262_
                                             _hd82324_
                                             _rest82322_
                                             _r82296_)
                                            (if (eq? '%#include _$e82354_)
                                                (_expand-include82263_
                                                 _hd82324_
                                                 _rest82322_
                                                 _r82296_)
                                                (_expand-special82257_
                                                 _hd82324_
                                                 _K82265_
                                                 _rest82322_
                                                 _r82296_)))))
                                  (_expand-expression82264_
                                   _hd82324_
                                   _rest82322_
                                   _r82296_)))
                            (_E8232782336_)))))
                  (_E8232782336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8232682357_))
                                            (_E8229982308_)))))
                                  (_E8229982308_)))))
                      (_E8229882361_)))))
          (let* ((_e8226682273_ _stx82256_)
                 (_E8226882277_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8226682273_)))
                 (_E8226782291_
                  (lambda ()
                    (if (gx#stx-pair? _e8226682273_)
                        (let ((_e8226982281_ (gx#syntax-e _e8226682273_)))
                          (let ((_hd8227082284_ (##car _e8226982281_))
                                (_tl8227182286_ (##cdr _e8226982281_)))
                            (let ((_body82289_ _tl8227182286_))
                              (if (gx#stx-list? _body82289_)
                                  (_K82265_ _body82289_ '())
                                  (_E8226882277_)))))
                        (_E8226882277_)))))
            (_E8226782291_)))))
    (define gx#core-expand-block__0
      (lambda (_stx82432_ _expand-special82433_)
        (let* ((_begin-form82435_ '%#begin)
               (_expand-e82437_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx82432_
           _expand-special82433_
           _begin-form82435_
           _expand-e82437_))))
    (define gx#core-expand-block__1
      (lambda (_stx82439_ _expand-special82440_ _begin-form82441_)
        (let ((_expand-e82443_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx82439_
           _expand-special82440_
           _begin-form82441_
           _expand-e82443_))))
    (define gx#core-expand-block
      (lambda _g83098_
        (let ((_g83097_ (##length _g83098_)))
          (cond ((##fx= _g83097_ 2)
                 (apply (lambda (_stx82432_ _expand-special82433_)
                          (gx#core-expand-block__0
                           _stx82432_
                           _expand-special82433_))
                        _g83098_))
                ((##fx= _g83097_ 3)
                 (apply (lambda (_stx82439_
                                 _expand-special82440_
                                 _begin-form82441_)
                          (gx#core-expand-block__1
                           _stx82439_
                           _expand-special82440_
                           _begin-form82441_))
                        _g83098_))
                ((##fx= _g83097_ 4)
                 (apply (lambda (_stx82445_
                                 _expand-special82446_
                                 _begin-form82447_
                                 _expand-e82448_)
                          (gx#core-expand-block__%
                           _stx82445_
                           _expand-special82446_
                           _begin-form82447_
                           _expand-e82448_))
                        _g83098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g83098_))))))
    (define gx#core-expand-block*
      (lambda (_stx82204_ _expand-special82205_)
        (let* ((_g8220682217_
                (gx#core-expand-block__1 _stx82204_ _expand-special82205_ '#f))
               (_E8221082221_
                (lambda () (error '"No clause matching" _g8220682217_))))
          (let ((_K8221582252_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx82204_)))
                (_K8221282238_ (lambda (_expr82236_) _expr82236_))
                (_K8221182227_
                 (lambda (_body82225_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body82225_))
                    (gx#stx-source _stx82204_)))))
            (let ((_try-match8220882248_
                   (lambda ()
                     (if (##pair? _g8220682217_)
                         (let ((_tl8221482243_ (##cdr _g8220682217_))
                               (_hd8221382241_ (##car _g8220682217_)))
                           (if (##null? _tl8221482243_)
                               (let ((_expr82246_ _hd8221382241_))
                                 (_K8221282238_ _expr82246_))
                               (let ((_body82230_ _g8220682217_))
                                 (_K8221182227_ _body82230_))))
                         (let ((_body82230_ _g8220682217_))
                           (_K8221182227_ _body82230_))))))
              (if (##null? _g8220682217_)
                  (_K8221582252_)
                  (_try-match8220882248_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx82032_)
        (letrec ((_satisfied?82034_
                  (lambda (_condition82132_)
                    (let* ((_e8213382148_ _condition82132_)
                           (_E8214382152_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8213382148_)))
                           (_E8213682171_
                            (lambda ()
                              (if (gx#stx-pair? _e8213382148_)
                                  (let ((_e8214482156_
                                         (gx#syntax-e _e8213382148_)))
                                    (let ((_hd8214582159_
                                           (##car _e8214482156_))
                                          (_tl8214682161_
                                           (##cdr _e8214482156_)))
                                      (let* ((_combinator82164_ _hd8214582159_)
                                             (_body82166_ _tl8214682161_))
                                        (if (gx#stx-list? _body82166_)
                                            (let ((_$e82168_
                                                   (gx#stx-e
                                                    _combinator82164_)))
                                              (if (eq? 'not _$e82168_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?82034_
                                                        _body82166_))
                                                  (if (eq? 'and _$e82168_)
                                                      (gx#stx-andmap
                                                       _satisfied?82034_
                                                       _body82166_)
                                                      (if (eq? 'or _$e82168_)
                                                          (gx#stx-ormap
                                                           _satisfied?82034_
                                                           _body82166_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e82168_)
                      (gx#stx-andmap gx#core-resolve-identifier _body82166_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx82032_
                       _combinator82164_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8214382152_)))))
                                  (_E8214382152_))))
                           (_E8213582194_
                            (lambda ()
                              (if (gx#stx-pair? _e8213382148_)
                                  (let ((_e8213782175_
                                         (gx#syntax-e _e8213382148_)))
                                    (let ((_hd8213882178_
                                           (##car _e8213782175_))
                                          (_tl8213982180_
                                           (##cdr _e8213782175_)))
                                      (if (and (gx#identifier? _hd8213882178_)
                                               (gx#core-identifier=?
                                                _hd8213882178_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8213982180_)
                                              (let ((_e8214082183_
                                                     (gx#syntax-e
                                                      _tl8213982180_)))
                                                (let ((_hd8214182186_
                                                       (##car _e8214082183_))
                                                      (_tl8214282188_
                                                       (##cdr _e8214082183_)))
                                                  (let ((_expr82191_
                                                         _hd8214182186_))
                                                    (if (gx#stx-null?
                                                         _tl8214282188_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr82191_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8213682171_))
                (_E8213682171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8213682171_))
                                          (_E8213682171_))))
                                  (_E8213682171_))))
                           (_E8213482200_
                            (lambda ()
                              (let ((_id82198_ _e8213382148_))
                                (if (gx#identifier? _id82198_)
                                    (gx#core-bound-identifier?__%
                                     _id82198_
                                     gx#feature-binding?)
                                    (_E8213582194_))))))
                      (_E8213482200_))))
                 (_loop82035_
                  (lambda (_rest82065_)
                    (let* ((_e8206682074_ _rest82065_)
                           (_E8207282078_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8206682074_)))
                           (_E8206882082_
                            (lambda ()
                              (if (gx#stx-null? _e8206682074_)
                                  (if '#t '() (_E8207282078_))
                                  (_E8207282078_))))
                           (_E8206782128_
                            (lambda ()
                              (if (gx#stx-pair? _e8206682074_)
                                  (let ((_e8206982086_
                                         (gx#syntax-e _e8206682074_)))
                                    (let ((_hd8207082089_
                                           (##car _e8206982086_))
                                          (_tl8207182091_
                                           (##cdr _e8206982086_)))
                                      (let* ((_hd82094_ _hd8207082089_)
                                             (_rest82096_ _tl8207182091_))
                                        (if '#t
                                            (let* ((_e8209782104_ _hd82094_)
                                                   (_E8209982108_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8209782104_)))
                                                   (_E8209882124_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8209782104_)
                                                          (let ((_e8210082112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8209782104_)))
                    (let ((_hd8210182115_ (##car _e8210082112_))
                          (_tl8210282117_ (##cdr _e8210082112_)))
                      (let* ((_condition82120_ _hd8210182115_)
                             (_body82122_ _tl8210282117_))
                        (if '#t
                            (if (gx#stx-eq? _condition82120_ 'else)
                                (if (gx#stx-null? _rest82096_)
                                    _body82122_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx82032_
                                     _hd82094_))
                                (if (_satisfied?82034_ _condition82120_)
                                    _body82122_
                                    (_loop82035_ _rest82096_)))
                            (_E8209982108_)))))
                  (_E8209982108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8209882124_))
                                            (_E8206882082_)))))
                                  (_E8206882082_)))))
                      (_E8206782128_)))))
          (let* ((_e8203682043_ _stx82032_)
                 (_E8203882047_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8203682043_)))
                 (_E8203782061_
                  (lambda ()
                    (if (gx#stx-pair? _e8203682043_)
                        (let ((_e8203982051_ (gx#syntax-e _e8203682043_)))
                          (let ((_hd8204082054_ (##car _e8203982051_))
                                (_tl8204182056_ (##cdr _e8203982051_)))
                            (let ((_clauses82059_ _tl8204182056_))
                              (if (gx#stx-list? _clauses82059_)
                                  (gx#core-cons
                                   'begin
                                   (_loop82035_ _clauses82059_))
                                  (_E8203882047_)))))
                        (_E8203882047_)))))
            (_E8203782061_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx81975_ _rpath81976_)
        (let* ((_e8197781987_ _stx81975_)
               (_E8197981991_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8197781987_)))
               (_E8197882018_
                (lambda ()
                  (if (gx#stx-pair? _e8197781987_)
                      (let ((_e8198081995_ (gx#syntax-e _e8197781987_)))
                        (let ((_hd8198181998_ (##car _e8198081995_))
                              (_tl8198282000_ (##cdr _e8198081995_)))
                          (if (gx#stx-pair? _tl8198282000_)
                              (let ((_e8198382003_
                                     (gx#syntax-e _tl8198282000_)))
                                (let ((_hd8198482006_ (##car _e8198382003_))
                                      (_tl8198582008_ (##cdr _e8198382003_)))
                                  (let ((_path82011_ _hd8198482006_))
                                    (if (gx#stx-null? _tl8198582008_)
                                        (if (gx#stx-string? _path82011_)
                                            (let ((_rpath82016_
                                                   (let ((_$e82013_
                                                          _rpath81976_))
                                                     (if _$e82013_
                                                         _$e82013_
                                                         (gx#core-resolve-path__%
                                                          _path82011_
                                                          (gx#stx-source
                                                           _stx81975_))))))
                                              (if (member _rpath82016_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx81975_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath82016_))
                                                    (gx#stx-source
                                                     _stx81975_)))))
                                            (_E8197981991_))
                                        (_E8197981991_)))))
                              (_E8197981991_))))
                      (_E8197981991_)))))
          (_E8197882018_))))
    (define gx#core-expand-include%__0
      (lambda (_stx82025_)
        (let ((_rpath82027_ '#f))
          (gx#core-expand-include%__% _stx82025_ _rpath82027_))))
    (define gx#core-expand-include%
      (lambda _g83100_
        (let ((_g83099_ (##length _g83100_)))
          (cond ((##fx= _g83099_ 1)
                 (apply (lambda (_stx82025_)
                          (gx#core-expand-include%__0 _stx82025_))
                        _g83100_))
                ((##fx= _g83099_ 2)
                 (apply (lambda (_stx82029_ _rpath82030_)
                          (gx#core-expand-include%__% _stx82029_ _rpath82030_))
                        _g83100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g83100_))))))
    (define gx#core-apply-expander__%
      (lambda (_K81944_ _stx81945_ _method81946_)
        (if (procedure? _K81944_)
            (let ((_$e81948_ (gx#stx-source _stx81945_)))
              (if _$e81948_
                  ((lambda (_g8195081952_)
                     (gx#stx-wrap-source (_K81944_ _stx81945_) _g8195081952_))
                   _$e81948_)
                  (_K81944_ _stx81945_)))
            (let ((_$e81955_ (bound-method-ref _K81944_ _method81946_)))
              (if _$e81955_
                  ((lambda (_g8195781959_)
                     (gx#core-apply-expander__%
                      _g8195781959_
                      _stx81945_
                      _method81946_))
                   _$e81955_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx81945_
                   _method81946_))))))
    (define gx#core-apply-expander__0
      (lambda (_K81965_ _stx81966_)
        (let ((_method81968_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K81965_ _stx81966_ _method81968_))))
    (define gx#core-apply-expander
      (lambda _g83102_
        (let ((_g83101_ (##length _g83102_)))
          (cond ((##fx= _g83101_ 2)
                 (apply (lambda (_K81965_ _stx81966_)
                          (gx#core-apply-expander__0 _K81965_ _stx81966_))
                        _g83102_))
                ((##fx= _g83101_ 3)
                 (apply (lambda (_K81970_ _stx81971_ _method81972_)
                          (gx#core-apply-expander__%
                           _K81970_
                           _stx81971_
                           _method81972_))
                        _g83102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g83102_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self81940_ _stx81941_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx81941_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self81793_ _stx81794_)
        (let* ((_self8179581801_ _self81793_)
               (_E8179781805_
                (lambda () (error '"No clause matching" _self8179581801_)))
               (_K8179881810_
                (lambda (_K81808_)
                  (gx#core-apply-expander__0 _K81808_ _stx81794_))))
          (if (##structure-instance-of? _self8179581801_ 'gx#core-macro::t)
              (let* ((_e8179981813_
                      (##unchecked-structure-ref
                       _self8179581801_
                       '1
                       gx#expander::t
                       '#f))
                     (_K81816_ _e8179981813_))
                (_K8179881810_ _K81816_))
              (_E8179781805_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self81646_ _stx81647_)
        (if (gx#sealed-syntax? _stx81647_)
            _stx81647_
            (let* ((_self8164881654_ _self81646_)
                   (_E8165081658_
                    (lambda () (error '"No clause matching" _self8164881654_)))
                   (_K8165181663_
                    (lambda (_K81661_)
                      (gx#core-apply-expander__0 _K81661_ _stx81647_))))
              (if (##structure-instance-of?
                   _self8164881654_
                   'gx#core-expander::t)
                  (let* ((_e8165281666_
                          (##unchecked-structure-ref
                           _self8164881654_
                           '1
                           gx#expander::t
                           '#f))
                         (_K81669_ _e8165281666_))
                    (_K8165181663_ _K81669_))
                  (_E8165081658_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self81508_ _stx81509_ _top?81510_)
        (if (_top?81510_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self81508_ _stx81509_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx81509_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self81515_ _stx81516_)
        (let ((_top?81518_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self81515_
           _stx81516_
           _top?81518_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g83104_
        (let ((_g83103_ (##length _g83104_)))
          (cond ((##fx= _g83103_ 2)
                 (apply (lambda (_self81515_ _stx81516_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self81515_
                           _stx81516_))
                        _g83104_))
                ((##fx= _g83103_ 3)
                 (apply (lambda (_self81520_ _stx81521_ _top?81522_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self81520_
                           _stx81521_
                           _top?81522_))
                        _g83104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g83104_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self81382_ _stx81383_)
        (gx#top-special-form::apply-macro-expander__%
         _self81382_
         _stx81383_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self81207_ _stx81208_)
        (let* ((_self8120981215_ _self81207_)
               (_E8121181219_
                (lambda () (error '"No clause matching" _self8120981215_)))
               (_K8121281252_
                (lambda (_id81222_)
                  (let* ((_e8122381230_ _stx81208_)
                         (_E8122581234_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8122381230_)))
                         (_E8122481248_
                          (lambda ()
                            (if (gx#stx-pair? _e8122381230_)
                                (let ((_e8122681238_
                                       (gx#syntax-e _e8122381230_)))
                                  (let ((_hd8122781241_ (##car _e8122681238_))
                                        (_tl8122881243_ (##cdr _e8122681238_)))
                                    (let ((_body81246_ _tl8122881243_))
                                      (if '#t
                                          (gx#core-cons _id81222_ _body81246_)
                                          (_E8122581234_)))))
                                (_E8122581234_)))))
                    (_E8122481248_)))))
          (if (##structure-instance-of?
               _self8120981215_
               'gx#rename-macro-expander::t)
              (let* ((_e8121381255_
                      (##unchecked-structure-ref
                       _self8120981215_
                       '1
                       gx#expander::t
                       '#f))
                     (_id81258_ _e8121381255_))
                (_K8121281252_ _id81258_))
              (_E8121181219_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self81033_ _stx81034_ _method81035_)
        (let* ((_self8103681044_ _self81033_)
               (_E8103881048_
                (lambda () (error '"No clause matching" _self8103681044_)))
               (_K8103981055_
                (lambda (_phi81051_ _ctx81052_ _K81053_)
                  (gx#core-apply-user-macro
                   _K81053_
                   _stx81034_
                   _ctx81052_
                   _phi81051_
                   _method81035_))))
          (if (##structure-instance-of? _self8103681044_ 'gx#macro-expander::t)
              (let* ((_e8104081058_
                      (##unchecked-structure-ref
                       _self8103681044_
                       '1
                       gx#expander::t
                       '#f))
                     (_K81061_ _e8104081058_)
                     (_e8104181063_
                      (##unchecked-structure-ref
                       _self8103681044_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx81066_ _e8104181063_)
                     (_e8104281068_
                      (##unchecked-structure-ref
                       _self8103681044_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi81071_ _e8104281068_))
                (_K8103981055_ _phi81071_ _ctx81066_ _K81061_))
              (_E8103881048_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self81076_ _stx81077_)
        (let ((_method81079_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self81076_
           _stx81077_
           _method81079_))))
    (define gx#core-apply-user-expander
      (lambda _g83106_
        (let ((_g83105_ (##length _g83106_)))
          (cond ((##fx= _g83105_ 2)
                 (apply (lambda (_self81076_ _stx81077_)
                          (gx#core-apply-user-expander__0
                           _self81076_
                           _stx81077_))
                        _g83106_))
                ((##fx= _g83105_ 3)
                 (apply (lambda (_self81081_ _stx81082_ _method81083_)
                          (gx#core-apply-user-expander__%
                           _self81081_
                           _stx81082_
                           _method81083_))
                        _g83106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g83106_))))))
    (define gx#core-apply-user-macro
      (lambda (_K81023_ _stx81024_ _ctx81025_ _phi81026_ _method81027_)
        (let ((_mark81029_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx81025_
                _phi81026_
                _stx81024_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K81023_
               (gx#stx-apply-mark _stx81024_ _mark81029_)
               _method81027_)
              _mark81029_))
           gx#current-expander-marks
           (cons _mark81029_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx80874_ _phi80875_ _ctx80876_)
        (let _lp80878_ ((_bind80880_
                         (gx#core-resolve-identifier__%
                          _stx80874_
                          _phi80875_
                          _ctx80876_)))
          (if (##structure-direct-instance-of?
               _bind80880_
               'gx#import-binding::t)
              (_lp80878_
               (##unchecked-structure-ref
                _bind80880_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind80880_
                   'gx#alias-binding::t)
                  (_lp80878_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind80880_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi80875_
                    _ctx80876_))
                  _bind80880_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx80885_)
        (let* ((_phi80887_ (gx#current-expander-phi))
               (_ctx80889_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx80885_ _phi80887_ _ctx80889_))))
    (define gx#resolve-identifier__1
      (lambda (_stx80891_ _phi80892_)
        (let ((_ctx80894_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx80891_ _phi80892_ _ctx80894_))))
    (define gx#resolve-identifier
      (lambda _g83108_
        (let ((_g83107_ (##length _g83108_)))
          (cond ((##fx= _g83107_ 1)
                 (apply (lambda (_stx80885_)
                          (gx#resolve-identifier__0 _stx80885_))
                        _g83108_))
                ((##fx= _g83107_ 2)
                 (apply (lambda (_stx80891_ _phi80892_)
                          (gx#resolve-identifier__1 _stx80891_ _phi80892_))
                        _g83108_))
                ((##fx= _g83107_ 3)
                 (apply (lambda (_stx80896_ _phi80897_ _ctx80898_)
                          (gx#resolve-identifier__%
                           _stx80896_
                           _phi80897_
                           _ctx80898_))
                        _g83108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g83108_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx80832_ _val80833_ _rebind?80834_ _phi80835_ _ctx80836_)
        (let ((_rebind?80838_
               (if (not _rebind?80834_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?80834_) _rebind?80834_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx80832_)
           _val80833_
           _rebind?80838_
           _phi80835_
           _ctx80836_))))
    (define gx#bind-identifier!__0
      (lambda (_stx80843_ _val80844_)
        (let* ((_rebind?80846_ '#f)
               (_phi80848_ (gx#current-expander-phi))
               (_ctx80850_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx80843_
           _val80844_
           _rebind?80846_
           _phi80848_
           _ctx80850_))))
    (define gx#bind-identifier!__1
      (lambda (_stx80852_ _val80853_ _rebind?80854_)
        (let* ((_phi80856_ (gx#current-expander-phi))
               (_ctx80858_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx80852_
           _val80853_
           _rebind?80854_
           _phi80856_
           _ctx80858_))))
    (define gx#bind-identifier!__2
      (lambda (_stx80860_ _val80861_ _rebind?80862_ _phi80863_)
        (let ((_ctx80865_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx80860_
           _val80861_
           _rebind?80862_
           _phi80863_
           _ctx80865_))))
    (define gx#bind-identifier!
      (lambda _g83110_
        (let ((_g83109_ (##length _g83110_)))
          (cond ((##fx= _g83109_ 2)
                 (apply (lambda (_stx80843_ _val80844_)
                          (gx#bind-identifier!__0 _stx80843_ _val80844_))
                        _g83110_))
                ((##fx= _g83109_ 3)
                 (apply (lambda (_stx80852_ _val80853_ _rebind?80854_)
                          (gx#bind-identifier!__1
                           _stx80852_
                           _val80853_
                           _rebind?80854_))
                        _g83110_))
                ((##fx= _g83109_ 4)
                 (apply (lambda (_stx80860_
                                 _val80861_
                                 _rebind?80862_
                                 _phi80863_)
                          (gx#bind-identifier!__2
                           _stx80860_
                           _val80861_
                           _rebind?80862_
                           _phi80863_))
                        _g83110_))
                ((##fx= _g83109_ 5)
                 (apply (lambda (_stx80867_
                                 _val80868_
                                 _rebind?80869_
                                 _phi80870_
                                 _ctx80871_)
                          (gx#bind-identifier!__%
                           _stx80867_
                           _val80868_
                           _rebind?80869_
                           _phi80870_
                           _ctx80871_))
                        _g83110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g83110_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx80804_ _phi80805_ _ctx80806_)
        (let _lp80808_ ((_e80810_ _stx80804_)
                        (_marks80811_ (gx#current-expander-marks)))
          (if (symbol? _e80810_)
              (gx#core-resolve-binding
               _e80810_
               _phi80805_
               _phi80805_
               _ctx80806_
               (reverse _marks80811_))
              (if (gx#identifier-quote? _e80810_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e80810_ '1 gx#AST::t '#f)
                   _phi80805_
                   '0
                   (##unchecked-structure-ref
                    _e80810_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e80810_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e80810_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e80810_ '1 gx#AST::t '#f)
                       _phi80805_
                       _phi80805_
                       _ctx80806_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80810_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80811_))
                      (if (##structure-direct-instance-of?
                           _e80810_
                           'gx#syntax-wrap::t)
                          (_lp80808_
                           (##unchecked-structure-ref
                            _e80810_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e80810_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks80811_))
                          (if (##structure-instance-of?
                               _e80810_
                               'gerbil#AST::t)
                              (_lp80808_
                               (##unchecked-structure-ref
                                _e80810_
                                '1
                                gx#AST::t
                                '#f)
                               _marks80811_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx80804_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx80816_)
        (let* ((_phi80818_ (gx#current-expander-phi))
               (_ctx80820_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx80816_ _phi80818_ _ctx80820_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx80822_ _phi80823_)
        (let ((_ctx80825_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx80822_ _phi80823_ _ctx80825_))))
    (define gx#core-resolve-identifier
      (lambda _g83112_
        (let ((_g83111_ (##length _g83112_)))
          (cond ((##fx= _g83111_ 1)
                 (apply (lambda (_stx80816_)
                          (gx#core-resolve-identifier__0 _stx80816_))
                        _g83112_))
                ((##fx= _g83111_ 2)
                 (apply (lambda (_stx80822_ _phi80823_)
                          (gx#core-resolve-identifier__1
                           _stx80822_
                           _phi80823_))
                        _g83112_))
                ((##fx= _g83111_ 3)
                 (apply (lambda (_stx80827_ _phi80828_ _ctx80829_)
                          (gx#core-resolve-identifier__%
                           _stx80827_
                           _phi80828_
                           _ctx80829_))
                        _g83112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g83112_))))))
    (define gx#core-resolve-binding
      (lambda (_id80717_ _phi80718_ _src-phi80719_ _ctx80720_ _marks80721_)
        (letrec ((_resolve80723_
                  (lambda (_ctx80791_ _src-phi80792_ _key80793_)
                    (let _lp80795_ ((_ctx80797_
                                     (gx#core-context-shift
                                      _ctx80791_
                                      _phi80718_))
                                    (_dphi80798_
                                     (fx- _phi80718_ _src-phi80792_)))
                      (let ((_$e80800_
                             (gx#core-context-resolve _ctx80797_ _key80793_)))
                        (if _$e80800_
                            (values _$e80800_)
                            (if (fxzero? _dphi80798_)
                                '#f
                                (if (fxpositive? _dphi80798_)
                                    (_lp80795_
                                     (gx#core-context-shift _ctx80797_ '-1)
                                     (fx- _dphi80798_ '1))
                                    (_lp80795_
                                     (gx#core-context-shift _ctx80797_ '1)
                                     (fx+ _dphi80798_ '1))))))))))
          (let _lp80725_ ((_ctx80727_ _ctx80720_)
                          (_src-phi80728_ _src-phi80719_)
                          (_rest80729_ _marks80721_))
            (let* ((_rest8073080738_ _rest80729_)
                   (_else8073280746_
                    (lambda ()
                      (_resolve80723_ _ctx80727_ _src-phi80728_ _id80717_)))
                   (_K8073480779_
                    (lambda (_rest80749_ _hd80750_)
                      (let* ((_hd8075180757_ _hd80750_)
                             (_E8075380761_
                              (lambda ()
                                (error '"No clause matching" _hd8075180757_)))
                             (_K8075480771_
                              (lambda (_subst80764_)
                                (let ((_$e80768_
                                       (let ((_key80766_
                                              (if _subst80764_
                                                  (hash-get
                                                   _subst80764_
                                                   _id80717_)
                                                  '#f)))
                                         (if _key80766_
                                             (_resolve80723_
                                              _ctx80727_
                                              _src-phi80728_
                                              _key80766_)
                                             '#f))))
                                  (if _$e80768_
                                      _$e80768_
                                      (_lp80725_
                                       (##unchecked-structure-ref
                                        _hd80750_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd80750_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest80749_))))))
                        (if (##structure-instance-of?
                             _hd8075180757_
                             'gx#expander-mark::t)
                            (let* ((_e8075580774_
                                    (##unchecked-structure-ref
                                     _hd8075180757_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst80777_ _e8075580774_))
                              (_K8075480771_ _subst80777_))
                            (_E8075380761_))))))
              (if (##pair? _rest8073080738_)
                  (let ((_hd8073580782_ (##car _rest8073080738_))
                        (_tl8073680784_ (##cdr _rest8073080738_)))
                    (let* ((_hd80787_ _hd8073580782_)
                           (_rest80789_ _tl8073680784_))
                      (_K8073480779_ _rest80789_ _hd80787_)))
                  (_else8073280746_)))))))
    (define gx#core-bind!__%
      (lambda (_key80593_ _val80594_ _rebind?80595_ _phi80596_ _ctx80597_)
        (letrec ((_update-binding80599_
                  (lambda (_xval80670_)
                    (if (or (_rebind?80595_ _ctx80597_ _xval80670_ _val80594_)
                            (and (##structure-direct-instance-of?
                                  _xval80670_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval80670_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val80594_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val80594_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval80670_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val80594_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val80594_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval80670_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val80594_
                        (if (and (##structure-direct-instance-of?
                                  _val80594_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val80594_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval80670_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val80594_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval80670_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval80670_
                            (if (and (##structure-direct-instance-of?
                                      _val80594_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval80670_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key80593_
                                 (cons (##unchecked-structure-ref
                                        _val80594_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val80594_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval80670_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval80670_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval80670_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval80670_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key80593_
                                 _val80594_
                                 _xval80670_))))))
                 (_gensubst80600_
                  (lambda (_subst80665_ _id80666_)
                    (let ((_eid80668_
                           (gensym (if (uninterned-symbol? _id80666_)
                                       '%
                                       _id80666_))))
                      (hash-put! _subst80665_ _id80666_ _eid80668_)
                      _eid80668_)))
                 (_subst!80601_
                  (lambda (_key80603_)
                    (let* ((_key8060480612_ _key80603_)
                           (_else8060680620_ (lambda () _key80603_))
                           (_K8060880653_
                            (lambda (_mark80623_ _id80624_)
                              (let* ((_mark8062580631_ _mark80623_)
                                     (_E8062780635_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8062580631_)))
                                     (_K8062880645_
                                      (lambda (_subst80638_)
                                        (if (not _subst80638_)
                                            (let ((_subst80640_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark80623_
                                               _subst80640_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst80600_
                                               _subst80640_
                                               _id80624_))
                                            (let ((_$e80642_
                                                   (hash-get
                                                    _subst80638_
                                                    _id80624_)))
                                              (if _$e80642_
                                                  (values _$e80642_)
                                                  (_gensubst80600_
                                                   _subst80638_
                                                   _id80624_)))))))
                                (if (##structure-instance-of?
                                     _mark8062580631_
                                     'gx#expander-mark::t)
                                    (let* ((_e8062980648_
                                            (##unchecked-structure-ref
                                             _mark8062580631_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst80651_ _e8062980648_))
                                      (_K8062880645_ _subst80651_))
                                    (_E8062780635_))))))
                      (if (##pair? _key8060480612_)
                          (let ((_hd8060980656_ (##car _key8060480612_))
                                (_tl8061080658_ (##cdr _key8060480612_)))
                            (let* ((_id80661_ _hd8060980656_)
                                   (_mark80663_ _tl8061080658_))
                              (_K8060880653_ _mark80663_ _id80661_)))
                          (_else8060680620_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx80597_ _phi80596_)
           (_subst!80601_ _key80593_)
           _val80594_
           _update-binding80599_))))
    (define gx#core-bind!__0
      (lambda (_key80687_ _val80688_)
        (let* ((_rebind?80690_ false)
               (_phi80692_ (gx#current-expander-phi))
               (_ctx80694_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key80687_
           _val80688_
           _rebind?80690_
           _phi80692_
           _ctx80694_))))
    (define gx#core-bind!__1
      (lambda (_key80696_ _val80697_ _rebind?80698_)
        (let* ((_phi80700_ (gx#current-expander-phi))
               (_ctx80702_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key80696_
           _val80697_
           _rebind?80698_
           _phi80700_
           _ctx80702_))))
    (define gx#core-bind!__2
      (lambda (_key80704_ _val80705_ _rebind?80706_ _phi80707_)
        (let ((_ctx80709_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key80704_
           _val80705_
           _rebind?80706_
           _phi80707_
           _ctx80709_))))
    (define gx#core-bind!
      (lambda _g83114_
        (let ((_g83113_ (##length _g83114_)))
          (cond ((##fx= _g83113_ 2)
                 (apply (lambda (_key80687_ _val80688_)
                          (gx#core-bind!__0 _key80687_ _val80688_))
                        _g83114_))
                ((##fx= _g83113_ 3)
                 (apply (lambda (_key80696_ _val80697_ _rebind?80698_)
                          (gx#core-bind!__1
                           _key80696_
                           _val80697_
                           _rebind?80698_))
                        _g83114_))
                ((##fx= _g83113_ 4)
                 (apply (lambda (_key80704_
                                 _val80705_
                                 _rebind?80706_
                                 _phi80707_)
                          (gx#core-bind!__2
                           _key80704_
                           _val80705_
                           _rebind?80706_
                           _phi80707_))
                        _g83114_))
                ((##fx= _g83113_ 5)
                 (apply (lambda (_key80711_
                                 _val80712_
                                 _rebind?80713_
                                 _phi80714_
                                 _ctx80715_)
                          (gx#core-bind!__%
                           _key80711_
                           _val80712_
                           _rebind?80713_
                           _phi80714_
                           _ctx80715_))
                        _g83114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g83114_))))))
    (define gx#core-identifier-key
      (lambda (_stx80527_)
        (if (symbol? _stx80527_)
            (let* ((_g8052880536_ (gx#current-expander-marks))
                   (_else8053080544_ (lambda () _stx80527_))
                   (_K8053280549_
                    (lambda (_hd80547_) (cons _stx80527_ _hd80547_))))
              (if (##pair? _g8052880536_)
                  (let* ((_hd8053380552_ (##car _g8052880536_))
                         (_hd80555_ _hd8053380552_))
                    (_K8053280549_ _hd80555_))
                  (_else8053080544_)))
            (if (gx#identifier? _stx80527_)
                (let* ((_id80557_ (gx#syntax-local-unwrap _stx80527_))
                       (_eid80559_ (gx#stx-e _id80557_))
                       (_marks80561_ (gx#stx-identifier-marks* _id80557_)))
                  (let* ((_marks8056380571_ _marks80561_)
                         (_else8056580579_ (lambda () _eid80559_))
                         (_K8056780584_
                          (lambda (_hd80582_) (cons _eid80559_ _hd80582_))))
                    (if (##pair? _marks8056380571_)
                        (let* ((_hd8056880587_ (##car _marks8056380571_))
                               (_hd80590_ _hd8056880587_))
                          (_K8056780584_ _hd80590_))
                        (_else8056580579_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx80527_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx80472_ _phi80473_)
        (letrec ((_make-phi80475_
                  (lambda (_super80525_)
                    (let ((__obj83085
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj83085
                       (gensym 'phi)
                       _super80525_)
                      __obj83085)))
                 (_make-phi/up80476_
                  (lambda (_ctx80520_ _super80521_)
                    (let ((_ctx+180523_ (_make-phi80475_ _super80521_)))
                      (##unchecked-structure-set!
                       _ctx80520_
                       _ctx+180523_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+180523_
                       _ctx80520_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+180523_)))
                 (_make-phi/down80477_
                  (lambda (_ctx80515_ _super80516_)
                    (let ((_ctx-180518_ (_make-phi80475_ _super80516_)))
                      (##unchecked-structure-set!
                       _ctx-180518_
                       _ctx80515_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx80515_
                       _ctx-180518_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-180518_)))
                 (_shift80478_
                  (lambda (_ctx80499_
                           _delta80500_
                           _make-delta-context80501_
                           _phi80502_
                           _K80503_)
                    (let ((_$e80505_
                           (##unchecked-structure-ref
                            _ctx80499_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e80505_
                          ((lambda (_super80508_)
                             (let* ((_super80510_
                                     (_K80503_ _super80508_ _delta80500_))
                                    (_ctx+d80512_
                                     (_make-delta-context80501_
                                      _ctx80499_
                                      _super80510_)))
                               (_K80503_
                                _ctx+d80512_
                                (fx- _phi80502_ _delta80500_))))
                           _$e80505_)
                          (error '"Bad context" _ctx80499_))))))
          (let _K80480_ ((_ctx80482_ _ctx80472_) (_phi80483_ _phi80473_))
            (if (fxzero? _phi80483_)
                _ctx80482_
                (if (##structure-instance-of? _ctx80482_ 'gx#context-phi::t)
                    (if (fxpositive? _phi80483_)
                        (let ((_$e80485_
                               (##unchecked-structure-ref
                                _ctx80482_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e80485_
                              ((lambda (_g8048780489_)
                                 (_K80480_ _g8048780489_ (fx- _phi80483_ '1)))
                               _$e80485_)
                              (_shift80478_
                               _ctx80482_
                               '1
                               _make-phi/up80476_
                               _phi80483_
                               _K80480_)))
                        (let ((_$e80492_
                               (##unchecked-structure-ref
                                _ctx80482_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e80492_
                              ((lambda (_g8049480496_)
                                 (_K80480_ _g8049480496_ (fx+ _phi80483_ '1)))
                               _$e80492_)
                              (_shift80478_
                               _ctx80482_
                               '-1
                               _make-phi/down80477_
                               _phi80483_
                               _K80480_))))
                    _ctx80482_))))))
    (define gx#core-context-get
      (lambda (_ctx80469_ _key80470_)
        (hash-get
         (##unchecked-structure-ref _ctx80469_ '2 gx#expander-context::t '#f)
         _key80470_)))
    (define gx#core-context-put!
      (lambda (_ctx80465_ _key80466_ _val80467_)
        (hash-put!
         (##unchecked-structure-ref _ctx80465_ '2 gx#expander-context::t '#f)
         _key80466_
         _val80467_)))
    (define gx#core-context-resolve
      (lambda (_ctx80452_ _key80453_)
        (let _lp80455_ ((_ctx80457_ _ctx80452_))
          (let ((_$e80459_ (gx#core-context-get _ctx80457_ _key80453_)))
            (if _$e80459_
                (values _$e80459_)
                (let ((_$e80462_
                       (if (##structure-instance-of?
                            _ctx80457_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx80457_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e80462_ (_lp80455_ _$e80462_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx80442_ _key80443_ _val80444_ _rebind80445_)
        (let ((_$e80447_ (gx#core-context-get _ctx80442_ _key80443_)))
          (if _$e80447_
              ((lambda (_xval80450_)
                 (gx#core-context-put!
                  _ctx80442_
                  _key80443_
                  (_rebind80445_ _xval80450_)))
               _$e80447_)
              (gx#core-context-put! _ctx80442_ _key80443_ _val80444_)))))
    (define gx#core-context-top__%
      (lambda (_ctx80420_ _stop?80421_)
        (let _lp80423_ ((_ctx80425_ _ctx80420_))
          (if (_stop?80421_ _ctx80425_)
              _ctx80425_
              (if (##structure-instance-of? _ctx80425_ 'gx#context-phi::t)
                  (_lp80423_
                   (##unchecked-structure-ref
                    _ctx80425_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx80431_ (gx#current-expander-context))
               (_stop?80433_ gx#top-context?))
          (gx#core-context-top__% _ctx80431_ _stop?80433_))))
    (define gx#core-context-top__1
      (lambda (_ctx80435_)
        (let ((_stop?80437_ gx#top-context?))
          (gx#core-context-top__% _ctx80435_ _stop?80437_))))
    (define gx#core-context-top
      (lambda _g83116_
        (let ((_g83115_ (##length _g83116_)))
          (cond ((##fx= _g83115_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g83116_))
                ((##fx= _g83115_ 1)
                 (apply (lambda (_ctx80435_)
                          (gx#core-context-top__1 _ctx80435_))
                        _g83116_))
                ((##fx= _g83115_ 2)
                 (apply (lambda (_ctx80439_ _stop?80440_)
                          (gx#core-context-top__% _ctx80439_ _stop?80440_))
                        _g83116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g83116_))))))
    (define gx#core-context-root__%
      (lambda (_ctx80405_)
        (let _lp80407_ ((_ctx80409_ _ctx80405_))
          (if (##structure-instance-of? _ctx80409_ 'gx#context-phi::t)
              (_lp80407_
               (##unchecked-structure-ref _ctx80409_ '3 gx#phi-context::t '#f))
              _ctx80409_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx80415_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx80415_))))
    (define gx#core-context-root
      (lambda _g83118_
        (let ((_g83117_ (##length _g83118_)))
          (cond ((##fx= _g83117_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g83118_))
                ((##fx= _g83117_ 1)
                 (apply (lambda (_ctx80417_)
                          (gx#core-context-root__% _ctx80417_))
                        _g83118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g83118_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx80386_ . __8038380387_)
        (let ((_$e80390_ (gx#current-expander-allow-rebind?)))
          (if _$e80390_
              _$e80390_
              (if (##structure-instance-of? _ctx80386_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx80386_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx80386_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx80397_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx80397_))))
    (define gx#core-context-rebind?
      (lambda _g83120_
        (let ((_g83119_ (##length _g83120_)))
          (cond ((##fx= _g83119_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g83120_))
                ((##fx= _g83119_ 1)
                 (apply (lambda (_ctx80399_)
                          (gx#core-context-rebind?__% _ctx80399_))
                        _g83120_))
                ((##fx>= _g83119_ 1)
                 (apply gx#core-context-rebind?__% _g83120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g83120_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx80369_)
        (let ((_$e80371_ (gx#core-context-top__1 _ctx80369_)))
          (if _$e80371_
              ((lambda (_ctx80374_)
                 (if (##structure-instance-of?
                      _ctx80374_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx80374_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e80371_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx80380_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx80380_))))
    (define gx#core-context-namespace
      (lambda _g83122_
        (let ((_g83121_ (##length _g83122_)))
          (cond ((##fx= _g83121_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g83122_))
                ((##fx= _g83121_ 1)
                 (apply (lambda (_ctx80382_)
                          (gx#core-context-namespace__% _ctx80382_))
                        _g83122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g83122_))))))
    (define gx#expander-binding?__%
      (lambda (_bind80355_ _is?80356_)
        (if (##structure-direct-instance-of? _bind80355_ 'gx#syntax-binding::t)
            (_is?80356_
             (##unchecked-structure-ref
              _bind80355_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind80361_)
        (let ((_is?80363_ gx#expander?))
          (gx#expander-binding?__% _bind80361_ _is?80363_))))
    (define gx#expander-binding?
      (lambda _g83124_
        (let ((_g83123_ (##length _g83124_)))
          (cond ((##fx= _g83123_ 1)
                 (apply (lambda (_bind80361_)
                          (gx#expander-binding?__0 _bind80361_))
                        _g83124_))
                ((##fx= _g83123_ 2)
                 (apply (lambda (_bind80365_ _is?80366_)
                          (gx#expander-binding?__% _bind80365_ _is?80366_))
                        _g83124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g83124_))))))
    (define gx#core-expander-binding?
      (lambda (_bind80352_)
        (gx#expander-binding?__% _bind80352_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind80350_)
        (gx#expander-binding?__% _bind80350_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind80344_)
        (letrec ((_direct-special-form?80346_
                  (lambda (_obj80348_)
                    (##structure-direct-instance-of?
                     _obj80348_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind80344_ _direct-special-form?80346_))))
    (define gx#special-form-binding?
      (lambda (_bind80342_)
        (gx#expander-binding?__% _bind80342_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind80333_)
        (letrec ((_feature?80335_
                  (lambda (_e80337_)
                    (let ((_$e80339_
                           (##structure-instance-of?
                            _e80337_
                            'gx#feature-expander::t)))
                      (if _$e80339_
                          _$e80339_
                          (##structure-instance-of?
                           _e80337_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind80333_ _feature?80335_))))
    (define gx#private-feature-binding?
      (lambda (_bind80331_)
        (gx#expander-binding?__% _bind80331_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id80318_ _bound?80319_)
        (if (gx#identifier? _id80318_)
            (_bound?80319_ (gx#resolve-identifier__0 _id80318_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id80324_)
        (let ((_bound?80326_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id80324_ _bound?80326_))))
    (define gx#core-bound-identifier?
      (lambda _g83126_
        (let ((_g83125_ (##length _g83126_)))
          (cond ((##fx= _g83125_ 1)
                 (apply (lambda (_id80324_)
                          (gx#core-bound-identifier?__0 _id80324_))
                        _g83126_))
                ((##fx= _g83125_ 2)
                 (apply (lambda (_id80328_ _bound?80329_)
                          (gx#core-bound-identifier?__%
                           _id80328_
                           _bound?80329_))
                        _g83126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g83126_))))))
    (define gx#core-identifier=?
      (lambda (_x80308_ _y80309_)
        (letrec ((_y=?80311_
                  (lambda (_xid80315_)
                    ((if (list? _y80309_) memq eq?) _xid80315_ _y80309_))))
          (let ((_bind80313_ (gx#resolve-identifier__0 _x80308_)))
            (if (##structure-instance-of? _bind80313_ 'gx#binding::t)
                (_y=?80311_
                 (##unchecked-structure-ref _bind80313_ '1 gx#binding::t '#f))
                (_y=?80311_ (gx#stx-e _x80308_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e80306_)
        (if (interned-symbol? _e80306_)
            (string-index__0 (symbol->string _e80306_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx80261_ _src80262_ _ctx80263_ _marks80264_)
        (if (##structure? _stx80261_)
            (let ((_$e80266_ (gx#sealed-syntax-unwrap _stx80261_)))
              (if _$e80266_
                  (values _$e80266_)
                  (if (gx#identifier? _stx80261_)
                      (let ((_id80269_
                             (gx#stx-unwrap__% _stx80261_ _marks80264_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id80269_ '1 gx#AST::t '#f)
                         (let ((_$e80271_
                                (##unchecked-structure-ref
                                 _id80269_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e80271_ _$e80271_ _src80262_))
                         _ctx80263_
                         (##unchecked-structure-ref
                          _id80269_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx80261_)
                       (let ((_$e80274_ (gx#stx-source _stx80261_)))
                         (if _$e80274_ _$e80274_ _src80262_))
                       _ctx80263_
                       (reverse _marks80264_)))))
            (##structure
             gx#syntax-quote::t
             _stx80261_
             _src80262_
             _ctx80263_
             (reverse _marks80264_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx80280_)
        (let* ((_src80282_ '#f)
               (_ctx80284_ (gx#current-expander-context))
               (_marks80286_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80280_
           _src80282_
           _ctx80284_
           _marks80286_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx80288_ _src80289_)
        (let* ((_ctx80291_ (gx#current-expander-context))
               (_marks80293_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80288_
           _src80289_
           _ctx80291_
           _marks80293_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx80295_ _src80296_ _ctx80297_)
        (let ((_marks80299_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80295_
           _src80296_
           _ctx80297_
           _marks80299_))))
    (define gx#core-quote-syntax
      (lambda _g83128_
        (let ((_g83127_ (##length _g83128_)))
          (cond ((##fx= _g83127_ 1)
                 (apply (lambda (_stx80280_)
                          (gx#core-quote-syntax__0 _stx80280_))
                        _g83128_))
                ((##fx= _g83127_ 2)
                 (apply (lambda (_stx80288_ _src80289_)
                          (gx#core-quote-syntax__1 _stx80288_ _src80289_))
                        _g83128_))
                ((##fx= _g83127_ 3)
                 (apply (lambda (_stx80295_ _src80296_ _ctx80297_)
                          (gx#core-quote-syntax__2
                           _stx80295_
                           _src80296_
                           _ctx80297_))
                        _g83128_))
                ((##fx= _g83127_ 4)
                 (apply (lambda (_stx80301_ _src80302_ _ctx80303_ _marks80304_)
                          (gx#core-quote-syntax__%
                           _stx80301_
                           _src80302_
                           _ctx80303_
                           _marks80304_))
                        _g83128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g83128_))))))
    (define gx#core-cons
      (lambda (_hd80257_ _tl80258_)
        (cons (gx#core-quote-syntax__0 _hd80257_) _tl80258_)))
    (define gx#core-list
      (lambda (_hd80254_ . _rest80255_)
        (cons (gx#core-quote-syntax__0 _hd80254_) _rest80255_)))
    (define gx#core-cons*
      (lambda (_hd80251_ . _rest80252_)
        (apply cons* (gx#core-quote-syntax__0 _hd80251_) _rest80252_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path80225_ _rel80226_)
        (let ((_path80238_ (gx#stx-e _stx-path80225_))
              (_reldir80239_
               (let _lp80228_ ((_relsrc80230_
                                (let ((_$e80235_
                                       (gx#stx-source _stx-path80225_)))
                                  (if _$e80235_ _$e80235_ _rel80226_))))
                 (if (##structure-instance-of? _relsrc80230_ 'gerbil#AST::t)
                     (_lp80228_
                      (let ((_$e80232_ (gx#stx-source _relsrc80230_)))
                        (if _$e80232_ _$e80232_ (gx#stx-e _relsrc80230_))))
                     (if (source-location-path? _relsrc80230_)
                         (path-directory (source-location-path _relsrc80230_))
                         (if (string? _relsrc80230_)
                             (path-directory _relsrc80230_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path80238_ (path-normalize _reldir80239_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path80244_)
        (let ((_rel80246_ '#f))
          (gx#core-resolve-path__% _stx-path80244_ _rel80246_))))
    (define gx#core-resolve-path
      (lambda _g83130_
        (let ((_g83129_ (##length _g83130_)))
          (cond ((##fx= _g83129_ 1)
                 (apply (lambda (_stx-path80244_)
                          (gx#core-resolve-path__0 _stx-path80244_))
                        _g83130_))
                ((##fx= _g83129_ 2)
                 (apply (lambda (_stx-path80248_ _rel80249_)
                          (gx#core-resolve-path__% _stx-path80248_ _rel80249_))
                        _g83130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g83130_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr80181_ _ctx80182_)
        (let* ((_repr8018380190_ _repr80181_)
               (_E8018580194_
                (lambda () (error '"No clause matching" _repr8018380190_)))
               (_K8018680202_
                (lambda (_subs80197_ _phi80198_)
                  (let ((_subst80200_
                         (if (not (null? _subs80197_))
                             (list->hash-table-eq _subs80197_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst80200_
                     _ctx80182_
                     _phi80198_
                     '#f)))))
          (if (##pair? _repr8018380190_)
              (let ((_hd8018780205_ (##car _repr8018380190_))
                    (_tl8018880207_ (##cdr _repr8018380190_)))
                (let* ((_phi80210_ _hd8018780205_)
                       (_subs80212_ _tl8018880207_))
                  (_K8018680202_ _subs80212_ _phi80210_)))
              (_E8018580194_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr80217_)
        (let ((_ctx80219_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr80217_ _ctx80219_))))
    (define gx#core-deserialize-mark
      (lambda _g83132_
        (let ((_g83131_ (##length _g83132_)))
          (cond ((##fx= _g83131_ 1)
                 (apply (lambda (_repr80217_)
                          (gx#core-deserialize-mark__0 _repr80217_))
                        _g83132_))
                ((##fx= _g83131_ 2)
                 (apply (lambda (_repr80221_ _ctx80222_)
                          (gx#core-deserialize-mark__% _repr80221_ _ctx80222_))
                        _g83132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g83132_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx80178_)
        (gx#stx-rewrap _stx80178_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx80176_)
        (gx#stx-unwrap__% _stx80176_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx80146_)
        (let* ((_g8014780155_ (gx#current-expander-marks))
               (_else8014980163_ (lambda () _stx80146_))
               (_K8015180168_
                (lambda (_hd80166_) (gx#stx-apply-mark _stx80146_ _hd80166_))))
          (if (##pair? _g8014780155_)
              (let* ((_hd8015280171_ (##car _g8014780155_))
                     (_hd80174_ _hd8015280171_))
                (_K8015180168_ _hd80174_))
              (_else8014980163_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx80131_ _E80132_)
        (let ((_bind80134_ (gx#resolve-identifier__0 _stx80131_)))
          (if (##structure-direct-instance-of?
               _bind80134_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind80134_
               '4
               gx#syntax-binding::t
               '#f)
              (_E80132_ _stx80131_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx80139_)
        (let ((_E80141_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx80139_ _E80141_))))
    (define gx#syntax-local-e
      (lambda _g83134_
        (let ((_g83133_ (##length _g83134_)))
          (cond ((##fx= _g83133_ 1)
                 (apply (lambda (_stx80139_) (gx#syntax-local-e__0 _stx80139_))
                        _g83134_))
                ((##fx= _g83133_ 2)
                 (apply (lambda (_stx80143_ _E80144_)
                          (gx#syntax-local-e__% _stx80143_ _E80144_))
                        _g83134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g83134_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx80115_ _E80116_)
        (let ((_e80118_ (gx#syntax-local-e__% _stx80115_ _E80116_)))
          (if (##structure-instance-of? _e80118_ 'gx#expander::t)
              (##structure-ref _e80118_ '1 gx#expander::t '#f)
              _e80118_))))
    (define gx#syntax-local-value__0
      (lambda (_stx80123_)
        (let ((_E80125_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx80123_ _E80125_))))
    (define gx#syntax-local-value
      (lambda _g83136_
        (let ((_g83135_ (##length _g83136_)))
          (cond ((##fx= _g83135_ 1)
                 (apply (lambda (_stx80123_)
                          (gx#syntax-local-value__0 _stx80123_))
                        _g83136_))
                ((##fx= _g83135_ 2)
                 (apply (lambda (_stx80127_ _E80128_)
                          (gx#syntax-local-value__% _stx80127_ _E80128_))
                        _g83136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g83136_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx80112_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx80112_)))))
