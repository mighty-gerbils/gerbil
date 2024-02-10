(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707555133)
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
      (lambda _$args138687_
        (apply make-struct-instance gx#expander-context::t _$args138687_)))
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
      (lambda _$args138684_
        (apply make-struct-instance gx#root-context::t _$args138684_)))
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
      (lambda _$args138681_
        (apply make-struct-instance gx#phi-context::t _$args138681_)))
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
      (lambda _$args138678_
        (apply make-struct-instance gx#top-context::t _$args138678_)))
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
      (lambda _$args138675_
        (apply make-struct-instance gx#module-context::t _$args138675_)))
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
      (lambda _$args138672_
        (apply make-struct-instance gx#prelude-context::t _$args138672_)))
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
      (lambda _$args138669_
        (apply make-struct-instance gx#local-context::t _$args138669_)))
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
      (lambda (_self138653_ _id138654_ _super138655_)
        (if (##fx< '3 (##structure-length _self138653_))
            (begin
              (##unchecked-structure-set!
               _self138653_
               _id138654_
               '1
               (##structure-type _self138653_)
               '#f)
              (##unchecked-structure-set!
               _self138653_
               (make-table 'test: eq?)
               '2
               (##structure-type _self138653_)
               '#f)
              (##unchecked-structure-set!
               _self138653_
               _super138655_
               '3
               (##structure-type _self138653_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self138653_
                   '3
                   (##vector-length _self138653_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self138660_ _id138661_)
        (let ((_super138663_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self138660_ _id138661_ _super138663_))))
    (define gx#phi-context:::init!
      (lambda _g142924_
        (let ((_g142923_ (##length _g142924_)))
          (cond ((##fx= _g142923_ 2)
                 (apply (lambda (_self138660_ _id138661_)
                          (gx#phi-context:::init!__0 _self138660_ _id138661_))
                        _g142924_))
                ((##fx= _g142923_ 3)
                 (apply (lambda (_self138665_ _id138666_ _super138667_)
                          (gx#phi-context:::init!__%
                           _self138665_
                           _id138666_
                           _super138667_))
                        _g142924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g142924_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self138517_ _super138518_)
        (if (##fx< '3 (##structure-length _self138517_))
            (begin
              (##unchecked-structure-set!
               _self138517_
               (gensym 'L)
               '1
               (##structure-type _self138517_)
               '#f)
              (##unchecked-structure-set!
               _self138517_
               (make-table 'test: eq?)
               '2
               (##structure-type _self138517_)
               '#f)
              (##unchecked-structure-set!
               _self138517_
               _super138518_
               '3
               (##structure-type _self138517_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self138517_
                   '3
                   (##vector-length _self138517_)))))
    (define gx#local-context:::init!__0
      (lambda (_self138523_)
        (let ((_super138525_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self138523_ _super138525_))))
    (define gx#local-context:::init!
      (lambda _g142926_
        (let ((_g142925_ (##length _g142926_)))
          (cond ((##fx= _g142925_ 1)
                 (apply (lambda (_self138523_)
                          (gx#local-context:::init!__0 _self138523_))
                        _g142926_))
                ((##fx= _g142925_ 2)
                 (apply (lambda (_self138527_ _super138528_)
                          (gx#local-context:::init!__%
                           _self138527_
                           _super138528_))
                        _g142926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g142926_))))))
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
      (lambda _$args138391_
        (apply make-struct-instance gx#binding::t _$args138391_)))
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
      (lambda _$args138388_
        (apply make-struct-instance gx#runtime-binding::t _$args138388_)))
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
      (lambda _$args138385_
        (apply make-struct-instance gx#local-binding::t _$args138385_)))
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
      (lambda _$args138382_
        (apply make-struct-instance gx#top-binding::t _$args138382_)))
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
      (lambda _$args138379_
        (apply make-struct-instance gx#module-binding::t _$args138379_)))
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
      (lambda _$args138376_
        (apply make-struct-instance gx#extern-binding::t _$args138376_)))
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
      (lambda _$args138373_
        (apply make-struct-instance gx#syntax-binding::t _$args138373_)))
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
      (lambda _$args138370_
        (apply make-struct-instance gx#import-binding::t _$args138370_)))
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
      (lambda _$args138367_
        (apply make-struct-instance gx#alias-binding::t _$args138367_)))
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
      (lambda _$args138364_
        (apply make-struct-instance gx#expander::t _$args138364_)))
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
      (lambda _$args138361_
        (apply make-struct-instance gx#core-expander::t _$args138361_)))
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
      (lambda _$args138358_
        (apply make-struct-instance gx#expression-form::t _$args138358_)))
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
      (lambda _$args138355_
        (apply make-struct-instance gx#special-form::t _$args138355_)))
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
      (lambda _$args138352_
        (apply make-struct-instance gx#definition-form::t _$args138352_)))
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
      (lambda _$args138349_
        (apply make-struct-instance gx#top-special-form::t _$args138349_)))
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
      (lambda _$args138346_
        (apply make-struct-instance gx#module-special-form::t _$args138346_)))
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
      (lambda _$args138343_
        (apply make-struct-instance gx#feature-expander::t _$args138343_)))
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
      (lambda _$args138340_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args138340_)))
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
      (lambda _$args138337_
        (apply make-struct-instance gx#reserved-expander::t _$args138337_)))
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
      (lambda _$args138334_
        (apply make-struct-instance gx#macro-expander::t _$args138334_)))
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
      (lambda _$args138331_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args138331_)))
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
      (lambda _$args138328_
        (apply make-struct-instance gx#user-expander::t _$args138328_)))
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
      (lambda _$args138325_
        (apply make-struct-instance gx#expander-mark::t _$args138325_)))
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
      (lambda (_ctx138310_ _message138311_ _stx138312_ . _details138313_)
        (let ((_ctx138323_
               (let ((_$e138315_ _ctx138310_))
                 (if _$e138315_
                     _$e138315_
                     (let ((_$e138318_ (gx#core-context-top__0)))
                       (if _$e138318_
                           ((lambda (_ctx138321_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx138321_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e138318_)
                           '#f))))))
          (raise (make-syntax-error
                  _message138311_
                  (cons _stx138312_ _details138313_)
                  _ctx138323_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx138297_ _expression?138298_)
        (gx#eval-syntax* (gx#core-expand__% _stx138297_ _expression?138298_))))
    (define gx#eval-syntax__0
      (lambda (_stx138303_)
        (let ((_expression?138305_ '#f))
          (gx#eval-syntax__% _stx138303_ _expression?138305_))))
    (define gx#eval-syntax
      (lambda _g142928_
        (let ((_g142927_ (##length _g142928_)))
          (cond ((##fx= _g142927_ 1)
                 (apply (lambda (_stx138303_) (gx#eval-syntax__0 _stx138303_))
                        _g142928_))
                ((##fx= _g142927_ 2)
                 (apply (lambda (_stx138307_ _expression?138308_)
                          (gx#eval-syntax__% _stx138307_ _expression?138308_))
                        _g142928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g142928_))))))
    (define gx#eval-syntax*
      (lambda (_stx138294_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx138294_))))
    (define gx#core-expand__%
      (lambda (_stx138281_ _expression?138282_)
        (if _expression?138282_
            (gx#core-expand-expression _stx138281_)
            (gx#core-expand-top _stx138281_))))
    (define gx#core-expand__0
      (lambda (_stx138287_)
        (let ((_expression?138289_ '#f))
          (gx#core-expand__% _stx138287_ _expression?138289_))))
    (define gx#core-expand
      (lambda _g142930_
        (let ((_g142929_ (##length _g142930_)))
          (cond ((##fx= _g142929_ 1)
                 (apply (lambda (_stx138287_) (gx#core-expand__0 _stx138287_))
                        _g142930_))
                ((##fx= _g142929_ 2)
                 (apply (lambda (_stx138291_ _expression?138292_)
                          (gx#core-expand__% _stx138291_ _expression?138292_))
                        _g142930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g142930_))))))
    (define gx#core-expand-top
      (lambda (_stx138248_)
        (let* ((_stx138250_ (gx#core-expand*__0 _stx138248_))
               (_e138251138258_ _stx138250_)
               (_E138253138262_
                (lambda () (gx#core-expand-expression _stx138250_)))
               (_E138252138276_
                (lambda ()
                  (if (gx#stx-pair? _e138251138258_)
                      (let ((_e138254138266_ (gx#syntax-e _e138251138258_)))
                        (let ((_hd138255138269_ (##car _e138254138266_))
                              (_tl138256138271_ (##cdr _e138254138266_)))
                          (let ((_form138274_ _hd138255138269_))
                            (if (gx#core-bound-identifier?__0 _form138274_)
                                _stx138250_
                                (_E138253138262_)))))
                      (_E138253138262_)))))
          (_E138252138276_))))
    (define gx#core-expand-expression
      (lambda (_stx138195_)
        (letrec ((_sealed-expression?138197_
                  (lambda (_hd138218_)
                    (if (gx#sealed-syntax? _hd138218_)
                        (let* ((_e138219138226_ _hd138218_)
                               (_E138221138230_ (lambda () '#f))
                               (_E138220138244_
                                (lambda ()
                                  (if (gx#stx-pair? _e138219138226_)
                                      (let ((_e138222138234_
                                             (gx#syntax-e _e138219138226_)))
                                        (let ((_hd138223138237_
                                               (##car _e138222138234_))
                                              (_tl138224138239_
                                               (##cdr _e138222138234_)))
                                          (let ((_form138242_
                                                 _hd138223138237_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form138242_
                                                 gx#expression-form-binding?)
                                                (_E138221138230_)))))
                                      (_E138221138230_)))))
                          (_E138220138244_))
                        '#f)))
                 (_illegal-expression138198_
                  (lambda (_hd138216_ . _g142931_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx138195_
                     _hd138216_)))
                 (_expand-e138199_
                  (lambda (_form138211_ _hd138212_)
                    (let ((_bind138214_
                           (if (##structure-instance-of?
                                _form138211_
                                'gx#binding::t)
                               _form138211_
                               (gx#resolve-identifier__0 _form138211_))))
                      (if (gx#core-expander-binding? _bind138214_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind138214_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd138212_
                            (gx#stx-source _stx138195_)))
                          (if (##structure-direct-instance-of?
                               _bind138214_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind138214_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd138212_
                                 (gx#stx-source _stx138195_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx138195_
                               _form138211_)))))))
          (let ((_hd138201_ (gx#core-expand-head _stx138195_)))
            (if (_sealed-expression?138197_ _hd138201_)
                _hd138201_
                (if (gx#stx-pair? _hd138201_)
                    (let* ((_form138203_ (gx#stx-car _hd138201_))
                           (_bind138205_
                            (if (gx#identifier? _form138203_)
                                (gx#resolve-identifier__0 _form138203_)
                                '#f)))
                      (if (or (not _bind138205_)
                              (not (gx#core-expander-binding? _bind138205_)))
                          (_expand-e138199_ '%%app (cons '%%app _hd138201_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind138205_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd138201_
                               _illegal-expression138198_)
                              (if (gx#expression-form-binding? _bind138205_)
                                  (_expand-e138199_ _bind138205_ _hd138201_)
                                  (if (gx#direct-special-form-binding?
                                       _bind138205_)
                                      (gx#core-expand-expression
                                       (_expand-e138199_
                                        _bind138205_
                                        _hd138201_))
                                      (_illegal-expression138198_
                                       _hd138201_))))))
                    (if (gx#core-bound-identifier?__0 _hd138201_)
                        (_illegal-expression138198_ _hd138201_)
                        (if (gx#identifier? _hd138201_)
                            (_expand-e138199_
                             '%%ref
                             (cons '%%ref (cons _hd138201_ '())))
                            (if (gx#stx-datum? _hd138201_)
                                (_expand-e138199_
                                 '%#quote
                                 (cons '%#quote (cons _hd138201_ '())))
                                (_illegal-expression138198_
                                 _hd138201_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx138190_)
        (call-with-parameters
         (lambda ()
           (let ((_stx138193_ (gx#core-expand-expression _stx138190_)))
             (values _stx138193_ (gx#eval-syntax* _stx138193_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx138171_ _stop?138172_)
        (let _lp138174_ ((_stx138176_ _stx138171_))
          (if (_stop?138172_ _stx138176_)
              _stx138176_
              (let ((_rstx138178_ (gx#core-expand1 _stx138176_)))
                (if (eq? _stx138176_ _rstx138178_)
                    _stx138176_
                    (_lp138174_ _rstx138178_)))))))
    (define gx#core-expand*__0
      (lambda (_stx138183_)
        (let ((_stop?138185_ false))
          (gx#core-expand*__% _stx138183_ _stop?138185_))))
    (define gx#core-expand*
      (lambda _g142933_
        (let ((_g142932_ (##length _g142933_)))
          (cond ((##fx= _g142932_ 1)
                 (apply (lambda (_stx138183_) (gx#core-expand*__0 _stx138183_))
                        _g142933_))
                ((##fx= _g142932_ 2)
                 (apply (lambda (_stx138187_ _stop?138188_)
                          (gx#core-expand*__% _stx138187_ _stop?138188_))
                        _g142933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g142933_))))))
    (define gx#core-expand1
      (lambda (_stx138127_)
        (letrec ((_step138129_
                  (lambda (_hd138166_)
                    (let ((_bind138168_ (gx#resolve-identifier__0 _hd138166_)))
                      (if (##structure-instance-of?
                           _bind138168_
                           'gx#runtime-binding::t)
                          _stx138127_
                          (if (##structure-direct-instance-of?
                               _bind138168_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind138168_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx138127_)
                              (if (not _bind138168_)
                                  _stx138127_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx138127_))))))))
          (let* ((_e138130138138_ _stx138127_)
                 (_E138136138142_ (lambda () _stx138127_))
                 (_E138132138148_
                  (lambda ()
                    (let ((_hd138146_ _e138130138138_))
                      (if (gx#identifier? _hd138146_)
                          (_step138129_ _hd138146_)
                          (_E138136138142_)))))
                 (_E138131138162_
                  (lambda ()
                    (if (gx#stx-pair? _e138130138138_)
                        (let ((_e138133138152_ (gx#syntax-e _e138130138138_)))
                          (let ((_hd138134138155_ (##car _e138133138152_))
                                (_tl138135138157_ (##cdr _e138133138152_)))
                            (let ((_hd138160_ _hd138134138155_))
                              (if (gx#identifier? _hd138160_)
                                  (_step138129_ _hd138160_)
                                  (_E138132138148_)))))
                        (_E138132138148_)))))
            (_E138131138162_)))))
    (define gx#core-expand-head
      (lambda (_stx138093_)
        (letrec ((_stop?138095_
                  (lambda (_stx138097_)
                    (let* ((_e138098138105_ _stx138097_)
                           (_E138100138109_ (lambda () '#f))
                           (_E138099138123_
                            (lambda ()
                              (if (gx#stx-pair? _e138098138105_)
                                  (let ((_e138101138113_
                                         (gx#syntax-e _e138098138105_)))
                                    (let ((_hd138102138116_
                                           (##car _e138101138113_))
                                          (_tl138103138118_
                                           (##cdr _e138101138113_)))
                                      (let ((_hd138121_ _hd138102138116_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd138121_)
                                            (_E138100138109_)))))
                                  (_E138100138109_)))))
                      (_E138099138123_)))))
          (gx#core-expand*__% _stx138093_ _stop?138095_))))
    (define gx#core-expand-block__%
      (lambda (_stx137899_
               _expand-special137900_
               _begin-form137901_
               _expand-e137902_)
        (letrec ((_expand-splice137904_
                  (lambda (_hd138067_ _body138068_ _rest138069_ _r138070_)
                    (if (gx#stx-list? _body138068_)
                        (_K137908_
                         (gx#stx-foldr cons _rest138069_ _body138068_)
                         _r138070_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx137899_
                         _hd138067_))))
                 (_expand-cond-expand137905_
                  (lambda (_hd138063_ _rest138064_ _r138065_)
                    (_K137908_
                     (cons (gx#core-expand-cond-expand% _hd138063_)
                           _rest138064_)
                     _r138065_)))
                 (_expand-include137906_
                  (lambda (_hd138012_ _rest138013_ _r138014_)
                    (let* ((_e138015138025_ _hd138012_)
                           (_E138017138029_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e138015138025_)))
                           (_E138016138059_
                            (lambda ()
                              (if (gx#stx-pair? _e138015138025_)
                                  (let ((_e138018138033_
                                         (gx#syntax-e _e138015138025_)))
                                    (let ((_hd138019138036_
                                           (##car _e138018138033_))
                                          (_tl138020138038_
                                           (##cdr _e138018138033_)))
                                      (if (gx#stx-pair? _tl138020138038_)
                                          (let ((_e138021138041_
                                                 (gx#syntax-e
                                                  _tl138020138038_)))
                                            (let ((_hd138022138044_
                                                   (##car _e138021138041_))
                                                  (_tl138023138046_
                                                   (##cdr _e138021138041_)))
                                              (let ((_path138049_
                                                     _hd138022138044_))
                                                (if (gx#stx-null?
                                                     _tl138023138046_)
                                                    (if (gx#stx-string?
                                                         _path138049_)
                                                        (let* ((_rpath138051_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path138049_
                         (gx#stx-source _hd138012_)))
                       (_block138053_
                        (gx#core-expand-include%__% _hd138012_ _rpath138051_))
                       (_rbody138056_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block138053_
                            _expand-special137900_
                            '#f
                            _expand-e137902_))
                         gx#current-expander-path
                         (cons _rpath138051_ (gx#current-expander-path)))))
                  (_K137908_
                   _rest138013_
                   (foldr1 cons _r138014_ _rbody138056_)))
                (_E138017138029_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E138017138029_)))))
                                          (_E138017138029_))))
                                  (_E138017138029_)))))
                      (_E138016138059_))))
                 (_expand-expression137907_
                  (lambda (_hd138008_ _rest138009_ _r138010_)
                    (_K137908_
                     _rest138009_
                     (cons (_expand-e137902_ _hd138008_) _r138010_))))
                 (_K137908_
                  (lambda (_rest137938_ _r137939_)
                    (let* ((_e137940137947_ _rest137938_)
                           (_E137942137951_
                            (lambda ()
                              (if _begin-form137901_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form137901_
                                    (reverse _r137939_))
                                   (gx#stx-source _stx137899_))
                                  _r137939_)))
                           (_E137941138004_
                            (lambda ()
                              (if (gx#stx-pair? _e137940137947_)
                                  (let ((_e137943137955_
                                         (gx#syntax-e _e137940137947_)))
                                    (let ((_hd137944137958_
                                           (##car _e137943137955_))
                                          (_tl137945137960_
                                           (##cdr _e137943137955_)))
                                      (let* ((_hd137963_ _hd137944137958_)
                                             (_rest137965_ _tl137945137960_))
                                        (if '#t
                                            (let* ((_hd137967_
                                                    (gx#core-expand-head
                                                     _hd137963_))
                                                   (_e137968137975_ _hd137967_)
                                                   (_E137970137979_
                                                    (lambda ()
                                                      (_expand-expression137907_
                                                       _hd137967_
                                                       _rest137965_
                                                       _r137939_)))
                                                   (_E137969138000_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e137968137975_)
                                                          (let ((_e137971137983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e137968137975_)))
                    (let ((_hd137972137986_ (##car _e137971137983_))
                          (_tl137973137988_ (##cdr _e137971137983_)))
                      (let* ((_form137991_ _hd137972137986_)
                             (_body137993_ _tl137973137988_))
                        (if '#t
                            (let ((_bind137995_
                                   (if (gx#identifier? _form137991_)
                                       (gx#resolve-identifier__0 _form137991_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind137995_)
                                  (let ((_$e137997_
                                         (##unchecked-structure-ref
                                          _bind137995_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e137997_)
                                        (_expand-splice137904_
                                         _hd137967_
                                         _body137993_
                                         _rest137965_
                                         _r137939_)
                                        (if (eq? '%#cond-expand _$e137997_)
                                            (_expand-cond-expand137905_
                                             _hd137967_
                                             _rest137965_
                                             _r137939_)
                                            (if (eq? '%#include _$e137997_)
                                                (_expand-include137906_
                                                 _hd137967_
                                                 _rest137965_
                                                 _r137939_)
                                                (_expand-special137900_
                                                 _hd137967_
                                                 _K137908_
                                                 _rest137965_
                                                 _r137939_)))))
                                  (_expand-expression137907_
                                   _hd137967_
                                   _rest137965_
                                   _r137939_)))
                            (_E137970137979_)))))
                  (_E137970137979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137969138000_))
                                            (_E137942137951_)))))
                                  (_E137942137951_)))))
                      (_E137941138004_)))))
          (let* ((_e137909137916_ _stx137899_)
                 (_E137911137920_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e137909137916_)))
                 (_E137910137934_
                  (lambda ()
                    (if (gx#stx-pair? _e137909137916_)
                        (let ((_e137912137924_ (gx#syntax-e _e137909137916_)))
                          (let ((_hd137913137927_ (##car _e137912137924_))
                                (_tl137914137929_ (##cdr _e137912137924_)))
                            (let ((_body137932_ _tl137914137929_))
                              (if (gx#stx-list? _body137932_)
                                  (_K137908_ _body137932_ '())
                                  (_E137911137920_)))))
                        (_E137911137920_)))))
            (_E137910137934_)))))
    (define gx#core-expand-block__0
      (lambda (_stx138075_ _expand-special138076_)
        (let* ((_begin-form138078_ '%#begin)
               (_expand-e138080_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx138075_
           _expand-special138076_
           _begin-form138078_
           _expand-e138080_))))
    (define gx#core-expand-block__1
      (lambda (_stx138082_ _expand-special138083_ _begin-form138084_)
        (let ((_expand-e138086_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx138082_
           _expand-special138083_
           _begin-form138084_
           _expand-e138086_))))
    (define gx#core-expand-block
      (lambda _g142935_
        (let ((_g142934_ (##length _g142935_)))
          (cond ((##fx= _g142934_ 2)
                 (apply (lambda (_stx138075_ _expand-special138076_)
                          (gx#core-expand-block__0
                           _stx138075_
                           _expand-special138076_))
                        _g142935_))
                ((##fx= _g142934_ 3)
                 (apply (lambda (_stx138082_
                                 _expand-special138083_
                                 _begin-form138084_)
                          (gx#core-expand-block__1
                           _stx138082_
                           _expand-special138083_
                           _begin-form138084_))
                        _g142935_))
                ((##fx= _g142934_ 4)
                 (apply (lambda (_stx138088_
                                 _expand-special138089_
                                 _begin-form138090_
                                 _expand-e138091_)
                          (gx#core-expand-block__%
                           _stx138088_
                           _expand-special138089_
                           _begin-form138090_
                           _expand-e138091_))
                        _g142935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g142935_))))))
    (define gx#core-expand-block*
      (lambda (_stx137847_ _expand-special137848_)
        (let* ((_g137849137860_
                (gx#core-expand-block__1
                 _stx137847_
                 _expand-special137848_
                 '#f))
               (_E137853137864_
                (lambda () (error '"No clause matching" _g137849137860_))))
          (let ((_K137858137895_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx137847_)))
                (_K137855137881_ (lambda (_expr137879_) _expr137879_))
                (_K137854137870_
                 (lambda (_body137868_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body137868_))
                    (gx#stx-source _stx137847_)))))
            (let ((_try-match137851137891_
                   (lambda ()
                     (if (##pair? _g137849137860_)
                         (let ((_tl137857137886_ (##cdr _g137849137860_))
                               (_hd137856137884_ (##car _g137849137860_)))
                           (if (##null? _tl137857137886_)
                               (let ((_expr137889_ _hd137856137884_))
                                 (_K137855137881_ _expr137889_))
                               (let ((_body137873_ _g137849137860_))
                                 (_K137854137870_ _body137873_))))
                         (let ((_body137873_ _g137849137860_))
                           (_K137854137870_ _body137873_))))))
              (if (##null? _g137849137860_)
                  (_K137858137895_)
                  (_try-match137851137891_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx137675_)
        (letrec ((_satisfied?137677_
                  (lambda (_condition137775_)
                    (let* ((_e137776137791_ _condition137775_)
                           (_E137786137795_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e137776137791_)))
                           (_E137779137814_
                            (lambda ()
                              (if (gx#stx-pair? _e137776137791_)
                                  (let ((_e137787137799_
                                         (gx#syntax-e _e137776137791_)))
                                    (let ((_hd137788137802_
                                           (##car _e137787137799_))
                                          (_tl137789137804_
                                           (##cdr _e137787137799_)))
                                      (let* ((_combinator137807_
                                              _hd137788137802_)
                                             (_body137809_ _tl137789137804_))
                                        (if (gx#stx-list? _body137809_)
                                            (let ((_$e137811_
                                                   (gx#stx-e
                                                    _combinator137807_)))
                                              (if (eq? 'not _$e137811_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?137677_
                                                        _body137809_))
                                                  (if (eq? 'and _$e137811_)
                                                      (gx#stx-andmap
                                                       _satisfied?137677_
                                                       _body137809_)
                                                      (if (eq? 'or _$e137811_)
                                                          (gx#stx-ormap
                                                           _satisfied?137677_
                                                           _body137809_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e137811_)
                      (gx#stx-andmap gx#core-resolve-identifier _body137809_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx137675_
                       _combinator137807_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E137786137795_)))))
                                  (_E137786137795_))))
                           (_E137778137837_
                            (lambda ()
                              (if (gx#stx-pair? _e137776137791_)
                                  (let ((_e137780137818_
                                         (gx#syntax-e _e137776137791_)))
                                    (let ((_hd137781137821_
                                           (##car _e137780137818_))
                                          (_tl137782137823_
                                           (##cdr _e137780137818_)))
                                      (if (and (gx#identifier?
                                                _hd137781137821_)
                                               (gx#core-identifier=?
                                                _hd137781137821_
                                                'unquote))
                                          (if (gx#stx-pair? _tl137782137823_)
                                              (let ((_e137783137826_
                                                     (gx#syntax-e
                                                      _tl137782137823_)))
                                                (let ((_hd137784137829_
                                                       (##car _e137783137826_))
                                                      (_tl137785137831_
                                                       (##cdr _e137783137826_)))
                                                  (let ((_expr137834_
                                                         _hd137784137829_))
                                                    (if (gx#stx-null?
                                                         _tl137785137831_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr137834_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E137779137814_))
                (_E137779137814_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137779137814_))
                                          (_E137779137814_))))
                                  (_E137779137814_))))
                           (_E137777137843_
                            (lambda ()
                              (let ((_id137841_ _e137776137791_))
                                (if (gx#identifier? _id137841_)
                                    (gx#core-bound-identifier?__%
                                     _id137841_
                                     gx#feature-binding?)
                                    (_E137778137837_))))))
                      (_E137777137843_))))
                 (_loop137678_
                  (lambda (_rest137708_)
                    (let* ((_e137709137717_ _rest137708_)
                           (_E137715137721_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e137709137717_)))
                           (_E137711137725_
                            (lambda ()
                              (if (gx#stx-null? _e137709137717_)
                                  (if '#t '() (_E137715137721_))
                                  (_E137715137721_))))
                           (_E137710137771_
                            (lambda ()
                              (if (gx#stx-pair? _e137709137717_)
                                  (let ((_e137712137729_
                                         (gx#syntax-e _e137709137717_)))
                                    (let ((_hd137713137732_
                                           (##car _e137712137729_))
                                          (_tl137714137734_
                                           (##cdr _e137712137729_)))
                                      (let* ((_hd137737_ _hd137713137732_)
                                             (_rest137739_ _tl137714137734_))
                                        (if '#t
                                            (let* ((_e137740137747_ _hd137737_)
                                                   (_E137742137751_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e137740137747_)))
                                                   (_E137741137767_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e137740137747_)
                                                          (let ((_e137743137755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e137740137747_)))
                    (let ((_hd137744137758_ (##car _e137743137755_))
                          (_tl137745137760_ (##cdr _e137743137755_)))
                      (let* ((_condition137763_ _hd137744137758_)
                             (_body137765_ _tl137745137760_))
                        (if '#t
                            (if (gx#stx-eq? _condition137763_ 'else)
                                (if (gx#stx-null? _rest137739_)
                                    _body137765_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx137675_
                                     _hd137737_))
                                (if (_satisfied?137677_ _condition137763_)
                                    _body137765_
                                    (_loop137678_ _rest137739_)))
                            (_E137742137751_)))))
                  (_E137742137751_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137741137767_))
                                            (_E137711137725_)))))
                                  (_E137711137725_)))))
                      (_E137710137771_)))))
          (let* ((_e137679137686_ _stx137675_)
                 (_E137681137690_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e137679137686_)))
                 (_E137680137704_
                  (lambda ()
                    (if (gx#stx-pair? _e137679137686_)
                        (let ((_e137682137694_ (gx#syntax-e _e137679137686_)))
                          (let ((_hd137683137697_ (##car _e137682137694_))
                                (_tl137684137699_ (##cdr _e137682137694_)))
                            (let ((_clauses137702_ _tl137684137699_))
                              (if (gx#stx-list? _clauses137702_)
                                  (gx#core-cons
                                   'begin
                                   (_loop137678_ _clauses137702_))
                                  (_E137681137690_)))))
                        (_E137681137690_)))))
            (_E137680137704_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx137618_ _rpath137619_)
        (let* ((_e137620137630_ _stx137618_)
               (_E137622137634_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e137620137630_)))
               (_E137621137661_
                (lambda ()
                  (if (gx#stx-pair? _e137620137630_)
                      (let ((_e137623137638_ (gx#syntax-e _e137620137630_)))
                        (let ((_hd137624137641_ (##car _e137623137638_))
                              (_tl137625137643_ (##cdr _e137623137638_)))
                          (if (gx#stx-pair? _tl137625137643_)
                              (let ((_e137626137646_
                                     (gx#syntax-e _tl137625137643_)))
                                (let ((_hd137627137649_
                                       (##car _e137626137646_))
                                      (_tl137628137651_
                                       (##cdr _e137626137646_)))
                                  (let ((_path137654_ _hd137627137649_))
                                    (if (gx#stx-null? _tl137628137651_)
                                        (if (gx#stx-string? _path137654_)
                                            (let ((_rpath137659_
                                                   (let ((_$e137656_
                                                          _rpath137619_))
                                                     (if _$e137656_
                                                         _$e137656_
                                                         (gx#core-resolve-path__%
                                                          _path137654_
                                                          (gx#stx-source
                                                           _stx137618_))))))
                                              (if (member _rpath137659_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx137618_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath137659_))
                                                    (gx#stx-source
                                                     _stx137618_)))))
                                            (_E137622137634_))
                                        (_E137622137634_)))))
                              (_E137622137634_))))
                      (_E137622137634_)))))
          (_E137621137661_))))
    (define gx#core-expand-include%__0
      (lambda (_stx137668_)
        (let ((_rpath137670_ '#f))
          (gx#core-expand-include%__% _stx137668_ _rpath137670_))))
    (define gx#core-expand-include%
      (lambda _g142937_
        (let ((_g142936_ (##length _g142937_)))
          (cond ((##fx= _g142936_ 1)
                 (apply (lambda (_stx137668_)
                          (gx#core-expand-include%__0 _stx137668_))
                        _g142937_))
                ((##fx= _g142936_ 2)
                 (apply (lambda (_stx137672_ _rpath137673_)
                          (gx#core-expand-include%__%
                           _stx137672_
                           _rpath137673_))
                        _g142937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g142937_))))))
    (define gx#core-apply-expander__%
      (lambda (_K137587_ _stx137588_ _method137589_)
        (if (procedure? _K137587_)
            (let ((_$e137591_ (gx#stx-source _stx137588_)))
              (if _$e137591_
                  ((lambda (_g137593137595_)
                     (gx#stx-wrap-source
                      (_K137587_ _stx137588_)
                      _g137593137595_))
                   _$e137591_)
                  (_K137587_ _stx137588_)))
            (let ((_$e137598_ (bound-method-ref _K137587_ _method137589_)))
              (if _$e137598_
                  ((lambda (_g137600137602_)
                     (gx#core-apply-expander__%
                      _g137600137602_
                      _stx137588_
                      _method137589_))
                   _$e137598_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx137588_
                   _method137589_))))))
    (define gx#core-apply-expander__0
      (lambda (_K137608_ _stx137609_)
        (let ((_method137611_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K137608_ _stx137609_ _method137611_))))
    (define gx#core-apply-expander
      (lambda _g142939_
        (let ((_g142938_ (##length _g142939_)))
          (cond ((##fx= _g142938_ 2)
                 (apply (lambda (_K137608_ _stx137609_)
                          (gx#core-apply-expander__0 _K137608_ _stx137609_))
                        _g142939_))
                ((##fx= _g142938_ 3)
                 (apply (lambda (_K137613_ _stx137614_ _method137615_)
                          (gx#core-apply-expander__%
                           _K137613_
                           _stx137614_
                           _method137615_))
                        _g142939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g142939_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self137583_ _stx137584_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx137584_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self137436_ _stx137437_)
        (let* ((_self137438137444_ _self137436_)
               (_E137440137448_
                (lambda () (error '"No clause matching" _self137438137444_)))
               (_K137441137453_
                (lambda (_K137451_)
                  (gx#core-apply-expander__0 _K137451_ _stx137437_))))
          (if (##structure-instance-of? _self137438137444_ 'gx#core-macro::t)
              (let* ((_e137442137456_
                      (##unchecked-structure-ref
                       _self137438137444_
                       '1
                       gx#expander::t
                       '#f))
                     (_K137459_ _e137442137456_))
                (_K137441137453_ _K137459_))
              (_E137440137448_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self137289_ _stx137290_)
        (if (gx#sealed-syntax? _stx137290_)
            _stx137290_
            (let* ((_self137291137297_ _self137289_)
                   (_E137293137301_
                    (lambda ()
                      (error '"No clause matching" _self137291137297_)))
                   (_K137294137306_
                    (lambda (_K137304_)
                      (gx#core-apply-expander__0 _K137304_ _stx137290_))))
              (if (##structure-instance-of?
                   _self137291137297_
                   'gx#core-expander::t)
                  (let* ((_e137295137309_
                          (##unchecked-structure-ref
                           _self137291137297_
                           '1
                           gx#expander::t
                           '#f))
                         (_K137312_ _e137295137309_))
                    (_K137294137306_ _K137312_))
                  (_E137293137301_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self137151_ _stx137152_ _top?137153_)
        (if (_top?137153_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self137151_ _stx137152_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx137152_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self137158_ _stx137159_)
        (let ((_top?137161_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self137158_
           _stx137159_
           _top?137161_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g142941_
        (let ((_g142940_ (##length _g142941_)))
          (cond ((##fx= _g142940_ 2)
                 (apply (lambda (_self137158_ _stx137159_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self137158_
                           _stx137159_))
                        _g142941_))
                ((##fx= _g142940_ 3)
                 (apply (lambda (_self137163_ _stx137164_ _top?137165_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self137163_
                           _stx137164_
                           _top?137165_))
                        _g142941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g142941_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self137025_ _stx137026_)
        (gx#top-special-form::apply-macro-expander__%
         _self137025_
         _stx137026_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self136850_ _stx136851_)
        (let* ((_self136852136858_ _self136850_)
               (_E136854136862_
                (lambda () (error '"No clause matching" _self136852136858_)))
               (_K136855136895_
                (lambda (_id136865_)
                  (let* ((_e136866136873_ _stx136851_)
                         (_E136868136877_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e136866136873_)))
                         (_E136867136891_
                          (lambda ()
                            (if (gx#stx-pair? _e136866136873_)
                                (let ((_e136869136881_
                                       (gx#syntax-e _e136866136873_)))
                                  (let ((_hd136870136884_
                                         (##car _e136869136881_))
                                        (_tl136871136886_
                                         (##cdr _e136869136881_)))
                                    (let ((_body136889_ _tl136871136886_))
                                      (if '#t
                                          (gx#core-cons
                                           _id136865_
                                           _body136889_)
                                          (_E136868136877_)))))
                                (_E136868136877_)))))
                    (_E136867136891_)))))
          (if (##structure-instance-of?
               _self136852136858_
               'gx#rename-macro-expander::t)
              (let* ((_e136856136898_
                      (##unchecked-structure-ref
                       _self136852136858_
                       '1
                       gx#expander::t
                       '#f))
                     (_id136901_ _e136856136898_))
                (_K136855136895_ _id136901_))
              (_E136854136862_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self136676_ _stx136677_ _method136678_)
        (let* ((_self136679136687_ _self136676_)
               (_E136681136691_
                (lambda () (error '"No clause matching" _self136679136687_)))
               (_K136682136698_
                (lambda (_phi136694_ _ctx136695_ _K136696_)
                  (gx#core-apply-user-macro
                   _K136696_
                   _stx136677_
                   _ctx136695_
                   _phi136694_
                   _method136678_))))
          (if (##structure-instance-of?
               _self136679136687_
               'gx#macro-expander::t)
              (let* ((_e136683136701_
                      (##unchecked-structure-ref
                       _self136679136687_
                       '1
                       gx#expander::t
                       '#f))
                     (_K136704_ _e136683136701_)
                     (_e136684136706_
                      (##unchecked-structure-ref
                       _self136679136687_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx136709_ _e136684136706_)
                     (_e136685136711_
                      (##unchecked-structure-ref
                       _self136679136687_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi136714_ _e136685136711_))
                (_K136682136698_ _phi136714_ _ctx136709_ _K136704_))
              (_E136681136691_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self136719_ _stx136720_)
        (let ((_method136722_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self136719_
           _stx136720_
           _method136722_))))
    (define gx#core-apply-user-expander
      (lambda _g142943_
        (let ((_g142942_ (##length _g142943_)))
          (cond ((##fx= _g142942_ 2)
                 (apply (lambda (_self136719_ _stx136720_)
                          (gx#core-apply-user-expander__0
                           _self136719_
                           _stx136720_))
                        _g142943_))
                ((##fx= _g142942_ 3)
                 (apply (lambda (_self136724_ _stx136725_ _method136726_)
                          (gx#core-apply-user-expander__%
                           _self136724_
                           _stx136725_
                           _method136726_))
                        _g142943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g142943_))))))
    (define gx#core-apply-user-macro
      (lambda (_K136666_ _stx136667_ _ctx136668_ _phi136669_ _method136670_)
        (let ((_mark136672_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx136668_
                _phi136669_
                _stx136667_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K136666_
               (gx#stx-apply-mark _stx136667_ _mark136672_)
               _method136670_)
              _mark136672_))
           gx#current-expander-marks
           (cons _mark136672_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx136518_ _phi136519_ _ctx136520_)
        (let _lp136522_ ((_bind136524_
                          (gx#core-resolve-identifier__%
                           _stx136518_
                           _phi136519_
                           _ctx136520_)))
          (if (##structure-direct-instance-of?
               _bind136524_
               'gx#import-binding::t)
              (_lp136522_
               (##unchecked-structure-ref
                _bind136524_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind136524_
                   'gx#alias-binding::t)
                  (_lp136522_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind136524_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi136519_
                    _ctx136520_))
                  _bind136524_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx136529_)
        (let* ((_phi136531_ (gx#current-expander-phi))
               (_ctx136533_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx136529_ _phi136531_ _ctx136533_))))
    (define gx#resolve-identifier__1
      (lambda (_stx136535_ _phi136536_)
        (let ((_ctx136538_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx136535_ _phi136536_ _ctx136538_))))
    (define gx#resolve-identifier
      (lambda _g142945_
        (let ((_g142944_ (##length _g142945_)))
          (cond ((##fx= _g142944_ 1)
                 (apply (lambda (_stx136529_)
                          (gx#resolve-identifier__0 _stx136529_))
                        _g142945_))
                ((##fx= _g142944_ 2)
                 (apply (lambda (_stx136535_ _phi136536_)
                          (gx#resolve-identifier__1 _stx136535_ _phi136536_))
                        _g142945_))
                ((##fx= _g142944_ 3)
                 (apply (lambda (_stx136540_ _phi136541_ _ctx136542_)
                          (gx#resolve-identifier__%
                           _stx136540_
                           _phi136541_
                           _ctx136542_))
                        _g142945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g142945_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx136476_ _val136477_ _rebind?136478_ _phi136479_ _ctx136480_)
        (let ((_rebind?136482_
               (if (not _rebind?136478_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?136478_) _rebind?136478_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx136476_)
           _val136477_
           _rebind?136482_
           _phi136479_
           _ctx136480_))))
    (define gx#bind-identifier!__0
      (lambda (_stx136487_ _val136488_)
        (let* ((_rebind?136490_ '#f)
               (_phi136492_ (gx#current-expander-phi))
               (_ctx136494_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136487_
           _val136488_
           _rebind?136490_
           _phi136492_
           _ctx136494_))))
    (define gx#bind-identifier!__1
      (lambda (_stx136496_ _val136497_ _rebind?136498_)
        (let* ((_phi136500_ (gx#current-expander-phi))
               (_ctx136502_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136496_
           _val136497_
           _rebind?136498_
           _phi136500_
           _ctx136502_))))
    (define gx#bind-identifier!__2
      (lambda (_stx136504_ _val136505_ _rebind?136506_ _phi136507_)
        (let ((_ctx136509_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136504_
           _val136505_
           _rebind?136506_
           _phi136507_
           _ctx136509_))))
    (define gx#bind-identifier!
      (lambda _g142947_
        (let ((_g142946_ (##length _g142947_)))
          (cond ((##fx= _g142946_ 2)
                 (apply (lambda (_stx136487_ _val136488_)
                          (gx#bind-identifier!__0 _stx136487_ _val136488_))
                        _g142947_))
                ((##fx= _g142946_ 3)
                 (apply (lambda (_stx136496_ _val136497_ _rebind?136498_)
                          (gx#bind-identifier!__1
                           _stx136496_
                           _val136497_
                           _rebind?136498_))
                        _g142947_))
                ((##fx= _g142946_ 4)
                 (apply (lambda (_stx136504_
                                 _val136505_
                                 _rebind?136506_
                                 _phi136507_)
                          (gx#bind-identifier!__2
                           _stx136504_
                           _val136505_
                           _rebind?136506_
                           _phi136507_))
                        _g142947_))
                ((##fx= _g142946_ 5)
                 (apply (lambda (_stx136511_
                                 _val136512_
                                 _rebind?136513_
                                 _phi136514_
                                 _ctx136515_)
                          (gx#bind-identifier!__%
                           _stx136511_
                           _val136512_
                           _rebind?136513_
                           _phi136514_
                           _ctx136515_))
                        _g142947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g142947_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx136448_ _phi136449_ _ctx136450_)
        (let _lp136452_ ((_e136454_ _stx136448_)
                         (_marks136455_ (gx#current-expander-marks)))
          (if (symbol? _e136454_)
              (gx#core-resolve-binding
               _e136454_
               _phi136449_
               _phi136449_
               _ctx136450_
               (reverse _marks136455_))
              (if (gx#identifier-quote? _e136454_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e136454_ '1 gx#AST::t '#f)
                   _phi136449_
                   '0
                   (##unchecked-structure-ref
                    _e136454_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e136454_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e136454_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e136454_ '1 gx#AST::t '#f)
                       _phi136449_
                       _phi136449_
                       _ctx136450_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136454_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136455_))
                      (if (##structure-direct-instance-of?
                           _e136454_
                           'gx#syntax-wrap::t)
                          (_lp136452_
                           (##unchecked-structure-ref
                            _e136454_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e136454_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks136455_))
                          (if (##structure-instance-of?
                               _e136454_
                               'gerbil#AST::t)
                              (_lp136452_
                               (##unchecked-structure-ref
                                _e136454_
                                '1
                                gx#AST::t
                                '#f)
                               _marks136455_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx136448_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx136460_)
        (let* ((_phi136462_ (gx#current-expander-phi))
               (_ctx136464_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx136460_
           _phi136462_
           _ctx136464_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx136466_ _phi136467_)
        (let ((_ctx136469_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx136466_
           _phi136467_
           _ctx136469_))))
    (define gx#core-resolve-identifier
      (lambda _g142949_
        (let ((_g142948_ (##length _g142949_)))
          (cond ((##fx= _g142948_ 1)
                 (apply (lambda (_stx136460_)
                          (gx#core-resolve-identifier__0 _stx136460_))
                        _g142949_))
                ((##fx= _g142948_ 2)
                 (apply (lambda (_stx136466_ _phi136467_)
                          (gx#core-resolve-identifier__1
                           _stx136466_
                           _phi136467_))
                        _g142949_))
                ((##fx= _g142948_ 3)
                 (apply (lambda (_stx136471_ _phi136472_ _ctx136473_)
                          (gx#core-resolve-identifier__%
                           _stx136471_
                           _phi136472_
                           _ctx136473_))
                        _g142949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g142949_))))))
    (define gx#core-resolve-binding
      (lambda (_id136361_
               _phi136362_
               _src-phi136363_
               _ctx136364_
               _marks136365_)
        (letrec ((_resolve136367_
                  (lambda (_ctx136435_ _src-phi136436_ _key136437_)
                    (let _lp136439_ ((_ctx136441_
                                      (gx#core-context-shift
                                       _ctx136435_
                                       _phi136362_))
                                     (_dphi136442_
                                      (fx- _phi136362_ _src-phi136436_)))
                      (let ((_$e136444_
                             (gx#core-context-resolve
                              _ctx136441_
                              _key136437_)))
                        (if _$e136444_
                            (values _$e136444_)
                            (if (fxzero? _dphi136442_)
                                '#f
                                (if (fxpositive? _dphi136442_)
                                    (_lp136439_
                                     (gx#core-context-shift _ctx136441_ '-1)
                                     (fx- _dphi136442_ '1))
                                    (_lp136439_
                                     (gx#core-context-shift _ctx136441_ '1)
                                     (fx+ _dphi136442_ '1))))))))))
          (let _lp136369_ ((_ctx136371_ _ctx136364_)
                           (_src-phi136372_ _src-phi136363_)
                           (_rest136373_ _marks136365_))
            (let* ((_rest136374136382_ _rest136373_)
                   (_else136376136390_
                    (lambda ()
                      (_resolve136367_
                       _ctx136371_
                       _src-phi136372_
                       _id136361_)))
                   (_K136378136423_
                    (lambda (_rest136393_ _hd136394_)
                      (let* ((_hd136395136401_ _hd136394_)
                             (_E136397136405_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd136395136401_)))
                             (_K136398136415_
                              (lambda (_subst136408_)
                                (let ((_$e136412_
                                       (let ((_key136410_
                                              (if _subst136408_
                                                  (table-ref
                                                   _subst136408_
                                                   _id136361_
                                                   '#f)
                                                  '#f)))
                                         (if _key136410_
                                             (_resolve136367_
                                              _ctx136371_
                                              _src-phi136372_
                                              _key136410_)
                                             '#f))))
                                  (if _$e136412_
                                      _$e136412_
                                      (_lp136369_
                                       (##unchecked-structure-ref
                                        _hd136394_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd136394_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest136393_))))))
                        (if (##structure-instance-of?
                             _hd136395136401_
                             'gx#expander-mark::t)
                            (let* ((_e136399136418_
                                    (##unchecked-structure-ref
                                     _hd136395136401_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst136421_ _e136399136418_))
                              (_K136398136415_ _subst136421_))
                            (_E136397136405_))))))
              (if (##pair? _rest136374136382_)
                  (let ((_hd136379136426_ (##car _rest136374136382_))
                        (_tl136380136428_ (##cdr _rest136374136382_)))
                    (let* ((_hd136431_ _hd136379136426_)
                           (_rest136433_ _tl136380136428_))
                      (_K136378136423_ _rest136433_ _hd136431_)))
                  (_else136376136390_)))))))
    (define gx#core-bind!__%
      (lambda (_key136237_ _val136238_ _rebind?136239_ _phi136240_ _ctx136241_)
        (letrec ((_update-binding136243_
                  (lambda (_xval136314_)
                    (if (or (_rebind?136239_
                             _ctx136241_
                             _xval136314_
                             _val136238_)
                            (and (##structure-direct-instance-of?
                                  _xval136314_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval136314_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val136238_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val136238_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval136314_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val136238_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val136238_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval136314_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val136238_
                        (if (and (##structure-direct-instance-of?
                                  _val136238_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val136238_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval136314_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val136238_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval136314_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval136314_
                            (if (and (##structure-direct-instance-of?
                                      _val136238_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval136314_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key136237_
                                 (cons (##unchecked-structure-ref
                                        _val136238_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val136238_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval136314_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval136314_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval136314_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval136314_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key136237_
                                 _val136238_
                                 _xval136314_))))))
                 (_gensubst136244_
                  (lambda (_subst136309_ _id136310_)
                    (let ((_eid136312_
                           (gensym (if (uninterned-symbol? _id136310_)
                                       '%
                                       _id136310_))))
                      (table-set! _subst136309_ _id136310_ _eid136312_)
                      _eid136312_)))
                 (_subst!136245_
                  (lambda (_key136247_)
                    (let* ((_key136248136256_ _key136247_)
                           (_else136250136264_ (lambda () _key136247_))
                           (_K136252136297_
                            (lambda (_mark136267_ _id136268_)
                              (let* ((_mark136269136275_ _mark136267_)
                                     (_E136271136279_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark136269136275_)))
                                     (_K136272136289_
                                      (lambda (_subst136282_)
                                        (if (not _subst136282_)
                                            (let ((_subst136284_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark136267_
                                               _subst136284_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst136244_
                                               _subst136284_
                                               _id136268_))
                                            (let ((_$e136286_
                                                   (table-ref
                                                    _subst136282_
                                                    _id136268_
                                                    '#f)))
                                              (if _$e136286_
                                                  (values _$e136286_)
                                                  (_gensubst136244_
                                                   _subst136282_
                                                   _id136268_)))))))
                                (if (##structure-instance-of?
                                     _mark136269136275_
                                     'gx#expander-mark::t)
                                    (let* ((_e136273136292_
                                            (##unchecked-structure-ref
                                             _mark136269136275_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst136295_ _e136273136292_))
                                      (_K136272136289_ _subst136295_))
                                    (_E136271136279_))))))
                      (if (##pair? _key136248136256_)
                          (let ((_hd136253136300_ (##car _key136248136256_))
                                (_tl136254136302_ (##cdr _key136248136256_)))
                            (let* ((_id136305_ _hd136253136300_)
                                   (_mark136307_ _tl136254136302_))
                              (_K136252136297_ _mark136307_ _id136305_)))
                          (_else136250136264_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx136241_ _phi136240_)
           (_subst!136245_ _key136237_)
           _val136238_
           _update-binding136243_))))
    (define gx#core-bind!__0
      (lambda (_key136331_ _val136332_)
        (let* ((_rebind?136334_ false)
               (_phi136336_ (gx#current-expander-phi))
               (_ctx136338_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136331_
           _val136332_
           _rebind?136334_
           _phi136336_
           _ctx136338_))))
    (define gx#core-bind!__1
      (lambda (_key136340_ _val136341_ _rebind?136342_)
        (let* ((_phi136344_ (gx#current-expander-phi))
               (_ctx136346_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136340_
           _val136341_
           _rebind?136342_
           _phi136344_
           _ctx136346_))))
    (define gx#core-bind!__2
      (lambda (_key136348_ _val136349_ _rebind?136350_ _phi136351_)
        (let ((_ctx136353_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136348_
           _val136349_
           _rebind?136350_
           _phi136351_
           _ctx136353_))))
    (define gx#core-bind!
      (lambda _g142951_
        (let ((_g142950_ (##length _g142951_)))
          (cond ((##fx= _g142950_ 2)
                 (apply (lambda (_key136331_ _val136332_)
                          (gx#core-bind!__0 _key136331_ _val136332_))
                        _g142951_))
                ((##fx= _g142950_ 3)
                 (apply (lambda (_key136340_ _val136341_ _rebind?136342_)
                          (gx#core-bind!__1
                           _key136340_
                           _val136341_
                           _rebind?136342_))
                        _g142951_))
                ((##fx= _g142950_ 4)
                 (apply (lambda (_key136348_
                                 _val136349_
                                 _rebind?136350_
                                 _phi136351_)
                          (gx#core-bind!__2
                           _key136348_
                           _val136349_
                           _rebind?136350_
                           _phi136351_))
                        _g142951_))
                ((##fx= _g142950_ 5)
                 (apply (lambda (_key136355_
                                 _val136356_
                                 _rebind?136357_
                                 _phi136358_
                                 _ctx136359_)
                          (gx#core-bind!__%
                           _key136355_
                           _val136356_
                           _rebind?136357_
                           _phi136358_
                           _ctx136359_))
                        _g142951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g142951_))))))
    (define gx#core-identifier-key
      (lambda (_stx136171_)
        (if (symbol? _stx136171_)
            (let* ((_g136172136180_ (gx#current-expander-marks))
                   (_else136174136188_ (lambda () _stx136171_))
                   (_K136176136193_
                    (lambda (_hd136191_) (cons _stx136171_ _hd136191_))))
              (if (##pair? _g136172136180_)
                  (let* ((_hd136177136196_ (##car _g136172136180_))
                         (_hd136199_ _hd136177136196_))
                    (_K136176136193_ _hd136199_))
                  (_else136174136188_)))
            (if (gx#identifier? _stx136171_)
                (let* ((_id136201_ (gx#syntax-local-unwrap _stx136171_))
                       (_eid136203_ (gx#stx-e _id136201_))
                       (_marks136205_ (gx#stx-identifier-marks* _id136201_)))
                  (let* ((_marks136207136215_ _marks136205_)
                         (_else136209136223_ (lambda () _eid136203_))
                         (_K136211136228_
                          (lambda (_hd136226_) (cons _eid136203_ _hd136226_))))
                    (if (##pair? _marks136207136215_)
                        (let* ((_hd136212136231_ (##car _marks136207136215_))
                               (_hd136234_ _hd136212136231_))
                          (_K136211136228_ _hd136234_))
                        (_else136209136223_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx136171_)))))
    (define gx#core-context-shift
      (lambda (_ctx136116_ _phi136117_)
        (letrec ((_make-phi136119_
                  (lambda (_super136169_)
                    (let ((__obj142922 (make-object gx#phi-context::t '6)))
                      (gx#phi-context:::init!
                       __obj142922
                       (gensym 'phi)
                       _super136169_)
                      __obj142922)))
                 (_make-phi/up136120_
                  (lambda (_ctx136164_ _super136165_)
                    (let ((_ctx+1136167_ (_make-phi136119_ _super136165_)))
                      (##unchecked-structure-set!
                       _ctx136164_
                       _ctx+1136167_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1136167_
                       _ctx136164_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1136167_)))
                 (_make-phi/down136121_
                  (lambda (_ctx136159_ _super136160_)
                    (let ((_ctx-1136162_ (_make-phi136119_ _super136160_)))
                      (##unchecked-structure-set!
                       _ctx-1136162_
                       _ctx136159_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx136159_
                       _ctx-1136162_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1136162_)))
                 (_shift136122_
                  (lambda (_ctx136143_
                           _delta136144_
                           _make-delta-context136145_
                           _phi136146_
                           _K136147_)
                    (let ((_$e136149_
                           (##unchecked-structure-ref
                            _ctx136143_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e136149_
                          ((lambda (_super136152_)
                             (let* ((_super136154_
                                     (_K136147_ _super136152_ _delta136144_))
                                    (_ctx+d136156_
                                     (_make-delta-context136145_
                                      _ctx136143_
                                      _super136154_)))
                               (_K136147_
                                _ctx+d136156_
                                (fx- _phi136146_ _delta136144_))))
                           _$e136149_)
                          (error '"Bad context" _ctx136143_))))))
          (let _K136124_ ((_ctx136126_ _ctx136116_) (_phi136127_ _phi136117_))
            (if (fxzero? _phi136127_)
                _ctx136126_
                (if (fx> (##vector-length _ctx136126_) '3)
                    (if (fxpositive? _phi136127_)
                        (let ((_$e136129_
                               (##unchecked-structure-ref
                                _ctx136126_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e136129_
                              ((lambda (_g136131136133_)
                                 (_K136124_
                                  _g136131136133_
                                  (fx- _phi136127_ '1)))
                               _$e136129_)
                              (_shift136122_
                               _ctx136126_
                               '1
                               _make-phi/up136120_
                               _phi136127_
                               _K136124_)))
                        (let ((_$e136136_
                               (##unchecked-structure-ref
                                _ctx136126_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e136136_
                              ((lambda (_g136138136140_)
                                 (_K136124_
                                  _g136138136140_
                                  (fx+ _phi136127_ '1)))
                               _$e136136_)
                              (_shift136122_
                               _ctx136126_
                               '-1
                               _make-phi/down136121_
                               _phi136127_
                               _K136124_))))
                    _ctx136126_))))))
    (define gx#core-context-get
      (lambda (_ctx136113_ _key136114_)
        (table-ref
         (##unchecked-structure-ref _ctx136113_ '2 gx#expander-context::t '#f)
         _key136114_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx136109_ _key136110_ _val136111_)
        (table-set!
         (##unchecked-structure-ref _ctx136109_ '2 gx#expander-context::t '#f)
         _key136110_
         _val136111_)))
    (define gx#core-context-resolve
      (lambda (_ctx136096_ _key136097_)
        (let _lp136099_ ((_ctx136101_ _ctx136096_))
          (let ((_$e136103_ (gx#core-context-get _ctx136101_ _key136097_)))
            (if _$e136103_
                (values _$e136103_)
                (let ((_$e136106_
                       (if (fx> (##vector-length _ctx136101_) '3)
                           (##unchecked-structure-ref
                            _ctx136101_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e136106_ (_lp136099_ _$e136106_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx136086_ _key136087_ _val136088_ _rebind136089_)
        (let ((_$e136091_ (gx#core-context-get _ctx136086_ _key136087_)))
          (if _$e136091_
              ((lambda (_xval136094_)
                 (gx#core-context-put!
                  _ctx136086_
                  _key136087_
                  (_rebind136089_ _xval136094_)))
               _$e136091_)
              (gx#core-context-put! _ctx136086_ _key136087_ _val136088_)))))
    (define gx#core-context-top__%
      (lambda (_ctx136064_ _stop?136065_)
        (let _lp136067_ ((_ctx136069_ _ctx136064_))
          (if (_stop?136065_ _ctx136069_)
              _ctx136069_
              (if (##structure-instance-of? _ctx136069_ 'gx#context-phi::t)
                  (_lp136067_
                   (##unchecked-structure-ref
                    _ctx136069_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx136075_ (gx#current-expander-context))
               (_stop?136077_ gx#top-context?))
          (gx#core-context-top__% _ctx136075_ _stop?136077_))))
    (define gx#core-context-top__1
      (lambda (_ctx136079_)
        (let ((_stop?136081_ gx#top-context?))
          (gx#core-context-top__% _ctx136079_ _stop?136081_))))
    (define gx#core-context-top
      (lambda _g142953_
        (let ((_g142952_ (##length _g142953_)))
          (cond ((##fx= _g142952_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g142953_))
                ((##fx= _g142952_ 1)
                 (apply (lambda (_ctx136079_)
                          (gx#core-context-top__1 _ctx136079_))
                        _g142953_))
                ((##fx= _g142952_ 2)
                 (apply (lambda (_ctx136083_ _stop?136084_)
                          (gx#core-context-top__% _ctx136083_ _stop?136084_))
                        _g142953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g142953_))))))
    (define gx#core-context-root__%
      (lambda (_ctx136049_)
        (let _lp136051_ ((_ctx136053_ _ctx136049_))
          (if (##structure-instance-of? _ctx136053_ 'gx#context-phi::t)
              (_lp136051_
               (##unchecked-structure-ref
                _ctx136053_
                '3
                gx#phi-context::t
                '#f))
              _ctx136053_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx136059_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx136059_))))
    (define gx#core-context-root
      (lambda _g142955_
        (let ((_g142954_ (##length _g142955_)))
          (cond ((##fx= _g142954_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g142955_))
                ((##fx= _g142954_ 1)
                 (apply (lambda (_ctx136061_)
                          (gx#core-context-root__% _ctx136061_))
                        _g142955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g142955_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx136030_ . __136027136031_)
        (let ((_$e136034_ (gx#current-expander-allow-rebind?)))
          (if _$e136034_
              _$e136034_
              (if (##structure-instance-of? _ctx136030_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx136030_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx136030_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx136041_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx136041_))))
    (define gx#core-context-rebind?
      (lambda _g142957_
        (let ((_g142956_ (##length _g142957_)))
          (cond ((##fx= _g142956_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g142957_))
                ((##fx= _g142956_ 1)
                 (apply (lambda (_ctx136043_)
                          (gx#core-context-rebind?__% _ctx136043_))
                        _g142957_))
                ((##fx>= _g142956_ 1)
                 (apply gx#core-context-rebind?__% _g142957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g142957_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx136013_)
        (let ((_$e136015_ (gx#core-context-top__1 _ctx136013_)))
          (if _$e136015_
              ((lambda (_ctx136018_)
                 (if (##structure-instance-of?
                      _ctx136018_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx136018_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e136015_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx136024_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx136024_))))
    (define gx#core-context-namespace
      (lambda _g142959_
        (let ((_g142958_ (##length _g142959_)))
          (cond ((##fx= _g142958_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g142959_))
                ((##fx= _g142958_ 1)
                 (apply (lambda (_ctx136026_)
                          (gx#core-context-namespace__% _ctx136026_))
                        _g142959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g142959_))))))
    (define gx#expander-binding?__%
      (lambda (_bind135999_ _is?136000_)
        (if (##structure-direct-instance-of?
             _bind135999_
             'gx#syntax-binding::t)
            (_is?136000_
             (##unchecked-structure-ref
              _bind135999_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind136005_)
        (let ((_is?136007_ gx#expander?))
          (gx#expander-binding?__% _bind136005_ _is?136007_))))
    (define gx#expander-binding?
      (lambda _g142961_
        (let ((_g142960_ (##length _g142961_)))
          (cond ((##fx= _g142960_ 1)
                 (apply (lambda (_bind136005_)
                          (gx#expander-binding?__0 _bind136005_))
                        _g142961_))
                ((##fx= _g142960_ 2)
                 (apply (lambda (_bind136009_ _is?136010_)
                          (gx#expander-binding?__% _bind136009_ _is?136010_))
                        _g142961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g142961_))))))
    (define gx#core-expander-binding?
      (lambda (_bind135996_)
        (gx#expander-binding?__% _bind135996_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind135994_)
        (gx#expander-binding?__% _bind135994_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind135988_)
        (letrec ((_direct-special-form?135990_
                  (lambda (_obj135992_)
                    (##structure-direct-instance-of?
                     _obj135992_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind135988_
           _direct-special-form?135990_))))
    (define gx#special-form-binding?
      (lambda (_bind135986_)
        (gx#expander-binding?__% _bind135986_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind135977_)
        (letrec ((_feature?135979_
                  (lambda (_e135981_)
                    (let ((_$e135983_
                           (##structure-instance-of?
                            _e135981_
                            'gx#feature-expander::t)))
                      (if _$e135983_
                          _$e135983_
                          (##structure-instance-of?
                           _e135981_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind135977_ _feature?135979_))))
    (define gx#private-feature-binding?
      (lambda (_bind135975_)
        (gx#expander-binding?__% _bind135975_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id135962_ _bound?135963_)
        (if (gx#identifier? _id135962_)
            (_bound?135963_ (gx#resolve-identifier__0 _id135962_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id135968_)
        (let ((_bound?135970_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id135968_ _bound?135970_))))
    (define gx#core-bound-identifier?
      (lambda _g142963_
        (let ((_g142962_ (##length _g142963_)))
          (cond ((##fx= _g142962_ 1)
                 (apply (lambda (_id135968_)
                          (gx#core-bound-identifier?__0 _id135968_))
                        _g142963_))
                ((##fx= _g142962_ 2)
                 (apply (lambda (_id135972_ _bound?135973_)
                          (gx#core-bound-identifier?__%
                           _id135972_
                           _bound?135973_))
                        _g142963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g142963_))))))
    (define gx#core-identifier=?
      (lambda (_x135952_ _y135953_)
        (letrec ((_y=?135955_
                  (lambda (_xid135959_)
                    ((if (list? _y135953_) memq eq?) _xid135959_ _y135953_))))
          (let ((_bind135957_ (gx#resolve-identifier__0 _x135952_)))
            (if (##structure-instance-of? _bind135957_ 'gx#binding::t)
                (_y=?135955_
                 (##unchecked-structure-ref _bind135957_ '1 gx#binding::t '#f))
                (_y=?135955_ (gx#stx-e _x135952_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e135950_)
        (if (interned-symbol? _e135950_)
            (string-index (symbol->string _e135950_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx135905_ _src135906_ _ctx135907_ _marks135908_)
        (if (##structure? _stx135905_)
            (let ((_$e135910_ (gx#sealed-syntax-unwrap _stx135905_)))
              (if _$e135910_
                  (values _$e135910_)
                  (if (gx#identifier? _stx135905_)
                      (let ((_id135913_
                             (gx#stx-unwrap__% _stx135905_ _marks135908_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id135913_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e135915_
                                (##unchecked-structure-ref
                                 _id135913_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e135915_ _$e135915_ _src135906_))
                         _ctx135907_
                         (##unchecked-structure-ref
                          _id135913_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx135905_)
                       (let ((_$e135918_ (gx#stx-source _stx135905_)))
                         (if _$e135918_ _$e135918_ _src135906_))
                       _ctx135907_
                       (reverse _marks135908_)))))
            (##structure
             gx#syntax-quote::t
             _stx135905_
             _src135906_
             _ctx135907_
             (reverse _marks135908_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx135924_)
        (let* ((_src135926_ '#f)
               (_ctx135928_ (gx#current-expander-context))
               (_marks135930_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135924_
           _src135926_
           _ctx135928_
           _marks135930_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx135932_ _src135933_)
        (let* ((_ctx135935_ (gx#current-expander-context))
               (_marks135937_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135932_
           _src135933_
           _ctx135935_
           _marks135937_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx135939_ _src135940_ _ctx135941_)
        (let ((_marks135943_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135939_
           _src135940_
           _ctx135941_
           _marks135943_))))
    (define gx#core-quote-syntax
      (lambda _g142965_
        (let ((_g142964_ (##length _g142965_)))
          (cond ((##fx= _g142964_ 1)
                 (apply (lambda (_stx135924_)
                          (gx#core-quote-syntax__0 _stx135924_))
                        _g142965_))
                ((##fx= _g142964_ 2)
                 (apply (lambda (_stx135932_ _src135933_)
                          (gx#core-quote-syntax__1 _stx135932_ _src135933_))
                        _g142965_))
                ((##fx= _g142964_ 3)
                 (apply (lambda (_stx135939_ _src135940_ _ctx135941_)
                          (gx#core-quote-syntax__2
                           _stx135939_
                           _src135940_
                           _ctx135941_))
                        _g142965_))
                ((##fx= _g142964_ 4)
                 (apply (lambda (_stx135945_
                                 _src135946_
                                 _ctx135947_
                                 _marks135948_)
                          (gx#core-quote-syntax__%
                           _stx135945_
                           _src135946_
                           _ctx135947_
                           _marks135948_))
                        _g142965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g142965_))))))
    (define gx#core-cons
      (lambda (_hd135901_ _tl135902_)
        (cons (gx#core-quote-syntax__0 _hd135901_) _tl135902_)))
    (define gx#core-list
      (lambda (_hd135898_ . _rest135899_)
        (cons (gx#core-quote-syntax__0 _hd135898_) _rest135899_)))
    (define gx#core-cons*
      (lambda (_hd135895_ . _rest135896_)
        (apply cons* (gx#core-quote-syntax__0 _hd135895_) _rest135896_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path135869_ _rel135870_)
        (let ((_path135882_ (gx#stx-e _stx-path135869_))
              (_reldir135883_
               (let _lp135872_ ((_relsrc135874_
                                 (let ((_$e135879_
                                        (gx#stx-source _stx-path135869_)))
                                   (if _$e135879_ _$e135879_ _rel135870_))))
                 (if (##structure-instance-of? _relsrc135874_ 'gerbil#AST::t)
                     (_lp135872_
                      (let ((_$e135876_ (gx#stx-source _relsrc135874_)))
                        (if _$e135876_ _$e135876_ (gx#stx-e _relsrc135874_))))
                     (if (source-location-path? _relsrc135874_)
                         (path-directory (source-location-path _relsrc135874_))
                         (if (string? _relsrc135874_)
                             (path-directory _relsrc135874_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path135882_ (path-normalize _reldir135883_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path135888_)
        (let ((_rel135890_ '#f))
          (gx#core-resolve-path__% _stx-path135888_ _rel135890_))))
    (define gx#core-resolve-path
      (lambda _g142967_
        (let ((_g142966_ (##length _g142967_)))
          (cond ((##fx= _g142966_ 1)
                 (apply (lambda (_stx-path135888_)
                          (gx#core-resolve-path__0 _stx-path135888_))
                        _g142967_))
                ((##fx= _g142966_ 2)
                 (apply (lambda (_stx-path135892_ _rel135893_)
                          (gx#core-resolve-path__%
                           _stx-path135892_
                           _rel135893_))
                        _g142967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g142967_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr135825_ _ctx135826_)
        (let* ((_repr135827135834_ _repr135825_)
               (_E135829135838_
                (lambda () (error '"No clause matching" _repr135827135834_)))
               (_K135830135846_
                (lambda (_subs135841_ _phi135842_)
                  (let ((_subst135844_
                         (if (not (null? _subs135841_))
                             (list->table _subs135841_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst135844_
                     _ctx135826_
                     _phi135842_
                     '#f)))))
          (if (##pair? _repr135827135834_)
              (let ((_hd135831135849_ (##car _repr135827135834_))
                    (_tl135832135851_ (##cdr _repr135827135834_)))
                (let* ((_phi135854_ _hd135831135849_)
                       (_subs135856_ _tl135832135851_))
                  (_K135830135846_ _subs135856_ _phi135854_)))
              (_E135829135838_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr135861_)
        (let ((_ctx135863_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr135861_ _ctx135863_))))
    (define gx#core-deserialize-mark
      (lambda _g142969_
        (let ((_g142968_ (##length _g142969_)))
          (cond ((##fx= _g142968_ 1)
                 (apply (lambda (_repr135861_)
                          (gx#core-deserialize-mark__0 _repr135861_))
                        _g142969_))
                ((##fx= _g142968_ 2)
                 (apply (lambda (_repr135865_ _ctx135866_)
                          (gx#core-deserialize-mark__%
                           _repr135865_
                           _ctx135866_))
                        _g142969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g142969_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx135822_)
        (gx#stx-rewrap _stx135822_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx135820_)
        (gx#stx-unwrap__% _stx135820_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx135790_)
        (let* ((_g135791135799_ (gx#current-expander-marks))
               (_else135793135807_ (lambda () _stx135790_))
               (_K135795135812_
                (lambda (_hd135810_)
                  (gx#stx-apply-mark _stx135790_ _hd135810_))))
          (if (##pair? _g135791135799_)
              (let* ((_hd135796135815_ (##car _g135791135799_))
                     (_hd135818_ _hd135796135815_))
                (_K135795135812_ _hd135818_))
              (_else135793135807_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx135775_ _E135776_)
        (let ((_bind135778_ (gx#resolve-identifier__0 _stx135775_)))
          (if (##structure-direct-instance-of?
               _bind135778_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind135778_
               '4
               gx#syntax-binding::t
               '#f)
              (_E135776_ _stx135775_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx135783_)
        (let ((_E135785_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx135783_ _E135785_))))
    (define gx#syntax-local-e
      (lambda _g142971_
        (let ((_g142970_ (##length _g142971_)))
          (cond ((##fx= _g142970_ 1)
                 (apply (lambda (_stx135783_)
                          (gx#syntax-local-e__0 _stx135783_))
                        _g142971_))
                ((##fx= _g142970_ 2)
                 (apply (lambda (_stx135787_ _E135788_)
                          (gx#syntax-local-e__% _stx135787_ _E135788_))
                        _g142971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g142971_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx135759_ _E135760_)
        (let ((_e135762_ (gx#syntax-local-e__% _stx135759_ _E135760_)))
          (if (##structure-instance-of? _e135762_ 'gx#expander::t)
              (##structure-ref _e135762_ '1 gx#expander::t '#f)
              _e135762_))))
    (define gx#syntax-local-value__0
      (lambda (_stx135767_)
        (let ((_E135769_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx135767_ _E135769_))))
    (define gx#syntax-local-value
      (lambda _g142973_
        (let ((_g142972_ (##length _g142973_)))
          (cond ((##fx= _g142972_ 1)
                 (apply (lambda (_stx135767_)
                          (gx#syntax-local-value__0 _stx135767_))
                        _g142973_))
                ((##fx= _g142972_ 2)
                 (apply (lambda (_stx135771_ _E135772_)
                          (gx#syntax-local-value__% _stx135771_ _E135772_))
                        _g142973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g142973_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx135756_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx135756_)))))
