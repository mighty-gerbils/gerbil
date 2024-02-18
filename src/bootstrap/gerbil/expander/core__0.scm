(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708247274)
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
      (lambda _$args149614_
        (apply make-instance gx#expander-context::t _$args149614_)))
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
      (lambda _$args149611_
        (apply make-instance gx#root-context::t _$args149611_)))
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
      (lambda _$args149608_
        (apply make-instance gx#phi-context::t _$args149608_)))
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
      (lambda _$args149605_
        (apply make-instance gx#top-context::t _$args149605_)))
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
      (lambda _$args149602_
        (apply make-instance gx#module-context::t _$args149602_)))
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
      (lambda _$args149599_
        (apply make-instance gx#prelude-context::t _$args149599_)))
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
      (lambda _$args149596_
        (apply make-instance gx#local-context::t _$args149596_)))
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
      (lambda (_self149580_ _id149581_ _super149582_)
        (if (##fx< '3 (##structure-length _self149580_))
            (begin
              (##unchecked-structure-set!
               _self149580_
               _id149581_
               '1
               (##structure-type _self149580_)
               '#f)
              (##unchecked-structure-set!
               _self149580_
               (make-hash-table-eq)
               '2
               (##structure-type _self149580_)
               '#f)
              (##unchecked-structure-set!
               _self149580_
               _super149582_
               '3
               (##structure-type _self149580_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self149580_
                   '3
                   (##vector-length _self149580_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self149587_ _id149588_)
        (let ((_super149590_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self149587_ _id149588_ _super149590_))))
    (define gx#phi-context:::init!
      (lambda _g153724_
        (let ((_g153723_ (##length _g153724_)))
          (cond ((##fx= _g153723_ 2)
                 (apply (lambda (_self149587_ _id149588_)
                          (gx#phi-context:::init!__0 _self149587_ _id149588_))
                        _g153724_))
                ((##fx= _g153723_ 3)
                 (apply (lambda (_self149592_ _id149593_ _super149594_)
                          (gx#phi-context:::init!__%
                           _self149592_
                           _id149593_
                           _super149594_))
                        _g153724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g153724_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self149444_ _super149445_)
        (if (##fx< '3 (##structure-length _self149444_))
            (begin
              (##unchecked-structure-set!
               _self149444_
               (gensym 'L)
               '1
               (##structure-type _self149444_)
               '#f)
              (##unchecked-structure-set!
               _self149444_
               (make-hash-table-eq)
               '2
               (##structure-type _self149444_)
               '#f)
              (##unchecked-structure-set!
               _self149444_
               _super149445_
               '3
               (##structure-type _self149444_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self149444_
                   '3
                   (##vector-length _self149444_)))))
    (define gx#local-context:::init!__0
      (lambda (_self149450_)
        (let ((_super149452_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self149450_ _super149452_))))
    (define gx#local-context:::init!
      (lambda _g153726_
        (let ((_g153725_ (##length _g153726_)))
          (cond ((##fx= _g153725_ 1)
                 (apply (lambda (_self149450_)
                          (gx#local-context:::init!__0 _self149450_))
                        _g153726_))
                ((##fx= _g153725_ 2)
                 (apply (lambda (_self149454_ _super149455_)
                          (gx#local-context:::init!__%
                           _self149454_
                           _super149455_))
                        _g153726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g153726_))))))
    (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
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
      (lambda _$args149318_ (apply make-instance gx#binding::t _$args149318_)))
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
      (lambda _$args149315_
        (apply make-instance gx#runtime-binding::t _$args149315_)))
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
      (lambda _$args149312_
        (apply make-instance gx#local-binding::t _$args149312_)))
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
      (lambda _$args149309_
        (apply make-instance gx#top-binding::t _$args149309_)))
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
      (lambda _$args149306_
        (apply make-instance gx#module-binding::t _$args149306_)))
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
      (lambda _$args149303_
        (apply make-instance gx#extern-binding::t _$args149303_)))
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
      (lambda _$args149300_
        (apply make-instance gx#syntax-binding::t _$args149300_)))
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
      (lambda _$args149297_
        (apply make-instance gx#import-binding::t _$args149297_)))
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
      (lambda _$args149294_
        (apply make-instance gx#alias-binding::t _$args149294_)))
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
      (lambda _$args149291_
        (apply make-instance gx#expander::t _$args149291_)))
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
      (lambda _$args149288_
        (apply make-instance gx#core-expander::t _$args149288_)))
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
      (lambda _$args149285_
        (apply make-instance gx#expression-form::t _$args149285_)))
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
      (lambda _$args149282_
        (apply make-instance gx#special-form::t _$args149282_)))
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
      (lambda _$args149279_
        (apply make-instance gx#definition-form::t _$args149279_)))
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
      (lambda _$args149276_
        (apply make-instance gx#top-special-form::t _$args149276_)))
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
      (lambda _$args149273_
        (apply make-instance gx#module-special-form::t _$args149273_)))
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
      (lambda _$args149270_
        (apply make-instance gx#feature-expander::t _$args149270_)))
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
      (lambda _$args149267_
        (apply make-instance gx#private-feature-expander::t _$args149267_)))
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
      (lambda _$args149264_
        (apply make-instance gx#reserved-expander::t _$args149264_)))
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
      (lambda _$args149261_
        (apply make-instance gx#macro-expander::t _$args149261_)))
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
      (lambda _$args149258_
        (apply make-instance gx#rename-macro-expander::t _$args149258_)))
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
      (lambda _$args149255_
        (apply make-instance gx#user-expander::t _$args149255_)))
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
      (lambda _$args149252_
        (apply make-instance gx#expander-mark::t _$args149252_)))
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
      (lambda (_ctx149237_ _message149238_ _stx149239_ . _details149240_)
        (let ((_ctx149250_
               (let ((_$e149242_ _ctx149237_))
                 (if _$e149242_
                     _$e149242_
                     (let ((_$e149245_ (gx#core-context-top__0)))
                       (if _$e149245_
                           ((lambda (_ctx149248_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx149248_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e149245_)
                           '#f))))))
          (raise (make-syntax-error
                  _message149238_
                  (cons _stx149239_ _details149240_)
                  _ctx149250_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx149224_ _expression?149225_)
        (gx#eval-syntax* (gx#core-expand__% _stx149224_ _expression?149225_))))
    (define gx#eval-syntax__0
      (lambda (_stx149230_)
        (let ((_expression?149232_ '#f))
          (gx#eval-syntax__% _stx149230_ _expression?149232_))))
    (define gx#eval-syntax
      (lambda _g153728_
        (let ((_g153727_ (##length _g153728_)))
          (cond ((##fx= _g153727_ 1)
                 (apply (lambda (_stx149230_) (gx#eval-syntax__0 _stx149230_))
                        _g153728_))
                ((##fx= _g153727_ 2)
                 (apply (lambda (_stx149234_ _expression?149235_)
                          (gx#eval-syntax__% _stx149234_ _expression?149235_))
                        _g153728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g153728_))))))
    (define gx#eval-syntax*
      (lambda (_stx149221_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx149221_))))
    (define gx#core-expand__%
      (lambda (_stx149208_ _expression?149209_)
        (if _expression?149209_
            (gx#core-expand-expression _stx149208_)
            (gx#core-expand-top _stx149208_))))
    (define gx#core-expand__0
      (lambda (_stx149214_)
        (let ((_expression?149216_ '#f))
          (gx#core-expand__% _stx149214_ _expression?149216_))))
    (define gx#core-expand
      (lambda _g153730_
        (let ((_g153729_ (##length _g153730_)))
          (cond ((##fx= _g153729_ 1)
                 (apply (lambda (_stx149214_) (gx#core-expand__0 _stx149214_))
                        _g153730_))
                ((##fx= _g153729_ 2)
                 (apply (lambda (_stx149218_ _expression?149219_)
                          (gx#core-expand__% _stx149218_ _expression?149219_))
                        _g153730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g153730_))))))
    (define gx#core-expand-top
      (lambda (_stx149175_)
        (let* ((_stx149177_ (gx#core-expand*__0 _stx149175_))
               (_e149178149185_ _stx149177_)
               (_E149180149189_
                (lambda () (gx#core-expand-expression _stx149177_)))
               (_E149179149203_
                (lambda ()
                  (if (gx#stx-pair? _e149178149185_)
                      (let ((_e149181149193_ (gx#syntax-e _e149178149185_)))
                        (let ((_hd149182149196_ (##car _e149181149193_))
                              (_tl149183149198_ (##cdr _e149181149193_)))
                          (let ((_form149201_ _hd149182149196_))
                            (if (gx#core-bound-identifier?__0 _form149201_)
                                _stx149177_
                                (_E149180149189_)))))
                      (_E149180149189_)))))
          (_E149179149203_))))
    (define gx#core-expand-expression
      (lambda (_stx149122_)
        (letrec ((_sealed-expression?149124_
                  (lambda (_hd149145_)
                    (if (gx#sealed-syntax? _hd149145_)
                        (let* ((_e149146149153_ _hd149145_)
                               (_E149148149157_ (lambda () '#f))
                               (_E149147149171_
                                (lambda ()
                                  (if (gx#stx-pair? _e149146149153_)
                                      (let ((_e149149149161_
                                             (gx#syntax-e _e149146149153_)))
                                        (let ((_hd149150149164_
                                               (##car _e149149149161_))
                                              (_tl149151149166_
                                               (##cdr _e149149149161_)))
                                          (let ((_form149169_
                                                 _hd149150149164_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form149169_
                                                 gx#expression-form-binding?)
                                                (_E149148149157_)))))
                                      (_E149148149157_)))))
                          (_E149147149171_))
                        '#f)))
                 (_illegal-expression149125_
                  (lambda (_hd149143_ . _g153731_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx149122_
                     _hd149143_)))
                 (_expand-e149126_
                  (lambda (_form149138_ _hd149139_)
                    (let ((_bind149141_
                           (if (##structure-instance-of?
                                _form149138_
                                'gx#binding::t)
                               _form149138_
                               (gx#resolve-identifier__0 _form149138_))))
                      (if (gx#core-expander-binding? _bind149141_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind149141_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd149139_
                            (gx#stx-source _stx149122_)))
                          (if (##structure-direct-instance-of?
                               _bind149141_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind149141_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd149139_
                                 (gx#stx-source _stx149122_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx149122_
                               _form149138_)))))))
          (let ((_hd149128_ (gx#core-expand-head _stx149122_)))
            (if (_sealed-expression?149124_ _hd149128_)
                _hd149128_
                (if (gx#stx-pair? _hd149128_)
                    (let* ((_form149130_ (gx#stx-car _hd149128_))
                           (_bind149132_
                            (if (gx#identifier? _form149130_)
                                (gx#resolve-identifier__0 _form149130_)
                                '#f)))
                      (if (or (not _bind149132_)
                              (not (gx#core-expander-binding? _bind149132_)))
                          (_expand-e149126_ '%%app (cons '%%app _hd149128_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind149132_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd149128_
                               _illegal-expression149125_)
                              (if (gx#expression-form-binding? _bind149132_)
                                  (_expand-e149126_ _bind149132_ _hd149128_)
                                  (if (gx#direct-special-form-binding?
                                       _bind149132_)
                                      (gx#core-expand-expression
                                       (_expand-e149126_
                                        _bind149132_
                                        _hd149128_))
                                      (_illegal-expression149125_
                                       _hd149128_))))))
                    (if (gx#core-bound-identifier?__0 _hd149128_)
                        (_illegal-expression149125_ _hd149128_)
                        (if (gx#identifier? _hd149128_)
                            (_expand-e149126_
                             '%%ref
                             (cons '%%ref (cons _hd149128_ '())))
                            (if (gx#stx-datum? _hd149128_)
                                (_expand-e149126_
                                 '%#quote
                                 (cons '%#quote (cons _hd149128_ '())))
                                (_illegal-expression149125_
                                 _hd149128_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx149117_)
        (call-with-parameters
         (lambda ()
           (let ((_stx149120_ (gx#core-expand-expression _stx149117_)))
             (values _stx149120_ (gx#eval-syntax* _stx149120_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx149098_ _stop?149099_)
        (let _lp149101_ ((_stx149103_ _stx149098_))
          (if (_stop?149099_ _stx149103_)
              _stx149103_
              (let ((_rstx149105_ (gx#core-expand1 _stx149103_)))
                (if (eq? _stx149103_ _rstx149105_)
                    _stx149103_
                    (_lp149101_ _rstx149105_)))))))
    (define gx#core-expand*__0
      (lambda (_stx149110_)
        (let ((_stop?149112_ false))
          (gx#core-expand*__% _stx149110_ _stop?149112_))))
    (define gx#core-expand*
      (lambda _g153733_
        (let ((_g153732_ (##length _g153733_)))
          (cond ((##fx= _g153732_ 1)
                 (apply (lambda (_stx149110_) (gx#core-expand*__0 _stx149110_))
                        _g153733_))
                ((##fx= _g153732_ 2)
                 (apply (lambda (_stx149114_ _stop?149115_)
                          (gx#core-expand*__% _stx149114_ _stop?149115_))
                        _g153733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g153733_))))))
    (define gx#core-expand1
      (lambda (_stx149054_)
        (letrec ((_step149056_
                  (lambda (_hd149093_)
                    (let ((_bind149095_ (gx#resolve-identifier__0 _hd149093_)))
                      (if (##structure-instance-of?
                           _bind149095_
                           'gx#runtime-binding::t)
                          _stx149054_
                          (if (##structure-direct-instance-of?
                               _bind149095_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind149095_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx149054_)
                              (if (not _bind149095_)
                                  _stx149054_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx149054_))))))))
          (let* ((_e149057149065_ _stx149054_)
                 (_E149063149069_ (lambda () _stx149054_))
                 (_E149059149075_
                  (lambda ()
                    (let ((_hd149073_ _e149057149065_))
                      (if (gx#identifier? _hd149073_)
                          (_step149056_ _hd149073_)
                          (_E149063149069_)))))
                 (_E149058149089_
                  (lambda ()
                    (if (gx#stx-pair? _e149057149065_)
                        (let ((_e149060149079_ (gx#syntax-e _e149057149065_)))
                          (let ((_hd149061149082_ (##car _e149060149079_))
                                (_tl149062149084_ (##cdr _e149060149079_)))
                            (let ((_hd149087_ _hd149061149082_))
                              (if (gx#identifier? _hd149087_)
                                  (_step149056_ _hd149087_)
                                  (_E149059149075_)))))
                        (_E149059149075_)))))
            (_E149058149089_)))))
    (define gx#core-expand-head
      (lambda (_stx149020_)
        (letrec ((_stop?149022_
                  (lambda (_stx149024_)
                    (let* ((_e149025149032_ _stx149024_)
                           (_E149027149036_ (lambda () '#f))
                           (_E149026149050_
                            (lambda ()
                              (if (gx#stx-pair? _e149025149032_)
                                  (let ((_e149028149040_
                                         (gx#syntax-e _e149025149032_)))
                                    (let ((_hd149029149043_
                                           (##car _e149028149040_))
                                          (_tl149030149045_
                                           (##cdr _e149028149040_)))
                                      (let ((_hd149048_ _hd149029149043_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd149048_)
                                            (_E149027149036_)))))
                                  (_E149027149036_)))))
                      (_E149026149050_)))))
          (gx#core-expand*__% _stx149020_ _stop?149022_))))
    (define gx#core-expand-block__%
      (lambda (_stx148826_
               _expand-special148827_
               _begin-form148828_
               _expand-e148829_)
        (letrec ((_expand-splice148831_
                  (lambda (_hd148994_ _body148995_ _rest148996_ _r148997_)
                    (if (gx#stx-list? _body148995_)
                        (_K148835_
                         (gx#stx-foldr cons _rest148996_ _body148995_)
                         _r148997_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx148826_
                         _hd148994_))))
                 (_expand-cond-expand148832_
                  (lambda (_hd148990_ _rest148991_ _r148992_)
                    (_K148835_
                     (cons (gx#core-expand-cond-expand% _hd148990_)
                           _rest148991_)
                     _r148992_)))
                 (_expand-include148833_
                  (lambda (_hd148939_ _rest148940_ _r148941_)
                    (let* ((_e148942148952_ _hd148939_)
                           (_E148944148956_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e148942148952_)))
                           (_E148943148986_
                            (lambda ()
                              (if (gx#stx-pair? _e148942148952_)
                                  (let ((_e148945148960_
                                         (gx#syntax-e _e148942148952_)))
                                    (let ((_hd148946148963_
                                           (##car _e148945148960_))
                                          (_tl148947148965_
                                           (##cdr _e148945148960_)))
                                      (if (gx#stx-pair? _tl148947148965_)
                                          (let ((_e148948148968_
                                                 (gx#syntax-e
                                                  _tl148947148965_)))
                                            (let ((_hd148949148971_
                                                   (##car _e148948148968_))
                                                  (_tl148950148973_
                                                   (##cdr _e148948148968_)))
                                              (let ((_path148976_
                                                     _hd148949148971_))
                                                (if (gx#stx-null?
                                                     _tl148950148973_)
                                                    (if (gx#stx-string?
                                                         _path148976_)
                                                        (let* ((_rpath148978_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path148976_
                         (gx#stx-source _hd148939_)))
                       (_block148980_
                        (gx#core-expand-include%__% _hd148939_ _rpath148978_))
                       (_rbody148983_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block148980_
                            _expand-special148827_
                            '#f
                            _expand-e148829_))
                         gx#current-expander-path
                         (cons _rpath148978_ (gx#current-expander-path)))))
                  (_K148835_
                   _rest148940_
                   (foldr1 cons _r148941_ _rbody148983_)))
                (_E148944148956_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E148944148956_)))))
                                          (_E148944148956_))))
                                  (_E148944148956_)))))
                      (_E148943148986_))))
                 (_expand-expression148834_
                  (lambda (_hd148935_ _rest148936_ _r148937_)
                    (_K148835_
                     _rest148936_
                     (cons (_expand-e148829_ _hd148935_) _r148937_))))
                 (_K148835_
                  (lambda (_rest148865_ _r148866_)
                    (let* ((_e148867148874_ _rest148865_)
                           (_E148869148878_
                            (lambda ()
                              (if _begin-form148828_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form148828_
                                    (reverse _r148866_))
                                   (gx#stx-source _stx148826_))
                                  _r148866_)))
                           (_E148868148931_
                            (lambda ()
                              (if (gx#stx-pair? _e148867148874_)
                                  (let ((_e148870148882_
                                         (gx#syntax-e _e148867148874_)))
                                    (let ((_hd148871148885_
                                           (##car _e148870148882_))
                                          (_tl148872148887_
                                           (##cdr _e148870148882_)))
                                      (let* ((_hd148890_ _hd148871148885_)
                                             (_rest148892_ _tl148872148887_))
                                        (if '#t
                                            (let* ((_hd148894_
                                                    (gx#core-expand-head
                                                     _hd148890_))
                                                   (_e148895148902_ _hd148894_)
                                                   (_E148897148906_
                                                    (lambda ()
                                                      (_expand-expression148834_
                                                       _hd148894_
                                                       _rest148892_
                                                       _r148866_)))
                                                   (_E148896148927_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e148895148902_)
                                                          (let ((_e148898148910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e148895148902_)))
                    (let ((_hd148899148913_ (##car _e148898148910_))
                          (_tl148900148915_ (##cdr _e148898148910_)))
                      (let* ((_form148918_ _hd148899148913_)
                             (_body148920_ _tl148900148915_))
                        (if '#t
                            (let ((_bind148922_
                                   (if (gx#identifier? _form148918_)
                                       (gx#resolve-identifier__0 _form148918_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind148922_)
                                  (let ((_$e148924_
                                         (##unchecked-structure-ref
                                          _bind148922_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e148924_)
                                        (_expand-splice148831_
                                         _hd148894_
                                         _body148920_
                                         _rest148892_
                                         _r148866_)
                                        (if (eq? '%#cond-expand _$e148924_)
                                            (_expand-cond-expand148832_
                                             _hd148894_
                                             _rest148892_
                                             _r148866_)
                                            (if (eq? '%#include _$e148924_)
                                                (_expand-include148833_
                                                 _hd148894_
                                                 _rest148892_
                                                 _r148866_)
                                                (_expand-special148827_
                                                 _hd148894_
                                                 _K148835_
                                                 _rest148892_
                                                 _r148866_)))))
                                  (_expand-expression148834_
                                   _hd148894_
                                   _rest148892_
                                   _r148866_)))
                            (_E148897148906_)))))
                  (_E148897148906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E148896148927_))
                                            (_E148869148878_)))))
                                  (_E148869148878_)))))
                      (_E148868148931_)))))
          (let* ((_e148836148843_ _stx148826_)
                 (_E148838148847_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e148836148843_)))
                 (_E148837148861_
                  (lambda ()
                    (if (gx#stx-pair? _e148836148843_)
                        (let ((_e148839148851_ (gx#syntax-e _e148836148843_)))
                          (let ((_hd148840148854_ (##car _e148839148851_))
                                (_tl148841148856_ (##cdr _e148839148851_)))
                            (let ((_body148859_ _tl148841148856_))
                              (if (gx#stx-list? _body148859_)
                                  (_K148835_ _body148859_ '())
                                  (_E148838148847_)))))
                        (_E148838148847_)))))
            (_E148837148861_)))))
    (define gx#core-expand-block__0
      (lambda (_stx149002_ _expand-special149003_)
        (let* ((_begin-form149005_ '%#begin)
               (_expand-e149007_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx149002_
           _expand-special149003_
           _begin-form149005_
           _expand-e149007_))))
    (define gx#core-expand-block__1
      (lambda (_stx149009_ _expand-special149010_ _begin-form149011_)
        (let ((_expand-e149013_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx149009_
           _expand-special149010_
           _begin-form149011_
           _expand-e149013_))))
    (define gx#core-expand-block
      (lambda _g153735_
        (let ((_g153734_ (##length _g153735_)))
          (cond ((##fx= _g153734_ 2)
                 (apply (lambda (_stx149002_ _expand-special149003_)
                          (gx#core-expand-block__0
                           _stx149002_
                           _expand-special149003_))
                        _g153735_))
                ((##fx= _g153734_ 3)
                 (apply (lambda (_stx149009_
                                 _expand-special149010_
                                 _begin-form149011_)
                          (gx#core-expand-block__1
                           _stx149009_
                           _expand-special149010_
                           _begin-form149011_))
                        _g153735_))
                ((##fx= _g153734_ 4)
                 (apply (lambda (_stx149015_
                                 _expand-special149016_
                                 _begin-form149017_
                                 _expand-e149018_)
                          (gx#core-expand-block__%
                           _stx149015_
                           _expand-special149016_
                           _begin-form149017_
                           _expand-e149018_))
                        _g153735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g153735_))))))
    (define gx#core-expand-block*
      (lambda (_stx148774_ _expand-special148775_)
        (let* ((_g148776148787_
                (gx#core-expand-block__1
                 _stx148774_
                 _expand-special148775_
                 '#f))
               (_E148780148791_
                (lambda () (error '"No clause matching" _g148776148787_))))
          (let ((_K148785148822_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx148774_)))
                (_K148782148808_ (lambda (_expr148806_) _expr148806_))
                (_K148781148797_
                 (lambda (_body148795_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body148795_))
                    (gx#stx-source _stx148774_)))))
            (let ((_try-match148778148818_
                   (lambda ()
                     (if (##pair? _g148776148787_)
                         (let ((_tl148784148813_ (##cdr _g148776148787_))
                               (_hd148783148811_ (##car _g148776148787_)))
                           (if (##null? _tl148784148813_)
                               (let ((_expr148816_ _hd148783148811_))
                                 (_K148782148808_ _expr148816_))
                               (let ((_body148800_ _g148776148787_))
                                 (_K148781148797_ _body148800_))))
                         (let ((_body148800_ _g148776148787_))
                           (_K148781148797_ _body148800_))))))
              (if (##null? _g148776148787_)
                  (_K148785148822_)
                  (_try-match148778148818_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx148602_)
        (letrec ((_satisfied?148604_
                  (lambda (_condition148702_)
                    (let* ((_e148703148718_ _condition148702_)
                           (_E148713148722_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e148703148718_)))
                           (_E148706148741_
                            (lambda ()
                              (if (gx#stx-pair? _e148703148718_)
                                  (let ((_e148714148726_
                                         (gx#syntax-e _e148703148718_)))
                                    (let ((_hd148715148729_
                                           (##car _e148714148726_))
                                          (_tl148716148731_
                                           (##cdr _e148714148726_)))
                                      (let* ((_combinator148734_
                                              _hd148715148729_)
                                             (_body148736_ _tl148716148731_))
                                        (if (gx#stx-list? _body148736_)
                                            (let ((_$e148738_
                                                   (gx#stx-e
                                                    _combinator148734_)))
                                              (if (eq? 'not _$e148738_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?148604_
                                                        _body148736_))
                                                  (if (eq? 'and _$e148738_)
                                                      (gx#stx-andmap
                                                       _satisfied?148604_
                                                       _body148736_)
                                                      (if (eq? 'or _$e148738_)
                                                          (gx#stx-ormap
                                                           _satisfied?148604_
                                                           _body148736_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e148738_)
                      (gx#stx-andmap gx#core-resolve-identifier _body148736_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx148602_
                       _combinator148734_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E148713148722_)))))
                                  (_E148713148722_))))
                           (_E148705148764_
                            (lambda ()
                              (if (gx#stx-pair? _e148703148718_)
                                  (let ((_e148707148745_
                                         (gx#syntax-e _e148703148718_)))
                                    (let ((_hd148708148748_
                                           (##car _e148707148745_))
                                          (_tl148709148750_
                                           (##cdr _e148707148745_)))
                                      (if (and (gx#identifier?
                                                _hd148708148748_)
                                               (gx#core-identifier=?
                                                _hd148708148748_
                                                'unquote))
                                          (if (gx#stx-pair? _tl148709148750_)
                                              (let ((_e148710148753_
                                                     (gx#syntax-e
                                                      _tl148709148750_)))
                                                (let ((_hd148711148756_
                                                       (##car _e148710148753_))
                                                      (_tl148712148758_
                                                       (##cdr _e148710148753_)))
                                                  (let ((_expr148761_
                                                         _hd148711148756_))
                                                    (if (gx#stx-null?
                                                         _tl148712148758_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr148761_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E148706148741_))
                (_E148706148741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E148706148741_))
                                          (_E148706148741_))))
                                  (_E148706148741_))))
                           (_E148704148770_
                            (lambda ()
                              (let ((_id148768_ _e148703148718_))
                                (if (gx#identifier? _id148768_)
                                    (gx#core-bound-identifier?__%
                                     _id148768_
                                     gx#feature-binding?)
                                    (_E148705148764_))))))
                      (_E148704148770_))))
                 (_loop148605_
                  (lambda (_rest148635_)
                    (let* ((_e148636148644_ _rest148635_)
                           (_E148642148648_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e148636148644_)))
                           (_E148638148652_
                            (lambda ()
                              (if (gx#stx-null? _e148636148644_)
                                  (if '#t '() (_E148642148648_))
                                  (_E148642148648_))))
                           (_E148637148698_
                            (lambda ()
                              (if (gx#stx-pair? _e148636148644_)
                                  (let ((_e148639148656_
                                         (gx#syntax-e _e148636148644_)))
                                    (let ((_hd148640148659_
                                           (##car _e148639148656_))
                                          (_tl148641148661_
                                           (##cdr _e148639148656_)))
                                      (let* ((_hd148664_ _hd148640148659_)
                                             (_rest148666_ _tl148641148661_))
                                        (if '#t
                                            (let* ((_e148667148674_ _hd148664_)
                                                   (_E148669148678_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e148667148674_)))
                                                   (_E148668148694_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e148667148674_)
                                                          (let ((_e148670148682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e148667148674_)))
                    (let ((_hd148671148685_ (##car _e148670148682_))
                          (_tl148672148687_ (##cdr _e148670148682_)))
                      (let* ((_condition148690_ _hd148671148685_)
                             (_body148692_ _tl148672148687_))
                        (if '#t
                            (if (gx#stx-eq? _condition148690_ 'else)
                                (if (gx#stx-null? _rest148666_)
                                    _body148692_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx148602_
                                     _hd148664_))
                                (if (_satisfied?148604_ _condition148690_)
                                    _body148692_
                                    (_loop148605_ _rest148666_)))
                            (_E148669148678_)))))
                  (_E148669148678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E148668148694_))
                                            (_E148638148652_)))))
                                  (_E148638148652_)))))
                      (_E148637148698_)))))
          (let* ((_e148606148613_ _stx148602_)
                 (_E148608148617_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e148606148613_)))
                 (_E148607148631_
                  (lambda ()
                    (if (gx#stx-pair? _e148606148613_)
                        (let ((_e148609148621_ (gx#syntax-e _e148606148613_)))
                          (let ((_hd148610148624_ (##car _e148609148621_))
                                (_tl148611148626_ (##cdr _e148609148621_)))
                            (let ((_clauses148629_ _tl148611148626_))
                              (if (gx#stx-list? _clauses148629_)
                                  (gx#core-cons
                                   'begin
                                   (_loop148605_ _clauses148629_))
                                  (_E148608148617_)))))
                        (_E148608148617_)))))
            (_E148607148631_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx148545_ _rpath148546_)
        (let* ((_e148547148557_ _stx148545_)
               (_E148549148561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e148547148557_)))
               (_E148548148588_
                (lambda ()
                  (if (gx#stx-pair? _e148547148557_)
                      (let ((_e148550148565_ (gx#syntax-e _e148547148557_)))
                        (let ((_hd148551148568_ (##car _e148550148565_))
                              (_tl148552148570_ (##cdr _e148550148565_)))
                          (if (gx#stx-pair? _tl148552148570_)
                              (let ((_e148553148573_
                                     (gx#syntax-e _tl148552148570_)))
                                (let ((_hd148554148576_
                                       (##car _e148553148573_))
                                      (_tl148555148578_
                                       (##cdr _e148553148573_)))
                                  (let ((_path148581_ _hd148554148576_))
                                    (if (gx#stx-null? _tl148555148578_)
                                        (if (gx#stx-string? _path148581_)
                                            (let ((_rpath148586_
                                                   (let ((_$e148583_
                                                          _rpath148546_))
                                                     (if _$e148583_
                                                         _$e148583_
                                                         (gx#core-resolve-path__%
                                                          _path148581_
                                                          (gx#stx-source
                                                           _stx148545_))))))
                                              (if (member _rpath148586_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx148545_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath148586_))
                                                    (gx#stx-source
                                                     _stx148545_)))))
                                            (_E148549148561_))
                                        (_E148549148561_)))))
                              (_E148549148561_))))
                      (_E148549148561_)))))
          (_E148548148588_))))
    (define gx#core-expand-include%__0
      (lambda (_stx148595_)
        (let ((_rpath148597_ '#f))
          (gx#core-expand-include%__% _stx148595_ _rpath148597_))))
    (define gx#core-expand-include%
      (lambda _g153737_
        (let ((_g153736_ (##length _g153737_)))
          (cond ((##fx= _g153736_ 1)
                 (apply (lambda (_stx148595_)
                          (gx#core-expand-include%__0 _stx148595_))
                        _g153737_))
                ((##fx= _g153736_ 2)
                 (apply (lambda (_stx148599_ _rpath148600_)
                          (gx#core-expand-include%__%
                           _stx148599_
                           _rpath148600_))
                        _g153737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g153737_))))))
    (define gx#core-apply-expander__%
      (lambda (_K148514_ _stx148515_ _method148516_)
        (if (procedure? _K148514_)
            (let ((_$e148518_ (gx#stx-source _stx148515_)))
              (if _$e148518_
                  ((lambda (_g148520148522_)
                     (gx#stx-wrap-source
                      (_K148514_ _stx148515_)
                      _g148520148522_))
                   _$e148518_)
                  (_K148514_ _stx148515_)))
            (let ((_$e148525_ (bound-method-ref _K148514_ _method148516_)))
              (if _$e148525_
                  ((lambda (_g148527148529_)
                     (gx#core-apply-expander__%
                      _g148527148529_
                      _stx148515_
                      _method148516_))
                   _$e148525_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx148515_
                   _method148516_))))))
    (define gx#core-apply-expander__0
      (lambda (_K148535_ _stx148536_)
        (let ((_method148538_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K148535_ _stx148536_ _method148538_))))
    (define gx#core-apply-expander
      (lambda _g153739_
        (let ((_g153738_ (##length _g153739_)))
          (cond ((##fx= _g153738_ 2)
                 (apply (lambda (_K148535_ _stx148536_)
                          (gx#core-apply-expander__0 _K148535_ _stx148536_))
                        _g153739_))
                ((##fx= _g153738_ 3)
                 (apply (lambda (_K148540_ _stx148541_ _method148542_)
                          (gx#core-apply-expander__%
                           _K148540_
                           _stx148541_
                           _method148542_))
                        _g153739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g153739_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self148510_ _stx148511_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx148511_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self148363_ _stx148364_)
        (let* ((_self148365148371_ _self148363_)
               (_E148367148375_
                (lambda () (error '"No clause matching" _self148365148371_)))
               (_K148368148380_
                (lambda (_K148378_)
                  (gx#core-apply-expander__0 _K148378_ _stx148364_))))
          (if (##structure-instance-of? _self148365148371_ 'gx#core-macro::t)
              (let* ((_e148369148383_
                      (##unchecked-structure-ref
                       _self148365148371_
                       '1
                       gx#expander::t
                       '#f))
                     (_K148386_ _e148369148383_))
                (_K148368148380_ _K148386_))
              (_E148367148375_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self148216_ _stx148217_)
        (if (gx#sealed-syntax? _stx148217_)
            _stx148217_
            (let* ((_self148218148224_ _self148216_)
                   (_E148220148228_
                    (lambda ()
                      (error '"No clause matching" _self148218148224_)))
                   (_K148221148233_
                    (lambda (_K148231_)
                      (gx#core-apply-expander__0 _K148231_ _stx148217_))))
              (if (##structure-instance-of?
                   _self148218148224_
                   'gx#core-expander::t)
                  (let* ((_e148222148236_
                          (##unchecked-structure-ref
                           _self148218148224_
                           '1
                           gx#expander::t
                           '#f))
                         (_K148239_ _e148222148236_))
                    (_K148221148233_ _K148239_))
                  (_E148220148228_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self148078_ _stx148079_ _top?148080_)
        (if (_top?148080_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self148078_ _stx148079_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx148079_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self148085_ _stx148086_)
        (let ((_top?148088_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self148085_
           _stx148086_
           _top?148088_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g153741_
        (let ((_g153740_ (##length _g153741_)))
          (cond ((##fx= _g153740_ 2)
                 (apply (lambda (_self148085_ _stx148086_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self148085_
                           _stx148086_))
                        _g153741_))
                ((##fx= _g153740_ 3)
                 (apply (lambda (_self148090_ _stx148091_ _top?148092_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self148090_
                           _stx148091_
                           _top?148092_))
                        _g153741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g153741_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self147952_ _stx147953_)
        (gx#top-special-form::apply-macro-expander__%
         _self147952_
         _stx147953_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self147777_ _stx147778_)
        (let* ((_self147779147785_ _self147777_)
               (_E147781147789_
                (lambda () (error '"No clause matching" _self147779147785_)))
               (_K147782147822_
                (lambda (_id147792_)
                  (let* ((_e147793147800_ _stx147778_)
                         (_E147795147804_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e147793147800_)))
                         (_E147794147818_
                          (lambda ()
                            (if (gx#stx-pair? _e147793147800_)
                                (let ((_e147796147808_
                                       (gx#syntax-e _e147793147800_)))
                                  (let ((_hd147797147811_
                                         (##car _e147796147808_))
                                        (_tl147798147813_
                                         (##cdr _e147796147808_)))
                                    (let ((_body147816_ _tl147798147813_))
                                      (if '#t
                                          (gx#core-cons
                                           _id147792_
                                           _body147816_)
                                          (_E147795147804_)))))
                                (_E147795147804_)))))
                    (_E147794147818_)))))
          (if (##structure-instance-of?
               _self147779147785_
               'gx#rename-macro-expander::t)
              (let* ((_e147783147825_
                      (##unchecked-structure-ref
                       _self147779147785_
                       '1
                       gx#expander::t
                       '#f))
                     (_id147828_ _e147783147825_))
                (_K147782147822_ _id147828_))
              (_E147781147789_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self147603_ _stx147604_ _method147605_)
        (let* ((_self147606147614_ _self147603_)
               (_E147608147618_
                (lambda () (error '"No clause matching" _self147606147614_)))
               (_K147609147625_
                (lambda (_phi147621_ _ctx147622_ _K147623_)
                  (gx#core-apply-user-macro
                   _K147623_
                   _stx147604_
                   _ctx147622_
                   _phi147621_
                   _method147605_))))
          (if (##structure-instance-of?
               _self147606147614_
               'gx#macro-expander::t)
              (let* ((_e147610147628_
                      (##unchecked-structure-ref
                       _self147606147614_
                       '1
                       gx#expander::t
                       '#f))
                     (_K147631_ _e147610147628_)
                     (_e147611147633_
                      (##unchecked-structure-ref
                       _self147606147614_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx147636_ _e147611147633_)
                     (_e147612147638_
                      (##unchecked-structure-ref
                       _self147606147614_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi147641_ _e147612147638_))
                (_K147609147625_ _phi147641_ _ctx147636_ _K147631_))
              (_E147608147618_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self147646_ _stx147647_)
        (let ((_method147649_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self147646_
           _stx147647_
           _method147649_))))
    (define gx#core-apply-user-expander
      (lambda _g153743_
        (let ((_g153742_ (##length _g153743_)))
          (cond ((##fx= _g153742_ 2)
                 (apply (lambda (_self147646_ _stx147647_)
                          (gx#core-apply-user-expander__0
                           _self147646_
                           _stx147647_))
                        _g153743_))
                ((##fx= _g153742_ 3)
                 (apply (lambda (_self147651_ _stx147652_ _method147653_)
                          (gx#core-apply-user-expander__%
                           _self147651_
                           _stx147652_
                           _method147653_))
                        _g153743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g153743_))))))
    (define gx#core-apply-user-macro
      (lambda (_K147593_ _stx147594_ _ctx147595_ _phi147596_ _method147597_)
        (let ((_mark147599_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx147595_
                _phi147596_
                _stx147594_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K147593_
               (gx#stx-apply-mark _stx147594_ _mark147599_)
               _method147597_)
              _mark147599_))
           gx#current-expander-marks
           (cons _mark147599_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx147445_ _phi147446_ _ctx147447_)
        (let _lp147449_ ((_bind147451_
                          (gx#core-resolve-identifier__%
                           _stx147445_
                           _phi147446_
                           _ctx147447_)))
          (if (##structure-direct-instance-of?
               _bind147451_
               'gx#import-binding::t)
              (_lp147449_
               (##unchecked-structure-ref
                _bind147451_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind147451_
                   'gx#alias-binding::t)
                  (_lp147449_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind147451_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi147446_
                    _ctx147447_))
                  _bind147451_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx147456_)
        (let* ((_phi147458_ (gx#current-expander-phi))
               (_ctx147460_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx147456_ _phi147458_ _ctx147460_))))
    (define gx#resolve-identifier__1
      (lambda (_stx147462_ _phi147463_)
        (let ((_ctx147465_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx147462_ _phi147463_ _ctx147465_))))
    (define gx#resolve-identifier
      (lambda _g153745_
        (let ((_g153744_ (##length _g153745_)))
          (cond ((##fx= _g153744_ 1)
                 (apply (lambda (_stx147456_)
                          (gx#resolve-identifier__0 _stx147456_))
                        _g153745_))
                ((##fx= _g153744_ 2)
                 (apply (lambda (_stx147462_ _phi147463_)
                          (gx#resolve-identifier__1 _stx147462_ _phi147463_))
                        _g153745_))
                ((##fx= _g153744_ 3)
                 (apply (lambda (_stx147467_ _phi147468_ _ctx147469_)
                          (gx#resolve-identifier__%
                           _stx147467_
                           _phi147468_
                           _ctx147469_))
                        _g153745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g153745_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx147403_ _val147404_ _rebind?147405_ _phi147406_ _ctx147407_)
        (let ((_rebind?147409_
               (if (not _rebind?147405_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?147405_) _rebind?147405_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx147403_)
           _val147404_
           _rebind?147409_
           _phi147406_
           _ctx147407_))))
    (define gx#bind-identifier!__0
      (lambda (_stx147414_ _val147415_)
        (let* ((_rebind?147417_ '#f)
               (_phi147419_ (gx#current-expander-phi))
               (_ctx147421_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx147414_
           _val147415_
           _rebind?147417_
           _phi147419_
           _ctx147421_))))
    (define gx#bind-identifier!__1
      (lambda (_stx147423_ _val147424_ _rebind?147425_)
        (let* ((_phi147427_ (gx#current-expander-phi))
               (_ctx147429_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx147423_
           _val147424_
           _rebind?147425_
           _phi147427_
           _ctx147429_))))
    (define gx#bind-identifier!__2
      (lambda (_stx147431_ _val147432_ _rebind?147433_ _phi147434_)
        (let ((_ctx147436_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx147431_
           _val147432_
           _rebind?147433_
           _phi147434_
           _ctx147436_))))
    (define gx#bind-identifier!
      (lambda _g153747_
        (let ((_g153746_ (##length _g153747_)))
          (cond ((##fx= _g153746_ 2)
                 (apply (lambda (_stx147414_ _val147415_)
                          (gx#bind-identifier!__0 _stx147414_ _val147415_))
                        _g153747_))
                ((##fx= _g153746_ 3)
                 (apply (lambda (_stx147423_ _val147424_ _rebind?147425_)
                          (gx#bind-identifier!__1
                           _stx147423_
                           _val147424_
                           _rebind?147425_))
                        _g153747_))
                ((##fx= _g153746_ 4)
                 (apply (lambda (_stx147431_
                                 _val147432_
                                 _rebind?147433_
                                 _phi147434_)
                          (gx#bind-identifier!__2
                           _stx147431_
                           _val147432_
                           _rebind?147433_
                           _phi147434_))
                        _g153747_))
                ((##fx= _g153746_ 5)
                 (apply (lambda (_stx147438_
                                 _val147439_
                                 _rebind?147440_
                                 _phi147441_
                                 _ctx147442_)
                          (gx#bind-identifier!__%
                           _stx147438_
                           _val147439_
                           _rebind?147440_
                           _phi147441_
                           _ctx147442_))
                        _g153747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g153747_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx147375_ _phi147376_ _ctx147377_)
        (let _lp147379_ ((_e147381_ _stx147375_)
                         (_marks147382_ (gx#current-expander-marks)))
          (if (symbol? _e147381_)
              (gx#core-resolve-binding
               _e147381_
               _phi147376_
               _phi147376_
               _ctx147377_
               (reverse _marks147382_))
              (if (gx#identifier-quote? _e147381_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e147381_ '1 gx#AST::t '#f)
                   _phi147376_
                   '0
                   (##unchecked-structure-ref
                    _e147381_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e147381_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e147381_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e147381_ '1 gx#AST::t '#f)
                       _phi147376_
                       _phi147376_
                       _ctx147377_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e147381_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks147382_))
                      (if (##structure-direct-instance-of?
                           _e147381_
                           'gx#syntax-wrap::t)
                          (_lp147379_
                           (##unchecked-structure-ref
                            _e147381_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e147381_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks147382_))
                          (if (##structure-instance-of?
                               _e147381_
                               'gerbil#AST::t)
                              (_lp147379_
                               (##unchecked-structure-ref
                                _e147381_
                                '1
                                gx#AST::t
                                '#f)
                               _marks147382_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx147375_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx147387_)
        (let* ((_phi147389_ (gx#current-expander-phi))
               (_ctx147391_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx147387_
           _phi147389_
           _ctx147391_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx147393_ _phi147394_)
        (let ((_ctx147396_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx147393_
           _phi147394_
           _ctx147396_))))
    (define gx#core-resolve-identifier
      (lambda _g153749_
        (let ((_g153748_ (##length _g153749_)))
          (cond ((##fx= _g153748_ 1)
                 (apply (lambda (_stx147387_)
                          (gx#core-resolve-identifier__0 _stx147387_))
                        _g153749_))
                ((##fx= _g153748_ 2)
                 (apply (lambda (_stx147393_ _phi147394_)
                          (gx#core-resolve-identifier__1
                           _stx147393_
                           _phi147394_))
                        _g153749_))
                ((##fx= _g153748_ 3)
                 (apply (lambda (_stx147398_ _phi147399_ _ctx147400_)
                          (gx#core-resolve-identifier__%
                           _stx147398_
                           _phi147399_
                           _ctx147400_))
                        _g153749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g153749_))))))
    (define gx#core-resolve-binding
      (lambda (_id147288_
               _phi147289_
               _src-phi147290_
               _ctx147291_
               _marks147292_)
        (letrec ((_resolve147294_
                  (lambda (_ctx147362_ _src-phi147363_ _key147364_)
                    (let _lp147366_ ((_ctx147368_
                                      (gx#core-context-shift
                                       _ctx147362_
                                       _phi147289_))
                                     (_dphi147369_
                                      (fx- _phi147289_ _src-phi147363_)))
                      (let ((_$e147371_
                             (gx#core-context-resolve
                              _ctx147368_
                              _key147364_)))
                        (if _$e147371_
                            (values _$e147371_)
                            (if (fxzero? _dphi147369_)
                                '#f
                                (if (fxpositive? _dphi147369_)
                                    (_lp147366_
                                     (gx#core-context-shift _ctx147368_ '-1)
                                     (fx- _dphi147369_ '1))
                                    (_lp147366_
                                     (gx#core-context-shift _ctx147368_ '1)
                                     (fx+ _dphi147369_ '1))))))))))
          (let _lp147296_ ((_ctx147298_ _ctx147291_)
                           (_src-phi147299_ _src-phi147290_)
                           (_rest147300_ _marks147292_))
            (let* ((_rest147301147309_ _rest147300_)
                   (_else147303147317_
                    (lambda ()
                      (_resolve147294_
                       _ctx147298_
                       _src-phi147299_
                       _id147288_)))
                   (_K147305147350_
                    (lambda (_rest147320_ _hd147321_)
                      (let* ((_hd147322147328_ _hd147321_)
                             (_E147324147332_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd147322147328_)))
                             (_K147325147342_
                              (lambda (_subst147335_)
                                (let ((_$e147339_
                                       (let ((_key147337_
                                              (if _subst147335_
                                                  (hash-get
                                                   _subst147335_
                                                   _id147288_)
                                                  '#f)))
                                         (if _key147337_
                                             (_resolve147294_
                                              _ctx147298_
                                              _src-phi147299_
                                              _key147337_)
                                             '#f))))
                                  (if _$e147339_
                                      _$e147339_
                                      (_lp147296_
                                       (##unchecked-structure-ref
                                        _hd147321_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd147321_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest147320_))))))
                        (if (##structure-instance-of?
                             _hd147322147328_
                             'gx#expander-mark::t)
                            (let* ((_e147326147345_
                                    (##unchecked-structure-ref
                                     _hd147322147328_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst147348_ _e147326147345_))
                              (_K147325147342_ _subst147348_))
                            (_E147324147332_))))))
              (if (##pair? _rest147301147309_)
                  (let ((_hd147306147353_ (##car _rest147301147309_))
                        (_tl147307147355_ (##cdr _rest147301147309_)))
                    (let* ((_hd147358_ _hd147306147353_)
                           (_rest147360_ _tl147307147355_))
                      (_K147305147350_ _rest147360_ _hd147358_)))
                  (_else147303147317_)))))))
    (define gx#core-bind!__%
      (lambda (_key147164_ _val147165_ _rebind?147166_ _phi147167_ _ctx147168_)
        (letrec ((_update-binding147170_
                  (lambda (_xval147241_)
                    (if (or (_rebind?147166_
                             _ctx147168_
                             _xval147241_
                             _val147165_)
                            (and (##structure-direct-instance-of?
                                  _xval147241_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval147241_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val147165_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val147165_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval147241_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val147165_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val147165_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval147241_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val147165_
                        (if (and (##structure-direct-instance-of?
                                  _val147165_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val147165_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval147241_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val147165_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval147241_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval147241_
                            (if (and (##structure-direct-instance-of?
                                      _val147165_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval147241_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key147164_
                                 (cons (##unchecked-structure-ref
                                        _val147165_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val147165_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval147241_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval147241_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval147241_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval147241_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key147164_
                                 _val147165_
                                 _xval147241_))))))
                 (_gensubst147171_
                  (lambda (_subst147236_ _id147237_)
                    (let ((_eid147239_
                           (gensym (if (uninterned-symbol? _id147237_)
                                       '%
                                       _id147237_))))
                      (table-set! _subst147236_ _id147237_ _eid147239_)
                      _eid147239_)))
                 (_subst!147172_
                  (lambda (_key147174_)
                    (let* ((_key147175147183_ _key147174_)
                           (_else147177147191_ (lambda () _key147174_))
                           (_K147179147224_
                            (lambda (_mark147194_ _id147195_)
                              (let* ((_mark147196147202_ _mark147194_)
                                     (_E147198147206_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark147196147202_)))
                                     (_K147199147216_
                                      (lambda (_subst147209_)
                                        (if (not _subst147209_)
                                            (let ((_subst147211_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark147194_
                                               _subst147211_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst147171_
                                               _subst147211_
                                               _id147195_))
                                            (let ((_$e147213_
                                                   (hash-get
                                                    _subst147209_
                                                    _id147195_)))
                                              (if _$e147213_
                                                  (values _$e147213_)
                                                  (_gensubst147171_
                                                   _subst147209_
                                                   _id147195_)))))))
                                (if (##structure-instance-of?
                                     _mark147196147202_
                                     'gx#expander-mark::t)
                                    (let* ((_e147200147219_
                                            (##unchecked-structure-ref
                                             _mark147196147202_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst147222_ _e147200147219_))
                                      (_K147199147216_ _subst147222_))
                                    (_E147198147206_))))))
                      (if (##pair? _key147175147183_)
                          (let ((_hd147180147227_ (##car _key147175147183_))
                                (_tl147181147229_ (##cdr _key147175147183_)))
                            (let* ((_id147232_ _hd147180147227_)
                                   (_mark147234_ _tl147181147229_))
                              (_K147179147224_ _mark147234_ _id147232_)))
                          (_else147177147191_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx147168_ _phi147167_)
           (_subst!147172_ _key147164_)
           _val147165_
           _update-binding147170_))))
    (define gx#core-bind!__0
      (lambda (_key147258_ _val147259_)
        (let* ((_rebind?147261_ false)
               (_phi147263_ (gx#current-expander-phi))
               (_ctx147265_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key147258_
           _val147259_
           _rebind?147261_
           _phi147263_
           _ctx147265_))))
    (define gx#core-bind!__1
      (lambda (_key147267_ _val147268_ _rebind?147269_)
        (let* ((_phi147271_ (gx#current-expander-phi))
               (_ctx147273_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key147267_
           _val147268_
           _rebind?147269_
           _phi147271_
           _ctx147273_))))
    (define gx#core-bind!__2
      (lambda (_key147275_ _val147276_ _rebind?147277_ _phi147278_)
        (let ((_ctx147280_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key147275_
           _val147276_
           _rebind?147277_
           _phi147278_
           _ctx147280_))))
    (define gx#core-bind!
      (lambda _g153751_
        (let ((_g153750_ (##length _g153751_)))
          (cond ((##fx= _g153750_ 2)
                 (apply (lambda (_key147258_ _val147259_)
                          (gx#core-bind!__0 _key147258_ _val147259_))
                        _g153751_))
                ((##fx= _g153750_ 3)
                 (apply (lambda (_key147267_ _val147268_ _rebind?147269_)
                          (gx#core-bind!__1
                           _key147267_
                           _val147268_
                           _rebind?147269_))
                        _g153751_))
                ((##fx= _g153750_ 4)
                 (apply (lambda (_key147275_
                                 _val147276_
                                 _rebind?147277_
                                 _phi147278_)
                          (gx#core-bind!__2
                           _key147275_
                           _val147276_
                           _rebind?147277_
                           _phi147278_))
                        _g153751_))
                ((##fx= _g153750_ 5)
                 (apply (lambda (_key147282_
                                 _val147283_
                                 _rebind?147284_
                                 _phi147285_
                                 _ctx147286_)
                          (gx#core-bind!__%
                           _key147282_
                           _val147283_
                           _rebind?147284_
                           _phi147285_
                           _ctx147286_))
                        _g153751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g153751_))))))
    (define gx#core-identifier-key
      (lambda (_stx147098_)
        (if (symbol? _stx147098_)
            (let* ((_g147099147107_ (gx#current-expander-marks))
                   (_else147101147115_ (lambda () _stx147098_))
                   (_K147103147120_
                    (lambda (_hd147118_) (cons _stx147098_ _hd147118_))))
              (if (##pair? _g147099147107_)
                  (let* ((_hd147104147123_ (##car _g147099147107_))
                         (_hd147126_ _hd147104147123_))
                    (_K147103147120_ _hd147126_))
                  (_else147101147115_)))
            (if (gx#identifier? _stx147098_)
                (let* ((_id147128_ (gx#syntax-local-unwrap _stx147098_))
                       (_eid147130_ (gx#stx-e _id147128_))
                       (_marks147132_ (gx#stx-identifier-marks* _id147128_)))
                  (let* ((_marks147134147142_ _marks147132_)
                         (_else147136147150_ (lambda () _eid147130_))
                         (_K147138147155_
                          (lambda (_hd147153_) (cons _eid147130_ _hd147153_))))
                    (if (##pair? _marks147134147142_)
                        (let* ((_hd147139147158_ (##car _marks147134147142_))
                               (_hd147161_ _hd147139147158_))
                          (_K147138147155_ _hd147161_))
                        (_else147136147150_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx147098_)))))
    (define gx#core-context-shift
      (lambda (_ctx147043_ _phi147044_)
        (letrec ((_make-phi147046_
                  (lambda (_super147096_)
                    (let ((__obj153722
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj153722
                       (gensym 'phi)
                       _super147096_)
                      __obj153722)))
                 (_make-phi/up147047_
                  (lambda (_ctx147091_ _super147092_)
                    (let ((_ctx+1147094_ (_make-phi147046_ _super147092_)))
                      (##unchecked-structure-set!
                       _ctx147091_
                       _ctx+1147094_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1147094_
                       _ctx147091_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1147094_)))
                 (_make-phi/down147048_
                  (lambda (_ctx147086_ _super147087_)
                    (let ((_ctx-1147089_ (_make-phi147046_ _super147087_)))
                      (##unchecked-structure-set!
                       _ctx-1147089_
                       _ctx147086_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx147086_
                       _ctx-1147089_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1147089_)))
                 (_shift147049_
                  (lambda (_ctx147070_
                           _delta147071_
                           _make-delta-context147072_
                           _phi147073_
                           _K147074_)
                    (let ((_$e147076_
                           (##unchecked-structure-ref
                            _ctx147070_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e147076_
                          ((lambda (_super147079_)
                             (let* ((_super147081_
                                     (_K147074_ _super147079_ _delta147071_))
                                    (_ctx+d147083_
                                     (_make-delta-context147072_
                                      _ctx147070_
                                      _super147081_)))
                               (_K147074_
                                _ctx+d147083_
                                (fx- _phi147073_ _delta147071_))))
                           _$e147076_)
                          (error '"Bad context" _ctx147070_))))))
          (let _K147051_ ((_ctx147053_ _ctx147043_) (_phi147054_ _phi147044_))
            (if (fxzero? _phi147054_)
                _ctx147053_
                (if (fx> (##vector-length _ctx147053_) '3)
                    (if (fxpositive? _phi147054_)
                        (let ((_$e147056_
                               (##unchecked-structure-ref
                                _ctx147053_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e147056_
                              ((lambda (_g147058147060_)
                                 (_K147051_
                                  _g147058147060_
                                  (fx- _phi147054_ '1)))
                               _$e147056_)
                              (_shift147049_
                               _ctx147053_
                               '1
                               _make-phi/up147047_
                               _phi147054_
                               _K147051_)))
                        (let ((_$e147063_
                               (##unchecked-structure-ref
                                _ctx147053_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e147063_
                              ((lambda (_g147065147067_)
                                 (_K147051_
                                  _g147065147067_
                                  (fx+ _phi147054_ '1)))
                               _$e147063_)
                              (_shift147049_
                               _ctx147053_
                               '-1
                               _make-phi/down147048_
                               _phi147054_
                               _K147051_))))
                    _ctx147053_))))))
    (define gx#core-context-get
      (lambda (_ctx147040_ _key147041_)
        (hash-get
         (##unchecked-structure-ref _ctx147040_ '2 gx#expander-context::t '#f)
         _key147041_)))
    (define gx#core-context-put!
      (lambda (_ctx147036_ _key147037_ _val147038_)
        (table-set!
         (##unchecked-structure-ref _ctx147036_ '2 gx#expander-context::t '#f)
         _key147037_
         _val147038_)))
    (define gx#core-context-resolve
      (lambda (_ctx147023_ _key147024_)
        (let _lp147026_ ((_ctx147028_ _ctx147023_))
          (let ((_$e147030_ (gx#core-context-get _ctx147028_ _key147024_)))
            (if _$e147030_
                (values _$e147030_)
                (let ((_$e147033_
                       (if (fx> (##vector-length _ctx147028_) '3)
                           (##unchecked-structure-ref
                            _ctx147028_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e147033_ (_lp147026_ _$e147033_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx147013_ _key147014_ _val147015_ _rebind147016_)
        (let ((_$e147018_ (gx#core-context-get _ctx147013_ _key147014_)))
          (if _$e147018_
              ((lambda (_xval147021_)
                 (gx#core-context-put!
                  _ctx147013_
                  _key147014_
                  (_rebind147016_ _xval147021_)))
               _$e147018_)
              (gx#core-context-put! _ctx147013_ _key147014_ _val147015_)))))
    (define gx#core-context-top__%
      (lambda (_ctx146991_ _stop?146992_)
        (let _lp146994_ ((_ctx146996_ _ctx146991_))
          (if (_stop?146992_ _ctx146996_)
              _ctx146996_
              (if (##structure-instance-of? _ctx146996_ 'gx#context-phi::t)
                  (_lp146994_
                   (##unchecked-structure-ref
                    _ctx146996_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx147002_ (gx#current-expander-context))
               (_stop?147004_ gx#top-context?))
          (gx#core-context-top__% _ctx147002_ _stop?147004_))))
    (define gx#core-context-top__1
      (lambda (_ctx147006_)
        (let ((_stop?147008_ gx#top-context?))
          (gx#core-context-top__% _ctx147006_ _stop?147008_))))
    (define gx#core-context-top
      (lambda _g153753_
        (let ((_g153752_ (##length _g153753_)))
          (cond ((##fx= _g153752_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g153753_))
                ((##fx= _g153752_ 1)
                 (apply (lambda (_ctx147006_)
                          (gx#core-context-top__1 _ctx147006_))
                        _g153753_))
                ((##fx= _g153752_ 2)
                 (apply (lambda (_ctx147010_ _stop?147011_)
                          (gx#core-context-top__% _ctx147010_ _stop?147011_))
                        _g153753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g153753_))))))
    (define gx#core-context-root__%
      (lambda (_ctx146976_)
        (let _lp146978_ ((_ctx146980_ _ctx146976_))
          (if (##structure-instance-of? _ctx146980_ 'gx#context-phi::t)
              (_lp146978_
               (##unchecked-structure-ref
                _ctx146980_
                '3
                gx#phi-context::t
                '#f))
              _ctx146980_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx146986_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx146986_))))
    (define gx#core-context-root
      (lambda _g153755_
        (let ((_g153754_ (##length _g153755_)))
          (cond ((##fx= _g153754_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g153755_))
                ((##fx= _g153754_ 1)
                 (apply (lambda (_ctx146988_)
                          (gx#core-context-root__% _ctx146988_))
                        _g153755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g153755_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx146957_ . __146954146958_)
        (let ((_$e146961_ (gx#current-expander-allow-rebind?)))
          (if _$e146961_
              _$e146961_
              (if (##structure-instance-of? _ctx146957_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx146957_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx146957_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx146968_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx146968_))))
    (define gx#core-context-rebind?
      (lambda _g153757_
        (let ((_g153756_ (##length _g153757_)))
          (cond ((##fx= _g153756_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g153757_))
                ((##fx= _g153756_ 1)
                 (apply (lambda (_ctx146970_)
                          (gx#core-context-rebind?__% _ctx146970_))
                        _g153757_))
                ((##fx>= _g153756_ 1)
                 (apply gx#core-context-rebind?__% _g153757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g153757_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx146940_)
        (let ((_$e146942_ (gx#core-context-top__1 _ctx146940_)))
          (if _$e146942_
              ((lambda (_ctx146945_)
                 (if (##structure-instance-of?
                      _ctx146945_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx146945_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e146942_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx146951_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx146951_))))
    (define gx#core-context-namespace
      (lambda _g153759_
        (let ((_g153758_ (##length _g153759_)))
          (cond ((##fx= _g153758_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g153759_))
                ((##fx= _g153758_ 1)
                 (apply (lambda (_ctx146953_)
                          (gx#core-context-namespace__% _ctx146953_))
                        _g153759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g153759_))))))
    (define gx#expander-binding?__%
      (lambda (_bind146926_ _is?146927_)
        (if (##structure-direct-instance-of?
             _bind146926_
             'gx#syntax-binding::t)
            (_is?146927_
             (##unchecked-structure-ref
              _bind146926_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind146932_)
        (let ((_is?146934_ gx#expander?))
          (gx#expander-binding?__% _bind146932_ _is?146934_))))
    (define gx#expander-binding?
      (lambda _g153761_
        (let ((_g153760_ (##length _g153761_)))
          (cond ((##fx= _g153760_ 1)
                 (apply (lambda (_bind146932_)
                          (gx#expander-binding?__0 _bind146932_))
                        _g153761_))
                ((##fx= _g153760_ 2)
                 (apply (lambda (_bind146936_ _is?146937_)
                          (gx#expander-binding?__% _bind146936_ _is?146937_))
                        _g153761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g153761_))))))
    (define gx#core-expander-binding?
      (lambda (_bind146923_)
        (gx#expander-binding?__% _bind146923_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind146921_)
        (gx#expander-binding?__% _bind146921_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind146915_)
        (letrec ((_direct-special-form?146917_
                  (lambda (_obj146919_)
                    (##structure-direct-instance-of?
                     _obj146919_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind146915_
           _direct-special-form?146917_))))
    (define gx#special-form-binding?
      (lambda (_bind146913_)
        (gx#expander-binding?__% _bind146913_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind146904_)
        (letrec ((_feature?146906_
                  (lambda (_e146908_)
                    (let ((_$e146910_
                           (##structure-instance-of?
                            _e146908_
                            'gx#feature-expander::t)))
                      (if _$e146910_
                          _$e146910_
                          (##structure-instance-of?
                           _e146908_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind146904_ _feature?146906_))))
    (define gx#private-feature-binding?
      (lambda (_bind146902_)
        (gx#expander-binding?__% _bind146902_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id146889_ _bound?146890_)
        (if (gx#identifier? _id146889_)
            (_bound?146890_ (gx#resolve-identifier__0 _id146889_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id146895_)
        (let ((_bound?146897_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id146895_ _bound?146897_))))
    (define gx#core-bound-identifier?
      (lambda _g153763_
        (let ((_g153762_ (##length _g153763_)))
          (cond ((##fx= _g153762_ 1)
                 (apply (lambda (_id146895_)
                          (gx#core-bound-identifier?__0 _id146895_))
                        _g153763_))
                ((##fx= _g153762_ 2)
                 (apply (lambda (_id146899_ _bound?146900_)
                          (gx#core-bound-identifier?__%
                           _id146899_
                           _bound?146900_))
                        _g153763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g153763_))))))
    (define gx#core-identifier=?
      (lambda (_x146879_ _y146880_)
        (letrec ((_y=?146882_
                  (lambda (_xid146886_)
                    ((if (list? _y146880_) memq eq?) _xid146886_ _y146880_))))
          (let ((_bind146884_ (gx#resolve-identifier__0 _x146879_)))
            (if (##structure-instance-of? _bind146884_ 'gx#binding::t)
                (_y=?146882_
                 (##unchecked-structure-ref _bind146884_ '1 gx#binding::t '#f))
                (_y=?146882_ (gx#stx-e _x146879_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e146877_)
        (if (interned-symbol? _e146877_)
            (string-index (symbol->string _e146877_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx146832_ _src146833_ _ctx146834_ _marks146835_)
        (if (##structure? _stx146832_)
            (let ((_$e146837_ (gx#sealed-syntax-unwrap _stx146832_)))
              (if _$e146837_
                  (values _$e146837_)
                  (if (gx#identifier? _stx146832_)
                      (let ((_id146840_
                             (gx#stx-unwrap__% _stx146832_ _marks146835_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id146840_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e146842_
                                (##unchecked-structure-ref
                                 _id146840_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e146842_ _$e146842_ _src146833_))
                         _ctx146834_
                         (##unchecked-structure-ref
                          _id146840_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx146832_)
                       (let ((_$e146845_ (gx#stx-source _stx146832_)))
                         (if _$e146845_ _$e146845_ _src146833_))
                       _ctx146834_
                       (reverse _marks146835_)))))
            (##structure
             gx#syntax-quote::t
             _stx146832_
             _src146833_
             _ctx146834_
             (reverse _marks146835_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx146851_)
        (let* ((_src146853_ '#f)
               (_ctx146855_ (gx#current-expander-context))
               (_marks146857_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx146851_
           _src146853_
           _ctx146855_
           _marks146857_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx146859_ _src146860_)
        (let* ((_ctx146862_ (gx#current-expander-context))
               (_marks146864_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx146859_
           _src146860_
           _ctx146862_
           _marks146864_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx146866_ _src146867_ _ctx146868_)
        (let ((_marks146870_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx146866_
           _src146867_
           _ctx146868_
           _marks146870_))))
    (define gx#core-quote-syntax
      (lambda _g153765_
        (let ((_g153764_ (##length _g153765_)))
          (cond ((##fx= _g153764_ 1)
                 (apply (lambda (_stx146851_)
                          (gx#core-quote-syntax__0 _stx146851_))
                        _g153765_))
                ((##fx= _g153764_ 2)
                 (apply (lambda (_stx146859_ _src146860_)
                          (gx#core-quote-syntax__1 _stx146859_ _src146860_))
                        _g153765_))
                ((##fx= _g153764_ 3)
                 (apply (lambda (_stx146866_ _src146867_ _ctx146868_)
                          (gx#core-quote-syntax__2
                           _stx146866_
                           _src146867_
                           _ctx146868_))
                        _g153765_))
                ((##fx= _g153764_ 4)
                 (apply (lambda (_stx146872_
                                 _src146873_
                                 _ctx146874_
                                 _marks146875_)
                          (gx#core-quote-syntax__%
                           _stx146872_
                           _src146873_
                           _ctx146874_
                           _marks146875_))
                        _g153765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g153765_))))))
    (define gx#core-cons
      (lambda (_hd146828_ _tl146829_)
        (cons (gx#core-quote-syntax__0 _hd146828_) _tl146829_)))
    (define gx#core-list
      (lambda (_hd146825_ . _rest146826_)
        (cons (gx#core-quote-syntax__0 _hd146825_) _rest146826_)))
    (define gx#core-cons*
      (lambda (_hd146822_ . _rest146823_)
        (apply cons* (gx#core-quote-syntax__0 _hd146822_) _rest146823_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path146796_ _rel146797_)
        (let ((_path146809_ (gx#stx-e _stx-path146796_))
              (_reldir146810_
               (let _lp146799_ ((_relsrc146801_
                                 (let ((_$e146806_
                                        (gx#stx-source _stx-path146796_)))
                                   (if _$e146806_ _$e146806_ _rel146797_))))
                 (if (##structure-instance-of? _relsrc146801_ 'gerbil#AST::t)
                     (_lp146799_
                      (let ((_$e146803_ (gx#stx-source _relsrc146801_)))
                        (if _$e146803_ _$e146803_ (gx#stx-e _relsrc146801_))))
                     (if (source-location-path? _relsrc146801_)
                         (path-directory (source-location-path _relsrc146801_))
                         (if (string? _relsrc146801_)
                             (path-directory _relsrc146801_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path146809_ (path-normalize _reldir146810_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path146815_)
        (let ((_rel146817_ '#f))
          (gx#core-resolve-path__% _stx-path146815_ _rel146817_))))
    (define gx#core-resolve-path
      (lambda _g153767_
        (let ((_g153766_ (##length _g153767_)))
          (cond ((##fx= _g153766_ 1)
                 (apply (lambda (_stx-path146815_)
                          (gx#core-resolve-path__0 _stx-path146815_))
                        _g153767_))
                ((##fx= _g153766_ 2)
                 (apply (lambda (_stx-path146819_ _rel146820_)
                          (gx#core-resolve-path__%
                           _stx-path146819_
                           _rel146820_))
                        _g153767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g153767_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr146752_ _ctx146753_)
        (let* ((_repr146754146761_ _repr146752_)
               (_E146756146765_
                (lambda () (error '"No clause matching" _repr146754146761_)))
               (_K146757146773_
                (lambda (_subs146768_ _phi146769_)
                  (let ((_subst146771_
                         (if (not (null? _subs146768_))
                             (list->hash-table-eq _subs146768_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst146771_
                     _ctx146753_
                     _phi146769_
                     '#f)))))
          (if (##pair? _repr146754146761_)
              (let ((_hd146758146776_ (##car _repr146754146761_))
                    (_tl146759146778_ (##cdr _repr146754146761_)))
                (let* ((_phi146781_ _hd146758146776_)
                       (_subs146783_ _tl146759146778_))
                  (_K146757146773_ _subs146783_ _phi146781_)))
              (_E146756146765_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr146788_)
        (let ((_ctx146790_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr146788_ _ctx146790_))))
    (define gx#core-deserialize-mark
      (lambda _g153769_
        (let ((_g153768_ (##length _g153769_)))
          (cond ((##fx= _g153768_ 1)
                 (apply (lambda (_repr146788_)
                          (gx#core-deserialize-mark__0 _repr146788_))
                        _g153769_))
                ((##fx= _g153768_ 2)
                 (apply (lambda (_repr146792_ _ctx146793_)
                          (gx#core-deserialize-mark__%
                           _repr146792_
                           _ctx146793_))
                        _g153769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g153769_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx146749_)
        (gx#stx-rewrap _stx146749_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx146747_)
        (gx#stx-unwrap__% _stx146747_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx146717_)
        (let* ((_g146718146726_ (gx#current-expander-marks))
               (_else146720146734_ (lambda () _stx146717_))
               (_K146722146739_
                (lambda (_hd146737_)
                  (gx#stx-apply-mark _stx146717_ _hd146737_))))
          (if (##pair? _g146718146726_)
              (let* ((_hd146723146742_ (##car _g146718146726_))
                     (_hd146745_ _hd146723146742_))
                (_K146722146739_ _hd146745_))
              (_else146720146734_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx146702_ _E146703_)
        (let ((_bind146705_ (gx#resolve-identifier__0 _stx146702_)))
          (if (##structure-direct-instance-of?
               _bind146705_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind146705_
               '4
               gx#syntax-binding::t
               '#f)
              (_E146703_ _stx146702_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx146710_)
        (let ((_E146712_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx146710_ _E146712_))))
    (define gx#syntax-local-e
      (lambda _g153771_
        (let ((_g153770_ (##length _g153771_)))
          (cond ((##fx= _g153770_ 1)
                 (apply (lambda (_stx146710_)
                          (gx#syntax-local-e__0 _stx146710_))
                        _g153771_))
                ((##fx= _g153770_ 2)
                 (apply (lambda (_stx146714_ _E146715_)
                          (gx#syntax-local-e__% _stx146714_ _E146715_))
                        _g153771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g153771_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx146686_ _E146687_)
        (let ((_e146689_ (gx#syntax-local-e__% _stx146686_ _E146687_)))
          (if (##structure-instance-of? _e146689_ 'gx#expander::t)
              (##structure-ref _e146689_ '1 gx#expander::t '#f)
              _e146689_))))
    (define gx#syntax-local-value__0
      (lambda (_stx146694_)
        (let ((_E146696_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx146694_ _E146696_))))
    (define gx#syntax-local-value
      (lambda _g153773_
        (let ((_g153772_ (##length _g153773_)))
          (cond ((##fx= _g153772_ 1)
                 (apply (lambda (_stx146694_)
                          (gx#syntax-local-value__0 _stx146694_))
                        _g153773_))
                ((##fx= _g153772_ 2)
                 (apply (lambda (_stx146698_ _E146699_)
                          (gx#syntax-local-value__% _stx146698_ _E146699_))
                        _g153773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g153773_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx146683_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx146683_)))))
