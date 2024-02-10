(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707552287)
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
      (make-struct-type*
       'gx#expander-context::t
       'expander-context
       '#f
       '(id table)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#expander-context?
      (make-struct-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _$args138682_
        (apply make-struct-instance gx#expander-context::t _$args138682_)))
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
      (make-struct-type*
       'gx#root-context::t
       'root-context
       gx#expander-context::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (make-struct-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _$args138679_
        (apply make-struct-instance gx#root-context::t _$args138679_)))
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
      (make-struct-type*
       'gx#context-phi::t
       'phi-context
       gx#expander-context::t
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (make-struct-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _$args138676_
        (apply make-struct-instance gx#phi-context::t _$args138676_)))
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
      (make-struct-type*
       'gx#top-context::t
       'top-context
       gx#phi-context::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (make-struct-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _$args138673_
        (apply make-struct-instance gx#top-context::t _$args138673_)))
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
      (make-struct-type*
       'gx#module-context::t
       'module-context
       gx#top-context::t
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (make-struct-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _$args138670_
        (apply make-struct-instance gx#module-context::t _$args138670_)))
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
      (make-struct-type*
       'gx#prelude-context::t
       'prelude-context
       gx#top-context::t
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (make-struct-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _$args138667_
        (apply make-struct-instance gx#prelude-context::t _$args138667_)))
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
      (make-struct-type*
       'gx#local-context::t
       'local-context
       gx#phi-context::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (make-struct-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _$args138664_
        (apply make-struct-instance gx#local-context::t _$args138664_)))
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
      (lambda (_self138648_ _id138649_ _super138650_)
        (if (##fx< '3 (##structure-length _self138648_))
            (begin
              (##unchecked-structure-set!
               _self138648_
               _id138649_
               '1
               (##structure-type _self138648_)
               '#f)
              (##unchecked-structure-set!
               _self138648_
               (make-table 'test: eq?)
               '2
               (##structure-type _self138648_)
               '#f)
              (##unchecked-structure-set!
               _self138648_
               _super138650_
               '3
               (##structure-type _self138648_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self138648_
                   '3
                   (##vector-length _self138648_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self138655_ _id138656_)
        (let ((_super138658_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self138655_ _id138656_ _super138658_))))
    (define gx#phi-context:::init!
      (lambda _g142919_
        (let ((_g142918_ (##length _g142919_)))
          (cond ((##fx= _g142918_ 2)
                 (apply (lambda (_self138655_ _id138656_)
                          (gx#phi-context:::init!__0 _self138655_ _id138656_))
                        _g142919_))
                ((##fx= _g142918_ 3)
                 (apply (lambda (_self138660_ _id138661_ _super138662_)
                          (gx#phi-context:::init!__%
                           _self138660_
                           _id138661_
                           _super138662_))
                        _g142919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g142919_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self138512_ _super138513_)
        (if (##fx< '3 (##structure-length _self138512_))
            (begin
              (##unchecked-structure-set!
               _self138512_
               (gensym 'L)
               '1
               (##structure-type _self138512_)
               '#f)
              (##unchecked-structure-set!
               _self138512_
               (make-table 'test: eq?)
               '2
               (##structure-type _self138512_)
               '#f)
              (##unchecked-structure-set!
               _self138512_
               _super138513_
               '3
               (##structure-type _self138512_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self138512_
                   '3
                   (##vector-length _self138512_)))))
    (define gx#local-context:::init!__0
      (lambda (_self138518_)
        (let ((_super138520_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self138518_ _super138520_))))
    (define gx#local-context:::init!
      (lambda _g142921_
        (let ((_g142920_ (##length _g142921_)))
          (cond ((##fx= _g142920_ 1)
                 (apply (lambda (_self138518_)
                          (gx#local-context:::init!__0 _self138518_))
                        _g142921_))
                ((##fx= _g142920_ 2)
                 (apply (lambda (_self138522_ _super138523_)
                          (gx#local-context:::init!__%
                           _self138522_
                           _super138523_))
                        _g142921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g142921_))))))
    (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-struct-type*
       'gx#binding::t
       'binding
       '#f
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (make-struct-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _$args138386_
        (apply make-struct-instance gx#binding::t _$args138386_)))
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
      (make-struct-type*
       'gx#runtime-binding::t
       'runtime-binding
       gx#binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (make-struct-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _$args138383_
        (apply make-struct-instance gx#runtime-binding::t _$args138383_)))
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
      (make-struct-type*
       'gx#local-binding::t
       'local-binding
       gx#runtime-binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (make-struct-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _$args138380_
        (apply make-struct-instance gx#local-binding::t _$args138380_)))
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
      (make-struct-type*
       'gx#top-binding::t
       'top-binding
       gx#runtime-binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (make-struct-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _$args138377_
        (apply make-struct-instance gx#top-binding::t _$args138377_)))
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
      (make-struct-type*
       'gx#module-binding::t
       'module-binding
       gx#top-binding::t
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (make-struct-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _$args138374_
        (apply make-struct-instance gx#module-binding::t _$args138374_)))
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
      (make-struct-type*
       'gx#extern-binding::t
       'extern-binding
       gx#top-binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (make-struct-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _$args138371_
        (apply make-struct-instance gx#extern-binding::t _$args138371_)))
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
      (make-struct-type*
       'gx#syntax-binding::t
       'syntax-binding
       gx#binding::t
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (make-struct-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _$args138368_
        (apply make-struct-instance gx#syntax-binding::t _$args138368_)))
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
      (make-struct-type*
       'gx#import-binding::t
       'import-binding
       gx#binding::t
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (make-struct-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _$args138365_
        (apply make-struct-instance gx#import-binding::t _$args138365_)))
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
      (make-struct-type*
       'gx#alias-binding::t
       'alias-binding
       gx#binding::t
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (make-struct-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _$args138362_
        (apply make-struct-instance gx#alias-binding::t _$args138362_)))
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
      (make-struct-type*
       'gx#expander::t
       'expander
       '#f
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (make-struct-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _$args138359_
        (apply make-struct-instance gx#expander::t _$args138359_)))
    (define gx#expander-e (make-struct-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (make-struct-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (make-struct-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (make-struct-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (make-struct-type*
       'gx#core-expander::t
       'core-expander
       gx#expander::t
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (make-struct-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _$args138356_
        (apply make-struct-instance gx#core-expander::t _$args138356_)))
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
      (make-struct-type*
       'gx#expression-form::t
       'expression-form
       gx#core-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (make-struct-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _$args138353_
        (apply make-struct-instance gx#expression-form::t _$args138353_)))
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
      (make-struct-type*
       'gx#special-form::t
       'special-form
       gx#core-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (make-struct-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _$args138350_
        (apply make-struct-instance gx#special-form::t _$args138350_)))
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
      (make-struct-type*
       'gx#definition-form::t
       'definition-form
       gx#special-form::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (make-struct-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _$args138347_
        (apply make-struct-instance gx#definition-form::t _$args138347_)))
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
      (make-struct-type*
       'gx#top-special-form::t
       'top-special-form
       gx#special-form::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (make-struct-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _$args138344_
        (apply make-struct-instance gx#top-special-form::t _$args138344_)))
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
      (make-struct-type*
       'gx#module-special-form::t
       'module-special-form
       gx#top-special-form::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (make-struct-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _$args138341_
        (apply make-struct-instance gx#module-special-form::t _$args138341_)))
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
      (make-struct-type*
       'gx#feature-expander::t
       'feature-expander
       gx#expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (make-struct-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _$args138338_
        (apply make-struct-instance gx#feature-expander::t _$args138338_)))
    (define gx#feature-expander-e
      (make-struct-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (make-struct-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (make-struct-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (make-struct-type*
       'gx#private-feature-expander::t
       'private-feature-expander
       gx#feature-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (make-struct-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _$args138335_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args138335_)))
    (define gx#private-feature-expander-e
      (make-struct-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (make-struct-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (make-struct-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (make-struct-type*
       'gx#reserved-expander::t
       'reserved-expander
       gx#expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (make-struct-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _$args138332_
        (apply make-struct-instance gx#reserved-expander::t _$args138332_)))
    (define gx#reserved-expander-e
      (make-struct-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (make-struct-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (make-struct-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (make-struct-type*
       'gx#core-macro::t
       'macro-expander
       gx#expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (make-struct-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _$args138329_
        (apply make-struct-instance gx#macro-expander::t _$args138329_)))
    (define gx#macro-expander-e
      (make-struct-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (make-struct-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (make-struct-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (make-struct-type*
       'gx#rename-macro-expander::t
       'rename-macro-expander
       gx#macro-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (make-struct-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _$args138326_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args138326_)))
    (define gx#rename-macro-expander-e
      (make-struct-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (make-struct-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (make-struct-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (make-struct-type*
       'gx#macro-expander::t
       'user-expander
       gx#macro-expander::t
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (make-struct-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _$args138323_
        (apply make-struct-instance gx#user-expander::t _$args138323_)))
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
      (make-struct-type*
       'gx#expander-mark::t
       'expander-mark
       '#f
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (make-struct-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _$args138320_
        (apply make-struct-instance gx#expander-mark::t _$args138320_)))
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
      (lambda (_ctx138305_ _message138306_ _stx138307_ . _details138308_)
        (let ((_ctx138318_
               (let ((_$e138310_ _ctx138305_))
                 (if _$e138310_
                     _$e138310_
                     (let ((_$e138313_ (gx#core-context-top__0)))
                       (if _$e138313_
                           ((lambda (_ctx138316_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx138316_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e138313_)
                           '#f))))))
          (raise (make-syntax-error
                  _message138306_
                  (cons _stx138307_ _details138308_)
                  _ctx138318_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx138292_ _expression?138293_)
        (gx#eval-syntax* (gx#core-expand__% _stx138292_ _expression?138293_))))
    (define gx#eval-syntax__0
      (lambda (_stx138298_)
        (let ((_expression?138300_ '#f))
          (gx#eval-syntax__% _stx138298_ _expression?138300_))))
    (define gx#eval-syntax
      (lambda _g142923_
        (let ((_g142922_ (##length _g142923_)))
          (cond ((##fx= _g142922_ 1)
                 (apply (lambda (_stx138298_) (gx#eval-syntax__0 _stx138298_))
                        _g142923_))
                ((##fx= _g142922_ 2)
                 (apply (lambda (_stx138302_ _expression?138303_)
                          (gx#eval-syntax__% _stx138302_ _expression?138303_))
                        _g142923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g142923_))))))
    (define gx#eval-syntax*
      (lambda (_stx138289_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx138289_))))
    (define gx#core-expand__%
      (lambda (_stx138276_ _expression?138277_)
        (if _expression?138277_
            (gx#core-expand-expression _stx138276_)
            (gx#core-expand-top _stx138276_))))
    (define gx#core-expand__0
      (lambda (_stx138282_)
        (let ((_expression?138284_ '#f))
          (gx#core-expand__% _stx138282_ _expression?138284_))))
    (define gx#core-expand
      (lambda _g142925_
        (let ((_g142924_ (##length _g142925_)))
          (cond ((##fx= _g142924_ 1)
                 (apply (lambda (_stx138282_) (gx#core-expand__0 _stx138282_))
                        _g142925_))
                ((##fx= _g142924_ 2)
                 (apply (lambda (_stx138286_ _expression?138287_)
                          (gx#core-expand__% _stx138286_ _expression?138287_))
                        _g142925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g142925_))))))
    (define gx#core-expand-top
      (lambda (_stx138243_)
        (let* ((_stx138245_ (gx#core-expand*__0 _stx138243_))
               (_e138246138253_ _stx138245_)
               (_E138248138257_
                (lambda () (gx#core-expand-expression _stx138245_)))
               (_E138247138271_
                (lambda ()
                  (if (gx#stx-pair? _e138246138253_)
                      (let ((_e138249138261_ (gx#syntax-e _e138246138253_)))
                        (let ((_hd138250138264_ (##car _e138249138261_))
                              (_tl138251138266_ (##cdr _e138249138261_)))
                          (let ((_form138269_ _hd138250138264_))
                            (if (gx#core-bound-identifier?__0 _form138269_)
                                _stx138245_
                                (_E138248138257_)))))
                      (_E138248138257_)))))
          (_E138247138271_))))
    (define gx#core-expand-expression
      (lambda (_stx138190_)
        (letrec ((_sealed-expression?138192_
                  (lambda (_hd138213_)
                    (if (gx#sealed-syntax? _hd138213_)
                        (let* ((_e138214138221_ _hd138213_)
                               (_E138216138225_ (lambda () '#f))
                               (_E138215138239_
                                (lambda ()
                                  (if (gx#stx-pair? _e138214138221_)
                                      (let ((_e138217138229_
                                             (gx#syntax-e _e138214138221_)))
                                        (let ((_hd138218138232_
                                               (##car _e138217138229_))
                                              (_tl138219138234_
                                               (##cdr _e138217138229_)))
                                          (let ((_form138237_
                                                 _hd138218138232_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form138237_
                                                 gx#expression-form-binding?)
                                                (_E138216138225_)))))
                                      (_E138216138225_)))))
                          (_E138215138239_))
                        '#f)))
                 (_illegal-expression138193_
                  (lambda (_hd138211_ . _g142926_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx138190_
                     _hd138211_)))
                 (_expand-e138194_
                  (lambda (_form138206_ _hd138207_)
                    (let ((_bind138209_
                           (if (##structure-instance-of?
                                _form138206_
                                'gx#binding::t)
                               _form138206_
                               (gx#resolve-identifier__0 _form138206_))))
                      (if (gx#core-expander-binding? _bind138209_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind138209_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd138207_
                            (gx#stx-source _stx138190_)))
                          (if (##structure-direct-instance-of?
                               _bind138209_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind138209_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd138207_
                                 (gx#stx-source _stx138190_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx138190_
                               _form138206_)))))))
          (let ((_hd138196_ (gx#core-expand-head _stx138190_)))
            (if (_sealed-expression?138192_ _hd138196_)
                _hd138196_
                (if (gx#stx-pair? _hd138196_)
                    (let* ((_form138198_ (gx#stx-car _hd138196_))
                           (_bind138200_
                            (if (gx#identifier? _form138198_)
                                (gx#resolve-identifier__0 _form138198_)
                                '#f)))
                      (if (or (not _bind138200_)
                              (not (gx#core-expander-binding? _bind138200_)))
                          (_expand-e138194_ '%%app (cons '%%app _hd138196_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind138200_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd138196_
                               _illegal-expression138193_)
                              (if (gx#expression-form-binding? _bind138200_)
                                  (_expand-e138194_ _bind138200_ _hd138196_)
                                  (if (gx#direct-special-form-binding?
                                       _bind138200_)
                                      (gx#core-expand-expression
                                       (_expand-e138194_
                                        _bind138200_
                                        _hd138196_))
                                      (_illegal-expression138193_
                                       _hd138196_))))))
                    (if (gx#core-bound-identifier?__0 _hd138196_)
                        (_illegal-expression138193_ _hd138196_)
                        (if (gx#identifier? _hd138196_)
                            (_expand-e138194_
                             '%%ref
                             (cons '%%ref (cons _hd138196_ '())))
                            (if (gx#stx-datum? _hd138196_)
                                (_expand-e138194_
                                 '%#quote
                                 (cons '%#quote (cons _hd138196_ '())))
                                (_illegal-expression138193_
                                 _hd138196_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx138185_)
        (call-with-parameters
         (lambda ()
           (let ((_stx138188_ (gx#core-expand-expression _stx138185_)))
             (values _stx138188_ (gx#eval-syntax* _stx138188_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx138166_ _stop?138167_)
        (let _lp138169_ ((_stx138171_ _stx138166_))
          (if (_stop?138167_ _stx138171_)
              _stx138171_
              (let ((_rstx138173_ (gx#core-expand1 _stx138171_)))
                (if (eq? _stx138171_ _rstx138173_)
                    _stx138171_
                    (_lp138169_ _rstx138173_)))))))
    (define gx#core-expand*__0
      (lambda (_stx138178_)
        (let ((_stop?138180_ false))
          (gx#core-expand*__% _stx138178_ _stop?138180_))))
    (define gx#core-expand*
      (lambda _g142928_
        (let ((_g142927_ (##length _g142928_)))
          (cond ((##fx= _g142927_ 1)
                 (apply (lambda (_stx138178_) (gx#core-expand*__0 _stx138178_))
                        _g142928_))
                ((##fx= _g142927_ 2)
                 (apply (lambda (_stx138182_ _stop?138183_)
                          (gx#core-expand*__% _stx138182_ _stop?138183_))
                        _g142928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g142928_))))))
    (define gx#core-expand1
      (lambda (_stx138122_)
        (letrec ((_step138124_
                  (lambda (_hd138161_)
                    (let ((_bind138163_ (gx#resolve-identifier__0 _hd138161_)))
                      (if (##structure-instance-of?
                           _bind138163_
                           'gx#runtime-binding::t)
                          _stx138122_
                          (if (##structure-direct-instance-of?
                               _bind138163_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind138163_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx138122_)
                              (if (not _bind138163_)
                                  _stx138122_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx138122_))))))))
          (let* ((_e138125138133_ _stx138122_)
                 (_E138131138137_ (lambda () _stx138122_))
                 (_E138127138143_
                  (lambda ()
                    (let ((_hd138141_ _e138125138133_))
                      (if (gx#identifier? _hd138141_)
                          (_step138124_ _hd138141_)
                          (_E138131138137_)))))
                 (_E138126138157_
                  (lambda ()
                    (if (gx#stx-pair? _e138125138133_)
                        (let ((_e138128138147_ (gx#syntax-e _e138125138133_)))
                          (let ((_hd138129138150_ (##car _e138128138147_))
                                (_tl138130138152_ (##cdr _e138128138147_)))
                            (let ((_hd138155_ _hd138129138150_))
                              (if (gx#identifier? _hd138155_)
                                  (_step138124_ _hd138155_)
                                  (_E138127138143_)))))
                        (_E138127138143_)))))
            (_E138126138157_)))))
    (define gx#core-expand-head
      (lambda (_stx138088_)
        (letrec ((_stop?138090_
                  (lambda (_stx138092_)
                    (let* ((_e138093138100_ _stx138092_)
                           (_E138095138104_ (lambda () '#f))
                           (_E138094138118_
                            (lambda ()
                              (if (gx#stx-pair? _e138093138100_)
                                  (let ((_e138096138108_
                                         (gx#syntax-e _e138093138100_)))
                                    (let ((_hd138097138111_
                                           (##car _e138096138108_))
                                          (_tl138098138113_
                                           (##cdr _e138096138108_)))
                                      (let ((_hd138116_ _hd138097138111_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd138116_)
                                            (_E138095138104_)))))
                                  (_E138095138104_)))))
                      (_E138094138118_)))))
          (gx#core-expand*__% _stx138088_ _stop?138090_))))
    (define gx#core-expand-block__%
      (lambda (_stx137894_
               _expand-special137895_
               _begin-form137896_
               _expand-e137897_)
        (letrec ((_expand-splice137899_
                  (lambda (_hd138062_ _body138063_ _rest138064_ _r138065_)
                    (if (gx#stx-list? _body138063_)
                        (_K137903_
                         (gx#stx-foldr cons _rest138064_ _body138063_)
                         _r138065_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx137894_
                         _hd138062_))))
                 (_expand-cond-expand137900_
                  (lambda (_hd138058_ _rest138059_ _r138060_)
                    (_K137903_
                     (cons (gx#core-expand-cond-expand% _hd138058_)
                           _rest138059_)
                     _r138060_)))
                 (_expand-include137901_
                  (lambda (_hd138007_ _rest138008_ _r138009_)
                    (let* ((_e138010138020_ _hd138007_)
                           (_E138012138024_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e138010138020_)))
                           (_E138011138054_
                            (lambda ()
                              (if (gx#stx-pair? _e138010138020_)
                                  (let ((_e138013138028_
                                         (gx#syntax-e _e138010138020_)))
                                    (let ((_hd138014138031_
                                           (##car _e138013138028_))
                                          (_tl138015138033_
                                           (##cdr _e138013138028_)))
                                      (if (gx#stx-pair? _tl138015138033_)
                                          (let ((_e138016138036_
                                                 (gx#syntax-e
                                                  _tl138015138033_)))
                                            (let ((_hd138017138039_
                                                   (##car _e138016138036_))
                                                  (_tl138018138041_
                                                   (##cdr _e138016138036_)))
                                              (let ((_path138044_
                                                     _hd138017138039_))
                                                (if (gx#stx-null?
                                                     _tl138018138041_)
                                                    (if (gx#stx-string?
                                                         _path138044_)
                                                        (let* ((_rpath138046_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path138044_
                         (gx#stx-source _hd138007_)))
                       (_block138048_
                        (gx#core-expand-include%__% _hd138007_ _rpath138046_))
                       (_rbody138051_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block138048_
                            _expand-special137895_
                            '#f
                            _expand-e137897_))
                         gx#current-expander-path
                         (cons _rpath138046_ (gx#current-expander-path)))))
                  (_K137903_
                   _rest138008_
                   (foldr1 cons _r138009_ _rbody138051_)))
                (_E138012138024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E138012138024_)))))
                                          (_E138012138024_))))
                                  (_E138012138024_)))))
                      (_E138011138054_))))
                 (_expand-expression137902_
                  (lambda (_hd138003_ _rest138004_ _r138005_)
                    (_K137903_
                     _rest138004_
                     (cons (_expand-e137897_ _hd138003_) _r138005_))))
                 (_K137903_
                  (lambda (_rest137933_ _r137934_)
                    (let* ((_e137935137942_ _rest137933_)
                           (_E137937137946_
                            (lambda ()
                              (if _begin-form137896_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form137896_
                                    (reverse _r137934_))
                                   (gx#stx-source _stx137894_))
                                  _r137934_)))
                           (_E137936137999_
                            (lambda ()
                              (if (gx#stx-pair? _e137935137942_)
                                  (let ((_e137938137950_
                                         (gx#syntax-e _e137935137942_)))
                                    (let ((_hd137939137953_
                                           (##car _e137938137950_))
                                          (_tl137940137955_
                                           (##cdr _e137938137950_)))
                                      (let* ((_hd137958_ _hd137939137953_)
                                             (_rest137960_ _tl137940137955_))
                                        (if '#t
                                            (let* ((_hd137962_
                                                    (gx#core-expand-head
                                                     _hd137958_))
                                                   (_e137963137970_ _hd137962_)
                                                   (_E137965137974_
                                                    (lambda ()
                                                      (_expand-expression137902_
                                                       _hd137962_
                                                       _rest137960_
                                                       _r137934_)))
                                                   (_E137964137995_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e137963137970_)
                                                          (let ((_e137966137978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e137963137970_)))
                    (let ((_hd137967137981_ (##car _e137966137978_))
                          (_tl137968137983_ (##cdr _e137966137978_)))
                      (let* ((_form137986_ _hd137967137981_)
                             (_body137988_ _tl137968137983_))
                        (if '#t
                            (let ((_bind137990_
                                   (if (gx#identifier? _form137986_)
                                       (gx#resolve-identifier__0 _form137986_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind137990_)
                                  (let ((_$e137992_
                                         (##unchecked-structure-ref
                                          _bind137990_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e137992_)
                                        (_expand-splice137899_
                                         _hd137962_
                                         _body137988_
                                         _rest137960_
                                         _r137934_)
                                        (if (eq? '%#cond-expand _$e137992_)
                                            (_expand-cond-expand137900_
                                             _hd137962_
                                             _rest137960_
                                             _r137934_)
                                            (if (eq? '%#include _$e137992_)
                                                (_expand-include137901_
                                                 _hd137962_
                                                 _rest137960_
                                                 _r137934_)
                                                (_expand-special137895_
                                                 _hd137962_
                                                 _K137903_
                                                 _rest137960_
                                                 _r137934_)))))
                                  (_expand-expression137902_
                                   _hd137962_
                                   _rest137960_
                                   _r137934_)))
                            (_E137965137974_)))))
                  (_E137965137974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137964137995_))
                                            (_E137937137946_)))))
                                  (_E137937137946_)))))
                      (_E137936137999_)))))
          (let* ((_e137904137911_ _stx137894_)
                 (_E137906137915_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e137904137911_)))
                 (_E137905137929_
                  (lambda ()
                    (if (gx#stx-pair? _e137904137911_)
                        (let ((_e137907137919_ (gx#syntax-e _e137904137911_)))
                          (let ((_hd137908137922_ (##car _e137907137919_))
                                (_tl137909137924_ (##cdr _e137907137919_)))
                            (let ((_body137927_ _tl137909137924_))
                              (if (gx#stx-list? _body137927_)
                                  (_K137903_ _body137927_ '())
                                  (_E137906137915_)))))
                        (_E137906137915_)))))
            (_E137905137929_)))))
    (define gx#core-expand-block__0
      (lambda (_stx138070_ _expand-special138071_)
        (let* ((_begin-form138073_ '%#begin)
               (_expand-e138075_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx138070_
           _expand-special138071_
           _begin-form138073_
           _expand-e138075_))))
    (define gx#core-expand-block__1
      (lambda (_stx138077_ _expand-special138078_ _begin-form138079_)
        (let ((_expand-e138081_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx138077_
           _expand-special138078_
           _begin-form138079_
           _expand-e138081_))))
    (define gx#core-expand-block
      (lambda _g142930_
        (let ((_g142929_ (##length _g142930_)))
          (cond ((##fx= _g142929_ 2)
                 (apply (lambda (_stx138070_ _expand-special138071_)
                          (gx#core-expand-block__0
                           _stx138070_
                           _expand-special138071_))
                        _g142930_))
                ((##fx= _g142929_ 3)
                 (apply (lambda (_stx138077_
                                 _expand-special138078_
                                 _begin-form138079_)
                          (gx#core-expand-block__1
                           _stx138077_
                           _expand-special138078_
                           _begin-form138079_))
                        _g142930_))
                ((##fx= _g142929_ 4)
                 (apply (lambda (_stx138083_
                                 _expand-special138084_
                                 _begin-form138085_
                                 _expand-e138086_)
                          (gx#core-expand-block__%
                           _stx138083_
                           _expand-special138084_
                           _begin-form138085_
                           _expand-e138086_))
                        _g142930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g142930_))))))
    (define gx#core-expand-block*
      (lambda (_stx137842_ _expand-special137843_)
        (let* ((_g137844137855_
                (gx#core-expand-block__1
                 _stx137842_
                 _expand-special137843_
                 '#f))
               (_E137848137859_
                (lambda () (error '"No clause matching" _g137844137855_))))
          (let ((_K137853137890_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx137842_)))
                (_K137850137876_ (lambda (_expr137874_) _expr137874_))
                (_K137849137865_
                 (lambda (_body137863_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body137863_))
                    (gx#stx-source _stx137842_)))))
            (let ((_try-match137846137886_
                   (lambda ()
                     (if (##pair? _g137844137855_)
                         (let ((_tl137852137881_ (##cdr _g137844137855_))
                               (_hd137851137879_ (##car _g137844137855_)))
                           (if (##null? _tl137852137881_)
                               (let ((_expr137884_ _hd137851137879_))
                                 (_K137850137876_ _expr137884_))
                               (let ((_body137868_ _g137844137855_))
                                 (_K137849137865_ _body137868_))))
                         (let ((_body137868_ _g137844137855_))
                           (_K137849137865_ _body137868_))))))
              (if (##null? _g137844137855_)
                  (_K137853137890_)
                  (_try-match137846137886_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx137670_)
        (letrec ((_satisfied?137672_
                  (lambda (_condition137770_)
                    (let* ((_e137771137786_ _condition137770_)
                           (_E137781137790_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e137771137786_)))
                           (_E137774137809_
                            (lambda ()
                              (if (gx#stx-pair? _e137771137786_)
                                  (let ((_e137782137794_
                                         (gx#syntax-e _e137771137786_)))
                                    (let ((_hd137783137797_
                                           (##car _e137782137794_))
                                          (_tl137784137799_
                                           (##cdr _e137782137794_)))
                                      (let* ((_combinator137802_
                                              _hd137783137797_)
                                             (_body137804_ _tl137784137799_))
                                        (if (gx#stx-list? _body137804_)
                                            (let ((_$e137806_
                                                   (gx#stx-e
                                                    _combinator137802_)))
                                              (if (eq? 'not _$e137806_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?137672_
                                                        _body137804_))
                                                  (if (eq? 'and _$e137806_)
                                                      (gx#stx-andmap
                                                       _satisfied?137672_
                                                       _body137804_)
                                                      (if (eq? 'or _$e137806_)
                                                          (gx#stx-ormap
                                                           _satisfied?137672_
                                                           _body137804_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e137806_)
                      (gx#stx-andmap gx#core-resolve-identifier _body137804_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx137670_
                       _combinator137802_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E137781137790_)))))
                                  (_E137781137790_))))
                           (_E137773137832_
                            (lambda ()
                              (if (gx#stx-pair? _e137771137786_)
                                  (let ((_e137775137813_
                                         (gx#syntax-e _e137771137786_)))
                                    (let ((_hd137776137816_
                                           (##car _e137775137813_))
                                          (_tl137777137818_
                                           (##cdr _e137775137813_)))
                                      (if (and (gx#identifier?
                                                _hd137776137816_)
                                               (gx#core-identifier=?
                                                _hd137776137816_
                                                'unquote))
                                          (if (gx#stx-pair? _tl137777137818_)
                                              (let ((_e137778137821_
                                                     (gx#syntax-e
                                                      _tl137777137818_)))
                                                (let ((_hd137779137824_
                                                       (##car _e137778137821_))
                                                      (_tl137780137826_
                                                       (##cdr _e137778137821_)))
                                                  (let ((_expr137829_
                                                         _hd137779137824_))
                                                    (if (gx#stx-null?
                                                         _tl137780137826_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr137829_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E137774137809_))
                (_E137774137809_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137774137809_))
                                          (_E137774137809_))))
                                  (_E137774137809_))))
                           (_E137772137838_
                            (lambda ()
                              (let ((_id137836_ _e137771137786_))
                                (if (gx#identifier? _id137836_)
                                    (gx#core-bound-identifier?__%
                                     _id137836_
                                     gx#feature-binding?)
                                    (_E137773137832_))))))
                      (_E137772137838_))))
                 (_loop137673_
                  (lambda (_rest137703_)
                    (let* ((_e137704137712_ _rest137703_)
                           (_E137710137716_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e137704137712_)))
                           (_E137706137720_
                            (lambda ()
                              (if (gx#stx-null? _e137704137712_)
                                  (if '#t '() (_E137710137716_))
                                  (_E137710137716_))))
                           (_E137705137766_
                            (lambda ()
                              (if (gx#stx-pair? _e137704137712_)
                                  (let ((_e137707137724_
                                         (gx#syntax-e _e137704137712_)))
                                    (let ((_hd137708137727_
                                           (##car _e137707137724_))
                                          (_tl137709137729_
                                           (##cdr _e137707137724_)))
                                      (let* ((_hd137732_ _hd137708137727_)
                                             (_rest137734_ _tl137709137729_))
                                        (if '#t
                                            (let* ((_e137735137742_ _hd137732_)
                                                   (_E137737137746_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e137735137742_)))
                                                   (_E137736137762_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e137735137742_)
                                                          (let ((_e137738137750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e137735137742_)))
                    (let ((_hd137739137753_ (##car _e137738137750_))
                          (_tl137740137755_ (##cdr _e137738137750_)))
                      (let* ((_condition137758_ _hd137739137753_)
                             (_body137760_ _tl137740137755_))
                        (if '#t
                            (if (gx#stx-eq? _condition137758_ 'else)
                                (if (gx#stx-null? _rest137734_)
                                    _body137760_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx137670_
                                     _hd137732_))
                                (if (_satisfied?137672_ _condition137758_)
                                    _body137760_
                                    (_loop137673_ _rest137734_)))
                            (_E137737137746_)))))
                  (_E137737137746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137736137762_))
                                            (_E137706137720_)))))
                                  (_E137706137720_)))))
                      (_E137705137766_)))))
          (let* ((_e137674137681_ _stx137670_)
                 (_E137676137685_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e137674137681_)))
                 (_E137675137699_
                  (lambda ()
                    (if (gx#stx-pair? _e137674137681_)
                        (let ((_e137677137689_ (gx#syntax-e _e137674137681_)))
                          (let ((_hd137678137692_ (##car _e137677137689_))
                                (_tl137679137694_ (##cdr _e137677137689_)))
                            (let ((_clauses137697_ _tl137679137694_))
                              (if (gx#stx-list? _clauses137697_)
                                  (gx#core-cons
                                   'begin
                                   (_loop137673_ _clauses137697_))
                                  (_E137676137685_)))))
                        (_E137676137685_)))))
            (_E137675137699_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx137613_ _rpath137614_)
        (let* ((_e137615137625_ _stx137613_)
               (_E137617137629_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e137615137625_)))
               (_E137616137656_
                (lambda ()
                  (if (gx#stx-pair? _e137615137625_)
                      (let ((_e137618137633_ (gx#syntax-e _e137615137625_)))
                        (let ((_hd137619137636_ (##car _e137618137633_))
                              (_tl137620137638_ (##cdr _e137618137633_)))
                          (if (gx#stx-pair? _tl137620137638_)
                              (let ((_e137621137641_
                                     (gx#syntax-e _tl137620137638_)))
                                (let ((_hd137622137644_
                                       (##car _e137621137641_))
                                      (_tl137623137646_
                                       (##cdr _e137621137641_)))
                                  (let ((_path137649_ _hd137622137644_))
                                    (if (gx#stx-null? _tl137623137646_)
                                        (if (gx#stx-string? _path137649_)
                                            (let ((_rpath137654_
                                                   (let ((_$e137651_
                                                          _rpath137614_))
                                                     (if _$e137651_
                                                         _$e137651_
                                                         (gx#core-resolve-path__%
                                                          _path137649_
                                                          (gx#stx-source
                                                           _stx137613_))))))
                                              (if (member _rpath137654_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx137613_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath137654_))
                                                    (gx#stx-source
                                                     _stx137613_)))))
                                            (_E137617137629_))
                                        (_E137617137629_)))))
                              (_E137617137629_))))
                      (_E137617137629_)))))
          (_E137616137656_))))
    (define gx#core-expand-include%__0
      (lambda (_stx137663_)
        (let ((_rpath137665_ '#f))
          (gx#core-expand-include%__% _stx137663_ _rpath137665_))))
    (define gx#core-expand-include%
      (lambda _g142932_
        (let ((_g142931_ (##length _g142932_)))
          (cond ((##fx= _g142931_ 1)
                 (apply (lambda (_stx137663_)
                          (gx#core-expand-include%__0 _stx137663_))
                        _g142932_))
                ((##fx= _g142931_ 2)
                 (apply (lambda (_stx137667_ _rpath137668_)
                          (gx#core-expand-include%__%
                           _stx137667_
                           _rpath137668_))
                        _g142932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g142932_))))))
    (define gx#core-apply-expander__%
      (lambda (_K137582_ _stx137583_ _method137584_)
        (if (procedure? _K137582_)
            (let ((_$e137586_ (gx#stx-source _stx137583_)))
              (if _$e137586_
                  ((lambda (_g137588137590_)
                     (gx#stx-wrap-source
                      (_K137582_ _stx137583_)
                      _g137588137590_))
                   _$e137586_)
                  (_K137582_ _stx137583_)))
            (let ((_$e137593_ (bound-method-ref _K137582_ _method137584_)))
              (if _$e137593_
                  ((lambda (_g137595137597_)
                     (gx#core-apply-expander__%
                      _g137595137597_
                      _stx137583_
                      _method137584_))
                   _$e137593_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx137583_
                   _method137584_))))))
    (define gx#core-apply-expander__0
      (lambda (_K137603_ _stx137604_)
        (let ((_method137606_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K137603_ _stx137604_ _method137606_))))
    (define gx#core-apply-expander
      (lambda _g142934_
        (let ((_g142933_ (##length _g142934_)))
          (cond ((##fx= _g142933_ 2)
                 (apply (lambda (_K137603_ _stx137604_)
                          (gx#core-apply-expander__0 _K137603_ _stx137604_))
                        _g142934_))
                ((##fx= _g142933_ 3)
                 (apply (lambda (_K137608_ _stx137609_ _method137610_)
                          (gx#core-apply-expander__%
                           _K137608_
                           _stx137609_
                           _method137610_))
                        _g142934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g142934_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self137578_ _stx137579_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx137579_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self137431_ _stx137432_)
        (let* ((_self137433137439_ _self137431_)
               (_E137435137443_
                (lambda () (error '"No clause matching" _self137433137439_)))
               (_K137436137448_
                (lambda (_K137446_)
                  (gx#core-apply-expander__0 _K137446_ _stx137432_))))
          (if (##structure-instance-of? _self137433137439_ 'gx#core-macro::t)
              (let* ((_e137437137451_
                      (##unchecked-structure-ref
                       _self137433137439_
                       '1
                       gx#expander::t
                       '#f))
                     (_K137454_ _e137437137451_))
                (_K137436137448_ _K137454_))
              (_E137435137443_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self137284_ _stx137285_)
        (if (gx#sealed-syntax? _stx137285_)
            _stx137285_
            (let* ((_self137286137292_ _self137284_)
                   (_E137288137296_
                    (lambda ()
                      (error '"No clause matching" _self137286137292_)))
                   (_K137289137301_
                    (lambda (_K137299_)
                      (gx#core-apply-expander__0 _K137299_ _stx137285_))))
              (if (##structure-instance-of?
                   _self137286137292_
                   'gx#core-expander::t)
                  (let* ((_e137290137304_
                          (##unchecked-structure-ref
                           _self137286137292_
                           '1
                           gx#expander::t
                           '#f))
                         (_K137307_ _e137290137304_))
                    (_K137289137301_ _K137307_))
                  (_E137288137296_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self137146_ _stx137147_ _top?137148_)
        (if (_top?137148_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self137146_ _stx137147_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx137147_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self137153_ _stx137154_)
        (let ((_top?137156_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self137153_
           _stx137154_
           _top?137156_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g142936_
        (let ((_g142935_ (##length _g142936_)))
          (cond ((##fx= _g142935_ 2)
                 (apply (lambda (_self137153_ _stx137154_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self137153_
                           _stx137154_))
                        _g142936_))
                ((##fx= _g142935_ 3)
                 (apply (lambda (_self137158_ _stx137159_ _top?137160_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self137158_
                           _stx137159_
                           _top?137160_))
                        _g142936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g142936_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self137020_ _stx137021_)
        (gx#top-special-form::apply-macro-expander__%
         _self137020_
         _stx137021_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self136845_ _stx136846_)
        (let* ((_self136847136853_ _self136845_)
               (_E136849136857_
                (lambda () (error '"No clause matching" _self136847136853_)))
               (_K136850136890_
                (lambda (_id136860_)
                  (let* ((_e136861136868_ _stx136846_)
                         (_E136863136872_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e136861136868_)))
                         (_E136862136886_
                          (lambda ()
                            (if (gx#stx-pair? _e136861136868_)
                                (let ((_e136864136876_
                                       (gx#syntax-e _e136861136868_)))
                                  (let ((_hd136865136879_
                                         (##car _e136864136876_))
                                        (_tl136866136881_
                                         (##cdr _e136864136876_)))
                                    (let ((_body136884_ _tl136866136881_))
                                      (if '#t
                                          (gx#core-cons
                                           _id136860_
                                           _body136884_)
                                          (_E136863136872_)))))
                                (_E136863136872_)))))
                    (_E136862136886_)))))
          (if (##structure-instance-of?
               _self136847136853_
               'gx#rename-macro-expander::t)
              (let* ((_e136851136893_
                      (##unchecked-structure-ref
                       _self136847136853_
                       '1
                       gx#expander::t
                       '#f))
                     (_id136896_ _e136851136893_))
                (_K136850136890_ _id136896_))
              (_E136849136857_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self136671_ _stx136672_ _method136673_)
        (let* ((_self136674136682_ _self136671_)
               (_E136676136686_
                (lambda () (error '"No clause matching" _self136674136682_)))
               (_K136677136693_
                (lambda (_phi136689_ _ctx136690_ _K136691_)
                  (gx#core-apply-user-macro
                   _K136691_
                   _stx136672_
                   _ctx136690_
                   _phi136689_
                   _method136673_))))
          (if (##structure-instance-of?
               _self136674136682_
               'gx#macro-expander::t)
              (let* ((_e136678136696_
                      (##unchecked-structure-ref
                       _self136674136682_
                       '1
                       gx#expander::t
                       '#f))
                     (_K136699_ _e136678136696_)
                     (_e136679136701_
                      (##unchecked-structure-ref
                       _self136674136682_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx136704_ _e136679136701_)
                     (_e136680136706_
                      (##unchecked-structure-ref
                       _self136674136682_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi136709_ _e136680136706_))
                (_K136677136693_ _phi136709_ _ctx136704_ _K136699_))
              (_E136676136686_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self136714_ _stx136715_)
        (let ((_method136717_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self136714_
           _stx136715_
           _method136717_))))
    (define gx#core-apply-user-expander
      (lambda _g142938_
        (let ((_g142937_ (##length _g142938_)))
          (cond ((##fx= _g142937_ 2)
                 (apply (lambda (_self136714_ _stx136715_)
                          (gx#core-apply-user-expander__0
                           _self136714_
                           _stx136715_))
                        _g142938_))
                ((##fx= _g142937_ 3)
                 (apply (lambda (_self136719_ _stx136720_ _method136721_)
                          (gx#core-apply-user-expander__%
                           _self136719_
                           _stx136720_
                           _method136721_))
                        _g142938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g142938_))))))
    (define gx#core-apply-user-macro
      (lambda (_K136661_ _stx136662_ _ctx136663_ _phi136664_ _method136665_)
        (let ((_mark136667_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx136663_
                _phi136664_
                _stx136662_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K136661_
               (gx#stx-apply-mark _stx136662_ _mark136667_)
               _method136665_)
              _mark136667_))
           gx#current-expander-marks
           (cons _mark136667_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx136513_ _phi136514_ _ctx136515_)
        (let _lp136517_ ((_bind136519_
                          (gx#core-resolve-identifier__%
                           _stx136513_
                           _phi136514_
                           _ctx136515_)))
          (if (##structure-direct-instance-of?
               _bind136519_
               'gx#import-binding::t)
              (_lp136517_
               (##unchecked-structure-ref
                _bind136519_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind136519_
                   'gx#alias-binding::t)
                  (_lp136517_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind136519_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi136514_
                    _ctx136515_))
                  _bind136519_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx136524_)
        (let* ((_phi136526_ (gx#current-expander-phi))
               (_ctx136528_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx136524_ _phi136526_ _ctx136528_))))
    (define gx#resolve-identifier__1
      (lambda (_stx136530_ _phi136531_)
        (let ((_ctx136533_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx136530_ _phi136531_ _ctx136533_))))
    (define gx#resolve-identifier
      (lambda _g142940_
        (let ((_g142939_ (##length _g142940_)))
          (cond ((##fx= _g142939_ 1)
                 (apply (lambda (_stx136524_)
                          (gx#resolve-identifier__0 _stx136524_))
                        _g142940_))
                ((##fx= _g142939_ 2)
                 (apply (lambda (_stx136530_ _phi136531_)
                          (gx#resolve-identifier__1 _stx136530_ _phi136531_))
                        _g142940_))
                ((##fx= _g142939_ 3)
                 (apply (lambda (_stx136535_ _phi136536_ _ctx136537_)
                          (gx#resolve-identifier__%
                           _stx136535_
                           _phi136536_
                           _ctx136537_))
                        _g142940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g142940_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx136471_ _val136472_ _rebind?136473_ _phi136474_ _ctx136475_)
        (let ((_rebind?136477_
               (if (not _rebind?136473_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?136473_) _rebind?136473_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx136471_)
           _val136472_
           _rebind?136477_
           _phi136474_
           _ctx136475_))))
    (define gx#bind-identifier!__0
      (lambda (_stx136482_ _val136483_)
        (let* ((_rebind?136485_ '#f)
               (_phi136487_ (gx#current-expander-phi))
               (_ctx136489_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136482_
           _val136483_
           _rebind?136485_
           _phi136487_
           _ctx136489_))))
    (define gx#bind-identifier!__1
      (lambda (_stx136491_ _val136492_ _rebind?136493_)
        (let* ((_phi136495_ (gx#current-expander-phi))
               (_ctx136497_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136491_
           _val136492_
           _rebind?136493_
           _phi136495_
           _ctx136497_))))
    (define gx#bind-identifier!__2
      (lambda (_stx136499_ _val136500_ _rebind?136501_ _phi136502_)
        (let ((_ctx136504_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136499_
           _val136500_
           _rebind?136501_
           _phi136502_
           _ctx136504_))))
    (define gx#bind-identifier!
      (lambda _g142942_
        (let ((_g142941_ (##length _g142942_)))
          (cond ((##fx= _g142941_ 2)
                 (apply (lambda (_stx136482_ _val136483_)
                          (gx#bind-identifier!__0 _stx136482_ _val136483_))
                        _g142942_))
                ((##fx= _g142941_ 3)
                 (apply (lambda (_stx136491_ _val136492_ _rebind?136493_)
                          (gx#bind-identifier!__1
                           _stx136491_
                           _val136492_
                           _rebind?136493_))
                        _g142942_))
                ((##fx= _g142941_ 4)
                 (apply (lambda (_stx136499_
                                 _val136500_
                                 _rebind?136501_
                                 _phi136502_)
                          (gx#bind-identifier!__2
                           _stx136499_
                           _val136500_
                           _rebind?136501_
                           _phi136502_))
                        _g142942_))
                ((##fx= _g142941_ 5)
                 (apply (lambda (_stx136506_
                                 _val136507_
                                 _rebind?136508_
                                 _phi136509_
                                 _ctx136510_)
                          (gx#bind-identifier!__%
                           _stx136506_
                           _val136507_
                           _rebind?136508_
                           _phi136509_
                           _ctx136510_))
                        _g142942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g142942_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx136443_ _phi136444_ _ctx136445_)
        (let _lp136447_ ((_e136449_ _stx136443_)
                         (_marks136450_ (gx#current-expander-marks)))
          (if (symbol? _e136449_)
              (gx#core-resolve-binding
               _e136449_
               _phi136444_
               _phi136444_
               _ctx136445_
               (reverse _marks136450_))
              (if (gx#identifier-quote? _e136449_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e136449_ '1 gx#AST::t '#f)
                   _phi136444_
                   '0
                   (##unchecked-structure-ref
                    _e136449_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e136449_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e136449_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e136449_ '1 gx#AST::t '#f)
                       _phi136444_
                       _phi136444_
                       _ctx136445_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136449_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136450_))
                      (if (##structure-direct-instance-of?
                           _e136449_
                           'gx#syntax-wrap::t)
                          (_lp136447_
                           (##unchecked-structure-ref
                            _e136449_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e136449_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks136450_))
                          (if (##structure-instance-of?
                               _e136449_
                               'gerbil#AST::t)
                              (_lp136447_
                               (##unchecked-structure-ref
                                _e136449_
                                '1
                                gx#AST::t
                                '#f)
                               _marks136450_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx136443_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx136455_)
        (let* ((_phi136457_ (gx#current-expander-phi))
               (_ctx136459_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx136455_
           _phi136457_
           _ctx136459_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx136461_ _phi136462_)
        (let ((_ctx136464_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx136461_
           _phi136462_
           _ctx136464_))))
    (define gx#core-resolve-identifier
      (lambda _g142944_
        (let ((_g142943_ (##length _g142944_)))
          (cond ((##fx= _g142943_ 1)
                 (apply (lambda (_stx136455_)
                          (gx#core-resolve-identifier__0 _stx136455_))
                        _g142944_))
                ((##fx= _g142943_ 2)
                 (apply (lambda (_stx136461_ _phi136462_)
                          (gx#core-resolve-identifier__1
                           _stx136461_
                           _phi136462_))
                        _g142944_))
                ((##fx= _g142943_ 3)
                 (apply (lambda (_stx136466_ _phi136467_ _ctx136468_)
                          (gx#core-resolve-identifier__%
                           _stx136466_
                           _phi136467_
                           _ctx136468_))
                        _g142944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g142944_))))))
    (define gx#core-resolve-binding
      (lambda (_id136356_
               _phi136357_
               _src-phi136358_
               _ctx136359_
               _marks136360_)
        (letrec ((_resolve136362_
                  (lambda (_ctx136430_ _src-phi136431_ _key136432_)
                    (let _lp136434_ ((_ctx136436_
                                      (gx#core-context-shift
                                       _ctx136430_
                                       _phi136357_))
                                     (_dphi136437_
                                      (fx- _phi136357_ _src-phi136431_)))
                      (let ((_$e136439_
                             (gx#core-context-resolve
                              _ctx136436_
                              _key136432_)))
                        (if _$e136439_
                            (values _$e136439_)
                            (if (fxzero? _dphi136437_)
                                '#f
                                (if (fxpositive? _dphi136437_)
                                    (_lp136434_
                                     (gx#core-context-shift _ctx136436_ '-1)
                                     (fx- _dphi136437_ '1))
                                    (_lp136434_
                                     (gx#core-context-shift _ctx136436_ '1)
                                     (fx+ _dphi136437_ '1))))))))))
          (let _lp136364_ ((_ctx136366_ _ctx136359_)
                           (_src-phi136367_ _src-phi136358_)
                           (_rest136368_ _marks136360_))
            (let* ((_rest136369136377_ _rest136368_)
                   (_else136371136385_
                    (lambda ()
                      (_resolve136362_
                       _ctx136366_
                       _src-phi136367_
                       _id136356_)))
                   (_K136373136418_
                    (lambda (_rest136388_ _hd136389_)
                      (let* ((_hd136390136396_ _hd136389_)
                             (_E136392136400_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd136390136396_)))
                             (_K136393136410_
                              (lambda (_subst136403_)
                                (let ((_$e136407_
                                       (let ((_key136405_
                                              (if _subst136403_
                                                  (table-ref
                                                   _subst136403_
                                                   _id136356_
                                                   '#f)
                                                  '#f)))
                                         (if _key136405_
                                             (_resolve136362_
                                              _ctx136366_
                                              _src-phi136367_
                                              _key136405_)
                                             '#f))))
                                  (if _$e136407_
                                      _$e136407_
                                      (_lp136364_
                                       (##unchecked-structure-ref
                                        _hd136389_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd136389_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest136388_))))))
                        (if (##structure-instance-of?
                             _hd136390136396_
                             'gx#expander-mark::t)
                            (let* ((_e136394136413_
                                    (##unchecked-structure-ref
                                     _hd136390136396_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst136416_ _e136394136413_))
                              (_K136393136410_ _subst136416_))
                            (_E136392136400_))))))
              (if (##pair? _rest136369136377_)
                  (let ((_hd136374136421_ (##car _rest136369136377_))
                        (_tl136375136423_ (##cdr _rest136369136377_)))
                    (let* ((_hd136426_ _hd136374136421_)
                           (_rest136428_ _tl136375136423_))
                      (_K136373136418_ _rest136428_ _hd136426_)))
                  (_else136371136385_)))))))
    (define gx#core-bind!__%
      (lambda (_key136232_ _val136233_ _rebind?136234_ _phi136235_ _ctx136236_)
        (letrec ((_update-binding136238_
                  (lambda (_xval136309_)
                    (if (or (_rebind?136234_
                             _ctx136236_
                             _xval136309_
                             _val136233_)
                            (and (##structure-direct-instance-of?
                                  _xval136309_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval136309_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val136233_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val136233_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval136309_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val136233_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val136233_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval136309_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val136233_
                        (if (and (##structure-direct-instance-of?
                                  _val136233_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val136233_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval136309_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val136233_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval136309_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval136309_
                            (if (and (##structure-direct-instance-of?
                                      _val136233_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval136309_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key136232_
                                 (cons (##unchecked-structure-ref
                                        _val136233_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val136233_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval136309_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval136309_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval136309_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval136309_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key136232_
                                 _val136233_
                                 _xval136309_))))))
                 (_gensubst136239_
                  (lambda (_subst136304_ _id136305_)
                    (let ((_eid136307_
                           (gensym (if (uninterned-symbol? _id136305_)
                                       '%
                                       _id136305_))))
                      (table-set! _subst136304_ _id136305_ _eid136307_)
                      _eid136307_)))
                 (_subst!136240_
                  (lambda (_key136242_)
                    (let* ((_key136243136251_ _key136242_)
                           (_else136245136259_ (lambda () _key136242_))
                           (_K136247136292_
                            (lambda (_mark136262_ _id136263_)
                              (let* ((_mark136264136270_ _mark136262_)
                                     (_E136266136274_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark136264136270_)))
                                     (_K136267136284_
                                      (lambda (_subst136277_)
                                        (if (not _subst136277_)
                                            (let ((_subst136279_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark136262_
                                               _subst136279_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst136239_
                                               _subst136279_
                                               _id136263_))
                                            (let ((_$e136281_
                                                   (table-ref
                                                    _subst136277_
                                                    _id136263_
                                                    '#f)))
                                              (if _$e136281_
                                                  (values _$e136281_)
                                                  (_gensubst136239_
                                                   _subst136277_
                                                   _id136263_)))))))
                                (if (##structure-instance-of?
                                     _mark136264136270_
                                     'gx#expander-mark::t)
                                    (let* ((_e136268136287_
                                            (##unchecked-structure-ref
                                             _mark136264136270_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst136290_ _e136268136287_))
                                      (_K136267136284_ _subst136290_))
                                    (_E136266136274_))))))
                      (if (##pair? _key136243136251_)
                          (let ((_hd136248136295_ (##car _key136243136251_))
                                (_tl136249136297_ (##cdr _key136243136251_)))
                            (let* ((_id136300_ _hd136248136295_)
                                   (_mark136302_ _tl136249136297_))
                              (_K136247136292_ _mark136302_ _id136300_)))
                          (_else136245136259_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx136236_ _phi136235_)
           (_subst!136240_ _key136232_)
           _val136233_
           _update-binding136238_))))
    (define gx#core-bind!__0
      (lambda (_key136326_ _val136327_)
        (let* ((_rebind?136329_ false)
               (_phi136331_ (gx#current-expander-phi))
               (_ctx136333_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136326_
           _val136327_
           _rebind?136329_
           _phi136331_
           _ctx136333_))))
    (define gx#core-bind!__1
      (lambda (_key136335_ _val136336_ _rebind?136337_)
        (let* ((_phi136339_ (gx#current-expander-phi))
               (_ctx136341_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136335_
           _val136336_
           _rebind?136337_
           _phi136339_
           _ctx136341_))))
    (define gx#core-bind!__2
      (lambda (_key136343_ _val136344_ _rebind?136345_ _phi136346_)
        (let ((_ctx136348_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136343_
           _val136344_
           _rebind?136345_
           _phi136346_
           _ctx136348_))))
    (define gx#core-bind!
      (lambda _g142946_
        (let ((_g142945_ (##length _g142946_)))
          (cond ((##fx= _g142945_ 2)
                 (apply (lambda (_key136326_ _val136327_)
                          (gx#core-bind!__0 _key136326_ _val136327_))
                        _g142946_))
                ((##fx= _g142945_ 3)
                 (apply (lambda (_key136335_ _val136336_ _rebind?136337_)
                          (gx#core-bind!__1
                           _key136335_
                           _val136336_
                           _rebind?136337_))
                        _g142946_))
                ((##fx= _g142945_ 4)
                 (apply (lambda (_key136343_
                                 _val136344_
                                 _rebind?136345_
                                 _phi136346_)
                          (gx#core-bind!__2
                           _key136343_
                           _val136344_
                           _rebind?136345_
                           _phi136346_))
                        _g142946_))
                ((##fx= _g142945_ 5)
                 (apply (lambda (_key136350_
                                 _val136351_
                                 _rebind?136352_
                                 _phi136353_
                                 _ctx136354_)
                          (gx#core-bind!__%
                           _key136350_
                           _val136351_
                           _rebind?136352_
                           _phi136353_
                           _ctx136354_))
                        _g142946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g142946_))))))
    (define gx#core-identifier-key
      (lambda (_stx136166_)
        (if (symbol? _stx136166_)
            (let* ((_g136167136175_ (gx#current-expander-marks))
                   (_else136169136183_ (lambda () _stx136166_))
                   (_K136171136188_
                    (lambda (_hd136186_) (cons _stx136166_ _hd136186_))))
              (if (##pair? _g136167136175_)
                  (let* ((_hd136172136191_ (##car _g136167136175_))
                         (_hd136194_ _hd136172136191_))
                    (_K136171136188_ _hd136194_))
                  (_else136169136183_)))
            (if (gx#identifier? _stx136166_)
                (let* ((_id136196_ (gx#syntax-local-unwrap _stx136166_))
                       (_eid136198_ (gx#stx-e _id136196_))
                       (_marks136200_ (gx#stx-identifier-marks* _id136196_)))
                  (let* ((_marks136202136210_ _marks136200_)
                         (_else136204136218_ (lambda () _eid136198_))
                         (_K136206136223_
                          (lambda (_hd136221_) (cons _eid136198_ _hd136221_))))
                    (if (##pair? _marks136202136210_)
                        (let* ((_hd136207136226_ (##car _marks136202136210_))
                               (_hd136229_ _hd136207136226_))
                          (_K136206136223_ _hd136229_))
                        (_else136204136218_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx136166_)))))
    (define gx#core-context-shift
      (lambda (_ctx136111_ _phi136112_)
        (letrec ((_make-phi136114_
                  (lambda (_super136164_)
                    (let ((__obj142917 (make-object gx#phi-context::t '6)))
                      (gx#phi-context:::init!
                       __obj142917
                       (gensym 'phi)
                       _super136164_)
                      __obj142917)))
                 (_make-phi/up136115_
                  (lambda (_ctx136159_ _super136160_)
                    (let ((_ctx+1136162_ (_make-phi136114_ _super136160_)))
                      (##unchecked-structure-set!
                       _ctx136159_
                       _ctx+1136162_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1136162_
                       _ctx136159_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1136162_)))
                 (_make-phi/down136116_
                  (lambda (_ctx136154_ _super136155_)
                    (let ((_ctx-1136157_ (_make-phi136114_ _super136155_)))
                      (##unchecked-structure-set!
                       _ctx-1136157_
                       _ctx136154_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx136154_
                       _ctx-1136157_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1136157_)))
                 (_shift136117_
                  (lambda (_ctx136138_
                           _delta136139_
                           _make-delta-context136140_
                           _phi136141_
                           _K136142_)
                    (let ((_$e136144_
                           (##unchecked-structure-ref
                            _ctx136138_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e136144_
                          ((lambda (_super136147_)
                             (let* ((_super136149_
                                     (_K136142_ _super136147_ _delta136139_))
                                    (_ctx+d136151_
                                     (_make-delta-context136140_
                                      _ctx136138_
                                      _super136149_)))
                               (_K136142_
                                _ctx+d136151_
                                (fx- _phi136141_ _delta136139_))))
                           _$e136144_)
                          (error '"Bad context" _ctx136138_))))))
          (let _K136119_ ((_ctx136121_ _ctx136111_) (_phi136122_ _phi136112_))
            (if (fxzero? _phi136122_)
                _ctx136121_
                (if (fx> (##vector-length _ctx136121_) '3)
                    (if (fxpositive? _phi136122_)
                        (let ((_$e136124_
                               (##unchecked-structure-ref
                                _ctx136121_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e136124_
                              ((lambda (_g136126136128_)
                                 (_K136119_
                                  _g136126136128_
                                  (fx- _phi136122_ '1)))
                               _$e136124_)
                              (_shift136117_
                               _ctx136121_
                               '1
                               _make-phi/up136115_
                               _phi136122_
                               _K136119_)))
                        (let ((_$e136131_
                               (##unchecked-structure-ref
                                _ctx136121_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e136131_
                              ((lambda (_g136133136135_)
                                 (_K136119_
                                  _g136133136135_
                                  (fx+ _phi136122_ '1)))
                               _$e136131_)
                              (_shift136117_
                               _ctx136121_
                               '-1
                               _make-phi/down136116_
                               _phi136122_
                               _K136119_))))
                    _ctx136121_))))))
    (define gx#core-context-get
      (lambda (_ctx136108_ _key136109_)
        (table-ref
         (##unchecked-structure-ref _ctx136108_ '2 gx#expander-context::t '#f)
         _key136109_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx136104_ _key136105_ _val136106_)
        (table-set!
         (##unchecked-structure-ref _ctx136104_ '2 gx#expander-context::t '#f)
         _key136105_
         _val136106_)))
    (define gx#core-context-resolve
      (lambda (_ctx136091_ _key136092_)
        (let _lp136094_ ((_ctx136096_ _ctx136091_))
          (let ((_$e136098_ (gx#core-context-get _ctx136096_ _key136092_)))
            (if _$e136098_
                (values _$e136098_)
                (let ((_$e136101_
                       (if (fx> (##vector-length _ctx136096_) '3)
                           (##unchecked-structure-ref
                            _ctx136096_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e136101_ (_lp136094_ _$e136101_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx136081_ _key136082_ _val136083_ _rebind136084_)
        (let ((_$e136086_ (gx#core-context-get _ctx136081_ _key136082_)))
          (if _$e136086_
              ((lambda (_xval136089_)
                 (gx#core-context-put!
                  _ctx136081_
                  _key136082_
                  (_rebind136084_ _xval136089_)))
               _$e136086_)
              (gx#core-context-put! _ctx136081_ _key136082_ _val136083_)))))
    (define gx#core-context-top__%
      (lambda (_ctx136059_ _stop?136060_)
        (let _lp136062_ ((_ctx136064_ _ctx136059_))
          (if (_stop?136060_ _ctx136064_)
              _ctx136064_
              (if (##structure-instance-of? _ctx136064_ 'gx#context-phi::t)
                  (_lp136062_
                   (##unchecked-structure-ref
                    _ctx136064_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx136070_ (gx#current-expander-context))
               (_stop?136072_ gx#top-context?))
          (gx#core-context-top__% _ctx136070_ _stop?136072_))))
    (define gx#core-context-top__1
      (lambda (_ctx136074_)
        (let ((_stop?136076_ gx#top-context?))
          (gx#core-context-top__% _ctx136074_ _stop?136076_))))
    (define gx#core-context-top
      (lambda _g142948_
        (let ((_g142947_ (##length _g142948_)))
          (cond ((##fx= _g142947_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g142948_))
                ((##fx= _g142947_ 1)
                 (apply (lambda (_ctx136074_)
                          (gx#core-context-top__1 _ctx136074_))
                        _g142948_))
                ((##fx= _g142947_ 2)
                 (apply (lambda (_ctx136078_ _stop?136079_)
                          (gx#core-context-top__% _ctx136078_ _stop?136079_))
                        _g142948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g142948_))))))
    (define gx#core-context-root__%
      (lambda (_ctx136044_)
        (let _lp136046_ ((_ctx136048_ _ctx136044_))
          (if (##structure-instance-of? _ctx136048_ 'gx#context-phi::t)
              (_lp136046_
               (##unchecked-structure-ref
                _ctx136048_
                '3
                gx#phi-context::t
                '#f))
              _ctx136048_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx136054_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx136054_))))
    (define gx#core-context-root
      (lambda _g142950_
        (let ((_g142949_ (##length _g142950_)))
          (cond ((##fx= _g142949_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g142950_))
                ((##fx= _g142949_ 1)
                 (apply (lambda (_ctx136056_)
                          (gx#core-context-root__% _ctx136056_))
                        _g142950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g142950_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx136025_ . __136022136026_)
        (let ((_$e136029_ (gx#current-expander-allow-rebind?)))
          (if _$e136029_
              _$e136029_
              (if (##structure-instance-of? _ctx136025_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx136025_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx136025_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx136036_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx136036_))))
    (define gx#core-context-rebind?
      (lambda _g142952_
        (let ((_g142951_ (##length _g142952_)))
          (cond ((##fx= _g142951_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g142952_))
                ((##fx= _g142951_ 1)
                 (apply (lambda (_ctx136038_)
                          (gx#core-context-rebind?__% _ctx136038_))
                        _g142952_))
                ((##fx>= _g142951_ 1)
                 (apply gx#core-context-rebind?__% _g142952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g142952_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx136008_)
        (let ((_$e136010_ (gx#core-context-top__1 _ctx136008_)))
          (if _$e136010_
              ((lambda (_ctx136013_)
                 (if (##structure-instance-of?
                      _ctx136013_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx136013_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e136010_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx136019_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx136019_))))
    (define gx#core-context-namespace
      (lambda _g142954_
        (let ((_g142953_ (##length _g142954_)))
          (cond ((##fx= _g142953_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g142954_))
                ((##fx= _g142953_ 1)
                 (apply (lambda (_ctx136021_)
                          (gx#core-context-namespace__% _ctx136021_))
                        _g142954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g142954_))))))
    (define gx#expander-binding?__%
      (lambda (_bind135994_ _is?135995_)
        (if (##structure-direct-instance-of?
             _bind135994_
             'gx#syntax-binding::t)
            (_is?135995_
             (##unchecked-structure-ref
              _bind135994_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind136000_)
        (let ((_is?136002_ gx#expander?))
          (gx#expander-binding?__% _bind136000_ _is?136002_))))
    (define gx#expander-binding?
      (lambda _g142956_
        (let ((_g142955_ (##length _g142956_)))
          (cond ((##fx= _g142955_ 1)
                 (apply (lambda (_bind136000_)
                          (gx#expander-binding?__0 _bind136000_))
                        _g142956_))
                ((##fx= _g142955_ 2)
                 (apply (lambda (_bind136004_ _is?136005_)
                          (gx#expander-binding?__% _bind136004_ _is?136005_))
                        _g142956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g142956_))))))
    (define gx#core-expander-binding?
      (lambda (_bind135991_)
        (gx#expander-binding?__% _bind135991_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind135989_)
        (gx#expander-binding?__% _bind135989_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind135983_)
        (letrec ((_direct-special-form?135985_
                  (lambda (_obj135987_)
                    (##structure-direct-instance-of?
                     _obj135987_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind135983_
           _direct-special-form?135985_))))
    (define gx#special-form-binding?
      (lambda (_bind135981_)
        (gx#expander-binding?__% _bind135981_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind135972_)
        (letrec ((_feature?135974_
                  (lambda (_e135976_)
                    (let ((_$e135978_
                           (##structure-instance-of?
                            _e135976_
                            'gx#feature-expander::t)))
                      (if _$e135978_
                          _$e135978_
                          (##structure-instance-of?
                           _e135976_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind135972_ _feature?135974_))))
    (define gx#private-feature-binding?
      (lambda (_bind135970_)
        (gx#expander-binding?__% _bind135970_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id135957_ _bound?135958_)
        (if (gx#identifier? _id135957_)
            (_bound?135958_ (gx#resolve-identifier__0 _id135957_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id135963_)
        (let ((_bound?135965_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id135963_ _bound?135965_))))
    (define gx#core-bound-identifier?
      (lambda _g142958_
        (let ((_g142957_ (##length _g142958_)))
          (cond ((##fx= _g142957_ 1)
                 (apply (lambda (_id135963_)
                          (gx#core-bound-identifier?__0 _id135963_))
                        _g142958_))
                ((##fx= _g142957_ 2)
                 (apply (lambda (_id135967_ _bound?135968_)
                          (gx#core-bound-identifier?__%
                           _id135967_
                           _bound?135968_))
                        _g142958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g142958_))))))
    (define gx#core-identifier=?
      (lambda (_x135947_ _y135948_)
        (letrec ((_y=?135950_
                  (lambda (_xid135954_)
                    ((if (list? _y135948_) memq eq?) _xid135954_ _y135948_))))
          (let ((_bind135952_ (gx#resolve-identifier__0 _x135947_)))
            (if (##structure-instance-of? _bind135952_ 'gx#binding::t)
                (_y=?135950_
                 (##unchecked-structure-ref _bind135952_ '1 gx#binding::t '#f))
                (_y=?135950_ (gx#stx-e _x135947_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e135945_)
        (if (interned-symbol? _e135945_)
            (string-index (symbol->string _e135945_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx135900_ _src135901_ _ctx135902_ _marks135903_)
        (if (##structure? _stx135900_)
            (let ((_$e135905_ (gx#sealed-syntax-unwrap _stx135900_)))
              (if _$e135905_
                  (values _$e135905_)
                  (if (gx#identifier? _stx135900_)
                      (let ((_id135908_
                             (gx#stx-unwrap__% _stx135900_ _marks135903_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id135908_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e135910_
                                (##unchecked-structure-ref
                                 _id135908_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e135910_ _$e135910_ _src135901_))
                         _ctx135902_
                         (##unchecked-structure-ref
                          _id135908_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx135900_)
                       (let ((_$e135913_ (gx#stx-source _stx135900_)))
                         (if _$e135913_ _$e135913_ _src135901_))
                       _ctx135902_
                       (reverse _marks135903_)))))
            (##structure
             gx#syntax-quote::t
             _stx135900_
             _src135901_
             _ctx135902_
             (reverse _marks135903_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx135919_)
        (let* ((_src135921_ '#f)
               (_ctx135923_ (gx#current-expander-context))
               (_marks135925_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135919_
           _src135921_
           _ctx135923_
           _marks135925_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx135927_ _src135928_)
        (let* ((_ctx135930_ (gx#current-expander-context))
               (_marks135932_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135927_
           _src135928_
           _ctx135930_
           _marks135932_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx135934_ _src135935_ _ctx135936_)
        (let ((_marks135938_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135934_
           _src135935_
           _ctx135936_
           _marks135938_))))
    (define gx#core-quote-syntax
      (lambda _g142960_
        (let ((_g142959_ (##length _g142960_)))
          (cond ((##fx= _g142959_ 1)
                 (apply (lambda (_stx135919_)
                          (gx#core-quote-syntax__0 _stx135919_))
                        _g142960_))
                ((##fx= _g142959_ 2)
                 (apply (lambda (_stx135927_ _src135928_)
                          (gx#core-quote-syntax__1 _stx135927_ _src135928_))
                        _g142960_))
                ((##fx= _g142959_ 3)
                 (apply (lambda (_stx135934_ _src135935_ _ctx135936_)
                          (gx#core-quote-syntax__2
                           _stx135934_
                           _src135935_
                           _ctx135936_))
                        _g142960_))
                ((##fx= _g142959_ 4)
                 (apply (lambda (_stx135940_
                                 _src135941_
                                 _ctx135942_
                                 _marks135943_)
                          (gx#core-quote-syntax__%
                           _stx135940_
                           _src135941_
                           _ctx135942_
                           _marks135943_))
                        _g142960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g142960_))))))
    (define gx#core-cons
      (lambda (_hd135896_ _tl135897_)
        (cons (gx#core-quote-syntax__0 _hd135896_) _tl135897_)))
    (define gx#core-list
      (lambda (_hd135893_ . _rest135894_)
        (cons (gx#core-quote-syntax__0 _hd135893_) _rest135894_)))
    (define gx#core-cons*
      (lambda (_hd135890_ . _rest135891_)
        (apply cons* (gx#core-quote-syntax__0 _hd135890_) _rest135891_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path135864_ _rel135865_)
        (let ((_path135877_ (gx#stx-e _stx-path135864_))
              (_reldir135878_
               (let _lp135867_ ((_relsrc135869_
                                 (let ((_$e135874_
                                        (gx#stx-source _stx-path135864_)))
                                   (if _$e135874_ _$e135874_ _rel135865_))))
                 (if (##structure-instance-of? _relsrc135869_ 'gerbil#AST::t)
                     (_lp135867_
                      (let ((_$e135871_ (gx#stx-source _relsrc135869_)))
                        (if _$e135871_ _$e135871_ (gx#stx-e _relsrc135869_))))
                     (if (source-location-path? _relsrc135869_)
                         (path-directory (source-location-path _relsrc135869_))
                         (if (string? _relsrc135869_)
                             (path-directory _relsrc135869_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path135877_ (path-normalize _reldir135878_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path135883_)
        (let ((_rel135885_ '#f))
          (gx#core-resolve-path__% _stx-path135883_ _rel135885_))))
    (define gx#core-resolve-path
      (lambda _g142962_
        (let ((_g142961_ (##length _g142962_)))
          (cond ((##fx= _g142961_ 1)
                 (apply (lambda (_stx-path135883_)
                          (gx#core-resolve-path__0 _stx-path135883_))
                        _g142962_))
                ((##fx= _g142961_ 2)
                 (apply (lambda (_stx-path135887_ _rel135888_)
                          (gx#core-resolve-path__%
                           _stx-path135887_
                           _rel135888_))
                        _g142962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g142962_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr135820_ _ctx135821_)
        (let* ((_repr135822135829_ _repr135820_)
               (_E135824135833_
                (lambda () (error '"No clause matching" _repr135822135829_)))
               (_K135825135841_
                (lambda (_subs135836_ _phi135837_)
                  (let ((_subst135839_
                         (if (not (null? _subs135836_))
                             (list->table _subs135836_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst135839_
                     _ctx135821_
                     _phi135837_
                     '#f)))))
          (if (##pair? _repr135822135829_)
              (let ((_hd135826135844_ (##car _repr135822135829_))
                    (_tl135827135846_ (##cdr _repr135822135829_)))
                (let* ((_phi135849_ _hd135826135844_)
                       (_subs135851_ _tl135827135846_))
                  (_K135825135841_ _subs135851_ _phi135849_)))
              (_E135824135833_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr135856_)
        (let ((_ctx135858_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr135856_ _ctx135858_))))
    (define gx#core-deserialize-mark
      (lambda _g142964_
        (let ((_g142963_ (##length _g142964_)))
          (cond ((##fx= _g142963_ 1)
                 (apply (lambda (_repr135856_)
                          (gx#core-deserialize-mark__0 _repr135856_))
                        _g142964_))
                ((##fx= _g142963_ 2)
                 (apply (lambda (_repr135860_ _ctx135861_)
                          (gx#core-deserialize-mark__%
                           _repr135860_
                           _ctx135861_))
                        _g142964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g142964_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx135817_)
        (gx#stx-rewrap _stx135817_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx135815_)
        (gx#stx-unwrap__% _stx135815_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx135785_)
        (let* ((_g135786135794_ (gx#current-expander-marks))
               (_else135788135802_ (lambda () _stx135785_))
               (_K135790135807_
                (lambda (_hd135805_)
                  (gx#stx-apply-mark _stx135785_ _hd135805_))))
          (if (##pair? _g135786135794_)
              (let* ((_hd135791135810_ (##car _g135786135794_))
                     (_hd135813_ _hd135791135810_))
                (_K135790135807_ _hd135813_))
              (_else135788135802_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx135770_ _E135771_)
        (let ((_bind135773_ (gx#resolve-identifier__0 _stx135770_)))
          (if (##structure-direct-instance-of?
               _bind135773_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind135773_
               '4
               gx#syntax-binding::t
               '#f)
              (_E135771_ _stx135770_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx135778_)
        (let ((_E135780_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx135778_ _E135780_))))
    (define gx#syntax-local-e
      (lambda _g142966_
        (let ((_g142965_ (##length _g142966_)))
          (cond ((##fx= _g142965_ 1)
                 (apply (lambda (_stx135778_)
                          (gx#syntax-local-e__0 _stx135778_))
                        _g142966_))
                ((##fx= _g142965_ 2)
                 (apply (lambda (_stx135782_ _E135783_)
                          (gx#syntax-local-e__% _stx135782_ _E135783_))
                        _g142966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g142966_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx135754_ _E135755_)
        (let ((_e135757_ (gx#syntax-local-e__% _stx135754_ _E135755_)))
          (if (##structure-instance-of? _e135757_ 'gx#expander::t)
              (##structure-ref _e135757_ '1 gx#expander::t '#f)
              _e135757_))))
    (define gx#syntax-local-value__0
      (lambda (_stx135762_)
        (let ((_E135764_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx135762_ _E135764_))))
    (define gx#syntax-local-value
      (lambda _g142968_
        (let ((_g142967_ (##length _g142968_)))
          (cond ((##fx= _g142967_ 1)
                 (apply (lambda (_stx135762_)
                          (gx#syntax-local-value__0 _stx135762_))
                        _g142968_))
                ((##fx= _g142967_ 2)
                 (apply (lambda (_stx135766_ _E135767_)
                          (gx#syntax-local-value__% _stx135766_ _E135767_))
                        _g142968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g142968_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx135751_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx135751_)))))
