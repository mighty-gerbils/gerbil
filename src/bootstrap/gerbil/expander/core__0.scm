(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708203245)
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
      (lambda _$args143941_
        (apply make-instance gx#expander-context::t _$args143941_)))
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
      (lambda _$args143938_
        (apply make-instance gx#root-context::t _$args143938_)))
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
      (lambda _$args143935_
        (apply make-instance gx#phi-context::t _$args143935_)))
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
      (lambda _$args143932_
        (apply make-instance gx#top-context::t _$args143932_)))
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
      (lambda _$args143929_
        (apply make-instance gx#module-context::t _$args143929_)))
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
      (lambda _$args143926_
        (apply make-instance gx#prelude-context::t _$args143926_)))
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
      (lambda _$args143923_
        (apply make-instance gx#local-context::t _$args143923_)))
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
      (lambda (_self143907_ _id143908_ _super143909_)
        (if (##fx< '3 (##structure-length _self143907_))
            (begin
              (##unchecked-structure-set!
               _self143907_
               _id143908_
               '1
               (##structure-type _self143907_)
               '#f)
              (##unchecked-structure-set!
               _self143907_
               (make-hash-table-eq)
               '2
               (##structure-type _self143907_)
               '#f)
              (##unchecked-structure-set!
               _self143907_
               _super143909_
               '3
               (##structure-type _self143907_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143907_
                   '3
                   (##vector-length _self143907_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143914_ _id143915_)
        (let ((_super143917_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143914_ _id143915_ _super143917_))))
    (define gx#phi-context:::init!
      (lambda _g148051_
        (let ((_g148050_ (##length _g148051_)))
          (cond ((##fx= _g148050_ 2)
                 (apply (lambda (_self143914_ _id143915_)
                          (gx#phi-context:::init!__0 _self143914_ _id143915_))
                        _g148051_))
                ((##fx= _g148050_ 3)
                 (apply (lambda (_self143919_ _id143920_ _super143921_)
                          (gx#phi-context:::init!__%
                           _self143919_
                           _id143920_
                           _super143921_))
                        _g148051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g148051_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143771_ _super143772_)
        (if (##fx< '3 (##structure-length _self143771_))
            (begin
              (##unchecked-structure-set!
               _self143771_
               (gensym 'L)
               '1
               (##structure-type _self143771_)
               '#f)
              (##unchecked-structure-set!
               _self143771_
               (make-hash-table-eq)
               '2
               (##structure-type _self143771_)
               '#f)
              (##unchecked-structure-set!
               _self143771_
               _super143772_
               '3
               (##structure-type _self143771_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143771_
                   '3
                   (##vector-length _self143771_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143777_)
        (let ((_super143779_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143777_ _super143779_))))
    (define gx#local-context:::init!
      (lambda _g148053_
        (let ((_g148052_ (##length _g148053_)))
          (cond ((##fx= _g148052_ 1)
                 (apply (lambda (_self143777_)
                          (gx#local-context:::init!__0 _self143777_))
                        _g148053_))
                ((##fx= _g148052_ 2)
                 (apply (lambda (_self143781_ _super143782_)
                          (gx#local-context:::init!__%
                           _self143781_
                           _super143782_))
                        _g148053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g148053_))))))
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
      (lambda _$args143645_ (apply make-instance gx#binding::t _$args143645_)))
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
      (lambda _$args143642_
        (apply make-instance gx#runtime-binding::t _$args143642_)))
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
      (lambda _$args143639_
        (apply make-instance gx#local-binding::t _$args143639_)))
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
      (lambda _$args143636_
        (apply make-instance gx#top-binding::t _$args143636_)))
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
      (lambda _$args143633_
        (apply make-instance gx#module-binding::t _$args143633_)))
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
      (lambda _$args143630_
        (apply make-instance gx#extern-binding::t _$args143630_)))
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
      (lambda _$args143627_
        (apply make-instance gx#syntax-binding::t _$args143627_)))
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
      (lambda _$args143624_
        (apply make-instance gx#import-binding::t _$args143624_)))
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
      (lambda _$args143621_
        (apply make-instance gx#alias-binding::t _$args143621_)))
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
      (lambda _$args143618_
        (apply make-instance gx#expander::t _$args143618_)))
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
      (lambda _$args143615_
        (apply make-instance gx#core-expander::t _$args143615_)))
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
      (lambda _$args143612_
        (apply make-instance gx#expression-form::t _$args143612_)))
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
      (lambda _$args143609_
        (apply make-instance gx#special-form::t _$args143609_)))
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
      (lambda _$args143606_
        (apply make-instance gx#definition-form::t _$args143606_)))
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
      (lambda _$args143603_
        (apply make-instance gx#top-special-form::t _$args143603_)))
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
      (lambda _$args143600_
        (apply make-instance gx#module-special-form::t _$args143600_)))
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
      (lambda _$args143597_
        (apply make-instance gx#feature-expander::t _$args143597_)))
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
      (lambda _$args143594_
        (apply make-instance gx#private-feature-expander::t _$args143594_)))
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
      (lambda _$args143591_
        (apply make-instance gx#reserved-expander::t _$args143591_)))
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
      (lambda _$args143588_
        (apply make-instance gx#macro-expander::t _$args143588_)))
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
      (lambda _$args143585_
        (apply make-instance gx#rename-macro-expander::t _$args143585_)))
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
      (lambda _$args143582_
        (apply make-instance gx#user-expander::t _$args143582_)))
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
      (lambda _$args143579_
        (apply make-instance gx#expander-mark::t _$args143579_)))
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
      (lambda (_ctx143564_ _message143565_ _stx143566_ . _details143567_)
        (let ((_ctx143577_
               (let ((_$e143569_ _ctx143564_))
                 (if _$e143569_
                     _$e143569_
                     (let ((_$e143572_ (gx#core-context-top__0)))
                       (if _$e143572_
                           ((lambda (_ctx143575_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx143575_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e143572_)
                           '#f))))))
          (raise (make-syntax-error
                  _message143565_
                  (cons _stx143566_ _details143567_)
                  _ctx143577_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx143551_ _expression?143552_)
        (gx#eval-syntax* (gx#core-expand__% _stx143551_ _expression?143552_))))
    (define gx#eval-syntax__0
      (lambda (_stx143557_)
        (let ((_expression?143559_ '#f))
          (gx#eval-syntax__% _stx143557_ _expression?143559_))))
    (define gx#eval-syntax
      (lambda _g148055_
        (let ((_g148054_ (##length _g148055_)))
          (cond ((##fx= _g148054_ 1)
                 (apply (lambda (_stx143557_) (gx#eval-syntax__0 _stx143557_))
                        _g148055_))
                ((##fx= _g148054_ 2)
                 (apply (lambda (_stx143561_ _expression?143562_)
                          (gx#eval-syntax__% _stx143561_ _expression?143562_))
                        _g148055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g148055_))))))
    (define gx#eval-syntax*
      (lambda (_stx143548_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx143548_))))
    (define gx#core-expand__%
      (lambda (_stx143535_ _expression?143536_)
        (if _expression?143536_
            (gx#core-expand-expression _stx143535_)
            (gx#core-expand-top _stx143535_))))
    (define gx#core-expand__0
      (lambda (_stx143541_)
        (let ((_expression?143543_ '#f))
          (gx#core-expand__% _stx143541_ _expression?143543_))))
    (define gx#core-expand
      (lambda _g148057_
        (let ((_g148056_ (##length _g148057_)))
          (cond ((##fx= _g148056_ 1)
                 (apply (lambda (_stx143541_) (gx#core-expand__0 _stx143541_))
                        _g148057_))
                ((##fx= _g148056_ 2)
                 (apply (lambda (_stx143545_ _expression?143546_)
                          (gx#core-expand__% _stx143545_ _expression?143546_))
                        _g148057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g148057_))))))
    (define gx#core-expand-top
      (lambda (_stx143502_)
        (let* ((_stx143504_ (gx#core-expand*__0 _stx143502_))
               (_e143505143512_ _stx143504_)
               (_E143507143516_
                (lambda () (gx#core-expand-expression _stx143504_)))
               (_E143506143530_
                (lambda ()
                  (if (gx#stx-pair? _e143505143512_)
                      (let ((_e143508143520_ (gx#syntax-e _e143505143512_)))
                        (let ((_hd143509143523_ (##car _e143508143520_))
                              (_tl143510143525_ (##cdr _e143508143520_)))
                          (let ((_form143528_ _hd143509143523_))
                            (if (gx#core-bound-identifier?__0 _form143528_)
                                _stx143504_
                                (_E143507143516_)))))
                      (_E143507143516_)))))
          (_E143506143530_))))
    (define gx#core-expand-expression
      (lambda (_stx143449_)
        (letrec ((_sealed-expression?143451_
                  (lambda (_hd143472_)
                    (if (gx#sealed-syntax? _hd143472_)
                        (let* ((_e143473143480_ _hd143472_)
                               (_E143475143484_ (lambda () '#f))
                               (_E143474143498_
                                (lambda ()
                                  (if (gx#stx-pair? _e143473143480_)
                                      (let ((_e143476143488_
                                             (gx#syntax-e _e143473143480_)))
                                        (let ((_hd143477143491_
                                               (##car _e143476143488_))
                                              (_tl143478143493_
                                               (##cdr _e143476143488_)))
                                          (let ((_form143496_
                                                 _hd143477143491_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form143496_
                                                 gx#expression-form-binding?)
                                                (_E143475143484_)))))
                                      (_E143475143484_)))))
                          (_E143474143498_))
                        '#f)))
                 (_illegal-expression143452_
                  (lambda (_hd143470_ . _g148058_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx143449_
                     _hd143470_)))
                 (_expand-e143453_
                  (lambda (_form143465_ _hd143466_)
                    (let ((_bind143468_
                           (if (##structure-instance-of?
                                _form143465_
                                'gx#binding::t)
                               _form143465_
                               (gx#resolve-identifier__0 _form143465_))))
                      (if (gx#core-expander-binding? _bind143468_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind143468_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd143466_
                            (gx#stx-source _stx143449_)))
                          (if (##structure-direct-instance-of?
                               _bind143468_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind143468_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd143466_
                                 (gx#stx-source _stx143449_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx143449_
                               _form143465_)))))))
          (let ((_hd143455_ (gx#core-expand-head _stx143449_)))
            (if (_sealed-expression?143451_ _hd143455_)
                _hd143455_
                (if (gx#stx-pair? _hd143455_)
                    (let* ((_form143457_ (gx#stx-car _hd143455_))
                           (_bind143459_
                            (if (gx#identifier? _form143457_)
                                (gx#resolve-identifier__0 _form143457_)
                                '#f)))
                      (if (or (not _bind143459_)
                              (not (gx#core-expander-binding? _bind143459_)))
                          (_expand-e143453_ '%%app (cons '%%app _hd143455_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind143459_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd143455_
                               _illegal-expression143452_)
                              (if (gx#expression-form-binding? _bind143459_)
                                  (_expand-e143453_ _bind143459_ _hd143455_)
                                  (if (gx#direct-special-form-binding?
                                       _bind143459_)
                                      (gx#core-expand-expression
                                       (_expand-e143453_
                                        _bind143459_
                                        _hd143455_))
                                      (_illegal-expression143452_
                                       _hd143455_))))))
                    (if (gx#core-bound-identifier?__0 _hd143455_)
                        (_illegal-expression143452_ _hd143455_)
                        (if (gx#identifier? _hd143455_)
                            (_expand-e143453_
                             '%%ref
                             (cons '%%ref (cons _hd143455_ '())))
                            (if (gx#stx-datum? _hd143455_)
                                (_expand-e143453_
                                 '%#quote
                                 (cons '%#quote (cons _hd143455_ '())))
                                (_illegal-expression143452_
                                 _hd143455_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx143444_)
        (call-with-parameters
         (lambda ()
           (let ((_stx143447_ (gx#core-expand-expression _stx143444_)))
             (values _stx143447_ (gx#eval-syntax* _stx143447_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx143425_ _stop?143426_)
        (let _lp143428_ ((_stx143430_ _stx143425_))
          (if (_stop?143426_ _stx143430_)
              _stx143430_
              (let ((_rstx143432_ (gx#core-expand1 _stx143430_)))
                (if (eq? _stx143430_ _rstx143432_)
                    _stx143430_
                    (_lp143428_ _rstx143432_)))))))
    (define gx#core-expand*__0
      (lambda (_stx143437_)
        (let ((_stop?143439_ false))
          (gx#core-expand*__% _stx143437_ _stop?143439_))))
    (define gx#core-expand*
      (lambda _g148060_
        (let ((_g148059_ (##length _g148060_)))
          (cond ((##fx= _g148059_ 1)
                 (apply (lambda (_stx143437_) (gx#core-expand*__0 _stx143437_))
                        _g148060_))
                ((##fx= _g148059_ 2)
                 (apply (lambda (_stx143441_ _stop?143442_)
                          (gx#core-expand*__% _stx143441_ _stop?143442_))
                        _g148060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g148060_))))))
    (define gx#core-expand1
      (lambda (_stx143381_)
        (letrec ((_step143383_
                  (lambda (_hd143420_)
                    (let ((_bind143422_ (gx#resolve-identifier__0 _hd143420_)))
                      (if (##structure-instance-of?
                           _bind143422_
                           'gx#runtime-binding::t)
                          _stx143381_
                          (if (##structure-direct-instance-of?
                               _bind143422_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind143422_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx143381_)
                              (if (not _bind143422_)
                                  _stx143381_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx143381_))))))))
          (let* ((_e143384143392_ _stx143381_)
                 (_E143390143396_ (lambda () _stx143381_))
                 (_E143386143402_
                  (lambda ()
                    (let ((_hd143400_ _e143384143392_))
                      (if (gx#identifier? _hd143400_)
                          (_step143383_ _hd143400_)
                          (_E143390143396_)))))
                 (_E143385143416_
                  (lambda ()
                    (if (gx#stx-pair? _e143384143392_)
                        (let ((_e143387143406_ (gx#syntax-e _e143384143392_)))
                          (let ((_hd143388143409_ (##car _e143387143406_))
                                (_tl143389143411_ (##cdr _e143387143406_)))
                            (let ((_hd143414_ _hd143388143409_))
                              (if (gx#identifier? _hd143414_)
                                  (_step143383_ _hd143414_)
                                  (_E143386143402_)))))
                        (_E143386143402_)))))
            (_E143385143416_)))))
    (define gx#core-expand-head
      (lambda (_stx143347_)
        (letrec ((_stop?143349_
                  (lambda (_stx143351_)
                    (let* ((_e143352143359_ _stx143351_)
                           (_E143354143363_ (lambda () '#f))
                           (_E143353143377_
                            (lambda ()
                              (if (gx#stx-pair? _e143352143359_)
                                  (let ((_e143355143367_
                                         (gx#syntax-e _e143352143359_)))
                                    (let ((_hd143356143370_
                                           (##car _e143355143367_))
                                          (_tl143357143372_
                                           (##cdr _e143355143367_)))
                                      (let ((_hd143375_ _hd143356143370_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd143375_)
                                            (_E143354143363_)))))
                                  (_E143354143363_)))))
                      (_E143353143377_)))))
          (gx#core-expand*__% _stx143347_ _stop?143349_))))
    (define gx#core-expand-block__%
      (lambda (_stx143153_
               _expand-special143154_
               _begin-form143155_
               _expand-e143156_)
        (letrec ((_expand-splice143158_
                  (lambda (_hd143321_ _body143322_ _rest143323_ _r143324_)
                    (if (gx#stx-list? _body143322_)
                        (_K143162_
                         (gx#stx-foldr cons _rest143323_ _body143322_)
                         _r143324_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx143153_
                         _hd143321_))))
                 (_expand-cond-expand143159_
                  (lambda (_hd143317_ _rest143318_ _r143319_)
                    (_K143162_
                     (cons (gx#core-expand-cond-expand% _hd143317_)
                           _rest143318_)
                     _r143319_)))
                 (_expand-include143160_
                  (lambda (_hd143266_ _rest143267_ _r143268_)
                    (let* ((_e143269143279_ _hd143266_)
                           (_E143271143283_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143269143279_)))
                           (_E143270143313_
                            (lambda ()
                              (if (gx#stx-pair? _e143269143279_)
                                  (let ((_e143272143287_
                                         (gx#syntax-e _e143269143279_)))
                                    (let ((_hd143273143290_
                                           (##car _e143272143287_))
                                          (_tl143274143292_
                                           (##cdr _e143272143287_)))
                                      (if (gx#stx-pair? _tl143274143292_)
                                          (let ((_e143275143295_
                                                 (gx#syntax-e
                                                  _tl143274143292_)))
                                            (let ((_hd143276143298_
                                                   (##car _e143275143295_))
                                                  (_tl143277143300_
                                                   (##cdr _e143275143295_)))
                                              (let ((_path143303_
                                                     _hd143276143298_))
                                                (if (gx#stx-null?
                                                     _tl143277143300_)
                                                    (if (gx#stx-string?
                                                         _path143303_)
                                                        (let* ((_rpath143305_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path143303_
                         (gx#stx-source _hd143266_)))
                       (_block143307_
                        (gx#core-expand-include%__% _hd143266_ _rpath143305_))
                       (_rbody143310_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block143307_
                            _expand-special143154_
                            '#f
                            _expand-e143156_))
                         gx#current-expander-path
                         (cons _rpath143305_ (gx#current-expander-path)))))
                  (_K143162_
                   _rest143267_
                   (foldr1 cons _r143268_ _rbody143310_)))
                (_E143271143283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E143271143283_)))))
                                          (_E143271143283_))))
                                  (_E143271143283_)))))
                      (_E143270143313_))))
                 (_expand-expression143161_
                  (lambda (_hd143262_ _rest143263_ _r143264_)
                    (_K143162_
                     _rest143263_
                     (cons (_expand-e143156_ _hd143262_) _r143264_))))
                 (_K143162_
                  (lambda (_rest143192_ _r143193_)
                    (let* ((_e143194143201_ _rest143192_)
                           (_E143196143205_
                            (lambda ()
                              (if _begin-form143155_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form143155_
                                    (reverse _r143193_))
                                   (gx#stx-source _stx143153_))
                                  _r143193_)))
                           (_E143195143258_
                            (lambda ()
                              (if (gx#stx-pair? _e143194143201_)
                                  (let ((_e143197143209_
                                         (gx#syntax-e _e143194143201_)))
                                    (let ((_hd143198143212_
                                           (##car _e143197143209_))
                                          (_tl143199143214_
                                           (##cdr _e143197143209_)))
                                      (let* ((_hd143217_ _hd143198143212_)
                                             (_rest143219_ _tl143199143214_))
                                        (if '#t
                                            (let* ((_hd143221_
                                                    (gx#core-expand-head
                                                     _hd143217_))
                                                   (_e143222143229_ _hd143221_)
                                                   (_E143224143233_
                                                    (lambda ()
                                                      (_expand-expression143161_
                                                       _hd143221_
                                                       _rest143219_
                                                       _r143193_)))
                                                   (_E143223143254_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e143222143229_)
                                                          (let ((_e143225143237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e143222143229_)))
                    (let ((_hd143226143240_ (##car _e143225143237_))
                          (_tl143227143242_ (##cdr _e143225143237_)))
                      (let* ((_form143245_ _hd143226143240_)
                             (_body143247_ _tl143227143242_))
                        (if '#t
                            (let ((_bind143249_
                                   (if (gx#identifier? _form143245_)
                                       (gx#resolve-identifier__0 _form143245_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind143249_)
                                  (let ((_$e143251_
                                         (##unchecked-structure-ref
                                          _bind143249_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e143251_)
                                        (_expand-splice143158_
                                         _hd143221_
                                         _body143247_
                                         _rest143219_
                                         _r143193_)
                                        (if (eq? '%#cond-expand _$e143251_)
                                            (_expand-cond-expand143159_
                                             _hd143221_
                                             _rest143219_
                                             _r143193_)
                                            (if (eq? '%#include _$e143251_)
                                                (_expand-include143160_
                                                 _hd143221_
                                                 _rest143219_
                                                 _r143193_)
                                                (_expand-special143154_
                                                 _hd143221_
                                                 _K143162_
                                                 _rest143219_
                                                 _r143193_)))))
                                  (_expand-expression143161_
                                   _hd143221_
                                   _rest143219_
                                   _r143193_)))
                            (_E143224143233_)))))
                  (_E143224143233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143223143254_))
                                            (_E143196143205_)))))
                                  (_E143196143205_)))))
                      (_E143195143258_)))))
          (let* ((_e143163143170_ _stx143153_)
                 (_E143165143174_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e143163143170_)))
                 (_E143164143188_
                  (lambda ()
                    (if (gx#stx-pair? _e143163143170_)
                        (let ((_e143166143178_ (gx#syntax-e _e143163143170_)))
                          (let ((_hd143167143181_ (##car _e143166143178_))
                                (_tl143168143183_ (##cdr _e143166143178_)))
                            (let ((_body143186_ _tl143168143183_))
                              (if (gx#stx-list? _body143186_)
                                  (_K143162_ _body143186_ '())
                                  (_E143165143174_)))))
                        (_E143165143174_)))))
            (_E143164143188_)))))
    (define gx#core-expand-block__0
      (lambda (_stx143329_ _expand-special143330_)
        (let* ((_begin-form143332_ '%#begin)
               (_expand-e143334_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx143329_
           _expand-special143330_
           _begin-form143332_
           _expand-e143334_))))
    (define gx#core-expand-block__1
      (lambda (_stx143336_ _expand-special143337_ _begin-form143338_)
        (let ((_expand-e143340_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx143336_
           _expand-special143337_
           _begin-form143338_
           _expand-e143340_))))
    (define gx#core-expand-block
      (lambda _g148062_
        (let ((_g148061_ (##length _g148062_)))
          (cond ((##fx= _g148061_ 2)
                 (apply (lambda (_stx143329_ _expand-special143330_)
                          (gx#core-expand-block__0
                           _stx143329_
                           _expand-special143330_))
                        _g148062_))
                ((##fx= _g148061_ 3)
                 (apply (lambda (_stx143336_
                                 _expand-special143337_
                                 _begin-form143338_)
                          (gx#core-expand-block__1
                           _stx143336_
                           _expand-special143337_
                           _begin-form143338_))
                        _g148062_))
                ((##fx= _g148061_ 4)
                 (apply (lambda (_stx143342_
                                 _expand-special143343_
                                 _begin-form143344_
                                 _expand-e143345_)
                          (gx#core-expand-block__%
                           _stx143342_
                           _expand-special143343_
                           _begin-form143344_
                           _expand-e143345_))
                        _g148062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g148062_))))))
    (define gx#core-expand-block*
      (lambda (_stx143101_ _expand-special143102_)
        (let* ((_g143103143114_
                (gx#core-expand-block__1
                 _stx143101_
                 _expand-special143102_
                 '#f))
               (_E143107143118_
                (lambda () (error '"No clause matching" _g143103143114_))))
          (let ((_K143112143149_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx143101_)))
                (_K143109143135_ (lambda (_expr143133_) _expr143133_))
                (_K143108143124_
                 (lambda (_body143122_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body143122_))
                    (gx#stx-source _stx143101_)))))
            (let ((_try-match143105143145_
                   (lambda ()
                     (if (##pair? _g143103143114_)
                         (let ((_tl143111143140_ (##cdr _g143103143114_))
                               (_hd143110143138_ (##car _g143103143114_)))
                           (if (##null? _tl143111143140_)
                               (let ((_expr143143_ _hd143110143138_))
                                 (_K143109143135_ _expr143143_))
                               (let ((_body143127_ _g143103143114_))
                                 (_K143108143124_ _body143127_))))
                         (let ((_body143127_ _g143103143114_))
                           (_K143108143124_ _body143127_))))))
              (if (##null? _g143103143114_)
                  (_K143112143149_)
                  (_try-match143105143145_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142929_)
        (letrec ((_satisfied?142931_
                  (lambda (_condition143029_)
                    (let* ((_e143030143045_ _condition143029_)
                           (_E143040143049_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143030143045_)))
                           (_E143033143068_
                            (lambda ()
                              (if (gx#stx-pair? _e143030143045_)
                                  (let ((_e143041143053_
                                         (gx#syntax-e _e143030143045_)))
                                    (let ((_hd143042143056_
                                           (##car _e143041143053_))
                                          (_tl143043143058_
                                           (##cdr _e143041143053_)))
                                      (let* ((_combinator143061_
                                              _hd143042143056_)
                                             (_body143063_ _tl143043143058_))
                                        (if (gx#stx-list? _body143063_)
                                            (let ((_$e143065_
                                                   (gx#stx-e
                                                    _combinator143061_)))
                                              (if (eq? 'not _$e143065_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142931_
                                                        _body143063_))
                                                  (if (eq? 'and _$e143065_)
                                                      (gx#stx-andmap
                                                       _satisfied?142931_
                                                       _body143063_)
                                                      (if (eq? 'or _$e143065_)
                                                          (gx#stx-ormap
                                                           _satisfied?142931_
                                                           _body143063_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e143065_)
                      (gx#stx-andmap gx#core-resolve-identifier _body143063_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142929_
                       _combinator143061_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E143040143049_)))))
                                  (_E143040143049_))))
                           (_E143032143091_
                            (lambda ()
                              (if (gx#stx-pair? _e143030143045_)
                                  (let ((_e143034143072_
                                         (gx#syntax-e _e143030143045_)))
                                    (let ((_hd143035143075_
                                           (##car _e143034143072_))
                                          (_tl143036143077_
                                           (##cdr _e143034143072_)))
                                      (if (and (gx#identifier?
                                                _hd143035143075_)
                                               (gx#core-identifier=?
                                                _hd143035143075_
                                                'unquote))
                                          (if (gx#stx-pair? _tl143036143077_)
                                              (let ((_e143037143080_
                                                     (gx#syntax-e
                                                      _tl143036143077_)))
                                                (let ((_hd143038143083_
                                                       (##car _e143037143080_))
                                                      (_tl143039143085_
                                                       (##cdr _e143037143080_)))
                                                  (let ((_expr143088_
                                                         _hd143038143083_))
                                                    (if (gx#stx-null?
                                                         _tl143039143085_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr143088_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E143033143068_))
                (_E143033143068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143033143068_))
                                          (_E143033143068_))))
                                  (_E143033143068_))))
                           (_E143031143097_
                            (lambda ()
                              (let ((_id143095_ _e143030143045_))
                                (if (gx#identifier? _id143095_)
                                    (gx#core-bound-identifier?__%
                                     _id143095_
                                     gx#feature-binding?)
                                    (_E143032143091_))))))
                      (_E143031143097_))))
                 (_loop142932_
                  (lambda (_rest142962_)
                    (let* ((_e142963142971_ _rest142962_)
                           (_E142969142975_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142963142971_)))
                           (_E142965142979_
                            (lambda ()
                              (if (gx#stx-null? _e142963142971_)
                                  (if '#t '() (_E142969142975_))
                                  (_E142969142975_))))
                           (_E142964143025_
                            (lambda ()
                              (if (gx#stx-pair? _e142963142971_)
                                  (let ((_e142966142983_
                                         (gx#syntax-e _e142963142971_)))
                                    (let ((_hd142967142986_
                                           (##car _e142966142983_))
                                          (_tl142968142988_
                                           (##cdr _e142966142983_)))
                                      (let* ((_hd142991_ _hd142967142986_)
                                             (_rest142993_ _tl142968142988_))
                                        (if '#t
                                            (let* ((_e142994143001_ _hd142991_)
                                                   (_E142996143005_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142994143001_)))
                                                   (_E142995143021_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142994143001_)
                                                          (let ((_e142997143009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142994143001_)))
                    (let ((_hd142998143012_ (##car _e142997143009_))
                          (_tl142999143014_ (##cdr _e142997143009_)))
                      (let* ((_condition143017_ _hd142998143012_)
                             (_body143019_ _tl142999143014_))
                        (if '#t
                            (if (gx#stx-eq? _condition143017_ 'else)
                                (if (gx#stx-null? _rest142993_)
                                    _body143019_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142929_
                                     _hd142991_))
                                (if (_satisfied?142931_ _condition143017_)
                                    _body143019_
                                    (_loop142932_ _rest142993_)))
                            (_E142996143005_)))))
                  (_E142996143005_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142995143021_))
                                            (_E142965142979_)))))
                                  (_E142965142979_)))))
                      (_E142964143025_)))))
          (let* ((_e142933142940_ _stx142929_)
                 (_E142935142944_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142933142940_)))
                 (_E142934142958_
                  (lambda ()
                    (if (gx#stx-pair? _e142933142940_)
                        (let ((_e142936142948_ (gx#syntax-e _e142933142940_)))
                          (let ((_hd142937142951_ (##car _e142936142948_))
                                (_tl142938142953_ (##cdr _e142936142948_)))
                            (let ((_clauses142956_ _tl142938142953_))
                              (if (gx#stx-list? _clauses142956_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142932_ _clauses142956_))
                                  (_E142935142944_)))))
                        (_E142935142944_)))))
            (_E142934142958_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142872_ _rpath142873_)
        (let* ((_e142874142884_ _stx142872_)
               (_E142876142888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142874142884_)))
               (_E142875142915_
                (lambda ()
                  (if (gx#stx-pair? _e142874142884_)
                      (let ((_e142877142892_ (gx#syntax-e _e142874142884_)))
                        (let ((_hd142878142895_ (##car _e142877142892_))
                              (_tl142879142897_ (##cdr _e142877142892_)))
                          (if (gx#stx-pair? _tl142879142897_)
                              (let ((_e142880142900_
                                     (gx#syntax-e _tl142879142897_)))
                                (let ((_hd142881142903_
                                       (##car _e142880142900_))
                                      (_tl142882142905_
                                       (##cdr _e142880142900_)))
                                  (let ((_path142908_ _hd142881142903_))
                                    (if (gx#stx-null? _tl142882142905_)
                                        (if (gx#stx-string? _path142908_)
                                            (let ((_rpath142913_
                                                   (let ((_$e142910_
                                                          _rpath142873_))
                                                     (if _$e142910_
                                                         _$e142910_
                                                         (gx#core-resolve-path__%
                                                          _path142908_
                                                          (gx#stx-source
                                                           _stx142872_))))))
                                              (if (member _rpath142913_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142872_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142913_))
                                                    (gx#stx-source
                                                     _stx142872_)))))
                                            (_E142876142888_))
                                        (_E142876142888_)))))
                              (_E142876142888_))))
                      (_E142876142888_)))))
          (_E142875142915_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142922_)
        (let ((_rpath142924_ '#f))
          (gx#core-expand-include%__% _stx142922_ _rpath142924_))))
    (define gx#core-expand-include%
      (lambda _g148064_
        (let ((_g148063_ (##length _g148064_)))
          (cond ((##fx= _g148063_ 1)
                 (apply (lambda (_stx142922_)
                          (gx#core-expand-include%__0 _stx142922_))
                        _g148064_))
                ((##fx= _g148063_ 2)
                 (apply (lambda (_stx142926_ _rpath142927_)
                          (gx#core-expand-include%__%
                           _stx142926_
                           _rpath142927_))
                        _g148064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g148064_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142841_ _stx142842_ _method142843_)
        (if (procedure? _K142841_)
            (let ((_$e142845_ (gx#stx-source _stx142842_)))
              (if _$e142845_
                  ((lambda (_g142847142849_)
                     (gx#stx-wrap-source
                      (_K142841_ _stx142842_)
                      _g142847142849_))
                   _$e142845_)
                  (_K142841_ _stx142842_)))
            (let ((_$e142852_ (bound-method-ref _K142841_ _method142843_)))
              (if _$e142852_
                  ((lambda (_g142854142856_)
                     (gx#core-apply-expander__%
                      _g142854142856_
                      _stx142842_
                      _method142843_))
                   _$e142852_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142842_
                   _method142843_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142862_ _stx142863_)
        (let ((_method142865_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142862_ _stx142863_ _method142865_))))
    (define gx#core-apply-expander
      (lambda _g148066_
        (let ((_g148065_ (##length _g148066_)))
          (cond ((##fx= _g148065_ 2)
                 (apply (lambda (_K142862_ _stx142863_)
                          (gx#core-apply-expander__0 _K142862_ _stx142863_))
                        _g148066_))
                ((##fx= _g148065_ 3)
                 (apply (lambda (_K142867_ _stx142868_ _method142869_)
                          (gx#core-apply-expander__%
                           _K142867_
                           _stx142868_
                           _method142869_))
                        _g148066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g148066_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142837_ _stx142838_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142838_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142690_ _stx142691_)
        (let* ((_self142692142698_ _self142690_)
               (_E142694142702_
                (lambda () (error '"No clause matching" _self142692142698_)))
               (_K142695142707_
                (lambda (_K142705_)
                  (gx#core-apply-expander__0 _K142705_ _stx142691_))))
          (if (##structure-instance-of? _self142692142698_ 'gx#core-macro::t)
              (let* ((_e142696142710_
                      (##unchecked-structure-ref
                       _self142692142698_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142713_ _e142696142710_))
                (_K142695142707_ _K142713_))
              (_E142694142702_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self142543_ _stx142544_)
        (if (gx#sealed-syntax? _stx142544_)
            _stx142544_
            (let* ((_self142545142551_ _self142543_)
                   (_E142547142555_
                    (lambda ()
                      (error '"No clause matching" _self142545142551_)))
                   (_K142548142560_
                    (lambda (_K142558_)
                      (gx#core-apply-expander__0 _K142558_ _stx142544_))))
              (if (##structure-instance-of?
                   _self142545142551_
                   'gx#core-expander::t)
                  (let* ((_e142549142563_
                          (##unchecked-structure-ref
                           _self142545142551_
                           '1
                           gx#expander::t
                           '#f))
                         (_K142566_ _e142549142563_))
                    (_K142548142560_ _K142566_))
                  (_E142547142555_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self142405_ _stx142406_ _top?142407_)
        (if (_top?142407_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self142405_ _stx142406_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx142406_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self142412_ _stx142413_)
        (let ((_top?142415_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self142412_
           _stx142413_
           _top?142415_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g148068_
        (let ((_g148067_ (##length _g148068_)))
          (cond ((##fx= _g148067_ 2)
                 (apply (lambda (_self142412_ _stx142413_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self142412_
                           _stx142413_))
                        _g148068_))
                ((##fx= _g148067_ 3)
                 (apply (lambda (_self142417_ _stx142418_ _top?142419_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self142417_
                           _stx142418_
                           _top?142419_))
                        _g148068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g148068_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self142279_ _stx142280_)
        (gx#top-special-form::apply-macro-expander__%
         _self142279_
         _stx142280_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self142104_ _stx142105_)
        (let* ((_self142106142112_ _self142104_)
               (_E142108142116_
                (lambda () (error '"No clause matching" _self142106142112_)))
               (_K142109142149_
                (lambda (_id142119_)
                  (let* ((_e142120142127_ _stx142105_)
                         (_E142122142131_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e142120142127_)))
                         (_E142121142145_
                          (lambda ()
                            (if (gx#stx-pair? _e142120142127_)
                                (let ((_e142123142135_
                                       (gx#syntax-e _e142120142127_)))
                                  (let ((_hd142124142138_
                                         (##car _e142123142135_))
                                        (_tl142125142140_
                                         (##cdr _e142123142135_)))
                                    (let ((_body142143_ _tl142125142140_))
                                      (if '#t
                                          (gx#core-cons
                                           _id142119_
                                           _body142143_)
                                          (_E142122142131_)))))
                                (_E142122142131_)))))
                    (_E142121142145_)))))
          (if (##structure-instance-of?
               _self142106142112_
               'gx#rename-macro-expander::t)
              (let* ((_e142110142152_
                      (##unchecked-structure-ref
                       _self142106142112_
                       '1
                       gx#expander::t
                       '#f))
                     (_id142155_ _e142110142152_))
                (_K142109142149_ _id142155_))
              (_E142108142116_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141930_ _stx141931_ _method141932_)
        (let* ((_self141933141941_ _self141930_)
               (_E141935141945_
                (lambda () (error '"No clause matching" _self141933141941_)))
               (_K141936141952_
                (lambda (_phi141948_ _ctx141949_ _K141950_)
                  (gx#core-apply-user-macro
                   _K141950_
                   _stx141931_
                   _ctx141949_
                   _phi141948_
                   _method141932_))))
          (if (##structure-instance-of?
               _self141933141941_
               'gx#macro-expander::t)
              (let* ((_e141937141955_
                      (##unchecked-structure-ref
                       _self141933141941_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141958_ _e141937141955_)
                     (_e141938141960_
                      (##unchecked-structure-ref
                       _self141933141941_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141963_ _e141938141960_)
                     (_e141939141965_
                      (##unchecked-structure-ref
                       _self141933141941_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141968_ _e141939141965_))
                (_K141936141952_ _phi141968_ _ctx141963_ _K141958_))
              (_E141935141945_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141973_ _stx141974_)
        (let ((_method141976_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141973_
           _stx141974_
           _method141976_))))
    (define gx#core-apply-user-expander
      (lambda _g148070_
        (let ((_g148069_ (##length _g148070_)))
          (cond ((##fx= _g148069_ 2)
                 (apply (lambda (_self141973_ _stx141974_)
                          (gx#core-apply-user-expander__0
                           _self141973_
                           _stx141974_))
                        _g148070_))
                ((##fx= _g148069_ 3)
                 (apply (lambda (_self141978_ _stx141979_ _method141980_)
                          (gx#core-apply-user-expander__%
                           _self141978_
                           _stx141979_
                           _method141980_))
                        _g148070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g148070_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141920_ _stx141921_ _ctx141922_ _phi141923_ _method141924_)
        (let ((_mark141926_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141922_
                _phi141923_
                _stx141921_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141920_
               (gx#stx-apply-mark _stx141921_ _mark141926_)
               _method141924_)
              _mark141926_))
           gx#current-expander-marks
           (cons _mark141926_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141772_ _phi141773_ _ctx141774_)
        (let _lp141776_ ((_bind141778_
                          (gx#core-resolve-identifier__%
                           _stx141772_
                           _phi141773_
                           _ctx141774_)))
          (if (##structure-direct-instance-of?
               _bind141778_
               'gx#import-binding::t)
              (_lp141776_
               (##unchecked-structure-ref
                _bind141778_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141778_
                   'gx#alias-binding::t)
                  (_lp141776_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141778_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141773_
                    _ctx141774_))
                  _bind141778_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141783_)
        (let* ((_phi141785_ (gx#current-expander-phi))
               (_ctx141787_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141783_ _phi141785_ _ctx141787_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141789_ _phi141790_)
        (let ((_ctx141792_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141789_ _phi141790_ _ctx141792_))))
    (define gx#resolve-identifier
      (lambda _g148072_
        (let ((_g148071_ (##length _g148072_)))
          (cond ((##fx= _g148071_ 1)
                 (apply (lambda (_stx141783_)
                          (gx#resolve-identifier__0 _stx141783_))
                        _g148072_))
                ((##fx= _g148071_ 2)
                 (apply (lambda (_stx141789_ _phi141790_)
                          (gx#resolve-identifier__1 _stx141789_ _phi141790_))
                        _g148072_))
                ((##fx= _g148071_ 3)
                 (apply (lambda (_stx141794_ _phi141795_ _ctx141796_)
                          (gx#resolve-identifier__%
                           _stx141794_
                           _phi141795_
                           _ctx141796_))
                        _g148072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g148072_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141730_ _val141731_ _rebind?141732_ _phi141733_ _ctx141734_)
        (let ((_rebind?141736_
               (if (not _rebind?141732_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141732_) _rebind?141732_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141730_)
           _val141731_
           _rebind?141736_
           _phi141733_
           _ctx141734_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141741_ _val141742_)
        (let* ((_rebind?141744_ '#f)
               (_phi141746_ (gx#current-expander-phi))
               (_ctx141748_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141741_
           _val141742_
           _rebind?141744_
           _phi141746_
           _ctx141748_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141750_ _val141751_ _rebind?141752_)
        (let* ((_phi141754_ (gx#current-expander-phi))
               (_ctx141756_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141750_
           _val141751_
           _rebind?141752_
           _phi141754_
           _ctx141756_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141758_ _val141759_ _rebind?141760_ _phi141761_)
        (let ((_ctx141763_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141758_
           _val141759_
           _rebind?141760_
           _phi141761_
           _ctx141763_))))
    (define gx#bind-identifier!
      (lambda _g148074_
        (let ((_g148073_ (##length _g148074_)))
          (cond ((##fx= _g148073_ 2)
                 (apply (lambda (_stx141741_ _val141742_)
                          (gx#bind-identifier!__0 _stx141741_ _val141742_))
                        _g148074_))
                ((##fx= _g148073_ 3)
                 (apply (lambda (_stx141750_ _val141751_ _rebind?141752_)
                          (gx#bind-identifier!__1
                           _stx141750_
                           _val141751_
                           _rebind?141752_))
                        _g148074_))
                ((##fx= _g148073_ 4)
                 (apply (lambda (_stx141758_
                                 _val141759_
                                 _rebind?141760_
                                 _phi141761_)
                          (gx#bind-identifier!__2
                           _stx141758_
                           _val141759_
                           _rebind?141760_
                           _phi141761_))
                        _g148074_))
                ((##fx= _g148073_ 5)
                 (apply (lambda (_stx141765_
                                 _val141766_
                                 _rebind?141767_
                                 _phi141768_
                                 _ctx141769_)
                          (gx#bind-identifier!__%
                           _stx141765_
                           _val141766_
                           _rebind?141767_
                           _phi141768_
                           _ctx141769_))
                        _g148074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g148074_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141702_ _phi141703_ _ctx141704_)
        (let _lp141706_ ((_e141708_ _stx141702_)
                         (_marks141709_ (gx#current-expander-marks)))
          (if (symbol? _e141708_)
              (gx#core-resolve-binding
               _e141708_
               _phi141703_
               _phi141703_
               _ctx141704_
               (reverse _marks141709_))
              (if (gx#identifier-quote? _e141708_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e141708_ '1 gx#AST::t '#f)
                   _phi141703_
                   '0
                   (##unchecked-structure-ref
                    _e141708_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141708_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141708_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e141708_ '1 gx#AST::t '#f)
                       _phi141703_
                       _phi141703_
                       _ctx141704_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141708_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141709_))
                      (if (##structure-direct-instance-of?
                           _e141708_
                           'gx#syntax-wrap::t)
                          (_lp141706_
                           (##unchecked-structure-ref
                            _e141708_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141708_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141709_))
                          (if (##structure-instance-of?
                               _e141708_
                               'gerbil#AST::t)
                              (_lp141706_
                               (##unchecked-structure-ref
                                _e141708_
                                '1
                                gx#AST::t
                                '#f)
                               _marks141709_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141702_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141714_)
        (let* ((_phi141716_ (gx#current-expander-phi))
               (_ctx141718_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141714_
           _phi141716_
           _ctx141718_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141720_ _phi141721_)
        (let ((_ctx141723_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141720_
           _phi141721_
           _ctx141723_))))
    (define gx#core-resolve-identifier
      (lambda _g148076_
        (let ((_g148075_ (##length _g148076_)))
          (cond ((##fx= _g148075_ 1)
                 (apply (lambda (_stx141714_)
                          (gx#core-resolve-identifier__0 _stx141714_))
                        _g148076_))
                ((##fx= _g148075_ 2)
                 (apply (lambda (_stx141720_ _phi141721_)
                          (gx#core-resolve-identifier__1
                           _stx141720_
                           _phi141721_))
                        _g148076_))
                ((##fx= _g148075_ 3)
                 (apply (lambda (_stx141725_ _phi141726_ _ctx141727_)
                          (gx#core-resolve-identifier__%
                           _stx141725_
                           _phi141726_
                           _ctx141727_))
                        _g148076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g148076_))))))
    (define gx#core-resolve-binding
      (lambda (_id141615_
               _phi141616_
               _src-phi141617_
               _ctx141618_
               _marks141619_)
        (letrec ((_resolve141621_
                  (lambda (_ctx141689_ _src-phi141690_ _key141691_)
                    (let _lp141693_ ((_ctx141695_
                                      (gx#core-context-shift
                                       _ctx141689_
                                       _phi141616_))
                                     (_dphi141696_
                                      (fx- _phi141616_ _src-phi141690_)))
                      (let ((_$e141698_
                             (gx#core-context-resolve
                              _ctx141695_
                              _key141691_)))
                        (if _$e141698_
                            (values _$e141698_)
                            (if (fxzero? _dphi141696_)
                                '#f
                                (if (fxpositive? _dphi141696_)
                                    (_lp141693_
                                     (gx#core-context-shift _ctx141695_ '-1)
                                     (fx- _dphi141696_ '1))
                                    (_lp141693_
                                     (gx#core-context-shift _ctx141695_ '1)
                                     (fx+ _dphi141696_ '1))))))))))
          (let _lp141623_ ((_ctx141625_ _ctx141618_)
                           (_src-phi141626_ _src-phi141617_)
                           (_rest141627_ _marks141619_))
            (let* ((_rest141628141636_ _rest141627_)
                   (_else141630141644_
                    (lambda ()
                      (_resolve141621_
                       _ctx141625_
                       _src-phi141626_
                       _id141615_)))
                   (_K141632141677_
                    (lambda (_rest141647_ _hd141648_)
                      (let* ((_hd141649141655_ _hd141648_)
                             (_E141651141659_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd141649141655_)))
                             (_K141652141669_
                              (lambda (_subst141662_)
                                (let ((_$e141666_
                                       (let ((_key141664_
                                              (if _subst141662_
                                                  (hash-get
                                                   _subst141662_
                                                   _id141615_)
                                                  '#f)))
                                         (if _key141664_
                                             (_resolve141621_
                                              _ctx141625_
                                              _src-phi141626_
                                              _key141664_)
                                             '#f))))
                                  (if _$e141666_
                                      _$e141666_
                                      (_lp141623_
                                       (##unchecked-structure-ref
                                        _hd141648_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd141648_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest141647_))))))
                        (if (##structure-instance-of?
                             _hd141649141655_
                             'gx#expander-mark::t)
                            (let* ((_e141653141672_
                                    (##unchecked-structure-ref
                                     _hd141649141655_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst141675_ _e141653141672_))
                              (_K141652141669_ _subst141675_))
                            (_E141651141659_))))))
              (if (##pair? _rest141628141636_)
                  (let ((_hd141633141680_ (##car _rest141628141636_))
                        (_tl141634141682_ (##cdr _rest141628141636_)))
                    (let* ((_hd141685_ _hd141633141680_)
                           (_rest141687_ _tl141634141682_))
                      (_K141632141677_ _rest141687_ _hd141685_)))
                  (_else141630141644_)))))))
    (define gx#core-bind!__%
      (lambda (_key141491_ _val141492_ _rebind?141493_ _phi141494_ _ctx141495_)
        (letrec ((_update-binding141497_
                  (lambda (_xval141568_)
                    (if (or (_rebind?141493_
                             _ctx141495_
                             _xval141568_
                             _val141492_)
                            (and (##structure-direct-instance-of?
                                  _xval141568_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval141568_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val141492_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val141492_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval141568_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val141492_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val141492_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval141568_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val141492_
                        (if (and (##structure-direct-instance-of?
                                  _val141492_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val141492_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval141568_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val141492_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval141568_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval141568_
                            (if (and (##structure-direct-instance-of?
                                      _val141492_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval141568_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key141491_
                                 (cons (##unchecked-structure-ref
                                        _val141492_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val141492_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval141568_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval141568_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval141568_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval141568_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key141491_
                                 _val141492_
                                 _xval141568_))))))
                 (_gensubst141498_
                  (lambda (_subst141563_ _id141564_)
                    (let ((_eid141566_
                           (gensym (if (uninterned-symbol? _id141564_)
                                       '%
                                       _id141564_))))
                      (table-set! _subst141563_ _id141564_ _eid141566_)
                      _eid141566_)))
                 (_subst!141499_
                  (lambda (_key141501_)
                    (let* ((_key141502141510_ _key141501_)
                           (_else141504141518_ (lambda () _key141501_))
                           (_K141506141551_
                            (lambda (_mark141521_ _id141522_)
                              (let* ((_mark141523141529_ _mark141521_)
                                     (_E141525141533_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark141523141529_)))
                                     (_K141526141543_
                                      (lambda (_subst141536_)
                                        (if (not _subst141536_)
                                            (let ((_subst141538_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark141521_
                                               _subst141538_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst141498_
                                               _subst141538_
                                               _id141522_))
                                            (let ((_$e141540_
                                                   (hash-get
                                                    _subst141536_
                                                    _id141522_)))
                                              (if _$e141540_
                                                  (values _$e141540_)
                                                  (_gensubst141498_
                                                   _subst141536_
                                                   _id141522_)))))))
                                (if (##structure-instance-of?
                                     _mark141523141529_
                                     'gx#expander-mark::t)
                                    (let* ((_e141527141546_
                                            (##unchecked-structure-ref
                                             _mark141523141529_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst141549_ _e141527141546_))
                                      (_K141526141543_ _subst141549_))
                                    (_E141525141533_))))))
                      (if (##pair? _key141502141510_)
                          (let ((_hd141507141554_ (##car _key141502141510_))
                                (_tl141508141556_ (##cdr _key141502141510_)))
                            (let* ((_id141559_ _hd141507141554_)
                                   (_mark141561_ _tl141508141556_))
                              (_K141506141551_ _mark141561_ _id141559_)))
                          (_else141504141518_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx141495_ _phi141494_)
           (_subst!141499_ _key141491_)
           _val141492_
           _update-binding141497_))))
    (define gx#core-bind!__0
      (lambda (_key141585_ _val141586_)
        (let* ((_rebind?141588_ false)
               (_phi141590_ (gx#current-expander-phi))
               (_ctx141592_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141585_
           _val141586_
           _rebind?141588_
           _phi141590_
           _ctx141592_))))
    (define gx#core-bind!__1
      (lambda (_key141594_ _val141595_ _rebind?141596_)
        (let* ((_phi141598_ (gx#current-expander-phi))
               (_ctx141600_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141594_
           _val141595_
           _rebind?141596_
           _phi141598_
           _ctx141600_))))
    (define gx#core-bind!__2
      (lambda (_key141602_ _val141603_ _rebind?141604_ _phi141605_)
        (let ((_ctx141607_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141602_
           _val141603_
           _rebind?141604_
           _phi141605_
           _ctx141607_))))
    (define gx#core-bind!
      (lambda _g148078_
        (let ((_g148077_ (##length _g148078_)))
          (cond ((##fx= _g148077_ 2)
                 (apply (lambda (_key141585_ _val141586_)
                          (gx#core-bind!__0 _key141585_ _val141586_))
                        _g148078_))
                ((##fx= _g148077_ 3)
                 (apply (lambda (_key141594_ _val141595_ _rebind?141596_)
                          (gx#core-bind!__1
                           _key141594_
                           _val141595_
                           _rebind?141596_))
                        _g148078_))
                ((##fx= _g148077_ 4)
                 (apply (lambda (_key141602_
                                 _val141603_
                                 _rebind?141604_
                                 _phi141605_)
                          (gx#core-bind!__2
                           _key141602_
                           _val141603_
                           _rebind?141604_
                           _phi141605_))
                        _g148078_))
                ((##fx= _g148077_ 5)
                 (apply (lambda (_key141609_
                                 _val141610_
                                 _rebind?141611_
                                 _phi141612_
                                 _ctx141613_)
                          (gx#core-bind!__%
                           _key141609_
                           _val141610_
                           _rebind?141611_
                           _phi141612_
                           _ctx141613_))
                        _g148078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g148078_))))))
    (define gx#core-identifier-key
      (lambda (_stx141425_)
        (if (symbol? _stx141425_)
            (let* ((_g141426141434_ (gx#current-expander-marks))
                   (_else141428141442_ (lambda () _stx141425_))
                   (_K141430141447_
                    (lambda (_hd141445_) (cons _stx141425_ _hd141445_))))
              (if (##pair? _g141426141434_)
                  (let* ((_hd141431141450_ (##car _g141426141434_))
                         (_hd141453_ _hd141431141450_))
                    (_K141430141447_ _hd141453_))
                  (_else141428141442_)))
            (if (gx#identifier? _stx141425_)
                (let* ((_id141455_ (gx#syntax-local-unwrap _stx141425_))
                       (_eid141457_ (gx#stx-e _id141455_))
                       (_marks141459_ (gx#stx-identifier-marks* _id141455_)))
                  (let* ((_marks141461141469_ _marks141459_)
                         (_else141463141477_ (lambda () _eid141457_))
                         (_K141465141482_
                          (lambda (_hd141480_) (cons _eid141457_ _hd141480_))))
                    (if (##pair? _marks141461141469_)
                        (let* ((_hd141466141485_ (##car _marks141461141469_))
                               (_hd141488_ _hd141466141485_))
                          (_K141465141482_ _hd141488_))
                        (_else141463141477_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx141425_)))))
    (define gx#core-context-shift
      (lambda (_ctx141370_ _phi141371_)
        (letrec ((_make-phi141373_
                  (lambda (_super141423_)
                    (let ((__obj148049
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj148049
                       (gensym 'phi)
                       _super141423_)
                      __obj148049)))
                 (_make-phi/up141374_
                  (lambda (_ctx141418_ _super141419_)
                    (let ((_ctx+1141421_ (_make-phi141373_ _super141419_)))
                      (##unchecked-structure-set!
                       _ctx141418_
                       _ctx+1141421_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1141421_
                       _ctx141418_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1141421_)))
                 (_make-phi/down141375_
                  (lambda (_ctx141413_ _super141414_)
                    (let ((_ctx-1141416_ (_make-phi141373_ _super141414_)))
                      (##unchecked-structure-set!
                       _ctx-1141416_
                       _ctx141413_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx141413_
                       _ctx-1141416_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1141416_)))
                 (_shift141376_
                  (lambda (_ctx141397_
                           _delta141398_
                           _make-delta-context141399_
                           _phi141400_
                           _K141401_)
                    (let ((_$e141403_
                           (##unchecked-structure-ref
                            _ctx141397_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e141403_
                          ((lambda (_super141406_)
                             (let* ((_super141408_
                                     (_K141401_ _super141406_ _delta141398_))
                                    (_ctx+d141410_
                                     (_make-delta-context141399_
                                      _ctx141397_
                                      _super141408_)))
                               (_K141401_
                                _ctx+d141410_
                                (fx- _phi141400_ _delta141398_))))
                           _$e141403_)
                          (error '"Bad context" _ctx141397_))))))
          (let _K141378_ ((_ctx141380_ _ctx141370_) (_phi141381_ _phi141371_))
            (if (fxzero? _phi141381_)
                _ctx141380_
                (if (fx> (##vector-length _ctx141380_) '3)
                    (if (fxpositive? _phi141381_)
                        (let ((_$e141383_
                               (##unchecked-structure-ref
                                _ctx141380_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e141383_
                              ((lambda (_g141385141387_)
                                 (_K141378_
                                  _g141385141387_
                                  (fx- _phi141381_ '1)))
                               _$e141383_)
                              (_shift141376_
                               _ctx141380_
                               '1
                               _make-phi/up141374_
                               _phi141381_
                               _K141378_)))
                        (let ((_$e141390_
                               (##unchecked-structure-ref
                                _ctx141380_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e141390_
                              ((lambda (_g141392141394_)
                                 (_K141378_
                                  _g141392141394_
                                  (fx+ _phi141381_ '1)))
                               _$e141390_)
                              (_shift141376_
                               _ctx141380_
                               '-1
                               _make-phi/down141375_
                               _phi141381_
                               _K141378_))))
                    _ctx141380_))))))
    (define gx#core-context-get
      (lambda (_ctx141367_ _key141368_)
        (hash-get
         (##unchecked-structure-ref _ctx141367_ '2 gx#expander-context::t '#f)
         _key141368_)))
    (define gx#core-context-put!
      (lambda (_ctx141363_ _key141364_ _val141365_)
        (table-set!
         (##unchecked-structure-ref _ctx141363_ '2 gx#expander-context::t '#f)
         _key141364_
         _val141365_)))
    (define gx#core-context-resolve
      (lambda (_ctx141350_ _key141351_)
        (let _lp141353_ ((_ctx141355_ _ctx141350_))
          (let ((_$e141357_ (gx#core-context-get _ctx141355_ _key141351_)))
            (if _$e141357_
                (values _$e141357_)
                (let ((_$e141360_
                       (if (fx> (##vector-length _ctx141355_) '3)
                           (##unchecked-structure-ref
                            _ctx141355_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e141360_ (_lp141353_ _$e141360_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx141340_ _key141341_ _val141342_ _rebind141343_)
        (let ((_$e141345_ (gx#core-context-get _ctx141340_ _key141341_)))
          (if _$e141345_
              ((lambda (_xval141348_)
                 (gx#core-context-put!
                  _ctx141340_
                  _key141341_
                  (_rebind141343_ _xval141348_)))
               _$e141345_)
              (gx#core-context-put! _ctx141340_ _key141341_ _val141342_)))))
    (define gx#core-context-top__%
      (lambda (_ctx141318_ _stop?141319_)
        (let _lp141321_ ((_ctx141323_ _ctx141318_))
          (if (_stop?141319_ _ctx141323_)
              _ctx141323_
              (if (##structure-instance-of? _ctx141323_ 'gx#context-phi::t)
                  (_lp141321_
                   (##unchecked-structure-ref
                    _ctx141323_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx141329_ (gx#current-expander-context))
               (_stop?141331_ gx#top-context?))
          (gx#core-context-top__% _ctx141329_ _stop?141331_))))
    (define gx#core-context-top__1
      (lambda (_ctx141333_)
        (let ((_stop?141335_ gx#top-context?))
          (gx#core-context-top__% _ctx141333_ _stop?141335_))))
    (define gx#core-context-top
      (lambda _g148080_
        (let ((_g148079_ (##length _g148080_)))
          (cond ((##fx= _g148079_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g148080_))
                ((##fx= _g148079_ 1)
                 (apply (lambda (_ctx141333_)
                          (gx#core-context-top__1 _ctx141333_))
                        _g148080_))
                ((##fx= _g148079_ 2)
                 (apply (lambda (_ctx141337_ _stop?141338_)
                          (gx#core-context-top__% _ctx141337_ _stop?141338_))
                        _g148080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g148080_))))))
    (define gx#core-context-root__%
      (lambda (_ctx141303_)
        (let _lp141305_ ((_ctx141307_ _ctx141303_))
          (if (##structure-instance-of? _ctx141307_ 'gx#context-phi::t)
              (_lp141305_
               (##unchecked-structure-ref
                _ctx141307_
                '3
                gx#phi-context::t
                '#f))
              _ctx141307_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx141313_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx141313_))))
    (define gx#core-context-root
      (lambda _g148082_
        (let ((_g148081_ (##length _g148082_)))
          (cond ((##fx= _g148081_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g148082_))
                ((##fx= _g148081_ 1)
                 (apply (lambda (_ctx141315_)
                          (gx#core-context-root__% _ctx141315_))
                        _g148082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g148082_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx141284_ . __141281141285_)
        (let ((_$e141288_ (gx#current-expander-allow-rebind?)))
          (if _$e141288_
              _$e141288_
              (if (##structure-instance-of? _ctx141284_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx141284_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx141284_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx141295_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx141295_))))
    (define gx#core-context-rebind?
      (lambda _g148084_
        (let ((_g148083_ (##length _g148084_)))
          (cond ((##fx= _g148083_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g148084_))
                ((##fx= _g148083_ 1)
                 (apply (lambda (_ctx141297_)
                          (gx#core-context-rebind?__% _ctx141297_))
                        _g148084_))
                ((##fx>= _g148083_ 1)
                 (apply gx#core-context-rebind?__% _g148084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g148084_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx141267_)
        (let ((_$e141269_ (gx#core-context-top__1 _ctx141267_)))
          (if _$e141269_
              ((lambda (_ctx141272_)
                 (if (##structure-instance-of?
                      _ctx141272_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx141272_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e141269_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx141278_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx141278_))))
    (define gx#core-context-namespace
      (lambda _g148086_
        (let ((_g148085_ (##length _g148086_)))
          (cond ((##fx= _g148085_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g148086_))
                ((##fx= _g148085_ 1)
                 (apply (lambda (_ctx141280_)
                          (gx#core-context-namespace__% _ctx141280_))
                        _g148086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g148086_))))))
    (define gx#expander-binding?__%
      (lambda (_bind141253_ _is?141254_)
        (if (##structure-direct-instance-of?
             _bind141253_
             'gx#syntax-binding::t)
            (_is?141254_
             (##unchecked-structure-ref
              _bind141253_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind141259_)
        (let ((_is?141261_ gx#expander?))
          (gx#expander-binding?__% _bind141259_ _is?141261_))))
    (define gx#expander-binding?
      (lambda _g148088_
        (let ((_g148087_ (##length _g148088_)))
          (cond ((##fx= _g148087_ 1)
                 (apply (lambda (_bind141259_)
                          (gx#expander-binding?__0 _bind141259_))
                        _g148088_))
                ((##fx= _g148087_ 2)
                 (apply (lambda (_bind141263_ _is?141264_)
                          (gx#expander-binding?__% _bind141263_ _is?141264_))
                        _g148088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g148088_))))))
    (define gx#core-expander-binding?
      (lambda (_bind141250_)
        (gx#expander-binding?__% _bind141250_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind141248_)
        (gx#expander-binding?__% _bind141248_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind141242_)
        (letrec ((_direct-special-form?141244_
                  (lambda (_obj141246_)
                    (##structure-direct-instance-of?
                     _obj141246_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind141242_
           _direct-special-form?141244_))))
    (define gx#special-form-binding?
      (lambda (_bind141240_)
        (gx#expander-binding?__% _bind141240_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind141231_)
        (letrec ((_feature?141233_
                  (lambda (_e141235_)
                    (let ((_$e141237_
                           (##structure-instance-of?
                            _e141235_
                            'gx#feature-expander::t)))
                      (if _$e141237_
                          _$e141237_
                          (##structure-instance-of?
                           _e141235_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind141231_ _feature?141233_))))
    (define gx#private-feature-binding?
      (lambda (_bind141229_)
        (gx#expander-binding?__% _bind141229_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id141216_ _bound?141217_)
        (if (gx#identifier? _id141216_)
            (_bound?141217_ (gx#resolve-identifier__0 _id141216_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id141222_)
        (let ((_bound?141224_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id141222_ _bound?141224_))))
    (define gx#core-bound-identifier?
      (lambda _g148090_
        (let ((_g148089_ (##length _g148090_)))
          (cond ((##fx= _g148089_ 1)
                 (apply (lambda (_id141222_)
                          (gx#core-bound-identifier?__0 _id141222_))
                        _g148090_))
                ((##fx= _g148089_ 2)
                 (apply (lambda (_id141226_ _bound?141227_)
                          (gx#core-bound-identifier?__%
                           _id141226_
                           _bound?141227_))
                        _g148090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g148090_))))))
    (define gx#core-identifier=?
      (lambda (_x141206_ _y141207_)
        (letrec ((_y=?141209_
                  (lambda (_xid141213_)
                    ((if (list? _y141207_) memq eq?) _xid141213_ _y141207_))))
          (let ((_bind141211_ (gx#resolve-identifier__0 _x141206_)))
            (if (##structure-instance-of? _bind141211_ 'gx#binding::t)
                (_y=?141209_
                 (##unchecked-structure-ref _bind141211_ '1 gx#binding::t '#f))
                (_y=?141209_ (gx#stx-e _x141206_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e141204_)
        (if (interned-symbol? _e141204_)
            (string-index (symbol->string _e141204_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx141159_ _src141160_ _ctx141161_ _marks141162_)
        (if (##structure? _stx141159_)
            (let ((_$e141164_ (gx#sealed-syntax-unwrap _stx141159_)))
              (if _$e141164_
                  (values _$e141164_)
                  (if (gx#identifier? _stx141159_)
                      (let ((_id141167_
                             (gx#stx-unwrap__% _stx141159_ _marks141162_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id141167_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e141169_
                                (##unchecked-structure-ref
                                 _id141167_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e141169_ _$e141169_ _src141160_))
                         _ctx141161_
                         (##unchecked-structure-ref
                          _id141167_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx141159_)
                       (let ((_$e141172_ (gx#stx-source _stx141159_)))
                         (if _$e141172_ _$e141172_ _src141160_))
                       _ctx141161_
                       (reverse _marks141162_)))))
            (##structure
             gx#syntax-quote::t
             _stx141159_
             _src141160_
             _ctx141161_
             (reverse _marks141162_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx141178_)
        (let* ((_src141180_ '#f)
               (_ctx141182_ (gx#current-expander-context))
               (_marks141184_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx141178_
           _src141180_
           _ctx141182_
           _marks141184_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx141186_ _src141187_)
        (let* ((_ctx141189_ (gx#current-expander-context))
               (_marks141191_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx141186_
           _src141187_
           _ctx141189_
           _marks141191_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx141193_ _src141194_ _ctx141195_)
        (let ((_marks141197_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx141193_
           _src141194_
           _ctx141195_
           _marks141197_))))
    (define gx#core-quote-syntax
      (lambda _g148092_
        (let ((_g148091_ (##length _g148092_)))
          (cond ((##fx= _g148091_ 1)
                 (apply (lambda (_stx141178_)
                          (gx#core-quote-syntax__0 _stx141178_))
                        _g148092_))
                ((##fx= _g148091_ 2)
                 (apply (lambda (_stx141186_ _src141187_)
                          (gx#core-quote-syntax__1 _stx141186_ _src141187_))
                        _g148092_))
                ((##fx= _g148091_ 3)
                 (apply (lambda (_stx141193_ _src141194_ _ctx141195_)
                          (gx#core-quote-syntax__2
                           _stx141193_
                           _src141194_
                           _ctx141195_))
                        _g148092_))
                ((##fx= _g148091_ 4)
                 (apply (lambda (_stx141199_
                                 _src141200_
                                 _ctx141201_
                                 _marks141202_)
                          (gx#core-quote-syntax__%
                           _stx141199_
                           _src141200_
                           _ctx141201_
                           _marks141202_))
                        _g148092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g148092_))))))
    (define gx#core-cons
      (lambda (_hd141155_ _tl141156_)
        (cons (gx#core-quote-syntax__0 _hd141155_) _tl141156_)))
    (define gx#core-list
      (lambda (_hd141152_ . _rest141153_)
        (cons (gx#core-quote-syntax__0 _hd141152_) _rest141153_)))
    (define gx#core-cons*
      (lambda (_hd141149_ . _rest141150_)
        (apply cons* (gx#core-quote-syntax__0 _hd141149_) _rest141150_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path141123_ _rel141124_)
        (let ((_path141136_ (gx#stx-e _stx-path141123_))
              (_reldir141137_
               (let _lp141126_ ((_relsrc141128_
                                 (let ((_$e141133_
                                        (gx#stx-source _stx-path141123_)))
                                   (if _$e141133_ _$e141133_ _rel141124_))))
                 (if (##structure-instance-of? _relsrc141128_ 'gerbil#AST::t)
                     (_lp141126_
                      (let ((_$e141130_ (gx#stx-source _relsrc141128_)))
                        (if _$e141130_ _$e141130_ (gx#stx-e _relsrc141128_))))
                     (if (source-location-path? _relsrc141128_)
                         (path-directory (source-location-path _relsrc141128_))
                         (if (string? _relsrc141128_)
                             (path-directory _relsrc141128_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path141136_ (path-normalize _reldir141137_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path141142_)
        (let ((_rel141144_ '#f))
          (gx#core-resolve-path__% _stx-path141142_ _rel141144_))))
    (define gx#core-resolve-path
      (lambda _g148094_
        (let ((_g148093_ (##length _g148094_)))
          (cond ((##fx= _g148093_ 1)
                 (apply (lambda (_stx-path141142_)
                          (gx#core-resolve-path__0 _stx-path141142_))
                        _g148094_))
                ((##fx= _g148093_ 2)
                 (apply (lambda (_stx-path141146_ _rel141147_)
                          (gx#core-resolve-path__%
                           _stx-path141146_
                           _rel141147_))
                        _g148094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g148094_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr141079_ _ctx141080_)
        (let* ((_repr141081141088_ _repr141079_)
               (_E141083141092_
                (lambda () (error '"No clause matching" _repr141081141088_)))
               (_K141084141100_
                (lambda (_subs141095_ _phi141096_)
                  (let ((_subst141098_
                         (if (not (null? _subs141095_))
                             (list->hash-table-eq _subs141095_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst141098_
                     _ctx141080_
                     _phi141096_
                     '#f)))))
          (if (##pair? _repr141081141088_)
              (let ((_hd141085141103_ (##car _repr141081141088_))
                    (_tl141086141105_ (##cdr _repr141081141088_)))
                (let* ((_phi141108_ _hd141085141103_)
                       (_subs141110_ _tl141086141105_))
                  (_K141084141100_ _subs141110_ _phi141108_)))
              (_E141083141092_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr141115_)
        (let ((_ctx141117_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr141115_ _ctx141117_))))
    (define gx#core-deserialize-mark
      (lambda _g148096_
        (let ((_g148095_ (##length _g148096_)))
          (cond ((##fx= _g148095_ 1)
                 (apply (lambda (_repr141115_)
                          (gx#core-deserialize-mark__0 _repr141115_))
                        _g148096_))
                ((##fx= _g148095_ 2)
                 (apply (lambda (_repr141119_ _ctx141120_)
                          (gx#core-deserialize-mark__%
                           _repr141119_
                           _ctx141120_))
                        _g148096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g148096_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx141076_)
        (gx#stx-rewrap _stx141076_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx141074_)
        (gx#stx-unwrap__% _stx141074_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx141044_)
        (let* ((_g141045141053_ (gx#current-expander-marks))
               (_else141047141061_ (lambda () _stx141044_))
               (_K141049141066_
                (lambda (_hd141064_)
                  (gx#stx-apply-mark _stx141044_ _hd141064_))))
          (if (##pair? _g141045141053_)
              (let* ((_hd141050141069_ (##car _g141045141053_))
                     (_hd141072_ _hd141050141069_))
                (_K141049141066_ _hd141072_))
              (_else141047141061_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx141029_ _E141030_)
        (let ((_bind141032_ (gx#resolve-identifier__0 _stx141029_)))
          (if (##structure-direct-instance-of?
               _bind141032_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind141032_
               '4
               gx#syntax-binding::t
               '#f)
              (_E141030_ _stx141029_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx141037_)
        (let ((_E141039_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx141037_ _E141039_))))
    (define gx#syntax-local-e
      (lambda _g148098_
        (let ((_g148097_ (##length _g148098_)))
          (cond ((##fx= _g148097_ 1)
                 (apply (lambda (_stx141037_)
                          (gx#syntax-local-e__0 _stx141037_))
                        _g148098_))
                ((##fx= _g148097_ 2)
                 (apply (lambda (_stx141041_ _E141042_)
                          (gx#syntax-local-e__% _stx141041_ _E141042_))
                        _g148098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g148098_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx141013_ _E141014_)
        (let ((_e141016_ (gx#syntax-local-e__% _stx141013_ _E141014_)))
          (if (##structure-instance-of? _e141016_ 'gx#expander::t)
              (##structure-ref _e141016_ '1 gx#expander::t '#f)
              _e141016_))))
    (define gx#syntax-local-value__0
      (lambda (_stx141021_)
        (let ((_E141023_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx141021_ _E141023_))))
    (define gx#syntax-local-value
      (lambda _g148100_
        (let ((_g148099_ (##length _g148100_)))
          (cond ((##fx= _g148099_ 1)
                 (apply (lambda (_stx141021_)
                          (gx#syntax-local-value__0 _stx141021_))
                        _g148100_))
                ((##fx= _g148099_ 2)
                 (apply (lambda (_stx141025_ _E141026_)
                          (gx#syntax-local-value__% _stx141025_ _E141026_))
                        _g148100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g148100_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx141010_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx141010_)))))
