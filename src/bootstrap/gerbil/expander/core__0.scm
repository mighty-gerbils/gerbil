(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707840755)
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
      (lambda _$args146291_
        (apply make-instance gx#expander-context::t _$args146291_)))
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
      (lambda _$args146288_
        (apply make-instance gx#root-context::t _$args146288_)))
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
      (lambda _$args146285_
        (apply make-instance gx#phi-context::t _$args146285_)))
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
      (lambda _$args146282_
        (apply make-instance gx#top-context::t _$args146282_)))
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
      (lambda _$args146279_
        (apply make-instance gx#module-context::t _$args146279_)))
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
      (lambda _$args146276_
        (apply make-instance gx#prelude-context::t _$args146276_)))
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
      (lambda _$args146273_
        (apply make-instance gx#local-context::t _$args146273_)))
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
      (lambda (_self146257_ _id146258_ _super146259_)
        (if (##fx< '3 (##structure-length _self146257_))
            (begin
              (##unchecked-structure-set!
               _self146257_
               _id146258_
               '1
               (##structure-type _self146257_)
               '#f)
              (##unchecked-structure-set!
               _self146257_
               (make-table 'test: eq?)
               '2
               (##structure-type _self146257_)
               '#f)
              (##unchecked-structure-set!
               _self146257_
               _super146259_
               '3
               (##structure-type _self146257_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self146257_
                   '3
                   (##vector-length _self146257_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self146264_ _id146265_)
        (let ((_super146267_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self146264_ _id146265_ _super146267_))))
    (define gx#phi-context:::init!
      (lambda _g150902_
        (let ((_g150901_ (##length _g150902_)))
          (cond ((##fx= _g150901_ 2)
                 (apply (lambda (_self146264_ _id146265_)
                          (gx#phi-context:::init!__0 _self146264_ _id146265_))
                        _g150902_))
                ((##fx= _g150901_ 3)
                 (apply (lambda (_self146269_ _id146270_ _super146271_)
                          (gx#phi-context:::init!__%
                           _self146269_
                           _id146270_
                           _super146271_))
                        _g150902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g150902_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self146121_ _super146122_)
        (if (##fx< '3 (##structure-length _self146121_))
            (begin
              (##unchecked-structure-set!
               _self146121_
               (gensym 'L)
               '1
               (##structure-type _self146121_)
               '#f)
              (##unchecked-structure-set!
               _self146121_
               (make-table 'test: eq?)
               '2
               (##structure-type _self146121_)
               '#f)
              (##unchecked-structure-set!
               _self146121_
               _super146122_
               '3
               (##structure-type _self146121_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self146121_
                   '3
                   (##vector-length _self146121_)))))
    (define gx#local-context:::init!__0
      (lambda (_self146127_)
        (let ((_super146129_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self146127_ _super146129_))))
    (define gx#local-context:::init!
      (lambda _g150904_
        (let ((_g150903_ (##length _g150904_)))
          (cond ((##fx= _g150903_ 1)
                 (apply (lambda (_self146127_)
                          (gx#local-context:::init!__0 _self146127_))
                        _g150904_))
                ((##fx= _g150903_ 2)
                 (apply (lambda (_self146131_ _super146132_)
                          (gx#local-context:::init!__%
                           _self146131_
                           _super146132_))
                        _g150904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g150904_))))))
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
      (lambda _$args145995_ (apply make-instance gx#binding::t _$args145995_)))
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
      (lambda _$args145992_
        (apply make-instance gx#runtime-binding::t _$args145992_)))
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
      (lambda _$args145989_
        (apply make-instance gx#local-binding::t _$args145989_)))
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
      (lambda _$args145986_
        (apply make-instance gx#top-binding::t _$args145986_)))
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
      (lambda _$args145983_
        (apply make-instance gx#module-binding::t _$args145983_)))
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
      (lambda _$args145980_
        (apply make-instance gx#extern-binding::t _$args145980_)))
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
      (lambda _$args145977_
        (apply make-instance gx#syntax-binding::t _$args145977_)))
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
      (lambda _$args145974_
        (apply make-instance gx#import-binding::t _$args145974_)))
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
      (lambda _$args145971_
        (apply make-instance gx#alias-binding::t _$args145971_)))
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
      (lambda _$args145968_
        (apply make-instance gx#expander::t _$args145968_)))
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
      (lambda _$args145965_
        (apply make-instance gx#core-expander::t _$args145965_)))
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
      (lambda _$args145962_
        (apply make-instance gx#expression-form::t _$args145962_)))
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
      (lambda _$args145959_
        (apply make-instance gx#special-form::t _$args145959_)))
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
      (lambda _$args145956_
        (apply make-instance gx#definition-form::t _$args145956_)))
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
      (lambda _$args145953_
        (apply make-instance gx#top-special-form::t _$args145953_)))
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
      (lambda _$args145950_
        (apply make-instance gx#module-special-form::t _$args145950_)))
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
      (lambda _$args145947_
        (apply make-instance gx#feature-expander::t _$args145947_)))
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
      (lambda _$args145944_
        (apply make-instance gx#private-feature-expander::t _$args145944_)))
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
      (lambda _$args145941_
        (apply make-instance gx#reserved-expander::t _$args145941_)))
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
      (lambda _$args145938_
        (apply make-instance gx#macro-expander::t _$args145938_)))
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
      (lambda _$args145935_
        (apply make-instance gx#rename-macro-expander::t _$args145935_)))
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
      (lambda _$args145932_
        (apply make-instance gx#user-expander::t _$args145932_)))
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
      (lambda _$args145929_
        (apply make-instance gx#expander-mark::t _$args145929_)))
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
      (lambda (_ctx145914_ _message145915_ _stx145916_ . _details145917_)
        (let ((_ctx145927_
               (let ((_$e145919_ _ctx145914_))
                 (if _$e145919_
                     _$e145919_
                     (let ((_$e145922_ (gx#core-context-top__0)))
                       (if _$e145922_
                           ((lambda (_ctx145925_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx145925_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e145922_)
                           '#f))))))
          (raise (make-syntax-error
                  _message145915_
                  (cons _stx145916_ _details145917_)
                  _ctx145927_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx145901_ _expression?145902_)
        (gx#eval-syntax* (gx#core-expand__% _stx145901_ _expression?145902_))))
    (define gx#eval-syntax__0
      (lambda (_stx145907_)
        (let ((_expression?145909_ '#f))
          (gx#eval-syntax__% _stx145907_ _expression?145909_))))
    (define gx#eval-syntax
      (lambda _g150906_
        (let ((_g150905_ (##length _g150906_)))
          (cond ((##fx= _g150905_ 1)
                 (apply (lambda (_stx145907_) (gx#eval-syntax__0 _stx145907_))
                        _g150906_))
                ((##fx= _g150905_ 2)
                 (apply (lambda (_stx145911_ _expression?145912_)
                          (gx#eval-syntax__% _stx145911_ _expression?145912_))
                        _g150906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g150906_))))))
    (define gx#eval-syntax*
      (lambda (_stx145898_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx145898_))))
    (define gx#core-expand__%
      (lambda (_stx145885_ _expression?145886_)
        (if _expression?145886_
            (gx#core-expand-expression _stx145885_)
            (gx#core-expand-top _stx145885_))))
    (define gx#core-expand__0
      (lambda (_stx145891_)
        (let ((_expression?145893_ '#f))
          (gx#core-expand__% _stx145891_ _expression?145893_))))
    (define gx#core-expand
      (lambda _g150908_
        (let ((_g150907_ (##length _g150908_)))
          (cond ((##fx= _g150907_ 1)
                 (apply (lambda (_stx145891_) (gx#core-expand__0 _stx145891_))
                        _g150908_))
                ((##fx= _g150907_ 2)
                 (apply (lambda (_stx145895_ _expression?145896_)
                          (gx#core-expand__% _stx145895_ _expression?145896_))
                        _g150908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g150908_))))))
    (define gx#core-expand-top
      (lambda (_stx145852_)
        (let* ((_stx145854_ (gx#core-expand*__0 _stx145852_))
               (_e145855145862_ _stx145854_)
               (_E145857145866_
                (lambda () (gx#core-expand-expression _stx145854_)))
               (_E145856145880_
                (lambda ()
                  (if (gx#stx-pair? _e145855145862_)
                      (let ((_e145858145870_ (gx#syntax-e _e145855145862_)))
                        (let ((_hd145859145873_ (##car _e145858145870_))
                              (_tl145860145875_ (##cdr _e145858145870_)))
                          (let ((_form145878_ _hd145859145873_))
                            (if (gx#core-bound-identifier?__0 _form145878_)
                                _stx145854_
                                (_E145857145866_)))))
                      (_E145857145866_)))))
          (_E145856145880_))))
    (define gx#core-expand-expression
      (lambda (_stx145799_)
        (letrec ((_sealed-expression?145801_
                  (lambda (_hd145822_)
                    (if (gx#sealed-syntax? _hd145822_)
                        (let* ((_e145823145830_ _hd145822_)
                               (_E145825145834_ (lambda () '#f))
                               (_E145824145848_
                                (lambda ()
                                  (if (gx#stx-pair? _e145823145830_)
                                      (let ((_e145826145838_
                                             (gx#syntax-e _e145823145830_)))
                                        (let ((_hd145827145841_
                                               (##car _e145826145838_))
                                              (_tl145828145843_
                                               (##cdr _e145826145838_)))
                                          (let ((_form145846_
                                                 _hd145827145841_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form145846_
                                                 gx#expression-form-binding?)
                                                (_E145825145834_)))))
                                      (_E145825145834_)))))
                          (_E145824145848_))
                        '#f)))
                 (_illegal-expression145802_
                  (lambda (_hd145820_ . _g150909_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx145799_
                     _hd145820_)))
                 (_expand-e145803_
                  (lambda (_form145815_ _hd145816_)
                    (let ((_bind145818_
                           (if (##structure-instance-of?
                                _form145815_
                                'gx#binding::t)
                               _form145815_
                               (gx#resolve-identifier__0 _form145815_))))
                      (if (gx#core-expander-binding? _bind145818_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind145818_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd145816_
                            (gx#stx-source _stx145799_)))
                          (if (##structure-direct-instance-of?
                               _bind145818_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind145818_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd145816_
                                 (gx#stx-source _stx145799_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx145799_
                               _form145815_)))))))
          (let ((_hd145805_ (gx#core-expand-head _stx145799_)))
            (if (_sealed-expression?145801_ _hd145805_)
                _hd145805_
                (if (gx#stx-pair? _hd145805_)
                    (let* ((_form145807_ (gx#stx-car _hd145805_))
                           (_bind145809_
                            (if (gx#identifier? _form145807_)
                                (gx#resolve-identifier__0 _form145807_)
                                '#f)))
                      (if (or (not _bind145809_)
                              (not (gx#core-expander-binding? _bind145809_)))
                          (_expand-e145803_ '%%app (cons '%%app _hd145805_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind145809_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd145805_
                               _illegal-expression145802_)
                              (if (gx#expression-form-binding? _bind145809_)
                                  (_expand-e145803_ _bind145809_ _hd145805_)
                                  (if (gx#direct-special-form-binding?
                                       _bind145809_)
                                      (gx#core-expand-expression
                                       (_expand-e145803_
                                        _bind145809_
                                        _hd145805_))
                                      (_illegal-expression145802_
                                       _hd145805_))))))
                    (if (gx#core-bound-identifier?__0 _hd145805_)
                        (_illegal-expression145802_ _hd145805_)
                        (if (gx#identifier? _hd145805_)
                            (_expand-e145803_
                             '%%ref
                             (cons '%%ref (cons _hd145805_ '())))
                            (if (gx#stx-datum? _hd145805_)
                                (_expand-e145803_
                                 '%#quote
                                 (cons '%#quote (cons _hd145805_ '())))
                                (_illegal-expression145802_
                                 _hd145805_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx145794_)
        (call-with-parameters
         (lambda ()
           (let ((_stx145797_ (gx#core-expand-expression _stx145794_)))
             (values _stx145797_ (gx#eval-syntax* _stx145797_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx145775_ _stop?145776_)
        (let _lp145778_ ((_stx145780_ _stx145775_))
          (if (_stop?145776_ _stx145780_)
              _stx145780_
              (let ((_rstx145782_ (gx#core-expand1 _stx145780_)))
                (if (eq? _stx145780_ _rstx145782_)
                    _stx145780_
                    (_lp145778_ _rstx145782_)))))))
    (define gx#core-expand*__0
      (lambda (_stx145787_)
        (let ((_stop?145789_ false))
          (gx#core-expand*__% _stx145787_ _stop?145789_))))
    (define gx#core-expand*
      (lambda _g150911_
        (let ((_g150910_ (##length _g150911_)))
          (cond ((##fx= _g150910_ 1)
                 (apply (lambda (_stx145787_) (gx#core-expand*__0 _stx145787_))
                        _g150911_))
                ((##fx= _g150910_ 2)
                 (apply (lambda (_stx145791_ _stop?145792_)
                          (gx#core-expand*__% _stx145791_ _stop?145792_))
                        _g150911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g150911_))))))
    (define gx#core-expand1
      (lambda (_stx145731_)
        (letrec ((_step145733_
                  (lambda (_hd145770_)
                    (let ((_bind145772_ (gx#resolve-identifier__0 _hd145770_)))
                      (if (##structure-instance-of?
                           _bind145772_
                           'gx#runtime-binding::t)
                          _stx145731_
                          (if (##structure-direct-instance-of?
                               _bind145772_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind145772_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx145731_)
                              (if (not _bind145772_)
                                  _stx145731_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx145731_))))))))
          (let* ((_e145734145742_ _stx145731_)
                 (_E145740145746_ (lambda () _stx145731_))
                 (_E145736145752_
                  (lambda ()
                    (let ((_hd145750_ _e145734145742_))
                      (if (gx#identifier? _hd145750_)
                          (_step145733_ _hd145750_)
                          (_E145740145746_)))))
                 (_E145735145766_
                  (lambda ()
                    (if (gx#stx-pair? _e145734145742_)
                        (let ((_e145737145756_ (gx#syntax-e _e145734145742_)))
                          (let ((_hd145738145759_ (##car _e145737145756_))
                                (_tl145739145761_ (##cdr _e145737145756_)))
                            (let ((_hd145764_ _hd145738145759_))
                              (if (gx#identifier? _hd145764_)
                                  (_step145733_ _hd145764_)
                                  (_E145736145752_)))))
                        (_E145736145752_)))))
            (_E145735145766_)))))
    (define gx#core-expand-head
      (lambda (_stx145697_)
        (letrec ((_stop?145699_
                  (lambda (_stx145701_)
                    (let* ((_e145702145709_ _stx145701_)
                           (_E145704145713_ (lambda () '#f))
                           (_E145703145727_
                            (lambda ()
                              (if (gx#stx-pair? _e145702145709_)
                                  (let ((_e145705145717_
                                         (gx#syntax-e _e145702145709_)))
                                    (let ((_hd145706145720_
                                           (##car _e145705145717_))
                                          (_tl145707145722_
                                           (##cdr _e145705145717_)))
                                      (let ((_hd145725_ _hd145706145720_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd145725_)
                                            (_E145704145713_)))))
                                  (_E145704145713_)))))
                      (_E145703145727_)))))
          (gx#core-expand*__% _stx145697_ _stop?145699_))))
    (define gx#core-expand-block__%
      (lambda (_stx145503_
               _expand-special145504_
               _begin-form145505_
               _expand-e145506_)
        (letrec ((_expand-splice145508_
                  (lambda (_hd145671_ _body145672_ _rest145673_ _r145674_)
                    (if (gx#stx-list? _body145672_)
                        (_K145512_
                         (gx#stx-foldr cons _rest145673_ _body145672_)
                         _r145674_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx145503_
                         _hd145671_))))
                 (_expand-cond-expand145509_
                  (lambda (_hd145667_ _rest145668_ _r145669_)
                    (_K145512_
                     (cons (gx#core-expand-cond-expand% _hd145667_)
                           _rest145668_)
                     _r145669_)))
                 (_expand-include145510_
                  (lambda (_hd145616_ _rest145617_ _r145618_)
                    (let* ((_e145619145629_ _hd145616_)
                           (_E145621145633_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145619145629_)))
                           (_E145620145663_
                            (lambda ()
                              (if (gx#stx-pair? _e145619145629_)
                                  (let ((_e145622145637_
                                         (gx#syntax-e _e145619145629_)))
                                    (let ((_hd145623145640_
                                           (##car _e145622145637_))
                                          (_tl145624145642_
                                           (##cdr _e145622145637_)))
                                      (if (gx#stx-pair? _tl145624145642_)
                                          (let ((_e145625145645_
                                                 (gx#syntax-e
                                                  _tl145624145642_)))
                                            (let ((_hd145626145648_
                                                   (##car _e145625145645_))
                                                  (_tl145627145650_
                                                   (##cdr _e145625145645_)))
                                              (let ((_path145653_
                                                     _hd145626145648_))
                                                (if (gx#stx-null?
                                                     _tl145627145650_)
                                                    (if (gx#stx-string?
                                                         _path145653_)
                                                        (let* ((_rpath145655_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path145653_
                         (gx#stx-source _hd145616_)))
                       (_block145657_
                        (gx#core-expand-include%__% _hd145616_ _rpath145655_))
                       (_rbody145660_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block145657_
                            _expand-special145504_
                            '#f
                            _expand-e145506_))
                         gx#current-expander-path
                         (cons _rpath145655_ (gx#current-expander-path)))))
                  (_K145512_
                   _rest145617_
                   (foldr1 cons _r145618_ _rbody145660_)))
                (_E145621145633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E145621145633_)))))
                                          (_E145621145633_))))
                                  (_E145621145633_)))))
                      (_E145620145663_))))
                 (_expand-expression145511_
                  (lambda (_hd145612_ _rest145613_ _r145614_)
                    (_K145512_
                     _rest145613_
                     (cons (_expand-e145506_ _hd145612_) _r145614_))))
                 (_K145512_
                  (lambda (_rest145542_ _r145543_)
                    (let* ((_e145544145551_ _rest145542_)
                           (_E145546145555_
                            (lambda ()
                              (if _begin-form145505_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form145505_
                                    (reverse _r145543_))
                                   (gx#stx-source _stx145503_))
                                  _r145543_)))
                           (_E145545145608_
                            (lambda ()
                              (if (gx#stx-pair? _e145544145551_)
                                  (let ((_e145547145559_
                                         (gx#syntax-e _e145544145551_)))
                                    (let ((_hd145548145562_
                                           (##car _e145547145559_))
                                          (_tl145549145564_
                                           (##cdr _e145547145559_)))
                                      (let* ((_hd145567_ _hd145548145562_)
                                             (_rest145569_ _tl145549145564_))
                                        (if '#t
                                            (let* ((_hd145571_
                                                    (gx#core-expand-head
                                                     _hd145567_))
                                                   (_e145572145579_ _hd145571_)
                                                   (_E145574145583_
                                                    (lambda ()
                                                      (_expand-expression145511_
                                                       _hd145571_
                                                       _rest145569_
                                                       _r145543_)))
                                                   (_E145573145604_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e145572145579_)
                                                          (let ((_e145575145587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e145572145579_)))
                    (let ((_hd145576145590_ (##car _e145575145587_))
                          (_tl145577145592_ (##cdr _e145575145587_)))
                      (let* ((_form145595_ _hd145576145590_)
                             (_body145597_ _tl145577145592_))
                        (if '#t
                            (let ((_bind145599_
                                   (if (gx#identifier? _form145595_)
                                       (gx#resolve-identifier__0 _form145595_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind145599_)
                                  (let ((_$e145601_
                                         (##unchecked-structure-ref
                                          _bind145599_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e145601_)
                                        (_expand-splice145508_
                                         _hd145571_
                                         _body145597_
                                         _rest145569_
                                         _r145543_)
                                        (if (eq? '%#cond-expand _$e145601_)
                                            (_expand-cond-expand145509_
                                             _hd145571_
                                             _rest145569_
                                             _r145543_)
                                            (if (eq? '%#include _$e145601_)
                                                (_expand-include145510_
                                                 _hd145571_
                                                 _rest145569_
                                                 _r145543_)
                                                (_expand-special145504_
                                                 _hd145571_
                                                 _K145512_
                                                 _rest145569_
                                                 _r145543_)))))
                                  (_expand-expression145511_
                                   _hd145571_
                                   _rest145569_
                                   _r145543_)))
                            (_E145574145583_)))))
                  (_E145574145583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145573145604_))
                                            (_E145546145555_)))))
                                  (_E145546145555_)))))
                      (_E145545145608_)))))
          (let* ((_e145513145520_ _stx145503_)
                 (_E145515145524_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145513145520_)))
                 (_E145514145538_
                  (lambda ()
                    (if (gx#stx-pair? _e145513145520_)
                        (let ((_e145516145528_ (gx#syntax-e _e145513145520_)))
                          (let ((_hd145517145531_ (##car _e145516145528_))
                                (_tl145518145533_ (##cdr _e145516145528_)))
                            (let ((_body145536_ _tl145518145533_))
                              (if (gx#stx-list? _body145536_)
                                  (_K145512_ _body145536_ '())
                                  (_E145515145524_)))))
                        (_E145515145524_)))))
            (_E145514145538_)))))
    (define gx#core-expand-block__0
      (lambda (_stx145679_ _expand-special145680_)
        (let* ((_begin-form145682_ '%#begin)
               (_expand-e145684_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx145679_
           _expand-special145680_
           _begin-form145682_
           _expand-e145684_))))
    (define gx#core-expand-block__1
      (lambda (_stx145686_ _expand-special145687_ _begin-form145688_)
        (let ((_expand-e145690_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx145686_
           _expand-special145687_
           _begin-form145688_
           _expand-e145690_))))
    (define gx#core-expand-block
      (lambda _g150913_
        (let ((_g150912_ (##length _g150913_)))
          (cond ((##fx= _g150912_ 2)
                 (apply (lambda (_stx145679_ _expand-special145680_)
                          (gx#core-expand-block__0
                           _stx145679_
                           _expand-special145680_))
                        _g150913_))
                ((##fx= _g150912_ 3)
                 (apply (lambda (_stx145686_
                                 _expand-special145687_
                                 _begin-form145688_)
                          (gx#core-expand-block__1
                           _stx145686_
                           _expand-special145687_
                           _begin-form145688_))
                        _g150913_))
                ((##fx= _g150912_ 4)
                 (apply (lambda (_stx145692_
                                 _expand-special145693_
                                 _begin-form145694_
                                 _expand-e145695_)
                          (gx#core-expand-block__%
                           _stx145692_
                           _expand-special145693_
                           _begin-form145694_
                           _expand-e145695_))
                        _g150913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g150913_))))))
    (define gx#core-expand-block*
      (lambda (_stx145451_ _expand-special145452_)
        (let* ((_g145453145464_
                (gx#core-expand-block__1
                 _stx145451_
                 _expand-special145452_
                 '#f))
               (_E145457145468_
                (lambda () (error '"No clause matching" _g145453145464_))))
          (let ((_K145462145499_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx145451_)))
                (_K145459145485_ (lambda (_expr145483_) _expr145483_))
                (_K145458145474_
                 (lambda (_body145472_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body145472_))
                    (gx#stx-source _stx145451_)))))
            (let ((_try-match145455145495_
                   (lambda ()
                     (if (##pair? _g145453145464_)
                         (let ((_tl145461145490_ (##cdr _g145453145464_))
                               (_hd145460145488_ (##car _g145453145464_)))
                           (if (##null? _tl145461145490_)
                               (let ((_expr145493_ _hd145460145488_))
                                 (_K145459145485_ _expr145493_))
                               (let ((_body145477_ _g145453145464_))
                                 (_K145458145474_ _body145477_))))
                         (let ((_body145477_ _g145453145464_))
                           (_K145458145474_ _body145477_))))))
              (if (##null? _g145453145464_)
                  (_K145462145499_)
                  (_try-match145455145495_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx145279_)
        (letrec ((_satisfied?145281_
                  (lambda (_condition145379_)
                    (let* ((_e145380145395_ _condition145379_)
                           (_E145390145399_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145380145395_)))
                           (_E145383145418_
                            (lambda ()
                              (if (gx#stx-pair? _e145380145395_)
                                  (let ((_e145391145403_
                                         (gx#syntax-e _e145380145395_)))
                                    (let ((_hd145392145406_
                                           (##car _e145391145403_))
                                          (_tl145393145408_
                                           (##cdr _e145391145403_)))
                                      (let* ((_combinator145411_
                                              _hd145392145406_)
                                             (_body145413_ _tl145393145408_))
                                        (if (gx#stx-list? _body145413_)
                                            (let ((_$e145415_
                                                   (gx#stx-e
                                                    _combinator145411_)))
                                              (if (eq? 'not _$e145415_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?145281_
                                                        _body145413_))
                                                  (if (eq? 'and _$e145415_)
                                                      (gx#stx-andmap
                                                       _satisfied?145281_
                                                       _body145413_)
                                                      (if (eq? 'or _$e145415_)
                                                          (gx#stx-ormap
                                                           _satisfied?145281_
                                                           _body145413_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e145415_)
                      (gx#stx-andmap gx#core-resolve-identifier _body145413_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx145279_
                       _combinator145411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E145390145399_)))))
                                  (_E145390145399_))))
                           (_E145382145441_
                            (lambda ()
                              (if (gx#stx-pair? _e145380145395_)
                                  (let ((_e145384145422_
                                         (gx#syntax-e _e145380145395_)))
                                    (let ((_hd145385145425_
                                           (##car _e145384145422_))
                                          (_tl145386145427_
                                           (##cdr _e145384145422_)))
                                      (if (and (gx#identifier?
                                                _hd145385145425_)
                                               (gx#core-identifier=?
                                                _hd145385145425_
                                                'unquote))
                                          (if (gx#stx-pair? _tl145386145427_)
                                              (let ((_e145387145430_
                                                     (gx#syntax-e
                                                      _tl145386145427_)))
                                                (let ((_hd145388145433_
                                                       (##car _e145387145430_))
                                                      (_tl145389145435_
                                                       (##cdr _e145387145430_)))
                                                  (let ((_expr145438_
                                                         _hd145388145433_))
                                                    (if (gx#stx-null?
                                                         _tl145389145435_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr145438_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E145383145418_))
                (_E145383145418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145383145418_))
                                          (_E145383145418_))))
                                  (_E145383145418_))))
                           (_E145381145447_
                            (lambda ()
                              (let ((_id145445_ _e145380145395_))
                                (if (gx#identifier? _id145445_)
                                    (gx#core-bound-identifier?__%
                                     _id145445_
                                     gx#feature-binding?)
                                    (_E145382145441_))))))
                      (_E145381145447_))))
                 (_loop145282_
                  (lambda (_rest145312_)
                    (let* ((_e145313145321_ _rest145312_)
                           (_E145319145325_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145313145321_)))
                           (_E145315145329_
                            (lambda ()
                              (if (gx#stx-null? _e145313145321_)
                                  (if '#t '() (_E145319145325_))
                                  (_E145319145325_))))
                           (_E145314145375_
                            (lambda ()
                              (if (gx#stx-pair? _e145313145321_)
                                  (let ((_e145316145333_
                                         (gx#syntax-e _e145313145321_)))
                                    (let ((_hd145317145336_
                                           (##car _e145316145333_))
                                          (_tl145318145338_
                                           (##cdr _e145316145333_)))
                                      (let* ((_hd145341_ _hd145317145336_)
                                             (_rest145343_ _tl145318145338_))
                                        (if '#t
                                            (let* ((_e145344145351_ _hd145341_)
                                                   (_E145346145355_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e145344145351_)))
                                                   (_E145345145371_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e145344145351_)
                                                          (let ((_e145347145359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e145344145351_)))
                    (let ((_hd145348145362_ (##car _e145347145359_))
                          (_tl145349145364_ (##cdr _e145347145359_)))
                      (let* ((_condition145367_ _hd145348145362_)
                             (_body145369_ _tl145349145364_))
                        (if '#t
                            (if (gx#stx-eq? _condition145367_ 'else)
                                (if (gx#stx-null? _rest145343_)
                                    _body145369_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx145279_
                                     _hd145341_))
                                (if (_satisfied?145281_ _condition145367_)
                                    _body145369_
                                    (_loop145282_ _rest145343_)))
                            (_E145346145355_)))))
                  (_E145346145355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145345145371_))
                                            (_E145315145329_)))))
                                  (_E145315145329_)))))
                      (_E145314145375_)))))
          (let* ((_e145283145290_ _stx145279_)
                 (_E145285145294_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145283145290_)))
                 (_E145284145308_
                  (lambda ()
                    (if (gx#stx-pair? _e145283145290_)
                        (let ((_e145286145298_ (gx#syntax-e _e145283145290_)))
                          (let ((_hd145287145301_ (##car _e145286145298_))
                                (_tl145288145303_ (##cdr _e145286145298_)))
                            (let ((_clauses145306_ _tl145288145303_))
                              (if (gx#stx-list? _clauses145306_)
                                  (gx#core-cons
                                   'begin
                                   (_loop145282_ _clauses145306_))
                                  (_E145285145294_)))))
                        (_E145285145294_)))))
            (_E145284145308_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx145222_ _rpath145223_)
        (let* ((_e145224145234_ _stx145222_)
               (_E145226145238_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145224145234_)))
               (_E145225145265_
                (lambda ()
                  (if (gx#stx-pair? _e145224145234_)
                      (let ((_e145227145242_ (gx#syntax-e _e145224145234_)))
                        (let ((_hd145228145245_ (##car _e145227145242_))
                              (_tl145229145247_ (##cdr _e145227145242_)))
                          (if (gx#stx-pair? _tl145229145247_)
                              (let ((_e145230145250_
                                     (gx#syntax-e _tl145229145247_)))
                                (let ((_hd145231145253_
                                       (##car _e145230145250_))
                                      (_tl145232145255_
                                       (##cdr _e145230145250_)))
                                  (let ((_path145258_ _hd145231145253_))
                                    (if (gx#stx-null? _tl145232145255_)
                                        (if (gx#stx-string? _path145258_)
                                            (let ((_rpath145263_
                                                   (let ((_$e145260_
                                                          _rpath145223_))
                                                     (if _$e145260_
                                                         _$e145260_
                                                         (gx#core-resolve-path__%
                                                          _path145258_
                                                          (gx#stx-source
                                                           _stx145222_))))))
                                              (if (member _rpath145263_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx145222_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath145263_))
                                                    (gx#stx-source
                                                     _stx145222_)))))
                                            (_E145226145238_))
                                        (_E145226145238_)))))
                              (_E145226145238_))))
                      (_E145226145238_)))))
          (_E145225145265_))))
    (define gx#core-expand-include%__0
      (lambda (_stx145272_)
        (let ((_rpath145274_ '#f))
          (gx#core-expand-include%__% _stx145272_ _rpath145274_))))
    (define gx#core-expand-include%
      (lambda _g150915_
        (let ((_g150914_ (##length _g150915_)))
          (cond ((##fx= _g150914_ 1)
                 (apply (lambda (_stx145272_)
                          (gx#core-expand-include%__0 _stx145272_))
                        _g150915_))
                ((##fx= _g150914_ 2)
                 (apply (lambda (_stx145276_ _rpath145277_)
                          (gx#core-expand-include%__%
                           _stx145276_
                           _rpath145277_))
                        _g150915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g150915_))))))
    (define gx#core-apply-expander__%
      (lambda (_K145191_ _stx145192_ _method145193_)
        (if (procedure? _K145191_)
            (let ((_$e145195_ (gx#stx-source _stx145192_)))
              (if _$e145195_
                  ((lambda (_g145197145199_)
                     (gx#stx-wrap-source
                      (_K145191_ _stx145192_)
                      _g145197145199_))
                   _$e145195_)
                  (_K145191_ _stx145192_)))
            (let ((_$e145202_ (bound-method-ref _K145191_ _method145193_)))
              (if _$e145202_
                  ((lambda (_g145204145206_)
                     (gx#core-apply-expander__%
                      _g145204145206_
                      _stx145192_
                      _method145193_))
                   _$e145202_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx145192_
                   _method145193_))))))
    (define gx#core-apply-expander__0
      (lambda (_K145212_ _stx145213_)
        (let ((_method145215_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K145212_ _stx145213_ _method145215_))))
    (define gx#core-apply-expander
      (lambda _g150917_
        (let ((_g150916_ (##length _g150917_)))
          (cond ((##fx= _g150916_ 2)
                 (apply (lambda (_K145212_ _stx145213_)
                          (gx#core-apply-expander__0 _K145212_ _stx145213_))
                        _g150917_))
                ((##fx= _g150916_ 3)
                 (apply (lambda (_K145217_ _stx145218_ _method145219_)
                          (gx#core-apply-expander__%
                           _K145217_
                           _stx145218_
                           _method145219_))
                        _g150917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g150917_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self145187_ _stx145188_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx145188_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self145040_ _stx145041_)
        (let* ((_self145042145048_ _self145040_)
               (_E145044145052_
                (lambda () (error '"No clause matching" _self145042145048_)))
               (_K145045145057_
                (lambda (_K145055_)
                  (gx#core-apply-expander__0 _K145055_ _stx145041_))))
          (if (##structure-instance-of? _self145042145048_ 'gx#core-macro::t)
              (let* ((_e145046145060_
                      (##unchecked-structure-ref
                       _self145042145048_
                       '1
                       gx#expander::t
                       '#f))
                     (_K145063_ _e145046145060_))
                (_K145045145057_ _K145063_))
              (_E145044145052_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self144893_ _stx144894_)
        (if (gx#sealed-syntax? _stx144894_)
            _stx144894_
            (let* ((_self144895144901_ _self144893_)
                   (_E144897144905_
                    (lambda ()
                      (error '"No clause matching" _self144895144901_)))
                   (_K144898144910_
                    (lambda (_K144908_)
                      (gx#core-apply-expander__0 _K144908_ _stx144894_))))
              (if (##structure-instance-of?
                   _self144895144901_
                   'gx#core-expander::t)
                  (let* ((_e144899144913_
                          (##unchecked-structure-ref
                           _self144895144901_
                           '1
                           gx#expander::t
                           '#f))
                         (_K144916_ _e144899144913_))
                    (_K144898144910_ _K144916_))
                  (_E144897144905_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self144755_ _stx144756_ _top?144757_)
        (if (_top?144757_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self144755_ _stx144756_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx144756_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self144762_ _stx144763_)
        (let ((_top?144765_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self144762_
           _stx144763_
           _top?144765_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g150919_
        (let ((_g150918_ (##length _g150919_)))
          (cond ((##fx= _g150918_ 2)
                 (apply (lambda (_self144762_ _stx144763_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self144762_
                           _stx144763_))
                        _g150919_))
                ((##fx= _g150918_ 3)
                 (apply (lambda (_self144767_ _stx144768_ _top?144769_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self144767_
                           _stx144768_
                           _top?144769_))
                        _g150919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g150919_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self144629_ _stx144630_)
        (gx#top-special-form::apply-macro-expander__%
         _self144629_
         _stx144630_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self144454_ _stx144455_)
        (let* ((_self144456144462_ _self144454_)
               (_E144458144466_
                (lambda () (error '"No clause matching" _self144456144462_)))
               (_K144459144499_
                (lambda (_id144469_)
                  (let* ((_e144470144477_ _stx144455_)
                         (_E144472144481_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e144470144477_)))
                         (_E144471144495_
                          (lambda ()
                            (if (gx#stx-pair? _e144470144477_)
                                (let ((_e144473144485_
                                       (gx#syntax-e _e144470144477_)))
                                  (let ((_hd144474144488_
                                         (##car _e144473144485_))
                                        (_tl144475144490_
                                         (##cdr _e144473144485_)))
                                    (let ((_body144493_ _tl144475144490_))
                                      (if '#t
                                          (gx#core-cons
                                           _id144469_
                                           _body144493_)
                                          (_E144472144481_)))))
                                (_E144472144481_)))))
                    (_E144471144495_)))))
          (if (##structure-instance-of?
               _self144456144462_
               'gx#rename-macro-expander::t)
              (let* ((_e144460144502_
                      (##unchecked-structure-ref
                       _self144456144462_
                       '1
                       gx#expander::t
                       '#f))
                     (_id144505_ _e144460144502_))
                (_K144459144499_ _id144505_))
              (_E144458144466_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self144280_ _stx144281_ _method144282_)
        (let* ((_self144283144291_ _self144280_)
               (_E144285144295_
                (lambda () (error '"No clause matching" _self144283144291_)))
               (_K144286144302_
                (lambda (_phi144298_ _ctx144299_ _K144300_)
                  (gx#core-apply-user-macro
                   _K144300_
                   _stx144281_
                   _ctx144299_
                   _phi144298_
                   _method144282_))))
          (if (##structure-instance-of?
               _self144283144291_
               'gx#macro-expander::t)
              (let* ((_e144287144305_
                      (##unchecked-structure-ref
                       _self144283144291_
                       '1
                       gx#expander::t
                       '#f))
                     (_K144308_ _e144287144305_)
                     (_e144288144310_
                      (##unchecked-structure-ref
                       _self144283144291_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx144313_ _e144288144310_)
                     (_e144289144315_
                      (##unchecked-structure-ref
                       _self144283144291_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi144318_ _e144289144315_))
                (_K144286144302_ _phi144318_ _ctx144313_ _K144308_))
              (_E144285144295_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self144323_ _stx144324_)
        (let ((_method144326_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self144323_
           _stx144324_
           _method144326_))))
    (define gx#core-apply-user-expander
      (lambda _g150921_
        (let ((_g150920_ (##length _g150921_)))
          (cond ((##fx= _g150920_ 2)
                 (apply (lambda (_self144323_ _stx144324_)
                          (gx#core-apply-user-expander__0
                           _self144323_
                           _stx144324_))
                        _g150921_))
                ((##fx= _g150920_ 3)
                 (apply (lambda (_self144328_ _stx144329_ _method144330_)
                          (gx#core-apply-user-expander__%
                           _self144328_
                           _stx144329_
                           _method144330_))
                        _g150921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g150921_))))))
    (define gx#core-apply-user-macro
      (lambda (_K144270_ _stx144271_ _ctx144272_ _phi144273_ _method144274_)
        (let ((_mark144276_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx144272_
                _phi144273_
                _stx144271_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K144270_
               (gx#stx-apply-mark _stx144271_ _mark144276_)
               _method144274_)
              _mark144276_))
           gx#current-expander-marks
           (cons _mark144276_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx144122_ _phi144123_ _ctx144124_)
        (let _lp144126_ ((_bind144128_
                          (gx#core-resolve-identifier__%
                           _stx144122_
                           _phi144123_
                           _ctx144124_)))
          (if (##structure-direct-instance-of?
               _bind144128_
               'gx#import-binding::t)
              (_lp144126_
               (##unchecked-structure-ref
                _bind144128_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind144128_
                   'gx#alias-binding::t)
                  (_lp144126_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind144128_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi144123_
                    _ctx144124_))
                  _bind144128_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx144133_)
        (let* ((_phi144135_ (gx#current-expander-phi))
               (_ctx144137_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx144133_ _phi144135_ _ctx144137_))))
    (define gx#resolve-identifier__1
      (lambda (_stx144139_ _phi144140_)
        (let ((_ctx144142_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx144139_ _phi144140_ _ctx144142_))))
    (define gx#resolve-identifier
      (lambda _g150923_
        (let ((_g150922_ (##length _g150923_)))
          (cond ((##fx= _g150922_ 1)
                 (apply (lambda (_stx144133_)
                          (gx#resolve-identifier__0 _stx144133_))
                        _g150923_))
                ((##fx= _g150922_ 2)
                 (apply (lambda (_stx144139_ _phi144140_)
                          (gx#resolve-identifier__1 _stx144139_ _phi144140_))
                        _g150923_))
                ((##fx= _g150922_ 3)
                 (apply (lambda (_stx144144_ _phi144145_ _ctx144146_)
                          (gx#resolve-identifier__%
                           _stx144144_
                           _phi144145_
                           _ctx144146_))
                        _g150923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g150923_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx144080_ _val144081_ _rebind?144082_ _phi144083_ _ctx144084_)
        (let ((_rebind?144086_
               (if (not _rebind?144082_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?144082_) _rebind?144082_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx144080_)
           _val144081_
           _rebind?144086_
           _phi144083_
           _ctx144084_))))
    (define gx#bind-identifier!__0
      (lambda (_stx144091_ _val144092_)
        (let* ((_rebind?144094_ '#f)
               (_phi144096_ (gx#current-expander-phi))
               (_ctx144098_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx144091_
           _val144092_
           _rebind?144094_
           _phi144096_
           _ctx144098_))))
    (define gx#bind-identifier!__1
      (lambda (_stx144100_ _val144101_ _rebind?144102_)
        (let* ((_phi144104_ (gx#current-expander-phi))
               (_ctx144106_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx144100_
           _val144101_
           _rebind?144102_
           _phi144104_
           _ctx144106_))))
    (define gx#bind-identifier!__2
      (lambda (_stx144108_ _val144109_ _rebind?144110_ _phi144111_)
        (let ((_ctx144113_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx144108_
           _val144109_
           _rebind?144110_
           _phi144111_
           _ctx144113_))))
    (define gx#bind-identifier!
      (lambda _g150925_
        (let ((_g150924_ (##length _g150925_)))
          (cond ((##fx= _g150924_ 2)
                 (apply (lambda (_stx144091_ _val144092_)
                          (gx#bind-identifier!__0 _stx144091_ _val144092_))
                        _g150925_))
                ((##fx= _g150924_ 3)
                 (apply (lambda (_stx144100_ _val144101_ _rebind?144102_)
                          (gx#bind-identifier!__1
                           _stx144100_
                           _val144101_
                           _rebind?144102_))
                        _g150925_))
                ((##fx= _g150924_ 4)
                 (apply (lambda (_stx144108_
                                 _val144109_
                                 _rebind?144110_
                                 _phi144111_)
                          (gx#bind-identifier!__2
                           _stx144108_
                           _val144109_
                           _rebind?144110_
                           _phi144111_))
                        _g150925_))
                ((##fx= _g150924_ 5)
                 (apply (lambda (_stx144115_
                                 _val144116_
                                 _rebind?144117_
                                 _phi144118_
                                 _ctx144119_)
                          (gx#bind-identifier!__%
                           _stx144115_
                           _val144116_
                           _rebind?144117_
                           _phi144118_
                           _ctx144119_))
                        _g150925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g150925_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx144052_ _phi144053_ _ctx144054_)
        (let _lp144056_ ((_e144058_ _stx144052_)
                         (_marks144059_ (gx#current-expander-marks)))
          (if (symbol? _e144058_)
              (gx#core-resolve-binding
               _e144058_
               _phi144053_
               _phi144053_
               _ctx144054_
               (reverse _marks144059_))
              (if (gx#identifier-quote? _e144058_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e144058_ '1 gx#AST::t '#f)
                   _phi144053_
                   '0
                   (##unchecked-structure-ref
                    _e144058_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e144058_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e144058_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e144058_ '1 gx#AST::t '#f)
                       _phi144053_
                       _phi144053_
                       _ctx144054_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e144058_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks144059_))
                      (if (##structure-direct-instance-of?
                           _e144058_
                           'gx#syntax-wrap::t)
                          (_lp144056_
                           (##unchecked-structure-ref
                            _e144058_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e144058_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks144059_))
                          (if (##structure-instance-of?
                               _e144058_
                               'gerbil#AST::t)
                              (_lp144056_
                               (##unchecked-structure-ref
                                _e144058_
                                '1
                                gx#AST::t
                                '#f)
                               _marks144059_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx144052_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx144064_)
        (let* ((_phi144066_ (gx#current-expander-phi))
               (_ctx144068_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx144064_
           _phi144066_
           _ctx144068_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx144070_ _phi144071_)
        (let ((_ctx144073_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx144070_
           _phi144071_
           _ctx144073_))))
    (define gx#core-resolve-identifier
      (lambda _g150927_
        (let ((_g150926_ (##length _g150927_)))
          (cond ((##fx= _g150926_ 1)
                 (apply (lambda (_stx144064_)
                          (gx#core-resolve-identifier__0 _stx144064_))
                        _g150927_))
                ((##fx= _g150926_ 2)
                 (apply (lambda (_stx144070_ _phi144071_)
                          (gx#core-resolve-identifier__1
                           _stx144070_
                           _phi144071_))
                        _g150927_))
                ((##fx= _g150926_ 3)
                 (apply (lambda (_stx144075_ _phi144076_ _ctx144077_)
                          (gx#core-resolve-identifier__%
                           _stx144075_
                           _phi144076_
                           _ctx144077_))
                        _g150927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g150927_))))))
    (define gx#core-resolve-binding
      (lambda (_id143965_
               _phi143966_
               _src-phi143967_
               _ctx143968_
               _marks143969_)
        (letrec ((_resolve143971_
                  (lambda (_ctx144039_ _src-phi144040_ _key144041_)
                    (let _lp144043_ ((_ctx144045_
                                      (gx#core-context-shift
                                       _ctx144039_
                                       _phi143966_))
                                     (_dphi144046_
                                      (fx- _phi143966_ _src-phi144040_)))
                      (let ((_$e144048_
                             (gx#core-context-resolve
                              _ctx144045_
                              _key144041_)))
                        (if _$e144048_
                            (values _$e144048_)
                            (if (fxzero? _dphi144046_)
                                '#f
                                (if (fxpositive? _dphi144046_)
                                    (_lp144043_
                                     (gx#core-context-shift _ctx144045_ '-1)
                                     (fx- _dphi144046_ '1))
                                    (_lp144043_
                                     (gx#core-context-shift _ctx144045_ '1)
                                     (fx+ _dphi144046_ '1))))))))))
          (let _lp143973_ ((_ctx143975_ _ctx143968_)
                           (_src-phi143976_ _src-phi143967_)
                           (_rest143977_ _marks143969_))
            (let* ((_rest143978143986_ _rest143977_)
                   (_else143980143994_
                    (lambda ()
                      (_resolve143971_
                       _ctx143975_
                       _src-phi143976_
                       _id143965_)))
                   (_K143982144027_
                    (lambda (_rest143997_ _hd143998_)
                      (let* ((_hd143999144005_ _hd143998_)
                             (_E144001144009_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd143999144005_)))
                             (_K144002144019_
                              (lambda (_subst144012_)
                                (let ((_$e144016_
                                       (let ((_key144014_
                                              (if _subst144012_
                                                  (table-ref
                                                   _subst144012_
                                                   _id143965_
                                                   '#f)
                                                  '#f)))
                                         (if _key144014_
                                             (_resolve143971_
                                              _ctx143975_
                                              _src-phi143976_
                                              _key144014_)
                                             '#f))))
                                  (if _$e144016_
                                      _$e144016_
                                      (_lp143973_
                                       (##unchecked-structure-ref
                                        _hd143998_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd143998_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest143997_))))))
                        (if (##structure-instance-of?
                             _hd143999144005_
                             'gx#expander-mark::t)
                            (let* ((_e144003144022_
                                    (##unchecked-structure-ref
                                     _hd143999144005_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst144025_ _e144003144022_))
                              (_K144002144019_ _subst144025_))
                            (_E144001144009_))))))
              (if (##pair? _rest143978143986_)
                  (let ((_hd143983144030_ (##car _rest143978143986_))
                        (_tl143984144032_ (##cdr _rest143978143986_)))
                    (let* ((_hd144035_ _hd143983144030_)
                           (_rest144037_ _tl143984144032_))
                      (_K143982144027_ _rest144037_ _hd144035_)))
                  (_else143980143994_)))))))
    (define gx#core-bind!__%
      (lambda (_key143841_ _val143842_ _rebind?143843_ _phi143844_ _ctx143845_)
        (letrec ((_update-binding143847_
                  (lambda (_xval143918_)
                    (if (or (_rebind?143843_
                             _ctx143845_
                             _xval143918_
                             _val143842_)
                            (and (##structure-direct-instance-of?
                                  _xval143918_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval143918_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val143842_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val143842_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval143918_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val143842_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val143842_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval143918_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val143842_
                        (if (and (##structure-direct-instance-of?
                                  _val143842_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val143842_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval143918_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val143842_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval143918_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval143918_
                            (if (and (##structure-direct-instance-of?
                                      _val143842_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval143918_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key143841_
                                 (cons (##unchecked-structure-ref
                                        _val143842_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val143842_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval143918_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval143918_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval143918_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval143918_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key143841_
                                 _val143842_
                                 _xval143918_))))))
                 (_gensubst143848_
                  (lambda (_subst143913_ _id143914_)
                    (let ((_eid143916_
                           (gensym (if (uninterned-symbol? _id143914_)
                                       '%
                                       _id143914_))))
                      (table-set! _subst143913_ _id143914_ _eid143916_)
                      _eid143916_)))
                 (_subst!143849_
                  (lambda (_key143851_)
                    (let* ((_key143852143860_ _key143851_)
                           (_else143854143868_ (lambda () _key143851_))
                           (_K143856143901_
                            (lambda (_mark143871_ _id143872_)
                              (let* ((_mark143873143879_ _mark143871_)
                                     (_E143875143883_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark143873143879_)))
                                     (_K143876143893_
                                      (lambda (_subst143886_)
                                        (if (not _subst143886_)
                                            (let ((_subst143888_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark143871_
                                               _subst143888_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst143848_
                                               _subst143888_
                                               _id143872_))
                                            (let ((_$e143890_
                                                   (table-ref
                                                    _subst143886_
                                                    _id143872_
                                                    '#f)))
                                              (if _$e143890_
                                                  (values _$e143890_)
                                                  (_gensubst143848_
                                                   _subst143886_
                                                   _id143872_)))))))
                                (if (##structure-instance-of?
                                     _mark143873143879_
                                     'gx#expander-mark::t)
                                    (let* ((_e143877143896_
                                            (##unchecked-structure-ref
                                             _mark143873143879_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst143899_ _e143877143896_))
                                      (_K143876143893_ _subst143899_))
                                    (_E143875143883_))))))
                      (if (##pair? _key143852143860_)
                          (let ((_hd143857143904_ (##car _key143852143860_))
                                (_tl143858143906_ (##cdr _key143852143860_)))
                            (let* ((_id143909_ _hd143857143904_)
                                   (_mark143911_ _tl143858143906_))
                              (_K143856143901_ _mark143911_ _id143909_)))
                          (_else143854143868_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx143845_ _phi143844_)
           (_subst!143849_ _key143841_)
           _val143842_
           _update-binding143847_))))
    (define gx#core-bind!__0
      (lambda (_key143935_ _val143936_)
        (let* ((_rebind?143938_ false)
               (_phi143940_ (gx#current-expander-phi))
               (_ctx143942_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143935_
           _val143936_
           _rebind?143938_
           _phi143940_
           _ctx143942_))))
    (define gx#core-bind!__1
      (lambda (_key143944_ _val143945_ _rebind?143946_)
        (let* ((_phi143948_ (gx#current-expander-phi))
               (_ctx143950_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143944_
           _val143945_
           _rebind?143946_
           _phi143948_
           _ctx143950_))))
    (define gx#core-bind!__2
      (lambda (_key143952_ _val143953_ _rebind?143954_ _phi143955_)
        (let ((_ctx143957_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143952_
           _val143953_
           _rebind?143954_
           _phi143955_
           _ctx143957_))))
    (define gx#core-bind!
      (lambda _g150929_
        (let ((_g150928_ (##length _g150929_)))
          (cond ((##fx= _g150928_ 2)
                 (apply (lambda (_key143935_ _val143936_)
                          (gx#core-bind!__0 _key143935_ _val143936_))
                        _g150929_))
                ((##fx= _g150928_ 3)
                 (apply (lambda (_key143944_ _val143945_ _rebind?143946_)
                          (gx#core-bind!__1
                           _key143944_
                           _val143945_
                           _rebind?143946_))
                        _g150929_))
                ((##fx= _g150928_ 4)
                 (apply (lambda (_key143952_
                                 _val143953_
                                 _rebind?143954_
                                 _phi143955_)
                          (gx#core-bind!__2
                           _key143952_
                           _val143953_
                           _rebind?143954_
                           _phi143955_))
                        _g150929_))
                ((##fx= _g150928_ 5)
                 (apply (lambda (_key143959_
                                 _val143960_
                                 _rebind?143961_
                                 _phi143962_
                                 _ctx143963_)
                          (gx#core-bind!__%
                           _key143959_
                           _val143960_
                           _rebind?143961_
                           _phi143962_
                           _ctx143963_))
                        _g150929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g150929_))))))
    (define gx#core-identifier-key
      (lambda (_stx143775_)
        (if (symbol? _stx143775_)
            (let* ((_g143776143784_ (gx#current-expander-marks))
                   (_else143778143792_ (lambda () _stx143775_))
                   (_K143780143797_
                    (lambda (_hd143795_) (cons _stx143775_ _hd143795_))))
              (if (##pair? _g143776143784_)
                  (let* ((_hd143781143800_ (##car _g143776143784_))
                         (_hd143803_ _hd143781143800_))
                    (_K143780143797_ _hd143803_))
                  (_else143778143792_)))
            (if (gx#identifier? _stx143775_)
                (let* ((_id143805_ (gx#syntax-local-unwrap _stx143775_))
                       (_eid143807_ (gx#stx-e _id143805_))
                       (_marks143809_ (gx#stx-identifier-marks* _id143805_)))
                  (let* ((_marks143811143819_ _marks143809_)
                         (_else143813143827_ (lambda () _eid143807_))
                         (_K143815143832_
                          (lambda (_hd143830_) (cons _eid143807_ _hd143830_))))
                    (if (##pair? _marks143811143819_)
                        (let* ((_hd143816143835_ (##car _marks143811143819_))
                               (_hd143838_ _hd143816143835_))
                          (_K143815143832_ _hd143838_))
                        (_else143813143827_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx143775_)))))
    (define gx#core-context-shift
      (lambda (_ctx143720_ _phi143721_)
        (letrec ((_make-phi143723_
                  (lambda (_super143773_)
                    (let ((__obj150900
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj150900
                       (gensym 'phi)
                       _super143773_)
                      __obj150900)))
                 (_make-phi/up143724_
                  (lambda (_ctx143768_ _super143769_)
                    (let ((_ctx+1143771_ (_make-phi143723_ _super143769_)))
                      (##unchecked-structure-set!
                       _ctx143768_
                       _ctx+1143771_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1143771_
                       _ctx143768_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1143771_)))
                 (_make-phi/down143725_
                  (lambda (_ctx143763_ _super143764_)
                    (let ((_ctx-1143766_ (_make-phi143723_ _super143764_)))
                      (##unchecked-structure-set!
                       _ctx-1143766_
                       _ctx143763_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx143763_
                       _ctx-1143766_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1143766_)))
                 (_shift143726_
                  (lambda (_ctx143747_
                           _delta143748_
                           _make-delta-context143749_
                           _phi143750_
                           _K143751_)
                    (let ((_$e143753_
                           (##unchecked-structure-ref
                            _ctx143747_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e143753_
                          ((lambda (_super143756_)
                             (let* ((_super143758_
                                     (_K143751_ _super143756_ _delta143748_))
                                    (_ctx+d143760_
                                     (_make-delta-context143749_
                                      _ctx143747_
                                      _super143758_)))
                               (_K143751_
                                _ctx+d143760_
                                (fx- _phi143750_ _delta143748_))))
                           _$e143753_)
                          (error '"Bad context" _ctx143747_))))))
          (let _K143728_ ((_ctx143730_ _ctx143720_) (_phi143731_ _phi143721_))
            (if (fxzero? _phi143731_)
                _ctx143730_
                (if (fx> (##vector-length _ctx143730_) '3)
                    (if (fxpositive? _phi143731_)
                        (let ((_$e143733_
                               (##unchecked-structure-ref
                                _ctx143730_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e143733_
                              ((lambda (_g143735143737_)
                                 (_K143728_
                                  _g143735143737_
                                  (fx- _phi143731_ '1)))
                               _$e143733_)
                              (_shift143726_
                               _ctx143730_
                               '1
                               _make-phi/up143724_
                               _phi143731_
                               _K143728_)))
                        (let ((_$e143740_
                               (##unchecked-structure-ref
                                _ctx143730_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e143740_
                              ((lambda (_g143742143744_)
                                 (_K143728_
                                  _g143742143744_
                                  (fx+ _phi143731_ '1)))
                               _$e143740_)
                              (_shift143726_
                               _ctx143730_
                               '-1
                               _make-phi/down143725_
                               _phi143731_
                               _K143728_))))
                    _ctx143730_))))))
    (define gx#core-context-get
      (lambda (_ctx143717_ _key143718_)
        (table-ref
         (##unchecked-structure-ref _ctx143717_ '2 gx#expander-context::t '#f)
         _key143718_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx143713_ _key143714_ _val143715_)
        (table-set!
         (##unchecked-structure-ref _ctx143713_ '2 gx#expander-context::t '#f)
         _key143714_
         _val143715_)))
    (define gx#core-context-resolve
      (lambda (_ctx143700_ _key143701_)
        (let _lp143703_ ((_ctx143705_ _ctx143700_))
          (let ((_$e143707_ (gx#core-context-get _ctx143705_ _key143701_)))
            (if _$e143707_
                (values _$e143707_)
                (let ((_$e143710_
                       (if (fx> (##vector-length _ctx143705_) '3)
                           (##unchecked-structure-ref
                            _ctx143705_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e143710_ (_lp143703_ _$e143710_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx143690_ _key143691_ _val143692_ _rebind143693_)
        (let ((_$e143695_ (gx#core-context-get _ctx143690_ _key143691_)))
          (if _$e143695_
              ((lambda (_xval143698_)
                 (gx#core-context-put!
                  _ctx143690_
                  _key143691_
                  (_rebind143693_ _xval143698_)))
               _$e143695_)
              (gx#core-context-put! _ctx143690_ _key143691_ _val143692_)))))
    (define gx#core-context-top__%
      (lambda (_ctx143668_ _stop?143669_)
        (let _lp143671_ ((_ctx143673_ _ctx143668_))
          (if (_stop?143669_ _ctx143673_)
              _ctx143673_
              (if (##structure-instance-of? _ctx143673_ 'gx#context-phi::t)
                  (_lp143671_
                   (##unchecked-structure-ref
                    _ctx143673_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx143679_ (gx#current-expander-context))
               (_stop?143681_ gx#top-context?))
          (gx#core-context-top__% _ctx143679_ _stop?143681_))))
    (define gx#core-context-top__1
      (lambda (_ctx143683_)
        (let ((_stop?143685_ gx#top-context?))
          (gx#core-context-top__% _ctx143683_ _stop?143685_))))
    (define gx#core-context-top
      (lambda _g150931_
        (let ((_g150930_ (##length _g150931_)))
          (cond ((##fx= _g150930_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g150931_))
                ((##fx= _g150930_ 1)
                 (apply (lambda (_ctx143683_)
                          (gx#core-context-top__1 _ctx143683_))
                        _g150931_))
                ((##fx= _g150930_ 2)
                 (apply (lambda (_ctx143687_ _stop?143688_)
                          (gx#core-context-top__% _ctx143687_ _stop?143688_))
                        _g150931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g150931_))))))
    (define gx#core-context-root__%
      (lambda (_ctx143653_)
        (let _lp143655_ ((_ctx143657_ _ctx143653_))
          (if (##structure-instance-of? _ctx143657_ 'gx#context-phi::t)
              (_lp143655_
               (##unchecked-structure-ref
                _ctx143657_
                '3
                gx#phi-context::t
                '#f))
              _ctx143657_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx143663_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx143663_))))
    (define gx#core-context-root
      (lambda _g150933_
        (let ((_g150932_ (##length _g150933_)))
          (cond ((##fx= _g150932_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g150933_))
                ((##fx= _g150932_ 1)
                 (apply (lambda (_ctx143665_)
                          (gx#core-context-root__% _ctx143665_))
                        _g150933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g150933_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx143634_ . __143631143635_)
        (let ((_$e143638_ (gx#current-expander-allow-rebind?)))
          (if _$e143638_
              _$e143638_
              (if (##structure-instance-of? _ctx143634_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx143634_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx143634_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx143645_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx143645_))))
    (define gx#core-context-rebind?
      (lambda _g150935_
        (let ((_g150934_ (##length _g150935_)))
          (cond ((##fx= _g150934_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g150935_))
                ((##fx= _g150934_ 1)
                 (apply (lambda (_ctx143647_)
                          (gx#core-context-rebind?__% _ctx143647_))
                        _g150935_))
                ((##fx>= _g150934_ 1)
                 (apply gx#core-context-rebind?__% _g150935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g150935_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx143617_)
        (let ((_$e143619_ (gx#core-context-top__1 _ctx143617_)))
          (if _$e143619_
              ((lambda (_ctx143622_)
                 (if (##structure-instance-of?
                      _ctx143622_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx143622_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e143619_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx143628_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx143628_))))
    (define gx#core-context-namespace
      (lambda _g150937_
        (let ((_g150936_ (##length _g150937_)))
          (cond ((##fx= _g150936_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g150937_))
                ((##fx= _g150936_ 1)
                 (apply (lambda (_ctx143630_)
                          (gx#core-context-namespace__% _ctx143630_))
                        _g150937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g150937_))))))
    (define gx#expander-binding?__%
      (lambda (_bind143603_ _is?143604_)
        (if (##structure-direct-instance-of?
             _bind143603_
             'gx#syntax-binding::t)
            (_is?143604_
             (##unchecked-structure-ref
              _bind143603_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind143609_)
        (let ((_is?143611_ gx#expander?))
          (gx#expander-binding?__% _bind143609_ _is?143611_))))
    (define gx#expander-binding?
      (lambda _g150939_
        (let ((_g150938_ (##length _g150939_)))
          (cond ((##fx= _g150938_ 1)
                 (apply (lambda (_bind143609_)
                          (gx#expander-binding?__0 _bind143609_))
                        _g150939_))
                ((##fx= _g150938_ 2)
                 (apply (lambda (_bind143613_ _is?143614_)
                          (gx#expander-binding?__% _bind143613_ _is?143614_))
                        _g150939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g150939_))))))
    (define gx#core-expander-binding?
      (lambda (_bind143600_)
        (gx#expander-binding?__% _bind143600_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind143598_)
        (gx#expander-binding?__% _bind143598_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind143592_)
        (letrec ((_direct-special-form?143594_
                  (lambda (_obj143596_)
                    (##structure-direct-instance-of?
                     _obj143596_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind143592_
           _direct-special-form?143594_))))
    (define gx#special-form-binding?
      (lambda (_bind143590_)
        (gx#expander-binding?__% _bind143590_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind143581_)
        (letrec ((_feature?143583_
                  (lambda (_e143585_)
                    (let ((_$e143587_
                           (##structure-instance-of?
                            _e143585_
                            'gx#feature-expander::t)))
                      (if _$e143587_
                          _$e143587_
                          (##structure-instance-of?
                           _e143585_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind143581_ _feature?143583_))))
    (define gx#private-feature-binding?
      (lambda (_bind143579_)
        (gx#expander-binding?__% _bind143579_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id143566_ _bound?143567_)
        (if (gx#identifier? _id143566_)
            (_bound?143567_ (gx#resolve-identifier__0 _id143566_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id143572_)
        (let ((_bound?143574_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id143572_ _bound?143574_))))
    (define gx#core-bound-identifier?
      (lambda _g150941_
        (let ((_g150940_ (##length _g150941_)))
          (cond ((##fx= _g150940_ 1)
                 (apply (lambda (_id143572_)
                          (gx#core-bound-identifier?__0 _id143572_))
                        _g150941_))
                ((##fx= _g150940_ 2)
                 (apply (lambda (_id143576_ _bound?143577_)
                          (gx#core-bound-identifier?__%
                           _id143576_
                           _bound?143577_))
                        _g150941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g150941_))))))
    (define gx#core-identifier=?
      (lambda (_x143556_ _y143557_)
        (letrec ((_y=?143559_
                  (lambda (_xid143563_)
                    ((if (list? _y143557_) memq eq?) _xid143563_ _y143557_))))
          (let ((_bind143561_ (gx#resolve-identifier__0 _x143556_)))
            (if (##structure-instance-of? _bind143561_ 'gx#binding::t)
                (_y=?143559_
                 (##unchecked-structure-ref _bind143561_ '1 gx#binding::t '#f))
                (_y=?143559_ (gx#stx-e _x143556_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e143554_)
        (if (interned-symbol? _e143554_)
            (string-index (symbol->string _e143554_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx143509_ _src143510_ _ctx143511_ _marks143512_)
        (if (##structure? _stx143509_)
            (let ((_$e143514_ (gx#sealed-syntax-unwrap _stx143509_)))
              (if _$e143514_
                  (values _$e143514_)
                  (if (gx#identifier? _stx143509_)
                      (let ((_id143517_
                             (gx#stx-unwrap__% _stx143509_ _marks143512_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id143517_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e143519_
                                (##unchecked-structure-ref
                                 _id143517_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e143519_ _$e143519_ _src143510_))
                         _ctx143511_
                         (##unchecked-structure-ref
                          _id143517_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx143509_)
                       (let ((_$e143522_ (gx#stx-source _stx143509_)))
                         (if _$e143522_ _$e143522_ _src143510_))
                       _ctx143511_
                       (reverse _marks143512_)))))
            (##structure
             gx#syntax-quote::t
             _stx143509_
             _src143510_
             _ctx143511_
             (reverse _marks143512_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx143528_)
        (let* ((_src143530_ '#f)
               (_ctx143532_ (gx#current-expander-context))
               (_marks143534_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143528_
           _src143530_
           _ctx143532_
           _marks143534_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx143536_ _src143537_)
        (let* ((_ctx143539_ (gx#current-expander-context))
               (_marks143541_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143536_
           _src143537_
           _ctx143539_
           _marks143541_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx143543_ _src143544_ _ctx143545_)
        (let ((_marks143547_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143543_
           _src143544_
           _ctx143545_
           _marks143547_))))
    (define gx#core-quote-syntax
      (lambda _g150943_
        (let ((_g150942_ (##length _g150943_)))
          (cond ((##fx= _g150942_ 1)
                 (apply (lambda (_stx143528_)
                          (gx#core-quote-syntax__0 _stx143528_))
                        _g150943_))
                ((##fx= _g150942_ 2)
                 (apply (lambda (_stx143536_ _src143537_)
                          (gx#core-quote-syntax__1 _stx143536_ _src143537_))
                        _g150943_))
                ((##fx= _g150942_ 3)
                 (apply (lambda (_stx143543_ _src143544_ _ctx143545_)
                          (gx#core-quote-syntax__2
                           _stx143543_
                           _src143544_
                           _ctx143545_))
                        _g150943_))
                ((##fx= _g150942_ 4)
                 (apply (lambda (_stx143549_
                                 _src143550_
                                 _ctx143551_
                                 _marks143552_)
                          (gx#core-quote-syntax__%
                           _stx143549_
                           _src143550_
                           _ctx143551_
                           _marks143552_))
                        _g150943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g150943_))))))
    (define gx#core-cons
      (lambda (_hd143505_ _tl143506_)
        (cons (gx#core-quote-syntax__0 _hd143505_) _tl143506_)))
    (define gx#core-list
      (lambda (_hd143502_ . _rest143503_)
        (cons (gx#core-quote-syntax__0 _hd143502_) _rest143503_)))
    (define gx#core-cons*
      (lambda (_hd143499_ . _rest143500_)
        (apply cons* (gx#core-quote-syntax__0 _hd143499_) _rest143500_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path143473_ _rel143474_)
        (let ((_path143486_ (gx#stx-e _stx-path143473_))
              (_reldir143487_
               (let _lp143476_ ((_relsrc143478_
                                 (let ((_$e143483_
                                        (gx#stx-source _stx-path143473_)))
                                   (if _$e143483_ _$e143483_ _rel143474_))))
                 (if (##structure-instance-of? _relsrc143478_ 'gerbil#AST::t)
                     (_lp143476_
                      (let ((_$e143480_ (gx#stx-source _relsrc143478_)))
                        (if _$e143480_ _$e143480_ (gx#stx-e _relsrc143478_))))
                     (if (source-location-path? _relsrc143478_)
                         (path-directory (source-location-path _relsrc143478_))
                         (if (string? _relsrc143478_)
                             (path-directory _relsrc143478_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path143486_ (path-normalize _reldir143487_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path143492_)
        (let ((_rel143494_ '#f))
          (gx#core-resolve-path__% _stx-path143492_ _rel143494_))))
    (define gx#core-resolve-path
      (lambda _g150945_
        (let ((_g150944_ (##length _g150945_)))
          (cond ((##fx= _g150944_ 1)
                 (apply (lambda (_stx-path143492_)
                          (gx#core-resolve-path__0 _stx-path143492_))
                        _g150945_))
                ((##fx= _g150944_ 2)
                 (apply (lambda (_stx-path143496_ _rel143497_)
                          (gx#core-resolve-path__%
                           _stx-path143496_
                           _rel143497_))
                        _g150945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g150945_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr143429_ _ctx143430_)
        (let* ((_repr143431143438_ _repr143429_)
               (_E143433143442_
                (lambda () (error '"No clause matching" _repr143431143438_)))
               (_K143434143450_
                (lambda (_subs143445_ _phi143446_)
                  (let ((_subst143448_
                         (if (not (null? _subs143445_))
                             (list->table _subs143445_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst143448_
                     _ctx143430_
                     _phi143446_
                     '#f)))))
          (if (##pair? _repr143431143438_)
              (let ((_hd143435143453_ (##car _repr143431143438_))
                    (_tl143436143455_ (##cdr _repr143431143438_)))
                (let* ((_phi143458_ _hd143435143453_)
                       (_subs143460_ _tl143436143455_))
                  (_K143434143450_ _subs143460_ _phi143458_)))
              (_E143433143442_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr143465_)
        (let ((_ctx143467_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr143465_ _ctx143467_))))
    (define gx#core-deserialize-mark
      (lambda _g150947_
        (let ((_g150946_ (##length _g150947_)))
          (cond ((##fx= _g150946_ 1)
                 (apply (lambda (_repr143465_)
                          (gx#core-deserialize-mark__0 _repr143465_))
                        _g150947_))
                ((##fx= _g150946_ 2)
                 (apply (lambda (_repr143469_ _ctx143470_)
                          (gx#core-deserialize-mark__%
                           _repr143469_
                           _ctx143470_))
                        _g150947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g150947_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx143426_)
        (gx#stx-rewrap _stx143426_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx143424_)
        (gx#stx-unwrap__% _stx143424_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx143394_)
        (let* ((_g143395143403_ (gx#current-expander-marks))
               (_else143397143411_ (lambda () _stx143394_))
               (_K143399143416_
                (lambda (_hd143414_)
                  (gx#stx-apply-mark _stx143394_ _hd143414_))))
          (if (##pair? _g143395143403_)
              (let* ((_hd143400143419_ (##car _g143395143403_))
                     (_hd143422_ _hd143400143419_))
                (_K143399143416_ _hd143422_))
              (_else143397143411_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx143379_ _E143380_)
        (let ((_bind143382_ (gx#resolve-identifier__0 _stx143379_)))
          (if (##structure-direct-instance-of?
               _bind143382_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind143382_
               '4
               gx#syntax-binding::t
               '#f)
              (_E143380_ _stx143379_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx143387_)
        (let ((_E143389_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx143387_ _E143389_))))
    (define gx#syntax-local-e
      (lambda _g150949_
        (let ((_g150948_ (##length _g150949_)))
          (cond ((##fx= _g150948_ 1)
                 (apply (lambda (_stx143387_)
                          (gx#syntax-local-e__0 _stx143387_))
                        _g150949_))
                ((##fx= _g150948_ 2)
                 (apply (lambda (_stx143391_ _E143392_)
                          (gx#syntax-local-e__% _stx143391_ _E143392_))
                        _g150949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g150949_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx143363_ _E143364_)
        (let ((_e143366_ (gx#syntax-local-e__% _stx143363_ _E143364_)))
          (if (##structure-instance-of? _e143366_ 'gx#expander::t)
              (##structure-ref _e143366_ '1 gx#expander::t '#f)
              _e143366_))))
    (define gx#syntax-local-value__0
      (lambda (_stx143371_)
        (let ((_E143373_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx143371_ _E143373_))))
    (define gx#syntax-local-value
      (lambda _g150951_
        (let ((_g150950_ (##length _g150951_)))
          (cond ((##fx= _g150950_ 1)
                 (apply (lambda (_stx143371_)
                          (gx#syntax-local-value__0 _stx143371_))
                        _g150951_))
                ((##fx= _g150950_ 2)
                 (apply (lambda (_stx143375_ _E143376_)
                          (gx#syntax-local-value__% _stx143375_ _E143376_))
                        _g150951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g150951_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx143360_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx143360_)))))
