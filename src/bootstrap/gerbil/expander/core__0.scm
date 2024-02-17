(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708210941)
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
      (lambda _$args143944_
        (apply make-instance gx#expander-context::t _$args143944_)))
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
      (lambda _$args143941_
        (apply make-instance gx#root-context::t _$args143941_)))
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
      (lambda _$args143938_
        (apply make-instance gx#phi-context::t _$args143938_)))
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
      (lambda _$args143935_
        (apply make-instance gx#top-context::t _$args143935_)))
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
      (lambda _$args143932_
        (apply make-instance gx#module-context::t _$args143932_)))
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
      (lambda _$args143929_
        (apply make-instance gx#prelude-context::t _$args143929_)))
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
      (lambda _$args143926_
        (apply make-instance gx#local-context::t _$args143926_)))
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
      (lambda (_self143910_ _id143911_ _super143912_)
        (if (##fx< '3 (##structure-length _self143910_))
            (begin
              (##unchecked-structure-set!
               _self143910_
               _id143911_
               '1
               (##structure-type _self143910_)
               '#f)
              (##unchecked-structure-set!
               _self143910_
               (make-hash-table-eq)
               '2
               (##structure-type _self143910_)
               '#f)
              (##unchecked-structure-set!
               _self143910_
               _super143912_
               '3
               (##structure-type _self143910_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143910_
                   '3
                   (##vector-length _self143910_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143917_ _id143918_)
        (let ((_super143920_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143917_ _id143918_ _super143920_))))
    (define gx#phi-context:::init!
      (lambda _g148054_
        (let ((_g148053_ (##length _g148054_)))
          (cond ((##fx= _g148053_ 2)
                 (apply (lambda (_self143917_ _id143918_)
                          (gx#phi-context:::init!__0 _self143917_ _id143918_))
                        _g148054_))
                ((##fx= _g148053_ 3)
                 (apply (lambda (_self143922_ _id143923_ _super143924_)
                          (gx#phi-context:::init!__%
                           _self143922_
                           _id143923_
                           _super143924_))
                        _g148054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g148054_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143774_ _super143775_)
        (if (##fx< '3 (##structure-length _self143774_))
            (begin
              (##unchecked-structure-set!
               _self143774_
               (gensym 'L)
               '1
               (##structure-type _self143774_)
               '#f)
              (##unchecked-structure-set!
               _self143774_
               (make-hash-table-eq)
               '2
               (##structure-type _self143774_)
               '#f)
              (##unchecked-structure-set!
               _self143774_
               _super143775_
               '3
               (##structure-type _self143774_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143774_
                   '3
                   (##vector-length _self143774_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143780_)
        (let ((_super143782_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143780_ _super143782_))))
    (define gx#local-context:::init!
      (lambda _g148056_
        (let ((_g148055_ (##length _g148056_)))
          (cond ((##fx= _g148055_ 1)
                 (apply (lambda (_self143780_)
                          (gx#local-context:::init!__0 _self143780_))
                        _g148056_))
                ((##fx= _g148055_ 2)
                 (apply (lambda (_self143784_ _super143785_)
                          (gx#local-context:::init!__%
                           _self143784_
                           _super143785_))
                        _g148056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g148056_))))))
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
      (lambda _$args143648_ (apply make-instance gx#binding::t _$args143648_)))
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
      (lambda _$args143645_
        (apply make-instance gx#runtime-binding::t _$args143645_)))
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
      (lambda _$args143642_
        (apply make-instance gx#local-binding::t _$args143642_)))
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
      (lambda _$args143639_
        (apply make-instance gx#top-binding::t _$args143639_)))
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
      (lambda _$args143636_
        (apply make-instance gx#module-binding::t _$args143636_)))
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
      (lambda _$args143633_
        (apply make-instance gx#extern-binding::t _$args143633_)))
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
      (lambda _$args143630_
        (apply make-instance gx#syntax-binding::t _$args143630_)))
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
      (lambda _$args143627_
        (apply make-instance gx#import-binding::t _$args143627_)))
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
      (lambda _$args143624_
        (apply make-instance gx#alias-binding::t _$args143624_)))
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
      (lambda _$args143621_
        (apply make-instance gx#expander::t _$args143621_)))
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
      (lambda _$args143618_
        (apply make-instance gx#core-expander::t _$args143618_)))
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
      (lambda _$args143615_
        (apply make-instance gx#expression-form::t _$args143615_)))
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
      (lambda _$args143612_
        (apply make-instance gx#special-form::t _$args143612_)))
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
      (lambda _$args143609_
        (apply make-instance gx#definition-form::t _$args143609_)))
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
      (lambda _$args143606_
        (apply make-instance gx#top-special-form::t _$args143606_)))
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
      (lambda _$args143603_
        (apply make-instance gx#module-special-form::t _$args143603_)))
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
      (lambda _$args143600_
        (apply make-instance gx#feature-expander::t _$args143600_)))
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
      (lambda _$args143597_
        (apply make-instance gx#private-feature-expander::t _$args143597_)))
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
      (lambda _$args143594_
        (apply make-instance gx#reserved-expander::t _$args143594_)))
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
      (lambda _$args143591_
        (apply make-instance gx#macro-expander::t _$args143591_)))
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
      (lambda _$args143588_
        (apply make-instance gx#rename-macro-expander::t _$args143588_)))
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
      (lambda _$args143585_
        (apply make-instance gx#user-expander::t _$args143585_)))
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
      (lambda _$args143582_
        (apply make-instance gx#expander-mark::t _$args143582_)))
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
      (lambda (_ctx143567_ _message143568_ _stx143569_ . _details143570_)
        (let ((_ctx143580_
               (let ((_$e143572_ _ctx143567_))
                 (if _$e143572_
                     _$e143572_
                     (let ((_$e143575_ (gx#core-context-top__0)))
                       (if _$e143575_
                           ((lambda (_ctx143578_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx143578_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e143575_)
                           '#f))))))
          (raise (make-syntax-error
                  _message143568_
                  (cons _stx143569_ _details143570_)
                  _ctx143580_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx143554_ _expression?143555_)
        (gx#eval-syntax* (gx#core-expand__% _stx143554_ _expression?143555_))))
    (define gx#eval-syntax__0
      (lambda (_stx143560_)
        (let ((_expression?143562_ '#f))
          (gx#eval-syntax__% _stx143560_ _expression?143562_))))
    (define gx#eval-syntax
      (lambda _g148058_
        (let ((_g148057_ (##length _g148058_)))
          (cond ((##fx= _g148057_ 1)
                 (apply (lambda (_stx143560_) (gx#eval-syntax__0 _stx143560_))
                        _g148058_))
                ((##fx= _g148057_ 2)
                 (apply (lambda (_stx143564_ _expression?143565_)
                          (gx#eval-syntax__% _stx143564_ _expression?143565_))
                        _g148058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g148058_))))))
    (define gx#eval-syntax*
      (lambda (_stx143551_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx143551_))))
    (define gx#core-expand__%
      (lambda (_stx143538_ _expression?143539_)
        (if _expression?143539_
            (gx#core-expand-expression _stx143538_)
            (gx#core-expand-top _stx143538_))))
    (define gx#core-expand__0
      (lambda (_stx143544_)
        (let ((_expression?143546_ '#f))
          (gx#core-expand__% _stx143544_ _expression?143546_))))
    (define gx#core-expand
      (lambda _g148060_
        (let ((_g148059_ (##length _g148060_)))
          (cond ((##fx= _g148059_ 1)
                 (apply (lambda (_stx143544_) (gx#core-expand__0 _stx143544_))
                        _g148060_))
                ((##fx= _g148059_ 2)
                 (apply (lambda (_stx143548_ _expression?143549_)
                          (gx#core-expand__% _stx143548_ _expression?143549_))
                        _g148060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g148060_))))))
    (define gx#core-expand-top
      (lambda (_stx143505_)
        (let* ((_stx143507_ (gx#core-expand*__0 _stx143505_))
               (_e143508143515_ _stx143507_)
               (_E143510143519_
                (lambda () (gx#core-expand-expression _stx143507_)))
               (_E143509143533_
                (lambda ()
                  (if (gx#stx-pair? _e143508143515_)
                      (let ((_e143511143523_ (gx#syntax-e _e143508143515_)))
                        (let ((_hd143512143526_ (##car _e143511143523_))
                              (_tl143513143528_ (##cdr _e143511143523_)))
                          (let ((_form143531_ _hd143512143526_))
                            (if (gx#core-bound-identifier?__0 _form143531_)
                                _stx143507_
                                (_E143510143519_)))))
                      (_E143510143519_)))))
          (_E143509143533_))))
    (define gx#core-expand-expression
      (lambda (_stx143452_)
        (letrec ((_sealed-expression?143454_
                  (lambda (_hd143475_)
                    (if (gx#sealed-syntax? _hd143475_)
                        (let* ((_e143476143483_ _hd143475_)
                               (_E143478143487_ (lambda () '#f))
                               (_E143477143501_
                                (lambda ()
                                  (if (gx#stx-pair? _e143476143483_)
                                      (let ((_e143479143491_
                                             (gx#syntax-e _e143476143483_)))
                                        (let ((_hd143480143494_
                                               (##car _e143479143491_))
                                              (_tl143481143496_
                                               (##cdr _e143479143491_)))
                                          (let ((_form143499_
                                                 _hd143480143494_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form143499_
                                                 gx#expression-form-binding?)
                                                (_E143478143487_)))))
                                      (_E143478143487_)))))
                          (_E143477143501_))
                        '#f)))
                 (_illegal-expression143455_
                  (lambda (_hd143473_ . _g148061_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx143452_
                     _hd143473_)))
                 (_expand-e143456_
                  (lambda (_form143468_ _hd143469_)
                    (let ((_bind143471_
                           (if (##structure-instance-of?
                                _form143468_
                                'gx#binding::t)
                               _form143468_
                               (gx#resolve-identifier__0 _form143468_))))
                      (if (gx#core-expander-binding? _bind143471_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind143471_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd143469_
                            (gx#stx-source _stx143452_)))
                          (if (##structure-direct-instance-of?
                               _bind143471_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind143471_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd143469_
                                 (gx#stx-source _stx143452_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx143452_
                               _form143468_)))))))
          (let ((_hd143458_ (gx#core-expand-head _stx143452_)))
            (if (_sealed-expression?143454_ _hd143458_)
                _hd143458_
                (if (gx#stx-pair? _hd143458_)
                    (let* ((_form143460_ (gx#stx-car _hd143458_))
                           (_bind143462_
                            (if (gx#identifier? _form143460_)
                                (gx#resolve-identifier__0 _form143460_)
                                '#f)))
                      (if (or (not _bind143462_)
                              (not (gx#core-expander-binding? _bind143462_)))
                          (_expand-e143456_ '%%app (cons '%%app _hd143458_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind143462_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd143458_
                               _illegal-expression143455_)
                              (if (gx#expression-form-binding? _bind143462_)
                                  (_expand-e143456_ _bind143462_ _hd143458_)
                                  (if (gx#direct-special-form-binding?
                                       _bind143462_)
                                      (gx#core-expand-expression
                                       (_expand-e143456_
                                        _bind143462_
                                        _hd143458_))
                                      (_illegal-expression143455_
                                       _hd143458_))))))
                    (if (gx#core-bound-identifier?__0 _hd143458_)
                        (_illegal-expression143455_ _hd143458_)
                        (if (gx#identifier? _hd143458_)
                            (_expand-e143456_
                             '%%ref
                             (cons '%%ref (cons _hd143458_ '())))
                            (if (gx#stx-datum? _hd143458_)
                                (_expand-e143456_
                                 '%#quote
                                 (cons '%#quote (cons _hd143458_ '())))
                                (_illegal-expression143455_
                                 _hd143458_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx143447_)
        (call-with-parameters
         (lambda ()
           (let ((_stx143450_ (gx#core-expand-expression _stx143447_)))
             (values _stx143450_ (gx#eval-syntax* _stx143450_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx143428_ _stop?143429_)
        (let _lp143431_ ((_stx143433_ _stx143428_))
          (if (_stop?143429_ _stx143433_)
              _stx143433_
              (let ((_rstx143435_ (gx#core-expand1 _stx143433_)))
                (if (eq? _stx143433_ _rstx143435_)
                    _stx143433_
                    (_lp143431_ _rstx143435_)))))))
    (define gx#core-expand*__0
      (lambda (_stx143440_)
        (let ((_stop?143442_ false))
          (gx#core-expand*__% _stx143440_ _stop?143442_))))
    (define gx#core-expand*
      (lambda _g148063_
        (let ((_g148062_ (##length _g148063_)))
          (cond ((##fx= _g148062_ 1)
                 (apply (lambda (_stx143440_) (gx#core-expand*__0 _stx143440_))
                        _g148063_))
                ((##fx= _g148062_ 2)
                 (apply (lambda (_stx143444_ _stop?143445_)
                          (gx#core-expand*__% _stx143444_ _stop?143445_))
                        _g148063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g148063_))))))
    (define gx#core-expand1
      (lambda (_stx143384_)
        (letrec ((_step143386_
                  (lambda (_hd143423_)
                    (let ((_bind143425_ (gx#resolve-identifier__0 _hd143423_)))
                      (if (##structure-instance-of?
                           _bind143425_
                           'gx#runtime-binding::t)
                          _stx143384_
                          (if (##structure-direct-instance-of?
                               _bind143425_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind143425_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx143384_)
                              (if (not _bind143425_)
                                  _stx143384_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx143384_))))))))
          (let* ((_e143387143395_ _stx143384_)
                 (_E143393143399_ (lambda () _stx143384_))
                 (_E143389143405_
                  (lambda ()
                    (let ((_hd143403_ _e143387143395_))
                      (if (gx#identifier? _hd143403_)
                          (_step143386_ _hd143403_)
                          (_E143393143399_)))))
                 (_E143388143419_
                  (lambda ()
                    (if (gx#stx-pair? _e143387143395_)
                        (let ((_e143390143409_ (gx#syntax-e _e143387143395_)))
                          (let ((_hd143391143412_ (##car _e143390143409_))
                                (_tl143392143414_ (##cdr _e143390143409_)))
                            (let ((_hd143417_ _hd143391143412_))
                              (if (gx#identifier? _hd143417_)
                                  (_step143386_ _hd143417_)
                                  (_E143389143405_)))))
                        (_E143389143405_)))))
            (_E143388143419_)))))
    (define gx#core-expand-head
      (lambda (_stx143350_)
        (letrec ((_stop?143352_
                  (lambda (_stx143354_)
                    (let* ((_e143355143362_ _stx143354_)
                           (_E143357143366_ (lambda () '#f))
                           (_E143356143380_
                            (lambda ()
                              (if (gx#stx-pair? _e143355143362_)
                                  (let ((_e143358143370_
                                         (gx#syntax-e _e143355143362_)))
                                    (let ((_hd143359143373_
                                           (##car _e143358143370_))
                                          (_tl143360143375_
                                           (##cdr _e143358143370_)))
                                      (let ((_hd143378_ _hd143359143373_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd143378_)
                                            (_E143357143366_)))))
                                  (_E143357143366_)))))
                      (_E143356143380_)))))
          (gx#core-expand*__% _stx143350_ _stop?143352_))))
    (define gx#core-expand-block__%
      (lambda (_stx143156_
               _expand-special143157_
               _begin-form143158_
               _expand-e143159_)
        (letrec ((_expand-splice143161_
                  (lambda (_hd143324_ _body143325_ _rest143326_ _r143327_)
                    (if (gx#stx-list? _body143325_)
                        (_K143165_
                         (gx#stx-foldr cons _rest143326_ _body143325_)
                         _r143327_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx143156_
                         _hd143324_))))
                 (_expand-cond-expand143162_
                  (lambda (_hd143320_ _rest143321_ _r143322_)
                    (_K143165_
                     (cons (gx#core-expand-cond-expand% _hd143320_)
                           _rest143321_)
                     _r143322_)))
                 (_expand-include143163_
                  (lambda (_hd143269_ _rest143270_ _r143271_)
                    (let* ((_e143272143282_ _hd143269_)
                           (_E143274143286_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143272143282_)))
                           (_E143273143316_
                            (lambda ()
                              (if (gx#stx-pair? _e143272143282_)
                                  (let ((_e143275143290_
                                         (gx#syntax-e _e143272143282_)))
                                    (let ((_hd143276143293_
                                           (##car _e143275143290_))
                                          (_tl143277143295_
                                           (##cdr _e143275143290_)))
                                      (if (gx#stx-pair? _tl143277143295_)
                                          (let ((_e143278143298_
                                                 (gx#syntax-e
                                                  _tl143277143295_)))
                                            (let ((_hd143279143301_
                                                   (##car _e143278143298_))
                                                  (_tl143280143303_
                                                   (##cdr _e143278143298_)))
                                              (let ((_path143306_
                                                     _hd143279143301_))
                                                (if (gx#stx-null?
                                                     _tl143280143303_)
                                                    (if (gx#stx-string?
                                                         _path143306_)
                                                        (let* ((_rpath143308_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path143306_
                         (gx#stx-source _hd143269_)))
                       (_block143310_
                        (gx#core-expand-include%__% _hd143269_ _rpath143308_))
                       (_rbody143313_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block143310_
                            _expand-special143157_
                            '#f
                            _expand-e143159_))
                         gx#current-expander-path
                         (cons _rpath143308_ (gx#current-expander-path)))))
                  (_K143165_
                   _rest143270_
                   (foldr1 cons _r143271_ _rbody143313_)))
                (_E143274143286_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E143274143286_)))))
                                          (_E143274143286_))))
                                  (_E143274143286_)))))
                      (_E143273143316_))))
                 (_expand-expression143164_
                  (lambda (_hd143265_ _rest143266_ _r143267_)
                    (_K143165_
                     _rest143266_
                     (cons (_expand-e143159_ _hd143265_) _r143267_))))
                 (_K143165_
                  (lambda (_rest143195_ _r143196_)
                    (let* ((_e143197143204_ _rest143195_)
                           (_E143199143208_
                            (lambda ()
                              (if _begin-form143158_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form143158_
                                    (reverse _r143196_))
                                   (gx#stx-source _stx143156_))
                                  _r143196_)))
                           (_E143198143261_
                            (lambda ()
                              (if (gx#stx-pair? _e143197143204_)
                                  (let ((_e143200143212_
                                         (gx#syntax-e _e143197143204_)))
                                    (let ((_hd143201143215_
                                           (##car _e143200143212_))
                                          (_tl143202143217_
                                           (##cdr _e143200143212_)))
                                      (let* ((_hd143220_ _hd143201143215_)
                                             (_rest143222_ _tl143202143217_))
                                        (if '#t
                                            (let* ((_hd143224_
                                                    (gx#core-expand-head
                                                     _hd143220_))
                                                   (_e143225143232_ _hd143224_)
                                                   (_E143227143236_
                                                    (lambda ()
                                                      (_expand-expression143164_
                                                       _hd143224_
                                                       _rest143222_
                                                       _r143196_)))
                                                   (_E143226143257_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e143225143232_)
                                                          (let ((_e143228143240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e143225143232_)))
                    (let ((_hd143229143243_ (##car _e143228143240_))
                          (_tl143230143245_ (##cdr _e143228143240_)))
                      (let* ((_form143248_ _hd143229143243_)
                             (_body143250_ _tl143230143245_))
                        (if '#t
                            (let ((_bind143252_
                                   (if (gx#identifier? _form143248_)
                                       (gx#resolve-identifier__0 _form143248_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind143252_)
                                  (let ((_$e143254_
                                         (##unchecked-structure-ref
                                          _bind143252_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e143254_)
                                        (_expand-splice143161_
                                         _hd143224_
                                         _body143250_
                                         _rest143222_
                                         _r143196_)
                                        (if (eq? '%#cond-expand _$e143254_)
                                            (_expand-cond-expand143162_
                                             _hd143224_
                                             _rest143222_
                                             _r143196_)
                                            (if (eq? '%#include _$e143254_)
                                                (_expand-include143163_
                                                 _hd143224_
                                                 _rest143222_
                                                 _r143196_)
                                                (_expand-special143157_
                                                 _hd143224_
                                                 _K143165_
                                                 _rest143222_
                                                 _r143196_)))))
                                  (_expand-expression143164_
                                   _hd143224_
                                   _rest143222_
                                   _r143196_)))
                            (_E143227143236_)))))
                  (_E143227143236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143226143257_))
                                            (_E143199143208_)))))
                                  (_E143199143208_)))))
                      (_E143198143261_)))))
          (let* ((_e143166143173_ _stx143156_)
                 (_E143168143177_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e143166143173_)))
                 (_E143167143191_
                  (lambda ()
                    (if (gx#stx-pair? _e143166143173_)
                        (let ((_e143169143181_ (gx#syntax-e _e143166143173_)))
                          (let ((_hd143170143184_ (##car _e143169143181_))
                                (_tl143171143186_ (##cdr _e143169143181_)))
                            (let ((_body143189_ _tl143171143186_))
                              (if (gx#stx-list? _body143189_)
                                  (_K143165_ _body143189_ '())
                                  (_E143168143177_)))))
                        (_E143168143177_)))))
            (_E143167143191_)))))
    (define gx#core-expand-block__0
      (lambda (_stx143332_ _expand-special143333_)
        (let* ((_begin-form143335_ '%#begin)
               (_expand-e143337_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx143332_
           _expand-special143333_
           _begin-form143335_
           _expand-e143337_))))
    (define gx#core-expand-block__1
      (lambda (_stx143339_ _expand-special143340_ _begin-form143341_)
        (let ((_expand-e143343_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx143339_
           _expand-special143340_
           _begin-form143341_
           _expand-e143343_))))
    (define gx#core-expand-block
      (lambda _g148065_
        (let ((_g148064_ (##length _g148065_)))
          (cond ((##fx= _g148064_ 2)
                 (apply (lambda (_stx143332_ _expand-special143333_)
                          (gx#core-expand-block__0
                           _stx143332_
                           _expand-special143333_))
                        _g148065_))
                ((##fx= _g148064_ 3)
                 (apply (lambda (_stx143339_
                                 _expand-special143340_
                                 _begin-form143341_)
                          (gx#core-expand-block__1
                           _stx143339_
                           _expand-special143340_
                           _begin-form143341_))
                        _g148065_))
                ((##fx= _g148064_ 4)
                 (apply (lambda (_stx143345_
                                 _expand-special143346_
                                 _begin-form143347_
                                 _expand-e143348_)
                          (gx#core-expand-block__%
                           _stx143345_
                           _expand-special143346_
                           _begin-form143347_
                           _expand-e143348_))
                        _g148065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g148065_))))))
    (define gx#core-expand-block*
      (lambda (_stx143104_ _expand-special143105_)
        (let* ((_g143106143117_
                (gx#core-expand-block__1
                 _stx143104_
                 _expand-special143105_
                 '#f))
               (_E143110143121_
                (lambda () (error '"No clause matching" _g143106143117_))))
          (let ((_K143115143152_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx143104_)))
                (_K143112143138_ (lambda (_expr143136_) _expr143136_))
                (_K143111143127_
                 (lambda (_body143125_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body143125_))
                    (gx#stx-source _stx143104_)))))
            (let ((_try-match143108143148_
                   (lambda ()
                     (if (##pair? _g143106143117_)
                         (let ((_tl143114143143_ (##cdr _g143106143117_))
                               (_hd143113143141_ (##car _g143106143117_)))
                           (if (##null? _tl143114143143_)
                               (let ((_expr143146_ _hd143113143141_))
                                 (_K143112143138_ _expr143146_))
                               (let ((_body143130_ _g143106143117_))
                                 (_K143111143127_ _body143130_))))
                         (let ((_body143130_ _g143106143117_))
                           (_K143111143127_ _body143130_))))))
              (if (##null? _g143106143117_)
                  (_K143115143152_)
                  (_try-match143108143148_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142932_)
        (letrec ((_satisfied?142934_
                  (lambda (_condition143032_)
                    (let* ((_e143033143048_ _condition143032_)
                           (_E143043143052_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143033143048_)))
                           (_E143036143071_
                            (lambda ()
                              (if (gx#stx-pair? _e143033143048_)
                                  (let ((_e143044143056_
                                         (gx#syntax-e _e143033143048_)))
                                    (let ((_hd143045143059_
                                           (##car _e143044143056_))
                                          (_tl143046143061_
                                           (##cdr _e143044143056_)))
                                      (let* ((_combinator143064_
                                              _hd143045143059_)
                                             (_body143066_ _tl143046143061_))
                                        (if (gx#stx-list? _body143066_)
                                            (let ((_$e143068_
                                                   (gx#stx-e
                                                    _combinator143064_)))
                                              (if (eq? 'not _$e143068_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142934_
                                                        _body143066_))
                                                  (if (eq? 'and _$e143068_)
                                                      (gx#stx-andmap
                                                       _satisfied?142934_
                                                       _body143066_)
                                                      (if (eq? 'or _$e143068_)
                                                          (gx#stx-ormap
                                                           _satisfied?142934_
                                                           _body143066_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e143068_)
                      (gx#stx-andmap gx#core-resolve-identifier _body143066_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142932_
                       _combinator143064_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E143043143052_)))))
                                  (_E143043143052_))))
                           (_E143035143094_
                            (lambda ()
                              (if (gx#stx-pair? _e143033143048_)
                                  (let ((_e143037143075_
                                         (gx#syntax-e _e143033143048_)))
                                    (let ((_hd143038143078_
                                           (##car _e143037143075_))
                                          (_tl143039143080_
                                           (##cdr _e143037143075_)))
                                      (if (and (gx#identifier?
                                                _hd143038143078_)
                                               (gx#core-identifier=?
                                                _hd143038143078_
                                                'unquote))
                                          (if (gx#stx-pair? _tl143039143080_)
                                              (let ((_e143040143083_
                                                     (gx#syntax-e
                                                      _tl143039143080_)))
                                                (let ((_hd143041143086_
                                                       (##car _e143040143083_))
                                                      (_tl143042143088_
                                                       (##cdr _e143040143083_)))
                                                  (let ((_expr143091_
                                                         _hd143041143086_))
                                                    (if (gx#stx-null?
                                                         _tl143042143088_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr143091_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E143036143071_))
                (_E143036143071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143036143071_))
                                          (_E143036143071_))))
                                  (_E143036143071_))))
                           (_E143034143100_
                            (lambda ()
                              (let ((_id143098_ _e143033143048_))
                                (if (gx#identifier? _id143098_)
                                    (gx#core-bound-identifier?__%
                                     _id143098_
                                     gx#feature-binding?)
                                    (_E143035143094_))))))
                      (_E143034143100_))))
                 (_loop142935_
                  (lambda (_rest142965_)
                    (let* ((_e142966142974_ _rest142965_)
                           (_E142972142978_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142966142974_)))
                           (_E142968142982_
                            (lambda ()
                              (if (gx#stx-null? _e142966142974_)
                                  (if '#t '() (_E142972142978_))
                                  (_E142972142978_))))
                           (_E142967143028_
                            (lambda ()
                              (if (gx#stx-pair? _e142966142974_)
                                  (let ((_e142969142986_
                                         (gx#syntax-e _e142966142974_)))
                                    (let ((_hd142970142989_
                                           (##car _e142969142986_))
                                          (_tl142971142991_
                                           (##cdr _e142969142986_)))
                                      (let* ((_hd142994_ _hd142970142989_)
                                             (_rest142996_ _tl142971142991_))
                                        (if '#t
                                            (let* ((_e142997143004_ _hd142994_)
                                                   (_E142999143008_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142997143004_)))
                                                   (_E142998143024_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142997143004_)
                                                          (let ((_e143000143012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142997143004_)))
                    (let ((_hd143001143015_ (##car _e143000143012_))
                          (_tl143002143017_ (##cdr _e143000143012_)))
                      (let* ((_condition143020_ _hd143001143015_)
                             (_body143022_ _tl143002143017_))
                        (if '#t
                            (if (gx#stx-eq? _condition143020_ 'else)
                                (if (gx#stx-null? _rest142996_)
                                    _body143022_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142932_
                                     _hd142994_))
                                (if (_satisfied?142934_ _condition143020_)
                                    _body143022_
                                    (_loop142935_ _rest142996_)))
                            (_E142999143008_)))))
                  (_E142999143008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142998143024_))
                                            (_E142968142982_)))))
                                  (_E142968142982_)))))
                      (_E142967143028_)))))
          (let* ((_e142936142943_ _stx142932_)
                 (_E142938142947_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142936142943_)))
                 (_E142937142961_
                  (lambda ()
                    (if (gx#stx-pair? _e142936142943_)
                        (let ((_e142939142951_ (gx#syntax-e _e142936142943_)))
                          (let ((_hd142940142954_ (##car _e142939142951_))
                                (_tl142941142956_ (##cdr _e142939142951_)))
                            (let ((_clauses142959_ _tl142941142956_))
                              (if (gx#stx-list? _clauses142959_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142935_ _clauses142959_))
                                  (_E142938142947_)))))
                        (_E142938142947_)))))
            (_E142937142961_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142875_ _rpath142876_)
        (let* ((_e142877142887_ _stx142875_)
               (_E142879142891_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142877142887_)))
               (_E142878142918_
                (lambda ()
                  (if (gx#stx-pair? _e142877142887_)
                      (let ((_e142880142895_ (gx#syntax-e _e142877142887_)))
                        (let ((_hd142881142898_ (##car _e142880142895_))
                              (_tl142882142900_ (##cdr _e142880142895_)))
                          (if (gx#stx-pair? _tl142882142900_)
                              (let ((_e142883142903_
                                     (gx#syntax-e _tl142882142900_)))
                                (let ((_hd142884142906_
                                       (##car _e142883142903_))
                                      (_tl142885142908_
                                       (##cdr _e142883142903_)))
                                  (let ((_path142911_ _hd142884142906_))
                                    (if (gx#stx-null? _tl142885142908_)
                                        (if (gx#stx-string? _path142911_)
                                            (let ((_rpath142916_
                                                   (let ((_$e142913_
                                                          _rpath142876_))
                                                     (if _$e142913_
                                                         _$e142913_
                                                         (gx#core-resolve-path__%
                                                          _path142911_
                                                          (gx#stx-source
                                                           _stx142875_))))))
                                              (if (member _rpath142916_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142875_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142916_))
                                                    (gx#stx-source
                                                     _stx142875_)))))
                                            (_E142879142891_))
                                        (_E142879142891_)))))
                              (_E142879142891_))))
                      (_E142879142891_)))))
          (_E142878142918_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142925_)
        (let ((_rpath142927_ '#f))
          (gx#core-expand-include%__% _stx142925_ _rpath142927_))))
    (define gx#core-expand-include%
      (lambda _g148067_
        (let ((_g148066_ (##length _g148067_)))
          (cond ((##fx= _g148066_ 1)
                 (apply (lambda (_stx142925_)
                          (gx#core-expand-include%__0 _stx142925_))
                        _g148067_))
                ((##fx= _g148066_ 2)
                 (apply (lambda (_stx142929_ _rpath142930_)
                          (gx#core-expand-include%__%
                           _stx142929_
                           _rpath142930_))
                        _g148067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g148067_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142844_ _stx142845_ _method142846_)
        (if (procedure? _K142844_)
            (let ((_$e142848_ (gx#stx-source _stx142845_)))
              (if _$e142848_
                  ((lambda (_g142850142852_)
                     (gx#stx-wrap-source
                      (_K142844_ _stx142845_)
                      _g142850142852_))
                   _$e142848_)
                  (_K142844_ _stx142845_)))
            (let ((_$e142855_ (bound-method-ref _K142844_ _method142846_)))
              (if _$e142855_
                  ((lambda (_g142857142859_)
                     (gx#core-apply-expander__%
                      _g142857142859_
                      _stx142845_
                      _method142846_))
                   _$e142855_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142845_
                   _method142846_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142865_ _stx142866_)
        (let ((_method142868_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142865_ _stx142866_ _method142868_))))
    (define gx#core-apply-expander
      (lambda _g148069_
        (let ((_g148068_ (##length _g148069_)))
          (cond ((##fx= _g148068_ 2)
                 (apply (lambda (_K142865_ _stx142866_)
                          (gx#core-apply-expander__0 _K142865_ _stx142866_))
                        _g148069_))
                ((##fx= _g148068_ 3)
                 (apply (lambda (_K142870_ _stx142871_ _method142872_)
                          (gx#core-apply-expander__%
                           _K142870_
                           _stx142871_
                           _method142872_))
                        _g148069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g148069_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142840_ _stx142841_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142841_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142693_ _stx142694_)
        (let* ((_self142695142701_ _self142693_)
               (_E142697142705_
                (lambda () (error '"No clause matching" _self142695142701_)))
               (_K142698142710_
                (lambda (_K142708_)
                  (gx#core-apply-expander__0 _K142708_ _stx142694_))))
          (if (##structure-instance-of? _self142695142701_ 'gx#core-macro::t)
              (let* ((_e142699142713_
                      (##unchecked-structure-ref
                       _self142695142701_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142716_ _e142699142713_))
                (_K142698142710_ _K142716_))
              (_E142697142705_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self142546_ _stx142547_)
        (if (gx#sealed-syntax? _stx142547_)
            _stx142547_
            (let* ((_self142548142554_ _self142546_)
                   (_E142550142558_
                    (lambda ()
                      (error '"No clause matching" _self142548142554_)))
                   (_K142551142563_
                    (lambda (_K142561_)
                      (gx#core-apply-expander__0 _K142561_ _stx142547_))))
              (if (##structure-instance-of?
                   _self142548142554_
                   'gx#core-expander::t)
                  (let* ((_e142552142566_
                          (##unchecked-structure-ref
                           _self142548142554_
                           '1
                           gx#expander::t
                           '#f))
                         (_K142569_ _e142552142566_))
                    (_K142551142563_ _K142569_))
                  (_E142550142558_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self142408_ _stx142409_ _top?142410_)
        (if (_top?142410_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self142408_ _stx142409_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx142409_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self142415_ _stx142416_)
        (let ((_top?142418_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self142415_
           _stx142416_
           _top?142418_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g148071_
        (let ((_g148070_ (##length _g148071_)))
          (cond ((##fx= _g148070_ 2)
                 (apply (lambda (_self142415_ _stx142416_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self142415_
                           _stx142416_))
                        _g148071_))
                ((##fx= _g148070_ 3)
                 (apply (lambda (_self142420_ _stx142421_ _top?142422_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self142420_
                           _stx142421_
                           _top?142422_))
                        _g148071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g148071_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self142282_ _stx142283_)
        (gx#top-special-form::apply-macro-expander__%
         _self142282_
         _stx142283_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self142107_ _stx142108_)
        (let* ((_self142109142115_ _self142107_)
               (_E142111142119_
                (lambda () (error '"No clause matching" _self142109142115_)))
               (_K142112142152_
                (lambda (_id142122_)
                  (let* ((_e142123142130_ _stx142108_)
                         (_E142125142134_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e142123142130_)))
                         (_E142124142148_
                          (lambda ()
                            (if (gx#stx-pair? _e142123142130_)
                                (let ((_e142126142138_
                                       (gx#syntax-e _e142123142130_)))
                                  (let ((_hd142127142141_
                                         (##car _e142126142138_))
                                        (_tl142128142143_
                                         (##cdr _e142126142138_)))
                                    (let ((_body142146_ _tl142128142143_))
                                      (if '#t
                                          (gx#core-cons
                                           _id142122_
                                           _body142146_)
                                          (_E142125142134_)))))
                                (_E142125142134_)))))
                    (_E142124142148_)))))
          (if (##structure-instance-of?
               _self142109142115_
               'gx#rename-macro-expander::t)
              (let* ((_e142113142155_
                      (##unchecked-structure-ref
                       _self142109142115_
                       '1
                       gx#expander::t
                       '#f))
                     (_id142158_ _e142113142155_))
                (_K142112142152_ _id142158_))
              (_E142111142119_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141933_ _stx141934_ _method141935_)
        (let* ((_self141936141944_ _self141933_)
               (_E141938141948_
                (lambda () (error '"No clause matching" _self141936141944_)))
               (_K141939141955_
                (lambda (_phi141951_ _ctx141952_ _K141953_)
                  (gx#core-apply-user-macro
                   _K141953_
                   _stx141934_
                   _ctx141952_
                   _phi141951_
                   _method141935_))))
          (if (##structure-instance-of?
               _self141936141944_
               'gx#macro-expander::t)
              (let* ((_e141940141958_
                      (##unchecked-structure-ref
                       _self141936141944_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141961_ _e141940141958_)
                     (_e141941141963_
                      (##unchecked-structure-ref
                       _self141936141944_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141966_ _e141941141963_)
                     (_e141942141968_
                      (##unchecked-structure-ref
                       _self141936141944_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141971_ _e141942141968_))
                (_K141939141955_ _phi141971_ _ctx141966_ _K141961_))
              (_E141938141948_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141976_ _stx141977_)
        (let ((_method141979_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141976_
           _stx141977_
           _method141979_))))
    (define gx#core-apply-user-expander
      (lambda _g148073_
        (let ((_g148072_ (##length _g148073_)))
          (cond ((##fx= _g148072_ 2)
                 (apply (lambda (_self141976_ _stx141977_)
                          (gx#core-apply-user-expander__0
                           _self141976_
                           _stx141977_))
                        _g148073_))
                ((##fx= _g148072_ 3)
                 (apply (lambda (_self141981_ _stx141982_ _method141983_)
                          (gx#core-apply-user-expander__%
                           _self141981_
                           _stx141982_
                           _method141983_))
                        _g148073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g148073_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141923_ _stx141924_ _ctx141925_ _phi141926_ _method141927_)
        (let ((_mark141929_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141925_
                _phi141926_
                _stx141924_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141923_
               (gx#stx-apply-mark _stx141924_ _mark141929_)
               _method141927_)
              _mark141929_))
           gx#current-expander-marks
           (cons _mark141929_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141775_ _phi141776_ _ctx141777_)
        (let _lp141779_ ((_bind141781_
                          (gx#core-resolve-identifier__%
                           _stx141775_
                           _phi141776_
                           _ctx141777_)))
          (if (##structure-direct-instance-of?
               _bind141781_
               'gx#import-binding::t)
              (_lp141779_
               (##unchecked-structure-ref
                _bind141781_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141781_
                   'gx#alias-binding::t)
                  (_lp141779_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141781_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141776_
                    _ctx141777_))
                  _bind141781_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141786_)
        (let* ((_phi141788_ (gx#current-expander-phi))
               (_ctx141790_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141786_ _phi141788_ _ctx141790_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141792_ _phi141793_)
        (let ((_ctx141795_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141792_ _phi141793_ _ctx141795_))))
    (define gx#resolve-identifier
      (lambda _g148075_
        (let ((_g148074_ (##length _g148075_)))
          (cond ((##fx= _g148074_ 1)
                 (apply (lambda (_stx141786_)
                          (gx#resolve-identifier__0 _stx141786_))
                        _g148075_))
                ((##fx= _g148074_ 2)
                 (apply (lambda (_stx141792_ _phi141793_)
                          (gx#resolve-identifier__1 _stx141792_ _phi141793_))
                        _g148075_))
                ((##fx= _g148074_ 3)
                 (apply (lambda (_stx141797_ _phi141798_ _ctx141799_)
                          (gx#resolve-identifier__%
                           _stx141797_
                           _phi141798_
                           _ctx141799_))
                        _g148075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g148075_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141733_ _val141734_ _rebind?141735_ _phi141736_ _ctx141737_)
        (let ((_rebind?141739_
               (if (not _rebind?141735_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141735_) _rebind?141735_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141733_)
           _val141734_
           _rebind?141739_
           _phi141736_
           _ctx141737_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141744_ _val141745_)
        (let* ((_rebind?141747_ '#f)
               (_phi141749_ (gx#current-expander-phi))
               (_ctx141751_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141744_
           _val141745_
           _rebind?141747_
           _phi141749_
           _ctx141751_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141753_ _val141754_ _rebind?141755_)
        (let* ((_phi141757_ (gx#current-expander-phi))
               (_ctx141759_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141753_
           _val141754_
           _rebind?141755_
           _phi141757_
           _ctx141759_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141761_ _val141762_ _rebind?141763_ _phi141764_)
        (let ((_ctx141766_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141761_
           _val141762_
           _rebind?141763_
           _phi141764_
           _ctx141766_))))
    (define gx#bind-identifier!
      (lambda _g148077_
        (let ((_g148076_ (##length _g148077_)))
          (cond ((##fx= _g148076_ 2)
                 (apply (lambda (_stx141744_ _val141745_)
                          (gx#bind-identifier!__0 _stx141744_ _val141745_))
                        _g148077_))
                ((##fx= _g148076_ 3)
                 (apply (lambda (_stx141753_ _val141754_ _rebind?141755_)
                          (gx#bind-identifier!__1
                           _stx141753_
                           _val141754_
                           _rebind?141755_))
                        _g148077_))
                ((##fx= _g148076_ 4)
                 (apply (lambda (_stx141761_
                                 _val141762_
                                 _rebind?141763_
                                 _phi141764_)
                          (gx#bind-identifier!__2
                           _stx141761_
                           _val141762_
                           _rebind?141763_
                           _phi141764_))
                        _g148077_))
                ((##fx= _g148076_ 5)
                 (apply (lambda (_stx141768_
                                 _val141769_
                                 _rebind?141770_
                                 _phi141771_
                                 _ctx141772_)
                          (gx#bind-identifier!__%
                           _stx141768_
                           _val141769_
                           _rebind?141770_
                           _phi141771_
                           _ctx141772_))
                        _g148077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g148077_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141705_ _phi141706_ _ctx141707_)
        (let _lp141709_ ((_e141711_ _stx141705_)
                         (_marks141712_ (gx#current-expander-marks)))
          (if (symbol? _e141711_)
              (gx#core-resolve-binding
               _e141711_
               _phi141706_
               _phi141706_
               _ctx141707_
               (reverse _marks141712_))
              (if (gx#identifier-quote? _e141711_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e141711_ '1 gx#AST::t '#f)
                   _phi141706_
                   '0
                   (##unchecked-structure-ref
                    _e141711_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141711_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141711_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e141711_ '1 gx#AST::t '#f)
                       _phi141706_
                       _phi141706_
                       _ctx141707_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141711_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141712_))
                      (if (##structure-direct-instance-of?
                           _e141711_
                           'gx#syntax-wrap::t)
                          (_lp141709_
                           (##unchecked-structure-ref
                            _e141711_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141711_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141712_))
                          (if (##structure-instance-of?
                               _e141711_
                               'gerbil#AST::t)
                              (_lp141709_
                               (##unchecked-structure-ref
                                _e141711_
                                '1
                                gx#AST::t
                                '#f)
                               _marks141712_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141705_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141717_)
        (let* ((_phi141719_ (gx#current-expander-phi))
               (_ctx141721_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141717_
           _phi141719_
           _ctx141721_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141723_ _phi141724_)
        (let ((_ctx141726_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141723_
           _phi141724_
           _ctx141726_))))
    (define gx#core-resolve-identifier
      (lambda _g148079_
        (let ((_g148078_ (##length _g148079_)))
          (cond ((##fx= _g148078_ 1)
                 (apply (lambda (_stx141717_)
                          (gx#core-resolve-identifier__0 _stx141717_))
                        _g148079_))
                ((##fx= _g148078_ 2)
                 (apply (lambda (_stx141723_ _phi141724_)
                          (gx#core-resolve-identifier__1
                           _stx141723_
                           _phi141724_))
                        _g148079_))
                ((##fx= _g148078_ 3)
                 (apply (lambda (_stx141728_ _phi141729_ _ctx141730_)
                          (gx#core-resolve-identifier__%
                           _stx141728_
                           _phi141729_
                           _ctx141730_))
                        _g148079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g148079_))))))
    (define gx#core-resolve-binding
      (lambda (_id141618_
               _phi141619_
               _src-phi141620_
               _ctx141621_
               _marks141622_)
        (letrec ((_resolve141624_
                  (lambda (_ctx141692_ _src-phi141693_ _key141694_)
                    (let _lp141696_ ((_ctx141698_
                                      (gx#core-context-shift
                                       _ctx141692_
                                       _phi141619_))
                                     (_dphi141699_
                                      (fx- _phi141619_ _src-phi141693_)))
                      (let ((_$e141701_
                             (gx#core-context-resolve
                              _ctx141698_
                              _key141694_)))
                        (if _$e141701_
                            (values _$e141701_)
                            (if (fxzero? _dphi141699_)
                                '#f
                                (if (fxpositive? _dphi141699_)
                                    (_lp141696_
                                     (gx#core-context-shift _ctx141698_ '-1)
                                     (fx- _dphi141699_ '1))
                                    (_lp141696_
                                     (gx#core-context-shift _ctx141698_ '1)
                                     (fx+ _dphi141699_ '1))))))))))
          (let _lp141626_ ((_ctx141628_ _ctx141621_)
                           (_src-phi141629_ _src-phi141620_)
                           (_rest141630_ _marks141622_))
            (let* ((_rest141631141639_ _rest141630_)
                   (_else141633141647_
                    (lambda ()
                      (_resolve141624_
                       _ctx141628_
                       _src-phi141629_
                       _id141618_)))
                   (_K141635141680_
                    (lambda (_rest141650_ _hd141651_)
                      (let* ((_hd141652141658_ _hd141651_)
                             (_E141654141662_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd141652141658_)))
                             (_K141655141672_
                              (lambda (_subst141665_)
                                (let ((_$e141669_
                                       (let ((_key141667_
                                              (if _subst141665_
                                                  (hash-get
                                                   _subst141665_
                                                   _id141618_)
                                                  '#f)))
                                         (if _key141667_
                                             (_resolve141624_
                                              _ctx141628_
                                              _src-phi141629_
                                              _key141667_)
                                             '#f))))
                                  (if _$e141669_
                                      _$e141669_
                                      (_lp141626_
                                       (##unchecked-structure-ref
                                        _hd141651_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd141651_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest141650_))))))
                        (if (##structure-instance-of?
                             _hd141652141658_
                             'gx#expander-mark::t)
                            (let* ((_e141656141675_
                                    (##unchecked-structure-ref
                                     _hd141652141658_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst141678_ _e141656141675_))
                              (_K141655141672_ _subst141678_))
                            (_E141654141662_))))))
              (if (##pair? _rest141631141639_)
                  (let ((_hd141636141683_ (##car _rest141631141639_))
                        (_tl141637141685_ (##cdr _rest141631141639_)))
                    (let* ((_hd141688_ _hd141636141683_)
                           (_rest141690_ _tl141637141685_))
                      (_K141635141680_ _rest141690_ _hd141688_)))
                  (_else141633141647_)))))))
    (define gx#core-bind!__%
      (lambda (_key141494_ _val141495_ _rebind?141496_ _phi141497_ _ctx141498_)
        (letrec ((_update-binding141500_
                  (lambda (_xval141571_)
                    (if (or (_rebind?141496_
                             _ctx141498_
                             _xval141571_
                             _val141495_)
                            (and (##structure-direct-instance-of?
                                  _xval141571_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval141571_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val141495_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val141495_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval141571_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val141495_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val141495_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval141571_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val141495_
                        (if (and (##structure-direct-instance-of?
                                  _val141495_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val141495_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval141571_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val141495_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval141571_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval141571_
                            (if (and (##structure-direct-instance-of?
                                      _val141495_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval141571_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key141494_
                                 (cons (##unchecked-structure-ref
                                        _val141495_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val141495_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval141571_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval141571_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval141571_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval141571_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key141494_
                                 _val141495_
                                 _xval141571_))))))
                 (_gensubst141501_
                  (lambda (_subst141566_ _id141567_)
                    (let ((_eid141569_
                           (gensym (if (uninterned-symbol? _id141567_)
                                       '%
                                       _id141567_))))
                      (table-set! _subst141566_ _id141567_ _eid141569_)
                      _eid141569_)))
                 (_subst!141502_
                  (lambda (_key141504_)
                    (let* ((_key141505141513_ _key141504_)
                           (_else141507141521_ (lambda () _key141504_))
                           (_K141509141554_
                            (lambda (_mark141524_ _id141525_)
                              (let* ((_mark141526141532_ _mark141524_)
                                     (_E141528141536_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark141526141532_)))
                                     (_K141529141546_
                                      (lambda (_subst141539_)
                                        (if (not _subst141539_)
                                            (let ((_subst141541_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark141524_
                                               _subst141541_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst141501_
                                               _subst141541_
                                               _id141525_))
                                            (let ((_$e141543_
                                                   (hash-get
                                                    _subst141539_
                                                    _id141525_)))
                                              (if _$e141543_
                                                  (values _$e141543_)
                                                  (_gensubst141501_
                                                   _subst141539_
                                                   _id141525_)))))))
                                (if (##structure-instance-of?
                                     _mark141526141532_
                                     'gx#expander-mark::t)
                                    (let* ((_e141530141549_
                                            (##unchecked-structure-ref
                                             _mark141526141532_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst141552_ _e141530141549_))
                                      (_K141529141546_ _subst141552_))
                                    (_E141528141536_))))))
                      (if (##pair? _key141505141513_)
                          (let ((_hd141510141557_ (##car _key141505141513_))
                                (_tl141511141559_ (##cdr _key141505141513_)))
                            (let* ((_id141562_ _hd141510141557_)
                                   (_mark141564_ _tl141511141559_))
                              (_K141509141554_ _mark141564_ _id141562_)))
                          (_else141507141521_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx141498_ _phi141497_)
           (_subst!141502_ _key141494_)
           _val141495_
           _update-binding141500_))))
    (define gx#core-bind!__0
      (lambda (_key141588_ _val141589_)
        (let* ((_rebind?141591_ false)
               (_phi141593_ (gx#current-expander-phi))
               (_ctx141595_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141588_
           _val141589_
           _rebind?141591_
           _phi141593_
           _ctx141595_))))
    (define gx#core-bind!__1
      (lambda (_key141597_ _val141598_ _rebind?141599_)
        (let* ((_phi141601_ (gx#current-expander-phi))
               (_ctx141603_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141597_
           _val141598_
           _rebind?141599_
           _phi141601_
           _ctx141603_))))
    (define gx#core-bind!__2
      (lambda (_key141605_ _val141606_ _rebind?141607_ _phi141608_)
        (let ((_ctx141610_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141605_
           _val141606_
           _rebind?141607_
           _phi141608_
           _ctx141610_))))
    (define gx#core-bind!
      (lambda _g148081_
        (let ((_g148080_ (##length _g148081_)))
          (cond ((##fx= _g148080_ 2)
                 (apply (lambda (_key141588_ _val141589_)
                          (gx#core-bind!__0 _key141588_ _val141589_))
                        _g148081_))
                ((##fx= _g148080_ 3)
                 (apply (lambda (_key141597_ _val141598_ _rebind?141599_)
                          (gx#core-bind!__1
                           _key141597_
                           _val141598_
                           _rebind?141599_))
                        _g148081_))
                ((##fx= _g148080_ 4)
                 (apply (lambda (_key141605_
                                 _val141606_
                                 _rebind?141607_
                                 _phi141608_)
                          (gx#core-bind!__2
                           _key141605_
                           _val141606_
                           _rebind?141607_
                           _phi141608_))
                        _g148081_))
                ((##fx= _g148080_ 5)
                 (apply (lambda (_key141612_
                                 _val141613_
                                 _rebind?141614_
                                 _phi141615_
                                 _ctx141616_)
                          (gx#core-bind!__%
                           _key141612_
                           _val141613_
                           _rebind?141614_
                           _phi141615_
                           _ctx141616_))
                        _g148081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g148081_))))))
    (define gx#core-identifier-key
      (lambda (_stx141428_)
        (if (symbol? _stx141428_)
            (let* ((_g141429141437_ (gx#current-expander-marks))
                   (_else141431141445_ (lambda () _stx141428_))
                   (_K141433141450_
                    (lambda (_hd141448_) (cons _stx141428_ _hd141448_))))
              (if (##pair? _g141429141437_)
                  (let* ((_hd141434141453_ (##car _g141429141437_))
                         (_hd141456_ _hd141434141453_))
                    (_K141433141450_ _hd141456_))
                  (_else141431141445_)))
            (if (gx#identifier? _stx141428_)
                (let* ((_id141458_ (gx#syntax-local-unwrap _stx141428_))
                       (_eid141460_ (gx#stx-e _id141458_))
                       (_marks141462_ (gx#stx-identifier-marks* _id141458_)))
                  (let* ((_marks141464141472_ _marks141462_)
                         (_else141466141480_ (lambda () _eid141460_))
                         (_K141468141485_
                          (lambda (_hd141483_) (cons _eid141460_ _hd141483_))))
                    (if (##pair? _marks141464141472_)
                        (let* ((_hd141469141488_ (##car _marks141464141472_))
                               (_hd141491_ _hd141469141488_))
                          (_K141468141485_ _hd141491_))
                        (_else141466141480_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx141428_)))))
    (define gx#core-context-shift
      (lambda (_ctx141373_ _phi141374_)
        (letrec ((_make-phi141376_
                  (lambda (_super141426_)
                    (let ((__obj148052
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj148052
                       (gensym 'phi)
                       _super141426_)
                      __obj148052)))
                 (_make-phi/up141377_
                  (lambda (_ctx141421_ _super141422_)
                    (let ((_ctx+1141424_ (_make-phi141376_ _super141422_)))
                      (##unchecked-structure-set!
                       _ctx141421_
                       _ctx+1141424_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1141424_
                       _ctx141421_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1141424_)))
                 (_make-phi/down141378_
                  (lambda (_ctx141416_ _super141417_)
                    (let ((_ctx-1141419_ (_make-phi141376_ _super141417_)))
                      (##unchecked-structure-set!
                       _ctx-1141419_
                       _ctx141416_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx141416_
                       _ctx-1141419_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1141419_)))
                 (_shift141379_
                  (lambda (_ctx141400_
                           _delta141401_
                           _make-delta-context141402_
                           _phi141403_
                           _K141404_)
                    (let ((_$e141406_
                           (##unchecked-structure-ref
                            _ctx141400_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e141406_
                          ((lambda (_super141409_)
                             (let* ((_super141411_
                                     (_K141404_ _super141409_ _delta141401_))
                                    (_ctx+d141413_
                                     (_make-delta-context141402_
                                      _ctx141400_
                                      _super141411_)))
                               (_K141404_
                                _ctx+d141413_
                                (fx- _phi141403_ _delta141401_))))
                           _$e141406_)
                          (error '"Bad context" _ctx141400_))))))
          (let _K141381_ ((_ctx141383_ _ctx141373_) (_phi141384_ _phi141374_))
            (if (fxzero? _phi141384_)
                _ctx141383_
                (if (fx> (##vector-length _ctx141383_) '3)
                    (if (fxpositive? _phi141384_)
                        (let ((_$e141386_
                               (##unchecked-structure-ref
                                _ctx141383_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e141386_
                              ((lambda (_g141388141390_)
                                 (_K141381_
                                  _g141388141390_
                                  (fx- _phi141384_ '1)))
                               _$e141386_)
                              (_shift141379_
                               _ctx141383_
                               '1
                               _make-phi/up141377_
                               _phi141384_
                               _K141381_)))
                        (let ((_$e141393_
                               (##unchecked-structure-ref
                                _ctx141383_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e141393_
                              ((lambda (_g141395141397_)
                                 (_K141381_
                                  _g141395141397_
                                  (fx+ _phi141384_ '1)))
                               _$e141393_)
                              (_shift141379_
                               _ctx141383_
                               '-1
                               _make-phi/down141378_
                               _phi141384_
                               _K141381_))))
                    _ctx141383_))))))
    (define gx#core-context-get
      (lambda (_ctx141370_ _key141371_)
        (hash-get
         (##unchecked-structure-ref _ctx141370_ '2 gx#expander-context::t '#f)
         _key141371_)))
    (define gx#core-context-put!
      (lambda (_ctx141366_ _key141367_ _val141368_)
        (table-set!
         (##unchecked-structure-ref _ctx141366_ '2 gx#expander-context::t '#f)
         _key141367_
         _val141368_)))
    (define gx#core-context-resolve
      (lambda (_ctx141353_ _key141354_)
        (let _lp141356_ ((_ctx141358_ _ctx141353_))
          (let ((_$e141360_ (gx#core-context-get _ctx141358_ _key141354_)))
            (if _$e141360_
                (values _$e141360_)
                (let ((_$e141363_
                       (if (fx> (##vector-length _ctx141358_) '3)
                           (##unchecked-structure-ref
                            _ctx141358_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e141363_ (_lp141356_ _$e141363_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx141343_ _key141344_ _val141345_ _rebind141346_)
        (let ((_$e141348_ (gx#core-context-get _ctx141343_ _key141344_)))
          (if _$e141348_
              ((lambda (_xval141351_)
                 (gx#core-context-put!
                  _ctx141343_
                  _key141344_
                  (_rebind141346_ _xval141351_)))
               _$e141348_)
              (gx#core-context-put! _ctx141343_ _key141344_ _val141345_)))))
    (define gx#core-context-top__%
      (lambda (_ctx141321_ _stop?141322_)
        (let _lp141324_ ((_ctx141326_ _ctx141321_))
          (if (_stop?141322_ _ctx141326_)
              _ctx141326_
              (if (##structure-instance-of? _ctx141326_ 'gx#context-phi::t)
                  (_lp141324_
                   (##unchecked-structure-ref
                    _ctx141326_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx141332_ (gx#current-expander-context))
               (_stop?141334_ gx#top-context?))
          (gx#core-context-top__% _ctx141332_ _stop?141334_))))
    (define gx#core-context-top__1
      (lambda (_ctx141336_)
        (let ((_stop?141338_ gx#top-context?))
          (gx#core-context-top__% _ctx141336_ _stop?141338_))))
    (define gx#core-context-top
      (lambda _g148083_
        (let ((_g148082_ (##length _g148083_)))
          (cond ((##fx= _g148082_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g148083_))
                ((##fx= _g148082_ 1)
                 (apply (lambda (_ctx141336_)
                          (gx#core-context-top__1 _ctx141336_))
                        _g148083_))
                ((##fx= _g148082_ 2)
                 (apply (lambda (_ctx141340_ _stop?141341_)
                          (gx#core-context-top__% _ctx141340_ _stop?141341_))
                        _g148083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g148083_))))))
    (define gx#core-context-root__%
      (lambda (_ctx141306_)
        (let _lp141308_ ((_ctx141310_ _ctx141306_))
          (if (##structure-instance-of? _ctx141310_ 'gx#context-phi::t)
              (_lp141308_
               (##unchecked-structure-ref
                _ctx141310_
                '3
                gx#phi-context::t
                '#f))
              _ctx141310_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx141316_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx141316_))))
    (define gx#core-context-root
      (lambda _g148085_
        (let ((_g148084_ (##length _g148085_)))
          (cond ((##fx= _g148084_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g148085_))
                ((##fx= _g148084_ 1)
                 (apply (lambda (_ctx141318_)
                          (gx#core-context-root__% _ctx141318_))
                        _g148085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g148085_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx141287_ . __141284141288_)
        (let ((_$e141291_ (gx#current-expander-allow-rebind?)))
          (if _$e141291_
              _$e141291_
              (if (##structure-instance-of? _ctx141287_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx141287_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx141287_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx141298_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx141298_))))
    (define gx#core-context-rebind?
      (lambda _g148087_
        (let ((_g148086_ (##length _g148087_)))
          (cond ((##fx= _g148086_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g148087_))
                ((##fx= _g148086_ 1)
                 (apply (lambda (_ctx141300_)
                          (gx#core-context-rebind?__% _ctx141300_))
                        _g148087_))
                ((##fx>= _g148086_ 1)
                 (apply gx#core-context-rebind?__% _g148087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g148087_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx141270_)
        (let ((_$e141272_ (gx#core-context-top__1 _ctx141270_)))
          (if _$e141272_
              ((lambda (_ctx141275_)
                 (if (##structure-instance-of?
                      _ctx141275_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx141275_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e141272_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx141281_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx141281_))))
    (define gx#core-context-namespace
      (lambda _g148089_
        (let ((_g148088_ (##length _g148089_)))
          (cond ((##fx= _g148088_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g148089_))
                ((##fx= _g148088_ 1)
                 (apply (lambda (_ctx141283_)
                          (gx#core-context-namespace__% _ctx141283_))
                        _g148089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g148089_))))))
    (define gx#expander-binding?__%
      (lambda (_bind141256_ _is?141257_)
        (if (##structure-direct-instance-of?
             _bind141256_
             'gx#syntax-binding::t)
            (_is?141257_
             (##unchecked-structure-ref
              _bind141256_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind141262_)
        (let ((_is?141264_ gx#expander?))
          (gx#expander-binding?__% _bind141262_ _is?141264_))))
    (define gx#expander-binding?
      (lambda _g148091_
        (let ((_g148090_ (##length _g148091_)))
          (cond ((##fx= _g148090_ 1)
                 (apply (lambda (_bind141262_)
                          (gx#expander-binding?__0 _bind141262_))
                        _g148091_))
                ((##fx= _g148090_ 2)
                 (apply (lambda (_bind141266_ _is?141267_)
                          (gx#expander-binding?__% _bind141266_ _is?141267_))
                        _g148091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g148091_))))))
    (define gx#core-expander-binding?
      (lambda (_bind141253_)
        (gx#expander-binding?__% _bind141253_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind141251_)
        (gx#expander-binding?__% _bind141251_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind141245_)
        (letrec ((_direct-special-form?141247_
                  (lambda (_obj141249_)
                    (##structure-direct-instance-of?
                     _obj141249_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind141245_
           _direct-special-form?141247_))))
    (define gx#special-form-binding?
      (lambda (_bind141243_)
        (gx#expander-binding?__% _bind141243_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind141234_)
        (letrec ((_feature?141236_
                  (lambda (_e141238_)
                    (let ((_$e141240_
                           (##structure-instance-of?
                            _e141238_
                            'gx#feature-expander::t)))
                      (if _$e141240_
                          _$e141240_
                          (##structure-instance-of?
                           _e141238_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind141234_ _feature?141236_))))
    (define gx#private-feature-binding?
      (lambda (_bind141232_)
        (gx#expander-binding?__% _bind141232_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id141219_ _bound?141220_)
        (if (gx#identifier? _id141219_)
            (_bound?141220_ (gx#resolve-identifier__0 _id141219_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id141225_)
        (let ((_bound?141227_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id141225_ _bound?141227_))))
    (define gx#core-bound-identifier?
      (lambda _g148093_
        (let ((_g148092_ (##length _g148093_)))
          (cond ((##fx= _g148092_ 1)
                 (apply (lambda (_id141225_)
                          (gx#core-bound-identifier?__0 _id141225_))
                        _g148093_))
                ((##fx= _g148092_ 2)
                 (apply (lambda (_id141229_ _bound?141230_)
                          (gx#core-bound-identifier?__%
                           _id141229_
                           _bound?141230_))
                        _g148093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g148093_))))))
    (define gx#core-identifier=?
      (lambda (_x141209_ _y141210_)
        (letrec ((_y=?141212_
                  (lambda (_xid141216_)
                    ((if (list? _y141210_) memq eq?) _xid141216_ _y141210_))))
          (let ((_bind141214_ (gx#resolve-identifier__0 _x141209_)))
            (if (##structure-instance-of? _bind141214_ 'gx#binding::t)
                (_y=?141212_
                 (##unchecked-structure-ref _bind141214_ '1 gx#binding::t '#f))
                (_y=?141212_ (gx#stx-e _x141209_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e141207_)
        (if (interned-symbol? _e141207_)
            (string-index (symbol->string _e141207_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx141162_ _src141163_ _ctx141164_ _marks141165_)
        (if (##structure? _stx141162_)
            (let ((_$e141167_ (gx#sealed-syntax-unwrap _stx141162_)))
              (if _$e141167_
                  (values _$e141167_)
                  (if (gx#identifier? _stx141162_)
                      (let ((_id141170_
                             (gx#stx-unwrap__% _stx141162_ _marks141165_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id141170_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e141172_
                                (##unchecked-structure-ref
                                 _id141170_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e141172_ _$e141172_ _src141163_))
                         _ctx141164_
                         (##unchecked-structure-ref
                          _id141170_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx141162_)
                       (let ((_$e141175_ (gx#stx-source _stx141162_)))
                         (if _$e141175_ _$e141175_ _src141163_))
                       _ctx141164_
                       (reverse _marks141165_)))))
            (##structure
             gx#syntax-quote::t
             _stx141162_
             _src141163_
             _ctx141164_
             (reverse _marks141165_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx141181_)
        (let* ((_src141183_ '#f)
               (_ctx141185_ (gx#current-expander-context))
               (_marks141187_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx141181_
           _src141183_
           _ctx141185_
           _marks141187_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx141189_ _src141190_)
        (let* ((_ctx141192_ (gx#current-expander-context))
               (_marks141194_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx141189_
           _src141190_
           _ctx141192_
           _marks141194_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx141196_ _src141197_ _ctx141198_)
        (let ((_marks141200_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx141196_
           _src141197_
           _ctx141198_
           _marks141200_))))
    (define gx#core-quote-syntax
      (lambda _g148095_
        (let ((_g148094_ (##length _g148095_)))
          (cond ((##fx= _g148094_ 1)
                 (apply (lambda (_stx141181_)
                          (gx#core-quote-syntax__0 _stx141181_))
                        _g148095_))
                ((##fx= _g148094_ 2)
                 (apply (lambda (_stx141189_ _src141190_)
                          (gx#core-quote-syntax__1 _stx141189_ _src141190_))
                        _g148095_))
                ((##fx= _g148094_ 3)
                 (apply (lambda (_stx141196_ _src141197_ _ctx141198_)
                          (gx#core-quote-syntax__2
                           _stx141196_
                           _src141197_
                           _ctx141198_))
                        _g148095_))
                ((##fx= _g148094_ 4)
                 (apply (lambda (_stx141202_
                                 _src141203_
                                 _ctx141204_
                                 _marks141205_)
                          (gx#core-quote-syntax__%
                           _stx141202_
                           _src141203_
                           _ctx141204_
                           _marks141205_))
                        _g148095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g148095_))))))
    (define gx#core-cons
      (lambda (_hd141158_ _tl141159_)
        (cons (gx#core-quote-syntax__0 _hd141158_) _tl141159_)))
    (define gx#core-list
      (lambda (_hd141155_ . _rest141156_)
        (cons (gx#core-quote-syntax__0 _hd141155_) _rest141156_)))
    (define gx#core-cons*
      (lambda (_hd141152_ . _rest141153_)
        (apply cons* (gx#core-quote-syntax__0 _hd141152_) _rest141153_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path141126_ _rel141127_)
        (let ((_path141139_ (gx#stx-e _stx-path141126_))
              (_reldir141140_
               (let _lp141129_ ((_relsrc141131_
                                 (let ((_$e141136_
                                        (gx#stx-source _stx-path141126_)))
                                   (if _$e141136_ _$e141136_ _rel141127_))))
                 (if (##structure-instance-of? _relsrc141131_ 'gerbil#AST::t)
                     (_lp141129_
                      (let ((_$e141133_ (gx#stx-source _relsrc141131_)))
                        (if _$e141133_ _$e141133_ (gx#stx-e _relsrc141131_))))
                     (if (source-location-path? _relsrc141131_)
                         (path-directory (source-location-path _relsrc141131_))
                         (if (string? _relsrc141131_)
                             (path-directory _relsrc141131_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path141139_ (path-normalize _reldir141140_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path141145_)
        (let ((_rel141147_ '#f))
          (gx#core-resolve-path__% _stx-path141145_ _rel141147_))))
    (define gx#core-resolve-path
      (lambda _g148097_
        (let ((_g148096_ (##length _g148097_)))
          (cond ((##fx= _g148096_ 1)
                 (apply (lambda (_stx-path141145_)
                          (gx#core-resolve-path__0 _stx-path141145_))
                        _g148097_))
                ((##fx= _g148096_ 2)
                 (apply (lambda (_stx-path141149_ _rel141150_)
                          (gx#core-resolve-path__%
                           _stx-path141149_
                           _rel141150_))
                        _g148097_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g148097_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr141082_ _ctx141083_)
        (let* ((_repr141084141091_ _repr141082_)
               (_E141086141095_
                (lambda () (error '"No clause matching" _repr141084141091_)))
               (_K141087141103_
                (lambda (_subs141098_ _phi141099_)
                  (let ((_subst141101_
                         (if (not (null? _subs141098_))
                             (list->hash-table-eq _subs141098_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst141101_
                     _ctx141083_
                     _phi141099_
                     '#f)))))
          (if (##pair? _repr141084141091_)
              (let ((_hd141088141106_ (##car _repr141084141091_))
                    (_tl141089141108_ (##cdr _repr141084141091_)))
                (let* ((_phi141111_ _hd141088141106_)
                       (_subs141113_ _tl141089141108_))
                  (_K141087141103_ _subs141113_ _phi141111_)))
              (_E141086141095_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr141118_)
        (let ((_ctx141120_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr141118_ _ctx141120_))))
    (define gx#core-deserialize-mark
      (lambda _g148099_
        (let ((_g148098_ (##length _g148099_)))
          (cond ((##fx= _g148098_ 1)
                 (apply (lambda (_repr141118_)
                          (gx#core-deserialize-mark__0 _repr141118_))
                        _g148099_))
                ((##fx= _g148098_ 2)
                 (apply (lambda (_repr141122_ _ctx141123_)
                          (gx#core-deserialize-mark__%
                           _repr141122_
                           _ctx141123_))
                        _g148099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g148099_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx141079_)
        (gx#stx-rewrap _stx141079_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx141077_)
        (gx#stx-unwrap__% _stx141077_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx141047_)
        (let* ((_g141048141056_ (gx#current-expander-marks))
               (_else141050141064_ (lambda () _stx141047_))
               (_K141052141069_
                (lambda (_hd141067_)
                  (gx#stx-apply-mark _stx141047_ _hd141067_))))
          (if (##pair? _g141048141056_)
              (let* ((_hd141053141072_ (##car _g141048141056_))
                     (_hd141075_ _hd141053141072_))
                (_K141052141069_ _hd141075_))
              (_else141050141064_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx141032_ _E141033_)
        (let ((_bind141035_ (gx#resolve-identifier__0 _stx141032_)))
          (if (##structure-direct-instance-of?
               _bind141035_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind141035_
               '4
               gx#syntax-binding::t
               '#f)
              (_E141033_ _stx141032_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx141040_)
        (let ((_E141042_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx141040_ _E141042_))))
    (define gx#syntax-local-e
      (lambda _g148101_
        (let ((_g148100_ (##length _g148101_)))
          (cond ((##fx= _g148100_ 1)
                 (apply (lambda (_stx141040_)
                          (gx#syntax-local-e__0 _stx141040_))
                        _g148101_))
                ((##fx= _g148100_ 2)
                 (apply (lambda (_stx141044_ _E141045_)
                          (gx#syntax-local-e__% _stx141044_ _E141045_))
                        _g148101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g148101_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx141016_ _E141017_)
        (let ((_e141019_ (gx#syntax-local-e__% _stx141016_ _E141017_)))
          (if (##structure-instance-of? _e141019_ 'gx#expander::t)
              (##structure-ref _e141019_ '1 gx#expander::t '#f)
              _e141019_))))
    (define gx#syntax-local-value__0
      (lambda (_stx141024_)
        (let ((_E141026_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx141024_ _E141026_))))
    (define gx#syntax-local-value
      (lambda _g148103_
        (let ((_g148102_ (##length _g148103_)))
          (cond ((##fx= _g148102_ 1)
                 (apply (lambda (_stx141024_)
                          (gx#syntax-local-value__0 _stx141024_))
                        _g148103_))
                ((##fx= _g148102_ 2)
                 (apply (lambda (_stx141028_ _E141029_)
                          (gx#syntax-local-value__% _stx141028_ _E141029_))
                        _g148103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g148103_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx141013_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx141013_)))))
