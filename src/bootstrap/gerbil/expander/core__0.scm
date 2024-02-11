(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707616237)
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
      (lambda _$args143560_
        (apply make-struct-instance gx#expander-context::t _$args143560_)))
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
      (lambda _$args143557_
        (apply make-struct-instance gx#root-context::t _$args143557_)))
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
      (lambda _$args143554_
        (apply make-struct-instance gx#phi-context::t _$args143554_)))
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
      (lambda _$args143551_
        (apply make-struct-instance gx#top-context::t _$args143551_)))
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
      (lambda _$args143548_
        (apply make-struct-instance gx#module-context::t _$args143548_)))
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
      (lambda _$args143545_
        (apply make-struct-instance gx#prelude-context::t _$args143545_)))
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
      (lambda _$args143542_
        (apply make-struct-instance gx#local-context::t _$args143542_)))
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
      (lambda (_self143526_ _id143527_ _super143528_)
        (if (##fx< '3 (##structure-length _self143526_))
            (begin
              (##unchecked-structure-set!
               _self143526_
               _id143527_
               '1
               (##structure-type _self143526_)
               '#f)
              (##unchecked-structure-set!
               _self143526_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143526_)
               '#f)
              (##unchecked-structure-set!
               _self143526_
               _super143528_
               '3
               (##structure-type _self143526_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143526_
                   '3
                   (##vector-length _self143526_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143533_ _id143534_)
        (let ((_super143536_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143533_ _id143534_ _super143536_))))
    (define gx#phi-context:::init!
      (lambda _g148071_
        (let ((_g148070_ (##length _g148071_)))
          (cond ((##fx= _g148070_ 2)
                 (apply (lambda (_self143533_ _id143534_)
                          (gx#phi-context:::init!__0 _self143533_ _id143534_))
                        _g148071_))
                ((##fx= _g148070_ 3)
                 (apply (lambda (_self143538_ _id143539_ _super143540_)
                          (gx#phi-context:::init!__%
                           _self143538_
                           _id143539_
                           _super143540_))
                        _g148071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g148071_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143390_ _super143391_)
        (if (##fx< '3 (##structure-length _self143390_))
            (begin
              (##unchecked-structure-set!
               _self143390_
               (gensym 'L)
               '1
               (##structure-type _self143390_)
               '#f)
              (##unchecked-structure-set!
               _self143390_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143390_)
               '#f)
              (##unchecked-structure-set!
               _self143390_
               _super143391_
               '3
               (##structure-type _self143390_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143390_
                   '3
                   (##vector-length _self143390_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143396_)
        (let ((_super143398_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143396_ _super143398_))))
    (define gx#local-context:::init!
      (lambda _g148073_
        (let ((_g148072_ (##length _g148073_)))
          (cond ((##fx= _g148072_ 1)
                 (apply (lambda (_self143396_)
                          (gx#local-context:::init!__0 _self143396_))
                        _g148073_))
                ((##fx= _g148072_ 2)
                 (apply (lambda (_self143400_ _super143401_)
                          (gx#local-context:::init!__%
                           _self143400_
                           _super143401_))
                        _g148073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g148073_))))))
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
      (lambda _$args143264_
        (apply make-struct-instance gx#binding::t _$args143264_)))
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
      (lambda _$args143261_
        (apply make-struct-instance gx#runtime-binding::t _$args143261_)))
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
      (lambda _$args143258_
        (apply make-struct-instance gx#local-binding::t _$args143258_)))
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
      (lambda _$args143255_
        (apply make-struct-instance gx#top-binding::t _$args143255_)))
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
      (lambda _$args143252_
        (apply make-struct-instance gx#module-binding::t _$args143252_)))
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
      (lambda _$args143249_
        (apply make-struct-instance gx#extern-binding::t _$args143249_)))
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
      (lambda _$args143246_
        (apply make-struct-instance gx#syntax-binding::t _$args143246_)))
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
      (lambda _$args143243_
        (apply make-struct-instance gx#import-binding::t _$args143243_)))
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
      (lambda _$args143240_
        (apply make-struct-instance gx#alias-binding::t _$args143240_)))
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
      (lambda _$args143237_
        (apply make-struct-instance gx#expander::t _$args143237_)))
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
      (lambda _$args143234_
        (apply make-struct-instance gx#core-expander::t _$args143234_)))
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
      (lambda _$args143231_
        (apply make-struct-instance gx#expression-form::t _$args143231_)))
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
      (lambda _$args143228_
        (apply make-struct-instance gx#special-form::t _$args143228_)))
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
      (lambda _$args143225_
        (apply make-struct-instance gx#definition-form::t _$args143225_)))
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
      (lambda _$args143222_
        (apply make-struct-instance gx#top-special-form::t _$args143222_)))
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
      (lambda _$args143219_
        (apply make-struct-instance gx#module-special-form::t _$args143219_)))
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
      (lambda _$args143216_
        (apply make-struct-instance gx#feature-expander::t _$args143216_)))
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
      (lambda _$args143213_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args143213_)))
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
      (lambda _$args143210_
        (apply make-struct-instance gx#reserved-expander::t _$args143210_)))
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
      (lambda _$args143207_
        (apply make-struct-instance gx#macro-expander::t _$args143207_)))
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
      (lambda _$args143204_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args143204_)))
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
      (lambda _$args143201_
        (apply make-struct-instance gx#user-expander::t _$args143201_)))
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
      (lambda _$args143198_
        (apply make-struct-instance gx#expander-mark::t _$args143198_)))
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
      (lambda (_ctx143183_ _message143184_ _stx143185_ . _details143186_)
        (let ((_ctx143196_
               (let ((_$e143188_ _ctx143183_))
                 (if _$e143188_
                     _$e143188_
                     (let ((_$e143191_ (gx#core-context-top__0)))
                       (if _$e143191_
                           ((lambda (_ctx143194_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx143194_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e143191_)
                           '#f))))))
          (raise (make-syntax-error
                  _message143184_
                  (cons _stx143185_ _details143186_)
                  _ctx143196_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx143170_ _expression?143171_)
        (gx#eval-syntax* (gx#core-expand__% _stx143170_ _expression?143171_))))
    (define gx#eval-syntax__0
      (lambda (_stx143176_)
        (let ((_expression?143178_ '#f))
          (gx#eval-syntax__% _stx143176_ _expression?143178_))))
    (define gx#eval-syntax
      (lambda _g148075_
        (let ((_g148074_ (##length _g148075_)))
          (cond ((##fx= _g148074_ 1)
                 (apply (lambda (_stx143176_) (gx#eval-syntax__0 _stx143176_))
                        _g148075_))
                ((##fx= _g148074_ 2)
                 (apply (lambda (_stx143180_ _expression?143181_)
                          (gx#eval-syntax__% _stx143180_ _expression?143181_))
                        _g148075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g148075_))))))
    (define gx#eval-syntax*
      (lambda (_stx143167_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx143167_))))
    (define gx#core-expand__%
      (lambda (_stx143154_ _expression?143155_)
        (if _expression?143155_
            (gx#core-expand-expression _stx143154_)
            (gx#core-expand-top _stx143154_))))
    (define gx#core-expand__0
      (lambda (_stx143160_)
        (let ((_expression?143162_ '#f))
          (gx#core-expand__% _stx143160_ _expression?143162_))))
    (define gx#core-expand
      (lambda _g148077_
        (let ((_g148076_ (##length _g148077_)))
          (cond ((##fx= _g148076_ 1)
                 (apply (lambda (_stx143160_) (gx#core-expand__0 _stx143160_))
                        _g148077_))
                ((##fx= _g148076_ 2)
                 (apply (lambda (_stx143164_ _expression?143165_)
                          (gx#core-expand__% _stx143164_ _expression?143165_))
                        _g148077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g148077_))))))
    (define gx#core-expand-top
      (lambda (_stx143121_)
        (let* ((_stx143123_ (gx#core-expand*__0 _stx143121_))
               (_e143124143131_ _stx143123_)
               (_E143126143135_
                (lambda () (gx#core-expand-expression _stx143123_)))
               (_E143125143149_
                (lambda ()
                  (if (gx#stx-pair? _e143124143131_)
                      (let ((_e143127143139_ (gx#syntax-e _e143124143131_)))
                        (let ((_hd143128143142_ (##car _e143127143139_))
                              (_tl143129143144_ (##cdr _e143127143139_)))
                          (let ((_form143147_ _hd143128143142_))
                            (if (gx#core-bound-identifier?__0 _form143147_)
                                _stx143123_
                                (_E143126143135_)))))
                      (_E143126143135_)))))
          (_E143125143149_))))
    (define gx#core-expand-expression
      (lambda (_stx143068_)
        (letrec ((_sealed-expression?143070_
                  (lambda (_hd143091_)
                    (if (gx#sealed-syntax? _hd143091_)
                        (let* ((_e143092143099_ _hd143091_)
                               (_E143094143103_ (lambda () '#f))
                               (_E143093143117_
                                (lambda ()
                                  (if (gx#stx-pair? _e143092143099_)
                                      (let ((_e143095143107_
                                             (gx#syntax-e _e143092143099_)))
                                        (let ((_hd143096143110_
                                               (##car _e143095143107_))
                                              (_tl143097143112_
                                               (##cdr _e143095143107_)))
                                          (let ((_form143115_
                                                 _hd143096143110_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form143115_
                                                 gx#expression-form-binding?)
                                                (_E143094143103_)))))
                                      (_E143094143103_)))))
                          (_E143093143117_))
                        '#f)))
                 (_illegal-expression143071_
                  (lambda (_hd143089_ . _g148078_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx143068_
                     _hd143089_)))
                 (_expand-e143072_
                  (lambda (_form143084_ _hd143085_)
                    (let ((_bind143087_
                           (if (##structure-instance-of?
                                _form143084_
                                'gx#binding::t)
                               _form143084_
                               (gx#resolve-identifier__0 _form143084_))))
                      (if (gx#core-expander-binding? _bind143087_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind143087_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd143085_
                            (gx#stx-source _stx143068_)))
                          (if (##structure-direct-instance-of?
                               _bind143087_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind143087_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd143085_
                                 (gx#stx-source _stx143068_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx143068_
                               _form143084_)))))))
          (let ((_hd143074_ (gx#core-expand-head _stx143068_)))
            (if (_sealed-expression?143070_ _hd143074_)
                _hd143074_
                (if (gx#stx-pair? _hd143074_)
                    (let* ((_form143076_ (gx#stx-car _hd143074_))
                           (_bind143078_
                            (if (gx#identifier? _form143076_)
                                (gx#resolve-identifier__0 _form143076_)
                                '#f)))
                      (if (or (not _bind143078_)
                              (not (gx#core-expander-binding? _bind143078_)))
                          (_expand-e143072_ '%%app (cons '%%app _hd143074_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind143078_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd143074_
                               _illegal-expression143071_)
                              (if (gx#expression-form-binding? _bind143078_)
                                  (_expand-e143072_ _bind143078_ _hd143074_)
                                  (if (gx#direct-special-form-binding?
                                       _bind143078_)
                                      (gx#core-expand-expression
                                       (_expand-e143072_
                                        _bind143078_
                                        _hd143074_))
                                      (_illegal-expression143071_
                                       _hd143074_))))))
                    (if (gx#core-bound-identifier?__0 _hd143074_)
                        (_illegal-expression143071_ _hd143074_)
                        (if (gx#identifier? _hd143074_)
                            (_expand-e143072_
                             '%%ref
                             (cons '%%ref (cons _hd143074_ '())))
                            (if (gx#stx-datum? _hd143074_)
                                (_expand-e143072_
                                 '%#quote
                                 (cons '%#quote (cons _hd143074_ '())))
                                (_illegal-expression143071_
                                 _hd143074_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx143063_)
        (call-with-parameters
         (lambda ()
           (let ((_stx143066_ (gx#core-expand-expression _stx143063_)))
             (values _stx143066_ (gx#eval-syntax* _stx143066_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx143044_ _stop?143045_)
        (let _lp143047_ ((_stx143049_ _stx143044_))
          (if (_stop?143045_ _stx143049_)
              _stx143049_
              (let ((_rstx143051_ (gx#core-expand1 _stx143049_)))
                (if (eq? _stx143049_ _rstx143051_)
                    _stx143049_
                    (_lp143047_ _rstx143051_)))))))
    (define gx#core-expand*__0
      (lambda (_stx143056_)
        (let ((_stop?143058_ false))
          (gx#core-expand*__% _stx143056_ _stop?143058_))))
    (define gx#core-expand*
      (lambda _g148080_
        (let ((_g148079_ (##length _g148080_)))
          (cond ((##fx= _g148079_ 1)
                 (apply (lambda (_stx143056_) (gx#core-expand*__0 _stx143056_))
                        _g148080_))
                ((##fx= _g148079_ 2)
                 (apply (lambda (_stx143060_ _stop?143061_)
                          (gx#core-expand*__% _stx143060_ _stop?143061_))
                        _g148080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g148080_))))))
    (define gx#core-expand1
      (lambda (_stx143000_)
        (letrec ((_step143002_
                  (lambda (_hd143039_)
                    (let ((_bind143041_ (gx#resolve-identifier__0 _hd143039_)))
                      (if (##structure-instance-of?
                           _bind143041_
                           'gx#runtime-binding::t)
                          _stx143000_
                          (if (##structure-direct-instance-of?
                               _bind143041_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind143041_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx143000_)
                              (if (not _bind143041_)
                                  _stx143000_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx143000_))))))))
          (let* ((_e143003143011_ _stx143000_)
                 (_E143009143015_ (lambda () _stx143000_))
                 (_E143005143021_
                  (lambda ()
                    (let ((_hd143019_ _e143003143011_))
                      (if (gx#identifier? _hd143019_)
                          (_step143002_ _hd143019_)
                          (_E143009143015_)))))
                 (_E143004143035_
                  (lambda ()
                    (if (gx#stx-pair? _e143003143011_)
                        (let ((_e143006143025_ (gx#syntax-e _e143003143011_)))
                          (let ((_hd143007143028_ (##car _e143006143025_))
                                (_tl143008143030_ (##cdr _e143006143025_)))
                            (let ((_hd143033_ _hd143007143028_))
                              (if (gx#identifier? _hd143033_)
                                  (_step143002_ _hd143033_)
                                  (_E143005143021_)))))
                        (_E143005143021_)))))
            (_E143004143035_)))))
    (define gx#core-expand-head
      (lambda (_stx142966_)
        (letrec ((_stop?142968_
                  (lambda (_stx142970_)
                    (let* ((_e142971142978_ _stx142970_)
                           (_E142973142982_ (lambda () '#f))
                           (_E142972142996_
                            (lambda ()
                              (if (gx#stx-pair? _e142971142978_)
                                  (let ((_e142974142986_
                                         (gx#syntax-e _e142971142978_)))
                                    (let ((_hd142975142989_
                                           (##car _e142974142986_))
                                          (_tl142976142991_
                                           (##cdr _e142974142986_)))
                                      (let ((_hd142994_ _hd142975142989_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd142994_)
                                            (_E142973142982_)))))
                                  (_E142973142982_)))))
                      (_E142972142996_)))))
          (gx#core-expand*__% _stx142966_ _stop?142968_))))
    (define gx#core-expand-block__%
      (lambda (_stx142772_
               _expand-special142773_
               _begin-form142774_
               _expand-e142775_)
        (letrec ((_expand-splice142777_
                  (lambda (_hd142940_ _body142941_ _rest142942_ _r142943_)
                    (if (gx#stx-list? _body142941_)
                        (_K142781_
                         (gx#stx-foldr cons _rest142942_ _body142941_)
                         _r142943_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142772_
                         _hd142940_))))
                 (_expand-cond-expand142778_
                  (lambda (_hd142936_ _rest142937_ _r142938_)
                    (_K142781_
                     (cons (gx#core-expand-cond-expand% _hd142936_)
                           _rest142937_)
                     _r142938_)))
                 (_expand-include142779_
                  (lambda (_hd142885_ _rest142886_ _r142887_)
                    (let* ((_e142888142898_ _hd142885_)
                           (_E142890142902_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142888142898_)))
                           (_E142889142932_
                            (lambda ()
                              (if (gx#stx-pair? _e142888142898_)
                                  (let ((_e142891142906_
                                         (gx#syntax-e _e142888142898_)))
                                    (let ((_hd142892142909_
                                           (##car _e142891142906_))
                                          (_tl142893142911_
                                           (##cdr _e142891142906_)))
                                      (if (gx#stx-pair? _tl142893142911_)
                                          (let ((_e142894142914_
                                                 (gx#syntax-e
                                                  _tl142893142911_)))
                                            (let ((_hd142895142917_
                                                   (##car _e142894142914_))
                                                  (_tl142896142919_
                                                   (##cdr _e142894142914_)))
                                              (let ((_path142922_
                                                     _hd142895142917_))
                                                (if (gx#stx-null?
                                                     _tl142896142919_)
                                                    (if (gx#stx-string?
                                                         _path142922_)
                                                        (let* ((_rpath142924_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142922_
                         (gx#stx-source _hd142885_)))
                       (_block142926_
                        (gx#core-expand-include%__% _hd142885_ _rpath142924_))
                       (_rbody142929_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142926_
                            _expand-special142773_
                            '#f
                            _expand-e142775_))
                         gx#current-expander-path
                         (cons _rpath142924_ (gx#current-expander-path)))))
                  (_K142781_
                   _rest142886_
                   (foldr1 cons _r142887_ _rbody142929_)))
                (_E142890142902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142890142902_)))))
                                          (_E142890142902_))))
                                  (_E142890142902_)))))
                      (_E142889142932_))))
                 (_expand-expression142780_
                  (lambda (_hd142881_ _rest142882_ _r142883_)
                    (_K142781_
                     _rest142882_
                     (cons (_expand-e142775_ _hd142881_) _r142883_))))
                 (_K142781_
                  (lambda (_rest142811_ _r142812_)
                    (let* ((_e142813142820_ _rest142811_)
                           (_E142815142824_
                            (lambda ()
                              (if _begin-form142774_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142774_
                                    (reverse _r142812_))
                                   (gx#stx-source _stx142772_))
                                  _r142812_)))
                           (_E142814142877_
                            (lambda ()
                              (if (gx#stx-pair? _e142813142820_)
                                  (let ((_e142816142828_
                                         (gx#syntax-e _e142813142820_)))
                                    (let ((_hd142817142831_
                                           (##car _e142816142828_))
                                          (_tl142818142833_
                                           (##cdr _e142816142828_)))
                                      (let* ((_hd142836_ _hd142817142831_)
                                             (_rest142838_ _tl142818142833_))
                                        (if '#t
                                            (let* ((_hd142840_
                                                    (gx#core-expand-head
                                                     _hd142836_))
                                                   (_e142841142848_ _hd142840_)
                                                   (_E142843142852_
                                                    (lambda ()
                                                      (_expand-expression142780_
                                                       _hd142840_
                                                       _rest142838_
                                                       _r142812_)))
                                                   (_E142842142873_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142841142848_)
                                                          (let ((_e142844142856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142841142848_)))
                    (let ((_hd142845142859_ (##car _e142844142856_))
                          (_tl142846142861_ (##cdr _e142844142856_)))
                      (let* ((_form142864_ _hd142845142859_)
                             (_body142866_ _tl142846142861_))
                        (if '#t
                            (let ((_bind142868_
                                   (if (gx#identifier? _form142864_)
                                       (gx#resolve-identifier__0 _form142864_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142868_)
                                  (let ((_$e142870_
                                         (##unchecked-structure-ref
                                          _bind142868_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e142870_)
                                        (_expand-splice142777_
                                         _hd142840_
                                         _body142866_
                                         _rest142838_
                                         _r142812_)
                                        (if (eq? '%#cond-expand _$e142870_)
                                            (_expand-cond-expand142778_
                                             _hd142840_
                                             _rest142838_
                                             _r142812_)
                                            (if (eq? '%#include _$e142870_)
                                                (_expand-include142779_
                                                 _hd142840_
                                                 _rest142838_
                                                 _r142812_)
                                                (_expand-special142773_
                                                 _hd142840_
                                                 _K142781_
                                                 _rest142838_
                                                 _r142812_)))))
                                  (_expand-expression142780_
                                   _hd142840_
                                   _rest142838_
                                   _r142812_)))
                            (_E142843142852_)))))
                  (_E142843142852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142842142873_))
                                            (_E142815142824_)))))
                                  (_E142815142824_)))))
                      (_E142814142877_)))))
          (let* ((_e142782142789_ _stx142772_)
                 (_E142784142793_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142782142789_)))
                 (_E142783142807_
                  (lambda ()
                    (if (gx#stx-pair? _e142782142789_)
                        (let ((_e142785142797_ (gx#syntax-e _e142782142789_)))
                          (let ((_hd142786142800_ (##car _e142785142797_))
                                (_tl142787142802_ (##cdr _e142785142797_)))
                            (let ((_body142805_ _tl142787142802_))
                              (if (gx#stx-list? _body142805_)
                                  (_K142781_ _body142805_ '())
                                  (_E142784142793_)))))
                        (_E142784142793_)))))
            (_E142783142807_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142948_ _expand-special142949_)
        (let* ((_begin-form142951_ '%#begin)
               (_expand-e142953_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142948_
           _expand-special142949_
           _begin-form142951_
           _expand-e142953_))))
    (define gx#core-expand-block__1
      (lambda (_stx142955_ _expand-special142956_ _begin-form142957_)
        (let ((_expand-e142959_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142955_
           _expand-special142956_
           _begin-form142957_
           _expand-e142959_))))
    (define gx#core-expand-block
      (lambda _g148082_
        (let ((_g148081_ (##length _g148082_)))
          (cond ((##fx= _g148081_ 2)
                 (apply (lambda (_stx142948_ _expand-special142949_)
                          (gx#core-expand-block__0
                           _stx142948_
                           _expand-special142949_))
                        _g148082_))
                ((##fx= _g148081_ 3)
                 (apply (lambda (_stx142955_
                                 _expand-special142956_
                                 _begin-form142957_)
                          (gx#core-expand-block__1
                           _stx142955_
                           _expand-special142956_
                           _begin-form142957_))
                        _g148082_))
                ((##fx= _g148081_ 4)
                 (apply (lambda (_stx142961_
                                 _expand-special142962_
                                 _begin-form142963_
                                 _expand-e142964_)
                          (gx#core-expand-block__%
                           _stx142961_
                           _expand-special142962_
                           _begin-form142963_
                           _expand-e142964_))
                        _g148082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g148082_))))))
    (define gx#core-expand-block*
      (lambda (_stx142720_ _expand-special142721_)
        (let* ((_g142722142733_
                (gx#core-expand-block__1
                 _stx142720_
                 _expand-special142721_
                 '#f))
               (_E142726142737_
                (lambda () (error '"No clause matching" _g142722142733_))))
          (let ((_K142731142768_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142720_)))
                (_K142728142754_ (lambda (_expr142752_) _expr142752_))
                (_K142727142743_
                 (lambda (_body142741_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142741_))
                    (gx#stx-source _stx142720_)))))
            (let ((_try-match142724142764_
                   (lambda ()
                     (if (##pair? _g142722142733_)
                         (let ((_tl142730142759_ (##cdr _g142722142733_))
                               (_hd142729142757_ (##car _g142722142733_)))
                           (if (##null? _tl142730142759_)
                               (let ((_expr142762_ _hd142729142757_))
                                 (_K142728142754_ _expr142762_))
                               (let ((_body142746_ _g142722142733_))
                                 (_K142727142743_ _body142746_))))
                         (let ((_body142746_ _g142722142733_))
                           (_K142727142743_ _body142746_))))))
              (if (##null? _g142722142733_)
                  (_K142731142768_)
                  (_try-match142724142764_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142548_)
        (letrec ((_satisfied?142550_
                  (lambda (_condition142648_)
                    (let* ((_e142649142664_ _condition142648_)
                           (_E142659142668_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142649142664_)))
                           (_E142652142687_
                            (lambda ()
                              (if (gx#stx-pair? _e142649142664_)
                                  (let ((_e142660142672_
                                         (gx#syntax-e _e142649142664_)))
                                    (let ((_hd142661142675_
                                           (##car _e142660142672_))
                                          (_tl142662142677_
                                           (##cdr _e142660142672_)))
                                      (let* ((_combinator142680_
                                              _hd142661142675_)
                                             (_body142682_ _tl142662142677_))
                                        (if (gx#stx-list? _body142682_)
                                            (let ((_$e142684_
                                                   (gx#stx-e
                                                    _combinator142680_)))
                                              (if (eq? 'not _$e142684_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142550_
                                                        _body142682_))
                                                  (if (eq? 'and _$e142684_)
                                                      (gx#stx-andmap
                                                       _satisfied?142550_
                                                       _body142682_)
                                                      (if (eq? 'or _$e142684_)
                                                          (gx#stx-ormap
                                                           _satisfied?142550_
                                                           _body142682_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142684_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142682_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142548_
                       _combinator142680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142659142668_)))))
                                  (_E142659142668_))))
                           (_E142651142710_
                            (lambda ()
                              (if (gx#stx-pair? _e142649142664_)
                                  (let ((_e142653142691_
                                         (gx#syntax-e _e142649142664_)))
                                    (let ((_hd142654142694_
                                           (##car _e142653142691_))
                                          (_tl142655142696_
                                           (##cdr _e142653142691_)))
                                      (if (and (gx#identifier?
                                                _hd142654142694_)
                                               (gx#core-identifier=?
                                                _hd142654142694_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142655142696_)
                                              (let ((_e142656142699_
                                                     (gx#syntax-e
                                                      _tl142655142696_)))
                                                (let ((_hd142657142702_
                                                       (##car _e142656142699_))
                                                      (_tl142658142704_
                                                       (##cdr _e142656142699_)))
                                                  (let ((_expr142707_
                                                         _hd142657142702_))
                                                    (if (gx#stx-null?
                                                         _tl142658142704_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142707_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142652142687_))
                (_E142652142687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142652142687_))
                                          (_E142652142687_))))
                                  (_E142652142687_))))
                           (_E142650142716_
                            (lambda ()
                              (let ((_id142714_ _e142649142664_))
                                (if (gx#identifier? _id142714_)
                                    (gx#core-bound-identifier?__%
                                     _id142714_
                                     gx#feature-binding?)
                                    (_E142651142710_))))))
                      (_E142650142716_))))
                 (_loop142551_
                  (lambda (_rest142581_)
                    (let* ((_e142582142590_ _rest142581_)
                           (_E142588142594_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142582142590_)))
                           (_E142584142598_
                            (lambda ()
                              (if (gx#stx-null? _e142582142590_)
                                  (if '#t '() (_E142588142594_))
                                  (_E142588142594_))))
                           (_E142583142644_
                            (lambda ()
                              (if (gx#stx-pair? _e142582142590_)
                                  (let ((_e142585142602_
                                         (gx#syntax-e _e142582142590_)))
                                    (let ((_hd142586142605_
                                           (##car _e142585142602_))
                                          (_tl142587142607_
                                           (##cdr _e142585142602_)))
                                      (let* ((_hd142610_ _hd142586142605_)
                                             (_rest142612_ _tl142587142607_))
                                        (if '#t
                                            (let* ((_e142613142620_ _hd142610_)
                                                   (_E142615142624_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142613142620_)))
                                                   (_E142614142640_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142613142620_)
                                                          (let ((_e142616142628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142613142620_)))
                    (let ((_hd142617142631_ (##car _e142616142628_))
                          (_tl142618142633_ (##cdr _e142616142628_)))
                      (let* ((_condition142636_ _hd142617142631_)
                             (_body142638_ _tl142618142633_))
                        (if '#t
                            (if (gx#stx-eq? _condition142636_ 'else)
                                (if (gx#stx-null? _rest142612_)
                                    _body142638_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142548_
                                     _hd142610_))
                                (if (_satisfied?142550_ _condition142636_)
                                    _body142638_
                                    (_loop142551_ _rest142612_)))
                            (_E142615142624_)))))
                  (_E142615142624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142614142640_))
                                            (_E142584142598_)))))
                                  (_E142584142598_)))))
                      (_E142583142644_)))))
          (let* ((_e142552142559_ _stx142548_)
                 (_E142554142563_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142552142559_)))
                 (_E142553142577_
                  (lambda ()
                    (if (gx#stx-pair? _e142552142559_)
                        (let ((_e142555142567_ (gx#syntax-e _e142552142559_)))
                          (let ((_hd142556142570_ (##car _e142555142567_))
                                (_tl142557142572_ (##cdr _e142555142567_)))
                            (let ((_clauses142575_ _tl142557142572_))
                              (if (gx#stx-list? _clauses142575_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142551_ _clauses142575_))
                                  (_E142554142563_)))))
                        (_E142554142563_)))))
            (_E142553142577_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142491_ _rpath142492_)
        (let* ((_e142493142503_ _stx142491_)
               (_E142495142507_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142493142503_)))
               (_E142494142534_
                (lambda ()
                  (if (gx#stx-pair? _e142493142503_)
                      (let ((_e142496142511_ (gx#syntax-e _e142493142503_)))
                        (let ((_hd142497142514_ (##car _e142496142511_))
                              (_tl142498142516_ (##cdr _e142496142511_)))
                          (if (gx#stx-pair? _tl142498142516_)
                              (let ((_e142499142519_
                                     (gx#syntax-e _tl142498142516_)))
                                (let ((_hd142500142522_
                                       (##car _e142499142519_))
                                      (_tl142501142524_
                                       (##cdr _e142499142519_)))
                                  (let ((_path142527_ _hd142500142522_))
                                    (if (gx#stx-null? _tl142501142524_)
                                        (if (gx#stx-string? _path142527_)
                                            (let ((_rpath142532_
                                                   (let ((_$e142529_
                                                          _rpath142492_))
                                                     (if _$e142529_
                                                         _$e142529_
                                                         (gx#core-resolve-path__%
                                                          _path142527_
                                                          (gx#stx-source
                                                           _stx142491_))))))
                                              (if (member _rpath142532_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142491_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142532_))
                                                    (gx#stx-source
                                                     _stx142491_)))))
                                            (_E142495142507_))
                                        (_E142495142507_)))))
                              (_E142495142507_))))
                      (_E142495142507_)))))
          (_E142494142534_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142541_)
        (let ((_rpath142543_ '#f))
          (gx#core-expand-include%__% _stx142541_ _rpath142543_))))
    (define gx#core-expand-include%
      (lambda _g148084_
        (let ((_g148083_ (##length _g148084_)))
          (cond ((##fx= _g148083_ 1)
                 (apply (lambda (_stx142541_)
                          (gx#core-expand-include%__0 _stx142541_))
                        _g148084_))
                ((##fx= _g148083_ 2)
                 (apply (lambda (_stx142545_ _rpath142546_)
                          (gx#core-expand-include%__%
                           _stx142545_
                           _rpath142546_))
                        _g148084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g148084_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142460_ _stx142461_ _method142462_)
        (if (procedure? _K142460_)
            (let ((_$e142464_ (gx#stx-source _stx142461_)))
              (if _$e142464_
                  ((lambda (_g142466142468_)
                     (gx#stx-wrap-source
                      (_K142460_ _stx142461_)
                      _g142466142468_))
                   _$e142464_)
                  (_K142460_ _stx142461_)))
            (let ((_$e142471_ (bound-method-ref _K142460_ _method142462_)))
              (if _$e142471_
                  ((lambda (_g142473142475_)
                     (gx#core-apply-expander__%
                      _g142473142475_
                      _stx142461_
                      _method142462_))
                   _$e142471_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142461_
                   _method142462_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142481_ _stx142482_)
        (let ((_method142484_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142481_ _stx142482_ _method142484_))))
    (define gx#core-apply-expander
      (lambda _g148086_
        (let ((_g148085_ (##length _g148086_)))
          (cond ((##fx= _g148085_ 2)
                 (apply (lambda (_K142481_ _stx142482_)
                          (gx#core-apply-expander__0 _K142481_ _stx142482_))
                        _g148086_))
                ((##fx= _g148085_ 3)
                 (apply (lambda (_K142486_ _stx142487_ _method142488_)
                          (gx#core-apply-expander__%
                           _K142486_
                           _stx142487_
                           _method142488_))
                        _g148086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g148086_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142456_ _stx142457_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142457_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142309_ _stx142310_)
        (let* ((_self142311142317_ _self142309_)
               (_E142313142321_
                (lambda () (error '"No clause matching" _self142311142317_)))
               (_K142314142326_
                (lambda (_K142324_)
                  (gx#core-apply-expander__0 _K142324_ _stx142310_))))
          (if (##structure-instance-of? _self142311142317_ 'gx#core-macro::t)
              (let* ((_e142315142329_
                      (##unchecked-structure-ref
                       _self142311142317_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142332_ _e142315142329_))
                (_K142314142326_ _K142332_))
              (_E142313142321_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self142162_ _stx142163_)
        (if (gx#sealed-syntax? _stx142163_)
            _stx142163_
            (let* ((_self142164142170_ _self142162_)
                   (_E142166142174_
                    (lambda ()
                      (error '"No clause matching" _self142164142170_)))
                   (_K142167142179_
                    (lambda (_K142177_)
                      (gx#core-apply-expander__0 _K142177_ _stx142163_))))
              (if (##structure-instance-of?
                   _self142164142170_
                   'gx#core-expander::t)
                  (let* ((_e142168142182_
                          (##unchecked-structure-ref
                           _self142164142170_
                           '1
                           gx#expander::t
                           '#f))
                         (_K142185_ _e142168142182_))
                    (_K142167142179_ _K142185_))
                  (_E142166142174_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self142024_ _stx142025_ _top?142026_)
        (if (_top?142026_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self142024_ _stx142025_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx142025_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self142031_ _stx142032_)
        (let ((_top?142034_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self142031_
           _stx142032_
           _top?142034_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g148088_
        (let ((_g148087_ (##length _g148088_)))
          (cond ((##fx= _g148087_ 2)
                 (apply (lambda (_self142031_ _stx142032_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self142031_
                           _stx142032_))
                        _g148088_))
                ((##fx= _g148087_ 3)
                 (apply (lambda (_self142036_ _stx142037_ _top?142038_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self142036_
                           _stx142037_
                           _top?142038_))
                        _g148088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g148088_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141898_ _stx141899_)
        (gx#top-special-form::apply-macro-expander__%
         _self141898_
         _stx141899_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141723_ _stx141724_)
        (let* ((_self141725141731_ _self141723_)
               (_E141727141735_
                (lambda () (error '"No clause matching" _self141725141731_)))
               (_K141728141768_
                (lambda (_id141738_)
                  (let* ((_e141739141746_ _stx141724_)
                         (_E141741141750_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141739141746_)))
                         (_E141740141764_
                          (lambda ()
                            (if (gx#stx-pair? _e141739141746_)
                                (let ((_e141742141754_
                                       (gx#syntax-e _e141739141746_)))
                                  (let ((_hd141743141757_
                                         (##car _e141742141754_))
                                        (_tl141744141759_
                                         (##cdr _e141742141754_)))
                                    (let ((_body141762_ _tl141744141759_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141738_
                                           _body141762_)
                                          (_E141741141750_)))))
                                (_E141741141750_)))))
                    (_E141740141764_)))))
          (if (##structure-instance-of?
               _self141725141731_
               'gx#rename-macro-expander::t)
              (let* ((_e141729141771_
                      (##unchecked-structure-ref
                       _self141725141731_
                       '1
                       gx#expander::t
                       '#f))
                     (_id141774_ _e141729141771_))
                (_K141728141768_ _id141774_))
              (_E141727141735_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141549_ _stx141550_ _method141551_)
        (let* ((_self141552141560_ _self141549_)
               (_E141554141564_
                (lambda () (error '"No clause matching" _self141552141560_)))
               (_K141555141571_
                (lambda (_phi141567_ _ctx141568_ _K141569_)
                  (gx#core-apply-user-macro
                   _K141569_
                   _stx141550_
                   _ctx141568_
                   _phi141567_
                   _method141551_))))
          (if (##structure-instance-of?
               _self141552141560_
               'gx#macro-expander::t)
              (let* ((_e141556141574_
                      (##unchecked-structure-ref
                       _self141552141560_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141577_ _e141556141574_)
                     (_e141557141579_
                      (##unchecked-structure-ref
                       _self141552141560_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141582_ _e141557141579_)
                     (_e141558141584_
                      (##unchecked-structure-ref
                       _self141552141560_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141587_ _e141558141584_))
                (_K141555141571_ _phi141587_ _ctx141582_ _K141577_))
              (_E141554141564_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141592_ _stx141593_)
        (let ((_method141595_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141592_
           _stx141593_
           _method141595_))))
    (define gx#core-apply-user-expander
      (lambda _g148090_
        (let ((_g148089_ (##length _g148090_)))
          (cond ((##fx= _g148089_ 2)
                 (apply (lambda (_self141592_ _stx141593_)
                          (gx#core-apply-user-expander__0
                           _self141592_
                           _stx141593_))
                        _g148090_))
                ((##fx= _g148089_ 3)
                 (apply (lambda (_self141597_ _stx141598_ _method141599_)
                          (gx#core-apply-user-expander__%
                           _self141597_
                           _stx141598_
                           _method141599_))
                        _g148090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g148090_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141539_ _stx141540_ _ctx141541_ _phi141542_ _method141543_)
        (let ((_mark141545_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141541_
                _phi141542_
                _stx141540_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141539_
               (gx#stx-apply-mark _stx141540_ _mark141545_)
               _method141543_)
              _mark141545_))
           gx#current-expander-marks
           (cons _mark141545_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141391_ _phi141392_ _ctx141393_)
        (let _lp141395_ ((_bind141397_
                          (gx#core-resolve-identifier__%
                           _stx141391_
                           _phi141392_
                           _ctx141393_)))
          (if (##structure-direct-instance-of?
               _bind141397_
               'gx#import-binding::t)
              (_lp141395_
               (##unchecked-structure-ref
                _bind141397_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141397_
                   'gx#alias-binding::t)
                  (_lp141395_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141397_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141392_
                    _ctx141393_))
                  _bind141397_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141402_)
        (let* ((_phi141404_ (gx#current-expander-phi))
               (_ctx141406_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141402_ _phi141404_ _ctx141406_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141408_ _phi141409_)
        (let ((_ctx141411_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141408_ _phi141409_ _ctx141411_))))
    (define gx#resolve-identifier
      (lambda _g148092_
        (let ((_g148091_ (##length _g148092_)))
          (cond ((##fx= _g148091_ 1)
                 (apply (lambda (_stx141402_)
                          (gx#resolve-identifier__0 _stx141402_))
                        _g148092_))
                ((##fx= _g148091_ 2)
                 (apply (lambda (_stx141408_ _phi141409_)
                          (gx#resolve-identifier__1 _stx141408_ _phi141409_))
                        _g148092_))
                ((##fx= _g148091_ 3)
                 (apply (lambda (_stx141413_ _phi141414_ _ctx141415_)
                          (gx#resolve-identifier__%
                           _stx141413_
                           _phi141414_
                           _ctx141415_))
                        _g148092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g148092_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141349_ _val141350_ _rebind?141351_ _phi141352_ _ctx141353_)
        (let ((_rebind?141355_
               (if (not _rebind?141351_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141351_) _rebind?141351_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141349_)
           _val141350_
           _rebind?141355_
           _phi141352_
           _ctx141353_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141360_ _val141361_)
        (let* ((_rebind?141363_ '#f)
               (_phi141365_ (gx#current-expander-phi))
               (_ctx141367_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141360_
           _val141361_
           _rebind?141363_
           _phi141365_
           _ctx141367_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141369_ _val141370_ _rebind?141371_)
        (let* ((_phi141373_ (gx#current-expander-phi))
               (_ctx141375_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141369_
           _val141370_
           _rebind?141371_
           _phi141373_
           _ctx141375_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141377_ _val141378_ _rebind?141379_ _phi141380_)
        (let ((_ctx141382_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141377_
           _val141378_
           _rebind?141379_
           _phi141380_
           _ctx141382_))))
    (define gx#bind-identifier!
      (lambda _g148094_
        (let ((_g148093_ (##length _g148094_)))
          (cond ((##fx= _g148093_ 2)
                 (apply (lambda (_stx141360_ _val141361_)
                          (gx#bind-identifier!__0 _stx141360_ _val141361_))
                        _g148094_))
                ((##fx= _g148093_ 3)
                 (apply (lambda (_stx141369_ _val141370_ _rebind?141371_)
                          (gx#bind-identifier!__1
                           _stx141369_
                           _val141370_
                           _rebind?141371_))
                        _g148094_))
                ((##fx= _g148093_ 4)
                 (apply (lambda (_stx141377_
                                 _val141378_
                                 _rebind?141379_
                                 _phi141380_)
                          (gx#bind-identifier!__2
                           _stx141377_
                           _val141378_
                           _rebind?141379_
                           _phi141380_))
                        _g148094_))
                ((##fx= _g148093_ 5)
                 (apply (lambda (_stx141384_
                                 _val141385_
                                 _rebind?141386_
                                 _phi141387_
                                 _ctx141388_)
                          (gx#bind-identifier!__%
                           _stx141384_
                           _val141385_
                           _rebind?141386_
                           _phi141387_
                           _ctx141388_))
                        _g148094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g148094_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141321_ _phi141322_ _ctx141323_)
        (let _lp141325_ ((_e141327_ _stx141321_)
                         (_marks141328_ (gx#current-expander-marks)))
          (if (symbol? _e141327_)
              (gx#core-resolve-binding
               _e141327_
               _phi141322_
               _phi141322_
               _ctx141323_
               (reverse _marks141328_))
              (if (gx#identifier-quote? _e141327_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e141327_ '1 gx#AST::t '#f)
                   _phi141322_
                   '0
                   (##unchecked-structure-ref
                    _e141327_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141327_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141327_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e141327_ '1 gx#AST::t '#f)
                       _phi141322_
                       _phi141322_
                       _ctx141323_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141327_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141328_))
                      (if (##structure-direct-instance-of?
                           _e141327_
                           'gx#syntax-wrap::t)
                          (_lp141325_
                           (##unchecked-structure-ref
                            _e141327_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141327_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141328_))
                          (if (##structure-instance-of?
                               _e141327_
                               'gerbil#AST::t)
                              (_lp141325_
                               (##unchecked-structure-ref
                                _e141327_
                                '1
                                gx#AST::t
                                '#f)
                               _marks141328_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141321_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141333_)
        (let* ((_phi141335_ (gx#current-expander-phi))
               (_ctx141337_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141333_
           _phi141335_
           _ctx141337_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141339_ _phi141340_)
        (let ((_ctx141342_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141339_
           _phi141340_
           _ctx141342_))))
    (define gx#core-resolve-identifier
      (lambda _g148096_
        (let ((_g148095_ (##length _g148096_)))
          (cond ((##fx= _g148095_ 1)
                 (apply (lambda (_stx141333_)
                          (gx#core-resolve-identifier__0 _stx141333_))
                        _g148096_))
                ((##fx= _g148095_ 2)
                 (apply (lambda (_stx141339_ _phi141340_)
                          (gx#core-resolve-identifier__1
                           _stx141339_
                           _phi141340_))
                        _g148096_))
                ((##fx= _g148095_ 3)
                 (apply (lambda (_stx141344_ _phi141345_ _ctx141346_)
                          (gx#core-resolve-identifier__%
                           _stx141344_
                           _phi141345_
                           _ctx141346_))
                        _g148096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g148096_))))))
    (define gx#core-resolve-binding
      (lambda (_id141234_
               _phi141235_
               _src-phi141236_
               _ctx141237_
               _marks141238_)
        (letrec ((_resolve141240_
                  (lambda (_ctx141308_ _src-phi141309_ _key141310_)
                    (let _lp141312_ ((_ctx141314_
                                      (gx#core-context-shift
                                       _ctx141308_
                                       _phi141235_))
                                     (_dphi141315_
                                      (fx- _phi141235_ _src-phi141309_)))
                      (let ((_$e141317_
                             (gx#core-context-resolve
                              _ctx141314_
                              _key141310_)))
                        (if _$e141317_
                            (values _$e141317_)
                            (if (fxzero? _dphi141315_)
                                '#f
                                (if (fxpositive? _dphi141315_)
                                    (_lp141312_
                                     (gx#core-context-shift _ctx141314_ '-1)
                                     (fx- _dphi141315_ '1))
                                    (_lp141312_
                                     (gx#core-context-shift _ctx141314_ '1)
                                     (fx+ _dphi141315_ '1))))))))))
          (let _lp141242_ ((_ctx141244_ _ctx141237_)
                           (_src-phi141245_ _src-phi141236_)
                           (_rest141246_ _marks141238_))
            (let* ((_rest141247141255_ _rest141246_)
                   (_else141249141263_
                    (lambda ()
                      (_resolve141240_
                       _ctx141244_
                       _src-phi141245_
                       _id141234_)))
                   (_K141251141296_
                    (lambda (_rest141266_ _hd141267_)
                      (let* ((_hd141268141274_ _hd141267_)
                             (_E141270141278_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd141268141274_)))
                             (_K141271141288_
                              (lambda (_subst141281_)
                                (let ((_$e141285_
                                       (let ((_key141283_
                                              (if _subst141281_
                                                  (table-ref
                                                   _subst141281_
                                                   _id141234_
                                                   '#f)
                                                  '#f)))
                                         (if _key141283_
                                             (_resolve141240_
                                              _ctx141244_
                                              _src-phi141245_
                                              _key141283_)
                                             '#f))))
                                  (if _$e141285_
                                      _$e141285_
                                      (_lp141242_
                                       (##unchecked-structure-ref
                                        _hd141267_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd141267_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest141266_))))))
                        (if (##structure-instance-of?
                             _hd141268141274_
                             'gx#expander-mark::t)
                            (let* ((_e141272141291_
                                    (##unchecked-structure-ref
                                     _hd141268141274_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst141294_ _e141272141291_))
                              (_K141271141288_ _subst141294_))
                            (_E141270141278_))))))
              (if (##pair? _rest141247141255_)
                  (let ((_hd141252141299_ (##car _rest141247141255_))
                        (_tl141253141301_ (##cdr _rest141247141255_)))
                    (let* ((_hd141304_ _hd141252141299_)
                           (_rest141306_ _tl141253141301_))
                      (_K141251141296_ _rest141306_ _hd141304_)))
                  (_else141249141263_)))))))
    (define gx#core-bind!__%
      (lambda (_key141110_ _val141111_ _rebind?141112_ _phi141113_ _ctx141114_)
        (letrec ((_update-binding141116_
                  (lambda (_xval141187_)
                    (if (or (_rebind?141112_
                             _ctx141114_
                             _xval141187_
                             _val141111_)
                            (and (##structure-direct-instance-of?
                                  _xval141187_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval141187_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val141111_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val141111_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval141187_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val141111_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val141111_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval141187_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val141111_
                        (if (and (##structure-direct-instance-of?
                                  _val141111_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val141111_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval141187_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val141111_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval141187_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval141187_
                            (if (and (##structure-direct-instance-of?
                                      _val141111_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval141187_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key141110_
                                 (cons (##unchecked-structure-ref
                                        _val141111_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val141111_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval141187_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval141187_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval141187_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval141187_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key141110_
                                 _val141111_
                                 _xval141187_))))))
                 (_gensubst141117_
                  (lambda (_subst141182_ _id141183_)
                    (let ((_eid141185_
                           (gensym (if (uninterned-symbol? _id141183_)
                                       '%
                                       _id141183_))))
                      (table-set! _subst141182_ _id141183_ _eid141185_)
                      _eid141185_)))
                 (_subst!141118_
                  (lambda (_key141120_)
                    (let* ((_key141121141129_ _key141120_)
                           (_else141123141137_ (lambda () _key141120_))
                           (_K141125141170_
                            (lambda (_mark141140_ _id141141_)
                              (let* ((_mark141142141148_ _mark141140_)
                                     (_E141144141152_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark141142141148_)))
                                     (_K141145141162_
                                      (lambda (_subst141155_)
                                        (if (not _subst141155_)
                                            (let ((_subst141157_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark141140_
                                               _subst141157_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst141117_
                                               _subst141157_
                                               _id141141_))
                                            (let ((_$e141159_
                                                   (table-ref
                                                    _subst141155_
                                                    _id141141_
                                                    '#f)))
                                              (if _$e141159_
                                                  (values _$e141159_)
                                                  (_gensubst141117_
                                                   _subst141155_
                                                   _id141141_)))))))
                                (if (##structure-instance-of?
                                     _mark141142141148_
                                     'gx#expander-mark::t)
                                    (let* ((_e141146141165_
                                            (##unchecked-structure-ref
                                             _mark141142141148_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst141168_ _e141146141165_))
                                      (_K141145141162_ _subst141168_))
                                    (_E141144141152_))))))
                      (if (##pair? _key141121141129_)
                          (let ((_hd141126141173_ (##car _key141121141129_))
                                (_tl141127141175_ (##cdr _key141121141129_)))
                            (let* ((_id141178_ _hd141126141173_)
                                   (_mark141180_ _tl141127141175_))
                              (_K141125141170_ _mark141180_ _id141178_)))
                          (_else141123141137_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx141114_ _phi141113_)
           (_subst!141118_ _key141110_)
           _val141111_
           _update-binding141116_))))
    (define gx#core-bind!__0
      (lambda (_key141204_ _val141205_)
        (let* ((_rebind?141207_ false)
               (_phi141209_ (gx#current-expander-phi))
               (_ctx141211_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141204_
           _val141205_
           _rebind?141207_
           _phi141209_
           _ctx141211_))))
    (define gx#core-bind!__1
      (lambda (_key141213_ _val141214_ _rebind?141215_)
        (let* ((_phi141217_ (gx#current-expander-phi))
               (_ctx141219_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141213_
           _val141214_
           _rebind?141215_
           _phi141217_
           _ctx141219_))))
    (define gx#core-bind!__2
      (lambda (_key141221_ _val141222_ _rebind?141223_ _phi141224_)
        (let ((_ctx141226_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141221_
           _val141222_
           _rebind?141223_
           _phi141224_
           _ctx141226_))))
    (define gx#core-bind!
      (lambda _g148098_
        (let ((_g148097_ (##length _g148098_)))
          (cond ((##fx= _g148097_ 2)
                 (apply (lambda (_key141204_ _val141205_)
                          (gx#core-bind!__0 _key141204_ _val141205_))
                        _g148098_))
                ((##fx= _g148097_ 3)
                 (apply (lambda (_key141213_ _val141214_ _rebind?141215_)
                          (gx#core-bind!__1
                           _key141213_
                           _val141214_
                           _rebind?141215_))
                        _g148098_))
                ((##fx= _g148097_ 4)
                 (apply (lambda (_key141221_
                                 _val141222_
                                 _rebind?141223_
                                 _phi141224_)
                          (gx#core-bind!__2
                           _key141221_
                           _val141222_
                           _rebind?141223_
                           _phi141224_))
                        _g148098_))
                ((##fx= _g148097_ 5)
                 (apply (lambda (_key141228_
                                 _val141229_
                                 _rebind?141230_
                                 _phi141231_
                                 _ctx141232_)
                          (gx#core-bind!__%
                           _key141228_
                           _val141229_
                           _rebind?141230_
                           _phi141231_
                           _ctx141232_))
                        _g148098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g148098_))))))
    (define gx#core-identifier-key
      (lambda (_stx141044_)
        (if (symbol? _stx141044_)
            (let* ((_g141045141053_ (gx#current-expander-marks))
                   (_else141047141061_ (lambda () _stx141044_))
                   (_K141049141066_
                    (lambda (_hd141064_) (cons _stx141044_ _hd141064_))))
              (if (##pair? _g141045141053_)
                  (let* ((_hd141050141069_ (##car _g141045141053_))
                         (_hd141072_ _hd141050141069_))
                    (_K141049141066_ _hd141072_))
                  (_else141047141061_)))
            (if (gx#identifier? _stx141044_)
                (let* ((_id141074_ (gx#syntax-local-unwrap _stx141044_))
                       (_eid141076_ (gx#stx-e _id141074_))
                       (_marks141078_ (gx#stx-identifier-marks* _id141074_)))
                  (let* ((_marks141080141088_ _marks141078_)
                         (_else141082141096_ (lambda () _eid141076_))
                         (_K141084141101_
                          (lambda (_hd141099_) (cons _eid141076_ _hd141099_))))
                    (if (##pair? _marks141080141088_)
                        (let* ((_hd141085141104_ (##car _marks141080141088_))
                               (_hd141107_ _hd141085141104_))
                          (_K141084141101_ _hd141107_))
                        (_else141082141096_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx141044_)))))
    (define gx#core-context-shift
      (lambda (_ctx140989_ _phi140990_)
        (letrec ((_make-phi140992_
                  (lambda (_super141042_)
                    (let ((__obj148069
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj148069
                       (gensym 'phi)
                       _super141042_)
                      __obj148069)))
                 (_make-phi/up140993_
                  (lambda (_ctx141037_ _super141038_)
                    (let ((_ctx+1141040_ (_make-phi140992_ _super141038_)))
                      (##unchecked-structure-set!
                       _ctx141037_
                       _ctx+1141040_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1141040_
                       _ctx141037_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1141040_)))
                 (_make-phi/down140994_
                  (lambda (_ctx141032_ _super141033_)
                    (let ((_ctx-1141035_ (_make-phi140992_ _super141033_)))
                      (##unchecked-structure-set!
                       _ctx-1141035_
                       _ctx141032_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx141032_
                       _ctx-1141035_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1141035_)))
                 (_shift140995_
                  (lambda (_ctx141016_
                           _delta141017_
                           _make-delta-context141018_
                           _phi141019_
                           _K141020_)
                    (let ((_$e141022_
                           (##unchecked-structure-ref
                            _ctx141016_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e141022_
                          ((lambda (_super141025_)
                             (let* ((_super141027_
                                     (_K141020_ _super141025_ _delta141017_))
                                    (_ctx+d141029_
                                     (_make-delta-context141018_
                                      _ctx141016_
                                      _super141027_)))
                               (_K141020_
                                _ctx+d141029_
                                (fx- _phi141019_ _delta141017_))))
                           _$e141022_)
                          (error '"Bad context" _ctx141016_))))))
          (let _K140997_ ((_ctx140999_ _ctx140989_) (_phi141000_ _phi140990_))
            (if (fxzero? _phi141000_)
                _ctx140999_
                (if (fx> (##vector-length _ctx140999_) '3)
                    (if (fxpositive? _phi141000_)
                        (let ((_$e141002_
                               (##unchecked-structure-ref
                                _ctx140999_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e141002_
                              ((lambda (_g141004141006_)
                                 (_K140997_
                                  _g141004141006_
                                  (fx- _phi141000_ '1)))
                               _$e141002_)
                              (_shift140995_
                               _ctx140999_
                               '1
                               _make-phi/up140993_
                               _phi141000_
                               _K140997_)))
                        (let ((_$e141009_
                               (##unchecked-structure-ref
                                _ctx140999_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e141009_
                              ((lambda (_g141011141013_)
                                 (_K140997_
                                  _g141011141013_
                                  (fx+ _phi141000_ '1)))
                               _$e141009_)
                              (_shift140995_
                               _ctx140999_
                               '-1
                               _make-phi/down140994_
                               _phi141000_
                               _K140997_))))
                    _ctx140999_))))))
    (define gx#core-context-get
      (lambda (_ctx140986_ _key140987_)
        (table-ref
         (##unchecked-structure-ref _ctx140986_ '2 gx#expander-context::t '#f)
         _key140987_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140982_ _key140983_ _val140984_)
        (table-set!
         (##unchecked-structure-ref _ctx140982_ '2 gx#expander-context::t '#f)
         _key140983_
         _val140984_)))
    (define gx#core-context-resolve
      (lambda (_ctx140969_ _key140970_)
        (let _lp140972_ ((_ctx140974_ _ctx140969_))
          (let ((_$e140976_ (gx#core-context-get _ctx140974_ _key140970_)))
            (if _$e140976_
                (values _$e140976_)
                (let ((_$e140979_
                       (if (fx> (##vector-length _ctx140974_) '3)
                           (##unchecked-structure-ref
                            _ctx140974_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e140979_ (_lp140972_ _$e140979_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140959_ _key140960_ _val140961_ _rebind140962_)
        (let ((_$e140964_ (gx#core-context-get _ctx140959_ _key140960_)))
          (if _$e140964_
              ((lambda (_xval140967_)
                 (gx#core-context-put!
                  _ctx140959_
                  _key140960_
                  (_rebind140962_ _xval140967_)))
               _$e140964_)
              (gx#core-context-put! _ctx140959_ _key140960_ _val140961_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140937_ _stop?140938_)
        (let _lp140940_ ((_ctx140942_ _ctx140937_))
          (if (_stop?140938_ _ctx140942_)
              _ctx140942_
              (if (##structure-instance-of? _ctx140942_ 'gx#context-phi::t)
                  (_lp140940_
                   (##unchecked-structure-ref
                    _ctx140942_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140948_ (gx#current-expander-context))
               (_stop?140950_ gx#top-context?))
          (gx#core-context-top__% _ctx140948_ _stop?140950_))))
    (define gx#core-context-top__1
      (lambda (_ctx140952_)
        (let ((_stop?140954_ gx#top-context?))
          (gx#core-context-top__% _ctx140952_ _stop?140954_))))
    (define gx#core-context-top
      (lambda _g148100_
        (let ((_g148099_ (##length _g148100_)))
          (cond ((##fx= _g148099_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g148100_))
                ((##fx= _g148099_ 1)
                 (apply (lambda (_ctx140952_)
                          (gx#core-context-top__1 _ctx140952_))
                        _g148100_))
                ((##fx= _g148099_ 2)
                 (apply (lambda (_ctx140956_ _stop?140957_)
                          (gx#core-context-top__% _ctx140956_ _stop?140957_))
                        _g148100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g148100_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140922_)
        (let _lp140924_ ((_ctx140926_ _ctx140922_))
          (if (##structure-instance-of? _ctx140926_ 'gx#context-phi::t)
              (_lp140924_
               (##unchecked-structure-ref
                _ctx140926_
                '3
                gx#phi-context::t
                '#f))
              _ctx140926_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140932_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140932_))))
    (define gx#core-context-root
      (lambda _g148102_
        (let ((_g148101_ (##length _g148102_)))
          (cond ((##fx= _g148101_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g148102_))
                ((##fx= _g148101_ 1)
                 (apply (lambda (_ctx140934_)
                          (gx#core-context-root__% _ctx140934_))
                        _g148102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g148102_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140903_ . __140900140904_)
        (let ((_$e140907_ (gx#current-expander-allow-rebind?)))
          (if _$e140907_
              _$e140907_
              (if (##structure-instance-of? _ctx140903_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx140903_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx140903_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140914_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140914_))))
    (define gx#core-context-rebind?
      (lambda _g148104_
        (let ((_g148103_ (##length _g148104_)))
          (cond ((##fx= _g148103_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g148104_))
                ((##fx= _g148103_ 1)
                 (apply (lambda (_ctx140916_)
                          (gx#core-context-rebind?__% _ctx140916_))
                        _g148104_))
                ((##fx>= _g148103_ 1)
                 (apply gx#core-context-rebind?__% _g148104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g148104_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140886_)
        (let ((_$e140888_ (gx#core-context-top__1 _ctx140886_)))
          (if _$e140888_
              ((lambda (_ctx140891_)
                 (if (##structure-instance-of?
                      _ctx140891_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx140891_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e140888_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140897_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140897_))))
    (define gx#core-context-namespace
      (lambda _g148106_
        (let ((_g148105_ (##length _g148106_)))
          (cond ((##fx= _g148105_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g148106_))
                ((##fx= _g148105_ 1)
                 (apply (lambda (_ctx140899_)
                          (gx#core-context-namespace__% _ctx140899_))
                        _g148106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g148106_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140872_ _is?140873_)
        (if (##structure-direct-instance-of?
             _bind140872_
             'gx#syntax-binding::t)
            (_is?140873_
             (##unchecked-structure-ref
              _bind140872_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140878_)
        (let ((_is?140880_ gx#expander?))
          (gx#expander-binding?__% _bind140878_ _is?140880_))))
    (define gx#expander-binding?
      (lambda _g148108_
        (let ((_g148107_ (##length _g148108_)))
          (cond ((##fx= _g148107_ 1)
                 (apply (lambda (_bind140878_)
                          (gx#expander-binding?__0 _bind140878_))
                        _g148108_))
                ((##fx= _g148107_ 2)
                 (apply (lambda (_bind140882_ _is?140883_)
                          (gx#expander-binding?__% _bind140882_ _is?140883_))
                        _g148108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g148108_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140869_)
        (gx#expander-binding?__% _bind140869_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140867_)
        (gx#expander-binding?__% _bind140867_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140861_)
        (letrec ((_direct-special-form?140863_
                  (lambda (_obj140865_)
                    (##structure-direct-instance-of?
                     _obj140865_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140861_
           _direct-special-form?140863_))))
    (define gx#special-form-binding?
      (lambda (_bind140859_)
        (gx#expander-binding?__% _bind140859_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140850_)
        (letrec ((_feature?140852_
                  (lambda (_e140854_)
                    (let ((_$e140856_
                           (##structure-instance-of?
                            _e140854_
                            'gx#feature-expander::t)))
                      (if _$e140856_
                          _$e140856_
                          (##structure-instance-of?
                           _e140854_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind140850_ _feature?140852_))))
    (define gx#private-feature-binding?
      (lambda (_bind140848_)
        (gx#expander-binding?__% _bind140848_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140835_ _bound?140836_)
        (if (gx#identifier? _id140835_)
            (_bound?140836_ (gx#resolve-identifier__0 _id140835_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140841_)
        (let ((_bound?140843_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140841_ _bound?140843_))))
    (define gx#core-bound-identifier?
      (lambda _g148110_
        (let ((_g148109_ (##length _g148110_)))
          (cond ((##fx= _g148109_ 1)
                 (apply (lambda (_id140841_)
                          (gx#core-bound-identifier?__0 _id140841_))
                        _g148110_))
                ((##fx= _g148109_ 2)
                 (apply (lambda (_id140845_ _bound?140846_)
                          (gx#core-bound-identifier?__%
                           _id140845_
                           _bound?140846_))
                        _g148110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g148110_))))))
    (define gx#core-identifier=?
      (lambda (_x140825_ _y140826_)
        (letrec ((_y=?140828_
                  (lambda (_xid140832_)
                    ((if (list? _y140826_) memq eq?) _xid140832_ _y140826_))))
          (let ((_bind140830_ (gx#resolve-identifier__0 _x140825_)))
            (if (##structure-instance-of? _bind140830_ 'gx#binding::t)
                (_y=?140828_
                 (##unchecked-structure-ref _bind140830_ '1 gx#binding::t '#f))
                (_y=?140828_ (gx#stx-e _x140825_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140823_)
        (if (interned-symbol? _e140823_)
            (string-index (symbol->string _e140823_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140778_ _src140779_ _ctx140780_ _marks140781_)
        (if (##structure? _stx140778_)
            (let ((_$e140783_ (gx#sealed-syntax-unwrap _stx140778_)))
              (if _$e140783_
                  (values _$e140783_)
                  (if (gx#identifier? _stx140778_)
                      (let ((_id140786_
                             (gx#stx-unwrap__% _stx140778_ _marks140781_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id140786_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e140788_
                                (##unchecked-structure-ref
                                 _id140786_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e140788_ _$e140788_ _src140779_))
                         _ctx140780_
                         (##unchecked-structure-ref
                          _id140786_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx140778_)
                       (let ((_$e140791_ (gx#stx-source _stx140778_)))
                         (if _$e140791_ _$e140791_ _src140779_))
                       _ctx140780_
                       (reverse _marks140781_)))))
            (##structure
             gx#syntax-quote::t
             _stx140778_
             _src140779_
             _ctx140780_
             (reverse _marks140781_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140797_)
        (let* ((_src140799_ '#f)
               (_ctx140801_ (gx#current-expander-context))
               (_marks140803_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140797_
           _src140799_
           _ctx140801_
           _marks140803_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140805_ _src140806_)
        (let* ((_ctx140808_ (gx#current-expander-context))
               (_marks140810_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140805_
           _src140806_
           _ctx140808_
           _marks140810_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140812_ _src140813_ _ctx140814_)
        (let ((_marks140816_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140812_
           _src140813_
           _ctx140814_
           _marks140816_))))
    (define gx#core-quote-syntax
      (lambda _g148112_
        (let ((_g148111_ (##length _g148112_)))
          (cond ((##fx= _g148111_ 1)
                 (apply (lambda (_stx140797_)
                          (gx#core-quote-syntax__0 _stx140797_))
                        _g148112_))
                ((##fx= _g148111_ 2)
                 (apply (lambda (_stx140805_ _src140806_)
                          (gx#core-quote-syntax__1 _stx140805_ _src140806_))
                        _g148112_))
                ((##fx= _g148111_ 3)
                 (apply (lambda (_stx140812_ _src140813_ _ctx140814_)
                          (gx#core-quote-syntax__2
                           _stx140812_
                           _src140813_
                           _ctx140814_))
                        _g148112_))
                ((##fx= _g148111_ 4)
                 (apply (lambda (_stx140818_
                                 _src140819_
                                 _ctx140820_
                                 _marks140821_)
                          (gx#core-quote-syntax__%
                           _stx140818_
                           _src140819_
                           _ctx140820_
                           _marks140821_))
                        _g148112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g148112_))))))
    (define gx#core-cons
      (lambda (_hd140774_ _tl140775_)
        (cons (gx#core-quote-syntax__0 _hd140774_) _tl140775_)))
    (define gx#core-list
      (lambda (_hd140771_ . _rest140772_)
        (cons (gx#core-quote-syntax__0 _hd140771_) _rest140772_)))
    (define gx#core-cons*
      (lambda (_hd140768_ . _rest140769_)
        (apply cons* (gx#core-quote-syntax__0 _hd140768_) _rest140769_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140742_ _rel140743_)
        (let ((_path140755_ (gx#stx-e _stx-path140742_))
              (_reldir140756_
               (let _lp140745_ ((_relsrc140747_
                                 (let ((_$e140752_
                                        (gx#stx-source _stx-path140742_)))
                                   (if _$e140752_ _$e140752_ _rel140743_))))
                 (if (##structure-instance-of? _relsrc140747_ 'gerbil#AST::t)
                     (_lp140745_
                      (let ((_$e140749_ (gx#stx-source _relsrc140747_)))
                        (if _$e140749_ _$e140749_ (gx#stx-e _relsrc140747_))))
                     (if (source-location-path? _relsrc140747_)
                         (path-directory (source-location-path _relsrc140747_))
                         (if (string? _relsrc140747_)
                             (path-directory _relsrc140747_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140755_ (path-normalize _reldir140756_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140761_)
        (let ((_rel140763_ '#f))
          (gx#core-resolve-path__% _stx-path140761_ _rel140763_))))
    (define gx#core-resolve-path
      (lambda _g148114_
        (let ((_g148113_ (##length _g148114_)))
          (cond ((##fx= _g148113_ 1)
                 (apply (lambda (_stx-path140761_)
                          (gx#core-resolve-path__0 _stx-path140761_))
                        _g148114_))
                ((##fx= _g148113_ 2)
                 (apply (lambda (_stx-path140765_ _rel140766_)
                          (gx#core-resolve-path__%
                           _stx-path140765_
                           _rel140766_))
                        _g148114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g148114_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140698_ _ctx140699_)
        (let* ((_repr140700140707_ _repr140698_)
               (_E140702140711_
                (lambda () (error '"No clause matching" _repr140700140707_)))
               (_K140703140719_
                (lambda (_subs140714_ _phi140715_)
                  (let ((_subst140717_
                         (if (not (null? _subs140714_))
                             (list->table _subs140714_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst140717_
                     _ctx140699_
                     _phi140715_
                     '#f)))))
          (if (##pair? _repr140700140707_)
              (let ((_hd140704140722_ (##car _repr140700140707_))
                    (_tl140705140724_ (##cdr _repr140700140707_)))
                (let* ((_phi140727_ _hd140704140722_)
                       (_subs140729_ _tl140705140724_))
                  (_K140703140719_ _subs140729_ _phi140727_)))
              (_E140702140711_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140734_)
        (let ((_ctx140736_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140734_ _ctx140736_))))
    (define gx#core-deserialize-mark
      (lambda _g148116_
        (let ((_g148115_ (##length _g148116_)))
          (cond ((##fx= _g148115_ 1)
                 (apply (lambda (_repr140734_)
                          (gx#core-deserialize-mark__0 _repr140734_))
                        _g148116_))
                ((##fx= _g148115_ 2)
                 (apply (lambda (_repr140738_ _ctx140739_)
                          (gx#core-deserialize-mark__%
                           _repr140738_
                           _ctx140739_))
                        _g148116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g148116_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140695_)
        (gx#stx-rewrap _stx140695_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140693_)
        (gx#stx-unwrap__% _stx140693_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140663_)
        (let* ((_g140664140672_ (gx#current-expander-marks))
               (_else140666140680_ (lambda () _stx140663_))
               (_K140668140685_
                (lambda (_hd140683_)
                  (gx#stx-apply-mark _stx140663_ _hd140683_))))
          (if (##pair? _g140664140672_)
              (let* ((_hd140669140688_ (##car _g140664140672_))
                     (_hd140691_ _hd140669140688_))
                (_K140668140685_ _hd140691_))
              (_else140666140680_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140648_ _E140649_)
        (let ((_bind140651_ (gx#resolve-identifier__0 _stx140648_)))
          (if (##structure-direct-instance-of?
               _bind140651_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140651_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140649_ _stx140648_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140656_)
        (let ((_E140658_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140656_ _E140658_))))
    (define gx#syntax-local-e
      (lambda _g148118_
        (let ((_g148117_ (##length _g148118_)))
          (cond ((##fx= _g148117_ 1)
                 (apply (lambda (_stx140656_)
                          (gx#syntax-local-e__0 _stx140656_))
                        _g148118_))
                ((##fx= _g148117_ 2)
                 (apply (lambda (_stx140660_ _E140661_)
                          (gx#syntax-local-e__% _stx140660_ _E140661_))
                        _g148118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g148118_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140632_ _E140633_)
        (let ((_e140635_ (gx#syntax-local-e__% _stx140632_ _E140633_)))
          (if (##structure-instance-of? _e140635_ 'gx#expander::t)
              (##structure-ref _e140635_ '1 gx#expander::t '#f)
              _e140635_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140640_)
        (let ((_E140642_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140640_ _E140642_))))
    (define gx#syntax-local-value
      (lambda _g148120_
        (let ((_g148119_ (##length _g148120_)))
          (cond ((##fx= _g148119_ 1)
                 (apply (lambda (_stx140640_)
                          (gx#syntax-local-value__0 _stx140640_))
                        _g148120_))
                ((##fx= _g148119_ 2)
                 (apply (lambda (_stx140644_ _E140645_)
                          (gx#syntax-local-value__% _stx140644_ _E140645_))
                        _g148120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g148120_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140629_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140629_)))))
