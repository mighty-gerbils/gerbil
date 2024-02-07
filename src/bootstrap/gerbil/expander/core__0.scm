(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707346616)
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
      (lambda _$args138741_
        (apply make-struct-instance gx#expander-context::t _$args138741_)))
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
      (lambda _$args138738_
        (apply make-struct-instance gx#root-context::t _$args138738_)))
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
      (lambda _$args138735_
        (apply make-struct-instance gx#phi-context::t _$args138735_)))
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
      (lambda _$args138732_
        (apply make-struct-instance gx#top-context::t _$args138732_)))
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
      (lambda _$args138729_
        (apply make-struct-instance gx#module-context::t _$args138729_)))
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
      (lambda _$args138726_
        (apply make-struct-instance gx#prelude-context::t _$args138726_)))
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
      (lambda _$args138723_
        (apply make-struct-instance gx#local-context::t _$args138723_)))
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
      (lambda (_self138707_ _id138708_ _super138709_)
        (if (##fx< '3 (##vector-length _self138707_))
            (begin
              (##vector-set! _self138707_ '1 _id138708_)
              (##vector-set! _self138707_ '2 (make-table 'test: eq?))
              (##vector-set! _self138707_ '3 _super138709_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self138707_
                   '3
                   (##vector-length _self138707_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self138714_ _id138715_)
        (let ((_super138717_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self138714_ _id138715_ _super138717_))))
    (define gx#phi-context:::init!
      (lambda _g142978_
        (let ((_g142977_ (##length _g142978_)))
          (cond ((##fx= _g142977_ 2)
                 (apply (lambda (_self138714_ _id138715_)
                          (gx#phi-context:::init!__0 _self138714_ _id138715_))
                        _g142978_))
                ((##fx= _g142977_ 3)
                 (apply (lambda (_self138719_ _id138720_ _super138721_)
                          (gx#phi-context:::init!__%
                           _self138719_
                           _id138720_
                           _super138721_))
                        _g142978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g142978_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self138571_ _super138572_)
        (if (##fx< '3 (##vector-length _self138571_))
            (begin
              (##vector-set! _self138571_ '1 (gensym 'L))
              (##vector-set! _self138571_ '2 (make-table 'test: eq?))
              (##vector-set! _self138571_ '3 _super138572_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self138571_
                   '3
                   (##vector-length _self138571_)))))
    (define gx#local-context:::init!__0
      (lambda (_self138577_)
        (let ((_super138579_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self138577_ _super138579_))))
    (define gx#local-context:::init!
      (lambda _g142980_
        (let ((_g142979_ (##length _g142980_)))
          (cond ((##fx= _g142979_ 1)
                 (apply (lambda (_self138577_)
                          (gx#local-context:::init!__0 _self138577_))
                        _g142980_))
                ((##fx= _g142979_ 2)
                 (apply (lambda (_self138581_ _super138582_)
                          (gx#local-context:::init!__%
                           _self138581_
                           _super138582_))
                        _g142980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g142980_))))))
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
      (lambda _$args138445_
        (apply make-struct-instance gx#binding::t _$args138445_)))
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
      (lambda _$args138442_
        (apply make-struct-instance gx#runtime-binding::t _$args138442_)))
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
      (lambda _$args138439_
        (apply make-struct-instance gx#local-binding::t _$args138439_)))
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
      (lambda _$args138436_
        (apply make-struct-instance gx#top-binding::t _$args138436_)))
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
      (lambda _$args138433_
        (apply make-struct-instance gx#module-binding::t _$args138433_)))
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
      (lambda _$args138430_
        (apply make-struct-instance gx#extern-binding::t _$args138430_)))
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
      (lambda _$args138427_
        (apply make-struct-instance gx#syntax-binding::t _$args138427_)))
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
      (lambda _$args138424_
        (apply make-struct-instance gx#import-binding::t _$args138424_)))
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
      (lambda _$args138421_
        (apply make-struct-instance gx#alias-binding::t _$args138421_)))
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
      (lambda _$args138418_
        (apply make-struct-instance gx#expander::t _$args138418_)))
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
      (lambda _$args138415_
        (apply make-struct-instance gx#core-expander::t _$args138415_)))
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
      (lambda _$args138412_
        (apply make-struct-instance gx#expression-form::t _$args138412_)))
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
      (lambda _$args138409_
        (apply make-struct-instance gx#special-form::t _$args138409_)))
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
      (lambda _$args138406_
        (apply make-struct-instance gx#definition-form::t _$args138406_)))
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
      (lambda _$args138403_
        (apply make-struct-instance gx#top-special-form::t _$args138403_)))
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
      (lambda _$args138400_
        (apply make-struct-instance gx#module-special-form::t _$args138400_)))
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
      (lambda _$args138397_
        (apply make-struct-instance gx#feature-expander::t _$args138397_)))
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
      (lambda _$args138394_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args138394_)))
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
      (lambda _$args138391_
        (apply make-struct-instance gx#reserved-expander::t _$args138391_)))
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
      (lambda _$args138388_
        (apply make-struct-instance gx#macro-expander::t _$args138388_)))
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
      (lambda _$args138385_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args138385_)))
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
      (lambda _$args138382_
        (apply make-struct-instance gx#user-expander::t _$args138382_)))
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
      (lambda _$args138379_
        (apply make-struct-instance gx#expander-mark::t _$args138379_)))
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
      (lambda (_where138374_ _message138375_ _stx138376_ . _details138377_)
        (raise (make-syntax-error
                _message138375_
                (cons _stx138376_ _details138377_)
                _where138374_
                (gx#current-expander-context)
                (gx#current-expander-marks)
                (gx#current-expander-phi)))))
    (define gx#eval-syntax__%
      (lambda (_stx138361_ _expression?138362_)
        (gx#eval-syntax* (gx#core-expand__% _stx138361_ _expression?138362_))))
    (define gx#eval-syntax__0
      (lambda (_stx138367_)
        (let ((_expression?138369_ '#f))
          (gx#eval-syntax__% _stx138367_ _expression?138369_))))
    (define gx#eval-syntax
      (lambda _g142982_
        (let ((_g142981_ (##length _g142982_)))
          (cond ((##fx= _g142981_ 1)
                 (apply (lambda (_stx138367_) (gx#eval-syntax__0 _stx138367_))
                        _g142982_))
                ((##fx= _g142981_ 2)
                 (apply (lambda (_stx138371_ _expression?138372_)
                          (gx#eval-syntax__% _stx138371_ _expression?138372_))
                        _g142982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g142982_))))))
    (define gx#eval-syntax*
      (lambda (_stx138358_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx138358_))))
    (define gx#core-expand__%
      (lambda (_stx138345_ _expression?138346_)
        (if _expression?138346_
            (gx#core-expand-expression _stx138345_)
            (gx#core-expand-top _stx138345_))))
    (define gx#core-expand__0
      (lambda (_stx138351_)
        (let ((_expression?138353_ '#f))
          (gx#core-expand__% _stx138351_ _expression?138353_))))
    (define gx#core-expand
      (lambda _g142984_
        (let ((_g142983_ (##length _g142984_)))
          (cond ((##fx= _g142983_ 1)
                 (apply (lambda (_stx138351_) (gx#core-expand__0 _stx138351_))
                        _g142984_))
                ((##fx= _g142983_ 2)
                 (apply (lambda (_stx138355_ _expression?138356_)
                          (gx#core-expand__% _stx138355_ _expression?138356_))
                        _g142984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g142984_))))))
    (define gx#core-expand-top
      (lambda (_stx138312_)
        (let* ((_stx138314_ (gx#core-expand*__0 _stx138312_))
               (_e138315138322_ _stx138314_)
               (_E138317138326_
                (lambda () (gx#core-expand-expression _stx138314_)))
               (_E138316138340_
                (lambda ()
                  (if (gx#stx-pair? _e138315138322_)
                      (let ((_e138318138330_ (gx#syntax-e _e138315138322_)))
                        (let ((_hd138319138333_ (##car _e138318138330_))
                              (_tl138320138335_ (##cdr _e138318138330_)))
                          (let ((_form138338_ _hd138319138333_))
                            (if (gx#core-bound-identifier?__0 _form138338_)
                                _stx138314_
                                (_E138317138326_)))))
                      (_E138317138326_)))))
          (_E138316138340_))))
    (define gx#core-expand-expression
      (lambda (_stx138259_)
        (letrec ((_sealed-expression?138261_
                  (lambda (_hd138282_)
                    (if (gx#sealed-syntax? _hd138282_)
                        (let* ((_e138283138290_ _hd138282_)
                               (_E138285138294_ (lambda () '#f))
                               (_E138284138308_
                                (lambda ()
                                  (if (gx#stx-pair? _e138283138290_)
                                      (let ((_e138286138298_
                                             (gx#syntax-e _e138283138290_)))
                                        (let ((_hd138287138301_
                                               (##car _e138286138298_))
                                              (_tl138288138303_
                                               (##cdr _e138286138298_)))
                                          (let ((_form138306_
                                                 _hd138287138301_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form138306_
                                                 gx#expression-form-binding?)
                                                (_E138285138294_)))))
                                      (_E138285138294_)))))
                          (_E138284138308_))
                        '#f)))
                 (_illegal-expression138262_
                  (lambda (_hd138280_ . _g142985_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx138259_
                     _hd138280_)))
                 (_expand-e138263_
                  (lambda (_form138275_ _hd138276_)
                    (let ((_bind138278_
                           (if (##structure-instance-of?
                                _form138275_
                                'gx#binding::t)
                               _form138275_
                               (gx#resolve-identifier__0 _form138275_))))
                      (if (gx#core-expander-binding? _bind138278_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind138278_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd138276_
                            (gx#stx-source _stx138259_)))
                          (if (##structure-direct-instance-of?
                               _bind138278_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind138278_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd138276_
                                 (gx#stx-source _stx138259_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx138259_
                               _form138275_)))))))
          (let ((_hd138265_ (gx#core-expand-head _stx138259_)))
            (if (_sealed-expression?138261_ _hd138265_)
                _hd138265_
                (if (gx#stx-pair? _hd138265_)
                    (let* ((_form138267_ (gx#stx-car _hd138265_))
                           (_bind138269_
                            (if (gx#identifier? _form138267_)
                                (gx#resolve-identifier__0 _form138267_)
                                '#f)))
                      (if (or (not _bind138269_)
                              (not (gx#core-expander-binding? _bind138269_)))
                          (_expand-e138263_ '%%app (cons '%%app _hd138265_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind138269_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd138265_
                               _illegal-expression138262_)
                              (if (gx#expression-form-binding? _bind138269_)
                                  (_expand-e138263_ _bind138269_ _hd138265_)
                                  (if (gx#direct-special-form-binding?
                                       _bind138269_)
                                      (gx#core-expand-expression
                                       (_expand-e138263_
                                        _bind138269_
                                        _hd138265_))
                                      (_illegal-expression138262_
                                       _hd138265_))))))
                    (if (gx#core-bound-identifier?__0 _hd138265_)
                        (_illegal-expression138262_ _hd138265_)
                        (if (gx#identifier? _hd138265_)
                            (_expand-e138263_
                             '%%ref
                             (cons '%%ref (cons _hd138265_ '())))
                            (if (gx#stx-datum? _hd138265_)
                                (_expand-e138263_
                                 '%#quote
                                 (cons '%#quote (cons _hd138265_ '())))
                                (_illegal-expression138262_
                                 _hd138265_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx138254_)
        (call-with-parameters
         (lambda ()
           (let ((_stx138257_ (gx#core-expand-expression _stx138254_)))
             (values _stx138257_ (gx#eval-syntax* _stx138257_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx138235_ _stop?138236_)
        (let _lp138238_ ((_stx138240_ _stx138235_))
          (if (_stop?138236_ _stx138240_)
              _stx138240_
              (let ((_rstx138242_ (gx#core-expand1 _stx138240_)))
                (if (eq? _stx138240_ _rstx138242_)
                    _stx138240_
                    (_lp138238_ _rstx138242_)))))))
    (define gx#core-expand*__0
      (lambda (_stx138247_)
        (let ((_stop?138249_ false))
          (gx#core-expand*__% _stx138247_ _stop?138249_))))
    (define gx#core-expand*
      (lambda _g142987_
        (let ((_g142986_ (##length _g142987_)))
          (cond ((##fx= _g142986_ 1)
                 (apply (lambda (_stx138247_) (gx#core-expand*__0 _stx138247_))
                        _g142987_))
                ((##fx= _g142986_ 2)
                 (apply (lambda (_stx138251_ _stop?138252_)
                          (gx#core-expand*__% _stx138251_ _stop?138252_))
                        _g142987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g142987_))))))
    (define gx#core-expand1
      (lambda (_stx138191_)
        (letrec ((_step138193_
                  (lambda (_hd138230_)
                    (let ((_bind138232_ (gx#resolve-identifier__0 _hd138230_)))
                      (if (##structure-instance-of?
                           _bind138232_
                           'gx#runtime-binding::t)
                          _stx138191_
                          (if (##structure-direct-instance-of?
                               _bind138232_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind138232_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx138191_)
                              (if (not _bind138232_)
                                  _stx138191_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx138191_))))))))
          (let* ((_e138194138202_ _stx138191_)
                 (_E138200138206_ (lambda () _stx138191_))
                 (_E138196138212_
                  (lambda ()
                    (let ((_hd138210_ _e138194138202_))
                      (if (gx#identifier? _hd138210_)
                          (_step138193_ _hd138210_)
                          (_E138200138206_)))))
                 (_E138195138226_
                  (lambda ()
                    (if (gx#stx-pair? _e138194138202_)
                        (let ((_e138197138216_ (gx#syntax-e _e138194138202_)))
                          (let ((_hd138198138219_ (##car _e138197138216_))
                                (_tl138199138221_ (##cdr _e138197138216_)))
                            (let ((_hd138224_ _hd138198138219_))
                              (if (gx#identifier? _hd138224_)
                                  (_step138193_ _hd138224_)
                                  (_E138196138212_)))))
                        (_E138196138212_)))))
            (_E138195138226_)))))
    (define gx#core-expand-head
      (lambda (_stx138157_)
        (letrec ((_stop?138159_
                  (lambda (_stx138161_)
                    (let* ((_e138162138169_ _stx138161_)
                           (_E138164138173_ (lambda () '#f))
                           (_E138163138187_
                            (lambda ()
                              (if (gx#stx-pair? _e138162138169_)
                                  (let ((_e138165138177_
                                         (gx#syntax-e _e138162138169_)))
                                    (let ((_hd138166138180_
                                           (##car _e138165138177_))
                                          (_tl138167138182_
                                           (##cdr _e138165138177_)))
                                      (let ((_hd138185_ _hd138166138180_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd138185_)
                                            (_E138164138173_)))))
                                  (_E138164138173_)))))
                      (_E138163138187_)))))
          (gx#core-expand*__% _stx138157_ _stop?138159_))))
    (define gx#core-expand-block__%
      (lambda (_stx137963_
               _expand-special137964_
               _begin-form137965_
               _expand-e137966_)
        (letrec ((_expand-splice137968_
                  (lambda (_hd138131_ _body138132_ _rest138133_ _r138134_)
                    (if (gx#stx-list? _body138132_)
                        (_K137972_
                         (gx#stx-foldr cons _rest138133_ _body138132_)
                         _r138134_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx137963_
                         _hd138131_))))
                 (_expand-cond-expand137969_
                  (lambda (_hd138127_ _rest138128_ _r138129_)
                    (_K137972_
                     (cons (gx#core-expand-cond-expand% _hd138127_)
                           _rest138128_)
                     _r138129_)))
                 (_expand-include137970_
                  (lambda (_hd138076_ _rest138077_ _r138078_)
                    (let* ((_e138079138089_ _hd138076_)
                           (_E138081138093_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e138079138089_)))
                           (_E138080138123_
                            (lambda ()
                              (if (gx#stx-pair? _e138079138089_)
                                  (let ((_e138082138097_
                                         (gx#syntax-e _e138079138089_)))
                                    (let ((_hd138083138100_
                                           (##car _e138082138097_))
                                          (_tl138084138102_
                                           (##cdr _e138082138097_)))
                                      (if (gx#stx-pair? _tl138084138102_)
                                          (let ((_e138085138105_
                                                 (gx#syntax-e
                                                  _tl138084138102_)))
                                            (let ((_hd138086138108_
                                                   (##car _e138085138105_))
                                                  (_tl138087138110_
                                                   (##cdr _e138085138105_)))
                                              (let ((_path138113_
                                                     _hd138086138108_))
                                                (if (gx#stx-null?
                                                     _tl138087138110_)
                                                    (if (gx#stx-string?
                                                         _path138113_)
                                                        (let* ((_rpath138115_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path138113_
                         (gx#stx-source _hd138076_)))
                       (_block138117_
                        (gx#core-expand-include%__% _hd138076_ _rpath138115_))
                       (_rbody138120_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block138117_
                            _expand-special137964_
                            '#f
                            _expand-e137966_))
                         gx#current-expander-path
                         (cons _rpath138115_ (gx#current-expander-path)))))
                  (_K137972_
                   _rest138077_
                   (foldr1 cons _r138078_ _rbody138120_)))
                (_E138081138093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E138081138093_)))))
                                          (_E138081138093_))))
                                  (_E138081138093_)))))
                      (_E138080138123_))))
                 (_expand-expression137971_
                  (lambda (_hd138072_ _rest138073_ _r138074_)
                    (_K137972_
                     _rest138073_
                     (cons (_expand-e137966_ _hd138072_) _r138074_))))
                 (_K137972_
                  (lambda (_rest138002_ _r138003_)
                    (let* ((_e138004138011_ _rest138002_)
                           (_E138006138015_
                            (lambda ()
                              (if _begin-form137965_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form137965_
                                    (reverse _r138003_))
                                   (gx#stx-source _stx137963_))
                                  _r138003_)))
                           (_E138005138068_
                            (lambda ()
                              (if (gx#stx-pair? _e138004138011_)
                                  (let ((_e138007138019_
                                         (gx#syntax-e _e138004138011_)))
                                    (let ((_hd138008138022_
                                           (##car _e138007138019_))
                                          (_tl138009138024_
                                           (##cdr _e138007138019_)))
                                      (let* ((_hd138027_ _hd138008138022_)
                                             (_rest138029_ _tl138009138024_))
                                        (if '#t
                                            (let* ((_hd138031_
                                                    (gx#core-expand-head
                                                     _hd138027_))
                                                   (_e138032138039_ _hd138031_)
                                                   (_E138034138043_
                                                    (lambda ()
                                                      (_expand-expression137971_
                                                       _hd138031_
                                                       _rest138029_
                                                       _r138003_)))
                                                   (_E138033138064_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e138032138039_)
                                                          (let ((_e138035138047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e138032138039_)))
                    (let ((_hd138036138050_ (##car _e138035138047_))
                          (_tl138037138052_ (##cdr _e138035138047_)))
                      (let* ((_form138055_ _hd138036138050_)
                             (_body138057_ _tl138037138052_))
                        (if '#t
                            (let ((_bind138059_
                                   (if (gx#identifier? _form138055_)
                                       (gx#resolve-identifier__0 _form138055_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind138059_)
                                  (let ((_$e138061_
                                         (##unchecked-structure-ref
                                          _bind138059_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e138061_)
                                        (_expand-splice137968_
                                         _hd138031_
                                         _body138057_
                                         _rest138029_
                                         _r138003_)
                                        (if (eq? '%#cond-expand _$e138061_)
                                            (_expand-cond-expand137969_
                                             _hd138031_
                                             _rest138029_
                                             _r138003_)
                                            (if (eq? '%#include _$e138061_)
                                                (_expand-include137970_
                                                 _hd138031_
                                                 _rest138029_
                                                 _r138003_)
                                                (_expand-special137964_
                                                 _hd138031_
                                                 _K137972_
                                                 _rest138029_
                                                 _r138003_)))))
                                  (_expand-expression137971_
                                   _hd138031_
                                   _rest138029_
                                   _r138003_)))
                            (_E138034138043_)))))
                  (_E138034138043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E138033138064_))
                                            (_E138006138015_)))))
                                  (_E138006138015_)))))
                      (_E138005138068_)))))
          (let* ((_e137973137980_ _stx137963_)
                 (_E137975137984_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e137973137980_)))
                 (_E137974137998_
                  (lambda ()
                    (if (gx#stx-pair? _e137973137980_)
                        (let ((_e137976137988_ (gx#syntax-e _e137973137980_)))
                          (let ((_hd137977137991_ (##car _e137976137988_))
                                (_tl137978137993_ (##cdr _e137976137988_)))
                            (let ((_body137996_ _tl137978137993_))
                              (if (gx#stx-list? _body137996_)
                                  (_K137972_ _body137996_ '())
                                  (_E137975137984_)))))
                        (_E137975137984_)))))
            (_E137974137998_)))))
    (define gx#core-expand-block__0
      (lambda (_stx138139_ _expand-special138140_)
        (let* ((_begin-form138142_ '%#begin)
               (_expand-e138144_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx138139_
           _expand-special138140_
           _begin-form138142_
           _expand-e138144_))))
    (define gx#core-expand-block__1
      (lambda (_stx138146_ _expand-special138147_ _begin-form138148_)
        (let ((_expand-e138150_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx138146_
           _expand-special138147_
           _begin-form138148_
           _expand-e138150_))))
    (define gx#core-expand-block
      (lambda _g142989_
        (let ((_g142988_ (##length _g142989_)))
          (cond ((##fx= _g142988_ 2)
                 (apply (lambda (_stx138139_ _expand-special138140_)
                          (gx#core-expand-block__0
                           _stx138139_
                           _expand-special138140_))
                        _g142989_))
                ((##fx= _g142988_ 3)
                 (apply (lambda (_stx138146_
                                 _expand-special138147_
                                 _begin-form138148_)
                          (gx#core-expand-block__1
                           _stx138146_
                           _expand-special138147_
                           _begin-form138148_))
                        _g142989_))
                ((##fx= _g142988_ 4)
                 (apply (lambda (_stx138152_
                                 _expand-special138153_
                                 _begin-form138154_
                                 _expand-e138155_)
                          (gx#core-expand-block__%
                           _stx138152_
                           _expand-special138153_
                           _begin-form138154_
                           _expand-e138155_))
                        _g142989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g142989_))))))
    (define gx#core-expand-block*
      (lambda (_stx137911_ _expand-special137912_)
        (let* ((_g137913137924_
                (gx#core-expand-block__1
                 _stx137911_
                 _expand-special137912_
                 '#f))
               (_E137917137928_
                (lambda () (error '"No clause matching" _g137913137924_))))
          (let ((_K137922137959_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx137911_)))
                (_K137919137945_ (lambda (_expr137943_) _expr137943_))
                (_K137918137934_
                 (lambda (_body137932_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body137932_))
                    (gx#stx-source _stx137911_)))))
            (let ((_try-match137915137955_
                   (lambda ()
                     (if (##pair? _g137913137924_)
                         (let ((_tl137921137950_ (##cdr _g137913137924_))
                               (_hd137920137948_ (##car _g137913137924_)))
                           (if (##null? _tl137921137950_)
                               (let ((_expr137953_ _hd137920137948_))
                                 (_K137919137945_ _expr137953_))
                               (let ((_body137937_ _g137913137924_))
                                 (_K137918137934_ _body137937_))))
                         (let ((_body137937_ _g137913137924_))
                           (_K137918137934_ _body137937_))))))
              (if (##null? _g137913137924_)
                  (_K137922137959_)
                  (_try-match137915137955_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx137739_)
        (letrec ((_satisfied?137741_
                  (lambda (_condition137839_)
                    (let* ((_e137840137855_ _condition137839_)
                           (_E137850137859_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e137840137855_)))
                           (_E137843137878_
                            (lambda ()
                              (if (gx#stx-pair? _e137840137855_)
                                  (let ((_e137851137863_
                                         (gx#syntax-e _e137840137855_)))
                                    (let ((_hd137852137866_
                                           (##car _e137851137863_))
                                          (_tl137853137868_
                                           (##cdr _e137851137863_)))
                                      (let* ((_combinator137871_
                                              _hd137852137866_)
                                             (_body137873_ _tl137853137868_))
                                        (if (gx#stx-list? _body137873_)
                                            (let ((_$e137875_
                                                   (gx#stx-e
                                                    _combinator137871_)))
                                              (if (eq? 'not _$e137875_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?137741_
                                                        _body137873_))
                                                  (if (eq? 'and _$e137875_)
                                                      (gx#stx-andmap
                                                       _satisfied?137741_
                                                       _body137873_)
                                                      (if (eq? 'or _$e137875_)
                                                          (gx#stx-ormap
                                                           _satisfied?137741_
                                                           _body137873_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e137875_)
                      (gx#stx-andmap gx#core-resolve-identifier _body137873_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx137739_
                       _combinator137871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E137850137859_)))))
                                  (_E137850137859_))))
                           (_E137842137901_
                            (lambda ()
                              (if (gx#stx-pair? _e137840137855_)
                                  (let ((_e137844137882_
                                         (gx#syntax-e _e137840137855_)))
                                    (let ((_hd137845137885_
                                           (##car _e137844137882_))
                                          (_tl137846137887_
                                           (##cdr _e137844137882_)))
                                      (if (and (gx#identifier?
                                                _hd137845137885_)
                                               (gx#core-identifier=?
                                                _hd137845137885_
                                                'unquote))
                                          (if (gx#stx-pair? _tl137846137887_)
                                              (let ((_e137847137890_
                                                     (gx#syntax-e
                                                      _tl137846137887_)))
                                                (let ((_hd137848137893_
                                                       (##car _e137847137890_))
                                                      (_tl137849137895_
                                                       (##cdr _e137847137890_)))
                                                  (let ((_expr137898_
                                                         _hd137848137893_))
                                                    (if (gx#stx-null?
                                                         _tl137849137895_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr137898_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E137843137878_))
                (_E137843137878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137843137878_))
                                          (_E137843137878_))))
                                  (_E137843137878_))))
                           (_E137841137907_
                            (lambda ()
                              (let ((_id137905_ _e137840137855_))
                                (if (gx#identifier? _id137905_)
                                    (gx#core-bound-identifier?__%
                                     _id137905_
                                     gx#feature-binding?)
                                    (_E137842137901_))))))
                      (_E137841137907_))))
                 (_loop137742_
                  (lambda (_rest137772_)
                    (let* ((_e137773137781_ _rest137772_)
                           (_E137779137785_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e137773137781_)))
                           (_E137775137789_
                            (lambda ()
                              (if (gx#stx-null? _e137773137781_)
                                  (if '#t '() (_E137779137785_))
                                  (_E137779137785_))))
                           (_E137774137835_
                            (lambda ()
                              (if (gx#stx-pair? _e137773137781_)
                                  (let ((_e137776137793_
                                         (gx#syntax-e _e137773137781_)))
                                    (let ((_hd137777137796_
                                           (##car _e137776137793_))
                                          (_tl137778137798_
                                           (##cdr _e137776137793_)))
                                      (let* ((_hd137801_ _hd137777137796_)
                                             (_rest137803_ _tl137778137798_))
                                        (if '#t
                                            (let* ((_e137804137811_ _hd137801_)
                                                   (_E137806137815_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e137804137811_)))
                                                   (_E137805137831_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e137804137811_)
                                                          (let ((_e137807137819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e137804137811_)))
                    (let ((_hd137808137822_ (##car _e137807137819_))
                          (_tl137809137824_ (##cdr _e137807137819_)))
                      (let* ((_condition137827_ _hd137808137822_)
                             (_body137829_ _tl137809137824_))
                        (if '#t
                            (if (gx#stx-eq? _condition137827_ 'else)
                                (if (gx#stx-null? _rest137803_)
                                    _body137829_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx137739_
                                     _hd137801_))
                                (if (_satisfied?137741_ _condition137827_)
                                    _body137829_
                                    (_loop137742_ _rest137803_)))
                            (_E137806137815_)))))
                  (_E137806137815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E137805137831_))
                                            (_E137775137789_)))))
                                  (_E137775137789_)))))
                      (_E137774137835_)))))
          (let* ((_e137743137750_ _stx137739_)
                 (_E137745137754_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e137743137750_)))
                 (_E137744137768_
                  (lambda ()
                    (if (gx#stx-pair? _e137743137750_)
                        (let ((_e137746137758_ (gx#syntax-e _e137743137750_)))
                          (let ((_hd137747137761_ (##car _e137746137758_))
                                (_tl137748137763_ (##cdr _e137746137758_)))
                            (let ((_clauses137766_ _tl137748137763_))
                              (if (gx#stx-list? _clauses137766_)
                                  (gx#core-cons
                                   'begin
                                   (_loop137742_ _clauses137766_))
                                  (_E137745137754_)))))
                        (_E137745137754_)))))
            (_E137744137768_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx137682_ _rpath137683_)
        (let* ((_e137684137694_ _stx137682_)
               (_E137686137698_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e137684137694_)))
               (_E137685137725_
                (lambda ()
                  (if (gx#stx-pair? _e137684137694_)
                      (let ((_e137687137702_ (gx#syntax-e _e137684137694_)))
                        (let ((_hd137688137705_ (##car _e137687137702_))
                              (_tl137689137707_ (##cdr _e137687137702_)))
                          (if (gx#stx-pair? _tl137689137707_)
                              (let ((_e137690137710_
                                     (gx#syntax-e _tl137689137707_)))
                                (let ((_hd137691137713_
                                       (##car _e137690137710_))
                                      (_tl137692137715_
                                       (##cdr _e137690137710_)))
                                  (let ((_path137718_ _hd137691137713_))
                                    (if (gx#stx-null? _tl137692137715_)
                                        (if (gx#stx-string? _path137718_)
                                            (let ((_rpath137723_
                                                   (let ((_$e137720_
                                                          _rpath137683_))
                                                     (if _$e137720_
                                                         _$e137720_
                                                         (gx#core-resolve-path__%
                                                          _path137718_
                                                          (gx#stx-source
                                                           _stx137682_))))))
                                              (if (member _rpath137723_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx137682_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath137723_))
                                                    (gx#stx-source
                                                     _stx137682_)))))
                                            (_E137686137698_))
                                        (_E137686137698_)))))
                              (_E137686137698_))))
                      (_E137686137698_)))))
          (_E137685137725_))))
    (define gx#core-expand-include%__0
      (lambda (_stx137732_)
        (let ((_rpath137734_ '#f))
          (gx#core-expand-include%__% _stx137732_ _rpath137734_))))
    (define gx#core-expand-include%
      (lambda _g142991_
        (let ((_g142990_ (##length _g142991_)))
          (cond ((##fx= _g142990_ 1)
                 (apply (lambda (_stx137732_)
                          (gx#core-expand-include%__0 _stx137732_))
                        _g142991_))
                ((##fx= _g142990_ 2)
                 (apply (lambda (_stx137736_ _rpath137737_)
                          (gx#core-expand-include%__%
                           _stx137736_
                           _rpath137737_))
                        _g142991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g142991_))))))
    (define gx#core-apply-expander__%
      (lambda (_K137651_ _stx137652_ _method137653_)
        (if (procedure? _K137651_)
            (let ((_$e137655_ (gx#stx-source _stx137652_)))
              (if _$e137655_
                  ((lambda (_g137657137659_)
                     (gx#stx-wrap-source
                      (_K137651_ _stx137652_)
                      _g137657137659_))
                   _$e137655_)
                  (_K137651_ _stx137652_)))
            (let ((_$e137662_ (bound-method-ref _K137651_ _method137653_)))
              (if _$e137662_
                  ((lambda (_g137664137666_)
                     (gx#core-apply-expander__%
                      _g137664137666_
                      _stx137652_
                      _method137653_))
                   _$e137662_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx137652_
                   _method137653_))))))
    (define gx#core-apply-expander__0
      (lambda (_K137672_ _stx137673_)
        (let ((_method137675_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K137672_ _stx137673_ _method137675_))))
    (define gx#core-apply-expander
      (lambda _g142993_
        (let ((_g142992_ (##length _g142993_)))
          (cond ((##fx= _g142992_ 2)
                 (apply (lambda (_K137672_ _stx137673_)
                          (gx#core-apply-expander__0 _K137672_ _stx137673_))
                        _g142993_))
                ((##fx= _g142992_ 3)
                 (apply (lambda (_K137677_ _stx137678_ _method137679_)
                          (gx#core-apply-expander__%
                           _K137677_
                           _stx137678_
                           _method137679_))
                        _g142993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g142993_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self137647_ _stx137648_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx137648_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self137500_ _stx137501_)
        (let* ((_self137502137508_ _self137500_)
               (_E137504137512_
                (lambda () (error '"No clause matching" _self137502137508_)))
               (_K137505137517_
                (lambda (_K137515_)
                  (gx#core-apply-expander__0 _K137515_ _stx137501_))))
          (if (##structure-instance-of? _self137502137508_ 'gx#core-macro::t)
              (let* ((_e137506137520_
                      (##unchecked-structure-ref
                       _self137502137508_
                       '1
                       gx#expander::t
                       '#f))
                     (_K137523_ _e137506137520_))
                (_K137505137517_ _K137523_))
              (_E137504137512_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self137353_ _stx137354_)
        (if (gx#sealed-syntax? _stx137354_)
            _stx137354_
            (let* ((_self137355137361_ _self137353_)
                   (_E137357137365_
                    (lambda ()
                      (error '"No clause matching" _self137355137361_)))
                   (_K137358137370_
                    (lambda (_K137368_)
                      (gx#core-apply-expander__0 _K137368_ _stx137354_))))
              (if (##structure-instance-of?
                   _self137355137361_
                   'gx#core-expander::t)
                  (let* ((_e137359137373_
                          (##unchecked-structure-ref
                           _self137355137361_
                           '1
                           gx#expander::t
                           '#f))
                         (_K137376_ _e137359137373_))
                    (_K137358137370_ _K137376_))
                  (_E137357137365_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self137215_ _stx137216_ _top?137217_)
        (if (_top?137217_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self137215_ _stx137216_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx137216_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self137222_ _stx137223_)
        (let ((_top?137225_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self137222_
           _stx137223_
           _top?137225_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g142995_
        (let ((_g142994_ (##length _g142995_)))
          (cond ((##fx= _g142994_ 2)
                 (apply (lambda (_self137222_ _stx137223_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self137222_
                           _stx137223_))
                        _g142995_))
                ((##fx= _g142994_ 3)
                 (apply (lambda (_self137227_ _stx137228_ _top?137229_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self137227_
                           _stx137228_
                           _top?137229_))
                        _g142995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g142995_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self137089_ _stx137090_)
        (gx#top-special-form::apply-macro-expander__%
         _self137089_
         _stx137090_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self136914_ _stx136915_)
        (let* ((_self136916136922_ _self136914_)
               (_E136918136926_
                (lambda () (error '"No clause matching" _self136916136922_)))
               (_K136919136959_
                (lambda (_id136929_)
                  (let* ((_e136930136937_ _stx136915_)
                         (_E136932136941_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e136930136937_)))
                         (_E136931136955_
                          (lambda ()
                            (if (gx#stx-pair? _e136930136937_)
                                (let ((_e136933136945_
                                       (gx#syntax-e _e136930136937_)))
                                  (let ((_hd136934136948_
                                         (##car _e136933136945_))
                                        (_tl136935136950_
                                         (##cdr _e136933136945_)))
                                    (let ((_body136953_ _tl136935136950_))
                                      (if '#t
                                          (gx#core-cons
                                           _id136929_
                                           _body136953_)
                                          (_E136932136941_)))))
                                (_E136932136941_)))))
                    (_E136931136955_)))))
          (if (##structure-instance-of?
               _self136916136922_
               'gx#rename-macro-expander::t)
              (let* ((_e136920136962_
                      (##unchecked-structure-ref
                       _self136916136922_
                       '1
                       gx#expander::t
                       '#f))
                     (_id136965_ _e136920136962_))
                (_K136919136959_ _id136965_))
              (_E136918136926_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self136740_ _stx136741_ _method136742_)
        (let* ((_self136743136751_ _self136740_)
               (_E136745136755_
                (lambda () (error '"No clause matching" _self136743136751_)))
               (_K136746136762_
                (lambda (_phi136758_ _ctx136759_ _K136760_)
                  (gx#core-apply-user-macro
                   _K136760_
                   _stx136741_
                   _ctx136759_
                   _phi136758_
                   _method136742_))))
          (if (##structure-instance-of?
               _self136743136751_
               'gx#macro-expander::t)
              (let* ((_e136747136765_
                      (##unchecked-structure-ref
                       _self136743136751_
                       '1
                       gx#expander::t
                       '#f))
                     (_K136768_ _e136747136765_)
                     (_e136748136770_
                      (##unchecked-structure-ref
                       _self136743136751_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx136773_ _e136748136770_)
                     (_e136749136775_
                      (##unchecked-structure-ref
                       _self136743136751_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi136778_ _e136749136775_))
                (_K136746136762_ _phi136778_ _ctx136773_ _K136768_))
              (_E136745136755_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self136783_ _stx136784_)
        (let ((_method136786_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self136783_
           _stx136784_
           _method136786_))))
    (define gx#core-apply-user-expander
      (lambda _g142997_
        (let ((_g142996_ (##length _g142997_)))
          (cond ((##fx= _g142996_ 2)
                 (apply (lambda (_self136783_ _stx136784_)
                          (gx#core-apply-user-expander__0
                           _self136783_
                           _stx136784_))
                        _g142997_))
                ((##fx= _g142996_ 3)
                 (apply (lambda (_self136788_ _stx136789_ _method136790_)
                          (gx#core-apply-user-expander__%
                           _self136788_
                           _stx136789_
                           _method136790_))
                        _g142997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g142997_))))))
    (define gx#core-apply-user-macro
      (lambda (_K136730_ _stx136731_ _ctx136732_ _phi136733_ _method136734_)
        (let ((_mark136736_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx136732_
                _phi136733_
                _stx136731_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K136730_
               (gx#stx-apply-mark _stx136731_ _mark136736_)
               _method136734_)
              _mark136736_))
           gx#current-expander-marks
           (cons _mark136736_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx136582_ _phi136583_ _ctx136584_)
        (let _lp136586_ ((_bind136588_
                          (gx#core-resolve-identifier__%
                           _stx136582_
                           _phi136583_
                           _ctx136584_)))
          (if (##structure-direct-instance-of?
               _bind136588_
               'gx#import-binding::t)
              (_lp136586_
               (##unchecked-structure-ref
                _bind136588_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind136588_
                   'gx#alias-binding::t)
                  (_lp136586_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind136588_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi136583_
                    _ctx136584_))
                  _bind136588_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx136593_)
        (let* ((_phi136595_ (gx#current-expander-phi))
               (_ctx136597_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx136593_ _phi136595_ _ctx136597_))))
    (define gx#resolve-identifier__1
      (lambda (_stx136599_ _phi136600_)
        (let ((_ctx136602_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx136599_ _phi136600_ _ctx136602_))))
    (define gx#resolve-identifier
      (lambda _g142999_
        (let ((_g142998_ (##length _g142999_)))
          (cond ((##fx= _g142998_ 1)
                 (apply (lambda (_stx136593_)
                          (gx#resolve-identifier__0 _stx136593_))
                        _g142999_))
                ((##fx= _g142998_ 2)
                 (apply (lambda (_stx136599_ _phi136600_)
                          (gx#resolve-identifier__1 _stx136599_ _phi136600_))
                        _g142999_))
                ((##fx= _g142998_ 3)
                 (apply (lambda (_stx136604_ _phi136605_ _ctx136606_)
                          (gx#resolve-identifier__%
                           _stx136604_
                           _phi136605_
                           _ctx136606_))
                        _g142999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g142999_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx136540_ _val136541_ _rebind?136542_ _phi136543_ _ctx136544_)
        (let ((_rebind?136546_
               (if (not _rebind?136542_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?136542_) _rebind?136542_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx136540_)
           _val136541_
           _rebind?136546_
           _phi136543_
           _ctx136544_))))
    (define gx#bind-identifier!__0
      (lambda (_stx136551_ _val136552_)
        (let* ((_rebind?136554_ '#f)
               (_phi136556_ (gx#current-expander-phi))
               (_ctx136558_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136551_
           _val136552_
           _rebind?136554_
           _phi136556_
           _ctx136558_))))
    (define gx#bind-identifier!__1
      (lambda (_stx136560_ _val136561_ _rebind?136562_)
        (let* ((_phi136564_ (gx#current-expander-phi))
               (_ctx136566_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136560_
           _val136561_
           _rebind?136562_
           _phi136564_
           _ctx136566_))))
    (define gx#bind-identifier!__2
      (lambda (_stx136568_ _val136569_ _rebind?136570_ _phi136571_)
        (let ((_ctx136573_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx136568_
           _val136569_
           _rebind?136570_
           _phi136571_
           _ctx136573_))))
    (define gx#bind-identifier!
      (lambda _g143001_
        (let ((_g143000_ (##length _g143001_)))
          (cond ((##fx= _g143000_ 2)
                 (apply (lambda (_stx136551_ _val136552_)
                          (gx#bind-identifier!__0 _stx136551_ _val136552_))
                        _g143001_))
                ((##fx= _g143000_ 3)
                 (apply (lambda (_stx136560_ _val136561_ _rebind?136562_)
                          (gx#bind-identifier!__1
                           _stx136560_
                           _val136561_
                           _rebind?136562_))
                        _g143001_))
                ((##fx= _g143000_ 4)
                 (apply (lambda (_stx136568_
                                 _val136569_
                                 _rebind?136570_
                                 _phi136571_)
                          (gx#bind-identifier!__2
                           _stx136568_
                           _val136569_
                           _rebind?136570_
                           _phi136571_))
                        _g143001_))
                ((##fx= _g143000_ 5)
                 (apply (lambda (_stx136575_
                                 _val136576_
                                 _rebind?136577_
                                 _phi136578_
                                 _ctx136579_)
                          (gx#bind-identifier!__%
                           _stx136575_
                           _val136576_
                           _rebind?136577_
                           _phi136578_
                           _ctx136579_))
                        _g143001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g143001_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx136512_ _phi136513_ _ctx136514_)
        (let _lp136516_ ((_e136518_ _stx136512_)
                         (_marks136519_ (gx#current-expander-marks)))
          (if (symbol? _e136518_)
              (gx#core-resolve-binding
               _e136518_
               _phi136513_
               _phi136513_
               _ctx136514_
               (reverse _marks136519_))
              (if (gx#identifier-quote? _e136518_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e136518_ '1 gx#AST::t '#f)
                   _phi136513_
                   '0
                   (##unchecked-structure-ref
                    _e136518_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e136518_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e136518_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e136518_ '1 gx#AST::t '#f)
                       _phi136513_
                       _phi136513_
                       _ctx136514_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136518_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136519_))
                      (if (##structure-direct-instance-of?
                           _e136518_
                           'gx#syntax-wrap::t)
                          (_lp136516_
                           (##unchecked-structure-ref
                            _e136518_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e136518_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks136519_))
                          (if (##structure-instance-of?
                               _e136518_
                               'gerbil#AST::t)
                              (_lp136516_
                               (##unchecked-structure-ref
                                _e136518_
                                '1
                                gx#AST::t
                                '#f)
                               _marks136519_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx136512_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx136524_)
        (let* ((_phi136526_ (gx#current-expander-phi))
               (_ctx136528_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx136524_
           _phi136526_
           _ctx136528_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx136530_ _phi136531_)
        (let ((_ctx136533_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx136530_
           _phi136531_
           _ctx136533_))))
    (define gx#core-resolve-identifier
      (lambda _g143003_
        (let ((_g143002_ (##length _g143003_)))
          (cond ((##fx= _g143002_ 1)
                 (apply (lambda (_stx136524_)
                          (gx#core-resolve-identifier__0 _stx136524_))
                        _g143003_))
                ((##fx= _g143002_ 2)
                 (apply (lambda (_stx136530_ _phi136531_)
                          (gx#core-resolve-identifier__1
                           _stx136530_
                           _phi136531_))
                        _g143003_))
                ((##fx= _g143002_ 3)
                 (apply (lambda (_stx136535_ _phi136536_ _ctx136537_)
                          (gx#core-resolve-identifier__%
                           _stx136535_
                           _phi136536_
                           _ctx136537_))
                        _g143003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g143003_))))))
    (define gx#core-resolve-binding
      (lambda (_id136425_
               _phi136426_
               _src-phi136427_
               _ctx136428_
               _marks136429_)
        (letrec ((_resolve136431_
                  (lambda (_ctx136499_ _src-phi136500_ _key136501_)
                    (let _lp136503_ ((_ctx136505_
                                      (gx#core-context-shift
                                       _ctx136499_
                                       _phi136426_))
                                     (_dphi136506_
                                      (fx- _phi136426_ _src-phi136500_)))
                      (let ((_$e136508_
                             (gx#core-context-resolve
                              _ctx136505_
                              _key136501_)))
                        (if _$e136508_
                            (values _$e136508_)
                            (if (fxzero? _dphi136506_)
                                '#f
                                (if (fxpositive? _dphi136506_)
                                    (_lp136503_
                                     (gx#core-context-shift _ctx136505_ '-1)
                                     (fx- _dphi136506_ '1))
                                    (_lp136503_
                                     (gx#core-context-shift _ctx136505_ '1)
                                     (fx+ _dphi136506_ '1))))))))))
          (let _lp136433_ ((_ctx136435_ _ctx136428_)
                           (_src-phi136436_ _src-phi136427_)
                           (_rest136437_ _marks136429_))
            (let* ((_rest136438136446_ _rest136437_)
                   (_else136440136454_
                    (lambda ()
                      (_resolve136431_
                       _ctx136435_
                       _src-phi136436_
                       _id136425_)))
                   (_K136442136487_
                    (lambda (_rest136457_ _hd136458_)
                      (let* ((_hd136459136465_ _hd136458_)
                             (_E136461136469_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd136459136465_)))
                             (_K136462136479_
                              (lambda (_subst136472_)
                                (let ((_$e136476_
                                       (let ((_key136474_
                                              (if _subst136472_
                                                  (table-ref
                                                   _subst136472_
                                                   _id136425_
                                                   '#f)
                                                  '#f)))
                                         (if _key136474_
                                             (_resolve136431_
                                              _ctx136435_
                                              _src-phi136436_
                                              _key136474_)
                                             '#f))))
                                  (if _$e136476_
                                      _$e136476_
                                      (_lp136433_
                                       (##unchecked-structure-ref
                                        _hd136458_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd136458_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest136457_))))))
                        (if (##structure-instance-of?
                             _hd136459136465_
                             'gx#expander-mark::t)
                            (let* ((_e136463136482_
                                    (##unchecked-structure-ref
                                     _hd136459136465_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst136485_ _e136463136482_))
                              (_K136462136479_ _subst136485_))
                            (_E136461136469_))))))
              (if (##pair? _rest136438136446_)
                  (let ((_hd136443136490_ (##car _rest136438136446_))
                        (_tl136444136492_ (##cdr _rest136438136446_)))
                    (let* ((_hd136495_ _hd136443136490_)
                           (_rest136497_ _tl136444136492_))
                      (_K136442136487_ _rest136497_ _hd136495_)))
                  (_else136440136454_)))))))
    (define gx#core-bind!__%
      (lambda (_key136301_ _val136302_ _rebind?136303_ _phi136304_ _ctx136305_)
        (letrec ((_update-binding136307_
                  (lambda (_xval136378_)
                    (if (or (_rebind?136303_
                             _ctx136305_
                             _xval136378_
                             _val136302_)
                            (and (##structure-direct-instance-of?
                                  _xval136378_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval136378_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val136302_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val136302_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval136378_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val136302_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val136302_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval136378_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val136302_
                        (if (and (##structure-direct-instance-of?
                                  _val136302_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val136302_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval136378_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val136302_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval136378_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval136378_
                            (if (and (##structure-direct-instance-of?
                                      _val136302_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval136378_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key136301_
                                 (cons (##unchecked-structure-ref
                                        _val136302_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val136302_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval136378_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval136378_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval136378_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval136378_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key136301_
                                 _val136302_
                                 _xval136378_))))))
                 (_gensubst136308_
                  (lambda (_subst136373_ _id136374_)
                    (let ((_eid136376_
                           (gensym (if (uninterned-symbol? _id136374_)
                                       '%
                                       _id136374_))))
                      (table-set! _subst136373_ _id136374_ _eid136376_)
                      _eid136376_)))
                 (_subst!136309_
                  (lambda (_key136311_)
                    (let* ((_key136312136320_ _key136311_)
                           (_else136314136328_ (lambda () _key136311_))
                           (_K136316136361_
                            (lambda (_mark136331_ _id136332_)
                              (let* ((_mark136333136339_ _mark136331_)
                                     (_E136335136343_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark136333136339_)))
                                     (_K136336136353_
                                      (lambda (_subst136346_)
                                        (if (not _subst136346_)
                                            (let ((_subst136348_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark136331_
                                               _subst136348_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst136308_
                                               _subst136348_
                                               _id136332_))
                                            (let ((_$e136350_
                                                   (table-ref
                                                    _subst136346_
                                                    _id136332_
                                                    '#f)))
                                              (if _$e136350_
                                                  (values _$e136350_)
                                                  (_gensubst136308_
                                                   _subst136346_
                                                   _id136332_)))))))
                                (if (##structure-instance-of?
                                     _mark136333136339_
                                     'gx#expander-mark::t)
                                    (let* ((_e136337136356_
                                            (##unchecked-structure-ref
                                             _mark136333136339_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst136359_ _e136337136356_))
                                      (_K136336136353_ _subst136359_))
                                    (_E136335136343_))))))
                      (if (##pair? _key136312136320_)
                          (let ((_hd136317136364_ (##car _key136312136320_))
                                (_tl136318136366_ (##cdr _key136312136320_)))
                            (let* ((_id136369_ _hd136317136364_)
                                   (_mark136371_ _tl136318136366_))
                              (_K136316136361_ _mark136371_ _id136369_)))
                          (_else136314136328_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx136305_ _phi136304_)
           (_subst!136309_ _key136301_)
           _val136302_
           _update-binding136307_))))
    (define gx#core-bind!__0
      (lambda (_key136395_ _val136396_)
        (let* ((_rebind?136398_ false)
               (_phi136400_ (gx#current-expander-phi))
               (_ctx136402_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136395_
           _val136396_
           _rebind?136398_
           _phi136400_
           _ctx136402_))))
    (define gx#core-bind!__1
      (lambda (_key136404_ _val136405_ _rebind?136406_)
        (let* ((_phi136408_ (gx#current-expander-phi))
               (_ctx136410_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136404_
           _val136405_
           _rebind?136406_
           _phi136408_
           _ctx136410_))))
    (define gx#core-bind!__2
      (lambda (_key136412_ _val136413_ _rebind?136414_ _phi136415_)
        (let ((_ctx136417_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key136412_
           _val136413_
           _rebind?136414_
           _phi136415_
           _ctx136417_))))
    (define gx#core-bind!
      (lambda _g143005_
        (let ((_g143004_ (##length _g143005_)))
          (cond ((##fx= _g143004_ 2)
                 (apply (lambda (_key136395_ _val136396_)
                          (gx#core-bind!__0 _key136395_ _val136396_))
                        _g143005_))
                ((##fx= _g143004_ 3)
                 (apply (lambda (_key136404_ _val136405_ _rebind?136406_)
                          (gx#core-bind!__1
                           _key136404_
                           _val136405_
                           _rebind?136406_))
                        _g143005_))
                ((##fx= _g143004_ 4)
                 (apply (lambda (_key136412_
                                 _val136413_
                                 _rebind?136414_
                                 _phi136415_)
                          (gx#core-bind!__2
                           _key136412_
                           _val136413_
                           _rebind?136414_
                           _phi136415_))
                        _g143005_))
                ((##fx= _g143004_ 5)
                 (apply (lambda (_key136419_
                                 _val136420_
                                 _rebind?136421_
                                 _phi136422_
                                 _ctx136423_)
                          (gx#core-bind!__%
                           _key136419_
                           _val136420_
                           _rebind?136421_
                           _phi136422_
                           _ctx136423_))
                        _g143005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g143005_))))))
    (define gx#core-identifier-key
      (lambda (_stx136235_)
        (if (symbol? _stx136235_)
            (let* ((_g136236136244_ (gx#current-expander-marks))
                   (_else136238136252_ (lambda () _stx136235_))
                   (_K136240136257_
                    (lambda (_hd136255_) (cons _stx136235_ _hd136255_))))
              (if (##pair? _g136236136244_)
                  (let* ((_hd136241136260_ (##car _g136236136244_))
                         (_hd136263_ _hd136241136260_))
                    (_K136240136257_ _hd136263_))
                  (_else136238136252_)))
            (if (gx#identifier? _stx136235_)
                (let* ((_id136265_ (gx#syntax-local-unwrap _stx136235_))
                       (_eid136267_ (gx#stx-e _id136265_))
                       (_marks136269_ (gx#stx-identifier-marks* _id136265_)))
                  (let* ((_marks136271136279_ _marks136269_)
                         (_else136273136287_ (lambda () _eid136267_))
                         (_K136275136292_
                          (lambda (_hd136290_) (cons _eid136267_ _hd136290_))))
                    (if (##pair? _marks136271136279_)
                        (let* ((_hd136276136295_ (##car _marks136271136279_))
                               (_hd136298_ _hd136276136295_))
                          (_K136275136292_ _hd136298_))
                        (_else136273136287_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx136235_)))))
    (define gx#core-context-shift
      (lambda (_ctx136180_ _phi136181_)
        (letrec ((_make-phi136183_
                  (lambda (_super136233_)
                    (let ((__obj142976 (make-object* gx#phi-context::t '6)))
                      (gx#phi-context:::init!
                       __obj142976
                       (gensym 'phi)
                       _super136233_)
                      __obj142976)))
                 (_make-phi/up136184_
                  (lambda (_ctx136228_ _super136229_)
                    (let ((_ctx+1136231_ (_make-phi136183_ _super136229_)))
                      (##unchecked-structure-set!
                       _ctx136228_
                       _ctx+1136231_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1136231_
                       _ctx136228_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1136231_)))
                 (_make-phi/down136185_
                  (lambda (_ctx136223_ _super136224_)
                    (let ((_ctx-1136226_ (_make-phi136183_ _super136224_)))
                      (##unchecked-structure-set!
                       _ctx-1136226_
                       _ctx136223_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx136223_
                       _ctx-1136226_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1136226_)))
                 (_shift136186_
                  (lambda (_ctx136207_
                           _delta136208_
                           _make-delta-context136209_
                           _phi136210_
                           _K136211_)
                    (let ((_$e136213_
                           (##unchecked-structure-ref
                            _ctx136207_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e136213_
                          ((lambda (_super136216_)
                             (let* ((_super136218_
                                     (_K136211_ _super136216_ _delta136208_))
                                    (_ctx+d136220_
                                     (_make-delta-context136209_
                                      _ctx136207_
                                      _super136218_)))
                               (_K136211_
                                _ctx+d136220_
                                (fx- _phi136210_ _delta136208_))))
                           _$e136213_)
                          (error '"Bad context" _ctx136207_))))))
          (let _K136188_ ((_ctx136190_ _ctx136180_) (_phi136191_ _phi136181_))
            (if (fxzero? _phi136191_)
                _ctx136190_
                (if (fx> (##vector-length _ctx136190_) '3)
                    (if (fxpositive? _phi136191_)
                        (let ((_$e136193_
                               (##unchecked-structure-ref
                                _ctx136190_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e136193_
                              ((lambda (_g136195136197_)
                                 (_K136188_
                                  _g136195136197_
                                  (fx- _phi136191_ '1)))
                               _$e136193_)
                              (_shift136186_
                               _ctx136190_
                               '1
                               _make-phi/up136184_
                               _phi136191_
                               _K136188_)))
                        (let ((_$e136200_
                               (##unchecked-structure-ref
                                _ctx136190_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e136200_
                              ((lambda (_g136202136204_)
                                 (_K136188_
                                  _g136202136204_
                                  (fx+ _phi136191_ '1)))
                               _$e136200_)
                              (_shift136186_
                               _ctx136190_
                               '-1
                               _make-phi/down136185_
                               _phi136191_
                               _K136188_))))
                    _ctx136190_))))))
    (define gx#core-context-get
      (lambda (_ctx136177_ _key136178_)
        (table-ref
         (##unchecked-structure-ref _ctx136177_ '2 gx#expander-context::t '#f)
         _key136178_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx136173_ _key136174_ _val136175_)
        (table-set!
         (##unchecked-structure-ref _ctx136173_ '2 gx#expander-context::t '#f)
         _key136174_
         _val136175_)))
    (define gx#core-context-resolve
      (lambda (_ctx136160_ _key136161_)
        (let _lp136163_ ((_ctx136165_ _ctx136160_))
          (let ((_$e136167_ (gx#core-context-get _ctx136165_ _key136161_)))
            (if _$e136167_
                (values _$e136167_)
                (let ((_$e136170_
                       (if (fx> (##vector-length _ctx136165_) '3)
                           (##unchecked-structure-ref
                            _ctx136165_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e136170_ (_lp136163_ _$e136170_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx136150_ _key136151_ _val136152_ _rebind136153_)
        (let ((_$e136155_ (gx#core-context-get _ctx136150_ _key136151_)))
          (if _$e136155_
              ((lambda (_xval136158_)
                 (gx#core-context-put!
                  _ctx136150_
                  _key136151_
                  (_rebind136153_ _xval136158_)))
               _$e136155_)
              (gx#core-context-put! _ctx136150_ _key136151_ _val136152_)))))
    (define gx#core-context-top__%
      (lambda (_ctx136128_ _stop?136129_)
        (let _lp136131_ ((_ctx136133_ _ctx136128_))
          (if (_stop?136129_ _ctx136133_)
              _ctx136133_
              (if (##structure-instance-of? _ctx136133_ 'gx#context-phi::t)
                  (_lp136131_
                   (##unchecked-structure-ref
                    _ctx136133_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx136139_ (gx#current-expander-context))
               (_stop?136141_ gx#top-context?))
          (gx#core-context-top__% _ctx136139_ _stop?136141_))))
    (define gx#core-context-top__1
      (lambda (_ctx136143_)
        (let ((_stop?136145_ gx#top-context?))
          (gx#core-context-top__% _ctx136143_ _stop?136145_))))
    (define gx#core-context-top
      (lambda _g143007_
        (let ((_g143006_ (##length _g143007_)))
          (cond ((##fx= _g143006_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g143007_))
                ((##fx= _g143006_ 1)
                 (apply (lambda (_ctx136143_)
                          (gx#core-context-top__1 _ctx136143_))
                        _g143007_))
                ((##fx= _g143006_ 2)
                 (apply (lambda (_ctx136147_ _stop?136148_)
                          (gx#core-context-top__% _ctx136147_ _stop?136148_))
                        _g143007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g143007_))))))
    (define gx#core-context-root__%
      (lambda (_ctx136113_)
        (let _lp136115_ ((_ctx136117_ _ctx136113_))
          (if (##structure-instance-of? _ctx136117_ 'gx#context-phi::t)
              (_lp136115_
               (##unchecked-structure-ref
                _ctx136117_
                '3
                gx#phi-context::t
                '#f))
              _ctx136117_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx136123_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx136123_))))
    (define gx#core-context-root
      (lambda _g143009_
        (let ((_g143008_ (##length _g143009_)))
          (cond ((##fx= _g143008_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g143009_))
                ((##fx= _g143008_ 1)
                 (apply (lambda (_ctx136125_)
                          (gx#core-context-root__% _ctx136125_))
                        _g143009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g143009_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx136094_ . __136091136095_)
        (let ((_$e136098_ (gx#current-expander-allow-rebind?)))
          (if _$e136098_
              _$e136098_
              (if (##structure-instance-of? _ctx136094_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx136094_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx136094_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx136105_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx136105_))))
    (define gx#core-context-rebind?
      (lambda _g143011_
        (let ((_g143010_ (##length _g143011_)))
          (cond ((##fx= _g143010_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g143011_))
                ((##fx= _g143010_ 1)
                 (apply (lambda (_ctx136107_)
                          (gx#core-context-rebind?__% _ctx136107_))
                        _g143011_))
                ((##fx>= _g143010_ 1)
                 (apply gx#core-context-rebind?__% _g143011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g143011_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx136077_)
        (let ((_$e136079_ (gx#core-context-top__1 _ctx136077_)))
          (if _$e136079_
              ((lambda (_ctx136082_)
                 (if (##structure-instance-of?
                      _ctx136082_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx136082_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e136079_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx136088_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx136088_))))
    (define gx#core-context-namespace
      (lambda _g143013_
        (let ((_g143012_ (##length _g143013_)))
          (cond ((##fx= _g143012_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g143013_))
                ((##fx= _g143012_ 1)
                 (apply (lambda (_ctx136090_)
                          (gx#core-context-namespace__% _ctx136090_))
                        _g143013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g143013_))))))
    (define gx#expander-binding?__%
      (lambda (_bind136063_ _is?136064_)
        (if (##structure-direct-instance-of?
             _bind136063_
             'gx#syntax-binding::t)
            (_is?136064_
             (##unchecked-structure-ref
              _bind136063_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind136069_)
        (let ((_is?136071_ gx#expander?))
          (gx#expander-binding?__% _bind136069_ _is?136071_))))
    (define gx#expander-binding?
      (lambda _g143015_
        (let ((_g143014_ (##length _g143015_)))
          (cond ((##fx= _g143014_ 1)
                 (apply (lambda (_bind136069_)
                          (gx#expander-binding?__0 _bind136069_))
                        _g143015_))
                ((##fx= _g143014_ 2)
                 (apply (lambda (_bind136073_ _is?136074_)
                          (gx#expander-binding?__% _bind136073_ _is?136074_))
                        _g143015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g143015_))))))
    (define gx#core-expander-binding?
      (lambda (_bind136060_)
        (gx#expander-binding?__% _bind136060_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind136058_)
        (gx#expander-binding?__% _bind136058_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind136052_)
        (letrec ((_direct-special-form?136054_
                  (lambda (_obj136056_)
                    (##structure-direct-instance-of?
                     _obj136056_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind136052_
           _direct-special-form?136054_))))
    (define gx#special-form-binding?
      (lambda (_bind136050_)
        (gx#expander-binding?__% _bind136050_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind136041_)
        (letrec ((_feature?136043_
                  (lambda (_e136045_)
                    (let ((_$e136047_
                           (##structure-instance-of?
                            _e136045_
                            'gx#feature-expander::t)))
                      (if _$e136047_
                          _$e136047_
                          (##structure-instance-of?
                           _e136045_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind136041_ _feature?136043_))))
    (define gx#private-feature-binding?
      (lambda (_bind136039_)
        (gx#expander-binding?__% _bind136039_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id136026_ _bound?136027_)
        (if (gx#identifier? _id136026_)
            (_bound?136027_ (gx#resolve-identifier__0 _id136026_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id136032_)
        (let ((_bound?136034_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id136032_ _bound?136034_))))
    (define gx#core-bound-identifier?
      (lambda _g143017_
        (let ((_g143016_ (##length _g143017_)))
          (cond ((##fx= _g143016_ 1)
                 (apply (lambda (_id136032_)
                          (gx#core-bound-identifier?__0 _id136032_))
                        _g143017_))
                ((##fx= _g143016_ 2)
                 (apply (lambda (_id136036_ _bound?136037_)
                          (gx#core-bound-identifier?__%
                           _id136036_
                           _bound?136037_))
                        _g143017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g143017_))))))
    (define gx#core-identifier=?
      (lambda (_x136016_ _y136017_)
        (letrec ((_y=?136019_
                  (lambda (_xid136023_)
                    ((if (list? _y136017_) memq eq?) _xid136023_ _y136017_))))
          (let ((_bind136021_ (gx#resolve-identifier__0 _x136016_)))
            (if (##structure-instance-of? _bind136021_ 'gx#binding::t)
                (_y=?136019_
                 (##unchecked-structure-ref _bind136021_ '1 gx#binding::t '#f))
                (_y=?136019_ (gx#stx-e _x136016_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e136014_)
        (if (interned-symbol? _e136014_)
            (string-index (symbol->string _e136014_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx135969_ _src135970_ _ctx135971_ _marks135972_)
        (if (##structure? _stx135969_)
            (let ((_$e135974_ (gx#sealed-syntax-unwrap _stx135969_)))
              (if _$e135974_
                  (values _$e135974_)
                  (if (gx#identifier? _stx135969_)
                      (let ((_id135977_
                             (gx#stx-unwrap__% _stx135969_ _marks135972_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id135977_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e135979_
                                (##unchecked-structure-ref
                                 _id135977_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e135979_ _$e135979_ _src135970_))
                         _ctx135971_
                         (##unchecked-structure-ref
                          _id135977_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx135969_)
                       (let ((_$e135982_ (gx#stx-source _stx135969_)))
                         (if _$e135982_ _$e135982_ _src135970_))
                       _ctx135971_
                       (reverse _marks135972_)))))
            (##structure
             gx#syntax-quote::t
             _stx135969_
             _src135970_
             _ctx135971_
             (reverse _marks135972_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx135988_)
        (let* ((_src135990_ '#f)
               (_ctx135992_ (gx#current-expander-context))
               (_marks135994_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135988_
           _src135990_
           _ctx135992_
           _marks135994_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx135996_ _src135997_)
        (let* ((_ctx135999_ (gx#current-expander-context))
               (_marks136001_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx135996_
           _src135997_
           _ctx135999_
           _marks136001_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx136003_ _src136004_ _ctx136005_)
        (let ((_marks136007_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx136003_
           _src136004_
           _ctx136005_
           _marks136007_))))
    (define gx#core-quote-syntax
      (lambda _g143019_
        (let ((_g143018_ (##length _g143019_)))
          (cond ((##fx= _g143018_ 1)
                 (apply (lambda (_stx135988_)
                          (gx#core-quote-syntax__0 _stx135988_))
                        _g143019_))
                ((##fx= _g143018_ 2)
                 (apply (lambda (_stx135996_ _src135997_)
                          (gx#core-quote-syntax__1 _stx135996_ _src135997_))
                        _g143019_))
                ((##fx= _g143018_ 3)
                 (apply (lambda (_stx136003_ _src136004_ _ctx136005_)
                          (gx#core-quote-syntax__2
                           _stx136003_
                           _src136004_
                           _ctx136005_))
                        _g143019_))
                ((##fx= _g143018_ 4)
                 (apply (lambda (_stx136009_
                                 _src136010_
                                 _ctx136011_
                                 _marks136012_)
                          (gx#core-quote-syntax__%
                           _stx136009_
                           _src136010_
                           _ctx136011_
                           _marks136012_))
                        _g143019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g143019_))))))
    (define gx#core-cons
      (lambda (_hd135965_ _tl135966_)
        (cons (gx#core-quote-syntax__0 _hd135965_) _tl135966_)))
    (define gx#core-list
      (lambda (_hd135962_ . _rest135963_)
        (cons (gx#core-quote-syntax__0 _hd135962_) _rest135963_)))
    (define gx#core-cons*
      (lambda (_hd135959_ . _rest135960_)
        (apply cons* (gx#core-quote-syntax__0 _hd135959_) _rest135960_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path135933_ _rel135934_)
        (let ((_path135946_ (gx#stx-e _stx-path135933_))
              (_reldir135947_
               (let _lp135936_ ((_relsrc135938_
                                 (let ((_$e135943_
                                        (gx#stx-source _stx-path135933_)))
                                   (if _$e135943_ _$e135943_ _rel135934_))))
                 (if (##structure-instance-of? _relsrc135938_ 'gerbil#AST::t)
                     (_lp135936_
                      (let ((_$e135940_ (gx#stx-source _relsrc135938_)))
                        (if _$e135940_ _$e135940_ (gx#stx-e _relsrc135938_))))
                     (if (source-location-path? _relsrc135938_)
                         (path-directory (source-location-path _relsrc135938_))
                         (if (string? _relsrc135938_)
                             (path-directory _relsrc135938_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path135946_ (path-normalize _reldir135947_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path135952_)
        (let ((_rel135954_ '#f))
          (gx#core-resolve-path__% _stx-path135952_ _rel135954_))))
    (define gx#core-resolve-path
      (lambda _g143021_
        (let ((_g143020_ (##length _g143021_)))
          (cond ((##fx= _g143020_ 1)
                 (apply (lambda (_stx-path135952_)
                          (gx#core-resolve-path__0 _stx-path135952_))
                        _g143021_))
                ((##fx= _g143020_ 2)
                 (apply (lambda (_stx-path135956_ _rel135957_)
                          (gx#core-resolve-path__%
                           _stx-path135956_
                           _rel135957_))
                        _g143021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g143021_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr135889_ _ctx135890_)
        (let* ((_repr135891135898_ _repr135889_)
               (_E135893135902_
                (lambda () (error '"No clause matching" _repr135891135898_)))
               (_K135894135910_
                (lambda (_subs135905_ _phi135906_)
                  (let ((_subst135908_
                         (if (not (null? _subs135905_))
                             (list->table _subs135905_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst135908_
                     _ctx135890_
                     _phi135906_
                     '#f)))))
          (if (##pair? _repr135891135898_)
              (let ((_hd135895135913_ (##car _repr135891135898_))
                    (_tl135896135915_ (##cdr _repr135891135898_)))
                (let* ((_phi135918_ _hd135895135913_)
                       (_subs135920_ _tl135896135915_))
                  (_K135894135910_ _subs135920_ _phi135918_)))
              (_E135893135902_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr135925_)
        (let ((_ctx135927_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr135925_ _ctx135927_))))
    (define gx#core-deserialize-mark
      (lambda _g143023_
        (let ((_g143022_ (##length _g143023_)))
          (cond ((##fx= _g143022_ 1)
                 (apply (lambda (_repr135925_)
                          (gx#core-deserialize-mark__0 _repr135925_))
                        _g143023_))
                ((##fx= _g143022_ 2)
                 (apply (lambda (_repr135929_ _ctx135930_)
                          (gx#core-deserialize-mark__%
                           _repr135929_
                           _ctx135930_))
                        _g143023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g143023_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx135886_)
        (gx#stx-rewrap _stx135886_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx135884_)
        (gx#stx-unwrap__% _stx135884_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx135854_)
        (let* ((_g135855135863_ (gx#current-expander-marks))
               (_else135857135871_ (lambda () _stx135854_))
               (_K135859135876_
                (lambda (_hd135874_)
                  (gx#stx-apply-mark _stx135854_ _hd135874_))))
          (if (##pair? _g135855135863_)
              (let* ((_hd135860135879_ (##car _g135855135863_))
                     (_hd135882_ _hd135860135879_))
                (_K135859135876_ _hd135882_))
              (_else135857135871_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx135839_ _E135840_)
        (let ((_bind135842_ (gx#resolve-identifier__0 _stx135839_)))
          (if (##structure-direct-instance-of?
               _bind135842_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind135842_
               '4
               gx#syntax-binding::t
               '#f)
              (_E135840_ _stx135839_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx135847_)
        (let ((_E135849_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx135847_ _E135849_))))
    (define gx#syntax-local-e
      (lambda _g143025_
        (let ((_g143024_ (##length _g143025_)))
          (cond ((##fx= _g143024_ 1)
                 (apply (lambda (_stx135847_)
                          (gx#syntax-local-e__0 _stx135847_))
                        _g143025_))
                ((##fx= _g143024_ 2)
                 (apply (lambda (_stx135851_ _E135852_)
                          (gx#syntax-local-e__% _stx135851_ _E135852_))
                        _g143025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g143025_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx135823_ _E135824_)
        (let ((_e135826_ (gx#syntax-local-e__% _stx135823_ _E135824_)))
          (if (##structure-instance-of? _e135826_ 'gx#expander::t)
              (##structure-ref _e135826_ '1 gx#expander::t '#f)
              _e135826_))))
    (define gx#syntax-local-value__0
      (lambda (_stx135831_)
        (let ((_E135833_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx135831_ _E135833_))))
    (define gx#syntax-local-value
      (lambda _g143027_
        (let ((_g143026_ (##length _g143027_)))
          (cond ((##fx= _g143026_ 1)
                 (apply (lambda (_stx135831_)
                          (gx#syntax-local-value__0 _stx135831_))
                        _g143027_))
                ((##fx= _g143026_ 2)
                 (apply (lambda (_stx135835_ _E135836_)
                          (gx#syntax-local-value__% _stx135835_ _E135836_))
                        _g143027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g143027_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx135820_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx135820_)))))
