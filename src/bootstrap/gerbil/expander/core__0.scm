(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707618265)
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
      (lambda _$args143563_
        (apply make-struct-instance gx#expander-context::t _$args143563_)))
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
      (lambda _$args143560_
        (apply make-struct-instance gx#root-context::t _$args143560_)))
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
      (lambda _$args143557_
        (apply make-struct-instance gx#phi-context::t _$args143557_)))
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
      (lambda _$args143554_
        (apply make-struct-instance gx#top-context::t _$args143554_)))
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
      (lambda _$args143551_
        (apply make-struct-instance gx#module-context::t _$args143551_)))
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
      (lambda _$args143548_
        (apply make-struct-instance gx#prelude-context::t _$args143548_)))
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
      (lambda _$args143545_
        (apply make-struct-instance gx#local-context::t _$args143545_)))
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
      (lambda (_self143529_ _id143530_ _super143531_)
        (if (##fx< '3 (##structure-length _self143529_))
            (begin
              (##unchecked-structure-set!
               _self143529_
               _id143530_
               '1
               (##structure-type _self143529_)
               '#f)
              (##unchecked-structure-set!
               _self143529_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143529_)
               '#f)
              (##unchecked-structure-set!
               _self143529_
               _super143531_
               '3
               (##structure-type _self143529_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143529_
                   '3
                   (##vector-length _self143529_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143536_ _id143537_)
        (let ((_super143539_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143536_ _id143537_ _super143539_))))
    (define gx#phi-context:::init!
      (lambda _g148074_
        (let ((_g148073_ (##length _g148074_)))
          (cond ((##fx= _g148073_ 2)
                 (apply (lambda (_self143536_ _id143537_)
                          (gx#phi-context:::init!__0 _self143536_ _id143537_))
                        _g148074_))
                ((##fx= _g148073_ 3)
                 (apply (lambda (_self143541_ _id143542_ _super143543_)
                          (gx#phi-context:::init!__%
                           _self143541_
                           _id143542_
                           _super143543_))
                        _g148074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g148074_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143393_ _super143394_)
        (if (##fx< '3 (##structure-length _self143393_))
            (begin
              (##unchecked-structure-set!
               _self143393_
               (gensym 'L)
               '1
               (##structure-type _self143393_)
               '#f)
              (##unchecked-structure-set!
               _self143393_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143393_)
               '#f)
              (##unchecked-structure-set!
               _self143393_
               _super143394_
               '3
               (##structure-type _self143393_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143393_
                   '3
                   (##vector-length _self143393_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143399_)
        (let ((_super143401_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143399_ _super143401_))))
    (define gx#local-context:::init!
      (lambda _g148076_
        (let ((_g148075_ (##length _g148076_)))
          (cond ((##fx= _g148075_ 1)
                 (apply (lambda (_self143399_)
                          (gx#local-context:::init!__0 _self143399_))
                        _g148076_))
                ((##fx= _g148075_ 2)
                 (apply (lambda (_self143403_ _super143404_)
                          (gx#local-context:::init!__%
                           _self143403_
                           _super143404_))
                        _g148076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g148076_))))))
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
      (lambda _$args143267_
        (apply make-struct-instance gx#binding::t _$args143267_)))
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
      (lambda _$args143264_
        (apply make-struct-instance gx#runtime-binding::t _$args143264_)))
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
      (lambda _$args143261_
        (apply make-struct-instance gx#local-binding::t _$args143261_)))
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
      (lambda _$args143258_
        (apply make-struct-instance gx#top-binding::t _$args143258_)))
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
      (lambda _$args143255_
        (apply make-struct-instance gx#module-binding::t _$args143255_)))
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
      (lambda _$args143252_
        (apply make-struct-instance gx#extern-binding::t _$args143252_)))
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
      (lambda _$args143249_
        (apply make-struct-instance gx#syntax-binding::t _$args143249_)))
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
      (lambda _$args143246_
        (apply make-struct-instance gx#import-binding::t _$args143246_)))
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
      (lambda _$args143243_
        (apply make-struct-instance gx#alias-binding::t _$args143243_)))
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
      (lambda _$args143240_
        (apply make-struct-instance gx#expander::t _$args143240_)))
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
      (lambda _$args143237_
        (apply make-struct-instance gx#core-expander::t _$args143237_)))
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
      (lambda _$args143234_
        (apply make-struct-instance gx#expression-form::t _$args143234_)))
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
      (lambda _$args143231_
        (apply make-struct-instance gx#special-form::t _$args143231_)))
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
      (lambda _$args143228_
        (apply make-struct-instance gx#definition-form::t _$args143228_)))
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
      (lambda _$args143225_
        (apply make-struct-instance gx#top-special-form::t _$args143225_)))
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
      (lambda _$args143222_
        (apply make-struct-instance gx#module-special-form::t _$args143222_)))
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
      (lambda _$args143219_
        (apply make-struct-instance gx#feature-expander::t _$args143219_)))
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
      (lambda _$args143216_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args143216_)))
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
      (lambda _$args143213_
        (apply make-struct-instance gx#reserved-expander::t _$args143213_)))
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
      (lambda _$args143210_
        (apply make-struct-instance gx#macro-expander::t _$args143210_)))
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
      (lambda _$args143207_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args143207_)))
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
      (lambda _$args143204_
        (apply make-struct-instance gx#user-expander::t _$args143204_)))
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
      (lambda _$args143201_
        (apply make-struct-instance gx#expander-mark::t _$args143201_)))
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
      (lambda (_ctx143186_ _message143187_ _stx143188_ . _details143189_)
        (let ((_ctx143199_
               (let ((_$e143191_ _ctx143186_))
                 (if _$e143191_
                     _$e143191_
                     (let ((_$e143194_ (gx#core-context-top__0)))
                       (if _$e143194_
                           ((lambda (_ctx143197_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx143197_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e143194_)
                           '#f))))))
          (raise (make-syntax-error
                  _message143187_
                  (cons _stx143188_ _details143189_)
                  _ctx143199_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx143173_ _expression?143174_)
        (gx#eval-syntax* (gx#core-expand__% _stx143173_ _expression?143174_))))
    (define gx#eval-syntax__0
      (lambda (_stx143179_)
        (let ((_expression?143181_ '#f))
          (gx#eval-syntax__% _stx143179_ _expression?143181_))))
    (define gx#eval-syntax
      (lambda _g148078_
        (let ((_g148077_ (##length _g148078_)))
          (cond ((##fx= _g148077_ 1)
                 (apply (lambda (_stx143179_) (gx#eval-syntax__0 _stx143179_))
                        _g148078_))
                ((##fx= _g148077_ 2)
                 (apply (lambda (_stx143183_ _expression?143184_)
                          (gx#eval-syntax__% _stx143183_ _expression?143184_))
                        _g148078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g148078_))))))
    (define gx#eval-syntax*
      (lambda (_stx143170_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx143170_))))
    (define gx#core-expand__%
      (lambda (_stx143157_ _expression?143158_)
        (if _expression?143158_
            (gx#core-expand-expression _stx143157_)
            (gx#core-expand-top _stx143157_))))
    (define gx#core-expand__0
      (lambda (_stx143163_)
        (let ((_expression?143165_ '#f))
          (gx#core-expand__% _stx143163_ _expression?143165_))))
    (define gx#core-expand
      (lambda _g148080_
        (let ((_g148079_ (##length _g148080_)))
          (cond ((##fx= _g148079_ 1)
                 (apply (lambda (_stx143163_) (gx#core-expand__0 _stx143163_))
                        _g148080_))
                ((##fx= _g148079_ 2)
                 (apply (lambda (_stx143167_ _expression?143168_)
                          (gx#core-expand__% _stx143167_ _expression?143168_))
                        _g148080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g148080_))))))
    (define gx#core-expand-top
      (lambda (_stx143124_)
        (let* ((_stx143126_ (gx#core-expand*__0 _stx143124_))
               (_e143127143134_ _stx143126_)
               (_E143129143138_
                (lambda () (gx#core-expand-expression _stx143126_)))
               (_E143128143152_
                (lambda ()
                  (if (gx#stx-pair? _e143127143134_)
                      (let ((_e143130143142_ (gx#syntax-e _e143127143134_)))
                        (let ((_hd143131143145_ (##car _e143130143142_))
                              (_tl143132143147_ (##cdr _e143130143142_)))
                          (let ((_form143150_ _hd143131143145_))
                            (if (gx#core-bound-identifier?__0 _form143150_)
                                _stx143126_
                                (_E143129143138_)))))
                      (_E143129143138_)))))
          (_E143128143152_))))
    (define gx#core-expand-expression
      (lambda (_stx143071_)
        (letrec ((_sealed-expression?143073_
                  (lambda (_hd143094_)
                    (if (gx#sealed-syntax? _hd143094_)
                        (let* ((_e143095143102_ _hd143094_)
                               (_E143097143106_ (lambda () '#f))
                               (_E143096143120_
                                (lambda ()
                                  (if (gx#stx-pair? _e143095143102_)
                                      (let ((_e143098143110_
                                             (gx#syntax-e _e143095143102_)))
                                        (let ((_hd143099143113_
                                               (##car _e143098143110_))
                                              (_tl143100143115_
                                               (##cdr _e143098143110_)))
                                          (let ((_form143118_
                                                 _hd143099143113_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form143118_
                                                 gx#expression-form-binding?)
                                                (_E143097143106_)))))
                                      (_E143097143106_)))))
                          (_E143096143120_))
                        '#f)))
                 (_illegal-expression143074_
                  (lambda (_hd143092_ . _g148081_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx143071_
                     _hd143092_)))
                 (_expand-e143075_
                  (lambda (_form143087_ _hd143088_)
                    (let ((_bind143090_
                           (if (##structure-instance-of?
                                _form143087_
                                'gx#binding::t)
                               _form143087_
                               (gx#resolve-identifier__0 _form143087_))))
                      (if (gx#core-expander-binding? _bind143090_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind143090_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd143088_
                            (gx#stx-source _stx143071_)))
                          (if (##structure-direct-instance-of?
                               _bind143090_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind143090_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd143088_
                                 (gx#stx-source _stx143071_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx143071_
                               _form143087_)))))))
          (let ((_hd143077_ (gx#core-expand-head _stx143071_)))
            (if (_sealed-expression?143073_ _hd143077_)
                _hd143077_
                (if (gx#stx-pair? _hd143077_)
                    (let* ((_form143079_ (gx#stx-car _hd143077_))
                           (_bind143081_
                            (if (gx#identifier? _form143079_)
                                (gx#resolve-identifier__0 _form143079_)
                                '#f)))
                      (if (or (not _bind143081_)
                              (not (gx#core-expander-binding? _bind143081_)))
                          (_expand-e143075_ '%%app (cons '%%app _hd143077_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind143081_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd143077_
                               _illegal-expression143074_)
                              (if (gx#expression-form-binding? _bind143081_)
                                  (_expand-e143075_ _bind143081_ _hd143077_)
                                  (if (gx#direct-special-form-binding?
                                       _bind143081_)
                                      (gx#core-expand-expression
                                       (_expand-e143075_
                                        _bind143081_
                                        _hd143077_))
                                      (_illegal-expression143074_
                                       _hd143077_))))))
                    (if (gx#core-bound-identifier?__0 _hd143077_)
                        (_illegal-expression143074_ _hd143077_)
                        (if (gx#identifier? _hd143077_)
                            (_expand-e143075_
                             '%%ref
                             (cons '%%ref (cons _hd143077_ '())))
                            (if (gx#stx-datum? _hd143077_)
                                (_expand-e143075_
                                 '%#quote
                                 (cons '%#quote (cons _hd143077_ '())))
                                (_illegal-expression143074_
                                 _hd143077_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx143066_)
        (call-with-parameters
         (lambda ()
           (let ((_stx143069_ (gx#core-expand-expression _stx143066_)))
             (values _stx143069_ (gx#eval-syntax* _stx143069_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx143047_ _stop?143048_)
        (let _lp143050_ ((_stx143052_ _stx143047_))
          (if (_stop?143048_ _stx143052_)
              _stx143052_
              (let ((_rstx143054_ (gx#core-expand1 _stx143052_)))
                (if (eq? _stx143052_ _rstx143054_)
                    _stx143052_
                    (_lp143050_ _rstx143054_)))))))
    (define gx#core-expand*__0
      (lambda (_stx143059_)
        (let ((_stop?143061_ false))
          (gx#core-expand*__% _stx143059_ _stop?143061_))))
    (define gx#core-expand*
      (lambda _g148083_
        (let ((_g148082_ (##length _g148083_)))
          (cond ((##fx= _g148082_ 1)
                 (apply (lambda (_stx143059_) (gx#core-expand*__0 _stx143059_))
                        _g148083_))
                ((##fx= _g148082_ 2)
                 (apply (lambda (_stx143063_ _stop?143064_)
                          (gx#core-expand*__% _stx143063_ _stop?143064_))
                        _g148083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g148083_))))))
    (define gx#core-expand1
      (lambda (_stx143003_)
        (letrec ((_step143005_
                  (lambda (_hd143042_)
                    (let ((_bind143044_ (gx#resolve-identifier__0 _hd143042_)))
                      (if (##structure-instance-of?
                           _bind143044_
                           'gx#runtime-binding::t)
                          _stx143003_
                          (if (##structure-direct-instance-of?
                               _bind143044_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind143044_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx143003_)
                              (if (not _bind143044_)
                                  _stx143003_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx143003_))))))))
          (let* ((_e143006143014_ _stx143003_)
                 (_E143012143018_ (lambda () _stx143003_))
                 (_E143008143024_
                  (lambda ()
                    (let ((_hd143022_ _e143006143014_))
                      (if (gx#identifier? _hd143022_)
                          (_step143005_ _hd143022_)
                          (_E143012143018_)))))
                 (_E143007143038_
                  (lambda ()
                    (if (gx#stx-pair? _e143006143014_)
                        (let ((_e143009143028_ (gx#syntax-e _e143006143014_)))
                          (let ((_hd143010143031_ (##car _e143009143028_))
                                (_tl143011143033_ (##cdr _e143009143028_)))
                            (let ((_hd143036_ _hd143010143031_))
                              (if (gx#identifier? _hd143036_)
                                  (_step143005_ _hd143036_)
                                  (_E143008143024_)))))
                        (_E143008143024_)))))
            (_E143007143038_)))))
    (define gx#core-expand-head
      (lambda (_stx142969_)
        (letrec ((_stop?142971_
                  (lambda (_stx142973_)
                    (let* ((_e142974142981_ _stx142973_)
                           (_E142976142985_ (lambda () '#f))
                           (_E142975142999_
                            (lambda ()
                              (if (gx#stx-pair? _e142974142981_)
                                  (let ((_e142977142989_
                                         (gx#syntax-e _e142974142981_)))
                                    (let ((_hd142978142992_
                                           (##car _e142977142989_))
                                          (_tl142979142994_
                                           (##cdr _e142977142989_)))
                                      (let ((_hd142997_ _hd142978142992_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd142997_)
                                            (_E142976142985_)))))
                                  (_E142976142985_)))))
                      (_E142975142999_)))))
          (gx#core-expand*__% _stx142969_ _stop?142971_))))
    (define gx#core-expand-block__%
      (lambda (_stx142775_
               _expand-special142776_
               _begin-form142777_
               _expand-e142778_)
        (letrec ((_expand-splice142780_
                  (lambda (_hd142943_ _body142944_ _rest142945_ _r142946_)
                    (if (gx#stx-list? _body142944_)
                        (_K142784_
                         (gx#stx-foldr cons _rest142945_ _body142944_)
                         _r142946_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142775_
                         _hd142943_))))
                 (_expand-cond-expand142781_
                  (lambda (_hd142939_ _rest142940_ _r142941_)
                    (_K142784_
                     (cons (gx#core-expand-cond-expand% _hd142939_)
                           _rest142940_)
                     _r142941_)))
                 (_expand-include142782_
                  (lambda (_hd142888_ _rest142889_ _r142890_)
                    (let* ((_e142891142901_ _hd142888_)
                           (_E142893142905_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142891142901_)))
                           (_E142892142935_
                            (lambda ()
                              (if (gx#stx-pair? _e142891142901_)
                                  (let ((_e142894142909_
                                         (gx#syntax-e _e142891142901_)))
                                    (let ((_hd142895142912_
                                           (##car _e142894142909_))
                                          (_tl142896142914_
                                           (##cdr _e142894142909_)))
                                      (if (gx#stx-pair? _tl142896142914_)
                                          (let ((_e142897142917_
                                                 (gx#syntax-e
                                                  _tl142896142914_)))
                                            (let ((_hd142898142920_
                                                   (##car _e142897142917_))
                                                  (_tl142899142922_
                                                   (##cdr _e142897142917_)))
                                              (let ((_path142925_
                                                     _hd142898142920_))
                                                (if (gx#stx-null?
                                                     _tl142899142922_)
                                                    (if (gx#stx-string?
                                                         _path142925_)
                                                        (let* ((_rpath142927_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142925_
                         (gx#stx-source _hd142888_)))
                       (_block142929_
                        (gx#core-expand-include%__% _hd142888_ _rpath142927_))
                       (_rbody142932_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142929_
                            _expand-special142776_
                            '#f
                            _expand-e142778_))
                         gx#current-expander-path
                         (cons _rpath142927_ (gx#current-expander-path)))))
                  (_K142784_
                   _rest142889_
                   (foldr1 cons _r142890_ _rbody142932_)))
                (_E142893142905_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142893142905_)))))
                                          (_E142893142905_))))
                                  (_E142893142905_)))))
                      (_E142892142935_))))
                 (_expand-expression142783_
                  (lambda (_hd142884_ _rest142885_ _r142886_)
                    (_K142784_
                     _rest142885_
                     (cons (_expand-e142778_ _hd142884_) _r142886_))))
                 (_K142784_
                  (lambda (_rest142814_ _r142815_)
                    (let* ((_e142816142823_ _rest142814_)
                           (_E142818142827_
                            (lambda ()
                              (if _begin-form142777_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142777_
                                    (reverse _r142815_))
                                   (gx#stx-source _stx142775_))
                                  _r142815_)))
                           (_E142817142880_
                            (lambda ()
                              (if (gx#stx-pair? _e142816142823_)
                                  (let ((_e142819142831_
                                         (gx#syntax-e _e142816142823_)))
                                    (let ((_hd142820142834_
                                           (##car _e142819142831_))
                                          (_tl142821142836_
                                           (##cdr _e142819142831_)))
                                      (let* ((_hd142839_ _hd142820142834_)
                                             (_rest142841_ _tl142821142836_))
                                        (if '#t
                                            (let* ((_hd142843_
                                                    (gx#core-expand-head
                                                     _hd142839_))
                                                   (_e142844142851_ _hd142843_)
                                                   (_E142846142855_
                                                    (lambda ()
                                                      (_expand-expression142783_
                                                       _hd142843_
                                                       _rest142841_
                                                       _r142815_)))
                                                   (_E142845142876_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142844142851_)
                                                          (let ((_e142847142859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142844142851_)))
                    (let ((_hd142848142862_ (##car _e142847142859_))
                          (_tl142849142864_ (##cdr _e142847142859_)))
                      (let* ((_form142867_ _hd142848142862_)
                             (_body142869_ _tl142849142864_))
                        (if '#t
                            (let ((_bind142871_
                                   (if (gx#identifier? _form142867_)
                                       (gx#resolve-identifier__0 _form142867_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142871_)
                                  (let ((_$e142873_
                                         (##unchecked-structure-ref
                                          _bind142871_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e142873_)
                                        (_expand-splice142780_
                                         _hd142843_
                                         _body142869_
                                         _rest142841_
                                         _r142815_)
                                        (if (eq? '%#cond-expand _$e142873_)
                                            (_expand-cond-expand142781_
                                             _hd142843_
                                             _rest142841_
                                             _r142815_)
                                            (if (eq? '%#include _$e142873_)
                                                (_expand-include142782_
                                                 _hd142843_
                                                 _rest142841_
                                                 _r142815_)
                                                (_expand-special142776_
                                                 _hd142843_
                                                 _K142784_
                                                 _rest142841_
                                                 _r142815_)))))
                                  (_expand-expression142783_
                                   _hd142843_
                                   _rest142841_
                                   _r142815_)))
                            (_E142846142855_)))))
                  (_E142846142855_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142845142876_))
                                            (_E142818142827_)))))
                                  (_E142818142827_)))))
                      (_E142817142880_)))))
          (let* ((_e142785142792_ _stx142775_)
                 (_E142787142796_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142785142792_)))
                 (_E142786142810_
                  (lambda ()
                    (if (gx#stx-pair? _e142785142792_)
                        (let ((_e142788142800_ (gx#syntax-e _e142785142792_)))
                          (let ((_hd142789142803_ (##car _e142788142800_))
                                (_tl142790142805_ (##cdr _e142788142800_)))
                            (let ((_body142808_ _tl142790142805_))
                              (if (gx#stx-list? _body142808_)
                                  (_K142784_ _body142808_ '())
                                  (_E142787142796_)))))
                        (_E142787142796_)))))
            (_E142786142810_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142951_ _expand-special142952_)
        (let* ((_begin-form142954_ '%#begin)
               (_expand-e142956_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142951_
           _expand-special142952_
           _begin-form142954_
           _expand-e142956_))))
    (define gx#core-expand-block__1
      (lambda (_stx142958_ _expand-special142959_ _begin-form142960_)
        (let ((_expand-e142962_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142958_
           _expand-special142959_
           _begin-form142960_
           _expand-e142962_))))
    (define gx#core-expand-block
      (lambda _g148085_
        (let ((_g148084_ (##length _g148085_)))
          (cond ((##fx= _g148084_ 2)
                 (apply (lambda (_stx142951_ _expand-special142952_)
                          (gx#core-expand-block__0
                           _stx142951_
                           _expand-special142952_))
                        _g148085_))
                ((##fx= _g148084_ 3)
                 (apply (lambda (_stx142958_
                                 _expand-special142959_
                                 _begin-form142960_)
                          (gx#core-expand-block__1
                           _stx142958_
                           _expand-special142959_
                           _begin-form142960_))
                        _g148085_))
                ((##fx= _g148084_ 4)
                 (apply (lambda (_stx142964_
                                 _expand-special142965_
                                 _begin-form142966_
                                 _expand-e142967_)
                          (gx#core-expand-block__%
                           _stx142964_
                           _expand-special142965_
                           _begin-form142966_
                           _expand-e142967_))
                        _g148085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g148085_))))))
    (define gx#core-expand-block*
      (lambda (_stx142723_ _expand-special142724_)
        (let* ((_g142725142736_
                (gx#core-expand-block__1
                 _stx142723_
                 _expand-special142724_
                 '#f))
               (_E142729142740_
                (lambda () (error '"No clause matching" _g142725142736_))))
          (let ((_K142734142771_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142723_)))
                (_K142731142757_ (lambda (_expr142755_) _expr142755_))
                (_K142730142746_
                 (lambda (_body142744_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142744_))
                    (gx#stx-source _stx142723_)))))
            (let ((_try-match142727142767_
                   (lambda ()
                     (if (##pair? _g142725142736_)
                         (let ((_tl142733142762_ (##cdr _g142725142736_))
                               (_hd142732142760_ (##car _g142725142736_)))
                           (if (##null? _tl142733142762_)
                               (let ((_expr142765_ _hd142732142760_))
                                 (_K142731142757_ _expr142765_))
                               (let ((_body142749_ _g142725142736_))
                                 (_K142730142746_ _body142749_))))
                         (let ((_body142749_ _g142725142736_))
                           (_K142730142746_ _body142749_))))))
              (if (##null? _g142725142736_)
                  (_K142734142771_)
                  (_try-match142727142767_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142551_)
        (letrec ((_satisfied?142553_
                  (lambda (_condition142651_)
                    (let* ((_e142652142667_ _condition142651_)
                           (_E142662142671_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142652142667_)))
                           (_E142655142690_
                            (lambda ()
                              (if (gx#stx-pair? _e142652142667_)
                                  (let ((_e142663142675_
                                         (gx#syntax-e _e142652142667_)))
                                    (let ((_hd142664142678_
                                           (##car _e142663142675_))
                                          (_tl142665142680_
                                           (##cdr _e142663142675_)))
                                      (let* ((_combinator142683_
                                              _hd142664142678_)
                                             (_body142685_ _tl142665142680_))
                                        (if (gx#stx-list? _body142685_)
                                            (let ((_$e142687_
                                                   (gx#stx-e
                                                    _combinator142683_)))
                                              (if (eq? 'not _$e142687_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142553_
                                                        _body142685_))
                                                  (if (eq? 'and _$e142687_)
                                                      (gx#stx-andmap
                                                       _satisfied?142553_
                                                       _body142685_)
                                                      (if (eq? 'or _$e142687_)
                                                          (gx#stx-ormap
                                                           _satisfied?142553_
                                                           _body142685_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142687_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142685_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142551_
                       _combinator142683_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142662142671_)))))
                                  (_E142662142671_))))
                           (_E142654142713_
                            (lambda ()
                              (if (gx#stx-pair? _e142652142667_)
                                  (let ((_e142656142694_
                                         (gx#syntax-e _e142652142667_)))
                                    (let ((_hd142657142697_
                                           (##car _e142656142694_))
                                          (_tl142658142699_
                                           (##cdr _e142656142694_)))
                                      (if (and (gx#identifier?
                                                _hd142657142697_)
                                               (gx#core-identifier=?
                                                _hd142657142697_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142658142699_)
                                              (let ((_e142659142702_
                                                     (gx#syntax-e
                                                      _tl142658142699_)))
                                                (let ((_hd142660142705_
                                                       (##car _e142659142702_))
                                                      (_tl142661142707_
                                                       (##cdr _e142659142702_)))
                                                  (let ((_expr142710_
                                                         _hd142660142705_))
                                                    (if (gx#stx-null?
                                                         _tl142661142707_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142710_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142655142690_))
                (_E142655142690_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142655142690_))
                                          (_E142655142690_))))
                                  (_E142655142690_))))
                           (_E142653142719_
                            (lambda ()
                              (let ((_id142717_ _e142652142667_))
                                (if (gx#identifier? _id142717_)
                                    (gx#core-bound-identifier?__%
                                     _id142717_
                                     gx#feature-binding?)
                                    (_E142654142713_))))))
                      (_E142653142719_))))
                 (_loop142554_
                  (lambda (_rest142584_)
                    (let* ((_e142585142593_ _rest142584_)
                           (_E142591142597_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142585142593_)))
                           (_E142587142601_
                            (lambda ()
                              (if (gx#stx-null? _e142585142593_)
                                  (if '#t '() (_E142591142597_))
                                  (_E142591142597_))))
                           (_E142586142647_
                            (lambda ()
                              (if (gx#stx-pair? _e142585142593_)
                                  (let ((_e142588142605_
                                         (gx#syntax-e _e142585142593_)))
                                    (let ((_hd142589142608_
                                           (##car _e142588142605_))
                                          (_tl142590142610_
                                           (##cdr _e142588142605_)))
                                      (let* ((_hd142613_ _hd142589142608_)
                                             (_rest142615_ _tl142590142610_))
                                        (if '#t
                                            (let* ((_e142616142623_ _hd142613_)
                                                   (_E142618142627_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142616142623_)))
                                                   (_E142617142643_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142616142623_)
                                                          (let ((_e142619142631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142616142623_)))
                    (let ((_hd142620142634_ (##car _e142619142631_))
                          (_tl142621142636_ (##cdr _e142619142631_)))
                      (let* ((_condition142639_ _hd142620142634_)
                             (_body142641_ _tl142621142636_))
                        (if '#t
                            (if (gx#stx-eq? _condition142639_ 'else)
                                (if (gx#stx-null? _rest142615_)
                                    _body142641_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142551_
                                     _hd142613_))
                                (if (_satisfied?142553_ _condition142639_)
                                    _body142641_
                                    (_loop142554_ _rest142615_)))
                            (_E142618142627_)))))
                  (_E142618142627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142617142643_))
                                            (_E142587142601_)))))
                                  (_E142587142601_)))))
                      (_E142586142647_)))))
          (let* ((_e142555142562_ _stx142551_)
                 (_E142557142566_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142555142562_)))
                 (_E142556142580_
                  (lambda ()
                    (if (gx#stx-pair? _e142555142562_)
                        (let ((_e142558142570_ (gx#syntax-e _e142555142562_)))
                          (let ((_hd142559142573_ (##car _e142558142570_))
                                (_tl142560142575_ (##cdr _e142558142570_)))
                            (let ((_clauses142578_ _tl142560142575_))
                              (if (gx#stx-list? _clauses142578_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142554_ _clauses142578_))
                                  (_E142557142566_)))))
                        (_E142557142566_)))))
            (_E142556142580_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142494_ _rpath142495_)
        (let* ((_e142496142506_ _stx142494_)
               (_E142498142510_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142496142506_)))
               (_E142497142537_
                (lambda ()
                  (if (gx#stx-pair? _e142496142506_)
                      (let ((_e142499142514_ (gx#syntax-e _e142496142506_)))
                        (let ((_hd142500142517_ (##car _e142499142514_))
                              (_tl142501142519_ (##cdr _e142499142514_)))
                          (if (gx#stx-pair? _tl142501142519_)
                              (let ((_e142502142522_
                                     (gx#syntax-e _tl142501142519_)))
                                (let ((_hd142503142525_
                                       (##car _e142502142522_))
                                      (_tl142504142527_
                                       (##cdr _e142502142522_)))
                                  (let ((_path142530_ _hd142503142525_))
                                    (if (gx#stx-null? _tl142504142527_)
                                        (if (gx#stx-string? _path142530_)
                                            (let ((_rpath142535_
                                                   (let ((_$e142532_
                                                          _rpath142495_))
                                                     (if _$e142532_
                                                         _$e142532_
                                                         (gx#core-resolve-path__%
                                                          _path142530_
                                                          (gx#stx-source
                                                           _stx142494_))))))
                                              (if (member _rpath142535_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142494_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142535_))
                                                    (gx#stx-source
                                                     _stx142494_)))))
                                            (_E142498142510_))
                                        (_E142498142510_)))))
                              (_E142498142510_))))
                      (_E142498142510_)))))
          (_E142497142537_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142544_)
        (let ((_rpath142546_ '#f))
          (gx#core-expand-include%__% _stx142544_ _rpath142546_))))
    (define gx#core-expand-include%
      (lambda _g148087_
        (let ((_g148086_ (##length _g148087_)))
          (cond ((##fx= _g148086_ 1)
                 (apply (lambda (_stx142544_)
                          (gx#core-expand-include%__0 _stx142544_))
                        _g148087_))
                ((##fx= _g148086_ 2)
                 (apply (lambda (_stx142548_ _rpath142549_)
                          (gx#core-expand-include%__%
                           _stx142548_
                           _rpath142549_))
                        _g148087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g148087_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142463_ _stx142464_ _method142465_)
        (if (procedure? _K142463_)
            (let ((_$e142467_ (gx#stx-source _stx142464_)))
              (if _$e142467_
                  ((lambda (_g142469142471_)
                     (gx#stx-wrap-source
                      (_K142463_ _stx142464_)
                      _g142469142471_))
                   _$e142467_)
                  (_K142463_ _stx142464_)))
            (let ((_$e142474_ (bound-method-ref _K142463_ _method142465_)))
              (if _$e142474_
                  ((lambda (_g142476142478_)
                     (gx#core-apply-expander__%
                      _g142476142478_
                      _stx142464_
                      _method142465_))
                   _$e142474_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142464_
                   _method142465_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142484_ _stx142485_)
        (let ((_method142487_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142484_ _stx142485_ _method142487_))))
    (define gx#core-apply-expander
      (lambda _g148089_
        (let ((_g148088_ (##length _g148089_)))
          (cond ((##fx= _g148088_ 2)
                 (apply (lambda (_K142484_ _stx142485_)
                          (gx#core-apply-expander__0 _K142484_ _stx142485_))
                        _g148089_))
                ((##fx= _g148088_ 3)
                 (apply (lambda (_K142489_ _stx142490_ _method142491_)
                          (gx#core-apply-expander__%
                           _K142489_
                           _stx142490_
                           _method142491_))
                        _g148089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g148089_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142459_ _stx142460_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142460_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142312_ _stx142313_)
        (let* ((_self142314142320_ _self142312_)
               (_E142316142324_
                (lambda () (error '"No clause matching" _self142314142320_)))
               (_K142317142329_
                (lambda (_K142327_)
                  (gx#core-apply-expander__0 _K142327_ _stx142313_))))
          (if (##structure-instance-of? _self142314142320_ 'gx#core-macro::t)
              (let* ((_e142318142332_
                      (##unchecked-structure-ref
                       _self142314142320_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142335_ _e142318142332_))
                (_K142317142329_ _K142335_))
              (_E142316142324_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self142165_ _stx142166_)
        (if (gx#sealed-syntax? _stx142166_)
            _stx142166_
            (let* ((_self142167142173_ _self142165_)
                   (_E142169142177_
                    (lambda ()
                      (error '"No clause matching" _self142167142173_)))
                   (_K142170142182_
                    (lambda (_K142180_)
                      (gx#core-apply-expander__0 _K142180_ _stx142166_))))
              (if (##structure-instance-of?
                   _self142167142173_
                   'gx#core-expander::t)
                  (let* ((_e142171142185_
                          (##unchecked-structure-ref
                           _self142167142173_
                           '1
                           gx#expander::t
                           '#f))
                         (_K142188_ _e142171142185_))
                    (_K142170142182_ _K142188_))
                  (_E142169142177_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self142027_ _stx142028_ _top?142029_)
        (if (_top?142029_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self142027_ _stx142028_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx142028_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self142034_ _stx142035_)
        (let ((_top?142037_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self142034_
           _stx142035_
           _top?142037_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g148091_
        (let ((_g148090_ (##length _g148091_)))
          (cond ((##fx= _g148090_ 2)
                 (apply (lambda (_self142034_ _stx142035_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self142034_
                           _stx142035_))
                        _g148091_))
                ((##fx= _g148090_ 3)
                 (apply (lambda (_self142039_ _stx142040_ _top?142041_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self142039_
                           _stx142040_
                           _top?142041_))
                        _g148091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g148091_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141901_ _stx141902_)
        (gx#top-special-form::apply-macro-expander__%
         _self141901_
         _stx141902_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141726_ _stx141727_)
        (let* ((_self141728141734_ _self141726_)
               (_E141730141738_
                (lambda () (error '"No clause matching" _self141728141734_)))
               (_K141731141771_
                (lambda (_id141741_)
                  (let* ((_e141742141749_ _stx141727_)
                         (_E141744141753_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141742141749_)))
                         (_E141743141767_
                          (lambda ()
                            (if (gx#stx-pair? _e141742141749_)
                                (let ((_e141745141757_
                                       (gx#syntax-e _e141742141749_)))
                                  (let ((_hd141746141760_
                                         (##car _e141745141757_))
                                        (_tl141747141762_
                                         (##cdr _e141745141757_)))
                                    (let ((_body141765_ _tl141747141762_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141741_
                                           _body141765_)
                                          (_E141744141753_)))))
                                (_E141744141753_)))))
                    (_E141743141767_)))))
          (if (##structure-instance-of?
               _self141728141734_
               'gx#rename-macro-expander::t)
              (let* ((_e141732141774_
                      (##unchecked-structure-ref
                       _self141728141734_
                       '1
                       gx#expander::t
                       '#f))
                     (_id141777_ _e141732141774_))
                (_K141731141771_ _id141777_))
              (_E141730141738_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141552_ _stx141553_ _method141554_)
        (let* ((_self141555141563_ _self141552_)
               (_E141557141567_
                (lambda () (error '"No clause matching" _self141555141563_)))
               (_K141558141574_
                (lambda (_phi141570_ _ctx141571_ _K141572_)
                  (gx#core-apply-user-macro
                   _K141572_
                   _stx141553_
                   _ctx141571_
                   _phi141570_
                   _method141554_))))
          (if (##structure-instance-of?
               _self141555141563_
               'gx#macro-expander::t)
              (let* ((_e141559141577_
                      (##unchecked-structure-ref
                       _self141555141563_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141580_ _e141559141577_)
                     (_e141560141582_
                      (##unchecked-structure-ref
                       _self141555141563_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141585_ _e141560141582_)
                     (_e141561141587_
                      (##unchecked-structure-ref
                       _self141555141563_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141590_ _e141561141587_))
                (_K141558141574_ _phi141590_ _ctx141585_ _K141580_))
              (_E141557141567_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141595_ _stx141596_)
        (let ((_method141598_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141595_
           _stx141596_
           _method141598_))))
    (define gx#core-apply-user-expander
      (lambda _g148093_
        (let ((_g148092_ (##length _g148093_)))
          (cond ((##fx= _g148092_ 2)
                 (apply (lambda (_self141595_ _stx141596_)
                          (gx#core-apply-user-expander__0
                           _self141595_
                           _stx141596_))
                        _g148093_))
                ((##fx= _g148092_ 3)
                 (apply (lambda (_self141600_ _stx141601_ _method141602_)
                          (gx#core-apply-user-expander__%
                           _self141600_
                           _stx141601_
                           _method141602_))
                        _g148093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g148093_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141542_ _stx141543_ _ctx141544_ _phi141545_ _method141546_)
        (let ((_mark141548_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141544_
                _phi141545_
                _stx141543_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141542_
               (gx#stx-apply-mark _stx141543_ _mark141548_)
               _method141546_)
              _mark141548_))
           gx#current-expander-marks
           (cons _mark141548_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141394_ _phi141395_ _ctx141396_)
        (let _lp141398_ ((_bind141400_
                          (gx#core-resolve-identifier__%
                           _stx141394_
                           _phi141395_
                           _ctx141396_)))
          (if (##structure-direct-instance-of?
               _bind141400_
               'gx#import-binding::t)
              (_lp141398_
               (##unchecked-structure-ref
                _bind141400_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141400_
                   'gx#alias-binding::t)
                  (_lp141398_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141400_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141395_
                    _ctx141396_))
                  _bind141400_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141405_)
        (let* ((_phi141407_ (gx#current-expander-phi))
               (_ctx141409_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141405_ _phi141407_ _ctx141409_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141411_ _phi141412_)
        (let ((_ctx141414_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141411_ _phi141412_ _ctx141414_))))
    (define gx#resolve-identifier
      (lambda _g148095_
        (let ((_g148094_ (##length _g148095_)))
          (cond ((##fx= _g148094_ 1)
                 (apply (lambda (_stx141405_)
                          (gx#resolve-identifier__0 _stx141405_))
                        _g148095_))
                ((##fx= _g148094_ 2)
                 (apply (lambda (_stx141411_ _phi141412_)
                          (gx#resolve-identifier__1 _stx141411_ _phi141412_))
                        _g148095_))
                ((##fx= _g148094_ 3)
                 (apply (lambda (_stx141416_ _phi141417_ _ctx141418_)
                          (gx#resolve-identifier__%
                           _stx141416_
                           _phi141417_
                           _ctx141418_))
                        _g148095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g148095_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141352_ _val141353_ _rebind?141354_ _phi141355_ _ctx141356_)
        (let ((_rebind?141358_
               (if (not _rebind?141354_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141354_) _rebind?141354_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141352_)
           _val141353_
           _rebind?141358_
           _phi141355_
           _ctx141356_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141363_ _val141364_)
        (let* ((_rebind?141366_ '#f)
               (_phi141368_ (gx#current-expander-phi))
               (_ctx141370_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141363_
           _val141364_
           _rebind?141366_
           _phi141368_
           _ctx141370_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141372_ _val141373_ _rebind?141374_)
        (let* ((_phi141376_ (gx#current-expander-phi))
               (_ctx141378_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141372_
           _val141373_
           _rebind?141374_
           _phi141376_
           _ctx141378_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141380_ _val141381_ _rebind?141382_ _phi141383_)
        (let ((_ctx141385_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141380_
           _val141381_
           _rebind?141382_
           _phi141383_
           _ctx141385_))))
    (define gx#bind-identifier!
      (lambda _g148097_
        (let ((_g148096_ (##length _g148097_)))
          (cond ((##fx= _g148096_ 2)
                 (apply (lambda (_stx141363_ _val141364_)
                          (gx#bind-identifier!__0 _stx141363_ _val141364_))
                        _g148097_))
                ((##fx= _g148096_ 3)
                 (apply (lambda (_stx141372_ _val141373_ _rebind?141374_)
                          (gx#bind-identifier!__1
                           _stx141372_
                           _val141373_
                           _rebind?141374_))
                        _g148097_))
                ((##fx= _g148096_ 4)
                 (apply (lambda (_stx141380_
                                 _val141381_
                                 _rebind?141382_
                                 _phi141383_)
                          (gx#bind-identifier!__2
                           _stx141380_
                           _val141381_
                           _rebind?141382_
                           _phi141383_))
                        _g148097_))
                ((##fx= _g148096_ 5)
                 (apply (lambda (_stx141387_
                                 _val141388_
                                 _rebind?141389_
                                 _phi141390_
                                 _ctx141391_)
                          (gx#bind-identifier!__%
                           _stx141387_
                           _val141388_
                           _rebind?141389_
                           _phi141390_
                           _ctx141391_))
                        _g148097_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g148097_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141324_ _phi141325_ _ctx141326_)
        (let _lp141328_ ((_e141330_ _stx141324_)
                         (_marks141331_ (gx#current-expander-marks)))
          (if (symbol? _e141330_)
              (gx#core-resolve-binding
               _e141330_
               _phi141325_
               _phi141325_
               _ctx141326_
               (reverse _marks141331_))
              (if (gx#identifier-quote? _e141330_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e141330_ '1 gx#AST::t '#f)
                   _phi141325_
                   '0
                   (##unchecked-structure-ref
                    _e141330_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141330_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141330_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e141330_ '1 gx#AST::t '#f)
                       _phi141325_
                       _phi141325_
                       _ctx141326_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141330_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141331_))
                      (if (##structure-direct-instance-of?
                           _e141330_
                           'gx#syntax-wrap::t)
                          (_lp141328_
                           (##unchecked-structure-ref
                            _e141330_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141330_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141331_))
                          (if (##structure-instance-of?
                               _e141330_
                               'gerbil#AST::t)
                              (_lp141328_
                               (##unchecked-structure-ref
                                _e141330_
                                '1
                                gx#AST::t
                                '#f)
                               _marks141331_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141324_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141336_)
        (let* ((_phi141338_ (gx#current-expander-phi))
               (_ctx141340_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141336_
           _phi141338_
           _ctx141340_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141342_ _phi141343_)
        (let ((_ctx141345_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141342_
           _phi141343_
           _ctx141345_))))
    (define gx#core-resolve-identifier
      (lambda _g148099_
        (let ((_g148098_ (##length _g148099_)))
          (cond ((##fx= _g148098_ 1)
                 (apply (lambda (_stx141336_)
                          (gx#core-resolve-identifier__0 _stx141336_))
                        _g148099_))
                ((##fx= _g148098_ 2)
                 (apply (lambda (_stx141342_ _phi141343_)
                          (gx#core-resolve-identifier__1
                           _stx141342_
                           _phi141343_))
                        _g148099_))
                ((##fx= _g148098_ 3)
                 (apply (lambda (_stx141347_ _phi141348_ _ctx141349_)
                          (gx#core-resolve-identifier__%
                           _stx141347_
                           _phi141348_
                           _ctx141349_))
                        _g148099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g148099_))))))
    (define gx#core-resolve-binding
      (lambda (_id141237_
               _phi141238_
               _src-phi141239_
               _ctx141240_
               _marks141241_)
        (letrec ((_resolve141243_
                  (lambda (_ctx141311_ _src-phi141312_ _key141313_)
                    (let _lp141315_ ((_ctx141317_
                                      (gx#core-context-shift
                                       _ctx141311_
                                       _phi141238_))
                                     (_dphi141318_
                                      (fx- _phi141238_ _src-phi141312_)))
                      (let ((_$e141320_
                             (gx#core-context-resolve
                              _ctx141317_
                              _key141313_)))
                        (if _$e141320_
                            (values _$e141320_)
                            (if (fxzero? _dphi141318_)
                                '#f
                                (if (fxpositive? _dphi141318_)
                                    (_lp141315_
                                     (gx#core-context-shift _ctx141317_ '-1)
                                     (fx- _dphi141318_ '1))
                                    (_lp141315_
                                     (gx#core-context-shift _ctx141317_ '1)
                                     (fx+ _dphi141318_ '1))))))))))
          (let _lp141245_ ((_ctx141247_ _ctx141240_)
                           (_src-phi141248_ _src-phi141239_)
                           (_rest141249_ _marks141241_))
            (let* ((_rest141250141258_ _rest141249_)
                   (_else141252141266_
                    (lambda ()
                      (_resolve141243_
                       _ctx141247_
                       _src-phi141248_
                       _id141237_)))
                   (_K141254141299_
                    (lambda (_rest141269_ _hd141270_)
                      (let* ((_hd141271141277_ _hd141270_)
                             (_E141273141281_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd141271141277_)))
                             (_K141274141291_
                              (lambda (_subst141284_)
                                (let ((_$e141288_
                                       (let ((_key141286_
                                              (if _subst141284_
                                                  (table-ref
                                                   _subst141284_
                                                   _id141237_
                                                   '#f)
                                                  '#f)))
                                         (if _key141286_
                                             (_resolve141243_
                                              _ctx141247_
                                              _src-phi141248_
                                              _key141286_)
                                             '#f))))
                                  (if _$e141288_
                                      _$e141288_
                                      (_lp141245_
                                       (##unchecked-structure-ref
                                        _hd141270_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd141270_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest141269_))))))
                        (if (##structure-instance-of?
                             _hd141271141277_
                             'gx#expander-mark::t)
                            (let* ((_e141275141294_
                                    (##unchecked-structure-ref
                                     _hd141271141277_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst141297_ _e141275141294_))
                              (_K141274141291_ _subst141297_))
                            (_E141273141281_))))))
              (if (##pair? _rest141250141258_)
                  (let ((_hd141255141302_ (##car _rest141250141258_))
                        (_tl141256141304_ (##cdr _rest141250141258_)))
                    (let* ((_hd141307_ _hd141255141302_)
                           (_rest141309_ _tl141256141304_))
                      (_K141254141299_ _rest141309_ _hd141307_)))
                  (_else141252141266_)))))))
    (define gx#core-bind!__%
      (lambda (_key141113_ _val141114_ _rebind?141115_ _phi141116_ _ctx141117_)
        (letrec ((_update-binding141119_
                  (lambda (_xval141190_)
                    (if (or (_rebind?141115_
                             _ctx141117_
                             _xval141190_
                             _val141114_)
                            (and (##structure-direct-instance-of?
                                  _xval141190_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval141190_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val141114_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val141114_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval141190_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val141114_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val141114_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval141190_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val141114_
                        (if (and (##structure-direct-instance-of?
                                  _val141114_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val141114_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval141190_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val141114_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval141190_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval141190_
                            (if (and (##structure-direct-instance-of?
                                      _val141114_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval141190_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key141113_
                                 (cons (##unchecked-structure-ref
                                        _val141114_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val141114_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval141190_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval141190_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval141190_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval141190_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key141113_
                                 _val141114_
                                 _xval141190_))))))
                 (_gensubst141120_
                  (lambda (_subst141185_ _id141186_)
                    (let ((_eid141188_
                           (gensym (if (uninterned-symbol? _id141186_)
                                       '%
                                       _id141186_))))
                      (table-set! _subst141185_ _id141186_ _eid141188_)
                      _eid141188_)))
                 (_subst!141121_
                  (lambda (_key141123_)
                    (let* ((_key141124141132_ _key141123_)
                           (_else141126141140_ (lambda () _key141123_))
                           (_K141128141173_
                            (lambda (_mark141143_ _id141144_)
                              (let* ((_mark141145141151_ _mark141143_)
                                     (_E141147141155_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark141145141151_)))
                                     (_K141148141165_
                                      (lambda (_subst141158_)
                                        (if (not _subst141158_)
                                            (let ((_subst141160_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark141143_
                                               _subst141160_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst141120_
                                               _subst141160_
                                               _id141144_))
                                            (let ((_$e141162_
                                                   (table-ref
                                                    _subst141158_
                                                    _id141144_
                                                    '#f)))
                                              (if _$e141162_
                                                  (values _$e141162_)
                                                  (_gensubst141120_
                                                   _subst141158_
                                                   _id141144_)))))))
                                (if (##structure-instance-of?
                                     _mark141145141151_
                                     'gx#expander-mark::t)
                                    (let* ((_e141149141168_
                                            (##unchecked-structure-ref
                                             _mark141145141151_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst141171_ _e141149141168_))
                                      (_K141148141165_ _subst141171_))
                                    (_E141147141155_))))))
                      (if (##pair? _key141124141132_)
                          (let ((_hd141129141176_ (##car _key141124141132_))
                                (_tl141130141178_ (##cdr _key141124141132_)))
                            (let* ((_id141181_ _hd141129141176_)
                                   (_mark141183_ _tl141130141178_))
                              (_K141128141173_ _mark141183_ _id141181_)))
                          (_else141126141140_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx141117_ _phi141116_)
           (_subst!141121_ _key141113_)
           _val141114_
           _update-binding141119_))))
    (define gx#core-bind!__0
      (lambda (_key141207_ _val141208_)
        (let* ((_rebind?141210_ false)
               (_phi141212_ (gx#current-expander-phi))
               (_ctx141214_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141207_
           _val141208_
           _rebind?141210_
           _phi141212_
           _ctx141214_))))
    (define gx#core-bind!__1
      (lambda (_key141216_ _val141217_ _rebind?141218_)
        (let* ((_phi141220_ (gx#current-expander-phi))
               (_ctx141222_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141216_
           _val141217_
           _rebind?141218_
           _phi141220_
           _ctx141222_))))
    (define gx#core-bind!__2
      (lambda (_key141224_ _val141225_ _rebind?141226_ _phi141227_)
        (let ((_ctx141229_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141224_
           _val141225_
           _rebind?141226_
           _phi141227_
           _ctx141229_))))
    (define gx#core-bind!
      (lambda _g148101_
        (let ((_g148100_ (##length _g148101_)))
          (cond ((##fx= _g148100_ 2)
                 (apply (lambda (_key141207_ _val141208_)
                          (gx#core-bind!__0 _key141207_ _val141208_))
                        _g148101_))
                ((##fx= _g148100_ 3)
                 (apply (lambda (_key141216_ _val141217_ _rebind?141218_)
                          (gx#core-bind!__1
                           _key141216_
                           _val141217_
                           _rebind?141218_))
                        _g148101_))
                ((##fx= _g148100_ 4)
                 (apply (lambda (_key141224_
                                 _val141225_
                                 _rebind?141226_
                                 _phi141227_)
                          (gx#core-bind!__2
                           _key141224_
                           _val141225_
                           _rebind?141226_
                           _phi141227_))
                        _g148101_))
                ((##fx= _g148100_ 5)
                 (apply (lambda (_key141231_
                                 _val141232_
                                 _rebind?141233_
                                 _phi141234_
                                 _ctx141235_)
                          (gx#core-bind!__%
                           _key141231_
                           _val141232_
                           _rebind?141233_
                           _phi141234_
                           _ctx141235_))
                        _g148101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g148101_))))))
    (define gx#core-identifier-key
      (lambda (_stx141047_)
        (if (symbol? _stx141047_)
            (let* ((_g141048141056_ (gx#current-expander-marks))
                   (_else141050141064_ (lambda () _stx141047_))
                   (_K141052141069_
                    (lambda (_hd141067_) (cons _stx141047_ _hd141067_))))
              (if (##pair? _g141048141056_)
                  (let* ((_hd141053141072_ (##car _g141048141056_))
                         (_hd141075_ _hd141053141072_))
                    (_K141052141069_ _hd141075_))
                  (_else141050141064_)))
            (if (gx#identifier? _stx141047_)
                (let* ((_id141077_ (gx#syntax-local-unwrap _stx141047_))
                       (_eid141079_ (gx#stx-e _id141077_))
                       (_marks141081_ (gx#stx-identifier-marks* _id141077_)))
                  (let* ((_marks141083141091_ _marks141081_)
                         (_else141085141099_ (lambda () _eid141079_))
                         (_K141087141104_
                          (lambda (_hd141102_) (cons _eid141079_ _hd141102_))))
                    (if (##pair? _marks141083141091_)
                        (let* ((_hd141088141107_ (##car _marks141083141091_))
                               (_hd141110_ _hd141088141107_))
                          (_K141087141104_ _hd141110_))
                        (_else141085141099_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx141047_)))))
    (define gx#core-context-shift
      (lambda (_ctx140992_ _phi140993_)
        (letrec ((_make-phi140995_
                  (lambda (_super141045_)
                    (let ((__obj148072
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj148072
                       (gensym 'phi)
                       _super141045_)
                      __obj148072)))
                 (_make-phi/up140996_
                  (lambda (_ctx141040_ _super141041_)
                    (let ((_ctx+1141043_ (_make-phi140995_ _super141041_)))
                      (##unchecked-structure-set!
                       _ctx141040_
                       _ctx+1141043_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1141043_
                       _ctx141040_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1141043_)))
                 (_make-phi/down140997_
                  (lambda (_ctx141035_ _super141036_)
                    (let ((_ctx-1141038_ (_make-phi140995_ _super141036_)))
                      (##unchecked-structure-set!
                       _ctx-1141038_
                       _ctx141035_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx141035_
                       _ctx-1141038_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1141038_)))
                 (_shift140998_
                  (lambda (_ctx141019_
                           _delta141020_
                           _make-delta-context141021_
                           _phi141022_
                           _K141023_)
                    (let ((_$e141025_
                           (##unchecked-structure-ref
                            _ctx141019_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e141025_
                          ((lambda (_super141028_)
                             (let* ((_super141030_
                                     (_K141023_ _super141028_ _delta141020_))
                                    (_ctx+d141032_
                                     (_make-delta-context141021_
                                      _ctx141019_
                                      _super141030_)))
                               (_K141023_
                                _ctx+d141032_
                                (fx- _phi141022_ _delta141020_))))
                           _$e141025_)
                          (error '"Bad context" _ctx141019_))))))
          (let _K141000_ ((_ctx141002_ _ctx140992_) (_phi141003_ _phi140993_))
            (if (fxzero? _phi141003_)
                _ctx141002_
                (if (fx> (##vector-length _ctx141002_) '3)
                    (if (fxpositive? _phi141003_)
                        (let ((_$e141005_
                               (##unchecked-structure-ref
                                _ctx141002_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e141005_
                              ((lambda (_g141007141009_)
                                 (_K141000_
                                  _g141007141009_
                                  (fx- _phi141003_ '1)))
                               _$e141005_)
                              (_shift140998_
                               _ctx141002_
                               '1
                               _make-phi/up140996_
                               _phi141003_
                               _K141000_)))
                        (let ((_$e141012_
                               (##unchecked-structure-ref
                                _ctx141002_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e141012_
                              ((lambda (_g141014141016_)
                                 (_K141000_
                                  _g141014141016_
                                  (fx+ _phi141003_ '1)))
                               _$e141012_)
                              (_shift140998_
                               _ctx141002_
                               '-1
                               _make-phi/down140997_
                               _phi141003_
                               _K141000_))))
                    _ctx141002_))))))
    (define gx#core-context-get
      (lambda (_ctx140989_ _key140990_)
        (table-ref
         (##unchecked-structure-ref _ctx140989_ '2 gx#expander-context::t '#f)
         _key140990_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140985_ _key140986_ _val140987_)
        (table-set!
         (##unchecked-structure-ref _ctx140985_ '2 gx#expander-context::t '#f)
         _key140986_
         _val140987_)))
    (define gx#core-context-resolve
      (lambda (_ctx140972_ _key140973_)
        (let _lp140975_ ((_ctx140977_ _ctx140972_))
          (let ((_$e140979_ (gx#core-context-get _ctx140977_ _key140973_)))
            (if _$e140979_
                (values _$e140979_)
                (let ((_$e140982_
                       (if (fx> (##vector-length _ctx140977_) '3)
                           (##unchecked-structure-ref
                            _ctx140977_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e140982_ (_lp140975_ _$e140982_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140962_ _key140963_ _val140964_ _rebind140965_)
        (let ((_$e140967_ (gx#core-context-get _ctx140962_ _key140963_)))
          (if _$e140967_
              ((lambda (_xval140970_)
                 (gx#core-context-put!
                  _ctx140962_
                  _key140963_
                  (_rebind140965_ _xval140970_)))
               _$e140967_)
              (gx#core-context-put! _ctx140962_ _key140963_ _val140964_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140940_ _stop?140941_)
        (let _lp140943_ ((_ctx140945_ _ctx140940_))
          (if (_stop?140941_ _ctx140945_)
              _ctx140945_
              (if (##structure-instance-of? _ctx140945_ 'gx#context-phi::t)
                  (_lp140943_
                   (##unchecked-structure-ref
                    _ctx140945_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140951_ (gx#current-expander-context))
               (_stop?140953_ gx#top-context?))
          (gx#core-context-top__% _ctx140951_ _stop?140953_))))
    (define gx#core-context-top__1
      (lambda (_ctx140955_)
        (let ((_stop?140957_ gx#top-context?))
          (gx#core-context-top__% _ctx140955_ _stop?140957_))))
    (define gx#core-context-top
      (lambda _g148103_
        (let ((_g148102_ (##length _g148103_)))
          (cond ((##fx= _g148102_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g148103_))
                ((##fx= _g148102_ 1)
                 (apply (lambda (_ctx140955_)
                          (gx#core-context-top__1 _ctx140955_))
                        _g148103_))
                ((##fx= _g148102_ 2)
                 (apply (lambda (_ctx140959_ _stop?140960_)
                          (gx#core-context-top__% _ctx140959_ _stop?140960_))
                        _g148103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g148103_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140925_)
        (let _lp140927_ ((_ctx140929_ _ctx140925_))
          (if (##structure-instance-of? _ctx140929_ 'gx#context-phi::t)
              (_lp140927_
               (##unchecked-structure-ref
                _ctx140929_
                '3
                gx#phi-context::t
                '#f))
              _ctx140929_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140935_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140935_))))
    (define gx#core-context-root
      (lambda _g148105_
        (let ((_g148104_ (##length _g148105_)))
          (cond ((##fx= _g148104_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g148105_))
                ((##fx= _g148104_ 1)
                 (apply (lambda (_ctx140937_)
                          (gx#core-context-root__% _ctx140937_))
                        _g148105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g148105_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140906_ . __140903140907_)
        (let ((_$e140910_ (gx#current-expander-allow-rebind?)))
          (if _$e140910_
              _$e140910_
              (if (##structure-instance-of? _ctx140906_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx140906_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx140906_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140917_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140917_))))
    (define gx#core-context-rebind?
      (lambda _g148107_
        (let ((_g148106_ (##length _g148107_)))
          (cond ((##fx= _g148106_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g148107_))
                ((##fx= _g148106_ 1)
                 (apply (lambda (_ctx140919_)
                          (gx#core-context-rebind?__% _ctx140919_))
                        _g148107_))
                ((##fx>= _g148106_ 1)
                 (apply gx#core-context-rebind?__% _g148107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g148107_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140889_)
        (let ((_$e140891_ (gx#core-context-top__1 _ctx140889_)))
          (if _$e140891_
              ((lambda (_ctx140894_)
                 (if (##structure-instance-of?
                      _ctx140894_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx140894_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e140891_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140900_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140900_))))
    (define gx#core-context-namespace
      (lambda _g148109_
        (let ((_g148108_ (##length _g148109_)))
          (cond ((##fx= _g148108_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g148109_))
                ((##fx= _g148108_ 1)
                 (apply (lambda (_ctx140902_)
                          (gx#core-context-namespace__% _ctx140902_))
                        _g148109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g148109_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140875_ _is?140876_)
        (if (##structure-direct-instance-of?
             _bind140875_
             'gx#syntax-binding::t)
            (_is?140876_
             (##unchecked-structure-ref
              _bind140875_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140881_)
        (let ((_is?140883_ gx#expander?))
          (gx#expander-binding?__% _bind140881_ _is?140883_))))
    (define gx#expander-binding?
      (lambda _g148111_
        (let ((_g148110_ (##length _g148111_)))
          (cond ((##fx= _g148110_ 1)
                 (apply (lambda (_bind140881_)
                          (gx#expander-binding?__0 _bind140881_))
                        _g148111_))
                ((##fx= _g148110_ 2)
                 (apply (lambda (_bind140885_ _is?140886_)
                          (gx#expander-binding?__% _bind140885_ _is?140886_))
                        _g148111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g148111_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140872_)
        (gx#expander-binding?__% _bind140872_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140870_)
        (gx#expander-binding?__% _bind140870_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140864_)
        (letrec ((_direct-special-form?140866_
                  (lambda (_obj140868_)
                    (##structure-direct-instance-of?
                     _obj140868_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140864_
           _direct-special-form?140866_))))
    (define gx#special-form-binding?
      (lambda (_bind140862_)
        (gx#expander-binding?__% _bind140862_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140853_)
        (letrec ((_feature?140855_
                  (lambda (_e140857_)
                    (let ((_$e140859_
                           (##structure-instance-of?
                            _e140857_
                            'gx#feature-expander::t)))
                      (if _$e140859_
                          _$e140859_
                          (##structure-instance-of?
                           _e140857_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind140853_ _feature?140855_))))
    (define gx#private-feature-binding?
      (lambda (_bind140851_)
        (gx#expander-binding?__% _bind140851_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140838_ _bound?140839_)
        (if (gx#identifier? _id140838_)
            (_bound?140839_ (gx#resolve-identifier__0 _id140838_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140844_)
        (let ((_bound?140846_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140844_ _bound?140846_))))
    (define gx#core-bound-identifier?
      (lambda _g148113_
        (let ((_g148112_ (##length _g148113_)))
          (cond ((##fx= _g148112_ 1)
                 (apply (lambda (_id140844_)
                          (gx#core-bound-identifier?__0 _id140844_))
                        _g148113_))
                ((##fx= _g148112_ 2)
                 (apply (lambda (_id140848_ _bound?140849_)
                          (gx#core-bound-identifier?__%
                           _id140848_
                           _bound?140849_))
                        _g148113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g148113_))))))
    (define gx#core-identifier=?
      (lambda (_x140828_ _y140829_)
        (letrec ((_y=?140831_
                  (lambda (_xid140835_)
                    ((if (list? _y140829_) memq eq?) _xid140835_ _y140829_))))
          (let ((_bind140833_ (gx#resolve-identifier__0 _x140828_)))
            (if (##structure-instance-of? _bind140833_ 'gx#binding::t)
                (_y=?140831_
                 (##unchecked-structure-ref _bind140833_ '1 gx#binding::t '#f))
                (_y=?140831_ (gx#stx-e _x140828_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140826_)
        (if (interned-symbol? _e140826_)
            (string-index (symbol->string _e140826_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140781_ _src140782_ _ctx140783_ _marks140784_)
        (if (##structure? _stx140781_)
            (let ((_$e140786_ (gx#sealed-syntax-unwrap _stx140781_)))
              (if _$e140786_
                  (values _$e140786_)
                  (if (gx#identifier? _stx140781_)
                      (let ((_id140789_
                             (gx#stx-unwrap__% _stx140781_ _marks140784_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id140789_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e140791_
                                (##unchecked-structure-ref
                                 _id140789_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e140791_ _$e140791_ _src140782_))
                         _ctx140783_
                         (##unchecked-structure-ref
                          _id140789_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx140781_)
                       (let ((_$e140794_ (gx#stx-source _stx140781_)))
                         (if _$e140794_ _$e140794_ _src140782_))
                       _ctx140783_
                       (reverse _marks140784_)))))
            (##structure
             gx#syntax-quote::t
             _stx140781_
             _src140782_
             _ctx140783_
             (reverse _marks140784_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140800_)
        (let* ((_src140802_ '#f)
               (_ctx140804_ (gx#current-expander-context))
               (_marks140806_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140800_
           _src140802_
           _ctx140804_
           _marks140806_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140808_ _src140809_)
        (let* ((_ctx140811_ (gx#current-expander-context))
               (_marks140813_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140808_
           _src140809_
           _ctx140811_
           _marks140813_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140815_ _src140816_ _ctx140817_)
        (let ((_marks140819_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140815_
           _src140816_
           _ctx140817_
           _marks140819_))))
    (define gx#core-quote-syntax
      (lambda _g148115_
        (let ((_g148114_ (##length _g148115_)))
          (cond ((##fx= _g148114_ 1)
                 (apply (lambda (_stx140800_)
                          (gx#core-quote-syntax__0 _stx140800_))
                        _g148115_))
                ((##fx= _g148114_ 2)
                 (apply (lambda (_stx140808_ _src140809_)
                          (gx#core-quote-syntax__1 _stx140808_ _src140809_))
                        _g148115_))
                ((##fx= _g148114_ 3)
                 (apply (lambda (_stx140815_ _src140816_ _ctx140817_)
                          (gx#core-quote-syntax__2
                           _stx140815_
                           _src140816_
                           _ctx140817_))
                        _g148115_))
                ((##fx= _g148114_ 4)
                 (apply (lambda (_stx140821_
                                 _src140822_
                                 _ctx140823_
                                 _marks140824_)
                          (gx#core-quote-syntax__%
                           _stx140821_
                           _src140822_
                           _ctx140823_
                           _marks140824_))
                        _g148115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g148115_))))))
    (define gx#core-cons
      (lambda (_hd140777_ _tl140778_)
        (cons (gx#core-quote-syntax__0 _hd140777_) _tl140778_)))
    (define gx#core-list
      (lambda (_hd140774_ . _rest140775_)
        (cons (gx#core-quote-syntax__0 _hd140774_) _rest140775_)))
    (define gx#core-cons*
      (lambda (_hd140771_ . _rest140772_)
        (apply cons* (gx#core-quote-syntax__0 _hd140771_) _rest140772_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140745_ _rel140746_)
        (let ((_path140758_ (gx#stx-e _stx-path140745_))
              (_reldir140759_
               (let _lp140748_ ((_relsrc140750_
                                 (let ((_$e140755_
                                        (gx#stx-source _stx-path140745_)))
                                   (if _$e140755_ _$e140755_ _rel140746_))))
                 (if (##structure-instance-of? _relsrc140750_ 'gerbil#AST::t)
                     (_lp140748_
                      (let ((_$e140752_ (gx#stx-source _relsrc140750_)))
                        (if _$e140752_ _$e140752_ (gx#stx-e _relsrc140750_))))
                     (if (source-location-path? _relsrc140750_)
                         (path-directory (source-location-path _relsrc140750_))
                         (if (string? _relsrc140750_)
                             (path-directory _relsrc140750_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140758_ (path-normalize _reldir140759_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140764_)
        (let ((_rel140766_ '#f))
          (gx#core-resolve-path__% _stx-path140764_ _rel140766_))))
    (define gx#core-resolve-path
      (lambda _g148117_
        (let ((_g148116_ (##length _g148117_)))
          (cond ((##fx= _g148116_ 1)
                 (apply (lambda (_stx-path140764_)
                          (gx#core-resolve-path__0 _stx-path140764_))
                        _g148117_))
                ((##fx= _g148116_ 2)
                 (apply (lambda (_stx-path140768_ _rel140769_)
                          (gx#core-resolve-path__%
                           _stx-path140768_
                           _rel140769_))
                        _g148117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g148117_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140701_ _ctx140702_)
        (let* ((_repr140703140710_ _repr140701_)
               (_E140705140714_
                (lambda () (error '"No clause matching" _repr140703140710_)))
               (_K140706140722_
                (lambda (_subs140717_ _phi140718_)
                  (let ((_subst140720_
                         (if (not (null? _subs140717_))
                             (list->table _subs140717_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst140720_
                     _ctx140702_
                     _phi140718_
                     '#f)))))
          (if (##pair? _repr140703140710_)
              (let ((_hd140707140725_ (##car _repr140703140710_))
                    (_tl140708140727_ (##cdr _repr140703140710_)))
                (let* ((_phi140730_ _hd140707140725_)
                       (_subs140732_ _tl140708140727_))
                  (_K140706140722_ _subs140732_ _phi140730_)))
              (_E140705140714_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140737_)
        (let ((_ctx140739_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140737_ _ctx140739_))))
    (define gx#core-deserialize-mark
      (lambda _g148119_
        (let ((_g148118_ (##length _g148119_)))
          (cond ((##fx= _g148118_ 1)
                 (apply (lambda (_repr140737_)
                          (gx#core-deserialize-mark__0 _repr140737_))
                        _g148119_))
                ((##fx= _g148118_ 2)
                 (apply (lambda (_repr140741_ _ctx140742_)
                          (gx#core-deserialize-mark__%
                           _repr140741_
                           _ctx140742_))
                        _g148119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g148119_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140698_)
        (gx#stx-rewrap _stx140698_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140696_)
        (gx#stx-unwrap__% _stx140696_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140666_)
        (let* ((_g140667140675_ (gx#current-expander-marks))
               (_else140669140683_ (lambda () _stx140666_))
               (_K140671140688_
                (lambda (_hd140686_)
                  (gx#stx-apply-mark _stx140666_ _hd140686_))))
          (if (##pair? _g140667140675_)
              (let* ((_hd140672140691_ (##car _g140667140675_))
                     (_hd140694_ _hd140672140691_))
                (_K140671140688_ _hd140694_))
              (_else140669140683_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140651_ _E140652_)
        (let ((_bind140654_ (gx#resolve-identifier__0 _stx140651_)))
          (if (##structure-direct-instance-of?
               _bind140654_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140654_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140652_ _stx140651_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140659_)
        (let ((_E140661_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140659_ _E140661_))))
    (define gx#syntax-local-e
      (lambda _g148121_
        (let ((_g148120_ (##length _g148121_)))
          (cond ((##fx= _g148120_ 1)
                 (apply (lambda (_stx140659_)
                          (gx#syntax-local-e__0 _stx140659_))
                        _g148121_))
                ((##fx= _g148120_ 2)
                 (apply (lambda (_stx140663_ _E140664_)
                          (gx#syntax-local-e__% _stx140663_ _E140664_))
                        _g148121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g148121_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140635_ _E140636_)
        (let ((_e140638_ (gx#syntax-local-e__% _stx140635_ _E140636_)))
          (if (##structure-instance-of? _e140638_ 'gx#expander::t)
              (##structure-ref _e140638_ '1 gx#expander::t '#f)
              _e140638_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140643_)
        (let ((_E140645_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140643_ _E140645_))))
    (define gx#syntax-local-value
      (lambda _g148123_
        (let ((_g148122_ (##length _g148123_)))
          (cond ((##fx= _g148122_ 1)
                 (apply (lambda (_stx140643_)
                          (gx#syntax-local-value__0 _stx140643_))
                        _g148123_))
                ((##fx= _g148122_ 2)
                 (apply (lambda (_stx140647_ _E140648_)
                          (gx#syntax-local-value__% _stx140647_ _E140648_))
                        _g148123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g148123_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140632_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140632_)))))
