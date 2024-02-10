(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707601716)
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
      (lambda _$args143524_
        (apply make-struct-instance gx#expander-context::t _$args143524_)))
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
      (lambda _$args143521_
        (apply make-struct-instance gx#root-context::t _$args143521_)))
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
      (lambda _$args143518_
        (apply make-struct-instance gx#phi-context::t _$args143518_)))
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
      (lambda _$args143515_
        (apply make-struct-instance gx#top-context::t _$args143515_)))
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
      (lambda _$args143512_
        (apply make-struct-instance gx#module-context::t _$args143512_)))
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
      (lambda _$args143509_
        (apply make-struct-instance gx#prelude-context::t _$args143509_)))
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
      (lambda _$args143506_
        (apply make-struct-instance gx#local-context::t _$args143506_)))
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
      (lambda (_self143490_ _id143491_ _super143492_)
        (if (##fx< '3 (##structure-length _self143490_))
            (begin
              (##unchecked-structure-set!
               _self143490_
               _id143491_
               '1
               (##structure-type _self143490_)
               '#f)
              (##unchecked-structure-set!
               _self143490_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143490_)
               '#f)
              (##unchecked-structure-set!
               _self143490_
               _super143492_
               '3
               (##structure-type _self143490_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143490_
                   '3
                   (##vector-length _self143490_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143497_ _id143498_)
        (let ((_super143500_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143497_ _id143498_ _super143500_))))
    (define gx#phi-context:::init!
      (lambda _g148035_
        (let ((_g148034_ (##length _g148035_)))
          (cond ((##fx= _g148034_ 2)
                 (apply (lambda (_self143497_ _id143498_)
                          (gx#phi-context:::init!__0 _self143497_ _id143498_))
                        _g148035_))
                ((##fx= _g148034_ 3)
                 (apply (lambda (_self143502_ _id143503_ _super143504_)
                          (gx#phi-context:::init!__%
                           _self143502_
                           _id143503_
                           _super143504_))
                        _g148035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g148035_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143354_ _super143355_)
        (if (##fx< '3 (##structure-length _self143354_))
            (begin
              (##unchecked-structure-set!
               _self143354_
               (gensym 'L)
               '1
               (##structure-type _self143354_)
               '#f)
              (##unchecked-structure-set!
               _self143354_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143354_)
               '#f)
              (##unchecked-structure-set!
               _self143354_
               _super143355_
               '3
               (##structure-type _self143354_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143354_
                   '3
                   (##vector-length _self143354_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143360_)
        (let ((_super143362_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143360_ _super143362_))))
    (define gx#local-context:::init!
      (lambda _g148037_
        (let ((_g148036_ (##length _g148037_)))
          (cond ((##fx= _g148036_ 1)
                 (apply (lambda (_self143360_)
                          (gx#local-context:::init!__0 _self143360_))
                        _g148037_))
                ((##fx= _g148036_ 2)
                 (apply (lambda (_self143364_ _super143365_)
                          (gx#local-context:::init!__%
                           _self143364_
                           _super143365_))
                        _g148037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g148037_))))))
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
      (lambda _$args143228_
        (apply make-struct-instance gx#binding::t _$args143228_)))
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
      (lambda _$args143225_
        (apply make-struct-instance gx#runtime-binding::t _$args143225_)))
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
      (lambda _$args143222_
        (apply make-struct-instance gx#local-binding::t _$args143222_)))
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
      (lambda _$args143219_
        (apply make-struct-instance gx#top-binding::t _$args143219_)))
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
      (lambda _$args143216_
        (apply make-struct-instance gx#module-binding::t _$args143216_)))
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
      (lambda _$args143213_
        (apply make-struct-instance gx#extern-binding::t _$args143213_)))
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
      (lambda _$args143210_
        (apply make-struct-instance gx#syntax-binding::t _$args143210_)))
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
      (lambda _$args143207_
        (apply make-struct-instance gx#import-binding::t _$args143207_)))
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
      (lambda _$args143204_
        (apply make-struct-instance gx#alias-binding::t _$args143204_)))
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
      (lambda _$args143201_
        (apply make-struct-instance gx#expander::t _$args143201_)))
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
      (lambda _$args143198_
        (apply make-struct-instance gx#core-expander::t _$args143198_)))
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
      (lambda _$args143195_
        (apply make-struct-instance gx#expression-form::t _$args143195_)))
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
      (lambda _$args143192_
        (apply make-struct-instance gx#special-form::t _$args143192_)))
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
      (lambda _$args143189_
        (apply make-struct-instance gx#definition-form::t _$args143189_)))
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
      (lambda _$args143186_
        (apply make-struct-instance gx#top-special-form::t _$args143186_)))
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
      (lambda _$args143183_
        (apply make-struct-instance gx#module-special-form::t _$args143183_)))
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
      (lambda _$args143180_
        (apply make-struct-instance gx#feature-expander::t _$args143180_)))
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
      (lambda _$args143177_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args143177_)))
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
      (lambda _$args143174_
        (apply make-struct-instance gx#reserved-expander::t _$args143174_)))
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
      (lambda _$args143171_
        (apply make-struct-instance gx#macro-expander::t _$args143171_)))
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
      (lambda _$args143168_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args143168_)))
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
      (lambda _$args143165_
        (apply make-struct-instance gx#user-expander::t _$args143165_)))
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
      (lambda _$args143162_
        (apply make-struct-instance gx#expander-mark::t _$args143162_)))
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
      (lambda (_ctx143147_ _message143148_ _stx143149_ . _details143150_)
        (let ((_ctx143160_
               (let ((_$e143152_ _ctx143147_))
                 (if _$e143152_
                     _$e143152_
                     (let ((_$e143155_ (gx#core-context-top__0)))
                       (if _$e143155_
                           ((lambda (_ctx143158_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx143158_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e143155_)
                           '#f))))))
          (raise (make-syntax-error
                  _message143148_
                  (cons _stx143149_ _details143150_)
                  _ctx143160_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx143134_ _expression?143135_)
        (gx#eval-syntax* (gx#core-expand__% _stx143134_ _expression?143135_))))
    (define gx#eval-syntax__0
      (lambda (_stx143140_)
        (let ((_expression?143142_ '#f))
          (gx#eval-syntax__% _stx143140_ _expression?143142_))))
    (define gx#eval-syntax
      (lambda _g148039_
        (let ((_g148038_ (##length _g148039_)))
          (cond ((##fx= _g148038_ 1)
                 (apply (lambda (_stx143140_) (gx#eval-syntax__0 _stx143140_))
                        _g148039_))
                ((##fx= _g148038_ 2)
                 (apply (lambda (_stx143144_ _expression?143145_)
                          (gx#eval-syntax__% _stx143144_ _expression?143145_))
                        _g148039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g148039_))))))
    (define gx#eval-syntax*
      (lambda (_stx143131_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx143131_))))
    (define gx#core-expand__%
      (lambda (_stx143118_ _expression?143119_)
        (if _expression?143119_
            (gx#core-expand-expression _stx143118_)
            (gx#core-expand-top _stx143118_))))
    (define gx#core-expand__0
      (lambda (_stx143124_)
        (let ((_expression?143126_ '#f))
          (gx#core-expand__% _stx143124_ _expression?143126_))))
    (define gx#core-expand
      (lambda _g148041_
        (let ((_g148040_ (##length _g148041_)))
          (cond ((##fx= _g148040_ 1)
                 (apply (lambda (_stx143124_) (gx#core-expand__0 _stx143124_))
                        _g148041_))
                ((##fx= _g148040_ 2)
                 (apply (lambda (_stx143128_ _expression?143129_)
                          (gx#core-expand__% _stx143128_ _expression?143129_))
                        _g148041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g148041_))))))
    (define gx#core-expand-top
      (lambda (_stx143085_)
        (let* ((_stx143087_ (gx#core-expand*__0 _stx143085_))
               (_e143088143095_ _stx143087_)
               (_E143090143099_
                (lambda () (gx#core-expand-expression _stx143087_)))
               (_E143089143113_
                (lambda ()
                  (if (gx#stx-pair? _e143088143095_)
                      (let ((_e143091143103_ (gx#syntax-e _e143088143095_)))
                        (let ((_hd143092143106_ (##car _e143091143103_))
                              (_tl143093143108_ (##cdr _e143091143103_)))
                          (let ((_form143111_ _hd143092143106_))
                            (if (gx#core-bound-identifier?__0 _form143111_)
                                _stx143087_
                                (_E143090143099_)))))
                      (_E143090143099_)))))
          (_E143089143113_))))
    (define gx#core-expand-expression
      (lambda (_stx143032_)
        (letrec ((_sealed-expression?143034_
                  (lambda (_hd143055_)
                    (if (gx#sealed-syntax? _hd143055_)
                        (let* ((_e143056143063_ _hd143055_)
                               (_E143058143067_ (lambda () '#f))
                               (_E143057143081_
                                (lambda ()
                                  (if (gx#stx-pair? _e143056143063_)
                                      (let ((_e143059143071_
                                             (gx#syntax-e _e143056143063_)))
                                        (let ((_hd143060143074_
                                               (##car _e143059143071_))
                                              (_tl143061143076_
                                               (##cdr _e143059143071_)))
                                          (let ((_form143079_
                                                 _hd143060143074_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form143079_
                                                 gx#expression-form-binding?)
                                                (_E143058143067_)))))
                                      (_E143058143067_)))))
                          (_E143057143081_))
                        '#f)))
                 (_illegal-expression143035_
                  (lambda (_hd143053_ . _g148042_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx143032_
                     _hd143053_)))
                 (_expand-e143036_
                  (lambda (_form143048_ _hd143049_)
                    (let ((_bind143051_
                           (if (##structure-instance-of?
                                _form143048_
                                'gx#binding::t)
                               _form143048_
                               (gx#resolve-identifier__0 _form143048_))))
                      (if (gx#core-expander-binding? _bind143051_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind143051_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd143049_
                            (gx#stx-source _stx143032_)))
                          (if (##structure-direct-instance-of?
                               _bind143051_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind143051_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd143049_
                                 (gx#stx-source _stx143032_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx143032_
                               _form143048_)))))))
          (let ((_hd143038_ (gx#core-expand-head _stx143032_)))
            (if (_sealed-expression?143034_ _hd143038_)
                _hd143038_
                (if (gx#stx-pair? _hd143038_)
                    (let* ((_form143040_ (gx#stx-car _hd143038_))
                           (_bind143042_
                            (if (gx#identifier? _form143040_)
                                (gx#resolve-identifier__0 _form143040_)
                                '#f)))
                      (if (or (not _bind143042_)
                              (not (gx#core-expander-binding? _bind143042_)))
                          (_expand-e143036_ '%%app (cons '%%app _hd143038_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind143042_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd143038_
                               _illegal-expression143035_)
                              (if (gx#expression-form-binding? _bind143042_)
                                  (_expand-e143036_ _bind143042_ _hd143038_)
                                  (if (gx#direct-special-form-binding?
                                       _bind143042_)
                                      (gx#core-expand-expression
                                       (_expand-e143036_
                                        _bind143042_
                                        _hd143038_))
                                      (_illegal-expression143035_
                                       _hd143038_))))))
                    (if (gx#core-bound-identifier?__0 _hd143038_)
                        (_illegal-expression143035_ _hd143038_)
                        (if (gx#identifier? _hd143038_)
                            (_expand-e143036_
                             '%%ref
                             (cons '%%ref (cons _hd143038_ '())))
                            (if (gx#stx-datum? _hd143038_)
                                (_expand-e143036_
                                 '%#quote
                                 (cons '%#quote (cons _hd143038_ '())))
                                (_illegal-expression143035_
                                 _hd143038_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx143027_)
        (call-with-parameters
         (lambda ()
           (let ((_stx143030_ (gx#core-expand-expression _stx143027_)))
             (values _stx143030_ (gx#eval-syntax* _stx143030_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx143008_ _stop?143009_)
        (let _lp143011_ ((_stx143013_ _stx143008_))
          (if (_stop?143009_ _stx143013_)
              _stx143013_
              (let ((_rstx143015_ (gx#core-expand1 _stx143013_)))
                (if (eq? _stx143013_ _rstx143015_)
                    _stx143013_
                    (_lp143011_ _rstx143015_)))))))
    (define gx#core-expand*__0
      (lambda (_stx143020_)
        (let ((_stop?143022_ false))
          (gx#core-expand*__% _stx143020_ _stop?143022_))))
    (define gx#core-expand*
      (lambda _g148044_
        (let ((_g148043_ (##length _g148044_)))
          (cond ((##fx= _g148043_ 1)
                 (apply (lambda (_stx143020_) (gx#core-expand*__0 _stx143020_))
                        _g148044_))
                ((##fx= _g148043_ 2)
                 (apply (lambda (_stx143024_ _stop?143025_)
                          (gx#core-expand*__% _stx143024_ _stop?143025_))
                        _g148044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g148044_))))))
    (define gx#core-expand1
      (lambda (_stx142964_)
        (letrec ((_step142966_
                  (lambda (_hd143003_)
                    (let ((_bind143005_ (gx#resolve-identifier__0 _hd143003_)))
                      (if (##structure-instance-of?
                           _bind143005_
                           'gx#runtime-binding::t)
                          _stx142964_
                          (if (##structure-direct-instance-of?
                               _bind143005_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind143005_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx142964_)
                              (if (not _bind143005_)
                                  _stx142964_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx142964_))))))))
          (let* ((_e142967142975_ _stx142964_)
                 (_E142973142979_ (lambda () _stx142964_))
                 (_E142969142985_
                  (lambda ()
                    (let ((_hd142983_ _e142967142975_))
                      (if (gx#identifier? _hd142983_)
                          (_step142966_ _hd142983_)
                          (_E142973142979_)))))
                 (_E142968142999_
                  (lambda ()
                    (if (gx#stx-pair? _e142967142975_)
                        (let ((_e142970142989_ (gx#syntax-e _e142967142975_)))
                          (let ((_hd142971142992_ (##car _e142970142989_))
                                (_tl142972142994_ (##cdr _e142970142989_)))
                            (let ((_hd142997_ _hd142971142992_))
                              (if (gx#identifier? _hd142997_)
                                  (_step142966_ _hd142997_)
                                  (_E142969142985_)))))
                        (_E142969142985_)))))
            (_E142968142999_)))))
    (define gx#core-expand-head
      (lambda (_stx142930_)
        (letrec ((_stop?142932_
                  (lambda (_stx142934_)
                    (let* ((_e142935142942_ _stx142934_)
                           (_E142937142946_ (lambda () '#f))
                           (_E142936142960_
                            (lambda ()
                              (if (gx#stx-pair? _e142935142942_)
                                  (let ((_e142938142950_
                                         (gx#syntax-e _e142935142942_)))
                                    (let ((_hd142939142953_
                                           (##car _e142938142950_))
                                          (_tl142940142955_
                                           (##cdr _e142938142950_)))
                                      (let ((_hd142958_ _hd142939142953_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd142958_)
                                            (_E142937142946_)))))
                                  (_E142937142946_)))))
                      (_E142936142960_)))))
          (gx#core-expand*__% _stx142930_ _stop?142932_))))
    (define gx#core-expand-block__%
      (lambda (_stx142736_
               _expand-special142737_
               _begin-form142738_
               _expand-e142739_)
        (letrec ((_expand-splice142741_
                  (lambda (_hd142904_ _body142905_ _rest142906_ _r142907_)
                    (if (gx#stx-list? _body142905_)
                        (_K142745_
                         (gx#stx-foldr cons _rest142906_ _body142905_)
                         _r142907_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142736_
                         _hd142904_))))
                 (_expand-cond-expand142742_
                  (lambda (_hd142900_ _rest142901_ _r142902_)
                    (_K142745_
                     (cons (gx#core-expand-cond-expand% _hd142900_)
                           _rest142901_)
                     _r142902_)))
                 (_expand-include142743_
                  (lambda (_hd142849_ _rest142850_ _r142851_)
                    (let* ((_e142852142862_ _hd142849_)
                           (_E142854142866_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142852142862_)))
                           (_E142853142896_
                            (lambda ()
                              (if (gx#stx-pair? _e142852142862_)
                                  (let ((_e142855142870_
                                         (gx#syntax-e _e142852142862_)))
                                    (let ((_hd142856142873_
                                           (##car _e142855142870_))
                                          (_tl142857142875_
                                           (##cdr _e142855142870_)))
                                      (if (gx#stx-pair? _tl142857142875_)
                                          (let ((_e142858142878_
                                                 (gx#syntax-e
                                                  _tl142857142875_)))
                                            (let ((_hd142859142881_
                                                   (##car _e142858142878_))
                                                  (_tl142860142883_
                                                   (##cdr _e142858142878_)))
                                              (let ((_path142886_
                                                     _hd142859142881_))
                                                (if (gx#stx-null?
                                                     _tl142860142883_)
                                                    (if (gx#stx-string?
                                                         _path142886_)
                                                        (let* ((_rpath142888_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142886_
                         (gx#stx-source _hd142849_)))
                       (_block142890_
                        (gx#core-expand-include%__% _hd142849_ _rpath142888_))
                       (_rbody142893_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142890_
                            _expand-special142737_
                            '#f
                            _expand-e142739_))
                         gx#current-expander-path
                         (cons _rpath142888_ (gx#current-expander-path)))))
                  (_K142745_
                   _rest142850_
                   (foldr1 cons _r142851_ _rbody142893_)))
                (_E142854142866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142854142866_)))))
                                          (_E142854142866_))))
                                  (_E142854142866_)))))
                      (_E142853142896_))))
                 (_expand-expression142744_
                  (lambda (_hd142845_ _rest142846_ _r142847_)
                    (_K142745_
                     _rest142846_
                     (cons (_expand-e142739_ _hd142845_) _r142847_))))
                 (_K142745_
                  (lambda (_rest142775_ _r142776_)
                    (let* ((_e142777142784_ _rest142775_)
                           (_E142779142788_
                            (lambda ()
                              (if _begin-form142738_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142738_
                                    (reverse _r142776_))
                                   (gx#stx-source _stx142736_))
                                  _r142776_)))
                           (_E142778142841_
                            (lambda ()
                              (if (gx#stx-pair? _e142777142784_)
                                  (let ((_e142780142792_
                                         (gx#syntax-e _e142777142784_)))
                                    (let ((_hd142781142795_
                                           (##car _e142780142792_))
                                          (_tl142782142797_
                                           (##cdr _e142780142792_)))
                                      (let* ((_hd142800_ _hd142781142795_)
                                             (_rest142802_ _tl142782142797_))
                                        (if '#t
                                            (let* ((_hd142804_
                                                    (gx#core-expand-head
                                                     _hd142800_))
                                                   (_e142805142812_ _hd142804_)
                                                   (_E142807142816_
                                                    (lambda ()
                                                      (_expand-expression142744_
                                                       _hd142804_
                                                       _rest142802_
                                                       _r142776_)))
                                                   (_E142806142837_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142805142812_)
                                                          (let ((_e142808142820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142805142812_)))
                    (let ((_hd142809142823_ (##car _e142808142820_))
                          (_tl142810142825_ (##cdr _e142808142820_)))
                      (let* ((_form142828_ _hd142809142823_)
                             (_body142830_ _tl142810142825_))
                        (if '#t
                            (let ((_bind142832_
                                   (if (gx#identifier? _form142828_)
                                       (gx#resolve-identifier__0 _form142828_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142832_)
                                  (let ((_$e142834_
                                         (##unchecked-structure-ref
                                          _bind142832_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e142834_)
                                        (_expand-splice142741_
                                         _hd142804_
                                         _body142830_
                                         _rest142802_
                                         _r142776_)
                                        (if (eq? '%#cond-expand _$e142834_)
                                            (_expand-cond-expand142742_
                                             _hd142804_
                                             _rest142802_
                                             _r142776_)
                                            (if (eq? '%#include _$e142834_)
                                                (_expand-include142743_
                                                 _hd142804_
                                                 _rest142802_
                                                 _r142776_)
                                                (_expand-special142737_
                                                 _hd142804_
                                                 _K142745_
                                                 _rest142802_
                                                 _r142776_)))))
                                  (_expand-expression142744_
                                   _hd142804_
                                   _rest142802_
                                   _r142776_)))
                            (_E142807142816_)))))
                  (_E142807142816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142806142837_))
                                            (_E142779142788_)))))
                                  (_E142779142788_)))))
                      (_E142778142841_)))))
          (let* ((_e142746142753_ _stx142736_)
                 (_E142748142757_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142746142753_)))
                 (_E142747142771_
                  (lambda ()
                    (if (gx#stx-pair? _e142746142753_)
                        (let ((_e142749142761_ (gx#syntax-e _e142746142753_)))
                          (let ((_hd142750142764_ (##car _e142749142761_))
                                (_tl142751142766_ (##cdr _e142749142761_)))
                            (let ((_body142769_ _tl142751142766_))
                              (if (gx#stx-list? _body142769_)
                                  (_K142745_ _body142769_ '())
                                  (_E142748142757_)))))
                        (_E142748142757_)))))
            (_E142747142771_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142912_ _expand-special142913_)
        (let* ((_begin-form142915_ '%#begin)
               (_expand-e142917_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142912_
           _expand-special142913_
           _begin-form142915_
           _expand-e142917_))))
    (define gx#core-expand-block__1
      (lambda (_stx142919_ _expand-special142920_ _begin-form142921_)
        (let ((_expand-e142923_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142919_
           _expand-special142920_
           _begin-form142921_
           _expand-e142923_))))
    (define gx#core-expand-block
      (lambda _g148046_
        (let ((_g148045_ (##length _g148046_)))
          (cond ((##fx= _g148045_ 2)
                 (apply (lambda (_stx142912_ _expand-special142913_)
                          (gx#core-expand-block__0
                           _stx142912_
                           _expand-special142913_))
                        _g148046_))
                ((##fx= _g148045_ 3)
                 (apply (lambda (_stx142919_
                                 _expand-special142920_
                                 _begin-form142921_)
                          (gx#core-expand-block__1
                           _stx142919_
                           _expand-special142920_
                           _begin-form142921_))
                        _g148046_))
                ((##fx= _g148045_ 4)
                 (apply (lambda (_stx142925_
                                 _expand-special142926_
                                 _begin-form142927_
                                 _expand-e142928_)
                          (gx#core-expand-block__%
                           _stx142925_
                           _expand-special142926_
                           _begin-form142927_
                           _expand-e142928_))
                        _g148046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g148046_))))))
    (define gx#core-expand-block*
      (lambda (_stx142684_ _expand-special142685_)
        (let* ((_g142686142697_
                (gx#core-expand-block__1
                 _stx142684_
                 _expand-special142685_
                 '#f))
               (_E142690142701_
                (lambda () (error '"No clause matching" _g142686142697_))))
          (let ((_K142695142732_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142684_)))
                (_K142692142718_ (lambda (_expr142716_) _expr142716_))
                (_K142691142707_
                 (lambda (_body142705_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142705_))
                    (gx#stx-source _stx142684_)))))
            (let ((_try-match142688142728_
                   (lambda ()
                     (if (##pair? _g142686142697_)
                         (let ((_tl142694142723_ (##cdr _g142686142697_))
                               (_hd142693142721_ (##car _g142686142697_)))
                           (if (##null? _tl142694142723_)
                               (let ((_expr142726_ _hd142693142721_))
                                 (_K142692142718_ _expr142726_))
                               (let ((_body142710_ _g142686142697_))
                                 (_K142691142707_ _body142710_))))
                         (let ((_body142710_ _g142686142697_))
                           (_K142691142707_ _body142710_))))))
              (if (##null? _g142686142697_)
                  (_K142695142732_)
                  (_try-match142688142728_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142512_)
        (letrec ((_satisfied?142514_
                  (lambda (_condition142612_)
                    (let* ((_e142613142628_ _condition142612_)
                           (_E142623142632_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142613142628_)))
                           (_E142616142651_
                            (lambda ()
                              (if (gx#stx-pair? _e142613142628_)
                                  (let ((_e142624142636_
                                         (gx#syntax-e _e142613142628_)))
                                    (let ((_hd142625142639_
                                           (##car _e142624142636_))
                                          (_tl142626142641_
                                           (##cdr _e142624142636_)))
                                      (let* ((_combinator142644_
                                              _hd142625142639_)
                                             (_body142646_ _tl142626142641_))
                                        (if (gx#stx-list? _body142646_)
                                            (let ((_$e142648_
                                                   (gx#stx-e
                                                    _combinator142644_)))
                                              (if (eq? 'not _$e142648_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142514_
                                                        _body142646_))
                                                  (if (eq? 'and _$e142648_)
                                                      (gx#stx-andmap
                                                       _satisfied?142514_
                                                       _body142646_)
                                                      (if (eq? 'or _$e142648_)
                                                          (gx#stx-ormap
                                                           _satisfied?142514_
                                                           _body142646_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142648_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142646_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142512_
                       _combinator142644_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142623142632_)))))
                                  (_E142623142632_))))
                           (_E142615142674_
                            (lambda ()
                              (if (gx#stx-pair? _e142613142628_)
                                  (let ((_e142617142655_
                                         (gx#syntax-e _e142613142628_)))
                                    (let ((_hd142618142658_
                                           (##car _e142617142655_))
                                          (_tl142619142660_
                                           (##cdr _e142617142655_)))
                                      (if (and (gx#identifier?
                                                _hd142618142658_)
                                               (gx#core-identifier=?
                                                _hd142618142658_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142619142660_)
                                              (let ((_e142620142663_
                                                     (gx#syntax-e
                                                      _tl142619142660_)))
                                                (let ((_hd142621142666_
                                                       (##car _e142620142663_))
                                                      (_tl142622142668_
                                                       (##cdr _e142620142663_)))
                                                  (let ((_expr142671_
                                                         _hd142621142666_))
                                                    (if (gx#stx-null?
                                                         _tl142622142668_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142671_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142616142651_))
                (_E142616142651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142616142651_))
                                          (_E142616142651_))))
                                  (_E142616142651_))))
                           (_E142614142680_
                            (lambda ()
                              (let ((_id142678_ _e142613142628_))
                                (if (gx#identifier? _id142678_)
                                    (gx#core-bound-identifier?__%
                                     _id142678_
                                     gx#feature-binding?)
                                    (_E142615142674_))))))
                      (_E142614142680_))))
                 (_loop142515_
                  (lambda (_rest142545_)
                    (let* ((_e142546142554_ _rest142545_)
                           (_E142552142558_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142546142554_)))
                           (_E142548142562_
                            (lambda ()
                              (if (gx#stx-null? _e142546142554_)
                                  (if '#t '() (_E142552142558_))
                                  (_E142552142558_))))
                           (_E142547142608_
                            (lambda ()
                              (if (gx#stx-pair? _e142546142554_)
                                  (let ((_e142549142566_
                                         (gx#syntax-e _e142546142554_)))
                                    (let ((_hd142550142569_
                                           (##car _e142549142566_))
                                          (_tl142551142571_
                                           (##cdr _e142549142566_)))
                                      (let* ((_hd142574_ _hd142550142569_)
                                             (_rest142576_ _tl142551142571_))
                                        (if '#t
                                            (let* ((_e142577142584_ _hd142574_)
                                                   (_E142579142588_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142577142584_)))
                                                   (_E142578142604_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142577142584_)
                                                          (let ((_e142580142592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142577142584_)))
                    (let ((_hd142581142595_ (##car _e142580142592_))
                          (_tl142582142597_ (##cdr _e142580142592_)))
                      (let* ((_condition142600_ _hd142581142595_)
                             (_body142602_ _tl142582142597_))
                        (if '#t
                            (if (gx#stx-eq? _condition142600_ 'else)
                                (if (gx#stx-null? _rest142576_)
                                    _body142602_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142512_
                                     _hd142574_))
                                (if (_satisfied?142514_ _condition142600_)
                                    _body142602_
                                    (_loop142515_ _rest142576_)))
                            (_E142579142588_)))))
                  (_E142579142588_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142578142604_))
                                            (_E142548142562_)))))
                                  (_E142548142562_)))))
                      (_E142547142608_)))))
          (let* ((_e142516142523_ _stx142512_)
                 (_E142518142527_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142516142523_)))
                 (_E142517142541_
                  (lambda ()
                    (if (gx#stx-pair? _e142516142523_)
                        (let ((_e142519142531_ (gx#syntax-e _e142516142523_)))
                          (let ((_hd142520142534_ (##car _e142519142531_))
                                (_tl142521142536_ (##cdr _e142519142531_)))
                            (let ((_clauses142539_ _tl142521142536_))
                              (if (gx#stx-list? _clauses142539_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142515_ _clauses142539_))
                                  (_E142518142527_)))))
                        (_E142518142527_)))))
            (_E142517142541_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142455_ _rpath142456_)
        (let* ((_e142457142467_ _stx142455_)
               (_E142459142471_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142457142467_)))
               (_E142458142498_
                (lambda ()
                  (if (gx#stx-pair? _e142457142467_)
                      (let ((_e142460142475_ (gx#syntax-e _e142457142467_)))
                        (let ((_hd142461142478_ (##car _e142460142475_))
                              (_tl142462142480_ (##cdr _e142460142475_)))
                          (if (gx#stx-pair? _tl142462142480_)
                              (let ((_e142463142483_
                                     (gx#syntax-e _tl142462142480_)))
                                (let ((_hd142464142486_
                                       (##car _e142463142483_))
                                      (_tl142465142488_
                                       (##cdr _e142463142483_)))
                                  (let ((_path142491_ _hd142464142486_))
                                    (if (gx#stx-null? _tl142465142488_)
                                        (if (gx#stx-string? _path142491_)
                                            (let ((_rpath142496_
                                                   (let ((_$e142493_
                                                          _rpath142456_))
                                                     (if _$e142493_
                                                         _$e142493_
                                                         (gx#core-resolve-path__%
                                                          _path142491_
                                                          (gx#stx-source
                                                           _stx142455_))))))
                                              (if (member _rpath142496_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142455_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142496_))
                                                    (gx#stx-source
                                                     _stx142455_)))))
                                            (_E142459142471_))
                                        (_E142459142471_)))))
                              (_E142459142471_))))
                      (_E142459142471_)))))
          (_E142458142498_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142505_)
        (let ((_rpath142507_ '#f))
          (gx#core-expand-include%__% _stx142505_ _rpath142507_))))
    (define gx#core-expand-include%
      (lambda _g148048_
        (let ((_g148047_ (##length _g148048_)))
          (cond ((##fx= _g148047_ 1)
                 (apply (lambda (_stx142505_)
                          (gx#core-expand-include%__0 _stx142505_))
                        _g148048_))
                ((##fx= _g148047_ 2)
                 (apply (lambda (_stx142509_ _rpath142510_)
                          (gx#core-expand-include%__%
                           _stx142509_
                           _rpath142510_))
                        _g148048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g148048_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142424_ _stx142425_ _method142426_)
        (if (procedure? _K142424_)
            (let ((_$e142428_ (gx#stx-source _stx142425_)))
              (if _$e142428_
                  ((lambda (_g142430142432_)
                     (gx#stx-wrap-source
                      (_K142424_ _stx142425_)
                      _g142430142432_))
                   _$e142428_)
                  (_K142424_ _stx142425_)))
            (let ((_$e142435_ (bound-method-ref _K142424_ _method142426_)))
              (if _$e142435_
                  ((lambda (_g142437142439_)
                     (gx#core-apply-expander__%
                      _g142437142439_
                      _stx142425_
                      _method142426_))
                   _$e142435_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142425_
                   _method142426_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142445_ _stx142446_)
        (let ((_method142448_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142445_ _stx142446_ _method142448_))))
    (define gx#core-apply-expander
      (lambda _g148050_
        (let ((_g148049_ (##length _g148050_)))
          (cond ((##fx= _g148049_ 2)
                 (apply (lambda (_K142445_ _stx142446_)
                          (gx#core-apply-expander__0 _K142445_ _stx142446_))
                        _g148050_))
                ((##fx= _g148049_ 3)
                 (apply (lambda (_K142450_ _stx142451_ _method142452_)
                          (gx#core-apply-expander__%
                           _K142450_
                           _stx142451_
                           _method142452_))
                        _g148050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g148050_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142420_ _stx142421_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142421_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142273_ _stx142274_)
        (let* ((_self142275142281_ _self142273_)
               (_E142277142285_
                (lambda () (error '"No clause matching" _self142275142281_)))
               (_K142278142290_
                (lambda (_K142288_)
                  (gx#core-apply-expander__0 _K142288_ _stx142274_))))
          (if (##structure-instance-of? _self142275142281_ 'gx#core-macro::t)
              (let* ((_e142279142293_
                      (##unchecked-structure-ref
                       _self142275142281_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142296_ _e142279142293_))
                (_K142278142290_ _K142296_))
              (_E142277142285_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self142126_ _stx142127_)
        (if (gx#sealed-syntax? _stx142127_)
            _stx142127_
            (let* ((_self142128142134_ _self142126_)
                   (_E142130142138_
                    (lambda ()
                      (error '"No clause matching" _self142128142134_)))
                   (_K142131142143_
                    (lambda (_K142141_)
                      (gx#core-apply-expander__0 _K142141_ _stx142127_))))
              (if (##structure-instance-of?
                   _self142128142134_
                   'gx#core-expander::t)
                  (let* ((_e142132142146_
                          (##unchecked-structure-ref
                           _self142128142134_
                           '1
                           gx#expander::t
                           '#f))
                         (_K142149_ _e142132142146_))
                    (_K142131142143_ _K142149_))
                  (_E142130142138_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self141988_ _stx141989_ _top?141990_)
        (if (_top?141990_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self141988_ _stx141989_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx141989_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self141995_ _stx141996_)
        (let ((_top?141998_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self141995_
           _stx141996_
           _top?141998_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g148052_
        (let ((_g148051_ (##length _g148052_)))
          (cond ((##fx= _g148051_ 2)
                 (apply (lambda (_self141995_ _stx141996_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self141995_
                           _stx141996_))
                        _g148052_))
                ((##fx= _g148051_ 3)
                 (apply (lambda (_self142000_ _stx142001_ _top?142002_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self142000_
                           _stx142001_
                           _top?142002_))
                        _g148052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g148052_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141862_ _stx141863_)
        (gx#top-special-form::apply-macro-expander__%
         _self141862_
         _stx141863_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141687_ _stx141688_)
        (let* ((_self141689141695_ _self141687_)
               (_E141691141699_
                (lambda () (error '"No clause matching" _self141689141695_)))
               (_K141692141732_
                (lambda (_id141702_)
                  (let* ((_e141703141710_ _stx141688_)
                         (_E141705141714_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141703141710_)))
                         (_E141704141728_
                          (lambda ()
                            (if (gx#stx-pair? _e141703141710_)
                                (let ((_e141706141718_
                                       (gx#syntax-e _e141703141710_)))
                                  (let ((_hd141707141721_
                                         (##car _e141706141718_))
                                        (_tl141708141723_
                                         (##cdr _e141706141718_)))
                                    (let ((_body141726_ _tl141708141723_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141702_
                                           _body141726_)
                                          (_E141705141714_)))))
                                (_E141705141714_)))))
                    (_E141704141728_)))))
          (if (##structure-instance-of?
               _self141689141695_
               'gx#rename-macro-expander::t)
              (let* ((_e141693141735_
                      (##unchecked-structure-ref
                       _self141689141695_
                       '1
                       gx#expander::t
                       '#f))
                     (_id141738_ _e141693141735_))
                (_K141692141732_ _id141738_))
              (_E141691141699_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141513_ _stx141514_ _method141515_)
        (let* ((_self141516141524_ _self141513_)
               (_E141518141528_
                (lambda () (error '"No clause matching" _self141516141524_)))
               (_K141519141535_
                (lambda (_phi141531_ _ctx141532_ _K141533_)
                  (gx#core-apply-user-macro
                   _K141533_
                   _stx141514_
                   _ctx141532_
                   _phi141531_
                   _method141515_))))
          (if (##structure-instance-of?
               _self141516141524_
               'gx#macro-expander::t)
              (let* ((_e141520141538_
                      (##unchecked-structure-ref
                       _self141516141524_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141541_ _e141520141538_)
                     (_e141521141543_
                      (##unchecked-structure-ref
                       _self141516141524_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141546_ _e141521141543_)
                     (_e141522141548_
                      (##unchecked-structure-ref
                       _self141516141524_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141551_ _e141522141548_))
                (_K141519141535_ _phi141551_ _ctx141546_ _K141541_))
              (_E141518141528_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141556_ _stx141557_)
        (let ((_method141559_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141556_
           _stx141557_
           _method141559_))))
    (define gx#core-apply-user-expander
      (lambda _g148054_
        (let ((_g148053_ (##length _g148054_)))
          (cond ((##fx= _g148053_ 2)
                 (apply (lambda (_self141556_ _stx141557_)
                          (gx#core-apply-user-expander__0
                           _self141556_
                           _stx141557_))
                        _g148054_))
                ((##fx= _g148053_ 3)
                 (apply (lambda (_self141561_ _stx141562_ _method141563_)
                          (gx#core-apply-user-expander__%
                           _self141561_
                           _stx141562_
                           _method141563_))
                        _g148054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g148054_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141503_ _stx141504_ _ctx141505_ _phi141506_ _method141507_)
        (let ((_mark141509_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141505_
                _phi141506_
                _stx141504_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141503_
               (gx#stx-apply-mark _stx141504_ _mark141509_)
               _method141507_)
              _mark141509_))
           gx#current-expander-marks
           (cons _mark141509_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141355_ _phi141356_ _ctx141357_)
        (let _lp141359_ ((_bind141361_
                          (gx#core-resolve-identifier__%
                           _stx141355_
                           _phi141356_
                           _ctx141357_)))
          (if (##structure-direct-instance-of?
               _bind141361_
               'gx#import-binding::t)
              (_lp141359_
               (##unchecked-structure-ref
                _bind141361_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141361_
                   'gx#alias-binding::t)
                  (_lp141359_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141361_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141356_
                    _ctx141357_))
                  _bind141361_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141366_)
        (let* ((_phi141368_ (gx#current-expander-phi))
               (_ctx141370_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141366_ _phi141368_ _ctx141370_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141372_ _phi141373_)
        (let ((_ctx141375_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141372_ _phi141373_ _ctx141375_))))
    (define gx#resolve-identifier
      (lambda _g148056_
        (let ((_g148055_ (##length _g148056_)))
          (cond ((##fx= _g148055_ 1)
                 (apply (lambda (_stx141366_)
                          (gx#resolve-identifier__0 _stx141366_))
                        _g148056_))
                ((##fx= _g148055_ 2)
                 (apply (lambda (_stx141372_ _phi141373_)
                          (gx#resolve-identifier__1 _stx141372_ _phi141373_))
                        _g148056_))
                ((##fx= _g148055_ 3)
                 (apply (lambda (_stx141377_ _phi141378_ _ctx141379_)
                          (gx#resolve-identifier__%
                           _stx141377_
                           _phi141378_
                           _ctx141379_))
                        _g148056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g148056_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141313_ _val141314_ _rebind?141315_ _phi141316_ _ctx141317_)
        (let ((_rebind?141319_
               (if (not _rebind?141315_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141315_) _rebind?141315_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141313_)
           _val141314_
           _rebind?141319_
           _phi141316_
           _ctx141317_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141324_ _val141325_)
        (let* ((_rebind?141327_ '#f)
               (_phi141329_ (gx#current-expander-phi))
               (_ctx141331_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141324_
           _val141325_
           _rebind?141327_
           _phi141329_
           _ctx141331_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141333_ _val141334_ _rebind?141335_)
        (let* ((_phi141337_ (gx#current-expander-phi))
               (_ctx141339_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141333_
           _val141334_
           _rebind?141335_
           _phi141337_
           _ctx141339_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141341_ _val141342_ _rebind?141343_ _phi141344_)
        (let ((_ctx141346_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141341_
           _val141342_
           _rebind?141343_
           _phi141344_
           _ctx141346_))))
    (define gx#bind-identifier!
      (lambda _g148058_
        (let ((_g148057_ (##length _g148058_)))
          (cond ((##fx= _g148057_ 2)
                 (apply (lambda (_stx141324_ _val141325_)
                          (gx#bind-identifier!__0 _stx141324_ _val141325_))
                        _g148058_))
                ((##fx= _g148057_ 3)
                 (apply (lambda (_stx141333_ _val141334_ _rebind?141335_)
                          (gx#bind-identifier!__1
                           _stx141333_
                           _val141334_
                           _rebind?141335_))
                        _g148058_))
                ((##fx= _g148057_ 4)
                 (apply (lambda (_stx141341_
                                 _val141342_
                                 _rebind?141343_
                                 _phi141344_)
                          (gx#bind-identifier!__2
                           _stx141341_
                           _val141342_
                           _rebind?141343_
                           _phi141344_))
                        _g148058_))
                ((##fx= _g148057_ 5)
                 (apply (lambda (_stx141348_
                                 _val141349_
                                 _rebind?141350_
                                 _phi141351_
                                 _ctx141352_)
                          (gx#bind-identifier!__%
                           _stx141348_
                           _val141349_
                           _rebind?141350_
                           _phi141351_
                           _ctx141352_))
                        _g148058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g148058_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141285_ _phi141286_ _ctx141287_)
        (let _lp141289_ ((_e141291_ _stx141285_)
                         (_marks141292_ (gx#current-expander-marks)))
          (if (symbol? _e141291_)
              (gx#core-resolve-binding
               _e141291_
               _phi141286_
               _phi141286_
               _ctx141287_
               (reverse _marks141292_))
              (if (gx#identifier-quote? _e141291_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e141291_ '1 gx#AST::t '#f)
                   _phi141286_
                   '0
                   (##unchecked-structure-ref
                    _e141291_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141291_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141291_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e141291_ '1 gx#AST::t '#f)
                       _phi141286_
                       _phi141286_
                       _ctx141287_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141291_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141292_))
                      (if (##structure-direct-instance-of?
                           _e141291_
                           'gx#syntax-wrap::t)
                          (_lp141289_
                           (##unchecked-structure-ref
                            _e141291_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141291_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141292_))
                          (if (##structure-instance-of?
                               _e141291_
                               'gerbil#AST::t)
                              (_lp141289_
                               (##unchecked-structure-ref
                                _e141291_
                                '1
                                gx#AST::t
                                '#f)
                               _marks141292_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141285_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141297_)
        (let* ((_phi141299_ (gx#current-expander-phi))
               (_ctx141301_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141297_
           _phi141299_
           _ctx141301_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141303_ _phi141304_)
        (let ((_ctx141306_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141303_
           _phi141304_
           _ctx141306_))))
    (define gx#core-resolve-identifier
      (lambda _g148060_
        (let ((_g148059_ (##length _g148060_)))
          (cond ((##fx= _g148059_ 1)
                 (apply (lambda (_stx141297_)
                          (gx#core-resolve-identifier__0 _stx141297_))
                        _g148060_))
                ((##fx= _g148059_ 2)
                 (apply (lambda (_stx141303_ _phi141304_)
                          (gx#core-resolve-identifier__1
                           _stx141303_
                           _phi141304_))
                        _g148060_))
                ((##fx= _g148059_ 3)
                 (apply (lambda (_stx141308_ _phi141309_ _ctx141310_)
                          (gx#core-resolve-identifier__%
                           _stx141308_
                           _phi141309_
                           _ctx141310_))
                        _g148060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g148060_))))))
    (define gx#core-resolve-binding
      (lambda (_id141198_
               _phi141199_
               _src-phi141200_
               _ctx141201_
               _marks141202_)
        (letrec ((_resolve141204_
                  (lambda (_ctx141272_ _src-phi141273_ _key141274_)
                    (let _lp141276_ ((_ctx141278_
                                      (gx#core-context-shift
                                       _ctx141272_
                                       _phi141199_))
                                     (_dphi141279_
                                      (fx- _phi141199_ _src-phi141273_)))
                      (let ((_$e141281_
                             (gx#core-context-resolve
                              _ctx141278_
                              _key141274_)))
                        (if _$e141281_
                            (values _$e141281_)
                            (if (fxzero? _dphi141279_)
                                '#f
                                (if (fxpositive? _dphi141279_)
                                    (_lp141276_
                                     (gx#core-context-shift _ctx141278_ '-1)
                                     (fx- _dphi141279_ '1))
                                    (_lp141276_
                                     (gx#core-context-shift _ctx141278_ '1)
                                     (fx+ _dphi141279_ '1))))))))))
          (let _lp141206_ ((_ctx141208_ _ctx141201_)
                           (_src-phi141209_ _src-phi141200_)
                           (_rest141210_ _marks141202_))
            (let* ((_rest141211141219_ _rest141210_)
                   (_else141213141227_
                    (lambda ()
                      (_resolve141204_
                       _ctx141208_
                       _src-phi141209_
                       _id141198_)))
                   (_K141215141260_
                    (lambda (_rest141230_ _hd141231_)
                      (let* ((_hd141232141238_ _hd141231_)
                             (_E141234141242_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd141232141238_)))
                             (_K141235141252_
                              (lambda (_subst141245_)
                                (let ((_$e141249_
                                       (let ((_key141247_
                                              (if _subst141245_
                                                  (table-ref
                                                   _subst141245_
                                                   _id141198_
                                                   '#f)
                                                  '#f)))
                                         (if _key141247_
                                             (_resolve141204_
                                              _ctx141208_
                                              _src-phi141209_
                                              _key141247_)
                                             '#f))))
                                  (if _$e141249_
                                      _$e141249_
                                      (_lp141206_
                                       (##unchecked-structure-ref
                                        _hd141231_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd141231_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest141230_))))))
                        (if (##structure-instance-of?
                             _hd141232141238_
                             'gx#expander-mark::t)
                            (let* ((_e141236141255_
                                    (##unchecked-structure-ref
                                     _hd141232141238_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst141258_ _e141236141255_))
                              (_K141235141252_ _subst141258_))
                            (_E141234141242_))))))
              (if (##pair? _rest141211141219_)
                  (let ((_hd141216141263_ (##car _rest141211141219_))
                        (_tl141217141265_ (##cdr _rest141211141219_)))
                    (let* ((_hd141268_ _hd141216141263_)
                           (_rest141270_ _tl141217141265_))
                      (_K141215141260_ _rest141270_ _hd141268_)))
                  (_else141213141227_)))))))
    (define gx#core-bind!__%
      (lambda (_key141074_ _val141075_ _rebind?141076_ _phi141077_ _ctx141078_)
        (letrec ((_update-binding141080_
                  (lambda (_xval141151_)
                    (if (or (_rebind?141076_
                             _ctx141078_
                             _xval141151_
                             _val141075_)
                            (and (##structure-direct-instance-of?
                                  _xval141151_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval141151_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val141075_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val141075_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval141151_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val141075_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val141075_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval141151_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val141075_
                        (if (and (##structure-direct-instance-of?
                                  _val141075_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val141075_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval141151_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val141075_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval141151_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval141151_
                            (if (and (##structure-direct-instance-of?
                                      _val141075_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval141151_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key141074_
                                 (cons (##unchecked-structure-ref
                                        _val141075_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val141075_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval141151_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval141151_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval141151_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval141151_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key141074_
                                 _val141075_
                                 _xval141151_))))))
                 (_gensubst141081_
                  (lambda (_subst141146_ _id141147_)
                    (let ((_eid141149_
                           (gensym (if (uninterned-symbol? _id141147_)
                                       '%
                                       _id141147_))))
                      (table-set! _subst141146_ _id141147_ _eid141149_)
                      _eid141149_)))
                 (_subst!141082_
                  (lambda (_key141084_)
                    (let* ((_key141085141093_ _key141084_)
                           (_else141087141101_ (lambda () _key141084_))
                           (_K141089141134_
                            (lambda (_mark141104_ _id141105_)
                              (let* ((_mark141106141112_ _mark141104_)
                                     (_E141108141116_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark141106141112_)))
                                     (_K141109141126_
                                      (lambda (_subst141119_)
                                        (if (not _subst141119_)
                                            (let ((_subst141121_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark141104_
                                               _subst141121_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst141081_
                                               _subst141121_
                                               _id141105_))
                                            (let ((_$e141123_
                                                   (table-ref
                                                    _subst141119_
                                                    _id141105_
                                                    '#f)))
                                              (if _$e141123_
                                                  (values _$e141123_)
                                                  (_gensubst141081_
                                                   _subst141119_
                                                   _id141105_)))))))
                                (if (##structure-instance-of?
                                     _mark141106141112_
                                     'gx#expander-mark::t)
                                    (let* ((_e141110141129_
                                            (##unchecked-structure-ref
                                             _mark141106141112_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst141132_ _e141110141129_))
                                      (_K141109141126_ _subst141132_))
                                    (_E141108141116_))))))
                      (if (##pair? _key141085141093_)
                          (let ((_hd141090141137_ (##car _key141085141093_))
                                (_tl141091141139_ (##cdr _key141085141093_)))
                            (let* ((_id141142_ _hd141090141137_)
                                   (_mark141144_ _tl141091141139_))
                              (_K141089141134_ _mark141144_ _id141142_)))
                          (_else141087141101_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx141078_ _phi141077_)
           (_subst!141082_ _key141074_)
           _val141075_
           _update-binding141080_))))
    (define gx#core-bind!__0
      (lambda (_key141168_ _val141169_)
        (let* ((_rebind?141171_ false)
               (_phi141173_ (gx#current-expander-phi))
               (_ctx141175_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141168_
           _val141169_
           _rebind?141171_
           _phi141173_
           _ctx141175_))))
    (define gx#core-bind!__1
      (lambda (_key141177_ _val141178_ _rebind?141179_)
        (let* ((_phi141181_ (gx#current-expander-phi))
               (_ctx141183_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141177_
           _val141178_
           _rebind?141179_
           _phi141181_
           _ctx141183_))))
    (define gx#core-bind!__2
      (lambda (_key141185_ _val141186_ _rebind?141187_ _phi141188_)
        (let ((_ctx141190_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141185_
           _val141186_
           _rebind?141187_
           _phi141188_
           _ctx141190_))))
    (define gx#core-bind!
      (lambda _g148062_
        (let ((_g148061_ (##length _g148062_)))
          (cond ((##fx= _g148061_ 2)
                 (apply (lambda (_key141168_ _val141169_)
                          (gx#core-bind!__0 _key141168_ _val141169_))
                        _g148062_))
                ((##fx= _g148061_ 3)
                 (apply (lambda (_key141177_ _val141178_ _rebind?141179_)
                          (gx#core-bind!__1
                           _key141177_
                           _val141178_
                           _rebind?141179_))
                        _g148062_))
                ((##fx= _g148061_ 4)
                 (apply (lambda (_key141185_
                                 _val141186_
                                 _rebind?141187_
                                 _phi141188_)
                          (gx#core-bind!__2
                           _key141185_
                           _val141186_
                           _rebind?141187_
                           _phi141188_))
                        _g148062_))
                ((##fx= _g148061_ 5)
                 (apply (lambda (_key141192_
                                 _val141193_
                                 _rebind?141194_
                                 _phi141195_
                                 _ctx141196_)
                          (gx#core-bind!__%
                           _key141192_
                           _val141193_
                           _rebind?141194_
                           _phi141195_
                           _ctx141196_))
                        _g148062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g148062_))))))
    (define gx#core-identifier-key
      (lambda (_stx141008_)
        (if (symbol? _stx141008_)
            (let* ((_g141009141017_ (gx#current-expander-marks))
                   (_else141011141025_ (lambda () _stx141008_))
                   (_K141013141030_
                    (lambda (_hd141028_) (cons _stx141008_ _hd141028_))))
              (if (##pair? _g141009141017_)
                  (let* ((_hd141014141033_ (##car _g141009141017_))
                         (_hd141036_ _hd141014141033_))
                    (_K141013141030_ _hd141036_))
                  (_else141011141025_)))
            (if (gx#identifier? _stx141008_)
                (let* ((_id141038_ (gx#syntax-local-unwrap _stx141008_))
                       (_eid141040_ (gx#stx-e _id141038_))
                       (_marks141042_ (gx#stx-identifier-marks* _id141038_)))
                  (let* ((_marks141044141052_ _marks141042_)
                         (_else141046141060_ (lambda () _eid141040_))
                         (_K141048141065_
                          (lambda (_hd141063_) (cons _eid141040_ _hd141063_))))
                    (if (##pair? _marks141044141052_)
                        (let* ((_hd141049141068_ (##car _marks141044141052_))
                               (_hd141071_ _hd141049141068_))
                          (_K141048141065_ _hd141071_))
                        (_else141046141060_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx141008_)))))
    (define gx#core-context-shift
      (lambda (_ctx140953_ _phi140954_)
        (letrec ((_make-phi140956_
                  (lambda (_super141006_)
                    (let ((__obj148033
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj148033
                       (gensym 'phi)
                       _super141006_)
                      __obj148033)))
                 (_make-phi/up140957_
                  (lambda (_ctx141001_ _super141002_)
                    (let ((_ctx+1141004_ (_make-phi140956_ _super141002_)))
                      (##unchecked-structure-set!
                       _ctx141001_
                       _ctx+1141004_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1141004_
                       _ctx141001_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1141004_)))
                 (_make-phi/down140958_
                  (lambda (_ctx140996_ _super140997_)
                    (let ((_ctx-1140999_ (_make-phi140956_ _super140997_)))
                      (##unchecked-structure-set!
                       _ctx-1140999_
                       _ctx140996_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx140996_
                       _ctx-1140999_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1140999_)))
                 (_shift140959_
                  (lambda (_ctx140980_
                           _delta140981_
                           _make-delta-context140982_
                           _phi140983_
                           _K140984_)
                    (let ((_$e140986_
                           (##unchecked-structure-ref
                            _ctx140980_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e140986_
                          ((lambda (_super140989_)
                             (let* ((_super140991_
                                     (_K140984_ _super140989_ _delta140981_))
                                    (_ctx+d140993_
                                     (_make-delta-context140982_
                                      _ctx140980_
                                      _super140991_)))
                               (_K140984_
                                _ctx+d140993_
                                (fx- _phi140983_ _delta140981_))))
                           _$e140986_)
                          (error '"Bad context" _ctx140980_))))))
          (let _K140961_ ((_ctx140963_ _ctx140953_) (_phi140964_ _phi140954_))
            (if (fxzero? _phi140964_)
                _ctx140963_
                (if (fx> (##vector-length _ctx140963_) '3)
                    (if (fxpositive? _phi140964_)
                        (let ((_$e140966_
                               (##unchecked-structure-ref
                                _ctx140963_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e140966_
                              ((lambda (_g140968140970_)
                                 (_K140961_
                                  _g140968140970_
                                  (fx- _phi140964_ '1)))
                               _$e140966_)
                              (_shift140959_
                               _ctx140963_
                               '1
                               _make-phi/up140957_
                               _phi140964_
                               _K140961_)))
                        (let ((_$e140973_
                               (##unchecked-structure-ref
                                _ctx140963_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e140973_
                              ((lambda (_g140975140977_)
                                 (_K140961_
                                  _g140975140977_
                                  (fx+ _phi140964_ '1)))
                               _$e140973_)
                              (_shift140959_
                               _ctx140963_
                               '-1
                               _make-phi/down140958_
                               _phi140964_
                               _K140961_))))
                    _ctx140963_))))))
    (define gx#core-context-get
      (lambda (_ctx140950_ _key140951_)
        (table-ref
         (##unchecked-structure-ref _ctx140950_ '2 gx#expander-context::t '#f)
         _key140951_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140946_ _key140947_ _val140948_)
        (table-set!
         (##unchecked-structure-ref _ctx140946_ '2 gx#expander-context::t '#f)
         _key140947_
         _val140948_)))
    (define gx#core-context-resolve
      (lambda (_ctx140933_ _key140934_)
        (let _lp140936_ ((_ctx140938_ _ctx140933_))
          (let ((_$e140940_ (gx#core-context-get _ctx140938_ _key140934_)))
            (if _$e140940_
                (values _$e140940_)
                (let ((_$e140943_
                       (if (fx> (##vector-length _ctx140938_) '3)
                           (##unchecked-structure-ref
                            _ctx140938_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e140943_ (_lp140936_ _$e140943_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140923_ _key140924_ _val140925_ _rebind140926_)
        (let ((_$e140928_ (gx#core-context-get _ctx140923_ _key140924_)))
          (if _$e140928_
              ((lambda (_xval140931_)
                 (gx#core-context-put!
                  _ctx140923_
                  _key140924_
                  (_rebind140926_ _xval140931_)))
               _$e140928_)
              (gx#core-context-put! _ctx140923_ _key140924_ _val140925_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140901_ _stop?140902_)
        (let _lp140904_ ((_ctx140906_ _ctx140901_))
          (if (_stop?140902_ _ctx140906_)
              _ctx140906_
              (if (##structure-instance-of? _ctx140906_ 'gx#context-phi::t)
                  (_lp140904_
                   (##unchecked-structure-ref
                    _ctx140906_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140912_ (gx#current-expander-context))
               (_stop?140914_ gx#top-context?))
          (gx#core-context-top__% _ctx140912_ _stop?140914_))))
    (define gx#core-context-top__1
      (lambda (_ctx140916_)
        (let ((_stop?140918_ gx#top-context?))
          (gx#core-context-top__% _ctx140916_ _stop?140918_))))
    (define gx#core-context-top
      (lambda _g148064_
        (let ((_g148063_ (##length _g148064_)))
          (cond ((##fx= _g148063_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g148064_))
                ((##fx= _g148063_ 1)
                 (apply (lambda (_ctx140916_)
                          (gx#core-context-top__1 _ctx140916_))
                        _g148064_))
                ((##fx= _g148063_ 2)
                 (apply (lambda (_ctx140920_ _stop?140921_)
                          (gx#core-context-top__% _ctx140920_ _stop?140921_))
                        _g148064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g148064_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140886_)
        (let _lp140888_ ((_ctx140890_ _ctx140886_))
          (if (##structure-instance-of? _ctx140890_ 'gx#context-phi::t)
              (_lp140888_
               (##unchecked-structure-ref
                _ctx140890_
                '3
                gx#phi-context::t
                '#f))
              _ctx140890_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140896_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140896_))))
    (define gx#core-context-root
      (lambda _g148066_
        (let ((_g148065_ (##length _g148066_)))
          (cond ((##fx= _g148065_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g148066_))
                ((##fx= _g148065_ 1)
                 (apply (lambda (_ctx140898_)
                          (gx#core-context-root__% _ctx140898_))
                        _g148066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g148066_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140867_ . __140864140868_)
        (let ((_$e140871_ (gx#current-expander-allow-rebind?)))
          (if _$e140871_
              _$e140871_
              (if (##structure-instance-of? _ctx140867_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx140867_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx140867_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140878_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140878_))))
    (define gx#core-context-rebind?
      (lambda _g148068_
        (let ((_g148067_ (##length _g148068_)))
          (cond ((##fx= _g148067_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g148068_))
                ((##fx= _g148067_ 1)
                 (apply (lambda (_ctx140880_)
                          (gx#core-context-rebind?__% _ctx140880_))
                        _g148068_))
                ((##fx>= _g148067_ 1)
                 (apply gx#core-context-rebind?__% _g148068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g148068_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140850_)
        (let ((_$e140852_ (gx#core-context-top__1 _ctx140850_)))
          (if _$e140852_
              ((lambda (_ctx140855_)
                 (if (##structure-instance-of?
                      _ctx140855_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx140855_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e140852_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140861_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140861_))))
    (define gx#core-context-namespace
      (lambda _g148070_
        (let ((_g148069_ (##length _g148070_)))
          (cond ((##fx= _g148069_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g148070_))
                ((##fx= _g148069_ 1)
                 (apply (lambda (_ctx140863_)
                          (gx#core-context-namespace__% _ctx140863_))
                        _g148070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g148070_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140836_ _is?140837_)
        (if (##structure-direct-instance-of?
             _bind140836_
             'gx#syntax-binding::t)
            (_is?140837_
             (##unchecked-structure-ref
              _bind140836_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140842_)
        (let ((_is?140844_ gx#expander?))
          (gx#expander-binding?__% _bind140842_ _is?140844_))))
    (define gx#expander-binding?
      (lambda _g148072_
        (let ((_g148071_ (##length _g148072_)))
          (cond ((##fx= _g148071_ 1)
                 (apply (lambda (_bind140842_)
                          (gx#expander-binding?__0 _bind140842_))
                        _g148072_))
                ((##fx= _g148071_ 2)
                 (apply (lambda (_bind140846_ _is?140847_)
                          (gx#expander-binding?__% _bind140846_ _is?140847_))
                        _g148072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g148072_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140833_)
        (gx#expander-binding?__% _bind140833_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140831_)
        (gx#expander-binding?__% _bind140831_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140825_)
        (letrec ((_direct-special-form?140827_
                  (lambda (_obj140829_)
                    (##structure-direct-instance-of?
                     _obj140829_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140825_
           _direct-special-form?140827_))))
    (define gx#special-form-binding?
      (lambda (_bind140823_)
        (gx#expander-binding?__% _bind140823_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140814_)
        (letrec ((_feature?140816_
                  (lambda (_e140818_)
                    (let ((_$e140820_
                           (##structure-instance-of?
                            _e140818_
                            'gx#feature-expander::t)))
                      (if _$e140820_
                          _$e140820_
                          (##structure-instance-of?
                           _e140818_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind140814_ _feature?140816_))))
    (define gx#private-feature-binding?
      (lambda (_bind140812_)
        (gx#expander-binding?__% _bind140812_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140799_ _bound?140800_)
        (if (gx#identifier? _id140799_)
            (_bound?140800_ (gx#resolve-identifier__0 _id140799_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140805_)
        (let ((_bound?140807_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140805_ _bound?140807_))))
    (define gx#core-bound-identifier?
      (lambda _g148074_
        (let ((_g148073_ (##length _g148074_)))
          (cond ((##fx= _g148073_ 1)
                 (apply (lambda (_id140805_)
                          (gx#core-bound-identifier?__0 _id140805_))
                        _g148074_))
                ((##fx= _g148073_ 2)
                 (apply (lambda (_id140809_ _bound?140810_)
                          (gx#core-bound-identifier?__%
                           _id140809_
                           _bound?140810_))
                        _g148074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g148074_))))))
    (define gx#core-identifier=?
      (lambda (_x140789_ _y140790_)
        (letrec ((_y=?140792_
                  (lambda (_xid140796_)
                    ((if (list? _y140790_) memq eq?) _xid140796_ _y140790_))))
          (let ((_bind140794_ (gx#resolve-identifier__0 _x140789_)))
            (if (##structure-instance-of? _bind140794_ 'gx#binding::t)
                (_y=?140792_
                 (##unchecked-structure-ref _bind140794_ '1 gx#binding::t '#f))
                (_y=?140792_ (gx#stx-e _x140789_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140787_)
        (if (interned-symbol? _e140787_)
            (string-index (symbol->string _e140787_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140742_ _src140743_ _ctx140744_ _marks140745_)
        (if (##structure? _stx140742_)
            (let ((_$e140747_ (gx#sealed-syntax-unwrap _stx140742_)))
              (if _$e140747_
                  (values _$e140747_)
                  (if (gx#identifier? _stx140742_)
                      (let ((_id140750_
                             (gx#stx-unwrap__% _stx140742_ _marks140745_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id140750_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e140752_
                                (##unchecked-structure-ref
                                 _id140750_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e140752_ _$e140752_ _src140743_))
                         _ctx140744_
                         (##unchecked-structure-ref
                          _id140750_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx140742_)
                       (let ((_$e140755_ (gx#stx-source _stx140742_)))
                         (if _$e140755_ _$e140755_ _src140743_))
                       _ctx140744_
                       (reverse _marks140745_)))))
            (##structure
             gx#syntax-quote::t
             _stx140742_
             _src140743_
             _ctx140744_
             (reverse _marks140745_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140761_)
        (let* ((_src140763_ '#f)
               (_ctx140765_ (gx#current-expander-context))
               (_marks140767_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140761_
           _src140763_
           _ctx140765_
           _marks140767_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140769_ _src140770_)
        (let* ((_ctx140772_ (gx#current-expander-context))
               (_marks140774_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140769_
           _src140770_
           _ctx140772_
           _marks140774_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140776_ _src140777_ _ctx140778_)
        (let ((_marks140780_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140776_
           _src140777_
           _ctx140778_
           _marks140780_))))
    (define gx#core-quote-syntax
      (lambda _g148076_
        (let ((_g148075_ (##length _g148076_)))
          (cond ((##fx= _g148075_ 1)
                 (apply (lambda (_stx140761_)
                          (gx#core-quote-syntax__0 _stx140761_))
                        _g148076_))
                ((##fx= _g148075_ 2)
                 (apply (lambda (_stx140769_ _src140770_)
                          (gx#core-quote-syntax__1 _stx140769_ _src140770_))
                        _g148076_))
                ((##fx= _g148075_ 3)
                 (apply (lambda (_stx140776_ _src140777_ _ctx140778_)
                          (gx#core-quote-syntax__2
                           _stx140776_
                           _src140777_
                           _ctx140778_))
                        _g148076_))
                ((##fx= _g148075_ 4)
                 (apply (lambda (_stx140782_
                                 _src140783_
                                 _ctx140784_
                                 _marks140785_)
                          (gx#core-quote-syntax__%
                           _stx140782_
                           _src140783_
                           _ctx140784_
                           _marks140785_))
                        _g148076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g148076_))))))
    (define gx#core-cons
      (lambda (_hd140738_ _tl140739_)
        (cons (gx#core-quote-syntax__0 _hd140738_) _tl140739_)))
    (define gx#core-list
      (lambda (_hd140735_ . _rest140736_)
        (cons (gx#core-quote-syntax__0 _hd140735_) _rest140736_)))
    (define gx#core-cons*
      (lambda (_hd140732_ . _rest140733_)
        (apply cons* (gx#core-quote-syntax__0 _hd140732_) _rest140733_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140706_ _rel140707_)
        (let ((_path140719_ (gx#stx-e _stx-path140706_))
              (_reldir140720_
               (let _lp140709_ ((_relsrc140711_
                                 (let ((_$e140716_
                                        (gx#stx-source _stx-path140706_)))
                                   (if _$e140716_ _$e140716_ _rel140707_))))
                 (if (##structure-instance-of? _relsrc140711_ 'gerbil#AST::t)
                     (_lp140709_
                      (let ((_$e140713_ (gx#stx-source _relsrc140711_)))
                        (if _$e140713_ _$e140713_ (gx#stx-e _relsrc140711_))))
                     (if (source-location-path? _relsrc140711_)
                         (path-directory (source-location-path _relsrc140711_))
                         (if (string? _relsrc140711_)
                             (path-directory _relsrc140711_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140719_ (path-normalize _reldir140720_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140725_)
        (let ((_rel140727_ '#f))
          (gx#core-resolve-path__% _stx-path140725_ _rel140727_))))
    (define gx#core-resolve-path
      (lambda _g148078_
        (let ((_g148077_ (##length _g148078_)))
          (cond ((##fx= _g148077_ 1)
                 (apply (lambda (_stx-path140725_)
                          (gx#core-resolve-path__0 _stx-path140725_))
                        _g148078_))
                ((##fx= _g148077_ 2)
                 (apply (lambda (_stx-path140729_ _rel140730_)
                          (gx#core-resolve-path__%
                           _stx-path140729_
                           _rel140730_))
                        _g148078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g148078_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140662_ _ctx140663_)
        (let* ((_repr140664140671_ _repr140662_)
               (_E140666140675_
                (lambda () (error '"No clause matching" _repr140664140671_)))
               (_K140667140683_
                (lambda (_subs140678_ _phi140679_)
                  (let ((_subst140681_
                         (if (not (null? _subs140678_))
                             (list->table _subs140678_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst140681_
                     _ctx140663_
                     _phi140679_
                     '#f)))))
          (if (##pair? _repr140664140671_)
              (let ((_hd140668140686_ (##car _repr140664140671_))
                    (_tl140669140688_ (##cdr _repr140664140671_)))
                (let* ((_phi140691_ _hd140668140686_)
                       (_subs140693_ _tl140669140688_))
                  (_K140667140683_ _subs140693_ _phi140691_)))
              (_E140666140675_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140698_)
        (let ((_ctx140700_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140698_ _ctx140700_))))
    (define gx#core-deserialize-mark
      (lambda _g148080_
        (let ((_g148079_ (##length _g148080_)))
          (cond ((##fx= _g148079_ 1)
                 (apply (lambda (_repr140698_)
                          (gx#core-deserialize-mark__0 _repr140698_))
                        _g148080_))
                ((##fx= _g148079_ 2)
                 (apply (lambda (_repr140702_ _ctx140703_)
                          (gx#core-deserialize-mark__%
                           _repr140702_
                           _ctx140703_))
                        _g148080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g148080_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140659_)
        (gx#stx-rewrap _stx140659_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140657_)
        (gx#stx-unwrap__% _stx140657_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140627_)
        (let* ((_g140628140636_ (gx#current-expander-marks))
               (_else140630140644_ (lambda () _stx140627_))
               (_K140632140649_
                (lambda (_hd140647_)
                  (gx#stx-apply-mark _stx140627_ _hd140647_))))
          (if (##pair? _g140628140636_)
              (let* ((_hd140633140652_ (##car _g140628140636_))
                     (_hd140655_ _hd140633140652_))
                (_K140632140649_ _hd140655_))
              (_else140630140644_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140612_ _E140613_)
        (let ((_bind140615_ (gx#resolve-identifier__0 _stx140612_)))
          (if (##structure-direct-instance-of?
               _bind140615_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140615_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140613_ _stx140612_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140620_)
        (let ((_E140622_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140620_ _E140622_))))
    (define gx#syntax-local-e
      (lambda _g148082_
        (let ((_g148081_ (##length _g148082_)))
          (cond ((##fx= _g148081_ 1)
                 (apply (lambda (_stx140620_)
                          (gx#syntax-local-e__0 _stx140620_))
                        _g148082_))
                ((##fx= _g148081_ 2)
                 (apply (lambda (_stx140624_ _E140625_)
                          (gx#syntax-local-e__% _stx140624_ _E140625_))
                        _g148082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g148082_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140596_ _E140597_)
        (let ((_e140599_ (gx#syntax-local-e__% _stx140596_ _E140597_)))
          (if (##structure-instance-of? _e140599_ 'gx#expander::t)
              (##structure-ref _e140599_ '1 gx#expander::t '#f)
              _e140599_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140604_)
        (let ((_E140606_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140604_ _E140606_))))
    (define gx#syntax-local-value
      (lambda _g148084_
        (let ((_g148083_ (##length _g148084_)))
          (cond ((##fx= _g148083_ 1)
                 (apply (lambda (_stx140604_)
                          (gx#syntax-local-value__0 _stx140604_))
                        _g148084_))
                ((##fx= _g148083_ 2)
                 (apply (lambda (_stx140608_ _E140609_)
                          (gx#syntax-local-value__% _stx140608_ _E140609_))
                        _g148084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g148084_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140593_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140593_)))))
