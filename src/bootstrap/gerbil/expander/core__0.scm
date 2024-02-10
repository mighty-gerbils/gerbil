(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707573212)
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
      (make-struct-type
       'gx#expander-context::t
       'expander-context
       '#f
       '(id table)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#expander-context?
      (make-struct-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _$args143349_
        (apply make-struct-instance gx#expander-context::t _$args143349_)))
    (define gx#expander-context-id
      (make-struct-slot-accessor gx#expander-context::t 'id))
    (define gx#expander-context-table
      (make-struct-slot-accessor gx#expander-context::t 'table))
    (define gx#expander-context-id-set!
      (make-struct-slot-mutator gx#expander-context::t 'id))
    (define gx#expander-context-table-set!
      (make-struct-slot-mutator gx#expander-context::t 'table))
    (define gx#&expander-context-id
      (make-struct-slot-unchecked-accessor gx#expander-context::t 'id))
    (define gx#&expander-context-table
      (make-struct-slot-unchecked-accessor gx#expander-context::t 'table))
    (define gx#&expander-context-id-set!
      (make-struct-slot-unchecked-mutator gx#expander-context::t 'id))
    (define gx#&expander-context-table-set!
      (make-struct-slot-unchecked-mutator gx#expander-context::t 'table))
    (define gx#root-context::t
      (make-struct-type
       'gx#root-context::t
       'root-context
       gx#expander-context::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (make-struct-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _$args143346_
        (apply make-struct-instance gx#root-context::t _$args143346_)))
    (define gx#root-context-id
      (make-struct-slot-accessor gx#root-context::t 'id))
    (define gx#root-context-table
      (make-struct-slot-accessor gx#root-context::t 'table))
    (define gx#root-context-id-set!
      (make-struct-slot-mutator gx#root-context::t 'id))
    (define gx#root-context-table-set!
      (make-struct-slot-mutator gx#root-context::t 'table))
    (define gx#&root-context-id
      (make-struct-slot-unchecked-accessor gx#root-context::t 'id))
    (define gx#&root-context-table
      (make-struct-slot-unchecked-accessor gx#root-context::t 'table))
    (define gx#&root-context-id-set!
      (make-struct-slot-unchecked-mutator gx#root-context::t 'id))
    (define gx#&root-context-table-set!
      (make-struct-slot-unchecked-mutator gx#root-context::t 'table))
    (define gx#phi-context::t
      (make-struct-type
       'gx#context-phi::t
       'phi-context
       gx#expander-context::t
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (make-struct-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _$args143343_
        (apply make-struct-instance gx#phi-context::t _$args143343_)))
    (define gx#phi-context-super
      (make-struct-slot-accessor gx#phi-context::t 'super))
    (define gx#phi-context-up
      (make-struct-slot-accessor gx#phi-context::t 'up))
    (define gx#phi-context-down
      (make-struct-slot-accessor gx#phi-context::t 'down))
    (define gx#phi-context-id
      (make-struct-slot-accessor gx#phi-context::t 'id))
    (define gx#phi-context-table
      (make-struct-slot-accessor gx#phi-context::t 'table))
    (define gx#phi-context-super-set!
      (make-struct-slot-mutator gx#phi-context::t 'super))
    (define gx#phi-context-up-set!
      (make-struct-slot-mutator gx#phi-context::t 'up))
    (define gx#phi-context-down-set!
      (make-struct-slot-mutator gx#phi-context::t 'down))
    (define gx#phi-context-id-set!
      (make-struct-slot-mutator gx#phi-context::t 'id))
    (define gx#phi-context-table-set!
      (make-struct-slot-mutator gx#phi-context::t 'table))
    (define gx#&phi-context-super
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'super))
    (define gx#&phi-context-up
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'up))
    (define gx#&phi-context-down
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'down))
    (define gx#&phi-context-id
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'id))
    (define gx#&phi-context-table
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'table))
    (define gx#&phi-context-super-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'super))
    (define gx#&phi-context-up-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'up))
    (define gx#&phi-context-down-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'down))
    (define gx#&phi-context-id-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'id))
    (define gx#&phi-context-table-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'table))
    (define gx#top-context::t
      (make-struct-type
       'gx#top-context::t
       'top-context
       gx#phi-context::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (make-struct-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _$args143340_
        (apply make-struct-instance gx#top-context::t _$args143340_)))
    (define gx#top-context-super
      (make-struct-slot-accessor gx#top-context::t 'super))
    (define gx#top-context-up
      (make-struct-slot-accessor gx#top-context::t 'up))
    (define gx#top-context-down
      (make-struct-slot-accessor gx#top-context::t 'down))
    (define gx#top-context-id
      (make-struct-slot-accessor gx#top-context::t 'id))
    (define gx#top-context-table
      (make-struct-slot-accessor gx#top-context::t 'table))
    (define gx#top-context-super-set!
      (make-struct-slot-mutator gx#top-context::t 'super))
    (define gx#top-context-up-set!
      (make-struct-slot-mutator gx#top-context::t 'up))
    (define gx#top-context-down-set!
      (make-struct-slot-mutator gx#top-context::t 'down))
    (define gx#top-context-id-set!
      (make-struct-slot-mutator gx#top-context::t 'id))
    (define gx#top-context-table-set!
      (make-struct-slot-mutator gx#top-context::t 'table))
    (define gx#&top-context-super
      (make-struct-slot-unchecked-accessor gx#top-context::t 'super))
    (define gx#&top-context-up
      (make-struct-slot-unchecked-accessor gx#top-context::t 'up))
    (define gx#&top-context-down
      (make-struct-slot-unchecked-accessor gx#top-context::t 'down))
    (define gx#&top-context-id
      (make-struct-slot-unchecked-accessor gx#top-context::t 'id))
    (define gx#&top-context-table
      (make-struct-slot-unchecked-accessor gx#top-context::t 'table))
    (define gx#&top-context-super-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'super))
    (define gx#&top-context-up-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'up))
    (define gx#&top-context-down-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'down))
    (define gx#&top-context-id-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'id))
    (define gx#&top-context-table-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'table))
    (define gx#module-context::t
      (make-struct-type
       'gx#module-context::t
       'module-context
       gx#top-context::t
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (make-struct-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _$args143337_
        (apply make-struct-instance gx#module-context::t _$args143337_)))
    (define gx#module-context-ns
      (make-struct-slot-accessor gx#module-context::t 'ns))
    (define gx#module-context-path
      (make-struct-slot-accessor gx#module-context::t 'path))
    (define gx#module-context-import
      (make-struct-slot-accessor gx#module-context::t 'import))
    (define gx#module-context-export
      (make-struct-slot-accessor gx#module-context::t 'export))
    (define gx#module-context-e
      (make-struct-slot-accessor gx#module-context::t 'e))
    (define gx#module-context-code
      (make-struct-slot-accessor gx#module-context::t 'code))
    (define gx#module-context-super
      (make-struct-slot-accessor gx#module-context::t 'super))
    (define gx#module-context-up
      (make-struct-slot-accessor gx#module-context::t 'up))
    (define gx#module-context-down
      (make-struct-slot-accessor gx#module-context::t 'down))
    (define gx#module-context-id
      (make-struct-slot-accessor gx#module-context::t 'id))
    (define gx#module-context-table
      (make-struct-slot-accessor gx#module-context::t 'table))
    (define gx#module-context-ns-set!
      (make-struct-slot-mutator gx#module-context::t 'ns))
    (define gx#module-context-path-set!
      (make-struct-slot-mutator gx#module-context::t 'path))
    (define gx#module-context-import-set!
      (make-struct-slot-mutator gx#module-context::t 'import))
    (define gx#module-context-export-set!
      (make-struct-slot-mutator gx#module-context::t 'export))
    (define gx#module-context-e-set!
      (make-struct-slot-mutator gx#module-context::t 'e))
    (define gx#module-context-code-set!
      (make-struct-slot-mutator gx#module-context::t 'code))
    (define gx#module-context-super-set!
      (make-struct-slot-mutator gx#module-context::t 'super))
    (define gx#module-context-up-set!
      (make-struct-slot-mutator gx#module-context::t 'up))
    (define gx#module-context-down-set!
      (make-struct-slot-mutator gx#module-context::t 'down))
    (define gx#module-context-id-set!
      (make-struct-slot-mutator gx#module-context::t 'id))
    (define gx#module-context-table-set!
      (make-struct-slot-mutator gx#module-context::t 'table))
    (define gx#&module-context-ns
      (make-struct-slot-unchecked-accessor gx#module-context::t 'ns))
    (define gx#&module-context-path
      (make-struct-slot-unchecked-accessor gx#module-context::t 'path))
    (define gx#&module-context-import
      (make-struct-slot-unchecked-accessor gx#module-context::t 'import))
    (define gx#&module-context-export
      (make-struct-slot-unchecked-accessor gx#module-context::t 'export))
    (define gx#&module-context-e
      (make-struct-slot-unchecked-accessor gx#module-context::t 'e))
    (define gx#&module-context-code
      (make-struct-slot-unchecked-accessor gx#module-context::t 'code))
    (define gx#&module-context-super
      (make-struct-slot-unchecked-accessor gx#module-context::t 'super))
    (define gx#&module-context-up
      (make-struct-slot-unchecked-accessor gx#module-context::t 'up))
    (define gx#&module-context-down
      (make-struct-slot-unchecked-accessor gx#module-context::t 'down))
    (define gx#&module-context-id
      (make-struct-slot-unchecked-accessor gx#module-context::t 'id))
    (define gx#&module-context-table
      (make-struct-slot-unchecked-accessor gx#module-context::t 'table))
    (define gx#&module-context-ns-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'ns))
    (define gx#&module-context-path-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'path))
    (define gx#&module-context-import-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'import))
    (define gx#&module-context-export-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'export))
    (define gx#&module-context-e-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'e))
    (define gx#&module-context-code-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'code))
    (define gx#&module-context-super-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'super))
    (define gx#&module-context-up-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'up))
    (define gx#&module-context-down-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'down))
    (define gx#&module-context-id-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'id))
    (define gx#&module-context-table-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'table))
    (define gx#prelude-context::t
      (make-struct-type
       'gx#prelude-context::t
       'prelude-context
       gx#top-context::t
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (make-struct-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _$args143334_
        (apply make-struct-instance gx#prelude-context::t _$args143334_)))
    (define gx#prelude-context-path
      (make-struct-slot-accessor gx#prelude-context::t 'path))
    (define gx#prelude-context-import
      (make-struct-slot-accessor gx#prelude-context::t 'import))
    (define gx#prelude-context-e
      (make-struct-slot-accessor gx#prelude-context::t 'e))
    (define gx#prelude-context-super
      (make-struct-slot-accessor gx#prelude-context::t 'super))
    (define gx#prelude-context-up
      (make-struct-slot-accessor gx#prelude-context::t 'up))
    (define gx#prelude-context-down
      (make-struct-slot-accessor gx#prelude-context::t 'down))
    (define gx#prelude-context-id
      (make-struct-slot-accessor gx#prelude-context::t 'id))
    (define gx#prelude-context-table
      (make-struct-slot-accessor gx#prelude-context::t 'table))
    (define gx#prelude-context-path-set!
      (make-struct-slot-mutator gx#prelude-context::t 'path))
    (define gx#prelude-context-import-set!
      (make-struct-slot-mutator gx#prelude-context::t 'import))
    (define gx#prelude-context-e-set!
      (make-struct-slot-mutator gx#prelude-context::t 'e))
    (define gx#prelude-context-super-set!
      (make-struct-slot-mutator gx#prelude-context::t 'super))
    (define gx#prelude-context-up-set!
      (make-struct-slot-mutator gx#prelude-context::t 'up))
    (define gx#prelude-context-down-set!
      (make-struct-slot-mutator gx#prelude-context::t 'down))
    (define gx#prelude-context-id-set!
      (make-struct-slot-mutator gx#prelude-context::t 'id))
    (define gx#prelude-context-table-set!
      (make-struct-slot-mutator gx#prelude-context::t 'table))
    (define gx#&prelude-context-path
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'path))
    (define gx#&prelude-context-import
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'import))
    (define gx#&prelude-context-e
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'e))
    (define gx#&prelude-context-super
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'super))
    (define gx#&prelude-context-up
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'up))
    (define gx#&prelude-context-down
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'down))
    (define gx#&prelude-context-id
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'id))
    (define gx#&prelude-context-table
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'table))
    (define gx#&prelude-context-path-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'path))
    (define gx#&prelude-context-import-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'import))
    (define gx#&prelude-context-e-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'e))
    (define gx#&prelude-context-super-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'super))
    (define gx#&prelude-context-up-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'up))
    (define gx#&prelude-context-down-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'down))
    (define gx#&prelude-context-id-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'id))
    (define gx#&prelude-context-table-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'table))
    (define gx#local-context::t
      (make-struct-type
       'gx#local-context::t
       'local-context
       gx#phi-context::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (make-struct-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _$args143331_
        (apply make-struct-instance gx#local-context::t _$args143331_)))
    (define gx#local-context-super
      (make-struct-slot-accessor gx#local-context::t 'super))
    (define gx#local-context-up
      (make-struct-slot-accessor gx#local-context::t 'up))
    (define gx#local-context-down
      (make-struct-slot-accessor gx#local-context::t 'down))
    (define gx#local-context-id
      (make-struct-slot-accessor gx#local-context::t 'id))
    (define gx#local-context-table
      (make-struct-slot-accessor gx#local-context::t 'table))
    (define gx#local-context-super-set!
      (make-struct-slot-mutator gx#local-context::t 'super))
    (define gx#local-context-up-set!
      (make-struct-slot-mutator gx#local-context::t 'up))
    (define gx#local-context-down-set!
      (make-struct-slot-mutator gx#local-context::t 'down))
    (define gx#local-context-id-set!
      (make-struct-slot-mutator gx#local-context::t 'id))
    (define gx#local-context-table-set!
      (make-struct-slot-mutator gx#local-context::t 'table))
    (define gx#&local-context-super
      (make-struct-slot-unchecked-accessor gx#local-context::t 'super))
    (define gx#&local-context-up
      (make-struct-slot-unchecked-accessor gx#local-context::t 'up))
    (define gx#&local-context-down
      (make-struct-slot-unchecked-accessor gx#local-context::t 'down))
    (define gx#&local-context-id
      (make-struct-slot-unchecked-accessor gx#local-context::t 'id))
    (define gx#&local-context-table
      (make-struct-slot-unchecked-accessor gx#local-context::t 'table))
    (define gx#&local-context-super-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'super))
    (define gx#&local-context-up-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'up))
    (define gx#&local-context-down-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'down))
    (define gx#&local-context-id-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'id))
    (define gx#&local-context-table-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'table))
    (define gx#phi-context:::init!__%
      (lambda (_self143315_ _id143316_ _super143317_)
        (if (##fx< '3 (##structure-length _self143315_))
            (begin
              (##unchecked-structure-set!
               _self143315_
               _id143316_
               '1
               (##structure-type _self143315_)
               '#f)
              (##unchecked-structure-set!
               _self143315_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143315_)
               '#f)
              (##unchecked-structure-set!
               _self143315_
               _super143317_
               '3
               (##structure-type _self143315_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143315_
                   '3
                   (##vector-length _self143315_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143322_ _id143323_)
        (let ((_super143325_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143322_ _id143323_ _super143325_))))
    (define gx#phi-context:::init!
      (lambda _g147860_
        (let ((_g147859_ (##length _g147860_)))
          (cond ((##fx= _g147859_ 2)
                 (apply (lambda (_self143322_ _id143323_)
                          (gx#phi-context:::init!__0 _self143322_ _id143323_))
                        _g147860_))
                ((##fx= _g147859_ 3)
                 (apply (lambda (_self143327_ _id143328_ _super143329_)
                          (gx#phi-context:::init!__%
                           _self143327_
                           _id143328_
                           _super143329_))
                        _g147860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g147860_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143179_ _super143180_)
        (if (##fx< '3 (##structure-length _self143179_))
            (begin
              (##unchecked-structure-set!
               _self143179_
               (gensym 'L)
               '1
               (##structure-type _self143179_)
               '#f)
              (##unchecked-structure-set!
               _self143179_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143179_)
               '#f)
              (##unchecked-structure-set!
               _self143179_
               _super143180_
               '3
               (##structure-type _self143179_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143179_
                   '3
                   (##vector-length _self143179_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143185_)
        (let ((_super143187_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143185_ _super143187_))))
    (define gx#local-context:::init!
      (lambda _g147862_
        (let ((_g147861_ (##length _g147862_)))
          (cond ((##fx= _g147861_ 1)
                 (apply (lambda (_self143185_)
                          (gx#local-context:::init!__0 _self143185_))
                        _g147862_))
                ((##fx= _g147861_ 2)
                 (apply (lambda (_self143189_ _super143190_)
                          (gx#local-context:::init!__%
                           _self143189_
                           _super143190_))
                        _g147862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g147862_))))))
    (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-struct-type
       'gx#binding::t
       'binding
       '#f
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (make-struct-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _$args143053_
        (apply make-struct-instance gx#binding::t _$args143053_)))
    (define gx#binding-id (make-struct-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (make-struct-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (make-struct-slot-accessor gx#binding::t 'phi))
    (define gx#binding-id-set! (make-struct-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (make-struct-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (make-struct-slot-mutator gx#binding::t 'phi))
    (define gx#&binding-id
      (make-struct-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (make-struct-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (make-struct-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-id-set!
      (make-struct-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (make-struct-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#runtime-binding::t
      (make-struct-type
       'gx#runtime-binding::t
       'runtime-binding
       gx#binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (make-struct-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _$args143050_
        (apply make-struct-instance gx#runtime-binding::t _$args143050_)))
    (define gx#runtime-binding-id
      (make-struct-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (make-struct-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (make-struct-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-id-set!
      (make-struct-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (make-struct-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (make-struct-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id
      (make-struct-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (make-struct-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (make-struct-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#local-binding::t
      (make-struct-type
       'gx#local-binding::t
       'local-binding
       gx#runtime-binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (make-struct-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _$args143047_
        (apply make-struct-instance gx#local-binding::t _$args143047_)))
    (define gx#local-binding-id
      (make-struct-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (make-struct-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (make-struct-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-id-set!
      (make-struct-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (make-struct-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (make-struct-slot-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-id
      (make-struct-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (make-struct-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (make-struct-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#top-binding::t
      (make-struct-type
       'gx#top-binding::t
       'top-binding
       gx#runtime-binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (make-struct-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _$args143044_
        (apply make-struct-instance gx#top-binding::t _$args143044_)))
    (define gx#top-binding-id
      (make-struct-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (make-struct-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (make-struct-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-id-set!
      (make-struct-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (make-struct-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (make-struct-slot-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-id
      (make-struct-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (make-struct-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (make-struct-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#module-binding::t
      (make-struct-type
       'gx#module-binding::t
       'module-binding
       gx#top-binding::t
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (make-struct-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _$args143041_
        (apply make-struct-instance gx#module-binding::t _$args143041_)))
    (define gx#module-binding-context
      (make-struct-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-id
      (make-struct-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (make-struct-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (make-struct-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-context-set!
      (make-struct-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-id-set!
      (make-struct-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (make-struct-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (make-struct-slot-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-context
      (make-struct-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-id
      (make-struct-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (make-struct-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (make-struct-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-context-set!
      (make-struct-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#extern-binding::t
      (make-struct-type
       'gx#extern-binding::t
       'extern-binding
       gx#top-binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (make-struct-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _$args143038_
        (apply make-struct-instance gx#extern-binding::t _$args143038_)))
    (define gx#extern-binding-id
      (make-struct-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (make-struct-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (make-struct-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-id-set!
      (make-struct-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (make-struct-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (make-struct-slot-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id
      (make-struct-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (make-struct-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (make-struct-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#syntax-binding::t
      (make-struct-type
       'gx#syntax-binding::t
       'syntax-binding
       gx#binding::t
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (make-struct-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _$args143035_
        (apply make-struct-instance gx#syntax-binding::t _$args143035_)))
    (define gx#syntax-binding-e
      (make-struct-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (make-struct-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (make-struct-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (make-struct-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-e-set!
      (make-struct-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (make-struct-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (make-struct-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (make-struct-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e
      (make-struct-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (make-struct-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (make-struct-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (make-struct-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e-set!
      (make-struct-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#import-binding::t
      (make-struct-type
       'gx#import-binding::t
       'import-binding
       gx#binding::t
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (make-struct-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _$args143032_
        (apply make-struct-instance gx#import-binding::t _$args143032_)))
    (define gx#import-binding-e
      (make-struct-slot-accessor gx#import-binding::t 'e))
    (define gx#import-binding-context
      (make-struct-slot-accessor gx#import-binding::t 'context))
    (define gx#import-binding-weak?
      (make-struct-slot-accessor gx#import-binding::t 'weak?))
    (define gx#import-binding-id
      (make-struct-slot-accessor gx#import-binding::t 'id))
    (define gx#import-binding-key
      (make-struct-slot-accessor gx#import-binding::t 'key))
    (define gx#import-binding-phi
      (make-struct-slot-accessor gx#import-binding::t 'phi))
    (define gx#import-binding-e-set!
      (make-struct-slot-mutator gx#import-binding::t 'e))
    (define gx#import-binding-context-set!
      (make-struct-slot-mutator gx#import-binding::t 'context))
    (define gx#import-binding-weak?-set!
      (make-struct-slot-mutator gx#import-binding::t 'weak?))
    (define gx#import-binding-id-set!
      (make-struct-slot-mutator gx#import-binding::t 'id))
    (define gx#import-binding-key-set!
      (make-struct-slot-mutator gx#import-binding::t 'key))
    (define gx#import-binding-phi-set!
      (make-struct-slot-mutator gx#import-binding::t 'phi))
    (define gx#&import-binding-e
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'e))
    (define gx#&import-binding-context
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'context))
    (define gx#&import-binding-weak?
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'weak?))
    (define gx#&import-binding-id
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'id))
    (define gx#&import-binding-key
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'key))
    (define gx#&import-binding-phi
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'phi))
    (define gx#&import-binding-e-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'e))
    (define gx#&import-binding-context-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'context))
    (define gx#&import-binding-weak?-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'weak?))
    (define gx#&import-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'id))
    (define gx#&import-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'key))
    (define gx#&import-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'phi))
    (define gx#alias-binding::t
      (make-struct-type
       'gx#alias-binding::t
       'alias-binding
       gx#binding::t
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (make-struct-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _$args143029_
        (apply make-struct-instance gx#alias-binding::t _$args143029_)))
    (define gx#alias-binding-e
      (make-struct-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (make-struct-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (make-struct-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (make-struct-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-e-set!
      (make-struct-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (make-struct-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (make-struct-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (make-struct-slot-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e
      (make-struct-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (make-struct-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (make-struct-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (make-struct-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e-set!
      (make-struct-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#expander::t
      (make-struct-type
       'gx#expander::t
       'expander
       '#f
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (make-struct-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _$args143026_
        (apply make-struct-instance gx#expander::t _$args143026_)))
    (define gx#expander-e (make-struct-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (make-struct-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (make-struct-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (make-struct-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (make-struct-type
       'gx#core-expander::t
       'core-expander
       gx#expander::t
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (make-struct-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _$args143023_
        (apply make-struct-instance gx#core-expander::t _$args143023_)))
    (define gx#core-expander-id
      (make-struct-slot-accessor gx#core-expander::t 'id))
    (define gx#core-expander-compile-top
      (make-struct-slot-accessor gx#core-expander::t 'compile-top))
    (define gx#core-expander-e
      (make-struct-slot-accessor gx#core-expander::t 'e))
    (define gx#core-expander-id-set!
      (make-struct-slot-mutator gx#core-expander::t 'id))
    (define gx#core-expander-compile-top-set!
      (make-struct-slot-mutator gx#core-expander::t 'compile-top))
    (define gx#core-expander-e-set!
      (make-struct-slot-mutator gx#core-expander::t 'e))
    (define gx#&core-expander-id
      (make-struct-slot-unchecked-accessor gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top
      (make-struct-slot-unchecked-accessor gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e
      (make-struct-slot-unchecked-accessor gx#core-expander::t 'e))
    (define gx#&core-expander-id-set!
      (make-struct-slot-unchecked-mutator gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#core-expander::t 'e))
    (define gx#expression-form::t
      (make-struct-type
       'gx#expression-form::t
       'expression-form
       gx#core-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (make-struct-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _$args143020_
        (apply make-struct-instance gx#expression-form::t _$args143020_)))
    (define gx#expression-form-id
      (make-struct-slot-accessor gx#expression-form::t 'id))
    (define gx#expression-form-compile-top
      (make-struct-slot-accessor gx#expression-form::t 'compile-top))
    (define gx#expression-form-e
      (make-struct-slot-accessor gx#expression-form::t 'e))
    (define gx#expression-form-id-set!
      (make-struct-slot-mutator gx#expression-form::t 'id))
    (define gx#expression-form-compile-top-set!
      (make-struct-slot-mutator gx#expression-form::t 'compile-top))
    (define gx#expression-form-e-set!
      (make-struct-slot-mutator gx#expression-form::t 'e))
    (define gx#&expression-form-id
      (make-struct-slot-unchecked-accessor gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top
      (make-struct-slot-unchecked-accessor gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e
      (make-struct-slot-unchecked-accessor gx#expression-form::t 'e))
    (define gx#&expression-form-id-set!
      (make-struct-slot-unchecked-mutator gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e-set!
      (make-struct-slot-unchecked-mutator gx#expression-form::t 'e))
    (define gx#special-form::t
      (make-struct-type
       'gx#special-form::t
       'special-form
       gx#core-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (make-struct-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _$args143017_
        (apply make-struct-instance gx#special-form::t _$args143017_)))
    (define gx#special-form-id
      (make-struct-slot-accessor gx#special-form::t 'id))
    (define gx#special-form-compile-top
      (make-struct-slot-accessor gx#special-form::t 'compile-top))
    (define gx#special-form-e
      (make-struct-slot-accessor gx#special-form::t 'e))
    (define gx#special-form-id-set!
      (make-struct-slot-mutator gx#special-form::t 'id))
    (define gx#special-form-compile-top-set!
      (make-struct-slot-mutator gx#special-form::t 'compile-top))
    (define gx#special-form-e-set!
      (make-struct-slot-mutator gx#special-form::t 'e))
    (define gx#&special-form-id
      (make-struct-slot-unchecked-accessor gx#special-form::t 'id))
    (define gx#&special-form-compile-top
      (make-struct-slot-unchecked-accessor gx#special-form::t 'compile-top))
    (define gx#&special-form-e
      (make-struct-slot-unchecked-accessor gx#special-form::t 'e))
    (define gx#&special-form-id-set!
      (make-struct-slot-unchecked-mutator gx#special-form::t 'id))
    (define gx#&special-form-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#special-form::t 'compile-top))
    (define gx#&special-form-e-set!
      (make-struct-slot-unchecked-mutator gx#special-form::t 'e))
    (define gx#definition-form::t
      (make-struct-type
       'gx#definition-form::t
       'definition-form
       gx#special-form::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (make-struct-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _$args143014_
        (apply make-struct-instance gx#definition-form::t _$args143014_)))
    (define gx#definition-form-id
      (make-struct-slot-accessor gx#definition-form::t 'id))
    (define gx#definition-form-compile-top
      (make-struct-slot-accessor gx#definition-form::t 'compile-top))
    (define gx#definition-form-e
      (make-struct-slot-accessor gx#definition-form::t 'e))
    (define gx#definition-form-id-set!
      (make-struct-slot-mutator gx#definition-form::t 'id))
    (define gx#definition-form-compile-top-set!
      (make-struct-slot-mutator gx#definition-form::t 'compile-top))
    (define gx#definition-form-e-set!
      (make-struct-slot-mutator gx#definition-form::t 'e))
    (define gx#&definition-form-id
      (make-struct-slot-unchecked-accessor gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top
      (make-struct-slot-unchecked-accessor gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e
      (make-struct-slot-unchecked-accessor gx#definition-form::t 'e))
    (define gx#&definition-form-id-set!
      (make-struct-slot-unchecked-mutator gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e-set!
      (make-struct-slot-unchecked-mutator gx#definition-form::t 'e))
    (define gx#top-special-form::t
      (make-struct-type
       'gx#top-special-form::t
       'top-special-form
       gx#special-form::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (make-struct-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _$args143011_
        (apply make-struct-instance gx#top-special-form::t _$args143011_)))
    (define gx#top-special-form-id
      (make-struct-slot-accessor gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top
      (make-struct-slot-accessor gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e
      (make-struct-slot-accessor gx#top-special-form::t 'e))
    (define gx#top-special-form-id-set!
      (make-struct-slot-mutator gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top-set!
      (make-struct-slot-mutator gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e-set!
      (make-struct-slot-mutator gx#top-special-form::t 'e))
    (define gx#&top-special-form-id
      (make-struct-slot-unchecked-accessor gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top
      (make-struct-slot-unchecked-accessor
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e
      (make-struct-slot-unchecked-accessor gx#top-special-form::t 'e))
    (define gx#&top-special-form-id-set!
      (make-struct-slot-unchecked-mutator gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#top-special-form::t 'compile-top))
    (define gx#&top-special-form-e-set!
      (make-struct-slot-unchecked-mutator gx#top-special-form::t 'e))
    (define gx#module-special-form::t
      (make-struct-type
       'gx#module-special-form::t
       'module-special-form
       gx#top-special-form::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (make-struct-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _$args143008_
        (apply make-struct-instance gx#module-special-form::t _$args143008_)))
    (define gx#module-special-form-id
      (make-struct-slot-accessor gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top
      (make-struct-slot-accessor gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e
      (make-struct-slot-accessor gx#module-special-form::t 'e))
    (define gx#module-special-form-id-set!
      (make-struct-slot-mutator gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top-set!
      (make-struct-slot-mutator gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e-set!
      (make-struct-slot-mutator gx#module-special-form::t 'e))
    (define gx#&module-special-form-id
      (make-struct-slot-unchecked-accessor gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top
      (make-struct-slot-unchecked-accessor
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e
      (make-struct-slot-unchecked-accessor gx#module-special-form::t 'e))
    (define gx#&module-special-form-id-set!
      (make-struct-slot-unchecked-mutator gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top-set!
      (make-struct-slot-unchecked-mutator
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e-set!
      (make-struct-slot-unchecked-mutator gx#module-special-form::t 'e))
    (define gx#feature-expander::t
      (make-struct-type
       'gx#feature-expander::t
       'feature-expander
       gx#expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (make-struct-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _$args143005_
        (apply make-struct-instance gx#feature-expander::t _$args143005_)))
    (define gx#feature-expander-e
      (make-struct-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (make-struct-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (make-struct-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (make-struct-type
       'gx#private-feature-expander::t
       'private-feature-expander
       gx#feature-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (make-struct-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _$args143002_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args143002_)))
    (define gx#private-feature-expander-e
      (make-struct-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (make-struct-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (make-struct-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (make-struct-type
       'gx#reserved-expander::t
       'reserved-expander
       gx#expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (make-struct-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _$args142999_
        (apply make-struct-instance gx#reserved-expander::t _$args142999_)))
    (define gx#reserved-expander-e
      (make-struct-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (make-struct-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (make-struct-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (make-struct-type
       'gx#core-macro::t
       'macro-expander
       gx#expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (make-struct-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _$args142996_
        (apply make-struct-instance gx#macro-expander::t _$args142996_)))
    (define gx#macro-expander-e
      (make-struct-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (make-struct-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (make-struct-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (make-struct-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       gx#macro-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (make-struct-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _$args142993_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args142993_)))
    (define gx#rename-macro-expander-e
      (make-struct-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (make-struct-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (make-struct-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (make-struct-type
       'gx#macro-expander::t
       'user-expander
       gx#macro-expander::t
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (make-struct-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _$args142990_
        (apply make-struct-instance gx#user-expander::t _$args142990_)))
    (define gx#user-expander-context
      (make-struct-slot-accessor gx#user-expander::t 'context))
    (define gx#user-expander-phi
      (make-struct-slot-accessor gx#user-expander::t 'phi))
    (define gx#user-expander-e
      (make-struct-slot-accessor gx#user-expander::t 'e))
    (define gx#user-expander-context-set!
      (make-struct-slot-mutator gx#user-expander::t 'context))
    (define gx#user-expander-phi-set!
      (make-struct-slot-mutator gx#user-expander::t 'phi))
    (define gx#user-expander-e-set!
      (make-struct-slot-mutator gx#user-expander::t 'e))
    (define gx#&user-expander-context
      (make-struct-slot-unchecked-accessor gx#user-expander::t 'context))
    (define gx#&user-expander-phi
      (make-struct-slot-unchecked-accessor gx#user-expander::t 'phi))
    (define gx#&user-expander-e
      (make-struct-slot-unchecked-accessor gx#user-expander::t 'e))
    (define gx#&user-expander-context-set!
      (make-struct-slot-unchecked-mutator gx#user-expander::t 'context))
    (define gx#&user-expander-phi-set!
      (make-struct-slot-unchecked-mutator gx#user-expander::t 'phi))
    (define gx#&user-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#user-expander::t 'e))
    (define gx#expander-mark::t
      (make-struct-type
       'gx#expander-mark::t
       'expander-mark
       '#f
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (make-struct-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _$args142987_
        (apply make-struct-instance gx#expander-mark::t _$args142987_)))
    (define gx#expander-mark-subst
      (make-struct-slot-accessor gx#expander-mark::t 'subst))
    (define gx#expander-mark-context
      (make-struct-slot-accessor gx#expander-mark::t 'context))
    (define gx#expander-mark-phi
      (make-struct-slot-accessor gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace
      (make-struct-slot-accessor gx#expander-mark::t 'trace))
    (define gx#expander-mark-subst-set!
      (make-struct-slot-mutator gx#expander-mark::t 'subst))
    (define gx#expander-mark-context-set!
      (make-struct-slot-mutator gx#expander-mark::t 'context))
    (define gx#expander-mark-phi-set!
      (make-struct-slot-mutator gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace-set!
      (make-struct-slot-mutator gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst
      (make-struct-slot-unchecked-accessor gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context
      (make-struct-slot-unchecked-accessor gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi
      (make-struct-slot-unchecked-accessor gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace
      (make-struct-slot-unchecked-accessor gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst-set!
      (make-struct-slot-unchecked-mutator gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context-set!
      (make-struct-slot-unchecked-mutator gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi-set!
      (make-struct-slot-unchecked-mutator gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace-set!
      (make-struct-slot-unchecked-mutator gx#expander-mark::t 'trace))
    (define gx#raise-syntax-error
      (lambda (_ctx142972_ _message142973_ _stx142974_ . _details142975_)
        (let ((_ctx142985_
               (let ((_$e142977_ _ctx142972_))
                 (if _$e142977_
                     _$e142977_
                     (let ((_$e142980_ (gx#core-context-top__0)))
                       (if _$e142980_
                           ((lambda (_ctx142983_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx142983_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e142980_)
                           '#f))))))
          (raise (make-syntax-error
                  _message142973_
                  (cons _stx142974_ _details142975_)
                  _ctx142985_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx142959_ _expression?142960_)
        (gx#eval-syntax* (gx#core-expand__% _stx142959_ _expression?142960_))))
    (define gx#eval-syntax__0
      (lambda (_stx142965_)
        (let ((_expression?142967_ '#f))
          (gx#eval-syntax__% _stx142965_ _expression?142967_))))
    (define gx#eval-syntax
      (lambda _g147864_
        (let ((_g147863_ (##length _g147864_)))
          (cond ((##fx= _g147863_ 1)
                 (apply (lambda (_stx142965_) (gx#eval-syntax__0 _stx142965_))
                        _g147864_))
                ((##fx= _g147863_ 2)
                 (apply (lambda (_stx142969_ _expression?142970_)
                          (gx#eval-syntax__% _stx142969_ _expression?142970_))
                        _g147864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g147864_))))))
    (define gx#eval-syntax*
      (lambda (_stx142956_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx142956_))))
    (define gx#core-expand__%
      (lambda (_stx142943_ _expression?142944_)
        (if _expression?142944_
            (gx#core-expand-expression _stx142943_)
            (gx#core-expand-top _stx142943_))))
    (define gx#core-expand__0
      (lambda (_stx142949_)
        (let ((_expression?142951_ '#f))
          (gx#core-expand__% _stx142949_ _expression?142951_))))
    (define gx#core-expand
      (lambda _g147866_
        (let ((_g147865_ (##length _g147866_)))
          (cond ((##fx= _g147865_ 1)
                 (apply (lambda (_stx142949_) (gx#core-expand__0 _stx142949_))
                        _g147866_))
                ((##fx= _g147865_ 2)
                 (apply (lambda (_stx142953_ _expression?142954_)
                          (gx#core-expand__% _stx142953_ _expression?142954_))
                        _g147866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g147866_))))))
    (define gx#core-expand-top
      (lambda (_stx142910_)
        (let* ((_stx142912_ (gx#core-expand*__0 _stx142910_))
               (_e142913142920_ _stx142912_)
               (_E142915142924_
                (lambda () (gx#core-expand-expression _stx142912_)))
               (_E142914142938_
                (lambda ()
                  (if (gx#stx-pair? _e142913142920_)
                      (let ((_e142916142928_ (gx#syntax-e _e142913142920_)))
                        (let ((_hd142917142931_ (##car _e142916142928_))
                              (_tl142918142933_ (##cdr _e142916142928_)))
                          (let ((_form142936_ _hd142917142931_))
                            (if (gx#core-bound-identifier?__0 _form142936_)
                                _stx142912_
                                (_E142915142924_)))))
                      (_E142915142924_)))))
          (_E142914142938_))))
    (define gx#core-expand-expression
      (lambda (_stx142857_)
        (letrec ((_sealed-expression?142859_
                  (lambda (_hd142880_)
                    (if (gx#sealed-syntax? _hd142880_)
                        (let* ((_e142881142888_ _hd142880_)
                               (_E142883142892_ (lambda () '#f))
                               (_E142882142906_
                                (lambda ()
                                  (if (gx#stx-pair? _e142881142888_)
                                      (let ((_e142884142896_
                                             (gx#syntax-e _e142881142888_)))
                                        (let ((_hd142885142899_
                                               (##car _e142884142896_))
                                              (_tl142886142901_
                                               (##cdr _e142884142896_)))
                                          (let ((_form142904_
                                                 _hd142885142899_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form142904_
                                                 gx#expression-form-binding?)
                                                (_E142883142892_)))))
                                      (_E142883142892_)))))
                          (_E142882142906_))
                        '#f)))
                 (_illegal-expression142860_
                  (lambda (_hd142878_ . _g147867_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx142857_
                     _hd142878_)))
                 (_expand-e142861_
                  (lambda (_form142873_ _hd142874_)
                    (let ((_bind142876_
                           (if (##structure-instance-of?
                                _form142873_
                                'gx#binding::t)
                               _form142873_
                               (gx#resolve-identifier__0 _form142873_))))
                      (if (gx#core-expander-binding? _bind142876_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind142876_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd142874_
                            (gx#stx-source _stx142857_)))
                          (if (##structure-direct-instance-of?
                               _bind142876_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind142876_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd142874_
                                 (gx#stx-source _stx142857_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx142857_
                               _form142873_)))))))
          (let ((_hd142863_ (gx#core-expand-head _stx142857_)))
            (if (_sealed-expression?142859_ _hd142863_)
                _hd142863_
                (if (gx#stx-pair? _hd142863_)
                    (let* ((_form142865_ (gx#stx-car _hd142863_))
                           (_bind142867_
                            (if (gx#identifier? _form142865_)
                                (gx#resolve-identifier__0 _form142865_)
                                '#f)))
                      (if (or (not _bind142867_)
                              (not (gx#core-expander-binding? _bind142867_)))
                          (_expand-e142861_ '%%app (cons '%%app _hd142863_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind142867_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd142863_
                               _illegal-expression142860_)
                              (if (gx#expression-form-binding? _bind142867_)
                                  (_expand-e142861_ _bind142867_ _hd142863_)
                                  (if (gx#direct-special-form-binding?
                                       _bind142867_)
                                      (gx#core-expand-expression
                                       (_expand-e142861_
                                        _bind142867_
                                        _hd142863_))
                                      (_illegal-expression142860_
                                       _hd142863_))))))
                    (if (gx#core-bound-identifier?__0 _hd142863_)
                        (_illegal-expression142860_ _hd142863_)
                        (if (gx#identifier? _hd142863_)
                            (_expand-e142861_
                             '%%ref
                             (cons '%%ref (cons _hd142863_ '())))
                            (if (gx#stx-datum? _hd142863_)
                                (_expand-e142861_
                                 '%#quote
                                 (cons '%#quote (cons _hd142863_ '())))
                                (_illegal-expression142860_
                                 _hd142863_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx142852_)
        (call-with-parameters
         (lambda ()
           (let ((_stx142855_ (gx#core-expand-expression _stx142852_)))
             (values _stx142855_ (gx#eval-syntax* _stx142855_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx142833_ _stop?142834_)
        (let _lp142836_ ((_stx142838_ _stx142833_))
          (if (_stop?142834_ _stx142838_)
              _stx142838_
              (let ((_rstx142840_ (gx#core-expand1 _stx142838_)))
                (if (eq? _stx142838_ _rstx142840_)
                    _stx142838_
                    (_lp142836_ _rstx142840_)))))))
    (define gx#core-expand*__0
      (lambda (_stx142845_)
        (let ((_stop?142847_ false))
          (gx#core-expand*__% _stx142845_ _stop?142847_))))
    (define gx#core-expand*
      (lambda _g147869_
        (let ((_g147868_ (##length _g147869_)))
          (cond ((##fx= _g147868_ 1)
                 (apply (lambda (_stx142845_) (gx#core-expand*__0 _stx142845_))
                        _g147869_))
                ((##fx= _g147868_ 2)
                 (apply (lambda (_stx142849_ _stop?142850_)
                          (gx#core-expand*__% _stx142849_ _stop?142850_))
                        _g147869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g147869_))))))
    (define gx#core-expand1
      (lambda (_stx142789_)
        (letrec ((_step142791_
                  (lambda (_hd142828_)
                    (let ((_bind142830_ (gx#resolve-identifier__0 _hd142828_)))
                      (if (##structure-instance-of?
                           _bind142830_
                           'gx#runtime-binding::t)
                          _stx142789_
                          (if (##structure-direct-instance-of?
                               _bind142830_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind142830_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx142789_)
                              (if (not _bind142830_)
                                  _stx142789_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx142789_))))))))
          (let* ((_e142792142800_ _stx142789_)
                 (_E142798142804_ (lambda () _stx142789_))
                 (_E142794142810_
                  (lambda ()
                    (let ((_hd142808_ _e142792142800_))
                      (if (gx#identifier? _hd142808_)
                          (_step142791_ _hd142808_)
                          (_E142798142804_)))))
                 (_E142793142824_
                  (lambda ()
                    (if (gx#stx-pair? _e142792142800_)
                        (let ((_e142795142814_ (gx#syntax-e _e142792142800_)))
                          (let ((_hd142796142817_ (##car _e142795142814_))
                                (_tl142797142819_ (##cdr _e142795142814_)))
                            (let ((_hd142822_ _hd142796142817_))
                              (if (gx#identifier? _hd142822_)
                                  (_step142791_ _hd142822_)
                                  (_E142794142810_)))))
                        (_E142794142810_)))))
            (_E142793142824_)))))
    (define gx#core-expand-head
      (lambda (_stx142755_)
        (letrec ((_stop?142757_
                  (lambda (_stx142759_)
                    (let* ((_e142760142767_ _stx142759_)
                           (_E142762142771_ (lambda () '#f))
                           (_E142761142785_
                            (lambda ()
                              (if (gx#stx-pair? _e142760142767_)
                                  (let ((_e142763142775_
                                         (gx#syntax-e _e142760142767_)))
                                    (let ((_hd142764142778_
                                           (##car _e142763142775_))
                                          (_tl142765142780_
                                           (##cdr _e142763142775_)))
                                      (let ((_hd142783_ _hd142764142778_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd142783_)
                                            (_E142762142771_)))))
                                  (_E142762142771_)))))
                      (_E142761142785_)))))
          (gx#core-expand*__% _stx142755_ _stop?142757_))))
    (define gx#core-expand-block__%
      (lambda (_stx142561_
               _expand-special142562_
               _begin-form142563_
               _expand-e142564_)
        (letrec ((_expand-splice142566_
                  (lambda (_hd142729_ _body142730_ _rest142731_ _r142732_)
                    (if (gx#stx-list? _body142730_)
                        (_K142570_
                         (gx#stx-foldr cons _rest142731_ _body142730_)
                         _r142732_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142561_
                         _hd142729_))))
                 (_expand-cond-expand142567_
                  (lambda (_hd142725_ _rest142726_ _r142727_)
                    (_K142570_
                     (cons (gx#core-expand-cond-expand% _hd142725_)
                           _rest142726_)
                     _r142727_)))
                 (_expand-include142568_
                  (lambda (_hd142674_ _rest142675_ _r142676_)
                    (let* ((_e142677142687_ _hd142674_)
                           (_E142679142691_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142677142687_)))
                           (_E142678142721_
                            (lambda ()
                              (if (gx#stx-pair? _e142677142687_)
                                  (let ((_e142680142695_
                                         (gx#syntax-e _e142677142687_)))
                                    (let ((_hd142681142698_
                                           (##car _e142680142695_))
                                          (_tl142682142700_
                                           (##cdr _e142680142695_)))
                                      (if (gx#stx-pair? _tl142682142700_)
                                          (let ((_e142683142703_
                                                 (gx#syntax-e
                                                  _tl142682142700_)))
                                            (let ((_hd142684142706_
                                                   (##car _e142683142703_))
                                                  (_tl142685142708_
                                                   (##cdr _e142683142703_)))
                                              (let ((_path142711_
                                                     _hd142684142706_))
                                                (if (gx#stx-null?
                                                     _tl142685142708_)
                                                    (if (gx#stx-string?
                                                         _path142711_)
                                                        (let* ((_rpath142713_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142711_
                         (gx#stx-source _hd142674_)))
                       (_block142715_
                        (gx#core-expand-include%__% _hd142674_ _rpath142713_))
                       (_rbody142718_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142715_
                            _expand-special142562_
                            '#f
                            _expand-e142564_))
                         gx#current-expander-path
                         (cons _rpath142713_ (gx#current-expander-path)))))
                  (_K142570_
                   _rest142675_
                   (foldr1 cons _r142676_ _rbody142718_)))
                (_E142679142691_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142679142691_)))))
                                          (_E142679142691_))))
                                  (_E142679142691_)))))
                      (_E142678142721_))))
                 (_expand-expression142569_
                  (lambda (_hd142670_ _rest142671_ _r142672_)
                    (_K142570_
                     _rest142671_
                     (cons (_expand-e142564_ _hd142670_) _r142672_))))
                 (_K142570_
                  (lambda (_rest142600_ _r142601_)
                    (let* ((_e142602142609_ _rest142600_)
                           (_E142604142613_
                            (lambda ()
                              (if _begin-form142563_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142563_
                                    (reverse _r142601_))
                                   (gx#stx-source _stx142561_))
                                  _r142601_)))
                           (_E142603142666_
                            (lambda ()
                              (if (gx#stx-pair? _e142602142609_)
                                  (let ((_e142605142617_
                                         (gx#syntax-e _e142602142609_)))
                                    (let ((_hd142606142620_
                                           (##car _e142605142617_))
                                          (_tl142607142622_
                                           (##cdr _e142605142617_)))
                                      (let* ((_hd142625_ _hd142606142620_)
                                             (_rest142627_ _tl142607142622_))
                                        (if '#t
                                            (let* ((_hd142629_
                                                    (gx#core-expand-head
                                                     _hd142625_))
                                                   (_e142630142637_ _hd142629_)
                                                   (_E142632142641_
                                                    (lambda ()
                                                      (_expand-expression142569_
                                                       _hd142629_
                                                       _rest142627_
                                                       _r142601_)))
                                                   (_E142631142662_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142630142637_)
                                                          (let ((_e142633142645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142630142637_)))
                    (let ((_hd142634142648_ (##car _e142633142645_))
                          (_tl142635142650_ (##cdr _e142633142645_)))
                      (let* ((_form142653_ _hd142634142648_)
                             (_body142655_ _tl142635142650_))
                        (if '#t
                            (let ((_bind142657_
                                   (if (gx#identifier? _form142653_)
                                       (gx#resolve-identifier__0 _form142653_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142657_)
                                  (let ((_$e142659_
                                         (##unchecked-structure-ref
                                          _bind142657_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e142659_)
                                        (_expand-splice142566_
                                         _hd142629_
                                         _body142655_
                                         _rest142627_
                                         _r142601_)
                                        (if (eq? '%#cond-expand _$e142659_)
                                            (_expand-cond-expand142567_
                                             _hd142629_
                                             _rest142627_
                                             _r142601_)
                                            (if (eq? '%#include _$e142659_)
                                                (_expand-include142568_
                                                 _hd142629_
                                                 _rest142627_
                                                 _r142601_)
                                                (_expand-special142562_
                                                 _hd142629_
                                                 _K142570_
                                                 _rest142627_
                                                 _r142601_)))))
                                  (_expand-expression142569_
                                   _hd142629_
                                   _rest142627_
                                   _r142601_)))
                            (_E142632142641_)))))
                  (_E142632142641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142631142662_))
                                            (_E142604142613_)))))
                                  (_E142604142613_)))))
                      (_E142603142666_)))))
          (let* ((_e142571142578_ _stx142561_)
                 (_E142573142582_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142571142578_)))
                 (_E142572142596_
                  (lambda ()
                    (if (gx#stx-pair? _e142571142578_)
                        (let ((_e142574142586_ (gx#syntax-e _e142571142578_)))
                          (let ((_hd142575142589_ (##car _e142574142586_))
                                (_tl142576142591_ (##cdr _e142574142586_)))
                            (let ((_body142594_ _tl142576142591_))
                              (if (gx#stx-list? _body142594_)
                                  (_K142570_ _body142594_ '())
                                  (_E142573142582_)))))
                        (_E142573142582_)))))
            (_E142572142596_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142737_ _expand-special142738_)
        (let* ((_begin-form142740_ '%#begin)
               (_expand-e142742_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142737_
           _expand-special142738_
           _begin-form142740_
           _expand-e142742_))))
    (define gx#core-expand-block__1
      (lambda (_stx142744_ _expand-special142745_ _begin-form142746_)
        (let ((_expand-e142748_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142744_
           _expand-special142745_
           _begin-form142746_
           _expand-e142748_))))
    (define gx#core-expand-block
      (lambda _g147871_
        (let ((_g147870_ (##length _g147871_)))
          (cond ((##fx= _g147870_ 2)
                 (apply (lambda (_stx142737_ _expand-special142738_)
                          (gx#core-expand-block__0
                           _stx142737_
                           _expand-special142738_))
                        _g147871_))
                ((##fx= _g147870_ 3)
                 (apply (lambda (_stx142744_
                                 _expand-special142745_
                                 _begin-form142746_)
                          (gx#core-expand-block__1
                           _stx142744_
                           _expand-special142745_
                           _begin-form142746_))
                        _g147871_))
                ((##fx= _g147870_ 4)
                 (apply (lambda (_stx142750_
                                 _expand-special142751_
                                 _begin-form142752_
                                 _expand-e142753_)
                          (gx#core-expand-block__%
                           _stx142750_
                           _expand-special142751_
                           _begin-form142752_
                           _expand-e142753_))
                        _g147871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g147871_))))))
    (define gx#core-expand-block*
      (lambda (_stx142509_ _expand-special142510_)
        (let* ((_g142511142522_
                (gx#core-expand-block__1
                 _stx142509_
                 _expand-special142510_
                 '#f))
               (_E142515142526_
                (lambda () (error '"No clause matching" _g142511142522_))))
          (let ((_K142520142557_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142509_)))
                (_K142517142543_ (lambda (_expr142541_) _expr142541_))
                (_K142516142532_
                 (lambda (_body142530_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142530_))
                    (gx#stx-source _stx142509_)))))
            (let ((_try-match142513142553_
                   (lambda ()
                     (if (##pair? _g142511142522_)
                         (let ((_tl142519142548_ (##cdr _g142511142522_))
                               (_hd142518142546_ (##car _g142511142522_)))
                           (if (##null? _tl142519142548_)
                               (let ((_expr142551_ _hd142518142546_))
                                 (_K142517142543_ _expr142551_))
                               (let ((_body142535_ _g142511142522_))
                                 (_K142516142532_ _body142535_))))
                         (let ((_body142535_ _g142511142522_))
                           (_K142516142532_ _body142535_))))))
              (if (##null? _g142511142522_)
                  (_K142520142557_)
                  (_try-match142513142553_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142337_)
        (letrec ((_satisfied?142339_
                  (lambda (_condition142437_)
                    (let* ((_e142438142453_ _condition142437_)
                           (_E142448142457_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142438142453_)))
                           (_E142441142476_
                            (lambda ()
                              (if (gx#stx-pair? _e142438142453_)
                                  (let ((_e142449142461_
                                         (gx#syntax-e _e142438142453_)))
                                    (let ((_hd142450142464_
                                           (##car _e142449142461_))
                                          (_tl142451142466_
                                           (##cdr _e142449142461_)))
                                      (let* ((_combinator142469_
                                              _hd142450142464_)
                                             (_body142471_ _tl142451142466_))
                                        (if (gx#stx-list? _body142471_)
                                            (let ((_$e142473_
                                                   (gx#stx-e
                                                    _combinator142469_)))
                                              (if (eq? 'not _$e142473_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142339_
                                                        _body142471_))
                                                  (if (eq? 'and _$e142473_)
                                                      (gx#stx-andmap
                                                       _satisfied?142339_
                                                       _body142471_)
                                                      (if (eq? 'or _$e142473_)
                                                          (gx#stx-ormap
                                                           _satisfied?142339_
                                                           _body142471_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142473_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142471_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142337_
                       _combinator142469_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142448142457_)))))
                                  (_E142448142457_))))
                           (_E142440142499_
                            (lambda ()
                              (if (gx#stx-pair? _e142438142453_)
                                  (let ((_e142442142480_
                                         (gx#syntax-e _e142438142453_)))
                                    (let ((_hd142443142483_
                                           (##car _e142442142480_))
                                          (_tl142444142485_
                                           (##cdr _e142442142480_)))
                                      (if (and (gx#identifier?
                                                _hd142443142483_)
                                               (gx#core-identifier=?
                                                _hd142443142483_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142444142485_)
                                              (let ((_e142445142488_
                                                     (gx#syntax-e
                                                      _tl142444142485_)))
                                                (let ((_hd142446142491_
                                                       (##car _e142445142488_))
                                                      (_tl142447142493_
                                                       (##cdr _e142445142488_)))
                                                  (let ((_expr142496_
                                                         _hd142446142491_))
                                                    (if (gx#stx-null?
                                                         _tl142447142493_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142496_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142441142476_))
                (_E142441142476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142441142476_))
                                          (_E142441142476_))))
                                  (_E142441142476_))))
                           (_E142439142505_
                            (lambda ()
                              (let ((_id142503_ _e142438142453_))
                                (if (gx#identifier? _id142503_)
                                    (gx#core-bound-identifier?__%
                                     _id142503_
                                     gx#feature-binding?)
                                    (_E142440142499_))))))
                      (_E142439142505_))))
                 (_loop142340_
                  (lambda (_rest142370_)
                    (let* ((_e142371142379_ _rest142370_)
                           (_E142377142383_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142371142379_)))
                           (_E142373142387_
                            (lambda ()
                              (if (gx#stx-null? _e142371142379_)
                                  (if '#t '() (_E142377142383_))
                                  (_E142377142383_))))
                           (_E142372142433_
                            (lambda ()
                              (if (gx#stx-pair? _e142371142379_)
                                  (let ((_e142374142391_
                                         (gx#syntax-e _e142371142379_)))
                                    (let ((_hd142375142394_
                                           (##car _e142374142391_))
                                          (_tl142376142396_
                                           (##cdr _e142374142391_)))
                                      (let* ((_hd142399_ _hd142375142394_)
                                             (_rest142401_ _tl142376142396_))
                                        (if '#t
                                            (let* ((_e142402142409_ _hd142399_)
                                                   (_E142404142413_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142402142409_)))
                                                   (_E142403142429_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142402142409_)
                                                          (let ((_e142405142417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142402142409_)))
                    (let ((_hd142406142420_ (##car _e142405142417_))
                          (_tl142407142422_ (##cdr _e142405142417_)))
                      (let* ((_condition142425_ _hd142406142420_)
                             (_body142427_ _tl142407142422_))
                        (if '#t
                            (if (gx#stx-eq? _condition142425_ 'else)
                                (if (gx#stx-null? _rest142401_)
                                    _body142427_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142337_
                                     _hd142399_))
                                (if (_satisfied?142339_ _condition142425_)
                                    _body142427_
                                    (_loop142340_ _rest142401_)))
                            (_E142404142413_)))))
                  (_E142404142413_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142403142429_))
                                            (_E142373142387_)))))
                                  (_E142373142387_)))))
                      (_E142372142433_)))))
          (let* ((_e142341142348_ _stx142337_)
                 (_E142343142352_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142341142348_)))
                 (_E142342142366_
                  (lambda ()
                    (if (gx#stx-pair? _e142341142348_)
                        (let ((_e142344142356_ (gx#syntax-e _e142341142348_)))
                          (let ((_hd142345142359_ (##car _e142344142356_))
                                (_tl142346142361_ (##cdr _e142344142356_)))
                            (let ((_clauses142364_ _tl142346142361_))
                              (if (gx#stx-list? _clauses142364_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142340_ _clauses142364_))
                                  (_E142343142352_)))))
                        (_E142343142352_)))))
            (_E142342142366_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142280_ _rpath142281_)
        (let* ((_e142282142292_ _stx142280_)
               (_E142284142296_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142282142292_)))
               (_E142283142323_
                (lambda ()
                  (if (gx#stx-pair? _e142282142292_)
                      (let ((_e142285142300_ (gx#syntax-e _e142282142292_)))
                        (let ((_hd142286142303_ (##car _e142285142300_))
                              (_tl142287142305_ (##cdr _e142285142300_)))
                          (if (gx#stx-pair? _tl142287142305_)
                              (let ((_e142288142308_
                                     (gx#syntax-e _tl142287142305_)))
                                (let ((_hd142289142311_
                                       (##car _e142288142308_))
                                      (_tl142290142313_
                                       (##cdr _e142288142308_)))
                                  (let ((_path142316_ _hd142289142311_))
                                    (if (gx#stx-null? _tl142290142313_)
                                        (if (gx#stx-string? _path142316_)
                                            (let ((_rpath142321_
                                                   (let ((_$e142318_
                                                          _rpath142281_))
                                                     (if _$e142318_
                                                         _$e142318_
                                                         (gx#core-resolve-path__%
                                                          _path142316_
                                                          (gx#stx-source
                                                           _stx142280_))))))
                                              (if (member _rpath142321_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142280_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142321_))
                                                    (gx#stx-source
                                                     _stx142280_)))))
                                            (_E142284142296_))
                                        (_E142284142296_)))))
                              (_E142284142296_))))
                      (_E142284142296_)))))
          (_E142283142323_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142330_)
        (let ((_rpath142332_ '#f))
          (gx#core-expand-include%__% _stx142330_ _rpath142332_))))
    (define gx#core-expand-include%
      (lambda _g147873_
        (let ((_g147872_ (##length _g147873_)))
          (cond ((##fx= _g147872_ 1)
                 (apply (lambda (_stx142330_)
                          (gx#core-expand-include%__0 _stx142330_))
                        _g147873_))
                ((##fx= _g147872_ 2)
                 (apply (lambda (_stx142334_ _rpath142335_)
                          (gx#core-expand-include%__%
                           _stx142334_
                           _rpath142335_))
                        _g147873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g147873_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142249_ _stx142250_ _method142251_)
        (if (procedure? _K142249_)
            (let ((_$e142253_ (gx#stx-source _stx142250_)))
              (if _$e142253_
                  ((lambda (_g142255142257_)
                     (gx#stx-wrap-source
                      (_K142249_ _stx142250_)
                      _g142255142257_))
                   _$e142253_)
                  (_K142249_ _stx142250_)))
            (let ((_$e142260_ (bound-method-ref _K142249_ _method142251_)))
              (if _$e142260_
                  ((lambda (_g142262142264_)
                     (gx#core-apply-expander__%
                      _g142262142264_
                      _stx142250_
                      _method142251_))
                   _$e142260_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142250_
                   _method142251_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142270_ _stx142271_)
        (let ((_method142273_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142270_ _stx142271_ _method142273_))))
    (define gx#core-apply-expander
      (lambda _g147875_
        (let ((_g147874_ (##length _g147875_)))
          (cond ((##fx= _g147874_ 2)
                 (apply (lambda (_K142270_ _stx142271_)
                          (gx#core-apply-expander__0 _K142270_ _stx142271_))
                        _g147875_))
                ((##fx= _g147874_ 3)
                 (apply (lambda (_K142275_ _stx142276_ _method142277_)
                          (gx#core-apply-expander__%
                           _K142275_
                           _stx142276_
                           _method142277_))
                        _g147875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g147875_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142245_ _stx142246_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142246_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142098_ _stx142099_)
        (let* ((_self142100142106_ _self142098_)
               (_E142102142110_
                (lambda () (error '"No clause matching" _self142100142106_)))
               (_K142103142115_
                (lambda (_K142113_)
                  (gx#core-apply-expander__0 _K142113_ _stx142099_))))
          (if (##structure-instance-of? _self142100142106_ 'gx#core-macro::t)
              (let* ((_e142104142118_
                      (##unchecked-structure-ref
                       _self142100142106_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142121_ _e142104142118_))
                (_K142103142115_ _K142121_))
              (_E142102142110_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self141951_ _stx141952_)
        (if (gx#sealed-syntax? _stx141952_)
            _stx141952_
            (let* ((_self141953141959_ _self141951_)
                   (_E141955141963_
                    (lambda ()
                      (error '"No clause matching" _self141953141959_)))
                   (_K141956141968_
                    (lambda (_K141966_)
                      (gx#core-apply-expander__0 _K141966_ _stx141952_))))
              (if (##structure-instance-of?
                   _self141953141959_
                   'gx#core-expander::t)
                  (let* ((_e141957141971_
                          (##unchecked-structure-ref
                           _self141953141959_
                           '1
                           gx#expander::t
                           '#f))
                         (_K141974_ _e141957141971_))
                    (_K141956141968_ _K141974_))
                  (_E141955141963_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self141813_ _stx141814_ _top?141815_)
        (if (_top?141815_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self141813_ _stx141814_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx141814_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self141820_ _stx141821_)
        (let ((_top?141823_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self141820_
           _stx141821_
           _top?141823_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g147877_
        (let ((_g147876_ (##length _g147877_)))
          (cond ((##fx= _g147876_ 2)
                 (apply (lambda (_self141820_ _stx141821_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self141820_
                           _stx141821_))
                        _g147877_))
                ((##fx= _g147876_ 3)
                 (apply (lambda (_self141825_ _stx141826_ _top?141827_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self141825_
                           _stx141826_
                           _top?141827_))
                        _g147877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g147877_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141687_ _stx141688_)
        (gx#top-special-form::apply-macro-expander__%
         _self141687_
         _stx141688_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141512_ _stx141513_)
        (let* ((_self141514141520_ _self141512_)
               (_E141516141524_
                (lambda () (error '"No clause matching" _self141514141520_)))
               (_K141517141557_
                (lambda (_id141527_)
                  (let* ((_e141528141535_ _stx141513_)
                         (_E141530141539_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141528141535_)))
                         (_E141529141553_
                          (lambda ()
                            (if (gx#stx-pair? _e141528141535_)
                                (let ((_e141531141543_
                                       (gx#syntax-e _e141528141535_)))
                                  (let ((_hd141532141546_
                                         (##car _e141531141543_))
                                        (_tl141533141548_
                                         (##cdr _e141531141543_)))
                                    (let ((_body141551_ _tl141533141548_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141527_
                                           _body141551_)
                                          (_E141530141539_)))))
                                (_E141530141539_)))))
                    (_E141529141553_)))))
          (if (##structure-instance-of?
               _self141514141520_
               'gx#rename-macro-expander::t)
              (let* ((_e141518141560_
                      (##unchecked-structure-ref
                       _self141514141520_
                       '1
                       gx#expander::t
                       '#f))
                     (_id141563_ _e141518141560_))
                (_K141517141557_ _id141563_))
              (_E141516141524_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141338_ _stx141339_ _method141340_)
        (let* ((_self141341141349_ _self141338_)
               (_E141343141353_
                (lambda () (error '"No clause matching" _self141341141349_)))
               (_K141344141360_
                (lambda (_phi141356_ _ctx141357_ _K141358_)
                  (gx#core-apply-user-macro
                   _K141358_
                   _stx141339_
                   _ctx141357_
                   _phi141356_
                   _method141340_))))
          (if (##structure-instance-of?
               _self141341141349_
               'gx#macro-expander::t)
              (let* ((_e141345141363_
                      (##unchecked-structure-ref
                       _self141341141349_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141366_ _e141345141363_)
                     (_e141346141368_
                      (##unchecked-structure-ref
                       _self141341141349_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141371_ _e141346141368_)
                     (_e141347141373_
                      (##unchecked-structure-ref
                       _self141341141349_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141376_ _e141347141373_))
                (_K141344141360_ _phi141376_ _ctx141371_ _K141366_))
              (_E141343141353_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141381_ _stx141382_)
        (let ((_method141384_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141381_
           _stx141382_
           _method141384_))))
    (define gx#core-apply-user-expander
      (lambda _g147879_
        (let ((_g147878_ (##length _g147879_)))
          (cond ((##fx= _g147878_ 2)
                 (apply (lambda (_self141381_ _stx141382_)
                          (gx#core-apply-user-expander__0
                           _self141381_
                           _stx141382_))
                        _g147879_))
                ((##fx= _g147878_ 3)
                 (apply (lambda (_self141386_ _stx141387_ _method141388_)
                          (gx#core-apply-user-expander__%
                           _self141386_
                           _stx141387_
                           _method141388_))
                        _g147879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g147879_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141328_ _stx141329_ _ctx141330_ _phi141331_ _method141332_)
        (let ((_mark141334_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141330_
                _phi141331_
                _stx141329_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141328_
               (gx#stx-apply-mark _stx141329_ _mark141334_)
               _method141332_)
              _mark141334_))
           gx#current-expander-marks
           (cons _mark141334_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141180_ _phi141181_ _ctx141182_)
        (let _lp141184_ ((_bind141186_
                          (gx#core-resolve-identifier__%
                           _stx141180_
                           _phi141181_
                           _ctx141182_)))
          (if (##structure-direct-instance-of?
               _bind141186_
               'gx#import-binding::t)
              (_lp141184_
               (##unchecked-structure-ref
                _bind141186_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141186_
                   'gx#alias-binding::t)
                  (_lp141184_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141186_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141181_
                    _ctx141182_))
                  _bind141186_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141191_)
        (let* ((_phi141193_ (gx#current-expander-phi))
               (_ctx141195_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141191_ _phi141193_ _ctx141195_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141197_ _phi141198_)
        (let ((_ctx141200_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141197_ _phi141198_ _ctx141200_))))
    (define gx#resolve-identifier
      (lambda _g147881_
        (let ((_g147880_ (##length _g147881_)))
          (cond ((##fx= _g147880_ 1)
                 (apply (lambda (_stx141191_)
                          (gx#resolve-identifier__0 _stx141191_))
                        _g147881_))
                ((##fx= _g147880_ 2)
                 (apply (lambda (_stx141197_ _phi141198_)
                          (gx#resolve-identifier__1 _stx141197_ _phi141198_))
                        _g147881_))
                ((##fx= _g147880_ 3)
                 (apply (lambda (_stx141202_ _phi141203_ _ctx141204_)
                          (gx#resolve-identifier__%
                           _stx141202_
                           _phi141203_
                           _ctx141204_))
                        _g147881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g147881_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141138_ _val141139_ _rebind?141140_ _phi141141_ _ctx141142_)
        (let ((_rebind?141144_
               (if (not _rebind?141140_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141140_) _rebind?141140_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141138_)
           _val141139_
           _rebind?141144_
           _phi141141_
           _ctx141142_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141149_ _val141150_)
        (let* ((_rebind?141152_ '#f)
               (_phi141154_ (gx#current-expander-phi))
               (_ctx141156_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141149_
           _val141150_
           _rebind?141152_
           _phi141154_
           _ctx141156_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141158_ _val141159_ _rebind?141160_)
        (let* ((_phi141162_ (gx#current-expander-phi))
               (_ctx141164_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141158_
           _val141159_
           _rebind?141160_
           _phi141162_
           _ctx141164_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141166_ _val141167_ _rebind?141168_ _phi141169_)
        (let ((_ctx141171_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141166_
           _val141167_
           _rebind?141168_
           _phi141169_
           _ctx141171_))))
    (define gx#bind-identifier!
      (lambda _g147883_
        (let ((_g147882_ (##length _g147883_)))
          (cond ((##fx= _g147882_ 2)
                 (apply (lambda (_stx141149_ _val141150_)
                          (gx#bind-identifier!__0 _stx141149_ _val141150_))
                        _g147883_))
                ((##fx= _g147882_ 3)
                 (apply (lambda (_stx141158_ _val141159_ _rebind?141160_)
                          (gx#bind-identifier!__1
                           _stx141158_
                           _val141159_
                           _rebind?141160_))
                        _g147883_))
                ((##fx= _g147882_ 4)
                 (apply (lambda (_stx141166_
                                 _val141167_
                                 _rebind?141168_
                                 _phi141169_)
                          (gx#bind-identifier!__2
                           _stx141166_
                           _val141167_
                           _rebind?141168_
                           _phi141169_))
                        _g147883_))
                ((##fx= _g147882_ 5)
                 (apply (lambda (_stx141173_
                                 _val141174_
                                 _rebind?141175_
                                 _phi141176_
                                 _ctx141177_)
                          (gx#bind-identifier!__%
                           _stx141173_
                           _val141174_
                           _rebind?141175_
                           _phi141176_
                           _ctx141177_))
                        _g147883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g147883_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141110_ _phi141111_ _ctx141112_)
        (let _lp141114_ ((_e141116_ _stx141110_)
                         (_marks141117_ (gx#current-expander-marks)))
          (if (symbol? _e141116_)
              (gx#core-resolve-binding
               _e141116_
               _phi141111_
               _phi141111_
               _ctx141112_
               (reverse _marks141117_))
              (if (gx#identifier-quote? _e141116_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e141116_ '1 gx#AST::t '#f)
                   _phi141111_
                   '0
                   (##unchecked-structure-ref
                    _e141116_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141116_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141116_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e141116_ '1 gx#AST::t '#f)
                       _phi141111_
                       _phi141111_
                       _ctx141112_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141116_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141117_))
                      (if (##structure-direct-instance-of?
                           _e141116_
                           'gx#syntax-wrap::t)
                          (_lp141114_
                           (##unchecked-structure-ref
                            _e141116_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141116_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141117_))
                          (if (##structure-instance-of?
                               _e141116_
                               'gerbil#AST::t)
                              (_lp141114_
                               (##unchecked-structure-ref
                                _e141116_
                                '1
                                gx#AST::t
                                '#f)
                               _marks141117_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141110_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141122_)
        (let* ((_phi141124_ (gx#current-expander-phi))
               (_ctx141126_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141122_
           _phi141124_
           _ctx141126_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141128_ _phi141129_)
        (let ((_ctx141131_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141128_
           _phi141129_
           _ctx141131_))))
    (define gx#core-resolve-identifier
      (lambda _g147885_
        (let ((_g147884_ (##length _g147885_)))
          (cond ((##fx= _g147884_ 1)
                 (apply (lambda (_stx141122_)
                          (gx#core-resolve-identifier__0 _stx141122_))
                        _g147885_))
                ((##fx= _g147884_ 2)
                 (apply (lambda (_stx141128_ _phi141129_)
                          (gx#core-resolve-identifier__1
                           _stx141128_
                           _phi141129_))
                        _g147885_))
                ((##fx= _g147884_ 3)
                 (apply (lambda (_stx141133_ _phi141134_ _ctx141135_)
                          (gx#core-resolve-identifier__%
                           _stx141133_
                           _phi141134_
                           _ctx141135_))
                        _g147885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g147885_))))))
    (define gx#core-resolve-binding
      (lambda (_id141023_
               _phi141024_
               _src-phi141025_
               _ctx141026_
               _marks141027_)
        (letrec ((_resolve141029_
                  (lambda (_ctx141097_ _src-phi141098_ _key141099_)
                    (let _lp141101_ ((_ctx141103_
                                      (gx#core-context-shift
                                       _ctx141097_
                                       _phi141024_))
                                     (_dphi141104_
                                      (fx- _phi141024_ _src-phi141098_)))
                      (let ((_$e141106_
                             (gx#core-context-resolve
                              _ctx141103_
                              _key141099_)))
                        (if _$e141106_
                            (values _$e141106_)
                            (if (fxzero? _dphi141104_)
                                '#f
                                (if (fxpositive? _dphi141104_)
                                    (_lp141101_
                                     (gx#core-context-shift _ctx141103_ '-1)
                                     (fx- _dphi141104_ '1))
                                    (_lp141101_
                                     (gx#core-context-shift _ctx141103_ '1)
                                     (fx+ _dphi141104_ '1))))))))))
          (let _lp141031_ ((_ctx141033_ _ctx141026_)
                           (_src-phi141034_ _src-phi141025_)
                           (_rest141035_ _marks141027_))
            (let* ((_rest141036141044_ _rest141035_)
                   (_else141038141052_
                    (lambda ()
                      (_resolve141029_
                       _ctx141033_
                       _src-phi141034_
                       _id141023_)))
                   (_K141040141085_
                    (lambda (_rest141055_ _hd141056_)
                      (let* ((_hd141057141063_ _hd141056_)
                             (_E141059141067_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd141057141063_)))
                             (_K141060141077_
                              (lambda (_subst141070_)
                                (let ((_$e141074_
                                       (let ((_key141072_
                                              (if _subst141070_
                                                  (table-ref
                                                   _subst141070_
                                                   _id141023_
                                                   '#f)
                                                  '#f)))
                                         (if _key141072_
                                             (_resolve141029_
                                              _ctx141033_
                                              _src-phi141034_
                                              _key141072_)
                                             '#f))))
                                  (if _$e141074_
                                      _$e141074_
                                      (_lp141031_
                                       (##unchecked-structure-ref
                                        _hd141056_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd141056_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest141055_))))))
                        (if (##structure-instance-of?
                             _hd141057141063_
                             'gx#expander-mark::t)
                            (let* ((_e141061141080_
                                    (##unchecked-structure-ref
                                     _hd141057141063_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst141083_ _e141061141080_))
                              (_K141060141077_ _subst141083_))
                            (_E141059141067_))))))
              (if (##pair? _rest141036141044_)
                  (let ((_hd141041141088_ (##car _rest141036141044_))
                        (_tl141042141090_ (##cdr _rest141036141044_)))
                    (let* ((_hd141093_ _hd141041141088_)
                           (_rest141095_ _tl141042141090_))
                      (_K141040141085_ _rest141095_ _hd141093_)))
                  (_else141038141052_)))))))
    (define gx#core-bind!__%
      (lambda (_key140899_ _val140900_ _rebind?140901_ _phi140902_ _ctx140903_)
        (letrec ((_update-binding140905_
                  (lambda (_xval140976_)
                    (if (or (_rebind?140901_
                             _ctx140903_
                             _xval140976_
                             _val140900_)
                            (and (##structure-direct-instance-of?
                                  _xval140976_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval140976_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val140900_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val140900_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval140976_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val140900_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val140900_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval140976_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val140900_
                        (if (and (##structure-direct-instance-of?
                                  _val140900_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val140900_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval140976_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val140900_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval140976_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval140976_
                            (if (and (##structure-direct-instance-of?
                                      _val140900_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval140976_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key140899_
                                 (cons (##unchecked-structure-ref
                                        _val140900_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val140900_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval140976_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval140976_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval140976_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval140976_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key140899_
                                 _val140900_
                                 _xval140976_))))))
                 (_gensubst140906_
                  (lambda (_subst140971_ _id140972_)
                    (let ((_eid140974_
                           (gensym (if (uninterned-symbol? _id140972_)
                                       '%
                                       _id140972_))))
                      (table-set! _subst140971_ _id140972_ _eid140974_)
                      _eid140974_)))
                 (_subst!140907_
                  (lambda (_key140909_)
                    (let* ((_key140910140918_ _key140909_)
                           (_else140912140926_ (lambda () _key140909_))
                           (_K140914140959_
                            (lambda (_mark140929_ _id140930_)
                              (let* ((_mark140931140937_ _mark140929_)
                                     (_E140933140941_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark140931140937_)))
                                     (_K140934140951_
                                      (lambda (_subst140944_)
                                        (if (not _subst140944_)
                                            (let ((_subst140946_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark140929_
                                               _subst140946_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst140906_
                                               _subst140946_
                                               _id140930_))
                                            (let ((_$e140948_
                                                   (table-ref
                                                    _subst140944_
                                                    _id140930_
                                                    '#f)))
                                              (if _$e140948_
                                                  (values _$e140948_)
                                                  (_gensubst140906_
                                                   _subst140944_
                                                   _id140930_)))))))
                                (if (##structure-instance-of?
                                     _mark140931140937_
                                     'gx#expander-mark::t)
                                    (let* ((_e140935140954_
                                            (##unchecked-structure-ref
                                             _mark140931140937_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst140957_ _e140935140954_))
                                      (_K140934140951_ _subst140957_))
                                    (_E140933140941_))))))
                      (if (##pair? _key140910140918_)
                          (let ((_hd140915140962_ (##car _key140910140918_))
                                (_tl140916140964_ (##cdr _key140910140918_)))
                            (let* ((_id140967_ _hd140915140962_)
                                   (_mark140969_ _tl140916140964_))
                              (_K140914140959_ _mark140969_ _id140967_)))
                          (_else140912140926_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx140903_ _phi140902_)
           (_subst!140907_ _key140899_)
           _val140900_
           _update-binding140905_))))
    (define gx#core-bind!__0
      (lambda (_key140993_ _val140994_)
        (let* ((_rebind?140996_ false)
               (_phi140998_ (gx#current-expander-phi))
               (_ctx141000_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140993_
           _val140994_
           _rebind?140996_
           _phi140998_
           _ctx141000_))))
    (define gx#core-bind!__1
      (lambda (_key141002_ _val141003_ _rebind?141004_)
        (let* ((_phi141006_ (gx#current-expander-phi))
               (_ctx141008_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141002_
           _val141003_
           _rebind?141004_
           _phi141006_
           _ctx141008_))))
    (define gx#core-bind!__2
      (lambda (_key141010_ _val141011_ _rebind?141012_ _phi141013_)
        (let ((_ctx141015_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141010_
           _val141011_
           _rebind?141012_
           _phi141013_
           _ctx141015_))))
    (define gx#core-bind!
      (lambda _g147887_
        (let ((_g147886_ (##length _g147887_)))
          (cond ((##fx= _g147886_ 2)
                 (apply (lambda (_key140993_ _val140994_)
                          (gx#core-bind!__0 _key140993_ _val140994_))
                        _g147887_))
                ((##fx= _g147886_ 3)
                 (apply (lambda (_key141002_ _val141003_ _rebind?141004_)
                          (gx#core-bind!__1
                           _key141002_
                           _val141003_
                           _rebind?141004_))
                        _g147887_))
                ((##fx= _g147886_ 4)
                 (apply (lambda (_key141010_
                                 _val141011_
                                 _rebind?141012_
                                 _phi141013_)
                          (gx#core-bind!__2
                           _key141010_
                           _val141011_
                           _rebind?141012_
                           _phi141013_))
                        _g147887_))
                ((##fx= _g147886_ 5)
                 (apply (lambda (_key141017_
                                 _val141018_
                                 _rebind?141019_
                                 _phi141020_
                                 _ctx141021_)
                          (gx#core-bind!__%
                           _key141017_
                           _val141018_
                           _rebind?141019_
                           _phi141020_
                           _ctx141021_))
                        _g147887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g147887_))))))
    (define gx#core-identifier-key
      (lambda (_stx140833_)
        (if (symbol? _stx140833_)
            (let* ((_g140834140842_ (gx#current-expander-marks))
                   (_else140836140850_ (lambda () _stx140833_))
                   (_K140838140855_
                    (lambda (_hd140853_) (cons _stx140833_ _hd140853_))))
              (if (##pair? _g140834140842_)
                  (let* ((_hd140839140858_ (##car _g140834140842_))
                         (_hd140861_ _hd140839140858_))
                    (_K140838140855_ _hd140861_))
                  (_else140836140850_)))
            (if (gx#identifier? _stx140833_)
                (let* ((_id140863_ (gx#syntax-local-unwrap _stx140833_))
                       (_eid140865_ (gx#stx-e _id140863_))
                       (_marks140867_ (gx#stx-identifier-marks* _id140863_)))
                  (let* ((_marks140869140877_ _marks140867_)
                         (_else140871140885_ (lambda () _eid140865_))
                         (_K140873140890_
                          (lambda (_hd140888_) (cons _eid140865_ _hd140888_))))
                    (if (##pair? _marks140869140877_)
                        (let* ((_hd140874140893_ (##car _marks140869140877_))
                               (_hd140896_ _hd140874140893_))
                          (_K140873140890_ _hd140896_))
                        (_else140871140885_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx140833_)))))
    (define gx#core-context-shift
      (lambda (_ctx140778_ _phi140779_)
        (letrec ((_make-phi140781_
                  (lambda (_super140831_)
                    (let ((__obj147858
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj147858
                       (gensym 'phi)
                       _super140831_)
                      __obj147858)))
                 (_make-phi/up140782_
                  (lambda (_ctx140826_ _super140827_)
                    (let ((_ctx+1140829_ (_make-phi140781_ _super140827_)))
                      (##unchecked-structure-set!
                       _ctx140826_
                       _ctx+1140829_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1140829_
                       _ctx140826_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1140829_)))
                 (_make-phi/down140783_
                  (lambda (_ctx140821_ _super140822_)
                    (let ((_ctx-1140824_ (_make-phi140781_ _super140822_)))
                      (##unchecked-structure-set!
                       _ctx-1140824_
                       _ctx140821_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx140821_
                       _ctx-1140824_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1140824_)))
                 (_shift140784_
                  (lambda (_ctx140805_
                           _delta140806_
                           _make-delta-context140807_
                           _phi140808_
                           _K140809_)
                    (let ((_$e140811_
                           (##unchecked-structure-ref
                            _ctx140805_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e140811_
                          ((lambda (_super140814_)
                             (let* ((_super140816_
                                     (_K140809_ _super140814_ _delta140806_))
                                    (_ctx+d140818_
                                     (_make-delta-context140807_
                                      _ctx140805_
                                      _super140816_)))
                               (_K140809_
                                _ctx+d140818_
                                (fx- _phi140808_ _delta140806_))))
                           _$e140811_)
                          (error '"Bad context" _ctx140805_))))))
          (let _K140786_ ((_ctx140788_ _ctx140778_) (_phi140789_ _phi140779_))
            (if (fxzero? _phi140789_)
                _ctx140788_
                (if (fx> (##vector-length _ctx140788_) '3)
                    (if (fxpositive? _phi140789_)
                        (let ((_$e140791_
                               (##unchecked-structure-ref
                                _ctx140788_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e140791_
                              ((lambda (_g140793140795_)
                                 (_K140786_
                                  _g140793140795_
                                  (fx- _phi140789_ '1)))
                               _$e140791_)
                              (_shift140784_
                               _ctx140788_
                               '1
                               _make-phi/up140782_
                               _phi140789_
                               _K140786_)))
                        (let ((_$e140798_
                               (##unchecked-structure-ref
                                _ctx140788_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e140798_
                              ((lambda (_g140800140802_)
                                 (_K140786_
                                  _g140800140802_
                                  (fx+ _phi140789_ '1)))
                               _$e140798_)
                              (_shift140784_
                               _ctx140788_
                               '-1
                               _make-phi/down140783_
                               _phi140789_
                               _K140786_))))
                    _ctx140788_))))))
    (define gx#core-context-get
      (lambda (_ctx140775_ _key140776_)
        (table-ref
         (##unchecked-structure-ref _ctx140775_ '2 gx#expander-context::t '#f)
         _key140776_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140771_ _key140772_ _val140773_)
        (table-set!
         (##unchecked-structure-ref _ctx140771_ '2 gx#expander-context::t '#f)
         _key140772_
         _val140773_)))
    (define gx#core-context-resolve
      (lambda (_ctx140758_ _key140759_)
        (let _lp140761_ ((_ctx140763_ _ctx140758_))
          (let ((_$e140765_ (gx#core-context-get _ctx140763_ _key140759_)))
            (if _$e140765_
                (values _$e140765_)
                (let ((_$e140768_
                       (if (fx> (##vector-length _ctx140763_) '3)
                           (##unchecked-structure-ref
                            _ctx140763_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e140768_ (_lp140761_ _$e140768_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140748_ _key140749_ _val140750_ _rebind140751_)
        (let ((_$e140753_ (gx#core-context-get _ctx140748_ _key140749_)))
          (if _$e140753_
              ((lambda (_xval140756_)
                 (gx#core-context-put!
                  _ctx140748_
                  _key140749_
                  (_rebind140751_ _xval140756_)))
               _$e140753_)
              (gx#core-context-put! _ctx140748_ _key140749_ _val140750_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140726_ _stop?140727_)
        (let _lp140729_ ((_ctx140731_ _ctx140726_))
          (if (_stop?140727_ _ctx140731_)
              _ctx140731_
              (if (##structure-instance-of? _ctx140731_ 'gx#context-phi::t)
                  (_lp140729_
                   (##unchecked-structure-ref
                    _ctx140731_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140737_ (gx#current-expander-context))
               (_stop?140739_ gx#top-context?))
          (gx#core-context-top__% _ctx140737_ _stop?140739_))))
    (define gx#core-context-top__1
      (lambda (_ctx140741_)
        (let ((_stop?140743_ gx#top-context?))
          (gx#core-context-top__% _ctx140741_ _stop?140743_))))
    (define gx#core-context-top
      (lambda _g147889_
        (let ((_g147888_ (##length _g147889_)))
          (cond ((##fx= _g147888_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g147889_))
                ((##fx= _g147888_ 1)
                 (apply (lambda (_ctx140741_)
                          (gx#core-context-top__1 _ctx140741_))
                        _g147889_))
                ((##fx= _g147888_ 2)
                 (apply (lambda (_ctx140745_ _stop?140746_)
                          (gx#core-context-top__% _ctx140745_ _stop?140746_))
                        _g147889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g147889_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140711_)
        (let _lp140713_ ((_ctx140715_ _ctx140711_))
          (if (##structure-instance-of? _ctx140715_ 'gx#context-phi::t)
              (_lp140713_
               (##unchecked-structure-ref
                _ctx140715_
                '3
                gx#phi-context::t
                '#f))
              _ctx140715_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140721_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140721_))))
    (define gx#core-context-root
      (lambda _g147891_
        (let ((_g147890_ (##length _g147891_)))
          (cond ((##fx= _g147890_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g147891_))
                ((##fx= _g147890_ 1)
                 (apply (lambda (_ctx140723_)
                          (gx#core-context-root__% _ctx140723_))
                        _g147891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g147891_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140692_ . __140689140693_)
        (let ((_$e140696_ (gx#current-expander-allow-rebind?)))
          (if _$e140696_
              _$e140696_
              (if (##structure-instance-of? _ctx140692_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx140692_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx140692_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140703_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140703_))))
    (define gx#core-context-rebind?
      (lambda _g147893_
        (let ((_g147892_ (##length _g147893_)))
          (cond ((##fx= _g147892_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g147893_))
                ((##fx= _g147892_ 1)
                 (apply (lambda (_ctx140705_)
                          (gx#core-context-rebind?__% _ctx140705_))
                        _g147893_))
                ((##fx>= _g147892_ 1)
                 (apply gx#core-context-rebind?__% _g147893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g147893_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140675_)
        (let ((_$e140677_ (gx#core-context-top__1 _ctx140675_)))
          (if _$e140677_
              ((lambda (_ctx140680_)
                 (if (##structure-instance-of?
                      _ctx140680_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx140680_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e140677_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140686_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140686_))))
    (define gx#core-context-namespace
      (lambda _g147895_
        (let ((_g147894_ (##length _g147895_)))
          (cond ((##fx= _g147894_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g147895_))
                ((##fx= _g147894_ 1)
                 (apply (lambda (_ctx140688_)
                          (gx#core-context-namespace__% _ctx140688_))
                        _g147895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g147895_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140661_ _is?140662_)
        (if (##structure-direct-instance-of?
             _bind140661_
             'gx#syntax-binding::t)
            (_is?140662_
             (##unchecked-structure-ref
              _bind140661_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140667_)
        (let ((_is?140669_ gx#expander?))
          (gx#expander-binding?__% _bind140667_ _is?140669_))))
    (define gx#expander-binding?
      (lambda _g147897_
        (let ((_g147896_ (##length _g147897_)))
          (cond ((##fx= _g147896_ 1)
                 (apply (lambda (_bind140667_)
                          (gx#expander-binding?__0 _bind140667_))
                        _g147897_))
                ((##fx= _g147896_ 2)
                 (apply (lambda (_bind140671_ _is?140672_)
                          (gx#expander-binding?__% _bind140671_ _is?140672_))
                        _g147897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g147897_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140658_)
        (gx#expander-binding?__% _bind140658_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140656_)
        (gx#expander-binding?__% _bind140656_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140650_)
        (letrec ((_direct-special-form?140652_
                  (lambda (_obj140654_)
                    (##structure-direct-instance-of?
                     _obj140654_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140650_
           _direct-special-form?140652_))))
    (define gx#special-form-binding?
      (lambda (_bind140648_)
        (gx#expander-binding?__% _bind140648_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140639_)
        (letrec ((_feature?140641_
                  (lambda (_e140643_)
                    (let ((_$e140645_
                           (##structure-instance-of?
                            _e140643_
                            'gx#feature-expander::t)))
                      (if _$e140645_
                          _$e140645_
                          (##structure-instance-of?
                           _e140643_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind140639_ _feature?140641_))))
    (define gx#private-feature-binding?
      (lambda (_bind140637_)
        (gx#expander-binding?__% _bind140637_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140624_ _bound?140625_)
        (if (gx#identifier? _id140624_)
            (_bound?140625_ (gx#resolve-identifier__0 _id140624_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140630_)
        (let ((_bound?140632_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140630_ _bound?140632_))))
    (define gx#core-bound-identifier?
      (lambda _g147899_
        (let ((_g147898_ (##length _g147899_)))
          (cond ((##fx= _g147898_ 1)
                 (apply (lambda (_id140630_)
                          (gx#core-bound-identifier?__0 _id140630_))
                        _g147899_))
                ((##fx= _g147898_ 2)
                 (apply (lambda (_id140634_ _bound?140635_)
                          (gx#core-bound-identifier?__%
                           _id140634_
                           _bound?140635_))
                        _g147899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g147899_))))))
    (define gx#core-identifier=?
      (lambda (_x140614_ _y140615_)
        (letrec ((_y=?140617_
                  (lambda (_xid140621_)
                    ((if (list? _y140615_) memq eq?) _xid140621_ _y140615_))))
          (let ((_bind140619_ (gx#resolve-identifier__0 _x140614_)))
            (if (##structure-instance-of? _bind140619_ 'gx#binding::t)
                (_y=?140617_
                 (##unchecked-structure-ref _bind140619_ '1 gx#binding::t '#f))
                (_y=?140617_ (gx#stx-e _x140614_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140612_)
        (if (interned-symbol? _e140612_)
            (string-index (symbol->string _e140612_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140567_ _src140568_ _ctx140569_ _marks140570_)
        (if (##structure? _stx140567_)
            (let ((_$e140572_ (gx#sealed-syntax-unwrap _stx140567_)))
              (if _$e140572_
                  (values _$e140572_)
                  (if (gx#identifier? _stx140567_)
                      (let ((_id140575_
                             (gx#stx-unwrap__% _stx140567_ _marks140570_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id140575_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e140577_
                                (##unchecked-structure-ref
                                 _id140575_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e140577_ _$e140577_ _src140568_))
                         _ctx140569_
                         (##unchecked-structure-ref
                          _id140575_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx140567_)
                       (let ((_$e140580_ (gx#stx-source _stx140567_)))
                         (if _$e140580_ _$e140580_ _src140568_))
                       _ctx140569_
                       (reverse _marks140570_)))))
            (##structure
             gx#syntax-quote::t
             _stx140567_
             _src140568_
             _ctx140569_
             (reverse _marks140570_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140586_)
        (let* ((_src140588_ '#f)
               (_ctx140590_ (gx#current-expander-context))
               (_marks140592_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140586_
           _src140588_
           _ctx140590_
           _marks140592_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140594_ _src140595_)
        (let* ((_ctx140597_ (gx#current-expander-context))
               (_marks140599_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140594_
           _src140595_
           _ctx140597_
           _marks140599_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140601_ _src140602_ _ctx140603_)
        (let ((_marks140605_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140601_
           _src140602_
           _ctx140603_
           _marks140605_))))
    (define gx#core-quote-syntax
      (lambda _g147901_
        (let ((_g147900_ (##length _g147901_)))
          (cond ((##fx= _g147900_ 1)
                 (apply (lambda (_stx140586_)
                          (gx#core-quote-syntax__0 _stx140586_))
                        _g147901_))
                ((##fx= _g147900_ 2)
                 (apply (lambda (_stx140594_ _src140595_)
                          (gx#core-quote-syntax__1 _stx140594_ _src140595_))
                        _g147901_))
                ((##fx= _g147900_ 3)
                 (apply (lambda (_stx140601_ _src140602_ _ctx140603_)
                          (gx#core-quote-syntax__2
                           _stx140601_
                           _src140602_
                           _ctx140603_))
                        _g147901_))
                ((##fx= _g147900_ 4)
                 (apply (lambda (_stx140607_
                                 _src140608_
                                 _ctx140609_
                                 _marks140610_)
                          (gx#core-quote-syntax__%
                           _stx140607_
                           _src140608_
                           _ctx140609_
                           _marks140610_))
                        _g147901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g147901_))))))
    (define gx#core-cons
      (lambda (_hd140563_ _tl140564_)
        (cons (gx#core-quote-syntax__0 _hd140563_) _tl140564_)))
    (define gx#core-list
      (lambda (_hd140560_ . _rest140561_)
        (cons (gx#core-quote-syntax__0 _hd140560_) _rest140561_)))
    (define gx#core-cons*
      (lambda (_hd140557_ . _rest140558_)
        (apply cons* (gx#core-quote-syntax__0 _hd140557_) _rest140558_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140531_ _rel140532_)
        (let ((_path140544_ (gx#stx-e _stx-path140531_))
              (_reldir140545_
               (let _lp140534_ ((_relsrc140536_
                                 (let ((_$e140541_
                                        (gx#stx-source _stx-path140531_)))
                                   (if _$e140541_ _$e140541_ _rel140532_))))
                 (if (##structure-instance-of? _relsrc140536_ 'gerbil#AST::t)
                     (_lp140534_
                      (let ((_$e140538_ (gx#stx-source _relsrc140536_)))
                        (if _$e140538_ _$e140538_ (gx#stx-e _relsrc140536_))))
                     (if (source-location-path? _relsrc140536_)
                         (path-directory (source-location-path _relsrc140536_))
                         (if (string? _relsrc140536_)
                             (path-directory _relsrc140536_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140544_ (path-normalize _reldir140545_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140550_)
        (let ((_rel140552_ '#f))
          (gx#core-resolve-path__% _stx-path140550_ _rel140552_))))
    (define gx#core-resolve-path
      (lambda _g147903_
        (let ((_g147902_ (##length _g147903_)))
          (cond ((##fx= _g147902_ 1)
                 (apply (lambda (_stx-path140550_)
                          (gx#core-resolve-path__0 _stx-path140550_))
                        _g147903_))
                ((##fx= _g147902_ 2)
                 (apply (lambda (_stx-path140554_ _rel140555_)
                          (gx#core-resolve-path__%
                           _stx-path140554_
                           _rel140555_))
                        _g147903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g147903_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140487_ _ctx140488_)
        (let* ((_repr140489140496_ _repr140487_)
               (_E140491140500_
                (lambda () (error '"No clause matching" _repr140489140496_)))
               (_K140492140508_
                (lambda (_subs140503_ _phi140504_)
                  (let ((_subst140506_
                         (if (not (null? _subs140503_))
                             (list->table _subs140503_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst140506_
                     _ctx140488_
                     _phi140504_
                     '#f)))))
          (if (##pair? _repr140489140496_)
              (let ((_hd140493140511_ (##car _repr140489140496_))
                    (_tl140494140513_ (##cdr _repr140489140496_)))
                (let* ((_phi140516_ _hd140493140511_)
                       (_subs140518_ _tl140494140513_))
                  (_K140492140508_ _subs140518_ _phi140516_)))
              (_E140491140500_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140523_)
        (let ((_ctx140525_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140523_ _ctx140525_))))
    (define gx#core-deserialize-mark
      (lambda _g147905_
        (let ((_g147904_ (##length _g147905_)))
          (cond ((##fx= _g147904_ 1)
                 (apply (lambda (_repr140523_)
                          (gx#core-deserialize-mark__0 _repr140523_))
                        _g147905_))
                ((##fx= _g147904_ 2)
                 (apply (lambda (_repr140527_ _ctx140528_)
                          (gx#core-deserialize-mark__%
                           _repr140527_
                           _ctx140528_))
                        _g147905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g147905_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140484_)
        (gx#stx-rewrap _stx140484_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140482_)
        (gx#stx-unwrap__% _stx140482_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140452_)
        (let* ((_g140453140461_ (gx#current-expander-marks))
               (_else140455140469_ (lambda () _stx140452_))
               (_K140457140474_
                (lambda (_hd140472_)
                  (gx#stx-apply-mark _stx140452_ _hd140472_))))
          (if (##pair? _g140453140461_)
              (let* ((_hd140458140477_ (##car _g140453140461_))
                     (_hd140480_ _hd140458140477_))
                (_K140457140474_ _hd140480_))
              (_else140455140469_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140437_ _E140438_)
        (let ((_bind140440_ (gx#resolve-identifier__0 _stx140437_)))
          (if (##structure-direct-instance-of?
               _bind140440_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140440_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140438_ _stx140437_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140445_)
        (let ((_E140447_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140445_ _E140447_))))
    (define gx#syntax-local-e
      (lambda _g147907_
        (let ((_g147906_ (##length _g147907_)))
          (cond ((##fx= _g147906_ 1)
                 (apply (lambda (_stx140445_)
                          (gx#syntax-local-e__0 _stx140445_))
                        _g147907_))
                ((##fx= _g147906_ 2)
                 (apply (lambda (_stx140449_ _E140450_)
                          (gx#syntax-local-e__% _stx140449_ _E140450_))
                        _g147907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g147907_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140421_ _E140422_)
        (let ((_e140424_ (gx#syntax-local-e__% _stx140421_ _E140422_)))
          (if (##structure-instance-of? _e140424_ 'gx#expander::t)
              (##structure-ref _e140424_ '1 gx#expander::t '#f)
              _e140424_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140429_)
        (let ((_E140431_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140429_ _E140431_))))
    (define gx#syntax-local-value
      (lambda _g147909_
        (let ((_g147908_ (##length _g147909_)))
          (cond ((##fx= _g147908_ 1)
                 (apply (lambda (_stx140429_)
                          (gx#syntax-local-value__0 _stx140429_))
                        _g147909_))
                ((##fx= _g147908_ 2)
                 (apply (lambda (_stx140433_ _E140434_)
                          (gx#syntax-local-value__% _stx140433_ _E140434_))
                        _g147909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g147909_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140418_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140418_)))))
