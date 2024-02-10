(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707556026)
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
      (lambda _$args138681_
        (apply make-struct-instance gx#expander-context::t _$args138681_)))
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
      (lambda _$args138678_
        (apply make-struct-instance gx#root-context::t _$args138678_)))
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
      (lambda _$args138675_
        (apply make-struct-instance gx#phi-context::t _$args138675_)))
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
      (lambda _$args138672_
        (apply make-struct-instance gx#top-context::t _$args138672_)))
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
      (lambda _$args138669_
        (apply make-struct-instance gx#module-context::t _$args138669_)))
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
      (lambda _$args138666_
        (apply make-struct-instance gx#prelude-context::t _$args138666_)))
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
      (lambda _$args138663_
        (apply make-struct-instance gx#local-context::t _$args138663_)))
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
      (lambda (_self138647_ _id138648_ _super138649_)
        (if (##fx< '3 (##structure-length _self138647_))
            (begin
              (##unchecked-structure-set!
               _self138647_
               _id138648_
               '1
               (##structure-type _self138647_)
               '#f)
              (##unchecked-structure-set!
               _self138647_
               (make-table 'test: eq?)
               '2
               (##structure-type _self138647_)
               '#f)
              (##unchecked-structure-set!
               _self138647_
               _super138649_
               '3
               (##structure-type _self138647_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self138647_
                   '3
                   (##vector-length _self138647_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self138654_ _id138655_)
        (let ((_super138657_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self138654_ _id138655_ _super138657_))))
    (define gx#phi-context:::init!
      (lambda _g142918_
        (let ((_g142917_ (##length _g142918_)))
          (cond ((##fx= _g142917_ 2)
                 (apply (lambda (_self138654_ _id138655_)
                          (gx#phi-context:::init!__0 _self138654_ _id138655_))
                        _g142918_))
                ((##fx= _g142917_ 3)
                 (apply (lambda (_self138659_ _id138660_ _super138661_)
                          (gx#phi-context:::init!__%
                           _self138659_
                           _id138660_
                           _super138661_))
                        _g142918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g142918_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self138511_ _super138512_)
        (if (##fx< '3 (##structure-length _self138511_))
            (begin
              (##unchecked-structure-set!
               _self138511_
               (gensym 'L)
               '1
               (##structure-type _self138511_)
               '#f)
              (##unchecked-structure-set!
               _self138511_
               (make-table 'test: eq?)
               '2
               (##structure-type _self138511_)
               '#f)
              (##unchecked-structure-set!
               _self138511_
               _super138512_
               '3
               (##structure-type _self138511_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self138511_
                   '3
                   (##vector-length _self138511_)))))
    (define gx#local-context:::init!__0
      (lambda (_self138517_)
        (let ((_super138519_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self138517_ _super138519_))))
    (define gx#local-context:::init!
      (lambda _g142920_
        (let ((_g142919_ (##length _g142920_)))
          (cond ((##fx= _g142919_ 1)
                 (apply (lambda (_self138517_)
                          (gx#local-context:::init!__0 _self138517_))
                        _g142920_))
                ((##fx= _g142919_ 2)
                 (apply (lambda (_self138521_ _super138522_)
                          (gx#local-context:::init!__%
                           _self138521_
                           _super138522_))
                        _g142920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g142920_))))))
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
      (lambda _$args138385_
        (apply make-struct-instance gx#binding::t _$args138385_)))
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
      (lambda _$args138382_
        (apply make-struct-instance gx#runtime-binding::t _$args138382_)))
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
      (lambda _$args138379_
        (apply make-struct-instance gx#local-binding::t _$args138379_)))
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
      (lambda _$args138376_
        (apply make-struct-instance gx#top-binding::t _$args138376_)))
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
      (lambda _$args138373_
        (apply make-struct-instance gx#module-binding::t _$args138373_)))
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
      (lambda _$args138370_
        (apply make-struct-instance gx#extern-binding::t _$args138370_)))
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
      (lambda _$args138367_
        (apply make-struct-instance gx#syntax-binding::t _$args138367_)))
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
      (lambda _$args138364_
        (apply make-struct-instance gx#import-binding::t _$args138364_)))
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
      (lambda _$args138361_
        (apply make-struct-instance gx#alias-binding::t _$args138361_)))
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
      (lambda _$args138358_
        (apply make-struct-instance gx#expander::t _$args138358_)))
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
      (lambda _$args138355_
        (apply make-struct-instance gx#core-expander::t _$args138355_)))
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
      (lambda _$args138352_
        (apply make-struct-instance gx#expression-form::t _$args138352_)))
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
      (lambda _$args138349_
        (apply make-struct-instance gx#special-form::t _$args138349_)))
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
      (lambda _$args138346_
        (apply make-struct-instance gx#definition-form::t _$args138346_)))
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
      (lambda _$args138343_
        (apply make-struct-instance gx#top-special-form::t _$args138343_)))
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
      (lambda _$args138340_
        (apply make-struct-instance gx#module-special-form::t _$args138340_)))
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
      (lambda _$args138337_
        (apply make-struct-instance gx#feature-expander::t _$args138337_)))
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
      (lambda _$args138334_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args138334_)))
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
      (lambda _$args138331_
        (apply make-struct-instance gx#reserved-expander::t _$args138331_)))
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
      (lambda _$args138328_
        (apply make-struct-instance gx#macro-expander::t _$args138328_)))
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
      (lambda _$args138325_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args138325_)))
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
      (lambda _$args138322_
        (apply make-struct-instance gx#user-expander::t _$args138322_)))
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
      (lambda _$args138319_
        (apply make-struct-instance gx#expander-mark::t _$args138319_)))
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
      (lambda (_ctx138304_ _message138305_ _stx138306_ . _details138307_)
        (let ((_ctx138317_
               (let ((_$e138309_ _ctx138304_))
                 (if _$e138309_
                     _$e138309_
                     (let ((_$e138312_ (gx#core-context-top__0)))
                       (if _$e138312_
                           ((lambda (_ctx138315_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx138315_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e138312_)
                           '#f))))))
          (raise (make-syntax-error
                  _message138305_
                  (cons _stx138306_ _details138307_)
                  _ctx138317_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx138291_ _expression?138292_)
        (gx#eval-syntax* (gx#core-expand__% _stx138291_ _expression?138292_))))
    (define gx#eval-syntax__0
      (lambda (_stx138297_)
        (let ((_expression?138299_ '#f))
          (gx#eval-syntax__% _stx138297_ _expression?138299_))))
    (define gx#eval-syntax
      (lambda _g142922_
        (let ((_g142921_ (##length _g142922_)))
          (cond ((##fx= _g142921_ 1)
                 (apply (lambda (_stx138297_) (gx#eval-syntax__0 _stx138297_))
                        _g142922_))
                ((##fx= _g142921_ 2)
                 (apply (lambda (_stx138301_ _expression?138302_)
                          (gx#eval-syntax__% _stx138301_ _expression?138302_))
                        _g142922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g142922_))))))
    (define gx#eval-syntax*
      (lambda (_stx138288_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx138288_))))
    (define gx#core-expand__%
      (lambda (_stx138275_ _expression?138276_)
        (if _expression?138276_
            (gx#core-expand-expression _stx138275_)
            (gx#core-expand-top _stx138275_))))
    (define gx#core-expand__0
      (lambda (_stx138281_)
        (let ((_expression?138283_ '#f))
          (gx#core-expand__% _stx138281_ _expression?138283_))))
    (define gx#core-expand
      (lambda _g142924_
        (let ((_g142923_ (##length _g142924_)))
          (cond ((##fx= _g142923_ 1)
                 (apply (lambda (_stx138281_) (gx#core-expand__0 _stx138281_))
                        _g142924_))
                ((##fx= _g142923_ 2)
                 (apply (lambda (_stx138285_ _expression?138286_)
                          (gx#core-expand__% _stx138285_ _expression?138286_))
                        _g142924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g142924_))))))
    (define gx#core-expand-top
      (lambda (_stx138242_)
        (let* ((_stx138244_ (gx#core-expand*__0 _stx138242_))
               (_e138245138252_ _stx138244_)
               (_E138247138256_
                (lambda () (gx#core-expand-expression _stx138244_)))
               (_E138246138270_
                (lambda ()
                  (if (gx#stx-pair? _e138245138252_)
                      (let ((_e138248138260_ (gx#syntax-e _e138245138252_)))
                        (let ((_hd138249138263_ (##car _e138248138260_))
                              (_tl138250138265_ (##cdr _e138248138260_)))
                          (let ((_form138268_ _hd138249138263_))
                            (if (gx#core-bound-identifier?__0 _form138268_)
                                _stx138244_
                                (_E138247138256_)))))
                      (_E138247138256_)))))
          (_E138246138270_))))
    (define gx#core-expand-expression
      (lambda (_stx138189_)
        (letrec ((_sealed-expression?138191_
                  (lambda (_hd138212_)
                    (if (gx#sealed-syntax? _hd138212_)
                        (let* ((_e138213138220_ _hd138212_)
                               (_E138215138224_ (lambda () '#f))
                               (_E138214138238_
                                (lambda ()
                                  (if (gx#stx-pair? _e138213138220_)
                                      (let ((_e138216138228_
                                             (gx#syntax-e _e138213138220_)))
                                        (let ((_hd138217138231_
                                               (##car _e138216138228_))
                                              (_tl138218138233_
                                               (##cdr _e138216138228_)))
                                          (let ((_form138236_
                                                 _hd138217138231_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form138236_
                                                 gx#expression-form-binding?)
                                                (_E138215138224_)))))
                                      (_E138215138224_)))))
                          (_E138214138238_))
                        '#f)))
                 (_illegal-expression138192_
                  (lambda (_hd138210_ . _g142925_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx138189_
                     _hd138210_)))
                 (_expand-e138193_
                  (lambda (_form138205_ _hd138206_)
                    (let ((_bind138208_
                           (if (##structure-instance-of?
                                _form138205_
                                'gx#binding::t)
                               _form138205_
                               (gx#resolve-identifier__0 _form138205_))))
                      (if (gx#core-expander-binding? _bind138208_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind138208_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd138206_
                            (gx#stx-source _stx138189_)))
                          (if (##structure-direct-instance-of?
                               _bind138208_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind138208_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd138206_
                                 (gx#stx-source _stx138189_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx138189_
                               _form138205_)))))))
          (let ((_hd138195_ (gx#core-expand-head _stx138189_)))
            (if (_sealed-expression?138191_ _hd138195_)
                _hd138195_
                (if (gx#stx-pair? _hd138195_)
                    (let* ((_form138197_ (gx#stx-car _hd138195_))
                           (_bind138199_
                            (if (gx#identifier? _form138197_)
                                (gx#resolve-identifier__0 _form138197_)
                                '#f)))
                      (if (or (not _bind138199_)
                              (not (gx#core-expander-binding? _bind138199_)))
                          (_expand-e138193_ '%%app (cons '%%app _hd138195_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind138199_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd138195_
                               _illegal-expression138192_)
                              (if (gx#expression-form-binding? _bind138199_)
                                  (_expand-e138193_ _bind138199_ _hd138195_)
                                  (if (gx#direct-special-form-binding?
                                       _bind138199_)
                                      (gx#core-expand-expression
                                       (_expand-e138193_
                                        _bind138199_
                                        _hd138195_))
                                      (_illegal-expression138192_
                                       _hd138195_))))))
                    (if (gx#core-bound-identifier?__0 _hd138195_)
                        (_illegal-expression138192_ _hd138195_)
                        (if (gx#identifier? _hd138195_)
                            (_expand-e138193_
                             '%%ref
                             (cons '%%ref (cons _hd138195_ '())))
                            (if (gx#stx-datum? _hd138195_)
                                (_expand-e138193_
                                 '%#quote
                                 (cons '%#quote (cons _hd138195_ '())))
                                (_illegal-expression138192_
                                 _hd138195_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx138184_)
        (call-with-parameters
         (lambda ()
           (let ((_stx138187_ (gx#core-expand-expression _stx138184_)))
             (values _stx138187_ (gx#eval-syntax* _stx138187_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx138165_ _stop?138166_)
        (let _lp138168_ ((_stx138170_ _stx138165_))
          (if (_stop?138166_ _stx138170_)
              _stx138170_
              (let ((_rstx138172_ (gx#core-expand1 _stx138170_)))
                (if (eq? _stx138170_ _rstx138172_)
                    _stx138170_
                    (_lp138168_ _rstx138172_)))))))
    (define gx#core-expand*__0
      (lambda (_stx138177_)
        (let ((_stop?138179_ false))
          (gx#core-expand*__% _stx138177_ _stop?138179_))))
    (define gx#core-expand*
      (lambda _g142927_
        (let ((_g142926_ (##length _g142927_)))
          (cond ((##fx= _g142926_ 1)
                 (apply (lambda (_stx138177_) (gx#core-expand*__0 _stx138177_))
                        _g142927_))
                ((##fx= _g142926_ 2)
                 (apply (lambda (_stx138181_ _stop?138182_)
                          (gx#core-expand*__% _stx138181_ _stop?138182_))
                        _g142927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g142927_))))))
    (define gx#core-expand1
      (lambda (_stx138121_)
        (letrec ((_step138123_
                  (lambda (_hd138160_)
                    (let ((_bind138162_ (gx#resolve-identifier__0 _hd138160_)))
                      (if (##structure-instance-of?
                           _bind138162_
                           'gx#runtime-binding::t)
                          _stx138121_
                          (if (##structure-direct-instance-of?
                               _bind138162_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind138162_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx138121_)
                              (if (not _bind138162_)
                                  _stx138121_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx138121_))))))))
          (let* ((_e138124138132_ _stx138121_)
                 (_E138130138136_ (lambda () _stx138121_))
                 (_E138126138142_
                  (lambda ()
                    (let ((_hd138140_ _e138124138132_))
                      (if (gx#identifier? _hd138140_)
                          (_step138123_ _hd138140_)
                          (_E138130138136_)))))
                 (_E138125138156_
                  (lambda ()
                    (if (gx#stx-pair? _e138124138132_)
                        (let ((_e138127138146_ (gx#syntax-e _e138124138132_)))
                          (let ((_hd138128138149_ (##car _e138127138146_))
                                (_tl138129138151_ (##cdr _e138127138146_)))
                            (let ((_hd138154_ _hd138128138149_))
                              (if (gx#identifier? _hd138154_)
                                  (_step138123_ _hd138154_)
                                  (_E138126138142_)))))
                        (_E138126138142_)))))
            (_E138125138156_)))))
    (define gx#core-expand-head
      (lambda (_stx138087_)
        (letrec ((_stop?138089_
                  (lambda (_stx138091_)
                    (let* ((_e138092138099_ _stx138091_)
                           (_E138094138103_ (lambda () '#f))
                           (_E138093138117_
                            (lambda ()
                              (if (gx#stx-pair? _e138092138099_)
                                  (let ((_e138095138107_
                                         (gx#syntax-e _e138092138099_)))
                                    (let ((_hd138096138110_
                                           (##car _e138095138107_))
                                          (_tl138097138112_
                                           (##cdr _e138095138107_)))
                                      (let ((_hd138115_ _hd138096138110_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd138115_)
                                            (_E138094138103_)))))
                                  (_E138094138103_)))))
                      (_E138093138117_)))))
          (gx#core-expand*__% _stx138087_ _stop?138089_))))
    (define gx#core-expand-block__%
      (lambda (_stx137893_
               _expand-special137894_
               _begin-form137895_
               _expand-e137896_)
        (letrec ((_expand-splice137898_
                  (lambda (_hd138061_ _body138062_ _rest138063_ _r138064_)
                    (if (gx#stx-list? _body138062_)
                        (_K137902_
                         (gx#stx-foldr cons _rest138063_ _body138062_)
                         _r138064_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx137893_
                         _hd138061_))))
                 (_expand-cond-expand137899_
                  (lambda (_hd138057_ _rest138058_ _r138059_)
                    (_K137902_
                     (cons (gx#core-expand-cond-expand% _hd138057_)
                           _rest138058_)
                     _r138059_)))
                 (_expand-include137900_
                  (lambda (_hd138006_ _rest138007_ _r138008_)
                    (let* ((_e138009138019_ _hd138006_)
                           (_E138011138023_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e138009138019_)))
                           (_E138010138053_
                            (lambda ()
                              (if (gx#stx-pair? _e138009138019_)
                                  (let ((_e138012138027_
                                         (gx#syntax-e _e138009138019_)))
                                    (let ((_hd138013138030_
                                           (##car _e138012138027_))
                                          (_tl138014138032_
                                           (##cdr _e138012138027_)))
                                      (if (gx#stx-pair? _tl138014138032_)
                                          (let ((_e138015138035_
                                                 (gx#syntax-e
                                                  _tl138014138032_)))
                                            (let ((_hd138016138038_
                                                   (##car _e138015138035_))
                                                  (_tl138017138040_
                                                   (##cdr _e138015138035_)))
                                              (let ((_path138043_
                                                     _hd138016138038_))
                                                (if (gx#stx-null?
                                                     _tl138017138040_)
                                                    (if (gx#stx-string?
                                                         _path138043_)
                                                        (let* ((_rpath138045_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path138043_
                         (gx#stx-source _hd138006_)))
                       (_block138047_
                        (gx#core-expand-include%__% _hd138006_ _rpath138045_))
                       (_rbody138050_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block138047_
                            _expand-special137894_
                            '#f
                            _expand-e137896_))
                         gx#current-expander-path
                         (cons _rpath138045_ (gx#current-expander-path)))))
                  (_K137902_
                   _rest138007_
                   (foldr1 cons _r138008_ _rbody138050_)))
                (_E138011138023_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E138011138023_)))))
                                          (_E138011138023_))))
                                  (_E138011138023_)))))
                      (_E138010138053_))))
                 (_expand-expression137901_
                  (lambda (_hd138002_ _rest138003_ _r138004_)
                    (_K137902_
                     _rest138003_
                     (cons (_expand-e137896_ _hd138002_) _r138004_))))
                 (_K137902_
                  (lambda (_rest137932_ _r137933_)
                    (let* ((_e137934137941_ _rest137932_)
                           (_E137936137945_
                            (lambda ()
                              (if _begin-form137895_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form137895_
                                    (reverse _r137933_))
                                   (gx#stx-source _stx137893_))
                                  _r137933_)))
                           (_E137935137998_
                            (lambda ()
                              (if (gx#stx-pair? _e137934137941_)
                                  (let ((_e137937137949_
                                         (gx#syntax-e _e137934137941_)))
                                    (let ((_hd137938137952_
                                           (##car _e137937137949_))
                                          (_tl137939137954_
                                           (##cdr _e137937137949_)))
                                      (let* ((_hd137957_ _hd137938137952_)
                                             (_rest137959_ _tl137939137954_))
                                        (if '#t
                                            (let* ((_hd137961_
                                                    (gx#core-expand-head
                                                     _hd137957_))
                                                   (_e137962137969_ _hd137961_)
                                                   (_E137964137973_
                                                    (lambda ()
                                                      (_expand-expression137901_
                                                       _hd137961_
                                                       _rest137959_
                                                       _r137933_)))
                                                   (_E137963137994_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e137962137969_)
                                                          (let ((_e137965137977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e137962137969_)))
                    (let ((_hd137966137980_ (##car _e137965137977_))
                          (_tl137967137982_ (##cdr _e137965137977_)))
                      (let* ((_form137985_ _hd137966137980_)
                             (_body137987_ _tl137967137982_))
                        (if '#t
                            (let ((_bind137989_
                                   (if (gx#identifier? _form137985_)
                                       (gx#resolve-identifier__0 _form137985_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind137989_)
                                  (let ((_$e137991_
                                         (##unchecked-structure-ref
                                          _bind137989_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e137991_)
                                        (_expand-splice137898_
                                         _hd137961_
                                         _body137987_
                                         _rest137959_
                                         _r137933_)
                                        (if (eq? '%#cond-expand _$e137991_)
                                            (_expand-cond-expand137899_
                                             _hd137961_
                                             _rest137959_
                                             _r137933_)
                                            (if (eq? '%#include _$e137991_)
                                                (_expand-include137900_
                                                 _hd137961_
                                                 _rest137959_
                                                 _r137933_)
                                                (_expand-special137894_
                                                 _hd137961_
                                                 _K137902_
                                                 _rest137959_
                                                 _r137933_)))))
                                  (_expand-expression137901_
                                   _hd137961_
                                   _rest137959_
                                   _r137933_)))
                            (_E137964137973_)))))
                  (_E137964137973_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137963137994_))
                                            (_E137936137945_)))))
                                  (_E137936137945_)))))
                      (_E137935137998_)))))
          (let* ((_e137903137910_ _stx137893_)
                 (_E137905137914_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e137903137910_)))
                 (_E137904137928_
                  (lambda ()
                    (if (gx#stx-pair? _e137903137910_)
                        (let ((_e137906137918_ (gx#syntax-e _e137903137910_)))
                          (let ((_hd137907137921_ (##car _e137906137918_))
                                (_tl137908137923_ (##cdr _e137906137918_)))
                            (let ((_body137926_ _tl137908137923_))
                              (if (gx#stx-list? _body137926_)
                                  (_K137902_ _body137926_ '())
                                  (_E137905137914_)))))
                        (_E137905137914_)))))
            (_E137904137928_)))))
    (define gx#core-expand-block__0
      (lambda (_stx138069_ _expand-special138070_)
        (let* ((_begin-form138072_ '%#begin)
               (_expand-e138074_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx138069_
           _expand-special138070_
           _begin-form138072_
           _expand-e138074_))))
    (define gx#core-expand-block__1
      (lambda (_stx138076_ _expand-special138077_ _begin-form138078_)
        (let ((_expand-e138080_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx138076_
           _expand-special138077_
           _begin-form138078_
           _expand-e138080_))))
    (define gx#core-expand-block
      (lambda _g142929_
        (let ((_g142928_ (##length _g142929_)))
          (cond ((##fx= _g142928_ 2)
                 (apply (lambda (_stx138069_ _expand-special138070_)
                          (gx#core-expand-block__0
                           _stx138069_
                           _expand-special138070_))
                        _g142929_))
                ((##fx= _g142928_ 3)
                 (apply (lambda (_stx138076_
                                 _expand-special138077_
                                 _begin-form138078_)
                          (gx#core-expand-block__1
                           _stx138076_
                           _expand-special138077_
                           _begin-form138078_))
                        _g142929_))
                ((##fx= _g142928_ 4)
                 (apply (lambda (_stx138082_
                                 _expand-special138083_
                                 _begin-form138084_
                                 _expand-e138085_)
                          (gx#core-expand-block__%
                           _stx138082_
                           _expand-special138083_
                           _begin-form138084_
                           _expand-e138085_))
                        _g142929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g142929_))))))
    (define gx#core-expand-block*
      (lambda (_stx137841_ _expand-special137842_)
        (let* ((_g137843137854_
                (gx#core-expand-block__1
                 _stx137841_
                 _expand-special137842_
                 '#f))
               (_E137847137858_
                (lambda () (error '"No clause matching" _g137843137854_))))
          (let ((_K137852137889_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx137841_)))
                (_K137849137875_ (lambda (_expr137873_) _expr137873_))
                (_K137848137864_
                 (lambda (_body137862_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body137862_))
                    (gx#stx-source _stx137841_)))))
            (let ((_try-match137845137885_
                   (lambda ()
                     (if (##pair? _g137843137854_)
                         (let ((_tl137851137880_ (##cdr _g137843137854_))
                               (_hd137850137878_ (##car _g137843137854_)))
                           (if (##null? _tl137851137880_)
                               (let ((_expr137883_ _hd137850137878_))
                                 (_K137849137875_ _expr137883_))
                               (let ((_body137867_ _g137843137854_))
                                 (_K137848137864_ _body137867_))))
                         (let ((_body137867_ _g137843137854_))
                           (_K137848137864_ _body137867_))))))
              (if (##null? _g137843137854_)
                  (_K137852137889_)
                  (_try-match137845137885_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx137669_)
        (letrec ((_satisfied?137671_
                  (lambda (_condition137769_)
                    (let* ((_e137770137785_ _condition137769_)
                           (_E137780137789_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e137770137785_)))
                           (_E137773137808_
                            (lambda ()
                              (if (gx#stx-pair? _e137770137785_)
                                  (let ((_e137781137793_
                                         (gx#syntax-e _e137770137785_)))
                                    (let ((_hd137782137796_
                                           (##car _e137781137793_))
                                          (_tl137783137798_
                                           (##cdr _e137781137793_)))
                                      (let* ((_combinator137801_
                                              _hd137782137796_)
                                             (_body137803_ _tl137783137798_))
                                        (if (gx#stx-list? _body137803_)
                                            (let ((_$e137805_
                                                   (gx#stx-e
                                                    _combinator137801_)))
                                              (if (eq? 'not _$e137805_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?137671_
                                                        _body137803_))
                                                  (if (eq? 'and _$e137805_)
                                                      (gx#stx-andmap
                                                       _satisfied?137671_
                                                       _body137803_)
                                                      (if (eq? 'or _$e137805_)
                                                          (gx#stx-ormap
                                                           _satisfied?137671_
                                                           _body137803_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e137805_)
                      (gx#stx-andmap gx#core-resolve-identifier _body137803_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx137669_
                       _combinator137801_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E137780137789_)))))
                                  (_E137780137789_))))
                           (_E137772137831_
                            (lambda ()
                              (if (gx#stx-pair? _e137770137785_)
                                  (let ((_e137774137812_
                                         (gx#syntax-e _e137770137785_)))
                                    (let ((_hd137775137815_
                                           (##car _e137774137812_))
                                          (_tl137776137817_
                                           (##cdr _e137774137812_)))
                                      (if (and (gx#identifier?
                                                _hd137775137815_)
                                               (gx#core-identifier=?
                                                _hd137775137815_
                                                'unquote))
                                          (if (gx#stx-pair? _tl137776137817_)
                                              (let ((_e137777137820_
                                                     (gx#syntax-e
                                                      _tl137776137817_)))
                                                (let ((_hd137778137823_
                                                       (##car _e137777137820_))
                                                      (_tl137779137825_
                                                       (##cdr _e137777137820_)))
                                                  (let ((_expr137828_
                                                         _hd137778137823_))
                                                    (if (gx#stx-null?
                                                         _tl137779137825_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr137828_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E137773137808_))
                (_E137773137808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137773137808_))
                                          (_E137773137808_))))
                                  (_E137773137808_))))
                           (_E137771137837_
                            (lambda ()
                              (let ((_id137835_ _e137770137785_))
                                (if (gx#identifier? _id137835_)
                                    (gx#core-bound-identifier?__%
                                     _id137835_
                                     gx#feature-binding?)
                                    (_E137772137831_))))))
                      (_E137771137837_))))
                 (_loop137672_
                  (lambda (_rest137702_)
                    (let* ((_e137703137711_ _rest137702_)
                           (_E137709137715_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e137703137711_)))
                           (_E137705137719_
                            (lambda ()
                              (if (gx#stx-null? _e137703137711_)
                                  (if '#t '() (_E137709137715_))
                                  (_E137709137715_))))
                           (_E137704137765_
                            (lambda ()
                              (if (gx#stx-pair? _e137703137711_)
                                  (let ((_e137706137723_
                                         (gx#syntax-e _e137703137711_)))
                                    (let ((_hd137707137726_
                                           (##car _e137706137723_))
                                          (_tl137708137728_
                                           (##cdr _e137706137723_)))
                                      (let* ((_hd137731_ _hd137707137726_)
                                             (_rest137733_ _tl137708137728_))
                                        (if '#t
                                            (let* ((_e137734137741_ _hd137731_)
                                                   (_E137736137745_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e137734137741_)))
                                                   (_E137735137761_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e137734137741_)
                                                          (let ((_e137737137749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e137734137741_)))
                    (let ((_hd137738137752_ (##car _e137737137749_))
                          (_tl137739137754_ (##cdr _e137737137749_)))
                      (let* ((_condition137757_ _hd137738137752_)
                             (_body137759_ _tl137739137754_))
                        (if '#t
                            (if (gx#stx-eq? _condition137757_ 'else)
                                (if (gx#stx-null? _rest137733_)
                                    _body137759_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx137669_
                                     _hd137731_))
                                (if (_satisfied?137671_ _condition137757_)
                                    _body137759_
                                    (_loop137672_ _rest137733_)))
                            (_E137736137745_)))))
                  (_E137736137745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137735137761_))
                                            (_E137705137719_)))))
                                  (_E137705137719_)))))
                      (_E137704137765_)))))
          (let* ((_e137673137680_ _stx137669_)
                 (_E137675137684_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e137673137680_)))
                 (_E137674137698_
                  (lambda ()
                    (if (gx#stx-pair? _e137673137680_)
                        (let ((_e137676137688_ (gx#syntax-e _e137673137680_)))
                          (let ((_hd137677137691_ (##car _e137676137688_))
                                (_tl137678137693_ (##cdr _e137676137688_)))
                            (let ((_clauses137696_ _tl137678137693_))
                              (if (gx#stx-list? _clauses137696_)
                                  (gx#core-cons
                                   'begin
                                   (_loop137672_ _clauses137696_))
                                  (_E137675137684_)))))
                        (_E137675137684_)))))
            (_E137674137698_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx137612_ _rpath137613_)
        (let* ((_e137614137624_ _stx137612_)
               (_E137616137628_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e137614137624_)))
               (_E137615137655_
                (lambda ()
                  (if (gx#stx-pair? _e137614137624_)
                      (let ((_e137617137632_ (gx#syntax-e _e137614137624_)))
                        (let ((_hd137618137635_ (##car _e137617137632_))
                              (_tl137619137637_ (##cdr _e137617137632_)))
                          (if (gx#stx-pair? _tl137619137637_)
                              (let ((_e137620137640_
                                     (gx#syntax-e _tl137619137637_)))
                                (let ((_hd137621137643_
                                       (##car _e137620137640_))
                                      (_tl137622137645_
                                       (##cdr _e137620137640_)))
                                  (let ((_path137648_ _hd137621137643_))
                                    (if (gx#stx-null? _tl137622137645_)
                                        (if (gx#stx-string? _path137648_)
                                            (let ((_rpath137653_
                                                   (let ((_$e137650_
                                                          _rpath137613_))
                                                     (if _$e137650_
                                                         _$e137650_
                                                         (gx#core-resolve-path__%
                                                          _path137648_
                                                          (gx#stx-source
                                                           _stx137612_))))))
                                              (if (member _rpath137653_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx137612_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath137653_))
                                                    (gx#stx-source
                                                     _stx137612_)))))
                                            (_E137616137628_))
                                        (_E137616137628_)))))
                              (_E137616137628_))))
                      (_E137616137628_)))))
          (_E137615137655_))))
    (define gx#core-expand-include%__0
      (lambda (_stx137662_)
        (let ((_rpath137664_ '#f))
          (gx#core-expand-include%__% _stx137662_ _rpath137664_))))
    (define gx#core-expand-include%
      (lambda _g142931_
        (let ((_g142930_ (##length _g142931_)))
          (cond ((##fx= _g142930_ 1)
                 (apply (lambda (_stx137662_)
                          (gx#core-expand-include%__0 _stx137662_))
                        _g142931_))
                ((##fx= _g142930_ 2)
                 (apply (lambda (_stx137666_ _rpath137667_)
                          (gx#core-expand-include%__%
                           _stx137666_
                           _rpath137667_))
                        _g142931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g142931_))))))
    (define gx#core-apply-expander__%
      (lambda (_K137581_ _stx137582_ _method137583_)
        (if (procedure? _K137581_)
            (let ((_$e137585_ (gx#stx-source _stx137582_)))
              (if _$e137585_
                  ((lambda (_g137587137589_)
                     (gx#stx-wrap-source
                      (_K137581_ _stx137582_)
                      _g137587137589_))
                   _$e137585_)
                  (_K137581_ _stx137582_)))
            (let ((_$e137592_ (bound-method-ref _K137581_ _method137583_)))
              (if _$e137592_
                  ((lambda (_g137594137596_)
                     (gx#core-apply-expander__%
                      _g137594137596_
                      _stx137582_
                      _method137583_))
                   _$e137592_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx137582_
                   _method137583_))))))
    (define gx#core-apply-expander__0
      (lambda (_K137602_ _stx137603_)
        (let ((_method137605_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K137602_ _stx137603_ _method137605_))))
    (define gx#core-apply-expander
      (lambda _g142933_
        (let ((_g142932_ (##length _g142933_)))
          (cond ((##fx= _g142932_ 2)
                 (apply (lambda (_K137602_ _stx137603_)
                          (gx#core-apply-expander__0 _K137602_ _stx137603_))
                        _g142933_))
                ((##fx= _g142932_ 3)
                 (apply (lambda (_K137607_ _stx137608_ _method137609_)
                          (gx#core-apply-expander__%
                           _K137607_
                           _stx137608_
                           _method137609_))
                        _g142933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g142933_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self137577_ _stx137578_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx137578_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self137430_ _stx137431_)
        (let* ((_self137432137438_ _self137430_)
               (_E137434137442_
                (lambda () (error '"No clause matching" _self137432137438_)))
               (_K137435137447_
                (lambda (_K137445_)
                  (gx#core-apply-expander__0 _K137445_ _stx137431_))))
          (if (##structure-instance-of? _self137432137438_ 'gx#core-macro::t)
              (let* ((_e137436137450_
                      (##unchecked-structure-ref
                       _self137432137438_
                       '1
                       gx#expander::t
                       '#f))
                     (_K137453_ _e137436137450_))
                (_K137435137447_ _K137453_))
              (_E137434137442_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self137283_ _stx137284_)
        (if (gx#sealed-syntax? _stx137284_)
            _stx137284_
            (let* ((_self137285137291_ _self137283_)
                   (_E137287137295_
                    (lambda ()
                      (error '"No clause matching" _self137285137291_)))
                   (_K137288137300_
                    (lambda (_K137298_)
                      (gx#core-apply-expander__0 _K137298_ _stx137284_))))
              (if (##structure-instance-of?
                   _self137285137291_
                   'gx#core-expander::t)
                  (let* ((_e137289137303_
                          (##unchecked-structure-ref
                           _self137285137291_
                           '1
                           gx#expander::t
                           '#f))
                         (_K137306_ _e137289137303_))
                    (_K137288137300_ _K137306_))
                  (_E137287137295_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self137145_ _stx137146_ _top?137147_)
        (if (_top?137147_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self137145_ _stx137146_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx137146_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self137152_ _stx137153_)
        (let ((_top?137155_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self137152_
           _stx137153_
           _top?137155_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g142935_
        (let ((_g142934_ (##length _g142935_)))
          (cond ((##fx= _g142934_ 2)
                 (apply (lambda (_self137152_ _stx137153_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self137152_
                           _stx137153_))
                        _g142935_))
                ((##fx= _g142934_ 3)
                 (apply (lambda (_self137157_ _stx137158_ _top?137159_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self137157_
                           _stx137158_
                           _top?137159_))
                        _g142935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g142935_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self137019_ _stx137020_)
        (gx#top-special-form::apply-macro-expander__%
         _self137019_
         _stx137020_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self136844_ _stx136845_)
        (let* ((_self136846136852_ _self136844_)
               (_E136848136856_
                (lambda () (error '"No clause matching" _self136846136852_)))
               (_K136849136889_
                (lambda (_id136859_)
                  (let* ((_e136860136867_ _stx136845_)
                         (_E136862136871_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e136860136867_)))
                         (_E136861136885_
                          (lambda ()
                            (if (gx#stx-pair? _e136860136867_)
                                (let ((_e136863136875_
                                       (gx#syntax-e _e136860136867_)))
                                  (let ((_hd136864136878_
                                         (##car _e136863136875_))
                                        (_tl136865136880_
                                         (##cdr _e136863136875_)))
                                    (let ((_body136883_ _tl136865136880_))
                                      (if '#t
                                          (gx#core-cons
                                           _id136859_
                                           _body136883_)
                                          (_E136862136871_)))))
                                (_E136862136871_)))))
                    (_E136861136885_)))))
          (if (##structure-instance-of?
               _self136846136852_
               'gx#rename-macro-expander::t)
              (let* ((_e136850136892_
                      (##unchecked-structure-ref
                       _self136846136852_
                       '1
                       gx#expander::t
                       '#f))
                     (_id136895_ _e136850136892_))
                (_K136849136889_ _id136895_))
              (_E136848136856_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self136670_ _stx136671_ _method136672_)
        (let* ((_self136673136681_ _self136670_)
               (_E136675136685_
                (lambda () (error '"No clause matching" _self136673136681_)))
               (_K136676136692_
                (lambda (_phi136688_ _ctx136689_ _K136690_)
                  (gx#core-apply-user-macro
                   _K136690_
                   _stx136671_
                   _ctx136689_
                   _phi136688_
                   _method136672_))))
          (if (##structure-instance-of?
               _self136673136681_
               'gx#macro-expander::t)
              (let* ((_e136677136695_
                      (##unchecked-structure-ref
                       _self136673136681_
                       '1
                       gx#expander::t
                       '#f))
                     (_K136698_ _e136677136695_)
                     (_e136678136700_
                      (##unchecked-structure-ref
                       _self136673136681_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx136703_ _e136678136700_)
                     (_e136679136705_
                      (##unchecked-structure-ref
                       _self136673136681_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi136708_ _e136679136705_))
                (_K136676136692_ _phi136708_ _ctx136703_ _K136698_))
              (_E136675136685_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self136713_ _stx136714_)
        (let ((_method136716_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self136713_
           _stx136714_
           _method136716_))))
    (define gx#core-apply-user-expander
      (lambda _g142937_
        (let ((_g142936_ (##length _g142937_)))
          (cond ((##fx= _g142936_ 2)
                 (apply (lambda (_self136713_ _stx136714_)
                          (gx#core-apply-user-expander__0
                           _self136713_
                           _stx136714_))
                        _g142937_))
                ((##fx= _g142936_ 3)
                 (apply (lambda (_self136718_ _stx136719_ _method136720_)
                          (gx#core-apply-user-expander__%
                           _self136718_
                           _stx136719_
                           _method136720_))
                        _g142937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g142937_))))))
    (define gx#core-apply-user-macro
      (lambda (_K136660_ _stx136661_ _ctx136662_ _phi136663_ _method136664_)
        (let ((_mark136666_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx136662_
                _phi136663_
                _stx136661_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K136660_
               (gx#stx-apply-mark _stx136661_ _mark136666_)
               _method136664_)
              _mark136666_))
           gx#current-expander-marks
           (cons _mark136666_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx136512_ _phi136513_ _ctx136514_)
        (let _lp136516_ ((_bind136518_
                          (gx#core-resolve-identifier__%
                           _stx136512_
                           _phi136513_
                           _ctx136514_)))
          (if (##structure-direct-instance-of?
               _bind136518_
               'gx#import-binding::t)
              (_lp136516_
               (##unchecked-structure-ref
                _bind136518_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind136518_
                   'gx#alias-binding::t)
                  (_lp136516_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind136518_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi136513_
                    _ctx136514_))
                  _bind136518_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx136523_)
        (let* ((_phi136525_ (gx#current-expander-phi))
               (_ctx136527_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx136523_ _phi136525_ _ctx136527_))))
    (define gx#resolve-identifier__1
      (lambda (_stx136529_ _phi136530_)
        (let ((_ctx136532_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx136529_ _phi136530_ _ctx136532_))))
    (define gx#resolve-identifier
      (lambda _g142939_
        (let ((_g142938_ (##length _g142939_)))
          (cond ((##fx= _g142938_ 1)
                 (apply (lambda (_stx136523_)
                          (gx#resolve-identifier__0 _stx136523_))
                        _g142939_))
                ((##fx= _g142938_ 2)
                 (apply (lambda (_stx136529_ _phi136530_)
                          (gx#resolve-identifier__1 _stx136529_ _phi136530_))
                        _g142939_))
                ((##fx= _g142938_ 3)
                 (apply (lambda (_stx136534_ _phi136535_ _ctx136536_)
                          (gx#resolve-identifier__%
                           _stx136534_
                           _phi136535_
                           _ctx136536_))
                        _g142939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g142939_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx136470_ _val136471_ _rebind?136472_ _phi136473_ _ctx136474_)
        (let ((_rebind?136476_
               (if (not _rebind?136472_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?136472_) _rebind?136472_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx136470_)
           _val136471_
           _rebind?136476_
           _phi136473_
           _ctx136474_))))
    (define gx#bind-identifier!__0
      (lambda (_stx136481_ _val136482_)
        (let* ((_rebind?136484_ '#f)
               (_phi136486_ (gx#current-expander-phi))
               (_ctx136488_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136481_
           _val136482_
           _rebind?136484_
           _phi136486_
           _ctx136488_))))
    (define gx#bind-identifier!__1
      (lambda (_stx136490_ _val136491_ _rebind?136492_)
        (let* ((_phi136494_ (gx#current-expander-phi))
               (_ctx136496_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136490_
           _val136491_
           _rebind?136492_
           _phi136494_
           _ctx136496_))))
    (define gx#bind-identifier!__2
      (lambda (_stx136498_ _val136499_ _rebind?136500_ _phi136501_)
        (let ((_ctx136503_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136498_
           _val136499_
           _rebind?136500_
           _phi136501_
           _ctx136503_))))
    (define gx#bind-identifier!
      (lambda _g142941_
        (let ((_g142940_ (##length _g142941_)))
          (cond ((##fx= _g142940_ 2)
                 (apply (lambda (_stx136481_ _val136482_)
                          (gx#bind-identifier!__0 _stx136481_ _val136482_))
                        _g142941_))
                ((##fx= _g142940_ 3)
                 (apply (lambda (_stx136490_ _val136491_ _rebind?136492_)
                          (gx#bind-identifier!__1
                           _stx136490_
                           _val136491_
                           _rebind?136492_))
                        _g142941_))
                ((##fx= _g142940_ 4)
                 (apply (lambda (_stx136498_
                                 _val136499_
                                 _rebind?136500_
                                 _phi136501_)
                          (gx#bind-identifier!__2
                           _stx136498_
                           _val136499_
                           _rebind?136500_
                           _phi136501_))
                        _g142941_))
                ((##fx= _g142940_ 5)
                 (apply (lambda (_stx136505_
                                 _val136506_
                                 _rebind?136507_
                                 _phi136508_
                                 _ctx136509_)
                          (gx#bind-identifier!__%
                           _stx136505_
                           _val136506_
                           _rebind?136507_
                           _phi136508_
                           _ctx136509_))
                        _g142941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g142941_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx136442_ _phi136443_ _ctx136444_)
        (let _lp136446_ ((_e136448_ _stx136442_)
                         (_marks136449_ (gx#current-expander-marks)))
          (if (symbol? _e136448_)
              (gx#core-resolve-binding
               _e136448_
               _phi136443_
               _phi136443_
               _ctx136444_
               (reverse _marks136449_))
              (if (gx#identifier-quote? _e136448_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e136448_ '1 gx#AST::t '#f)
                   _phi136443_
                   '0
                   (##unchecked-structure-ref
                    _e136448_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e136448_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e136448_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e136448_ '1 gx#AST::t '#f)
                       _phi136443_
                       _phi136443_
                       _ctx136444_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136448_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136449_))
                      (if (##structure-direct-instance-of?
                           _e136448_
                           'gx#syntax-wrap::t)
                          (_lp136446_
                           (##unchecked-structure-ref
                            _e136448_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e136448_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks136449_))
                          (if (##structure-instance-of?
                               _e136448_
                               'gerbil#AST::t)
                              (_lp136446_
                               (##unchecked-structure-ref
                                _e136448_
                                '1
                                gx#AST::t
                                '#f)
                               _marks136449_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx136442_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx136454_)
        (let* ((_phi136456_ (gx#current-expander-phi))
               (_ctx136458_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx136454_
           _phi136456_
           _ctx136458_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx136460_ _phi136461_)
        (let ((_ctx136463_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx136460_
           _phi136461_
           _ctx136463_))))
    (define gx#core-resolve-identifier
      (lambda _g142943_
        (let ((_g142942_ (##length _g142943_)))
          (cond ((##fx= _g142942_ 1)
                 (apply (lambda (_stx136454_)
                          (gx#core-resolve-identifier__0 _stx136454_))
                        _g142943_))
                ((##fx= _g142942_ 2)
                 (apply (lambda (_stx136460_ _phi136461_)
                          (gx#core-resolve-identifier__1
                           _stx136460_
                           _phi136461_))
                        _g142943_))
                ((##fx= _g142942_ 3)
                 (apply (lambda (_stx136465_ _phi136466_ _ctx136467_)
                          (gx#core-resolve-identifier__%
                           _stx136465_
                           _phi136466_
                           _ctx136467_))
                        _g142943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g142943_))))))
    (define gx#core-resolve-binding
      (lambda (_id136355_
               _phi136356_
               _src-phi136357_
               _ctx136358_
               _marks136359_)
        (letrec ((_resolve136361_
                  (lambda (_ctx136429_ _src-phi136430_ _key136431_)
                    (let _lp136433_ ((_ctx136435_
                                      (gx#core-context-shift
                                       _ctx136429_
                                       _phi136356_))
                                     (_dphi136436_
                                      (fx- _phi136356_ _src-phi136430_)))
                      (let ((_$e136438_
                             (gx#core-context-resolve
                              _ctx136435_
                              _key136431_)))
                        (if _$e136438_
                            (values _$e136438_)
                            (if (fxzero? _dphi136436_)
                                '#f
                                (if (fxpositive? _dphi136436_)
                                    (_lp136433_
                                     (gx#core-context-shift _ctx136435_ '-1)
                                     (fx- _dphi136436_ '1))
                                    (_lp136433_
                                     (gx#core-context-shift _ctx136435_ '1)
                                     (fx+ _dphi136436_ '1))))))))))
          (let _lp136363_ ((_ctx136365_ _ctx136358_)
                           (_src-phi136366_ _src-phi136357_)
                           (_rest136367_ _marks136359_))
            (let* ((_rest136368136376_ _rest136367_)
                   (_else136370136384_
                    (lambda ()
                      (_resolve136361_
                       _ctx136365_
                       _src-phi136366_
                       _id136355_)))
                   (_K136372136417_
                    (lambda (_rest136387_ _hd136388_)
                      (let* ((_hd136389136395_ _hd136388_)
                             (_E136391136399_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd136389136395_)))
                             (_K136392136409_
                              (lambda (_subst136402_)
                                (let ((_$e136406_
                                       (let ((_key136404_
                                              (if _subst136402_
                                                  (table-ref
                                                   _subst136402_
                                                   _id136355_
                                                   '#f)
                                                  '#f)))
                                         (if _key136404_
                                             (_resolve136361_
                                              _ctx136365_
                                              _src-phi136366_
                                              _key136404_)
                                             '#f))))
                                  (if _$e136406_
                                      _$e136406_
                                      (_lp136363_
                                       (##unchecked-structure-ref
                                        _hd136388_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd136388_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest136387_))))))
                        (if (##structure-instance-of?
                             _hd136389136395_
                             'gx#expander-mark::t)
                            (let* ((_e136393136412_
                                    (##unchecked-structure-ref
                                     _hd136389136395_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst136415_ _e136393136412_))
                              (_K136392136409_ _subst136415_))
                            (_E136391136399_))))))
              (if (##pair? _rest136368136376_)
                  (let ((_hd136373136420_ (##car _rest136368136376_))
                        (_tl136374136422_ (##cdr _rest136368136376_)))
                    (let* ((_hd136425_ _hd136373136420_)
                           (_rest136427_ _tl136374136422_))
                      (_K136372136417_ _rest136427_ _hd136425_)))
                  (_else136370136384_)))))))
    (define gx#core-bind!__%
      (lambda (_key136231_ _val136232_ _rebind?136233_ _phi136234_ _ctx136235_)
        (letrec ((_update-binding136237_
                  (lambda (_xval136308_)
                    (if (or (_rebind?136233_
                             _ctx136235_
                             _xval136308_
                             _val136232_)
                            (and (##structure-direct-instance-of?
                                  _xval136308_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval136308_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val136232_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val136232_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval136308_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val136232_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val136232_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval136308_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val136232_
                        (if (and (##structure-direct-instance-of?
                                  _val136232_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val136232_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval136308_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val136232_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval136308_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval136308_
                            (if (and (##structure-direct-instance-of?
                                      _val136232_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval136308_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key136231_
                                 (cons (##unchecked-structure-ref
                                        _val136232_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val136232_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval136308_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval136308_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval136308_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval136308_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key136231_
                                 _val136232_
                                 _xval136308_))))))
                 (_gensubst136238_
                  (lambda (_subst136303_ _id136304_)
                    (let ((_eid136306_
                           (gensym (if (uninterned-symbol? _id136304_)
                                       '%
                                       _id136304_))))
                      (table-set! _subst136303_ _id136304_ _eid136306_)
                      _eid136306_)))
                 (_subst!136239_
                  (lambda (_key136241_)
                    (let* ((_key136242136250_ _key136241_)
                           (_else136244136258_ (lambda () _key136241_))
                           (_K136246136291_
                            (lambda (_mark136261_ _id136262_)
                              (let* ((_mark136263136269_ _mark136261_)
                                     (_E136265136273_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark136263136269_)))
                                     (_K136266136283_
                                      (lambda (_subst136276_)
                                        (if (not _subst136276_)
                                            (let ((_subst136278_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark136261_
                                               _subst136278_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst136238_
                                               _subst136278_
                                               _id136262_))
                                            (let ((_$e136280_
                                                   (table-ref
                                                    _subst136276_
                                                    _id136262_
                                                    '#f)))
                                              (if _$e136280_
                                                  (values _$e136280_)
                                                  (_gensubst136238_
                                                   _subst136276_
                                                   _id136262_)))))))
                                (if (##structure-instance-of?
                                     _mark136263136269_
                                     'gx#expander-mark::t)
                                    (let* ((_e136267136286_
                                            (##unchecked-structure-ref
                                             _mark136263136269_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst136289_ _e136267136286_))
                                      (_K136266136283_ _subst136289_))
                                    (_E136265136273_))))))
                      (if (##pair? _key136242136250_)
                          (let ((_hd136247136294_ (##car _key136242136250_))
                                (_tl136248136296_ (##cdr _key136242136250_)))
                            (let* ((_id136299_ _hd136247136294_)
                                   (_mark136301_ _tl136248136296_))
                              (_K136246136291_ _mark136301_ _id136299_)))
                          (_else136244136258_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx136235_ _phi136234_)
           (_subst!136239_ _key136231_)
           _val136232_
           _update-binding136237_))))
    (define gx#core-bind!__0
      (lambda (_key136325_ _val136326_)
        (let* ((_rebind?136328_ false)
               (_phi136330_ (gx#current-expander-phi))
               (_ctx136332_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136325_
           _val136326_
           _rebind?136328_
           _phi136330_
           _ctx136332_))))
    (define gx#core-bind!__1
      (lambda (_key136334_ _val136335_ _rebind?136336_)
        (let* ((_phi136338_ (gx#current-expander-phi))
               (_ctx136340_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136334_
           _val136335_
           _rebind?136336_
           _phi136338_
           _ctx136340_))))
    (define gx#core-bind!__2
      (lambda (_key136342_ _val136343_ _rebind?136344_ _phi136345_)
        (let ((_ctx136347_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136342_
           _val136343_
           _rebind?136344_
           _phi136345_
           _ctx136347_))))
    (define gx#core-bind!
      (lambda _g142945_
        (let ((_g142944_ (##length _g142945_)))
          (cond ((##fx= _g142944_ 2)
                 (apply (lambda (_key136325_ _val136326_)
                          (gx#core-bind!__0 _key136325_ _val136326_))
                        _g142945_))
                ((##fx= _g142944_ 3)
                 (apply (lambda (_key136334_ _val136335_ _rebind?136336_)
                          (gx#core-bind!__1
                           _key136334_
                           _val136335_
                           _rebind?136336_))
                        _g142945_))
                ((##fx= _g142944_ 4)
                 (apply (lambda (_key136342_
                                 _val136343_
                                 _rebind?136344_
                                 _phi136345_)
                          (gx#core-bind!__2
                           _key136342_
                           _val136343_
                           _rebind?136344_
                           _phi136345_))
                        _g142945_))
                ((##fx= _g142944_ 5)
                 (apply (lambda (_key136349_
                                 _val136350_
                                 _rebind?136351_
                                 _phi136352_
                                 _ctx136353_)
                          (gx#core-bind!__%
                           _key136349_
                           _val136350_
                           _rebind?136351_
                           _phi136352_
                           _ctx136353_))
                        _g142945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g142945_))))))
    (define gx#core-identifier-key
      (lambda (_stx136165_)
        (if (symbol? _stx136165_)
            (let* ((_g136166136174_ (gx#current-expander-marks))
                   (_else136168136182_ (lambda () _stx136165_))
                   (_K136170136187_
                    (lambda (_hd136185_) (cons _stx136165_ _hd136185_))))
              (if (##pair? _g136166136174_)
                  (let* ((_hd136171136190_ (##car _g136166136174_))
                         (_hd136193_ _hd136171136190_))
                    (_K136170136187_ _hd136193_))
                  (_else136168136182_)))
            (if (gx#identifier? _stx136165_)
                (let* ((_id136195_ (gx#syntax-local-unwrap _stx136165_))
                       (_eid136197_ (gx#stx-e _id136195_))
                       (_marks136199_ (gx#stx-identifier-marks* _id136195_)))
                  (let* ((_marks136201136209_ _marks136199_)
                         (_else136203136217_ (lambda () _eid136197_))
                         (_K136205136222_
                          (lambda (_hd136220_) (cons _eid136197_ _hd136220_))))
                    (if (##pair? _marks136201136209_)
                        (let* ((_hd136206136225_ (##car _marks136201136209_))
                               (_hd136228_ _hd136206136225_))
                          (_K136205136222_ _hd136228_))
                        (_else136203136217_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx136165_)))))
    (define gx#core-context-shift
      (lambda (_ctx136110_ _phi136111_)
        (letrec ((_make-phi136113_
                  (lambda (_super136163_)
                    (let ((__obj142916 (make-object gx#phi-context::t '6)))
                      (gx#phi-context:::init!
                       __obj142916
                       (gensym 'phi)
                       _super136163_)
                      __obj142916)))
                 (_make-phi/up136114_
                  (lambda (_ctx136158_ _super136159_)
                    (let ((_ctx+1136161_ (_make-phi136113_ _super136159_)))
                      (##unchecked-structure-set!
                       _ctx136158_
                       _ctx+1136161_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1136161_
                       _ctx136158_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1136161_)))
                 (_make-phi/down136115_
                  (lambda (_ctx136153_ _super136154_)
                    (let ((_ctx-1136156_ (_make-phi136113_ _super136154_)))
                      (##unchecked-structure-set!
                       _ctx-1136156_
                       _ctx136153_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx136153_
                       _ctx-1136156_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1136156_)))
                 (_shift136116_
                  (lambda (_ctx136137_
                           _delta136138_
                           _make-delta-context136139_
                           _phi136140_
                           _K136141_)
                    (let ((_$e136143_
                           (##unchecked-structure-ref
                            _ctx136137_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e136143_
                          ((lambda (_super136146_)
                             (let* ((_super136148_
                                     (_K136141_ _super136146_ _delta136138_))
                                    (_ctx+d136150_
                                     (_make-delta-context136139_
                                      _ctx136137_
                                      _super136148_)))
                               (_K136141_
                                _ctx+d136150_
                                (fx- _phi136140_ _delta136138_))))
                           _$e136143_)
                          (error '"Bad context" _ctx136137_))))))
          (let _K136118_ ((_ctx136120_ _ctx136110_) (_phi136121_ _phi136111_))
            (if (fxzero? _phi136121_)
                _ctx136120_
                (if (fx> (##vector-length _ctx136120_) '3)
                    (if (fxpositive? _phi136121_)
                        (let ((_$e136123_
                               (##unchecked-structure-ref
                                _ctx136120_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e136123_
                              ((lambda (_g136125136127_)
                                 (_K136118_
                                  _g136125136127_
                                  (fx- _phi136121_ '1)))
                               _$e136123_)
                              (_shift136116_
                               _ctx136120_
                               '1
                               _make-phi/up136114_
                               _phi136121_
                               _K136118_)))
                        (let ((_$e136130_
                               (##unchecked-structure-ref
                                _ctx136120_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e136130_
                              ((lambda (_g136132136134_)
                                 (_K136118_
                                  _g136132136134_
                                  (fx+ _phi136121_ '1)))
                               _$e136130_)
                              (_shift136116_
                               _ctx136120_
                               '-1
                               _make-phi/down136115_
                               _phi136121_
                               _K136118_))))
                    _ctx136120_))))))
    (define gx#core-context-get
      (lambda (_ctx136107_ _key136108_)
        (table-ref
         (##unchecked-structure-ref _ctx136107_ '2 gx#expander-context::t '#f)
         _key136108_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx136103_ _key136104_ _val136105_)
        (table-set!
         (##unchecked-structure-ref _ctx136103_ '2 gx#expander-context::t '#f)
         _key136104_
         _val136105_)))
    (define gx#core-context-resolve
      (lambda (_ctx136090_ _key136091_)
        (let _lp136093_ ((_ctx136095_ _ctx136090_))
          (let ((_$e136097_ (gx#core-context-get _ctx136095_ _key136091_)))
            (if _$e136097_
                (values _$e136097_)
                (let ((_$e136100_
                       (if (fx> (##vector-length _ctx136095_) '3)
                           (##unchecked-structure-ref
                            _ctx136095_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e136100_ (_lp136093_ _$e136100_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx136080_ _key136081_ _val136082_ _rebind136083_)
        (let ((_$e136085_ (gx#core-context-get _ctx136080_ _key136081_)))
          (if _$e136085_
              ((lambda (_xval136088_)
                 (gx#core-context-put!
                  _ctx136080_
                  _key136081_
                  (_rebind136083_ _xval136088_)))
               _$e136085_)
              (gx#core-context-put! _ctx136080_ _key136081_ _val136082_)))))
    (define gx#core-context-top__%
      (lambda (_ctx136058_ _stop?136059_)
        (let _lp136061_ ((_ctx136063_ _ctx136058_))
          (if (_stop?136059_ _ctx136063_)
              _ctx136063_
              (if (##structure-instance-of? _ctx136063_ 'gx#context-phi::t)
                  (_lp136061_
                   (##unchecked-structure-ref
                    _ctx136063_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx136069_ (gx#current-expander-context))
               (_stop?136071_ gx#top-context?))
          (gx#core-context-top__% _ctx136069_ _stop?136071_))))
    (define gx#core-context-top__1
      (lambda (_ctx136073_)
        (let ((_stop?136075_ gx#top-context?))
          (gx#core-context-top__% _ctx136073_ _stop?136075_))))
    (define gx#core-context-top
      (lambda _g142947_
        (let ((_g142946_ (##length _g142947_)))
          (cond ((##fx= _g142946_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g142947_))
                ((##fx= _g142946_ 1)
                 (apply (lambda (_ctx136073_)
                          (gx#core-context-top__1 _ctx136073_))
                        _g142947_))
                ((##fx= _g142946_ 2)
                 (apply (lambda (_ctx136077_ _stop?136078_)
                          (gx#core-context-top__% _ctx136077_ _stop?136078_))
                        _g142947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g142947_))))))
    (define gx#core-context-root__%
      (lambda (_ctx136043_)
        (let _lp136045_ ((_ctx136047_ _ctx136043_))
          (if (##structure-instance-of? _ctx136047_ 'gx#context-phi::t)
              (_lp136045_
               (##unchecked-structure-ref
                _ctx136047_
                '3
                gx#phi-context::t
                '#f))
              _ctx136047_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx136053_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx136053_))))
    (define gx#core-context-root
      (lambda _g142949_
        (let ((_g142948_ (##length _g142949_)))
          (cond ((##fx= _g142948_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g142949_))
                ((##fx= _g142948_ 1)
                 (apply (lambda (_ctx136055_)
                          (gx#core-context-root__% _ctx136055_))
                        _g142949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g142949_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx136024_ . __136021136025_)
        (let ((_$e136028_ (gx#current-expander-allow-rebind?)))
          (if _$e136028_
              _$e136028_
              (if (##structure-instance-of? _ctx136024_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx136024_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx136024_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx136035_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx136035_))))
    (define gx#core-context-rebind?
      (lambda _g142951_
        (let ((_g142950_ (##length _g142951_)))
          (cond ((##fx= _g142950_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g142951_))
                ((##fx= _g142950_ 1)
                 (apply (lambda (_ctx136037_)
                          (gx#core-context-rebind?__% _ctx136037_))
                        _g142951_))
                ((##fx>= _g142950_ 1)
                 (apply gx#core-context-rebind?__% _g142951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g142951_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx136007_)
        (let ((_$e136009_ (gx#core-context-top__1 _ctx136007_)))
          (if _$e136009_
              ((lambda (_ctx136012_)
                 (if (##structure-instance-of?
                      _ctx136012_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx136012_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e136009_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx136018_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx136018_))))
    (define gx#core-context-namespace
      (lambda _g142953_
        (let ((_g142952_ (##length _g142953_)))
          (cond ((##fx= _g142952_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g142953_))
                ((##fx= _g142952_ 1)
                 (apply (lambda (_ctx136020_)
                          (gx#core-context-namespace__% _ctx136020_))
                        _g142953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g142953_))))))
    (define gx#expander-binding?__%
      (lambda (_bind135993_ _is?135994_)
        (if (##structure-direct-instance-of?
             _bind135993_
             'gx#syntax-binding::t)
            (_is?135994_
             (##unchecked-structure-ref
              _bind135993_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind135999_)
        (let ((_is?136001_ gx#expander?))
          (gx#expander-binding?__% _bind135999_ _is?136001_))))
    (define gx#expander-binding?
      (lambda _g142955_
        (let ((_g142954_ (##length _g142955_)))
          (cond ((##fx= _g142954_ 1)
                 (apply (lambda (_bind135999_)
                          (gx#expander-binding?__0 _bind135999_))
                        _g142955_))
                ((##fx= _g142954_ 2)
                 (apply (lambda (_bind136003_ _is?136004_)
                          (gx#expander-binding?__% _bind136003_ _is?136004_))
                        _g142955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g142955_))))))
    (define gx#core-expander-binding?
      (lambda (_bind135990_)
        (gx#expander-binding?__% _bind135990_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind135988_)
        (gx#expander-binding?__% _bind135988_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind135982_)
        (letrec ((_direct-special-form?135984_
                  (lambda (_obj135986_)
                    (##structure-direct-instance-of?
                     _obj135986_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind135982_
           _direct-special-form?135984_))))
    (define gx#special-form-binding?
      (lambda (_bind135980_)
        (gx#expander-binding?__% _bind135980_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind135971_)
        (letrec ((_feature?135973_
                  (lambda (_e135975_)
                    (let ((_$e135977_
                           (##structure-instance-of?
                            _e135975_
                            'gx#feature-expander::t)))
                      (if _$e135977_
                          _$e135977_
                          (##structure-instance-of?
                           _e135975_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind135971_ _feature?135973_))))
    (define gx#private-feature-binding?
      (lambda (_bind135969_)
        (gx#expander-binding?__% _bind135969_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id135956_ _bound?135957_)
        (if (gx#identifier? _id135956_)
            (_bound?135957_ (gx#resolve-identifier__0 _id135956_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id135962_)
        (let ((_bound?135964_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id135962_ _bound?135964_))))
    (define gx#core-bound-identifier?
      (lambda _g142957_
        (let ((_g142956_ (##length _g142957_)))
          (cond ((##fx= _g142956_ 1)
                 (apply (lambda (_id135962_)
                          (gx#core-bound-identifier?__0 _id135962_))
                        _g142957_))
                ((##fx= _g142956_ 2)
                 (apply (lambda (_id135966_ _bound?135967_)
                          (gx#core-bound-identifier?__%
                           _id135966_
                           _bound?135967_))
                        _g142957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g142957_))))))
    (define gx#core-identifier=?
      (lambda (_x135946_ _y135947_)
        (letrec ((_y=?135949_
                  (lambda (_xid135953_)
                    ((if (list? _y135947_) memq eq?) _xid135953_ _y135947_))))
          (let ((_bind135951_ (gx#resolve-identifier__0 _x135946_)))
            (if (##structure-instance-of? _bind135951_ 'gx#binding::t)
                (_y=?135949_
                 (##unchecked-structure-ref _bind135951_ '1 gx#binding::t '#f))
                (_y=?135949_ (gx#stx-e _x135946_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e135944_)
        (if (interned-symbol? _e135944_)
            (string-index (symbol->string _e135944_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx135899_ _src135900_ _ctx135901_ _marks135902_)
        (if (##structure? _stx135899_)
            (let ((_$e135904_ (gx#sealed-syntax-unwrap _stx135899_)))
              (if _$e135904_
                  (values _$e135904_)
                  (if (gx#identifier? _stx135899_)
                      (let ((_id135907_
                             (gx#stx-unwrap__% _stx135899_ _marks135902_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id135907_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e135909_
                                (##unchecked-structure-ref
                                 _id135907_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e135909_ _$e135909_ _src135900_))
                         _ctx135901_
                         (##unchecked-structure-ref
                          _id135907_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx135899_)
                       (let ((_$e135912_ (gx#stx-source _stx135899_)))
                         (if _$e135912_ _$e135912_ _src135900_))
                       _ctx135901_
                       (reverse _marks135902_)))))
            (##structure
             gx#syntax-quote::t
             _stx135899_
             _src135900_
             _ctx135901_
             (reverse _marks135902_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx135918_)
        (let* ((_src135920_ '#f)
               (_ctx135922_ (gx#current-expander-context))
               (_marks135924_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135918_
           _src135920_
           _ctx135922_
           _marks135924_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx135926_ _src135927_)
        (let* ((_ctx135929_ (gx#current-expander-context))
               (_marks135931_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135926_
           _src135927_
           _ctx135929_
           _marks135931_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx135933_ _src135934_ _ctx135935_)
        (let ((_marks135937_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135933_
           _src135934_
           _ctx135935_
           _marks135937_))))
    (define gx#core-quote-syntax
      (lambda _g142959_
        (let ((_g142958_ (##length _g142959_)))
          (cond ((##fx= _g142958_ 1)
                 (apply (lambda (_stx135918_)
                          (gx#core-quote-syntax__0 _stx135918_))
                        _g142959_))
                ((##fx= _g142958_ 2)
                 (apply (lambda (_stx135926_ _src135927_)
                          (gx#core-quote-syntax__1 _stx135926_ _src135927_))
                        _g142959_))
                ((##fx= _g142958_ 3)
                 (apply (lambda (_stx135933_ _src135934_ _ctx135935_)
                          (gx#core-quote-syntax__2
                           _stx135933_
                           _src135934_
                           _ctx135935_))
                        _g142959_))
                ((##fx= _g142958_ 4)
                 (apply (lambda (_stx135939_
                                 _src135940_
                                 _ctx135941_
                                 _marks135942_)
                          (gx#core-quote-syntax__%
                           _stx135939_
                           _src135940_
                           _ctx135941_
                           _marks135942_))
                        _g142959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g142959_))))))
    (define gx#core-cons
      (lambda (_hd135895_ _tl135896_)
        (cons (gx#core-quote-syntax__0 _hd135895_) _tl135896_)))
    (define gx#core-list
      (lambda (_hd135892_ . _rest135893_)
        (cons (gx#core-quote-syntax__0 _hd135892_) _rest135893_)))
    (define gx#core-cons*
      (lambda (_hd135889_ . _rest135890_)
        (apply cons* (gx#core-quote-syntax__0 _hd135889_) _rest135890_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path135863_ _rel135864_)
        (let ((_path135876_ (gx#stx-e _stx-path135863_))
              (_reldir135877_
               (let _lp135866_ ((_relsrc135868_
                                 (let ((_$e135873_
                                        (gx#stx-source _stx-path135863_)))
                                   (if _$e135873_ _$e135873_ _rel135864_))))
                 (if (##structure-instance-of? _relsrc135868_ 'gerbil#AST::t)
                     (_lp135866_
                      (let ((_$e135870_ (gx#stx-source _relsrc135868_)))
                        (if _$e135870_ _$e135870_ (gx#stx-e _relsrc135868_))))
                     (if (source-location-path? _relsrc135868_)
                         (path-directory (source-location-path _relsrc135868_))
                         (if (string? _relsrc135868_)
                             (path-directory _relsrc135868_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path135876_ (path-normalize _reldir135877_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path135882_)
        (let ((_rel135884_ '#f))
          (gx#core-resolve-path__% _stx-path135882_ _rel135884_))))
    (define gx#core-resolve-path
      (lambda _g142961_
        (let ((_g142960_ (##length _g142961_)))
          (cond ((##fx= _g142960_ 1)
                 (apply (lambda (_stx-path135882_)
                          (gx#core-resolve-path__0 _stx-path135882_))
                        _g142961_))
                ((##fx= _g142960_ 2)
                 (apply (lambda (_stx-path135886_ _rel135887_)
                          (gx#core-resolve-path__%
                           _stx-path135886_
                           _rel135887_))
                        _g142961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g142961_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr135819_ _ctx135820_)
        (let* ((_repr135821135828_ _repr135819_)
               (_E135823135832_
                (lambda () (error '"No clause matching" _repr135821135828_)))
               (_K135824135840_
                (lambda (_subs135835_ _phi135836_)
                  (let ((_subst135838_
                         (if (not (null? _subs135835_))
                             (list->table _subs135835_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst135838_
                     _ctx135820_
                     _phi135836_
                     '#f)))))
          (if (##pair? _repr135821135828_)
              (let ((_hd135825135843_ (##car _repr135821135828_))
                    (_tl135826135845_ (##cdr _repr135821135828_)))
                (let* ((_phi135848_ _hd135825135843_)
                       (_subs135850_ _tl135826135845_))
                  (_K135824135840_ _subs135850_ _phi135848_)))
              (_E135823135832_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr135855_)
        (let ((_ctx135857_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr135855_ _ctx135857_))))
    (define gx#core-deserialize-mark
      (lambda _g142963_
        (let ((_g142962_ (##length _g142963_)))
          (cond ((##fx= _g142962_ 1)
                 (apply (lambda (_repr135855_)
                          (gx#core-deserialize-mark__0 _repr135855_))
                        _g142963_))
                ((##fx= _g142962_ 2)
                 (apply (lambda (_repr135859_ _ctx135860_)
                          (gx#core-deserialize-mark__%
                           _repr135859_
                           _ctx135860_))
                        _g142963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g142963_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx135816_)
        (gx#stx-rewrap _stx135816_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx135814_)
        (gx#stx-unwrap__% _stx135814_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx135784_)
        (let* ((_g135785135793_ (gx#current-expander-marks))
               (_else135787135801_ (lambda () _stx135784_))
               (_K135789135806_
                (lambda (_hd135804_)
                  (gx#stx-apply-mark _stx135784_ _hd135804_))))
          (if (##pair? _g135785135793_)
              (let* ((_hd135790135809_ (##car _g135785135793_))
                     (_hd135812_ _hd135790135809_))
                (_K135789135806_ _hd135812_))
              (_else135787135801_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx135769_ _E135770_)
        (let ((_bind135772_ (gx#resolve-identifier__0 _stx135769_)))
          (if (##structure-direct-instance-of?
               _bind135772_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind135772_
               '4
               gx#syntax-binding::t
               '#f)
              (_E135770_ _stx135769_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx135777_)
        (let ((_E135779_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx135777_ _E135779_))))
    (define gx#syntax-local-e
      (lambda _g142965_
        (let ((_g142964_ (##length _g142965_)))
          (cond ((##fx= _g142964_ 1)
                 (apply (lambda (_stx135777_)
                          (gx#syntax-local-e__0 _stx135777_))
                        _g142965_))
                ((##fx= _g142964_ 2)
                 (apply (lambda (_stx135781_ _E135782_)
                          (gx#syntax-local-e__% _stx135781_ _E135782_))
                        _g142965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g142965_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx135753_ _E135754_)
        (let ((_e135756_ (gx#syntax-local-e__% _stx135753_ _E135754_)))
          (if (##structure-instance-of? _e135756_ 'gx#expander::t)
              (##structure-ref _e135756_ '1 gx#expander::t '#f)
              _e135756_))))
    (define gx#syntax-local-value__0
      (lambda (_stx135761_)
        (let ((_E135763_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx135761_ _E135763_))))
    (define gx#syntax-local-value
      (lambda _g142967_
        (let ((_g142966_ (##length _g142967_)))
          (cond ((##fx= _g142966_ 1)
                 (apply (lambda (_stx135761_)
                          (gx#syntax-local-value__0 _stx135761_))
                        _g142967_))
                ((##fx= _g142966_ 2)
                 (apply (lambda (_stx135765_ _E135766_)
                          (gx#syntax-local-value__% _stx135765_ _E135766_))
                        _g142967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g142967_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx135750_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx135750_)))))
