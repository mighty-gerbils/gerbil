(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707610213)
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
      (lambda _$args143556_
        (apply make-struct-instance gx#expander-context::t _$args143556_)))
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
      (lambda _$args143553_
        (apply make-struct-instance gx#root-context::t _$args143553_)))
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
      (lambda _$args143550_
        (apply make-struct-instance gx#phi-context::t _$args143550_)))
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
      (lambda _$args143547_
        (apply make-struct-instance gx#top-context::t _$args143547_)))
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
      (lambda _$args143544_
        (apply make-struct-instance gx#module-context::t _$args143544_)))
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
      (lambda _$args143541_
        (apply make-struct-instance gx#prelude-context::t _$args143541_)))
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
      (lambda _$args143538_
        (apply make-struct-instance gx#local-context::t _$args143538_)))
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
      (lambda (_self143522_ _id143523_ _super143524_)
        (if (##fx< '3 (##structure-length _self143522_))
            (begin
              (##unchecked-structure-set!
               _self143522_
               _id143523_
               '1
               (##structure-type _self143522_)
               '#f)
              (##unchecked-structure-set!
               _self143522_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143522_)
               '#f)
              (##unchecked-structure-set!
               _self143522_
               _super143524_
               '3
               (##structure-type _self143522_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143522_
                   '3
                   (##vector-length _self143522_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143529_ _id143530_)
        (let ((_super143532_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143529_ _id143530_ _super143532_))))
    (define gx#phi-context:::init!
      (lambda _g148067_
        (let ((_g148066_ (##length _g148067_)))
          (cond ((##fx= _g148066_ 2)
                 (apply (lambda (_self143529_ _id143530_)
                          (gx#phi-context:::init!__0 _self143529_ _id143530_))
                        _g148067_))
                ((##fx= _g148066_ 3)
                 (apply (lambda (_self143534_ _id143535_ _super143536_)
                          (gx#phi-context:::init!__%
                           _self143534_
                           _id143535_
                           _super143536_))
                        _g148067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g148067_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143386_ _super143387_)
        (if (##fx< '3 (##structure-length _self143386_))
            (begin
              (##unchecked-structure-set!
               _self143386_
               (gensym 'L)
               '1
               (##structure-type _self143386_)
               '#f)
              (##unchecked-structure-set!
               _self143386_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143386_)
               '#f)
              (##unchecked-structure-set!
               _self143386_
               _super143387_
               '3
               (##structure-type _self143386_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143386_
                   '3
                   (##vector-length _self143386_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143392_)
        (let ((_super143394_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143392_ _super143394_))))
    (define gx#local-context:::init!
      (lambda _g148069_
        (let ((_g148068_ (##length _g148069_)))
          (cond ((##fx= _g148068_ 1)
                 (apply (lambda (_self143392_)
                          (gx#local-context:::init!__0 _self143392_))
                        _g148069_))
                ((##fx= _g148068_ 2)
                 (apply (lambda (_self143396_ _super143397_)
                          (gx#local-context:::init!__%
                           _self143396_
                           _super143397_))
                        _g148069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g148069_))))))
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
      (lambda _$args143260_
        (apply make-struct-instance gx#binding::t _$args143260_)))
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
      (lambda _$args143257_
        (apply make-struct-instance gx#runtime-binding::t _$args143257_)))
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
      (lambda _$args143254_
        (apply make-struct-instance gx#local-binding::t _$args143254_)))
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
      (lambda _$args143251_
        (apply make-struct-instance gx#top-binding::t _$args143251_)))
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
      (lambda _$args143248_
        (apply make-struct-instance gx#module-binding::t _$args143248_)))
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
      (lambda _$args143245_
        (apply make-struct-instance gx#extern-binding::t _$args143245_)))
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
      (lambda _$args143242_
        (apply make-struct-instance gx#syntax-binding::t _$args143242_)))
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
      (lambda _$args143239_
        (apply make-struct-instance gx#import-binding::t _$args143239_)))
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
      (lambda _$args143236_
        (apply make-struct-instance gx#alias-binding::t _$args143236_)))
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
      (lambda _$args143233_
        (apply make-struct-instance gx#expander::t _$args143233_)))
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
      (lambda _$args143230_
        (apply make-struct-instance gx#core-expander::t _$args143230_)))
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
      (lambda _$args143227_
        (apply make-struct-instance gx#expression-form::t _$args143227_)))
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
      (lambda _$args143224_
        (apply make-struct-instance gx#special-form::t _$args143224_)))
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
      (lambda _$args143221_
        (apply make-struct-instance gx#definition-form::t _$args143221_)))
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
      (lambda _$args143218_
        (apply make-struct-instance gx#top-special-form::t _$args143218_)))
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
      (lambda _$args143215_
        (apply make-struct-instance gx#module-special-form::t _$args143215_)))
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
      (lambda _$args143212_
        (apply make-struct-instance gx#feature-expander::t _$args143212_)))
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
      (lambda _$args143209_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args143209_)))
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
      (lambda _$args143206_
        (apply make-struct-instance gx#reserved-expander::t _$args143206_)))
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
      (lambda _$args143203_
        (apply make-struct-instance gx#macro-expander::t _$args143203_)))
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
      (lambda _$args143200_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args143200_)))
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
      (lambda _$args143197_
        (apply make-struct-instance gx#user-expander::t _$args143197_)))
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
      (lambda _$args143194_
        (apply make-struct-instance gx#expander-mark::t _$args143194_)))
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
      (lambda (_ctx143179_ _message143180_ _stx143181_ . _details143182_)
        (let ((_ctx143192_
               (let ((_$e143184_ _ctx143179_))
                 (if _$e143184_
                     _$e143184_
                     (let ((_$e143187_ (gx#core-context-top__0)))
                       (if _$e143187_
                           ((lambda (_ctx143190_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx143190_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e143187_)
                           '#f))))))
          (raise (make-syntax-error
                  _message143180_
                  (cons _stx143181_ _details143182_)
                  _ctx143192_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx143166_ _expression?143167_)
        (gx#eval-syntax* (gx#core-expand__% _stx143166_ _expression?143167_))))
    (define gx#eval-syntax__0
      (lambda (_stx143172_)
        (let ((_expression?143174_ '#f))
          (gx#eval-syntax__% _stx143172_ _expression?143174_))))
    (define gx#eval-syntax
      (lambda _g148071_
        (let ((_g148070_ (##length _g148071_)))
          (cond ((##fx= _g148070_ 1)
                 (apply (lambda (_stx143172_) (gx#eval-syntax__0 _stx143172_))
                        _g148071_))
                ((##fx= _g148070_ 2)
                 (apply (lambda (_stx143176_ _expression?143177_)
                          (gx#eval-syntax__% _stx143176_ _expression?143177_))
                        _g148071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g148071_))))))
    (define gx#eval-syntax*
      (lambda (_stx143163_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx143163_))))
    (define gx#core-expand__%
      (lambda (_stx143150_ _expression?143151_)
        (if _expression?143151_
            (gx#core-expand-expression _stx143150_)
            (gx#core-expand-top _stx143150_))))
    (define gx#core-expand__0
      (lambda (_stx143156_)
        (let ((_expression?143158_ '#f))
          (gx#core-expand__% _stx143156_ _expression?143158_))))
    (define gx#core-expand
      (lambda _g148073_
        (let ((_g148072_ (##length _g148073_)))
          (cond ((##fx= _g148072_ 1)
                 (apply (lambda (_stx143156_) (gx#core-expand__0 _stx143156_))
                        _g148073_))
                ((##fx= _g148072_ 2)
                 (apply (lambda (_stx143160_ _expression?143161_)
                          (gx#core-expand__% _stx143160_ _expression?143161_))
                        _g148073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g148073_))))))
    (define gx#core-expand-top
      (lambda (_stx143117_)
        (let* ((_stx143119_ (gx#core-expand*__0 _stx143117_))
               (_e143120143127_ _stx143119_)
               (_E143122143131_
                (lambda () (gx#core-expand-expression _stx143119_)))
               (_E143121143145_
                (lambda ()
                  (if (gx#stx-pair? _e143120143127_)
                      (let ((_e143123143135_ (gx#syntax-e _e143120143127_)))
                        (let ((_hd143124143138_ (##car _e143123143135_))
                              (_tl143125143140_ (##cdr _e143123143135_)))
                          (let ((_form143143_ _hd143124143138_))
                            (if (gx#core-bound-identifier?__0 _form143143_)
                                _stx143119_
                                (_E143122143131_)))))
                      (_E143122143131_)))))
          (_E143121143145_))))
    (define gx#core-expand-expression
      (lambda (_stx143064_)
        (letrec ((_sealed-expression?143066_
                  (lambda (_hd143087_)
                    (if (gx#sealed-syntax? _hd143087_)
                        (let* ((_e143088143095_ _hd143087_)
                               (_E143090143099_ (lambda () '#f))
                               (_E143089143113_
                                (lambda ()
                                  (if (gx#stx-pair? _e143088143095_)
                                      (let ((_e143091143103_
                                             (gx#syntax-e _e143088143095_)))
                                        (let ((_hd143092143106_
                                               (##car _e143091143103_))
                                              (_tl143093143108_
                                               (##cdr _e143091143103_)))
                                          (let ((_form143111_
                                                 _hd143092143106_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form143111_
                                                 gx#expression-form-binding?)
                                                (_E143090143099_)))))
                                      (_E143090143099_)))))
                          (_E143089143113_))
                        '#f)))
                 (_illegal-expression143067_
                  (lambda (_hd143085_ . _g148074_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx143064_
                     _hd143085_)))
                 (_expand-e143068_
                  (lambda (_form143080_ _hd143081_)
                    (let ((_bind143083_
                           (if (##structure-instance-of?
                                _form143080_
                                'gx#binding::t)
                               _form143080_
                               (gx#resolve-identifier__0 _form143080_))))
                      (if (gx#core-expander-binding? _bind143083_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind143083_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd143081_
                            (gx#stx-source _stx143064_)))
                          (if (##structure-direct-instance-of?
                               _bind143083_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind143083_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd143081_
                                 (gx#stx-source _stx143064_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx143064_
                               _form143080_)))))))
          (let ((_hd143070_ (gx#core-expand-head _stx143064_)))
            (if (_sealed-expression?143066_ _hd143070_)
                _hd143070_
                (if (gx#stx-pair? _hd143070_)
                    (let* ((_form143072_ (gx#stx-car _hd143070_))
                           (_bind143074_
                            (if (gx#identifier? _form143072_)
                                (gx#resolve-identifier__0 _form143072_)
                                '#f)))
                      (if (or (not _bind143074_)
                              (not (gx#core-expander-binding? _bind143074_)))
                          (_expand-e143068_ '%%app (cons '%%app _hd143070_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind143074_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd143070_
                               _illegal-expression143067_)
                              (if (gx#expression-form-binding? _bind143074_)
                                  (_expand-e143068_ _bind143074_ _hd143070_)
                                  (if (gx#direct-special-form-binding?
                                       _bind143074_)
                                      (gx#core-expand-expression
                                       (_expand-e143068_
                                        _bind143074_
                                        _hd143070_))
                                      (_illegal-expression143067_
                                       _hd143070_))))))
                    (if (gx#core-bound-identifier?__0 _hd143070_)
                        (_illegal-expression143067_ _hd143070_)
                        (if (gx#identifier? _hd143070_)
                            (_expand-e143068_
                             '%%ref
                             (cons '%%ref (cons _hd143070_ '())))
                            (if (gx#stx-datum? _hd143070_)
                                (_expand-e143068_
                                 '%#quote
                                 (cons '%#quote (cons _hd143070_ '())))
                                (_illegal-expression143067_
                                 _hd143070_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx143059_)
        (call-with-parameters
         (lambda ()
           (let ((_stx143062_ (gx#core-expand-expression _stx143059_)))
             (values _stx143062_ (gx#eval-syntax* _stx143062_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx143040_ _stop?143041_)
        (let _lp143043_ ((_stx143045_ _stx143040_))
          (if (_stop?143041_ _stx143045_)
              _stx143045_
              (let ((_rstx143047_ (gx#core-expand1 _stx143045_)))
                (if (eq? _stx143045_ _rstx143047_)
                    _stx143045_
                    (_lp143043_ _rstx143047_)))))))
    (define gx#core-expand*__0
      (lambda (_stx143052_)
        (let ((_stop?143054_ false))
          (gx#core-expand*__% _stx143052_ _stop?143054_))))
    (define gx#core-expand*
      (lambda _g148076_
        (let ((_g148075_ (##length _g148076_)))
          (cond ((##fx= _g148075_ 1)
                 (apply (lambda (_stx143052_) (gx#core-expand*__0 _stx143052_))
                        _g148076_))
                ((##fx= _g148075_ 2)
                 (apply (lambda (_stx143056_ _stop?143057_)
                          (gx#core-expand*__% _stx143056_ _stop?143057_))
                        _g148076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g148076_))))))
    (define gx#core-expand1
      (lambda (_stx142996_)
        (letrec ((_step142998_
                  (lambda (_hd143035_)
                    (let ((_bind143037_ (gx#resolve-identifier__0 _hd143035_)))
                      (if (##structure-instance-of?
                           _bind143037_
                           'gx#runtime-binding::t)
                          _stx142996_
                          (if (##structure-direct-instance-of?
                               _bind143037_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind143037_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx142996_)
                              (if (not _bind143037_)
                                  _stx142996_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx142996_))))))))
          (let* ((_e142999143007_ _stx142996_)
                 (_E143005143011_ (lambda () _stx142996_))
                 (_E143001143017_
                  (lambda ()
                    (let ((_hd143015_ _e142999143007_))
                      (if (gx#identifier? _hd143015_)
                          (_step142998_ _hd143015_)
                          (_E143005143011_)))))
                 (_E143000143031_
                  (lambda ()
                    (if (gx#stx-pair? _e142999143007_)
                        (let ((_e143002143021_ (gx#syntax-e _e142999143007_)))
                          (let ((_hd143003143024_ (##car _e143002143021_))
                                (_tl143004143026_ (##cdr _e143002143021_)))
                            (let ((_hd143029_ _hd143003143024_))
                              (if (gx#identifier? _hd143029_)
                                  (_step142998_ _hd143029_)
                                  (_E143001143017_)))))
                        (_E143001143017_)))))
            (_E143000143031_)))))
    (define gx#core-expand-head
      (lambda (_stx142962_)
        (letrec ((_stop?142964_
                  (lambda (_stx142966_)
                    (let* ((_e142967142974_ _stx142966_)
                           (_E142969142978_ (lambda () '#f))
                           (_E142968142992_
                            (lambda ()
                              (if (gx#stx-pair? _e142967142974_)
                                  (let ((_e142970142982_
                                         (gx#syntax-e _e142967142974_)))
                                    (let ((_hd142971142985_
                                           (##car _e142970142982_))
                                          (_tl142972142987_
                                           (##cdr _e142970142982_)))
                                      (let ((_hd142990_ _hd142971142985_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd142990_)
                                            (_E142969142978_)))))
                                  (_E142969142978_)))))
                      (_E142968142992_)))))
          (gx#core-expand*__% _stx142962_ _stop?142964_))))
    (define gx#core-expand-block__%
      (lambda (_stx142768_
               _expand-special142769_
               _begin-form142770_
               _expand-e142771_)
        (letrec ((_expand-splice142773_
                  (lambda (_hd142936_ _body142937_ _rest142938_ _r142939_)
                    (if (gx#stx-list? _body142937_)
                        (_K142777_
                         (gx#stx-foldr cons _rest142938_ _body142937_)
                         _r142939_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142768_
                         _hd142936_))))
                 (_expand-cond-expand142774_
                  (lambda (_hd142932_ _rest142933_ _r142934_)
                    (_K142777_
                     (cons (gx#core-expand-cond-expand% _hd142932_)
                           _rest142933_)
                     _r142934_)))
                 (_expand-include142775_
                  (lambda (_hd142881_ _rest142882_ _r142883_)
                    (let* ((_e142884142894_ _hd142881_)
                           (_E142886142898_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142884142894_)))
                           (_E142885142928_
                            (lambda ()
                              (if (gx#stx-pair? _e142884142894_)
                                  (let ((_e142887142902_
                                         (gx#syntax-e _e142884142894_)))
                                    (let ((_hd142888142905_
                                           (##car _e142887142902_))
                                          (_tl142889142907_
                                           (##cdr _e142887142902_)))
                                      (if (gx#stx-pair? _tl142889142907_)
                                          (let ((_e142890142910_
                                                 (gx#syntax-e
                                                  _tl142889142907_)))
                                            (let ((_hd142891142913_
                                                   (##car _e142890142910_))
                                                  (_tl142892142915_
                                                   (##cdr _e142890142910_)))
                                              (let ((_path142918_
                                                     _hd142891142913_))
                                                (if (gx#stx-null?
                                                     _tl142892142915_)
                                                    (if (gx#stx-string?
                                                         _path142918_)
                                                        (let* ((_rpath142920_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142918_
                         (gx#stx-source _hd142881_)))
                       (_block142922_
                        (gx#core-expand-include%__% _hd142881_ _rpath142920_))
                       (_rbody142925_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142922_
                            _expand-special142769_
                            '#f
                            _expand-e142771_))
                         gx#current-expander-path
                         (cons _rpath142920_ (gx#current-expander-path)))))
                  (_K142777_
                   _rest142882_
                   (foldr1 cons _r142883_ _rbody142925_)))
                (_E142886142898_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142886142898_)))))
                                          (_E142886142898_))))
                                  (_E142886142898_)))))
                      (_E142885142928_))))
                 (_expand-expression142776_
                  (lambda (_hd142877_ _rest142878_ _r142879_)
                    (_K142777_
                     _rest142878_
                     (cons (_expand-e142771_ _hd142877_) _r142879_))))
                 (_K142777_
                  (lambda (_rest142807_ _r142808_)
                    (let* ((_e142809142816_ _rest142807_)
                           (_E142811142820_
                            (lambda ()
                              (if _begin-form142770_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142770_
                                    (reverse _r142808_))
                                   (gx#stx-source _stx142768_))
                                  _r142808_)))
                           (_E142810142873_
                            (lambda ()
                              (if (gx#stx-pair? _e142809142816_)
                                  (let ((_e142812142824_
                                         (gx#syntax-e _e142809142816_)))
                                    (let ((_hd142813142827_
                                           (##car _e142812142824_))
                                          (_tl142814142829_
                                           (##cdr _e142812142824_)))
                                      (let* ((_hd142832_ _hd142813142827_)
                                             (_rest142834_ _tl142814142829_))
                                        (if '#t
                                            (let* ((_hd142836_
                                                    (gx#core-expand-head
                                                     _hd142832_))
                                                   (_e142837142844_ _hd142836_)
                                                   (_E142839142848_
                                                    (lambda ()
                                                      (_expand-expression142776_
                                                       _hd142836_
                                                       _rest142834_
                                                       _r142808_)))
                                                   (_E142838142869_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142837142844_)
                                                          (let ((_e142840142852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142837142844_)))
                    (let ((_hd142841142855_ (##car _e142840142852_))
                          (_tl142842142857_ (##cdr _e142840142852_)))
                      (let* ((_form142860_ _hd142841142855_)
                             (_body142862_ _tl142842142857_))
                        (if '#t
                            (let ((_bind142864_
                                   (if (gx#identifier? _form142860_)
                                       (gx#resolve-identifier__0 _form142860_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142864_)
                                  (let ((_$e142866_
                                         (##unchecked-structure-ref
                                          _bind142864_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e142866_)
                                        (_expand-splice142773_
                                         _hd142836_
                                         _body142862_
                                         _rest142834_
                                         _r142808_)
                                        (if (eq? '%#cond-expand _$e142866_)
                                            (_expand-cond-expand142774_
                                             _hd142836_
                                             _rest142834_
                                             _r142808_)
                                            (if (eq? '%#include _$e142866_)
                                                (_expand-include142775_
                                                 _hd142836_
                                                 _rest142834_
                                                 _r142808_)
                                                (_expand-special142769_
                                                 _hd142836_
                                                 _K142777_
                                                 _rest142834_
                                                 _r142808_)))))
                                  (_expand-expression142776_
                                   _hd142836_
                                   _rest142834_
                                   _r142808_)))
                            (_E142839142848_)))))
                  (_E142839142848_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142838142869_))
                                            (_E142811142820_)))))
                                  (_E142811142820_)))))
                      (_E142810142873_)))))
          (let* ((_e142778142785_ _stx142768_)
                 (_E142780142789_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142778142785_)))
                 (_E142779142803_
                  (lambda ()
                    (if (gx#stx-pair? _e142778142785_)
                        (let ((_e142781142793_ (gx#syntax-e _e142778142785_)))
                          (let ((_hd142782142796_ (##car _e142781142793_))
                                (_tl142783142798_ (##cdr _e142781142793_)))
                            (let ((_body142801_ _tl142783142798_))
                              (if (gx#stx-list? _body142801_)
                                  (_K142777_ _body142801_ '())
                                  (_E142780142789_)))))
                        (_E142780142789_)))))
            (_E142779142803_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142944_ _expand-special142945_)
        (let* ((_begin-form142947_ '%#begin)
               (_expand-e142949_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142944_
           _expand-special142945_
           _begin-form142947_
           _expand-e142949_))))
    (define gx#core-expand-block__1
      (lambda (_stx142951_ _expand-special142952_ _begin-form142953_)
        (let ((_expand-e142955_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142951_
           _expand-special142952_
           _begin-form142953_
           _expand-e142955_))))
    (define gx#core-expand-block
      (lambda _g148078_
        (let ((_g148077_ (##length _g148078_)))
          (cond ((##fx= _g148077_ 2)
                 (apply (lambda (_stx142944_ _expand-special142945_)
                          (gx#core-expand-block__0
                           _stx142944_
                           _expand-special142945_))
                        _g148078_))
                ((##fx= _g148077_ 3)
                 (apply (lambda (_stx142951_
                                 _expand-special142952_
                                 _begin-form142953_)
                          (gx#core-expand-block__1
                           _stx142951_
                           _expand-special142952_
                           _begin-form142953_))
                        _g148078_))
                ((##fx= _g148077_ 4)
                 (apply (lambda (_stx142957_
                                 _expand-special142958_
                                 _begin-form142959_
                                 _expand-e142960_)
                          (gx#core-expand-block__%
                           _stx142957_
                           _expand-special142958_
                           _begin-form142959_
                           _expand-e142960_))
                        _g148078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g148078_))))))
    (define gx#core-expand-block*
      (lambda (_stx142716_ _expand-special142717_)
        (let* ((_g142718142729_
                (gx#core-expand-block__1
                 _stx142716_
                 _expand-special142717_
                 '#f))
               (_E142722142733_
                (lambda () (error '"No clause matching" _g142718142729_))))
          (let ((_K142727142764_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142716_)))
                (_K142724142750_ (lambda (_expr142748_) _expr142748_))
                (_K142723142739_
                 (lambda (_body142737_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142737_))
                    (gx#stx-source _stx142716_)))))
            (let ((_try-match142720142760_
                   (lambda ()
                     (if (##pair? _g142718142729_)
                         (let ((_tl142726142755_ (##cdr _g142718142729_))
                               (_hd142725142753_ (##car _g142718142729_)))
                           (if (##null? _tl142726142755_)
                               (let ((_expr142758_ _hd142725142753_))
                                 (_K142724142750_ _expr142758_))
                               (let ((_body142742_ _g142718142729_))
                                 (_K142723142739_ _body142742_))))
                         (let ((_body142742_ _g142718142729_))
                           (_K142723142739_ _body142742_))))))
              (if (##null? _g142718142729_)
                  (_K142727142764_)
                  (_try-match142720142760_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142544_)
        (letrec ((_satisfied?142546_
                  (lambda (_condition142644_)
                    (let* ((_e142645142660_ _condition142644_)
                           (_E142655142664_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142645142660_)))
                           (_E142648142683_
                            (lambda ()
                              (if (gx#stx-pair? _e142645142660_)
                                  (let ((_e142656142668_
                                         (gx#syntax-e _e142645142660_)))
                                    (let ((_hd142657142671_
                                           (##car _e142656142668_))
                                          (_tl142658142673_
                                           (##cdr _e142656142668_)))
                                      (let* ((_combinator142676_
                                              _hd142657142671_)
                                             (_body142678_ _tl142658142673_))
                                        (if (gx#stx-list? _body142678_)
                                            (let ((_$e142680_
                                                   (gx#stx-e
                                                    _combinator142676_)))
                                              (if (eq? 'not _$e142680_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142546_
                                                        _body142678_))
                                                  (if (eq? 'and _$e142680_)
                                                      (gx#stx-andmap
                                                       _satisfied?142546_
                                                       _body142678_)
                                                      (if (eq? 'or _$e142680_)
                                                          (gx#stx-ormap
                                                           _satisfied?142546_
                                                           _body142678_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142680_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142678_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142544_
                       _combinator142676_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142655142664_)))))
                                  (_E142655142664_))))
                           (_E142647142706_
                            (lambda ()
                              (if (gx#stx-pair? _e142645142660_)
                                  (let ((_e142649142687_
                                         (gx#syntax-e _e142645142660_)))
                                    (let ((_hd142650142690_
                                           (##car _e142649142687_))
                                          (_tl142651142692_
                                           (##cdr _e142649142687_)))
                                      (if (and (gx#identifier?
                                                _hd142650142690_)
                                               (gx#core-identifier=?
                                                _hd142650142690_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142651142692_)
                                              (let ((_e142652142695_
                                                     (gx#syntax-e
                                                      _tl142651142692_)))
                                                (let ((_hd142653142698_
                                                       (##car _e142652142695_))
                                                      (_tl142654142700_
                                                       (##cdr _e142652142695_)))
                                                  (let ((_expr142703_
                                                         _hd142653142698_))
                                                    (if (gx#stx-null?
                                                         _tl142654142700_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142703_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142648142683_))
                (_E142648142683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142648142683_))
                                          (_E142648142683_))))
                                  (_E142648142683_))))
                           (_E142646142712_
                            (lambda ()
                              (let ((_id142710_ _e142645142660_))
                                (if (gx#identifier? _id142710_)
                                    (gx#core-bound-identifier?__%
                                     _id142710_
                                     gx#feature-binding?)
                                    (_E142647142706_))))))
                      (_E142646142712_))))
                 (_loop142547_
                  (lambda (_rest142577_)
                    (let* ((_e142578142586_ _rest142577_)
                           (_E142584142590_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142578142586_)))
                           (_E142580142594_
                            (lambda ()
                              (if (gx#stx-null? _e142578142586_)
                                  (if '#t '() (_E142584142590_))
                                  (_E142584142590_))))
                           (_E142579142640_
                            (lambda ()
                              (if (gx#stx-pair? _e142578142586_)
                                  (let ((_e142581142598_
                                         (gx#syntax-e _e142578142586_)))
                                    (let ((_hd142582142601_
                                           (##car _e142581142598_))
                                          (_tl142583142603_
                                           (##cdr _e142581142598_)))
                                      (let* ((_hd142606_ _hd142582142601_)
                                             (_rest142608_ _tl142583142603_))
                                        (if '#t
                                            (let* ((_e142609142616_ _hd142606_)
                                                   (_E142611142620_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142609142616_)))
                                                   (_E142610142636_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142609142616_)
                                                          (let ((_e142612142624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142609142616_)))
                    (let ((_hd142613142627_ (##car _e142612142624_))
                          (_tl142614142629_ (##cdr _e142612142624_)))
                      (let* ((_condition142632_ _hd142613142627_)
                             (_body142634_ _tl142614142629_))
                        (if '#t
                            (if (gx#stx-eq? _condition142632_ 'else)
                                (if (gx#stx-null? _rest142608_)
                                    _body142634_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142544_
                                     _hd142606_))
                                (if (_satisfied?142546_ _condition142632_)
                                    _body142634_
                                    (_loop142547_ _rest142608_)))
                            (_E142611142620_)))))
                  (_E142611142620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142610142636_))
                                            (_E142580142594_)))))
                                  (_E142580142594_)))))
                      (_E142579142640_)))))
          (let* ((_e142548142555_ _stx142544_)
                 (_E142550142559_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142548142555_)))
                 (_E142549142573_
                  (lambda ()
                    (if (gx#stx-pair? _e142548142555_)
                        (let ((_e142551142563_ (gx#syntax-e _e142548142555_)))
                          (let ((_hd142552142566_ (##car _e142551142563_))
                                (_tl142553142568_ (##cdr _e142551142563_)))
                            (let ((_clauses142571_ _tl142553142568_))
                              (if (gx#stx-list? _clauses142571_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142547_ _clauses142571_))
                                  (_E142550142559_)))))
                        (_E142550142559_)))))
            (_E142549142573_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142487_ _rpath142488_)
        (let* ((_e142489142499_ _stx142487_)
               (_E142491142503_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142489142499_)))
               (_E142490142530_
                (lambda ()
                  (if (gx#stx-pair? _e142489142499_)
                      (let ((_e142492142507_ (gx#syntax-e _e142489142499_)))
                        (let ((_hd142493142510_ (##car _e142492142507_))
                              (_tl142494142512_ (##cdr _e142492142507_)))
                          (if (gx#stx-pair? _tl142494142512_)
                              (let ((_e142495142515_
                                     (gx#syntax-e _tl142494142512_)))
                                (let ((_hd142496142518_
                                       (##car _e142495142515_))
                                      (_tl142497142520_
                                       (##cdr _e142495142515_)))
                                  (let ((_path142523_ _hd142496142518_))
                                    (if (gx#stx-null? _tl142497142520_)
                                        (if (gx#stx-string? _path142523_)
                                            (let ((_rpath142528_
                                                   (let ((_$e142525_
                                                          _rpath142488_))
                                                     (if _$e142525_
                                                         _$e142525_
                                                         (gx#core-resolve-path__%
                                                          _path142523_
                                                          (gx#stx-source
                                                           _stx142487_))))))
                                              (if (member _rpath142528_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142487_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142528_))
                                                    (gx#stx-source
                                                     _stx142487_)))))
                                            (_E142491142503_))
                                        (_E142491142503_)))))
                              (_E142491142503_))))
                      (_E142491142503_)))))
          (_E142490142530_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142537_)
        (let ((_rpath142539_ '#f))
          (gx#core-expand-include%__% _stx142537_ _rpath142539_))))
    (define gx#core-expand-include%
      (lambda _g148080_
        (let ((_g148079_ (##length _g148080_)))
          (cond ((##fx= _g148079_ 1)
                 (apply (lambda (_stx142537_)
                          (gx#core-expand-include%__0 _stx142537_))
                        _g148080_))
                ((##fx= _g148079_ 2)
                 (apply (lambda (_stx142541_ _rpath142542_)
                          (gx#core-expand-include%__%
                           _stx142541_
                           _rpath142542_))
                        _g148080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g148080_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142456_ _stx142457_ _method142458_)
        (if (procedure? _K142456_)
            (let ((_$e142460_ (gx#stx-source _stx142457_)))
              (if _$e142460_
                  ((lambda (_g142462142464_)
                     (gx#stx-wrap-source
                      (_K142456_ _stx142457_)
                      _g142462142464_))
                   _$e142460_)
                  (_K142456_ _stx142457_)))
            (let ((_$e142467_ (bound-method-ref _K142456_ _method142458_)))
              (if _$e142467_
                  ((lambda (_g142469142471_)
                     (gx#core-apply-expander__%
                      _g142469142471_
                      _stx142457_
                      _method142458_))
                   _$e142467_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142457_
                   _method142458_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142477_ _stx142478_)
        (let ((_method142480_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142477_ _stx142478_ _method142480_))))
    (define gx#core-apply-expander
      (lambda _g148082_
        (let ((_g148081_ (##length _g148082_)))
          (cond ((##fx= _g148081_ 2)
                 (apply (lambda (_K142477_ _stx142478_)
                          (gx#core-apply-expander__0 _K142477_ _stx142478_))
                        _g148082_))
                ((##fx= _g148081_ 3)
                 (apply (lambda (_K142482_ _stx142483_ _method142484_)
                          (gx#core-apply-expander__%
                           _K142482_
                           _stx142483_
                           _method142484_))
                        _g148082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g148082_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142452_ _stx142453_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142453_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142305_ _stx142306_)
        (let* ((_self142307142313_ _self142305_)
               (_E142309142317_
                (lambda () (error '"No clause matching" _self142307142313_)))
               (_K142310142322_
                (lambda (_K142320_)
                  (gx#core-apply-expander__0 _K142320_ _stx142306_))))
          (if (##structure-instance-of? _self142307142313_ 'gx#core-macro::t)
              (let* ((_e142311142325_
                      (##unchecked-structure-ref
                       _self142307142313_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142328_ _e142311142325_))
                (_K142310142322_ _K142328_))
              (_E142309142317_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self142158_ _stx142159_)
        (if (gx#sealed-syntax? _stx142159_)
            _stx142159_
            (let* ((_self142160142166_ _self142158_)
                   (_E142162142170_
                    (lambda ()
                      (error '"No clause matching" _self142160142166_)))
                   (_K142163142175_
                    (lambda (_K142173_)
                      (gx#core-apply-expander__0 _K142173_ _stx142159_))))
              (if (##structure-instance-of?
                   _self142160142166_
                   'gx#core-expander::t)
                  (let* ((_e142164142178_
                          (##unchecked-structure-ref
                           _self142160142166_
                           '1
                           gx#expander::t
                           '#f))
                         (_K142181_ _e142164142178_))
                    (_K142163142175_ _K142181_))
                  (_E142162142170_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self142020_ _stx142021_ _top?142022_)
        (if (_top?142022_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self142020_ _stx142021_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx142021_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self142027_ _stx142028_)
        (let ((_top?142030_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self142027_
           _stx142028_
           _top?142030_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g148084_
        (let ((_g148083_ (##length _g148084_)))
          (cond ((##fx= _g148083_ 2)
                 (apply (lambda (_self142027_ _stx142028_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self142027_
                           _stx142028_))
                        _g148084_))
                ((##fx= _g148083_ 3)
                 (apply (lambda (_self142032_ _stx142033_ _top?142034_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self142032_
                           _stx142033_
                           _top?142034_))
                        _g148084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g148084_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141894_ _stx141895_)
        (gx#top-special-form::apply-macro-expander__%
         _self141894_
         _stx141895_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141719_ _stx141720_)
        (let* ((_self141721141727_ _self141719_)
               (_E141723141731_
                (lambda () (error '"No clause matching" _self141721141727_)))
               (_K141724141764_
                (lambda (_id141734_)
                  (let* ((_e141735141742_ _stx141720_)
                         (_E141737141746_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141735141742_)))
                         (_E141736141760_
                          (lambda ()
                            (if (gx#stx-pair? _e141735141742_)
                                (let ((_e141738141750_
                                       (gx#syntax-e _e141735141742_)))
                                  (let ((_hd141739141753_
                                         (##car _e141738141750_))
                                        (_tl141740141755_
                                         (##cdr _e141738141750_)))
                                    (let ((_body141758_ _tl141740141755_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141734_
                                           _body141758_)
                                          (_E141737141746_)))))
                                (_E141737141746_)))))
                    (_E141736141760_)))))
          (if (##structure-instance-of?
               _self141721141727_
               'gx#rename-macro-expander::t)
              (let* ((_e141725141767_
                      (##unchecked-structure-ref
                       _self141721141727_
                       '1
                       gx#expander::t
                       '#f))
                     (_id141770_ _e141725141767_))
                (_K141724141764_ _id141770_))
              (_E141723141731_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141545_ _stx141546_ _method141547_)
        (let* ((_self141548141556_ _self141545_)
               (_E141550141560_
                (lambda () (error '"No clause matching" _self141548141556_)))
               (_K141551141567_
                (lambda (_phi141563_ _ctx141564_ _K141565_)
                  (gx#core-apply-user-macro
                   _K141565_
                   _stx141546_
                   _ctx141564_
                   _phi141563_
                   _method141547_))))
          (if (##structure-instance-of?
               _self141548141556_
               'gx#macro-expander::t)
              (let* ((_e141552141570_
                      (##unchecked-structure-ref
                       _self141548141556_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141573_ _e141552141570_)
                     (_e141553141575_
                      (##unchecked-structure-ref
                       _self141548141556_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141578_ _e141553141575_)
                     (_e141554141580_
                      (##unchecked-structure-ref
                       _self141548141556_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141583_ _e141554141580_))
                (_K141551141567_ _phi141583_ _ctx141578_ _K141573_))
              (_E141550141560_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141588_ _stx141589_)
        (let ((_method141591_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141588_
           _stx141589_
           _method141591_))))
    (define gx#core-apply-user-expander
      (lambda _g148086_
        (let ((_g148085_ (##length _g148086_)))
          (cond ((##fx= _g148085_ 2)
                 (apply (lambda (_self141588_ _stx141589_)
                          (gx#core-apply-user-expander__0
                           _self141588_
                           _stx141589_))
                        _g148086_))
                ((##fx= _g148085_ 3)
                 (apply (lambda (_self141593_ _stx141594_ _method141595_)
                          (gx#core-apply-user-expander__%
                           _self141593_
                           _stx141594_
                           _method141595_))
                        _g148086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g148086_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141535_ _stx141536_ _ctx141537_ _phi141538_ _method141539_)
        (let ((_mark141541_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141537_
                _phi141538_
                _stx141536_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141535_
               (gx#stx-apply-mark _stx141536_ _mark141541_)
               _method141539_)
              _mark141541_))
           gx#current-expander-marks
           (cons _mark141541_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141387_ _phi141388_ _ctx141389_)
        (let _lp141391_ ((_bind141393_
                          (gx#core-resolve-identifier__%
                           _stx141387_
                           _phi141388_
                           _ctx141389_)))
          (if (##structure-direct-instance-of?
               _bind141393_
               'gx#import-binding::t)
              (_lp141391_
               (##unchecked-structure-ref
                _bind141393_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141393_
                   'gx#alias-binding::t)
                  (_lp141391_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141393_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141388_
                    _ctx141389_))
                  _bind141393_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141398_)
        (let* ((_phi141400_ (gx#current-expander-phi))
               (_ctx141402_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141398_ _phi141400_ _ctx141402_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141404_ _phi141405_)
        (let ((_ctx141407_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141404_ _phi141405_ _ctx141407_))))
    (define gx#resolve-identifier
      (lambda _g148088_
        (let ((_g148087_ (##length _g148088_)))
          (cond ((##fx= _g148087_ 1)
                 (apply (lambda (_stx141398_)
                          (gx#resolve-identifier__0 _stx141398_))
                        _g148088_))
                ((##fx= _g148087_ 2)
                 (apply (lambda (_stx141404_ _phi141405_)
                          (gx#resolve-identifier__1 _stx141404_ _phi141405_))
                        _g148088_))
                ((##fx= _g148087_ 3)
                 (apply (lambda (_stx141409_ _phi141410_ _ctx141411_)
                          (gx#resolve-identifier__%
                           _stx141409_
                           _phi141410_
                           _ctx141411_))
                        _g148088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g148088_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141345_ _val141346_ _rebind?141347_ _phi141348_ _ctx141349_)
        (let ((_rebind?141351_
               (if (not _rebind?141347_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141347_) _rebind?141347_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141345_)
           _val141346_
           _rebind?141351_
           _phi141348_
           _ctx141349_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141356_ _val141357_)
        (let* ((_rebind?141359_ '#f)
               (_phi141361_ (gx#current-expander-phi))
               (_ctx141363_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141356_
           _val141357_
           _rebind?141359_
           _phi141361_
           _ctx141363_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141365_ _val141366_ _rebind?141367_)
        (let* ((_phi141369_ (gx#current-expander-phi))
               (_ctx141371_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141365_
           _val141366_
           _rebind?141367_
           _phi141369_
           _ctx141371_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141373_ _val141374_ _rebind?141375_ _phi141376_)
        (let ((_ctx141378_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141373_
           _val141374_
           _rebind?141375_
           _phi141376_
           _ctx141378_))))
    (define gx#bind-identifier!
      (lambda _g148090_
        (let ((_g148089_ (##length _g148090_)))
          (cond ((##fx= _g148089_ 2)
                 (apply (lambda (_stx141356_ _val141357_)
                          (gx#bind-identifier!__0 _stx141356_ _val141357_))
                        _g148090_))
                ((##fx= _g148089_ 3)
                 (apply (lambda (_stx141365_ _val141366_ _rebind?141367_)
                          (gx#bind-identifier!__1
                           _stx141365_
                           _val141366_
                           _rebind?141367_))
                        _g148090_))
                ((##fx= _g148089_ 4)
                 (apply (lambda (_stx141373_
                                 _val141374_
                                 _rebind?141375_
                                 _phi141376_)
                          (gx#bind-identifier!__2
                           _stx141373_
                           _val141374_
                           _rebind?141375_
                           _phi141376_))
                        _g148090_))
                ((##fx= _g148089_ 5)
                 (apply (lambda (_stx141380_
                                 _val141381_
                                 _rebind?141382_
                                 _phi141383_
                                 _ctx141384_)
                          (gx#bind-identifier!__%
                           _stx141380_
                           _val141381_
                           _rebind?141382_
                           _phi141383_
                           _ctx141384_))
                        _g148090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g148090_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141317_ _phi141318_ _ctx141319_)
        (let _lp141321_ ((_e141323_ _stx141317_)
                         (_marks141324_ (gx#current-expander-marks)))
          (if (symbol? _e141323_)
              (gx#core-resolve-binding
               _e141323_
               _phi141318_
               _phi141318_
               _ctx141319_
               (reverse _marks141324_))
              (if (gx#identifier-quote? _e141323_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e141323_ '1 gx#AST::t '#f)
                   _phi141318_
                   '0
                   (##unchecked-structure-ref
                    _e141323_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141323_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141323_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e141323_ '1 gx#AST::t '#f)
                       _phi141318_
                       _phi141318_
                       _ctx141319_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141323_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141324_))
                      (if (##structure-direct-instance-of?
                           _e141323_
                           'gx#syntax-wrap::t)
                          (_lp141321_
                           (##unchecked-structure-ref
                            _e141323_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141323_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141324_))
                          (if (##structure-instance-of?
                               _e141323_
                               'gerbil#AST::t)
                              (_lp141321_
                               (##unchecked-structure-ref
                                _e141323_
                                '1
                                gx#AST::t
                                '#f)
                               _marks141324_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141317_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141329_)
        (let* ((_phi141331_ (gx#current-expander-phi))
               (_ctx141333_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141329_
           _phi141331_
           _ctx141333_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141335_ _phi141336_)
        (let ((_ctx141338_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141335_
           _phi141336_
           _ctx141338_))))
    (define gx#core-resolve-identifier
      (lambda _g148092_
        (let ((_g148091_ (##length _g148092_)))
          (cond ((##fx= _g148091_ 1)
                 (apply (lambda (_stx141329_)
                          (gx#core-resolve-identifier__0 _stx141329_))
                        _g148092_))
                ((##fx= _g148091_ 2)
                 (apply (lambda (_stx141335_ _phi141336_)
                          (gx#core-resolve-identifier__1
                           _stx141335_
                           _phi141336_))
                        _g148092_))
                ((##fx= _g148091_ 3)
                 (apply (lambda (_stx141340_ _phi141341_ _ctx141342_)
                          (gx#core-resolve-identifier__%
                           _stx141340_
                           _phi141341_
                           _ctx141342_))
                        _g148092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g148092_))))))
    (define gx#core-resolve-binding
      (lambda (_id141230_
               _phi141231_
               _src-phi141232_
               _ctx141233_
               _marks141234_)
        (letrec ((_resolve141236_
                  (lambda (_ctx141304_ _src-phi141305_ _key141306_)
                    (let _lp141308_ ((_ctx141310_
                                      (gx#core-context-shift
                                       _ctx141304_
                                       _phi141231_))
                                     (_dphi141311_
                                      (fx- _phi141231_ _src-phi141305_)))
                      (let ((_$e141313_
                             (gx#core-context-resolve
                              _ctx141310_
                              _key141306_)))
                        (if _$e141313_
                            (values _$e141313_)
                            (if (fxzero? _dphi141311_)
                                '#f
                                (if (fxpositive? _dphi141311_)
                                    (_lp141308_
                                     (gx#core-context-shift _ctx141310_ '-1)
                                     (fx- _dphi141311_ '1))
                                    (_lp141308_
                                     (gx#core-context-shift _ctx141310_ '1)
                                     (fx+ _dphi141311_ '1))))))))))
          (let _lp141238_ ((_ctx141240_ _ctx141233_)
                           (_src-phi141241_ _src-phi141232_)
                           (_rest141242_ _marks141234_))
            (let* ((_rest141243141251_ _rest141242_)
                   (_else141245141259_
                    (lambda ()
                      (_resolve141236_
                       _ctx141240_
                       _src-phi141241_
                       _id141230_)))
                   (_K141247141292_
                    (lambda (_rest141262_ _hd141263_)
                      (let* ((_hd141264141270_ _hd141263_)
                             (_E141266141274_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd141264141270_)))
                             (_K141267141284_
                              (lambda (_subst141277_)
                                (let ((_$e141281_
                                       (let ((_key141279_
                                              (if _subst141277_
                                                  (table-ref
                                                   _subst141277_
                                                   _id141230_
                                                   '#f)
                                                  '#f)))
                                         (if _key141279_
                                             (_resolve141236_
                                              _ctx141240_
                                              _src-phi141241_
                                              _key141279_)
                                             '#f))))
                                  (if _$e141281_
                                      _$e141281_
                                      (_lp141238_
                                       (##unchecked-structure-ref
                                        _hd141263_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd141263_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest141262_))))))
                        (if (##structure-instance-of?
                             _hd141264141270_
                             'gx#expander-mark::t)
                            (let* ((_e141268141287_
                                    (##unchecked-structure-ref
                                     _hd141264141270_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst141290_ _e141268141287_))
                              (_K141267141284_ _subst141290_))
                            (_E141266141274_))))))
              (if (##pair? _rest141243141251_)
                  (let ((_hd141248141295_ (##car _rest141243141251_))
                        (_tl141249141297_ (##cdr _rest141243141251_)))
                    (let* ((_hd141300_ _hd141248141295_)
                           (_rest141302_ _tl141249141297_))
                      (_K141247141292_ _rest141302_ _hd141300_)))
                  (_else141245141259_)))))))
    (define gx#core-bind!__%
      (lambda (_key141106_ _val141107_ _rebind?141108_ _phi141109_ _ctx141110_)
        (letrec ((_update-binding141112_
                  (lambda (_xval141183_)
                    (if (or (_rebind?141108_
                             _ctx141110_
                             _xval141183_
                             _val141107_)
                            (and (##structure-direct-instance-of?
                                  _xval141183_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval141183_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val141107_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val141107_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval141183_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val141107_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val141107_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval141183_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val141107_
                        (if (and (##structure-direct-instance-of?
                                  _val141107_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val141107_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval141183_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val141107_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval141183_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval141183_
                            (if (and (##structure-direct-instance-of?
                                      _val141107_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval141183_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key141106_
                                 (cons (##unchecked-structure-ref
                                        _val141107_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val141107_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval141183_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval141183_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval141183_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval141183_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key141106_
                                 _val141107_
                                 _xval141183_))))))
                 (_gensubst141113_
                  (lambda (_subst141178_ _id141179_)
                    (let ((_eid141181_
                           (gensym (if (uninterned-symbol? _id141179_)
                                       '%
                                       _id141179_))))
                      (table-set! _subst141178_ _id141179_ _eid141181_)
                      _eid141181_)))
                 (_subst!141114_
                  (lambda (_key141116_)
                    (let* ((_key141117141125_ _key141116_)
                           (_else141119141133_ (lambda () _key141116_))
                           (_K141121141166_
                            (lambda (_mark141136_ _id141137_)
                              (let* ((_mark141138141144_ _mark141136_)
                                     (_E141140141148_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark141138141144_)))
                                     (_K141141141158_
                                      (lambda (_subst141151_)
                                        (if (not _subst141151_)
                                            (let ((_subst141153_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark141136_
                                               _subst141153_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst141113_
                                               _subst141153_
                                               _id141137_))
                                            (let ((_$e141155_
                                                   (table-ref
                                                    _subst141151_
                                                    _id141137_
                                                    '#f)))
                                              (if _$e141155_
                                                  (values _$e141155_)
                                                  (_gensubst141113_
                                                   _subst141151_
                                                   _id141137_)))))))
                                (if (##structure-instance-of?
                                     _mark141138141144_
                                     'gx#expander-mark::t)
                                    (let* ((_e141142141161_
                                            (##unchecked-structure-ref
                                             _mark141138141144_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst141164_ _e141142141161_))
                                      (_K141141141158_ _subst141164_))
                                    (_E141140141148_))))))
                      (if (##pair? _key141117141125_)
                          (let ((_hd141122141169_ (##car _key141117141125_))
                                (_tl141123141171_ (##cdr _key141117141125_)))
                            (let* ((_id141174_ _hd141122141169_)
                                   (_mark141176_ _tl141123141171_))
                              (_K141121141166_ _mark141176_ _id141174_)))
                          (_else141119141133_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx141110_ _phi141109_)
           (_subst!141114_ _key141106_)
           _val141107_
           _update-binding141112_))))
    (define gx#core-bind!__0
      (lambda (_key141200_ _val141201_)
        (let* ((_rebind?141203_ false)
               (_phi141205_ (gx#current-expander-phi))
               (_ctx141207_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141200_
           _val141201_
           _rebind?141203_
           _phi141205_
           _ctx141207_))))
    (define gx#core-bind!__1
      (lambda (_key141209_ _val141210_ _rebind?141211_)
        (let* ((_phi141213_ (gx#current-expander-phi))
               (_ctx141215_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141209_
           _val141210_
           _rebind?141211_
           _phi141213_
           _ctx141215_))))
    (define gx#core-bind!__2
      (lambda (_key141217_ _val141218_ _rebind?141219_ _phi141220_)
        (let ((_ctx141222_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141217_
           _val141218_
           _rebind?141219_
           _phi141220_
           _ctx141222_))))
    (define gx#core-bind!
      (lambda _g148094_
        (let ((_g148093_ (##length _g148094_)))
          (cond ((##fx= _g148093_ 2)
                 (apply (lambda (_key141200_ _val141201_)
                          (gx#core-bind!__0 _key141200_ _val141201_))
                        _g148094_))
                ((##fx= _g148093_ 3)
                 (apply (lambda (_key141209_ _val141210_ _rebind?141211_)
                          (gx#core-bind!__1
                           _key141209_
                           _val141210_
                           _rebind?141211_))
                        _g148094_))
                ((##fx= _g148093_ 4)
                 (apply (lambda (_key141217_
                                 _val141218_
                                 _rebind?141219_
                                 _phi141220_)
                          (gx#core-bind!__2
                           _key141217_
                           _val141218_
                           _rebind?141219_
                           _phi141220_))
                        _g148094_))
                ((##fx= _g148093_ 5)
                 (apply (lambda (_key141224_
                                 _val141225_
                                 _rebind?141226_
                                 _phi141227_
                                 _ctx141228_)
                          (gx#core-bind!__%
                           _key141224_
                           _val141225_
                           _rebind?141226_
                           _phi141227_
                           _ctx141228_))
                        _g148094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g148094_))))))
    (define gx#core-identifier-key
      (lambda (_stx141040_)
        (if (symbol? _stx141040_)
            (let* ((_g141041141049_ (gx#current-expander-marks))
                   (_else141043141057_ (lambda () _stx141040_))
                   (_K141045141062_
                    (lambda (_hd141060_) (cons _stx141040_ _hd141060_))))
              (if (##pair? _g141041141049_)
                  (let* ((_hd141046141065_ (##car _g141041141049_))
                         (_hd141068_ _hd141046141065_))
                    (_K141045141062_ _hd141068_))
                  (_else141043141057_)))
            (if (gx#identifier? _stx141040_)
                (let* ((_id141070_ (gx#syntax-local-unwrap _stx141040_))
                       (_eid141072_ (gx#stx-e _id141070_))
                       (_marks141074_ (gx#stx-identifier-marks* _id141070_)))
                  (let* ((_marks141076141084_ _marks141074_)
                         (_else141078141092_ (lambda () _eid141072_))
                         (_K141080141097_
                          (lambda (_hd141095_) (cons _eid141072_ _hd141095_))))
                    (if (##pair? _marks141076141084_)
                        (let* ((_hd141081141100_ (##car _marks141076141084_))
                               (_hd141103_ _hd141081141100_))
                          (_K141080141097_ _hd141103_))
                        (_else141078141092_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx141040_)))))
    (define gx#core-context-shift
      (lambda (_ctx140985_ _phi140986_)
        (letrec ((_make-phi140988_
                  (lambda (_super141038_)
                    (let ((__obj148065
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj148065
                       (gensym 'phi)
                       _super141038_)
                      __obj148065)))
                 (_make-phi/up140989_
                  (lambda (_ctx141033_ _super141034_)
                    (let ((_ctx+1141036_ (_make-phi140988_ _super141034_)))
                      (##unchecked-structure-set!
                       _ctx141033_
                       _ctx+1141036_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1141036_
                       _ctx141033_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1141036_)))
                 (_make-phi/down140990_
                  (lambda (_ctx141028_ _super141029_)
                    (let ((_ctx-1141031_ (_make-phi140988_ _super141029_)))
                      (##unchecked-structure-set!
                       _ctx-1141031_
                       _ctx141028_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx141028_
                       _ctx-1141031_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1141031_)))
                 (_shift140991_
                  (lambda (_ctx141012_
                           _delta141013_
                           _make-delta-context141014_
                           _phi141015_
                           _K141016_)
                    (let ((_$e141018_
                           (##unchecked-structure-ref
                            _ctx141012_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e141018_
                          ((lambda (_super141021_)
                             (let* ((_super141023_
                                     (_K141016_ _super141021_ _delta141013_))
                                    (_ctx+d141025_
                                     (_make-delta-context141014_
                                      _ctx141012_
                                      _super141023_)))
                               (_K141016_
                                _ctx+d141025_
                                (fx- _phi141015_ _delta141013_))))
                           _$e141018_)
                          (error '"Bad context" _ctx141012_))))))
          (let _K140993_ ((_ctx140995_ _ctx140985_) (_phi140996_ _phi140986_))
            (if (fxzero? _phi140996_)
                _ctx140995_
                (if (fx> (##vector-length _ctx140995_) '3)
                    (if (fxpositive? _phi140996_)
                        (let ((_$e140998_
                               (##unchecked-structure-ref
                                _ctx140995_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e140998_
                              ((lambda (_g141000141002_)
                                 (_K140993_
                                  _g141000141002_
                                  (fx- _phi140996_ '1)))
                               _$e140998_)
                              (_shift140991_
                               _ctx140995_
                               '1
                               _make-phi/up140989_
                               _phi140996_
                               _K140993_)))
                        (let ((_$e141005_
                               (##unchecked-structure-ref
                                _ctx140995_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e141005_
                              ((lambda (_g141007141009_)
                                 (_K140993_
                                  _g141007141009_
                                  (fx+ _phi140996_ '1)))
                               _$e141005_)
                              (_shift140991_
                               _ctx140995_
                               '-1
                               _make-phi/down140990_
                               _phi140996_
                               _K140993_))))
                    _ctx140995_))))))
    (define gx#core-context-get
      (lambda (_ctx140982_ _key140983_)
        (table-ref
         (##unchecked-structure-ref _ctx140982_ '2 gx#expander-context::t '#f)
         _key140983_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140978_ _key140979_ _val140980_)
        (table-set!
         (##unchecked-structure-ref _ctx140978_ '2 gx#expander-context::t '#f)
         _key140979_
         _val140980_)))
    (define gx#core-context-resolve
      (lambda (_ctx140965_ _key140966_)
        (let _lp140968_ ((_ctx140970_ _ctx140965_))
          (let ((_$e140972_ (gx#core-context-get _ctx140970_ _key140966_)))
            (if _$e140972_
                (values _$e140972_)
                (let ((_$e140975_
                       (if (fx> (##vector-length _ctx140970_) '3)
                           (##unchecked-structure-ref
                            _ctx140970_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e140975_ (_lp140968_ _$e140975_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140955_ _key140956_ _val140957_ _rebind140958_)
        (let ((_$e140960_ (gx#core-context-get _ctx140955_ _key140956_)))
          (if _$e140960_
              ((lambda (_xval140963_)
                 (gx#core-context-put!
                  _ctx140955_
                  _key140956_
                  (_rebind140958_ _xval140963_)))
               _$e140960_)
              (gx#core-context-put! _ctx140955_ _key140956_ _val140957_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140933_ _stop?140934_)
        (let _lp140936_ ((_ctx140938_ _ctx140933_))
          (if (_stop?140934_ _ctx140938_)
              _ctx140938_
              (if (##structure-instance-of? _ctx140938_ 'gx#context-phi::t)
                  (_lp140936_
                   (##unchecked-structure-ref
                    _ctx140938_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140944_ (gx#current-expander-context))
               (_stop?140946_ gx#top-context?))
          (gx#core-context-top__% _ctx140944_ _stop?140946_))))
    (define gx#core-context-top__1
      (lambda (_ctx140948_)
        (let ((_stop?140950_ gx#top-context?))
          (gx#core-context-top__% _ctx140948_ _stop?140950_))))
    (define gx#core-context-top
      (lambda _g148096_
        (let ((_g148095_ (##length _g148096_)))
          (cond ((##fx= _g148095_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g148096_))
                ((##fx= _g148095_ 1)
                 (apply (lambda (_ctx140948_)
                          (gx#core-context-top__1 _ctx140948_))
                        _g148096_))
                ((##fx= _g148095_ 2)
                 (apply (lambda (_ctx140952_ _stop?140953_)
                          (gx#core-context-top__% _ctx140952_ _stop?140953_))
                        _g148096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g148096_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140918_)
        (let _lp140920_ ((_ctx140922_ _ctx140918_))
          (if (##structure-instance-of? _ctx140922_ 'gx#context-phi::t)
              (_lp140920_
               (##unchecked-structure-ref
                _ctx140922_
                '3
                gx#phi-context::t
                '#f))
              _ctx140922_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140928_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140928_))))
    (define gx#core-context-root
      (lambda _g148098_
        (let ((_g148097_ (##length _g148098_)))
          (cond ((##fx= _g148097_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g148098_))
                ((##fx= _g148097_ 1)
                 (apply (lambda (_ctx140930_)
                          (gx#core-context-root__% _ctx140930_))
                        _g148098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g148098_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140899_ . __140896140900_)
        (let ((_$e140903_ (gx#current-expander-allow-rebind?)))
          (if _$e140903_
              _$e140903_
              (if (##structure-instance-of? _ctx140899_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx140899_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx140899_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140910_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140910_))))
    (define gx#core-context-rebind?
      (lambda _g148100_
        (let ((_g148099_ (##length _g148100_)))
          (cond ((##fx= _g148099_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g148100_))
                ((##fx= _g148099_ 1)
                 (apply (lambda (_ctx140912_)
                          (gx#core-context-rebind?__% _ctx140912_))
                        _g148100_))
                ((##fx>= _g148099_ 1)
                 (apply gx#core-context-rebind?__% _g148100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g148100_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140882_)
        (let ((_$e140884_ (gx#core-context-top__1 _ctx140882_)))
          (if _$e140884_
              ((lambda (_ctx140887_)
                 (if (##structure-instance-of?
                      _ctx140887_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx140887_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e140884_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140893_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140893_))))
    (define gx#core-context-namespace
      (lambda _g148102_
        (let ((_g148101_ (##length _g148102_)))
          (cond ((##fx= _g148101_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g148102_))
                ((##fx= _g148101_ 1)
                 (apply (lambda (_ctx140895_)
                          (gx#core-context-namespace__% _ctx140895_))
                        _g148102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g148102_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140868_ _is?140869_)
        (if (##structure-direct-instance-of?
             _bind140868_
             'gx#syntax-binding::t)
            (_is?140869_
             (##unchecked-structure-ref
              _bind140868_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140874_)
        (let ((_is?140876_ gx#expander?))
          (gx#expander-binding?__% _bind140874_ _is?140876_))))
    (define gx#expander-binding?
      (lambda _g148104_
        (let ((_g148103_ (##length _g148104_)))
          (cond ((##fx= _g148103_ 1)
                 (apply (lambda (_bind140874_)
                          (gx#expander-binding?__0 _bind140874_))
                        _g148104_))
                ((##fx= _g148103_ 2)
                 (apply (lambda (_bind140878_ _is?140879_)
                          (gx#expander-binding?__% _bind140878_ _is?140879_))
                        _g148104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g148104_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140865_)
        (gx#expander-binding?__% _bind140865_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140863_)
        (gx#expander-binding?__% _bind140863_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140857_)
        (letrec ((_direct-special-form?140859_
                  (lambda (_obj140861_)
                    (##structure-direct-instance-of?
                     _obj140861_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140857_
           _direct-special-form?140859_))))
    (define gx#special-form-binding?
      (lambda (_bind140855_)
        (gx#expander-binding?__% _bind140855_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140846_)
        (letrec ((_feature?140848_
                  (lambda (_e140850_)
                    (let ((_$e140852_
                           (##structure-instance-of?
                            _e140850_
                            'gx#feature-expander::t)))
                      (if _$e140852_
                          _$e140852_
                          (##structure-instance-of?
                           _e140850_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind140846_ _feature?140848_))))
    (define gx#private-feature-binding?
      (lambda (_bind140844_)
        (gx#expander-binding?__% _bind140844_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140831_ _bound?140832_)
        (if (gx#identifier? _id140831_)
            (_bound?140832_ (gx#resolve-identifier__0 _id140831_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140837_)
        (let ((_bound?140839_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140837_ _bound?140839_))))
    (define gx#core-bound-identifier?
      (lambda _g148106_
        (let ((_g148105_ (##length _g148106_)))
          (cond ((##fx= _g148105_ 1)
                 (apply (lambda (_id140837_)
                          (gx#core-bound-identifier?__0 _id140837_))
                        _g148106_))
                ((##fx= _g148105_ 2)
                 (apply (lambda (_id140841_ _bound?140842_)
                          (gx#core-bound-identifier?__%
                           _id140841_
                           _bound?140842_))
                        _g148106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g148106_))))))
    (define gx#core-identifier=?
      (lambda (_x140821_ _y140822_)
        (letrec ((_y=?140824_
                  (lambda (_xid140828_)
                    ((if (list? _y140822_) memq eq?) _xid140828_ _y140822_))))
          (let ((_bind140826_ (gx#resolve-identifier__0 _x140821_)))
            (if (##structure-instance-of? _bind140826_ 'gx#binding::t)
                (_y=?140824_
                 (##unchecked-structure-ref _bind140826_ '1 gx#binding::t '#f))
                (_y=?140824_ (gx#stx-e _x140821_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140819_)
        (if (interned-symbol? _e140819_)
            (string-index (symbol->string _e140819_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140774_ _src140775_ _ctx140776_ _marks140777_)
        (if (##structure? _stx140774_)
            (let ((_$e140779_ (gx#sealed-syntax-unwrap _stx140774_)))
              (if _$e140779_
                  (values _$e140779_)
                  (if (gx#identifier? _stx140774_)
                      (let ((_id140782_
                             (gx#stx-unwrap__% _stx140774_ _marks140777_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id140782_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e140784_
                                (##unchecked-structure-ref
                                 _id140782_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e140784_ _$e140784_ _src140775_))
                         _ctx140776_
                         (##unchecked-structure-ref
                          _id140782_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx140774_)
                       (let ((_$e140787_ (gx#stx-source _stx140774_)))
                         (if _$e140787_ _$e140787_ _src140775_))
                       _ctx140776_
                       (reverse _marks140777_)))))
            (##structure
             gx#syntax-quote::t
             _stx140774_
             _src140775_
             _ctx140776_
             (reverse _marks140777_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140793_)
        (let* ((_src140795_ '#f)
               (_ctx140797_ (gx#current-expander-context))
               (_marks140799_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140793_
           _src140795_
           _ctx140797_
           _marks140799_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140801_ _src140802_)
        (let* ((_ctx140804_ (gx#current-expander-context))
               (_marks140806_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140801_
           _src140802_
           _ctx140804_
           _marks140806_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140808_ _src140809_ _ctx140810_)
        (let ((_marks140812_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140808_
           _src140809_
           _ctx140810_
           _marks140812_))))
    (define gx#core-quote-syntax
      (lambda _g148108_
        (let ((_g148107_ (##length _g148108_)))
          (cond ((##fx= _g148107_ 1)
                 (apply (lambda (_stx140793_)
                          (gx#core-quote-syntax__0 _stx140793_))
                        _g148108_))
                ((##fx= _g148107_ 2)
                 (apply (lambda (_stx140801_ _src140802_)
                          (gx#core-quote-syntax__1 _stx140801_ _src140802_))
                        _g148108_))
                ((##fx= _g148107_ 3)
                 (apply (lambda (_stx140808_ _src140809_ _ctx140810_)
                          (gx#core-quote-syntax__2
                           _stx140808_
                           _src140809_
                           _ctx140810_))
                        _g148108_))
                ((##fx= _g148107_ 4)
                 (apply (lambda (_stx140814_
                                 _src140815_
                                 _ctx140816_
                                 _marks140817_)
                          (gx#core-quote-syntax__%
                           _stx140814_
                           _src140815_
                           _ctx140816_
                           _marks140817_))
                        _g148108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g148108_))))))
    (define gx#core-cons
      (lambda (_hd140770_ _tl140771_)
        (cons (gx#core-quote-syntax__0 _hd140770_) _tl140771_)))
    (define gx#core-list
      (lambda (_hd140767_ . _rest140768_)
        (cons (gx#core-quote-syntax__0 _hd140767_) _rest140768_)))
    (define gx#core-cons*
      (lambda (_hd140764_ . _rest140765_)
        (apply cons* (gx#core-quote-syntax__0 _hd140764_) _rest140765_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140738_ _rel140739_)
        (let ((_path140751_ (gx#stx-e _stx-path140738_))
              (_reldir140752_
               (let _lp140741_ ((_relsrc140743_
                                 (let ((_$e140748_
                                        (gx#stx-source _stx-path140738_)))
                                   (if _$e140748_ _$e140748_ _rel140739_))))
                 (if (##structure-instance-of? _relsrc140743_ 'gerbil#AST::t)
                     (_lp140741_
                      (let ((_$e140745_ (gx#stx-source _relsrc140743_)))
                        (if _$e140745_ _$e140745_ (gx#stx-e _relsrc140743_))))
                     (if (source-location-path? _relsrc140743_)
                         (path-directory (source-location-path _relsrc140743_))
                         (if (string? _relsrc140743_)
                             (path-directory _relsrc140743_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140751_ (path-normalize _reldir140752_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140757_)
        (let ((_rel140759_ '#f))
          (gx#core-resolve-path__% _stx-path140757_ _rel140759_))))
    (define gx#core-resolve-path
      (lambda _g148110_
        (let ((_g148109_ (##length _g148110_)))
          (cond ((##fx= _g148109_ 1)
                 (apply (lambda (_stx-path140757_)
                          (gx#core-resolve-path__0 _stx-path140757_))
                        _g148110_))
                ((##fx= _g148109_ 2)
                 (apply (lambda (_stx-path140761_ _rel140762_)
                          (gx#core-resolve-path__%
                           _stx-path140761_
                           _rel140762_))
                        _g148110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g148110_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140694_ _ctx140695_)
        (let* ((_repr140696140703_ _repr140694_)
               (_E140698140707_
                (lambda () (error '"No clause matching" _repr140696140703_)))
               (_K140699140715_
                (lambda (_subs140710_ _phi140711_)
                  (let ((_subst140713_
                         (if (not (null? _subs140710_))
                             (list->table _subs140710_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst140713_
                     _ctx140695_
                     _phi140711_
                     '#f)))))
          (if (##pair? _repr140696140703_)
              (let ((_hd140700140718_ (##car _repr140696140703_))
                    (_tl140701140720_ (##cdr _repr140696140703_)))
                (let* ((_phi140723_ _hd140700140718_)
                       (_subs140725_ _tl140701140720_))
                  (_K140699140715_ _subs140725_ _phi140723_)))
              (_E140698140707_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140730_)
        (let ((_ctx140732_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140730_ _ctx140732_))))
    (define gx#core-deserialize-mark
      (lambda _g148112_
        (let ((_g148111_ (##length _g148112_)))
          (cond ((##fx= _g148111_ 1)
                 (apply (lambda (_repr140730_)
                          (gx#core-deserialize-mark__0 _repr140730_))
                        _g148112_))
                ((##fx= _g148111_ 2)
                 (apply (lambda (_repr140734_ _ctx140735_)
                          (gx#core-deserialize-mark__%
                           _repr140734_
                           _ctx140735_))
                        _g148112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g148112_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140691_)
        (gx#stx-rewrap _stx140691_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140689_)
        (gx#stx-unwrap__% _stx140689_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140659_)
        (let* ((_g140660140668_ (gx#current-expander-marks))
               (_else140662140676_ (lambda () _stx140659_))
               (_K140664140681_
                (lambda (_hd140679_)
                  (gx#stx-apply-mark _stx140659_ _hd140679_))))
          (if (##pair? _g140660140668_)
              (let* ((_hd140665140684_ (##car _g140660140668_))
                     (_hd140687_ _hd140665140684_))
                (_K140664140681_ _hd140687_))
              (_else140662140676_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140644_ _E140645_)
        (let ((_bind140647_ (gx#resolve-identifier__0 _stx140644_)))
          (if (##structure-direct-instance-of?
               _bind140647_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140647_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140645_ _stx140644_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140652_)
        (let ((_E140654_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140652_ _E140654_))))
    (define gx#syntax-local-e
      (lambda _g148114_
        (let ((_g148113_ (##length _g148114_)))
          (cond ((##fx= _g148113_ 1)
                 (apply (lambda (_stx140652_)
                          (gx#syntax-local-e__0 _stx140652_))
                        _g148114_))
                ((##fx= _g148113_ 2)
                 (apply (lambda (_stx140656_ _E140657_)
                          (gx#syntax-local-e__% _stx140656_ _E140657_))
                        _g148114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g148114_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140628_ _E140629_)
        (let ((_e140631_ (gx#syntax-local-e__% _stx140628_ _E140629_)))
          (if (##structure-instance-of? _e140631_ 'gx#expander::t)
              (##structure-ref _e140631_ '1 gx#expander::t '#f)
              _e140631_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140636_)
        (let ((_E140638_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140636_ _E140638_))))
    (define gx#syntax-local-value
      (lambda _g148116_
        (let ((_g148115_ (##length _g148116_)))
          (cond ((##fx= _g148115_ 1)
                 (apply (lambda (_stx140636_)
                          (gx#syntax-local-value__0 _stx140636_))
                        _g148116_))
                ((##fx= _g148115_ 2)
                 (apply (lambda (_stx140640_ _E140641_)
                          (gx#syntax-local-value__% _stx140640_ _E140641_))
                        _g148116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g148116_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140625_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140625_)))))
