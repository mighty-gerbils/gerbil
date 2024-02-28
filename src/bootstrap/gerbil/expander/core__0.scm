(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1709111636)
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
      (lambda _$args84325_
        (apply make-instance gx#expander-context::t _$args84325_)))
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
      (lambda _$args84322_
        (apply make-instance gx#root-context::t _$args84322_)))
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
      (lambda _$args84319_
        (apply make-instance gx#phi-context::t _$args84319_)))
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
      (lambda _$args84316_
        (apply make-instance gx#top-context::t _$args84316_)))
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
      (lambda _$args84313_
        (apply make-instance gx#module-context::t _$args84313_)))
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
      (lambda _$args84310_
        (apply make-instance gx#prelude-context::t _$args84310_)))
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
      (lambda _$args84307_
        (apply make-instance gx#local-context::t _$args84307_)))
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
      (lambda (_self84291_ _id84292_ _super84293_)
        (if (##fx< '3 (##structure-length _self84291_))
            (begin
              (##unchecked-structure-set!
               _self84291_
               _id84292_
               '1
               (##structure-type _self84291_)
               '#f)
              (##unchecked-structure-set!
               _self84291_
               (make-hash-table-eq)
               '2
               (##structure-type _self84291_)
               '#f)
              (##unchecked-structure-set!
               _self84291_
               _super84293_
               '3
               (##structure-type _self84291_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84291_
                   '3
                   (##vector-length _self84291_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84298_ _id84299_)
        (let ((_super84301_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84298_ _id84299_ _super84301_))))
    (define gx#phi-context:::init!
      (lambda _g84368_
        (let ((_g84367_ (##length _g84368_)))
          (cond ((##fx= _g84367_ 2)
                 (apply (lambda (_self84298_ _id84299_)
                          (gx#phi-context:::init!__0 _self84298_ _id84299_))
                        _g84368_))
                ((##fx= _g84367_ 3)
                 (apply (lambda (_self84303_ _id84304_ _super84305_)
                          (gx#phi-context:::init!__%
                           _self84303_
                           _id84304_
                           _super84305_))
                        _g84368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84368_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self84155_ _super84156_)
        (if (##fx< '3 (##structure-length _self84155_))
            (begin
              (##unchecked-structure-set!
               _self84155_
               (gensym 'L)
               '1
               (##structure-type _self84155_)
               '#f)
              (##unchecked-structure-set!
               _self84155_
               (make-hash-table-eq)
               '2
               (##structure-type _self84155_)
               '#f)
              (##unchecked-structure-set!
               _self84155_
               _super84156_
               '3
               (##structure-type _self84155_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84155_
                   '3
                   (##vector-length _self84155_)))))
    (define gx#local-context:::init!__0
      (lambda (_self84161_)
        (let ((_super84163_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self84161_ _super84163_))))
    (define gx#local-context:::init!
      (lambda _g84370_
        (let ((_g84369_ (##length _g84370_)))
          (cond ((##fx= _g84369_ 1)
                 (apply (lambda (_self84161_)
                          (gx#local-context:::init!__0 _self84161_))
                        _g84370_))
                ((##fx= _g84369_ 2)
                 (apply (lambda (_self84165_ _super84166_)
                          (gx#local-context:::init!__%
                           _self84165_
                           _super84166_))
                        _g84370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84370_))))))
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
      (lambda _$args84029_ (apply make-instance gx#binding::t _$args84029_)))
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
      (lambda _$args84026_
        (apply make-instance gx#runtime-binding::t _$args84026_)))
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
      (lambda _$args84023_
        (apply make-instance gx#local-binding::t _$args84023_)))
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
      (lambda _$args84020_
        (apply make-instance gx#top-binding::t _$args84020_)))
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
      (lambda _$args84017_
        (apply make-instance gx#module-binding::t _$args84017_)))
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
      (lambda _$args84014_
        (apply make-instance gx#extern-binding::t _$args84014_)))
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
      (lambda _$args84011_
        (apply make-instance gx#syntax-binding::t _$args84011_)))
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
      (lambda _$args84008_
        (apply make-instance gx#import-binding::t _$args84008_)))
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
      (lambda _$args84005_
        (apply make-instance gx#alias-binding::t _$args84005_)))
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
      (lambda _$args84002_ (apply make-instance gx#expander::t _$args84002_)))
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
      (lambda _$args83999_
        (apply make-instance gx#core-expander::t _$args83999_)))
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
      (lambda _$args83996_
        (apply make-instance gx#expression-form::t _$args83996_)))
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
      (lambda _$args83993_
        (apply make-instance gx#special-form::t _$args83993_)))
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
      (lambda _$args83990_
        (apply make-instance gx#definition-form::t _$args83990_)))
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
      (lambda _$args83987_
        (apply make-instance gx#top-special-form::t _$args83987_)))
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
      (lambda _$args83984_
        (apply make-instance gx#module-special-form::t _$args83984_)))
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
      (lambda _$args83981_
        (apply make-instance gx#feature-expander::t _$args83981_)))
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
      (lambda _$args83978_
        (apply make-instance gx#private-feature-expander::t _$args83978_)))
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
      (lambda _$args83975_
        (apply make-instance gx#reserved-expander::t _$args83975_)))
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
      (lambda _$args83972_
        (apply make-instance gx#macro-expander::t _$args83972_)))
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
      (lambda _$args83969_
        (apply make-instance gx#rename-macro-expander::t _$args83969_)))
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
      (lambda _$args83966_
        (apply make-instance gx#user-expander::t _$args83966_)))
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
      (lambda _$args83963_
        (apply make-instance gx#expander-mark::t _$args83963_)))
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
      (lambda (_ctx83948_ _message83949_ _stx83950_ . _details83951_)
        (let ((_ctx83961_
               (let ((_$e83953_ _ctx83948_))
                 (if _$e83953_
                     _$e83953_
                     (let ((_$e83956_ (gx#core-context-top__0)))
                       (if _$e83956_
                           ((lambda (_ctx83959_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx83959_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e83956_)
                           '#f))))))
          (raise (make-syntax-error
                  _message83949_
                  (cons _stx83950_ _details83951_)
                  _ctx83961_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx83935_ _expression?83936_)
        (gx#eval-syntax* (gx#core-expand__% _stx83935_ _expression?83936_))))
    (define gx#eval-syntax__0
      (lambda (_stx83941_)
        (let ((_expression?83943_ '#f))
          (gx#eval-syntax__% _stx83941_ _expression?83943_))))
    (define gx#eval-syntax
      (lambda _g84372_
        (let ((_g84371_ (##length _g84372_)))
          (cond ((##fx= _g84371_ 1)
                 (apply (lambda (_stx83941_) (gx#eval-syntax__0 _stx83941_))
                        _g84372_))
                ((##fx= _g84371_ 2)
                 (apply (lambda (_stx83945_ _expression?83946_)
                          (gx#eval-syntax__% _stx83945_ _expression?83946_))
                        _g84372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84372_))))))
    (define gx#eval-syntax*
      (lambda (_stx83932_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx83932_))))
    (define gx#core-expand__%
      (lambda (_stx83919_ _expression?83920_)
        (if _expression?83920_
            (gx#core-expand-expression _stx83919_)
            (gx#core-expand-top _stx83919_))))
    (define gx#core-expand__0
      (lambda (_stx83925_)
        (let ((_expression?83927_ '#f))
          (gx#core-expand__% _stx83925_ _expression?83927_))))
    (define gx#core-expand
      (lambda _g84374_
        (let ((_g84373_ (##length _g84374_)))
          (cond ((##fx= _g84373_ 1)
                 (apply (lambda (_stx83925_) (gx#core-expand__0 _stx83925_))
                        _g84374_))
                ((##fx= _g84373_ 2)
                 (apply (lambda (_stx83929_ _expression?83930_)
                          (gx#core-expand__% _stx83929_ _expression?83930_))
                        _g84374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84374_))))))
    (define gx#core-expand-top
      (lambda (_stx83886_)
        (let* ((_stx83888_ (gx#core-expand*__0 _stx83886_))
               (_e8388983896_ _stx83888_)
               (_E8389183900_
                (lambda () (gx#core-expand-expression _stx83888_)))
               (_E8389083914_
                (lambda ()
                  (if (gx#stx-pair? _e8388983896_)
                      (let ((_e8389283904_ (gx#syntax-e _e8388983896_)))
                        (let ((_hd8389383907_ (##car _e8389283904_))
                              (_tl8389483909_ (##cdr _e8389283904_)))
                          (let ((_form83912_ _hd8389383907_))
                            (if (gx#core-bound-identifier?__0 _form83912_)
                                _stx83888_
                                (_E8389183900_)))))
                      (_E8389183900_)))))
          (_E8389083914_))))
    (define gx#core-expand-expression
      (lambda (_stx83833_)
        (letrec ((_sealed-expression?83835_
                  (lambda (_hd83856_)
                    (if (gx#sealed-syntax? _hd83856_)
                        (let* ((_e8385783864_ _hd83856_)
                               (_E8385983868_ (lambda () '#f))
                               (_E8385883882_
                                (lambda ()
                                  (if (gx#stx-pair? _e8385783864_)
                                      (let ((_e8386083872_
                                             (gx#syntax-e _e8385783864_)))
                                        (let ((_hd8386183875_
                                               (##car _e8386083872_))
                                              (_tl8386283877_
                                               (##cdr _e8386083872_)))
                                          (let ((_form83880_ _hd8386183875_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form83880_
                                                 gx#expression-form-binding?)
                                                (_E8385983868_)))))
                                      (_E8385983868_)))))
                          (_E8385883882_))
                        '#f)))
                 (_illegal-expression83836_
                  (lambda (_hd83854_ . _g84375_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx83833_
                     _hd83854_)))
                 (_expand-e83837_
                  (lambda (_form83849_ _hd83850_)
                    (let ((_bind83852_
                           (if (##structure-instance-of?
                                _form83849_
                                'gx#binding::t)
                               _form83849_
                               (gx#resolve-identifier__0 _form83849_))))
                      (if (gx#core-expander-binding? _bind83852_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind83852_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd83850_
                            (gx#stx-source _stx83833_)))
                          (if (##structure-direct-instance-of?
                               _bind83852_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind83852_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd83850_
                                 (gx#stx-source _stx83833_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx83833_
                               _form83849_)))))))
          (let ((_hd83839_ (gx#core-expand-head _stx83833_)))
            (if (_sealed-expression?83835_ _hd83839_)
                _hd83839_
                (if (gx#stx-pair? _hd83839_)
                    (let* ((_form83841_ (gx#stx-car _hd83839_))
                           (_bind83843_
                            (if (gx#identifier? _form83841_)
                                (gx#resolve-identifier__0 _form83841_)
                                '#f)))
                      (if (or (not _bind83843_)
                              (not (gx#core-expander-binding? _bind83843_)))
                          (_expand-e83837_ '%%app (cons '%%app _hd83839_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind83843_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd83839_
                               _illegal-expression83836_)
                              (if (gx#expression-form-binding? _bind83843_)
                                  (_expand-e83837_ _bind83843_ _hd83839_)
                                  (if (gx#direct-special-form-binding?
                                       _bind83843_)
                                      (gx#core-expand-expression
                                       (_expand-e83837_ _bind83843_ _hd83839_))
                                      (_illegal-expression83836_
                                       _hd83839_))))))
                    (if (gx#core-bound-identifier?__0 _hd83839_)
                        (_illegal-expression83836_ _hd83839_)
                        (if (gx#identifier? _hd83839_)
                            (_expand-e83837_
                             '%%ref
                             (cons '%%ref (cons _hd83839_ '())))
                            (if (gx#stx-datum? _hd83839_)
                                (_expand-e83837_
                                 '%#quote
                                 (cons '%#quote (cons _hd83839_ '())))
                                (_illegal-expression83836_ _hd83839_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx83828_)
        (call-with-parameters
         (lambda ()
           (let ((_stx83831_ (gx#core-expand-expression _stx83828_)))
             (values _stx83831_ (gx#eval-syntax* _stx83831_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx83809_ _stop?83810_)
        (let _lp83812_ ((_stx83814_ _stx83809_))
          (if (_stop?83810_ _stx83814_)
              _stx83814_
              (let ((_rstx83816_ (gx#core-expand1 _stx83814_)))
                (if (eq? _stx83814_ _rstx83816_)
                    _stx83814_
                    (_lp83812_ _rstx83816_)))))))
    (define gx#core-expand*__0
      (lambda (_stx83821_)
        (let ((_stop?83823_ false))
          (gx#core-expand*__% _stx83821_ _stop?83823_))))
    (define gx#core-expand*
      (lambda _g84377_
        (let ((_g84376_ (##length _g84377_)))
          (cond ((##fx= _g84376_ 1)
                 (apply (lambda (_stx83821_) (gx#core-expand*__0 _stx83821_))
                        _g84377_))
                ((##fx= _g84376_ 2)
                 (apply (lambda (_stx83825_ _stop?83826_)
                          (gx#core-expand*__% _stx83825_ _stop?83826_))
                        _g84377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84377_))))))
    (define gx#core-expand1
      (lambda (_stx83765_)
        (letrec ((_step83767_
                  (lambda (_hd83804_)
                    (let ((_bind83806_ (gx#resolve-identifier__0 _hd83804_)))
                      (if (##structure-instance-of?
                           _bind83806_
                           'gx#runtime-binding::t)
                          _stx83765_
                          (if (##structure-direct-instance-of?
                               _bind83806_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind83806_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx83765_)
                              (if (not _bind83806_)
                                  _stx83765_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx83765_))))))))
          (let* ((_e8376883776_ _stx83765_)
                 (_E8377483780_ (lambda () _stx83765_))
                 (_E8377083786_
                  (lambda ()
                    (let ((_hd83784_ _e8376883776_))
                      (if (gx#identifier? _hd83784_)
                          (_step83767_ _hd83784_)
                          (_E8377483780_)))))
                 (_E8376983800_
                  (lambda ()
                    (if (gx#stx-pair? _e8376883776_)
                        (let ((_e8377183790_ (gx#syntax-e _e8376883776_)))
                          (let ((_hd8377283793_ (##car _e8377183790_))
                                (_tl8377383795_ (##cdr _e8377183790_)))
                            (let ((_hd83798_ _hd8377283793_))
                              (if (gx#identifier? _hd83798_)
                                  (_step83767_ _hd83798_)
                                  (_E8377083786_)))))
                        (_E8377083786_)))))
            (_E8376983800_)))))
    (define gx#core-expand-head
      (lambda (_stx83731_)
        (letrec ((_stop?83733_
                  (lambda (_stx83735_)
                    (let* ((_e8373683743_ _stx83735_)
                           (_E8373883747_ (lambda () '#f))
                           (_E8373783761_
                            (lambda ()
                              (if (gx#stx-pair? _e8373683743_)
                                  (let ((_e8373983751_
                                         (gx#syntax-e _e8373683743_)))
                                    (let ((_hd8374083754_
                                           (##car _e8373983751_))
                                          (_tl8374183756_
                                           (##cdr _e8373983751_)))
                                      (let ((_hd83759_ _hd8374083754_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd83759_)
                                            (_E8373883747_)))))
                                  (_E8373883747_)))))
                      (_E8373783761_)))))
          (gx#core-expand*__% _stx83731_ _stop?83733_))))
    (define gx#core-expand-block__%
      (lambda (_stx83537_
               _expand-special83538_
               _begin-form83539_
               _expand-e83540_)
        (letrec ((_expand-splice83542_
                  (lambda (_hd83705_ _body83706_ _rest83707_ _r83708_)
                    (if (gx#stx-list? _body83706_)
                        (_K83546_
                         (gx#stx-foldr cons _rest83707_ _body83706_)
                         _r83708_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83537_
                         _hd83705_))))
                 (_expand-cond-expand83543_
                  (lambda (_hd83701_ _rest83702_ _r83703_)
                    (_K83546_
                     (cons (gx#core-expand-cond-expand% _hd83701_) _rest83702_)
                     _r83703_)))
                 (_expand-include83544_
                  (lambda (_hd83650_ _rest83651_ _r83652_)
                    (let* ((_e8365383663_ _hd83650_)
                           (_E8365583667_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8365383663_)))
                           (_E8365483697_
                            (lambda ()
                              (if (gx#stx-pair? _e8365383663_)
                                  (let ((_e8365683671_
                                         (gx#syntax-e _e8365383663_)))
                                    (let ((_hd8365783674_
                                           (##car _e8365683671_))
                                          (_tl8365883676_
                                           (##cdr _e8365683671_)))
                                      (if (gx#stx-pair? _tl8365883676_)
                                          (let ((_e8365983679_
                                                 (gx#syntax-e _tl8365883676_)))
                                            (let ((_hd8366083682_
                                                   (##car _e8365983679_))
                                                  (_tl8366183684_
                                                   (##cdr _e8365983679_)))
                                              (let ((_path83687_
                                                     _hd8366083682_))
                                                (if (gx#stx-null?
                                                     _tl8366183684_)
                                                    (if (gx#stx-string?
                                                         _path83687_)
                                                        (let* ((_rpath83689_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path83687_
                         (gx#stx-source _hd83650_)))
                       (_block83691_
                        (gx#core-expand-include%__% _hd83650_ _rpath83689_))
                       (_rbody83694_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block83691_
                            _expand-special83538_
                            '#f
                            _expand-e83540_))
                         gx#current-expander-path
                         (cons _rpath83689_ (gx#current-expander-path)))))
                  (_K83546_ _rest83651_ (foldr1 cons _r83652_ _rbody83694_)))
                (_E8365583667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8365583667_)))))
                                          (_E8365583667_))))
                                  (_E8365583667_)))))
                      (_E8365483697_))))
                 (_expand-expression83545_
                  (lambda (_hd83646_ _rest83647_ _r83648_)
                    (_K83546_
                     _rest83647_
                     (cons (_expand-e83540_ _hd83646_) _r83648_))))
                 (_K83546_
                  (lambda (_rest83576_ _r83577_)
                    (let* ((_e8357883585_ _rest83576_)
                           (_E8358083589_
                            (lambda ()
                              (if _begin-form83539_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83539_
                                    (reverse _r83577_))
                                   (gx#stx-source _stx83537_))
                                  _r83577_)))
                           (_E8357983642_
                            (lambda ()
                              (if (gx#stx-pair? _e8357883585_)
                                  (let ((_e8358183593_
                                         (gx#syntax-e _e8357883585_)))
                                    (let ((_hd8358283596_
                                           (##car _e8358183593_))
                                          (_tl8358383598_
                                           (##cdr _e8358183593_)))
                                      (let* ((_hd83601_ _hd8358283596_)
                                             (_rest83603_ _tl8358383598_))
                                        (if '#t
                                            (let* ((_hd83605_
                                                    (gx#core-expand-head
                                                     _hd83601_))
                                                   (_e8360683613_ _hd83605_)
                                                   (_E8360883617_
                                                    (lambda ()
                                                      (_expand-expression83545_
                                                       _hd83605_
                                                       _rest83603_
                                                       _r83577_)))
                                                   (_E8360783638_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8360683613_)
                                                          (let ((_e8360983621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8360683613_)))
                    (let ((_hd8361083624_ (##car _e8360983621_))
                          (_tl8361183626_ (##cdr _e8360983621_)))
                      (let* ((_form83629_ _hd8361083624_)
                             (_body83631_ _tl8361183626_))
                        (if '#t
                            (let ((_bind83633_
                                   (if (gx#identifier? _form83629_)
                                       (gx#resolve-identifier__0 _form83629_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind83633_)
                                  (let ((_$e83635_
                                         (##unchecked-structure-ref
                                          _bind83633_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e83635_)
                                        (_expand-splice83542_
                                         _hd83605_
                                         _body83631_
                                         _rest83603_
                                         _r83577_)
                                        (if (eq? '%#cond-expand _$e83635_)
                                            (_expand-cond-expand83543_
                                             _hd83605_
                                             _rest83603_
                                             _r83577_)
                                            (if (eq? '%#include _$e83635_)
                                                (_expand-include83544_
                                                 _hd83605_
                                                 _rest83603_
                                                 _r83577_)
                                                (_expand-special83538_
                                                 _hd83605_
                                                 _K83546_
                                                 _rest83603_
                                                 _r83577_)))))
                                  (_expand-expression83545_
                                   _hd83605_
                                   _rest83603_
                                   _r83577_)))
                            (_E8360883617_)))))
                  (_E8360883617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8360783638_))
                                            (_E8358083589_)))))
                                  (_E8358083589_)))))
                      (_E8357983642_)))))
          (let* ((_e8354783554_ _stx83537_)
                 (_E8354983558_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8354783554_)))
                 (_E8354883572_
                  (lambda ()
                    (if (gx#stx-pair? _e8354783554_)
                        (let ((_e8355083562_ (gx#syntax-e _e8354783554_)))
                          (let ((_hd8355183565_ (##car _e8355083562_))
                                (_tl8355283567_ (##cdr _e8355083562_)))
                            (let ((_body83570_ _tl8355283567_))
                              (if (gx#stx-list? _body83570_)
                                  (_K83546_ _body83570_ '())
                                  (_E8354983558_)))))
                        (_E8354983558_)))))
            (_E8354883572_)))))
    (define gx#core-expand-block__0
      (lambda (_stx83713_ _expand-special83714_)
        (let* ((_begin-form83716_ '%#begin)
               (_expand-e83718_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83713_
           _expand-special83714_
           _begin-form83716_
           _expand-e83718_))))
    (define gx#core-expand-block__1
      (lambda (_stx83720_ _expand-special83721_ _begin-form83722_)
        (let ((_expand-e83724_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83720_
           _expand-special83721_
           _begin-form83722_
           _expand-e83724_))))
    (define gx#core-expand-block
      (lambda _g84379_
        (let ((_g84378_ (##length _g84379_)))
          (cond ((##fx= _g84378_ 2)
                 (apply (lambda (_stx83713_ _expand-special83714_)
                          (gx#core-expand-block__0
                           _stx83713_
                           _expand-special83714_))
                        _g84379_))
                ((##fx= _g84378_ 3)
                 (apply (lambda (_stx83720_
                                 _expand-special83721_
                                 _begin-form83722_)
                          (gx#core-expand-block__1
                           _stx83720_
                           _expand-special83721_
                           _begin-form83722_))
                        _g84379_))
                ((##fx= _g84378_ 4)
                 (apply (lambda (_stx83726_
                                 _expand-special83727_
                                 _begin-form83728_
                                 _expand-e83729_)
                          (gx#core-expand-block__%
                           _stx83726_
                           _expand-special83727_
                           _begin-form83728_
                           _expand-e83729_))
                        _g84379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84379_))))))
    (define gx#core-expand-block*
      (lambda (_stx83485_ _expand-special83486_)
        (let* ((_g8348783498_
                (gx#core-expand-block__1 _stx83485_ _expand-special83486_ '#f))
               (_E8349183502_
                (lambda () (error '"No clause matching" _g8348783498_))))
          (let ((_K8349683533_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83485_)))
                (_K8349383519_ (lambda (_expr83517_) _expr83517_))
                (_K8349283508_
                 (lambda (_body83506_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83506_))
                    (gx#stx-source _stx83485_)))))
            (let ((_try-match8348983529_
                   (lambda ()
                     (if (##pair? _g8348783498_)
                         (let ((_tl8349583524_ (##cdr _g8348783498_))
                               (_hd8349483522_ (##car _g8348783498_)))
                           (if (##null? _tl8349583524_)
                               (let ((_expr83527_ _hd8349483522_))
                                 (_K8349383519_ _expr83527_))
                               (let ((_body83511_ _g8348783498_))
                                 (_K8349283508_ _body83511_))))
                         (let ((_body83511_ _g8348783498_))
                           (_K8349283508_ _body83511_))))))
              (if (##null? _g8348783498_)
                  (_K8349683533_)
                  (_try-match8348983529_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83313_)
        (letrec ((_satisfied?83315_
                  (lambda (_condition83413_)
                    (let* ((_e8341483429_ _condition83413_)
                           (_E8342483433_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8341483429_)))
                           (_E8341783452_
                            (lambda ()
                              (if (gx#stx-pair? _e8341483429_)
                                  (let ((_e8342583437_
                                         (gx#syntax-e _e8341483429_)))
                                    (let ((_hd8342683440_
                                           (##car _e8342583437_))
                                          (_tl8342783442_
                                           (##cdr _e8342583437_)))
                                      (let* ((_combinator83445_ _hd8342683440_)
                                             (_body83447_ _tl8342783442_))
                                        (if (gx#stx-list? _body83447_)
                                            (let ((_$e83449_
                                                   (gx#stx-e
                                                    _combinator83445_)))
                                              (if (eq? 'not _$e83449_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83315_
                                                        _body83447_))
                                                  (if (eq? 'and _$e83449_)
                                                      (gx#stx-andmap
                                                       _satisfied?83315_
                                                       _body83447_)
                                                      (if (eq? 'or _$e83449_)
                                                          (gx#stx-ormap
                                                           _satisfied?83315_
                                                           _body83447_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83449_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83447_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83313_
                       _combinator83445_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8342483433_)))))
                                  (_E8342483433_))))
                           (_E8341683475_
                            (lambda ()
                              (if (gx#stx-pair? _e8341483429_)
                                  (let ((_e8341883456_
                                         (gx#syntax-e _e8341483429_)))
                                    (let ((_hd8341983459_
                                           (##car _e8341883456_))
                                          (_tl8342083461_
                                           (##cdr _e8341883456_)))
                                      (if (and (gx#identifier? _hd8341983459_)
                                               (gx#core-identifier=?
                                                _hd8341983459_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8342083461_)
                                              (let ((_e8342183464_
                                                     (gx#syntax-e
                                                      _tl8342083461_)))
                                                (let ((_hd8342283467_
                                                       (##car _e8342183464_))
                                                      (_tl8342383469_
                                                       (##cdr _e8342183464_)))
                                                  (let ((_expr83472_
                                                         _hd8342283467_))
                                                    (if (gx#stx-null?
                                                         _tl8342383469_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83472_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8341783452_))
                (_E8341783452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8341783452_))
                                          (_E8341783452_))))
                                  (_E8341783452_))))
                           (_E8341583481_
                            (lambda ()
                              (let ((_id83479_ _e8341483429_))
                                (if (gx#identifier? _id83479_)
                                    (gx#core-bound-identifier?__%
                                     _id83479_
                                     gx#feature-binding?)
                                    (_E8341683475_))))))
                      (_E8341583481_))))
                 (_loop83316_
                  (lambda (_rest83346_)
                    (let* ((_e8334783355_ _rest83346_)
                           (_E8335383359_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8334783355_)))
                           (_E8334983363_
                            (lambda ()
                              (if (gx#stx-null? _e8334783355_)
                                  (if '#t '() (_E8335383359_))
                                  (_E8335383359_))))
                           (_E8334883409_
                            (lambda ()
                              (if (gx#stx-pair? _e8334783355_)
                                  (let ((_e8335083367_
                                         (gx#syntax-e _e8334783355_)))
                                    (let ((_hd8335183370_
                                           (##car _e8335083367_))
                                          (_tl8335283372_
                                           (##cdr _e8335083367_)))
                                      (let* ((_hd83375_ _hd8335183370_)
                                             (_rest83377_ _tl8335283372_))
                                        (if '#t
                                            (let* ((_e8337883385_ _hd83375_)
                                                   (_E8338083389_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8337883385_)))
                                                   (_E8337983405_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8337883385_)
                                                          (let ((_e8338183393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8337883385_)))
                    (let ((_hd8338283396_ (##car _e8338183393_))
                          (_tl8338383398_ (##cdr _e8338183393_)))
                      (let* ((_condition83401_ _hd8338283396_)
                             (_body83403_ _tl8338383398_))
                        (if '#t
                            (if (gx#stx-eq? _condition83401_ 'else)
                                (if (gx#stx-null? _rest83377_)
                                    _body83403_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83313_
                                     _hd83375_))
                                (if (_satisfied?83315_ _condition83401_)
                                    _body83403_
                                    (_loop83316_ _rest83377_)))
                            (_E8338083389_)))))
                  (_E8338083389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8337983405_))
                                            (_E8334983363_)))))
                                  (_E8334983363_)))))
                      (_E8334883409_)))))
          (let* ((_e8331783324_ _stx83313_)
                 (_E8331983328_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8331783324_)))
                 (_E8331883342_
                  (lambda ()
                    (if (gx#stx-pair? _e8331783324_)
                        (let ((_e8332083332_ (gx#syntax-e _e8331783324_)))
                          (let ((_hd8332183335_ (##car _e8332083332_))
                                (_tl8332283337_ (##cdr _e8332083332_)))
                            (let ((_clauses83340_ _tl8332283337_))
                              (if (gx#stx-list? _clauses83340_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83316_ _clauses83340_))
                                  (_E8331983328_)))))
                        (_E8331983328_)))))
            (_E8331883342_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83256_ _rpath83257_)
        (let* ((_e8325883268_ _stx83256_)
               (_E8326083272_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8325883268_)))
               (_E8325983299_
                (lambda ()
                  (if (gx#stx-pair? _e8325883268_)
                      (let ((_e8326183276_ (gx#syntax-e _e8325883268_)))
                        (let ((_hd8326283279_ (##car _e8326183276_))
                              (_tl8326383281_ (##cdr _e8326183276_)))
                          (if (gx#stx-pair? _tl8326383281_)
                              (let ((_e8326483284_
                                     (gx#syntax-e _tl8326383281_)))
                                (let ((_hd8326583287_ (##car _e8326483284_))
                                      (_tl8326683289_ (##cdr _e8326483284_)))
                                  (let ((_path83292_ _hd8326583287_))
                                    (if (gx#stx-null? _tl8326683289_)
                                        (if (gx#stx-string? _path83292_)
                                            (let ((_rpath83297_
                                                   (let ((_$e83294_
                                                          _rpath83257_))
                                                     (if _$e83294_
                                                         _$e83294_
                                                         (gx#core-resolve-path__%
                                                          _path83292_
                                                          (gx#stx-source
                                                           _stx83256_))))))
                                              (if (member _rpath83297_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83256_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83297_))
                                                    (gx#stx-source
                                                     _stx83256_)))))
                                            (_E8326083272_))
                                        (_E8326083272_)))))
                              (_E8326083272_))))
                      (_E8326083272_)))))
          (_E8325983299_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83306_)
        (let ((_rpath83308_ '#f))
          (gx#core-expand-include%__% _stx83306_ _rpath83308_))))
    (define gx#core-expand-include%
      (lambda _g84381_
        (let ((_g84380_ (##length _g84381_)))
          (cond ((##fx= _g84380_ 1)
                 (apply (lambda (_stx83306_)
                          (gx#core-expand-include%__0 _stx83306_))
                        _g84381_))
                ((##fx= _g84380_ 2)
                 (apply (lambda (_stx83310_ _rpath83311_)
                          (gx#core-expand-include%__% _stx83310_ _rpath83311_))
                        _g84381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84381_))))))
    (define gx#core-apply-expander__%
      (lambda (_K83225_ _stx83226_ _method83227_)
        (if (procedure? _K83225_)
            (let ((_$e83229_ (gx#stx-source _stx83226_)))
              (if _$e83229_
                  ((lambda (_g8323183233_)
                     (gx#stx-wrap-source (_K83225_ _stx83226_) _g8323183233_))
                   _$e83229_)
                  (_K83225_ _stx83226_)))
            (let ((_$e83236_ (bound-method-ref _K83225_ _method83227_)))
              (if _$e83236_
                  ((lambda (_g8323883240_)
                     (gx#core-apply-expander__%
                      _g8323883240_
                      _stx83226_
                      _method83227_))
                   _$e83236_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx83226_
                   _method83227_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83246_ _stx83247_)
        (let ((_method83249_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83246_ _stx83247_ _method83249_))))
    (define gx#core-apply-expander
      (lambda _g84383_
        (let ((_g84382_ (##length _g84383_)))
          (cond ((##fx= _g84382_ 2)
                 (apply (lambda (_K83246_ _stx83247_)
                          (gx#core-apply-expander__0 _K83246_ _stx83247_))
                        _g84383_))
                ((##fx= _g84382_ 3)
                 (apply (lambda (_K83251_ _stx83252_ _method83253_)
                          (gx#core-apply-expander__%
                           _K83251_
                           _stx83252_
                           _method83253_))
                        _g84383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84383_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self83221_ _stx83222_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx83222_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self83074_ _stx83075_)
        (let* ((_self8307683082_ _self83074_)
               (_E8307883086_
                (lambda () (error '"No clause matching" _self8307683082_)))
               (_K8307983091_
                (lambda (_K83089_)
                  (gx#core-apply-expander__0 _K83089_ _stx83075_))))
          (if (##structure-instance-of? _self8307683082_ 'gx#core-macro::t)
              (let* ((_e8308083094_
                      (##unchecked-structure-ref
                       _self8307683082_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83097_ _e8308083094_))
                (_K8307983091_ _K83097_))
              (_E8307883086_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self82927_ _stx82928_)
        (if (gx#sealed-syntax? _stx82928_)
            _stx82928_
            (let* ((_self8292982935_ _self82927_)
                   (_E8293182939_
                    (lambda () (error '"No clause matching" _self8292982935_)))
                   (_K8293282944_
                    (lambda (_K82942_)
                      (gx#core-apply-expander__0 _K82942_ _stx82928_))))
              (if (##structure-instance-of?
                   _self8292982935_
                   'gx#core-expander::t)
                  (let* ((_e8293382947_
                          (##unchecked-structure-ref
                           _self8292982935_
                           '1
                           gx#expander::t
                           '#f))
                         (_K82950_ _e8293382947_))
                    (_K8293282944_ _K82950_))
                  (_E8293182939_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self82789_ _stx82790_ _top?82791_)
        (if (_top?82791_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self82789_ _stx82790_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx82790_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self82796_ _stx82797_)
        (let ((_top?82799_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self82796_
           _stx82797_
           _top?82799_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84385_
        (let ((_g84384_ (##length _g84385_)))
          (cond ((##fx= _g84384_ 2)
                 (apply (lambda (_self82796_ _stx82797_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self82796_
                           _stx82797_))
                        _g84385_))
                ((##fx= _g84384_ 3)
                 (apply (lambda (_self82801_ _stx82802_ _top?82803_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self82801_
                           _stx82802_
                           _top?82803_))
                        _g84385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84385_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self82663_ _stx82664_)
        (gx#top-special-form::apply-macro-expander__%
         _self82663_
         _stx82664_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82488_ _stx82489_)
        (let* ((_self8249082496_ _self82488_)
               (_E8249282500_
                (lambda () (error '"No clause matching" _self8249082496_)))
               (_K8249382533_
                (lambda (_id82503_)
                  (let* ((_e8250482511_ _stx82489_)
                         (_E8250682515_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8250482511_)))
                         (_E8250582529_
                          (lambda ()
                            (if (gx#stx-pair? _e8250482511_)
                                (let ((_e8250782519_
                                       (gx#syntax-e _e8250482511_)))
                                  (let ((_hd8250882522_ (##car _e8250782519_))
                                        (_tl8250982524_ (##cdr _e8250782519_)))
                                    (let ((_body82527_ _tl8250982524_))
                                      (if '#t
                                          (gx#core-cons _id82503_ _body82527_)
                                          (_E8250682515_)))))
                                (_E8250682515_)))))
                    (_E8250582529_)))))
          (if (##structure-instance-of?
               _self8249082496_
               'gx#rename-macro-expander::t)
              (let* ((_e8249482536_
                      (##unchecked-structure-ref
                       _self8249082496_
                       '1
                       gx#expander::t
                       '#f))
                     (_id82539_ _e8249482536_))
                (_K8249382533_ _id82539_))
              (_E8249282500_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82314_ _stx82315_ _method82316_)
        (let* ((_self8231782325_ _self82314_)
               (_E8231982329_
                (lambda () (error '"No clause matching" _self8231782325_)))
               (_K8232082336_
                (lambda (_phi82332_ _ctx82333_ _K82334_)
                  (gx#core-apply-user-macro
                   _K82334_
                   _stx82315_
                   _ctx82333_
                   _phi82332_
                   _method82316_))))
          (if (##structure-instance-of? _self8231782325_ 'gx#macro-expander::t)
              (let* ((_e8232182339_
                      (##unchecked-structure-ref
                       _self8231782325_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82342_ _e8232182339_)
                     (_e8232282344_
                      (##unchecked-structure-ref
                       _self8231782325_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx82347_ _e8232282344_)
                     (_e8232382349_
                      (##unchecked-structure-ref
                       _self8231782325_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi82352_ _e8232382349_))
                (_K8232082336_ _phi82352_ _ctx82347_ _K82342_))
              (_E8231982329_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82357_ _stx82358_)
        (let ((_method82360_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82357_
           _stx82358_
           _method82360_))))
    (define gx#core-apply-user-expander
      (lambda _g84387_
        (let ((_g84386_ (##length _g84387_)))
          (cond ((##fx= _g84386_ 2)
                 (apply (lambda (_self82357_ _stx82358_)
                          (gx#core-apply-user-expander__0
                           _self82357_
                           _stx82358_))
                        _g84387_))
                ((##fx= _g84386_ 3)
                 (apply (lambda (_self82362_ _stx82363_ _method82364_)
                          (gx#core-apply-user-expander__%
                           _self82362_
                           _stx82363_
                           _method82364_))
                        _g84387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84387_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82304_ _stx82305_ _ctx82306_ _phi82307_ _method82308_)
        (let ((_mark82310_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82306_
                _phi82307_
                _stx82305_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82304_
               (gx#stx-apply-mark _stx82305_ _mark82310_)
               _method82308_)
              _mark82310_))
           gx#current-expander-marks
           (cons _mark82310_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx82156_ _phi82157_ _ctx82158_)
        (let _lp82160_ ((_bind82162_
                         (gx#core-resolve-identifier__%
                          _stx82156_
                          _phi82157_
                          _ctx82158_)))
          (if (##structure-direct-instance-of?
               _bind82162_
               'gx#import-binding::t)
              (_lp82160_
               (##unchecked-structure-ref
                _bind82162_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind82162_
                   'gx#alias-binding::t)
                  (_lp82160_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind82162_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi82157_
                    _ctx82158_))
                  _bind82162_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx82167_)
        (let* ((_phi82169_ (gx#current-expander-phi))
               (_ctx82171_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82167_ _phi82169_ _ctx82171_))))
    (define gx#resolve-identifier__1
      (lambda (_stx82173_ _phi82174_)
        (let ((_ctx82176_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82173_ _phi82174_ _ctx82176_))))
    (define gx#resolve-identifier
      (lambda _g84389_
        (let ((_g84388_ (##length _g84389_)))
          (cond ((##fx= _g84388_ 1)
                 (apply (lambda (_stx82167_)
                          (gx#resolve-identifier__0 _stx82167_))
                        _g84389_))
                ((##fx= _g84388_ 2)
                 (apply (lambda (_stx82173_ _phi82174_)
                          (gx#resolve-identifier__1 _stx82173_ _phi82174_))
                        _g84389_))
                ((##fx= _g84388_ 3)
                 (apply (lambda (_stx82178_ _phi82179_ _ctx82180_)
                          (gx#resolve-identifier__%
                           _stx82178_
                           _phi82179_
                           _ctx82180_))
                        _g84389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84389_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx82114_ _val82115_ _rebind?82116_ _phi82117_ _ctx82118_)
        (let ((_rebind?82120_
               (if (not _rebind?82116_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?82116_) _rebind?82116_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx82114_)
           _val82115_
           _rebind?82120_
           _phi82117_
           _ctx82118_))))
    (define gx#bind-identifier!__0
      (lambda (_stx82125_ _val82126_)
        (let* ((_rebind?82128_ '#f)
               (_phi82130_ (gx#current-expander-phi))
               (_ctx82132_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82125_
           _val82126_
           _rebind?82128_
           _phi82130_
           _ctx82132_))))
    (define gx#bind-identifier!__1
      (lambda (_stx82134_ _val82135_ _rebind?82136_)
        (let* ((_phi82138_ (gx#current-expander-phi))
               (_ctx82140_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82134_
           _val82135_
           _rebind?82136_
           _phi82138_
           _ctx82140_))))
    (define gx#bind-identifier!__2
      (lambda (_stx82142_ _val82143_ _rebind?82144_ _phi82145_)
        (let ((_ctx82147_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82142_
           _val82143_
           _rebind?82144_
           _phi82145_
           _ctx82147_))))
    (define gx#bind-identifier!
      (lambda _g84391_
        (let ((_g84390_ (##length _g84391_)))
          (cond ((##fx= _g84390_ 2)
                 (apply (lambda (_stx82125_ _val82126_)
                          (gx#bind-identifier!__0 _stx82125_ _val82126_))
                        _g84391_))
                ((##fx= _g84390_ 3)
                 (apply (lambda (_stx82134_ _val82135_ _rebind?82136_)
                          (gx#bind-identifier!__1
                           _stx82134_
                           _val82135_
                           _rebind?82136_))
                        _g84391_))
                ((##fx= _g84390_ 4)
                 (apply (lambda (_stx82142_
                                 _val82143_
                                 _rebind?82144_
                                 _phi82145_)
                          (gx#bind-identifier!__2
                           _stx82142_
                           _val82143_
                           _rebind?82144_
                           _phi82145_))
                        _g84391_))
                ((##fx= _g84390_ 5)
                 (apply (lambda (_stx82149_
                                 _val82150_
                                 _rebind?82151_
                                 _phi82152_
                                 _ctx82153_)
                          (gx#bind-identifier!__%
                           _stx82149_
                           _val82150_
                           _rebind?82151_
                           _phi82152_
                           _ctx82153_))
                        _g84391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84391_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx82086_ _phi82087_ _ctx82088_)
        (let _lp82090_ ((_e82092_ _stx82086_)
                        (_marks82093_ (gx#current-expander-marks)))
          (if (symbol? _e82092_)
              (gx#core-resolve-binding
               _e82092_
               _phi82087_
               _phi82087_
               _ctx82088_
               (reverse _marks82093_))
              (if (gx#identifier-quote? _e82092_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e82092_ '1 gx#AST::t '#f)
                   _phi82087_
                   '0
                   (##unchecked-structure-ref
                    _e82092_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e82092_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e82092_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e82092_ '1 gx#AST::t '#f)
                       _phi82087_
                       _phi82087_
                       _ctx82088_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82092_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82093_))
                      (if (##structure-direct-instance-of?
                           _e82092_
                           'gx#syntax-wrap::t)
                          (_lp82090_
                           (##unchecked-structure-ref
                            _e82092_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e82092_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks82093_))
                          (if (##structure-instance-of?
                               _e82092_
                               'gerbil#AST::t)
                              (_lp82090_
                               (##unchecked-structure-ref
                                _e82092_
                                '1
                                gx#AST::t
                                '#f)
                               _marks82093_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx82086_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx82098_)
        (let* ((_phi82100_ (gx#current-expander-phi))
               (_ctx82102_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82098_ _phi82100_ _ctx82102_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx82104_ _phi82105_)
        (let ((_ctx82107_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82104_ _phi82105_ _ctx82107_))))
    (define gx#core-resolve-identifier
      (lambda _g84393_
        (let ((_g84392_ (##length _g84393_)))
          (cond ((##fx= _g84392_ 1)
                 (apply (lambda (_stx82098_)
                          (gx#core-resolve-identifier__0 _stx82098_))
                        _g84393_))
                ((##fx= _g84392_ 2)
                 (apply (lambda (_stx82104_ _phi82105_)
                          (gx#core-resolve-identifier__1
                           _stx82104_
                           _phi82105_))
                        _g84393_))
                ((##fx= _g84392_ 3)
                 (apply (lambda (_stx82109_ _phi82110_ _ctx82111_)
                          (gx#core-resolve-identifier__%
                           _stx82109_
                           _phi82110_
                           _ctx82111_))
                        _g84393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84393_))))))
    (define gx#core-resolve-binding
      (lambda (_id81999_ _phi82000_ _src-phi82001_ _ctx82002_ _marks82003_)
        (letrec ((_resolve82005_
                  (lambda (_ctx82073_ _src-phi82074_ _key82075_)
                    (let _lp82077_ ((_ctx82079_
                                     (gx#core-context-shift
                                      _ctx82073_
                                      _phi82000_))
                                    (_dphi82080_
                                     (fx- _phi82000_ _src-phi82074_)))
                      (let ((_$e82082_
                             (gx#core-context-resolve _ctx82079_ _key82075_)))
                        (if _$e82082_
                            (values _$e82082_)
                            (if (fxzero? _dphi82080_)
                                '#f
                                (if (fxpositive? _dphi82080_)
                                    (_lp82077_
                                     (gx#core-context-shift _ctx82079_ '-1)
                                     (fx- _dphi82080_ '1))
                                    (_lp82077_
                                     (gx#core-context-shift _ctx82079_ '1)
                                     (fx+ _dphi82080_ '1))))))))))
          (let _lp82007_ ((_ctx82009_ _ctx82002_)
                          (_src-phi82010_ _src-phi82001_)
                          (_rest82011_ _marks82003_))
            (let* ((_rest8201282020_ _rest82011_)
                   (_else8201482028_
                    (lambda ()
                      (_resolve82005_ _ctx82009_ _src-phi82010_ _id81999_)))
                   (_K8201682061_
                    (lambda (_rest82031_ _hd82032_)
                      (let* ((_hd8203382039_ _hd82032_)
                             (_E8203582043_
                              (lambda ()
                                (error '"No clause matching" _hd8203382039_)))
                             (_K8203682053_
                              (lambda (_subst82046_)
                                (let ((_$e82050_
                                       (let ((_key82048_
                                              (if _subst82046_
                                                  (hash-get
                                                   _subst82046_
                                                   _id81999_)
                                                  '#f)))
                                         (if _key82048_
                                             (_resolve82005_
                                              _ctx82009_
                                              _src-phi82010_
                                              _key82048_)
                                             '#f))))
                                  (if _$e82050_
                                      _$e82050_
                                      (_lp82007_
                                       (##unchecked-structure-ref
                                        _hd82032_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd82032_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest82031_))))))
                        (if (##structure-instance-of?
                             _hd8203382039_
                             'gx#expander-mark::t)
                            (let* ((_e8203782056_
                                    (##unchecked-structure-ref
                                     _hd8203382039_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst82059_ _e8203782056_))
                              (_K8203682053_ _subst82059_))
                            (_E8203582043_))))))
              (if (##pair? _rest8201282020_)
                  (let ((_hd8201782064_ (##car _rest8201282020_))
                        (_tl8201882066_ (##cdr _rest8201282020_)))
                    (let* ((_hd82069_ _hd8201782064_)
                           (_rest82071_ _tl8201882066_))
                      (_K8201682061_ _rest82071_ _hd82069_)))
                  (_else8201482028_)))))))
    (define gx#core-bind!__%
      (lambda (_key81875_ _val81876_ _rebind?81877_ _phi81878_ _ctx81879_)
        (letrec ((_update-binding81881_
                  (lambda (_xval81952_)
                    (if (or (_rebind?81877_ _ctx81879_ _xval81952_ _val81876_)
                            (and (##structure-direct-instance-of?
                                  _xval81952_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval81952_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val81876_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val81876_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval81952_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val81876_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val81876_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval81952_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val81876_
                        (if (and (##structure-direct-instance-of?
                                  _val81876_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val81876_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval81952_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val81876_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval81952_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval81952_
                            (if (and (##structure-direct-instance-of?
                                      _val81876_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval81952_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key81875_
                                 (cons (##unchecked-structure-ref
                                        _val81876_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val81876_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval81952_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval81952_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval81952_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval81952_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key81875_
                                 _val81876_
                                 _xval81952_))))))
                 (_gensubst81882_
                  (lambda (_subst81947_ _id81948_)
                    (let ((_eid81950_
                           (gensym (if (uninterned-symbol? _id81948_)
                                       '%
                                       _id81948_))))
                      (hash-put! _subst81947_ _id81948_ _eid81950_)
                      _eid81950_)))
                 (_subst!81883_
                  (lambda (_key81885_)
                    (let* ((_key8188681894_ _key81885_)
                           (_else8188881902_ (lambda () _key81885_))
                           (_K8189081935_
                            (lambda (_mark81905_ _id81906_)
                              (let* ((_mark8190781913_ _mark81905_)
                                     (_E8190981917_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8190781913_)))
                                     (_K8191081927_
                                      (lambda (_subst81920_)
                                        (if (not _subst81920_)
                                            (let ((_subst81922_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark81905_
                                               _subst81922_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst81882_
                                               _subst81922_
                                               _id81906_))
                                            (let ((_$e81924_
                                                   (hash-get
                                                    _subst81920_
                                                    _id81906_)))
                                              (if _$e81924_
                                                  (values _$e81924_)
                                                  (_gensubst81882_
                                                   _subst81920_
                                                   _id81906_)))))))
                                (if (##structure-instance-of?
                                     _mark8190781913_
                                     'gx#expander-mark::t)
                                    (let* ((_e8191181930_
                                            (##unchecked-structure-ref
                                             _mark8190781913_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst81933_ _e8191181930_))
                                      (_K8191081927_ _subst81933_))
                                    (_E8190981917_))))))
                      (if (##pair? _key8188681894_)
                          (let ((_hd8189181938_ (##car _key8188681894_))
                                (_tl8189281940_ (##cdr _key8188681894_)))
                            (let* ((_id81943_ _hd8189181938_)
                                   (_mark81945_ _tl8189281940_))
                              (_K8189081935_ _mark81945_ _id81943_)))
                          (_else8188881902_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx81879_ _phi81878_)
           (_subst!81883_ _key81875_)
           _val81876_
           _update-binding81881_))))
    (define gx#core-bind!__0
      (lambda (_key81969_ _val81970_)
        (let* ((_rebind?81972_ false)
               (_phi81974_ (gx#current-expander-phi))
               (_ctx81976_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81969_
           _val81970_
           _rebind?81972_
           _phi81974_
           _ctx81976_))))
    (define gx#core-bind!__1
      (lambda (_key81978_ _val81979_ _rebind?81980_)
        (let* ((_phi81982_ (gx#current-expander-phi))
               (_ctx81984_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81978_
           _val81979_
           _rebind?81980_
           _phi81982_
           _ctx81984_))))
    (define gx#core-bind!__2
      (lambda (_key81986_ _val81987_ _rebind?81988_ _phi81989_)
        (let ((_ctx81991_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81986_
           _val81987_
           _rebind?81988_
           _phi81989_
           _ctx81991_))))
    (define gx#core-bind!
      (lambda _g84395_
        (let ((_g84394_ (##length _g84395_)))
          (cond ((##fx= _g84394_ 2)
                 (apply (lambda (_key81969_ _val81970_)
                          (gx#core-bind!__0 _key81969_ _val81970_))
                        _g84395_))
                ((##fx= _g84394_ 3)
                 (apply (lambda (_key81978_ _val81979_ _rebind?81980_)
                          (gx#core-bind!__1
                           _key81978_
                           _val81979_
                           _rebind?81980_))
                        _g84395_))
                ((##fx= _g84394_ 4)
                 (apply (lambda (_key81986_
                                 _val81987_
                                 _rebind?81988_
                                 _phi81989_)
                          (gx#core-bind!__2
                           _key81986_
                           _val81987_
                           _rebind?81988_
                           _phi81989_))
                        _g84395_))
                ((##fx= _g84394_ 5)
                 (apply (lambda (_key81993_
                                 _val81994_
                                 _rebind?81995_
                                 _phi81996_
                                 _ctx81997_)
                          (gx#core-bind!__%
                           _key81993_
                           _val81994_
                           _rebind?81995_
                           _phi81996_
                           _ctx81997_))
                        _g84395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84395_))))))
    (define gx#core-identifier-key
      (lambda (_stx81809_)
        (if (symbol? _stx81809_)
            (let* ((_g8181081818_ (gx#current-expander-marks))
                   (_else8181281826_ (lambda () _stx81809_))
                   (_K8181481831_
                    (lambda (_hd81829_) (cons _stx81809_ _hd81829_))))
              (if (##pair? _g8181081818_)
                  (let* ((_hd8181581834_ (##car _g8181081818_))
                         (_hd81837_ _hd8181581834_))
                    (_K8181481831_ _hd81837_))
                  (_else8181281826_)))
            (if (gx#identifier? _stx81809_)
                (let* ((_id81839_ (gx#syntax-local-unwrap _stx81809_))
                       (_eid81841_ (gx#stx-e _id81839_))
                       (_marks81843_ (gx#stx-identifier-marks* _id81839_)))
                  (let* ((_marks8184581853_ _marks81843_)
                         (_else8184781861_ (lambda () _eid81841_))
                         (_K8184981866_
                          (lambda (_hd81864_) (cons _eid81841_ _hd81864_))))
                    (if (##pair? _marks8184581853_)
                        (let* ((_hd8185081869_ (##car _marks8184581853_))
                               (_hd81872_ _hd8185081869_))
                          (_K8184981866_ _hd81872_))
                        (_else8184781861_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx81809_)))))
    (define gx#core-context-shift
      (lambda (_ctx81754_ _phi81755_)
        (letrec ((_make-phi81757_
                  (lambda (_super81807_)
                    (let ((__obj84366
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84366
                       (gensym 'phi)
                       _super81807_)
                      __obj84366)))
                 (_make-phi/up81758_
                  (lambda (_ctx81802_ _super81803_)
                    (let ((_ctx+181805_ (_make-phi81757_ _super81803_)))
                      (##unchecked-structure-set!
                       _ctx81802_
                       _ctx+181805_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+181805_
                       _ctx81802_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+181805_)))
                 (_make-phi/down81759_
                  (lambda (_ctx81797_ _super81798_)
                    (let ((_ctx-181800_ (_make-phi81757_ _super81798_)))
                      (##unchecked-structure-set!
                       _ctx-181800_
                       _ctx81797_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx81797_
                       _ctx-181800_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-181800_)))
                 (_shift81760_
                  (lambda (_ctx81781_
                           _delta81782_
                           _make-delta-context81783_
                           _phi81784_
                           _K81785_)
                    (let ((_$e81787_
                           (##unchecked-structure-ref
                            _ctx81781_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e81787_
                          ((lambda (_super81790_)
                             (let* ((_super81792_
                                     (_K81785_ _super81790_ _delta81782_))
                                    (_ctx+d81794_
                                     (_make-delta-context81783_
                                      _ctx81781_
                                      _super81792_)))
                               (_K81785_
                                _ctx+d81794_
                                (fx- _phi81784_ _delta81782_))))
                           _$e81787_)
                          (error '"Bad context" _ctx81781_))))))
          (let _K81762_ ((_ctx81764_ _ctx81754_) (_phi81765_ _phi81755_))
            (if (fxzero? _phi81765_)
                _ctx81764_
                (if (fx> (##vector-length _ctx81764_) '3)
                    (if (fxpositive? _phi81765_)
                        (let ((_$e81767_
                               (##unchecked-structure-ref
                                _ctx81764_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e81767_
                              ((lambda (_g8176981771_)
                                 (_K81762_ _g8176981771_ (fx- _phi81765_ '1)))
                               _$e81767_)
                              (_shift81760_
                               _ctx81764_
                               '1
                               _make-phi/up81758_
                               _phi81765_
                               _K81762_)))
                        (let ((_$e81774_
                               (##unchecked-structure-ref
                                _ctx81764_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e81774_
                              ((lambda (_g8177681778_)
                                 (_K81762_ _g8177681778_ (fx+ _phi81765_ '1)))
                               _$e81774_)
                              (_shift81760_
                               _ctx81764_
                               '-1
                               _make-phi/down81759_
                               _phi81765_
                               _K81762_))))
                    _ctx81764_))))))
    (define gx#core-context-get
      (lambda (_ctx81751_ _key81752_)
        (hash-get
         (##unchecked-structure-ref _ctx81751_ '2 gx#expander-context::t '#f)
         _key81752_)))
    (define gx#core-context-put!
      (lambda (_ctx81747_ _key81748_ _val81749_)
        (hash-put!
         (##unchecked-structure-ref _ctx81747_ '2 gx#expander-context::t '#f)
         _key81748_
         _val81749_)))
    (define gx#core-context-resolve
      (lambda (_ctx81734_ _key81735_)
        (let _lp81737_ ((_ctx81739_ _ctx81734_))
          (let ((_$e81741_ (gx#core-context-get _ctx81739_ _key81735_)))
            (if _$e81741_
                (values _$e81741_)
                (let ((_$e81744_
                       (if (fx> (##vector-length _ctx81739_) '3)
                           (##unchecked-structure-ref
                            _ctx81739_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e81744_ (_lp81737_ _$e81744_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx81724_ _key81725_ _val81726_ _rebind81727_)
        (let ((_$e81729_ (gx#core-context-get _ctx81724_ _key81725_)))
          (if _$e81729_
              ((lambda (_xval81732_)
                 (gx#core-context-put!
                  _ctx81724_
                  _key81725_
                  (_rebind81727_ _xval81732_)))
               _$e81729_)
              (gx#core-context-put! _ctx81724_ _key81725_ _val81726_)))))
    (define gx#core-context-top__%
      (lambda (_ctx81702_ _stop?81703_)
        (let _lp81705_ ((_ctx81707_ _ctx81702_))
          (if (_stop?81703_ _ctx81707_)
              _ctx81707_
              (if (##structure-instance-of? _ctx81707_ 'gx#context-phi::t)
                  (_lp81705_
                   (##unchecked-structure-ref
                    _ctx81707_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx81713_ (gx#current-expander-context))
               (_stop?81715_ gx#top-context?))
          (gx#core-context-top__% _ctx81713_ _stop?81715_))))
    (define gx#core-context-top__1
      (lambda (_ctx81717_)
        (let ((_stop?81719_ gx#top-context?))
          (gx#core-context-top__% _ctx81717_ _stop?81719_))))
    (define gx#core-context-top
      (lambda _g84397_
        (let ((_g84396_ (##length _g84397_)))
          (cond ((##fx= _g84396_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84397_))
                ((##fx= _g84396_ 1)
                 (apply (lambda (_ctx81717_)
                          (gx#core-context-top__1 _ctx81717_))
                        _g84397_))
                ((##fx= _g84396_ 2)
                 (apply (lambda (_ctx81721_ _stop?81722_)
                          (gx#core-context-top__% _ctx81721_ _stop?81722_))
                        _g84397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84397_))))))
    (define gx#core-context-root__%
      (lambda (_ctx81687_)
        (let _lp81689_ ((_ctx81691_ _ctx81687_))
          (if (##structure-instance-of? _ctx81691_ 'gx#context-phi::t)
              (_lp81689_
               (##unchecked-structure-ref _ctx81691_ '3 gx#phi-context::t '#f))
              _ctx81691_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx81697_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx81697_))))
    (define gx#core-context-root
      (lambda _g84399_
        (let ((_g84398_ (##length _g84399_)))
          (cond ((##fx= _g84398_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84399_))
                ((##fx= _g84398_ 1)
                 (apply (lambda (_ctx81699_)
                          (gx#core-context-root__% _ctx81699_))
                        _g84399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84399_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx81668_ . __8166581669_)
        (let ((_$e81672_ (gx#current-expander-allow-rebind?)))
          (if _$e81672_
              _$e81672_
              (if (##structure-instance-of? _ctx81668_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx81668_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx81668_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx81679_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx81679_))))
    (define gx#core-context-rebind?
      (lambda _g84401_
        (let ((_g84400_ (##length _g84401_)))
          (cond ((##fx= _g84400_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84401_))
                ((##fx= _g84400_ 1)
                 (apply (lambda (_ctx81681_)
                          (gx#core-context-rebind?__% _ctx81681_))
                        _g84401_))
                ((##fx>= _g84400_ 1)
                 (apply gx#core-context-rebind?__% _g84401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84401_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx81651_)
        (let ((_$e81653_ (gx#core-context-top__1 _ctx81651_)))
          (if _$e81653_
              ((lambda (_ctx81656_)
                 (if (##structure-instance-of?
                      _ctx81656_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx81656_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e81653_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx81662_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx81662_))))
    (define gx#core-context-namespace
      (lambda _g84403_
        (let ((_g84402_ (##length _g84403_)))
          (cond ((##fx= _g84402_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84403_))
                ((##fx= _g84402_ 1)
                 (apply (lambda (_ctx81664_)
                          (gx#core-context-namespace__% _ctx81664_))
                        _g84403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84403_))))))
    (define gx#expander-binding?__%
      (lambda (_bind81637_ _is?81638_)
        (if (##structure-direct-instance-of? _bind81637_ 'gx#syntax-binding::t)
            (_is?81638_
             (##unchecked-structure-ref
              _bind81637_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind81643_)
        (let ((_is?81645_ gx#expander?))
          (gx#expander-binding?__% _bind81643_ _is?81645_))))
    (define gx#expander-binding?
      (lambda _g84405_
        (let ((_g84404_ (##length _g84405_)))
          (cond ((##fx= _g84404_ 1)
                 (apply (lambda (_bind81643_)
                          (gx#expander-binding?__0 _bind81643_))
                        _g84405_))
                ((##fx= _g84404_ 2)
                 (apply (lambda (_bind81647_ _is?81648_)
                          (gx#expander-binding?__% _bind81647_ _is?81648_))
                        _g84405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84405_))))))
    (define gx#core-expander-binding?
      (lambda (_bind81634_)
        (gx#expander-binding?__% _bind81634_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind81632_)
        (gx#expander-binding?__% _bind81632_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind81626_)
        (letrec ((_direct-special-form?81628_
                  (lambda (_obj81630_)
                    (##structure-direct-instance-of?
                     _obj81630_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind81626_ _direct-special-form?81628_))))
    (define gx#special-form-binding?
      (lambda (_bind81624_)
        (gx#expander-binding?__% _bind81624_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind81615_)
        (letrec ((_feature?81617_
                  (lambda (_e81619_)
                    (let ((_$e81621_
                           (##structure-instance-of?
                            _e81619_
                            'gx#feature-expander::t)))
                      (if _$e81621_
                          _$e81621_
                          (##structure-instance-of?
                           _e81619_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind81615_ _feature?81617_))))
    (define gx#private-feature-binding?
      (lambda (_bind81613_)
        (gx#expander-binding?__% _bind81613_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id81600_ _bound?81601_)
        (if (gx#identifier? _id81600_)
            (_bound?81601_ (gx#resolve-identifier__0 _id81600_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id81606_)
        (let ((_bound?81608_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id81606_ _bound?81608_))))
    (define gx#core-bound-identifier?
      (lambda _g84407_
        (let ((_g84406_ (##length _g84407_)))
          (cond ((##fx= _g84406_ 1)
                 (apply (lambda (_id81606_)
                          (gx#core-bound-identifier?__0 _id81606_))
                        _g84407_))
                ((##fx= _g84406_ 2)
                 (apply (lambda (_id81610_ _bound?81611_)
                          (gx#core-bound-identifier?__%
                           _id81610_
                           _bound?81611_))
                        _g84407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84407_))))))
    (define gx#core-identifier=?
      (lambda (_x81590_ _y81591_)
        (letrec ((_y=?81593_
                  (lambda (_xid81597_)
                    ((if (list? _y81591_) memq eq?) _xid81597_ _y81591_))))
          (let ((_bind81595_ (gx#resolve-identifier__0 _x81590_)))
            (if (##structure-instance-of? _bind81595_ 'gx#binding::t)
                (_y=?81593_
                 (##unchecked-structure-ref _bind81595_ '1 gx#binding::t '#f))
                (_y=?81593_ (gx#stx-e _x81590_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e81588_)
        (if (interned-symbol? _e81588_)
            (string-index__0 (symbol->string _e81588_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81543_ _src81544_ _ctx81545_ _marks81546_)
        (if (##structure? _stx81543_)
            (let ((_$e81548_ (gx#sealed-syntax-unwrap _stx81543_)))
              (if _$e81548_
                  (values _$e81548_)
                  (if (gx#identifier? _stx81543_)
                      (let ((_id81551_
                             (gx#stx-unwrap__% _stx81543_ _marks81546_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81551_ '1 gx#AST::t '#f)
                         (let ((_$e81553_
                                (##unchecked-structure-ref
                                 _id81551_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e81553_ _$e81553_ _src81544_))
                         _ctx81545_
                         (##unchecked-structure-ref
                          _id81551_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81543_)
                       (let ((_$e81556_ (gx#stx-source _stx81543_)))
                         (if _$e81556_ _$e81556_ _src81544_))
                       _ctx81545_
                       (reverse _marks81546_)))))
            (##structure
             gx#syntax-quote::t
             _stx81543_
             _src81544_
             _ctx81545_
             (reverse _marks81546_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81562_)
        (let* ((_src81564_ '#f)
               (_ctx81566_ (gx#current-expander-context))
               (_marks81568_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81562_
           _src81564_
           _ctx81566_
           _marks81568_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81570_ _src81571_)
        (let* ((_ctx81573_ (gx#current-expander-context))
               (_marks81575_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81570_
           _src81571_
           _ctx81573_
           _marks81575_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81577_ _src81578_ _ctx81579_)
        (let ((_marks81581_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81577_
           _src81578_
           _ctx81579_
           _marks81581_))))
    (define gx#core-quote-syntax
      (lambda _g84409_
        (let ((_g84408_ (##length _g84409_)))
          (cond ((##fx= _g84408_ 1)
                 (apply (lambda (_stx81562_)
                          (gx#core-quote-syntax__0 _stx81562_))
                        _g84409_))
                ((##fx= _g84408_ 2)
                 (apply (lambda (_stx81570_ _src81571_)
                          (gx#core-quote-syntax__1 _stx81570_ _src81571_))
                        _g84409_))
                ((##fx= _g84408_ 3)
                 (apply (lambda (_stx81577_ _src81578_ _ctx81579_)
                          (gx#core-quote-syntax__2
                           _stx81577_
                           _src81578_
                           _ctx81579_))
                        _g84409_))
                ((##fx= _g84408_ 4)
                 (apply (lambda (_stx81583_ _src81584_ _ctx81585_ _marks81586_)
                          (gx#core-quote-syntax__%
                           _stx81583_
                           _src81584_
                           _ctx81585_
                           _marks81586_))
                        _g84409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84409_))))))
    (define gx#core-cons
      (lambda (_hd81539_ _tl81540_)
        (cons (gx#core-quote-syntax__0 _hd81539_) _tl81540_)))
    (define gx#core-list
      (lambda (_hd81536_ . _rest81537_)
        (cons (gx#core-quote-syntax__0 _hd81536_) _rest81537_)))
    (define gx#core-cons*
      (lambda (_hd81533_ . _rest81534_)
        (apply cons* (gx#core-quote-syntax__0 _hd81533_) _rest81534_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81507_ _rel81508_)
        (let ((_path81520_ (gx#stx-e _stx-path81507_))
              (_reldir81521_
               (let _lp81510_ ((_relsrc81512_
                                (let ((_$e81517_
                                       (gx#stx-source _stx-path81507_)))
                                  (if _$e81517_ _$e81517_ _rel81508_))))
                 (if (##structure-instance-of? _relsrc81512_ 'gerbil#AST::t)
                     (_lp81510_
                      (let ((_$e81514_ (gx#stx-source _relsrc81512_)))
                        (if _$e81514_ _$e81514_ (gx#stx-e _relsrc81512_))))
                     (if (source-location-path? _relsrc81512_)
                         (path-directory (source-location-path _relsrc81512_))
                         (if (string? _relsrc81512_)
                             (path-directory _relsrc81512_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81520_ (path-normalize _reldir81521_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81526_)
        (let ((_rel81528_ '#f))
          (gx#core-resolve-path__% _stx-path81526_ _rel81528_))))
    (define gx#core-resolve-path
      (lambda _g84411_
        (let ((_g84410_ (##length _g84411_)))
          (cond ((##fx= _g84410_ 1)
                 (apply (lambda (_stx-path81526_)
                          (gx#core-resolve-path__0 _stx-path81526_))
                        _g84411_))
                ((##fx= _g84410_ 2)
                 (apply (lambda (_stx-path81530_ _rel81531_)
                          (gx#core-resolve-path__% _stx-path81530_ _rel81531_))
                        _g84411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84411_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81463_ _ctx81464_)
        (let* ((_repr8146581472_ _repr81463_)
               (_E8146781476_
                (lambda () (error '"No clause matching" _repr8146581472_)))
               (_K8146881484_
                (lambda (_subs81479_ _phi81480_)
                  (let ((_subst81482_
                         (if (not (null? _subs81479_))
                             (list->hash-table-eq _subs81479_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81482_
                     _ctx81464_
                     _phi81480_
                     '#f)))))
          (if (##pair? _repr8146581472_)
              (let ((_hd8146981487_ (##car _repr8146581472_))
                    (_tl8147081489_ (##cdr _repr8146581472_)))
                (let* ((_phi81492_ _hd8146981487_)
                       (_subs81494_ _tl8147081489_))
                  (_K8146881484_ _subs81494_ _phi81492_)))
              (_E8146781476_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81499_)
        (let ((_ctx81501_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81499_ _ctx81501_))))
    (define gx#core-deserialize-mark
      (lambda _g84413_
        (let ((_g84412_ (##length _g84413_)))
          (cond ((##fx= _g84412_ 1)
                 (apply (lambda (_repr81499_)
                          (gx#core-deserialize-mark__0 _repr81499_))
                        _g84413_))
                ((##fx= _g84412_ 2)
                 (apply (lambda (_repr81503_ _ctx81504_)
                          (gx#core-deserialize-mark__% _repr81503_ _ctx81504_))
                        _g84413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84413_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81460_)
        (gx#stx-rewrap _stx81460_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81458_)
        (gx#stx-unwrap__% _stx81458_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81428_)
        (let* ((_g8142981437_ (gx#current-expander-marks))
               (_else8143181445_ (lambda () _stx81428_))
               (_K8143381450_
                (lambda (_hd81448_) (gx#stx-apply-mark _stx81428_ _hd81448_))))
          (if (##pair? _g8142981437_)
              (let* ((_hd8143481453_ (##car _g8142981437_))
                     (_hd81456_ _hd8143481453_))
                (_K8143381450_ _hd81456_))
              (_else8143181445_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81413_ _E81414_)
        (let ((_bind81416_ (gx#resolve-identifier__0 _stx81413_)))
          (if (##structure-direct-instance-of?
               _bind81416_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind81416_
               '4
               gx#syntax-binding::t
               '#f)
              (_E81414_ _stx81413_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81421_)
        (let ((_E81423_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81421_ _E81423_))))
    (define gx#syntax-local-e
      (lambda _g84415_
        (let ((_g84414_ (##length _g84415_)))
          (cond ((##fx= _g84414_ 1)
                 (apply (lambda (_stx81421_) (gx#syntax-local-e__0 _stx81421_))
                        _g84415_))
                ((##fx= _g84414_ 2)
                 (apply (lambda (_stx81425_ _E81426_)
                          (gx#syntax-local-e__% _stx81425_ _E81426_))
                        _g84415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84415_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81397_ _E81398_)
        (let ((_e81400_ (gx#syntax-local-e__% _stx81397_ _E81398_)))
          (if (##structure-instance-of? _e81400_ 'gx#expander::t)
              (##structure-ref _e81400_ '1 gx#expander::t '#f)
              _e81400_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81405_)
        (let ((_E81407_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81405_ _E81407_))))
    (define gx#syntax-local-value
      (lambda _g84417_
        (let ((_g84416_ (##length _g84417_)))
          (cond ((##fx= _g84416_ 1)
                 (apply (lambda (_stx81405_)
                          (gx#syntax-local-value__0 _stx81405_))
                        _g84417_))
                ((##fx= _g84416_ 2)
                 (apply (lambda (_stx81409_ _E81410_)
                          (gx#syntax-local-value__% _stx81409_ _E81410_))
                        _g84417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84417_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81394_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81394_)))))
