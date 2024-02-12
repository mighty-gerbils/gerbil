(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707767843)
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
      (lambda _$args144833_
        (apply make-instance gx#expander-context::t _$args144833_)))
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
      (lambda _$args144830_
        (apply make-instance gx#root-context::t _$args144830_)))
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
      (lambda _$args144827_
        (apply make-instance gx#phi-context::t _$args144827_)))
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
      (lambda _$args144824_
        (apply make-instance gx#top-context::t _$args144824_)))
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
      (lambda _$args144821_
        (apply make-instance gx#module-context::t _$args144821_)))
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
      (lambda _$args144818_
        (apply make-instance gx#prelude-context::t _$args144818_)))
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
      (lambda _$args144815_
        (apply make-instance gx#local-context::t _$args144815_)))
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
      (lambda (_self144799_ _id144800_ _super144801_)
        (if (##fx< '3 (##structure-length _self144799_))
            (begin
              (##unchecked-structure-set!
               _self144799_
               _id144800_
               '1
               (##structure-type _self144799_)
               '#f)
              (##unchecked-structure-set!
               _self144799_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144799_)
               '#f)
              (##unchecked-structure-set!
               _self144799_
               _super144801_
               '3
               (##structure-type _self144799_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144799_
                   '3
                   (##vector-length _self144799_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self144806_ _id144807_)
        (let ((_super144809_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self144806_ _id144807_ _super144809_))))
    (define gx#phi-context:::init!
      (lambda _g149444_
        (let ((_g149443_ (##length _g149444_)))
          (cond ((##fx= _g149443_ 2)
                 (apply (lambda (_self144806_ _id144807_)
                          (gx#phi-context:::init!__0 _self144806_ _id144807_))
                        _g149444_))
                ((##fx= _g149443_ 3)
                 (apply (lambda (_self144811_ _id144812_ _super144813_)
                          (gx#phi-context:::init!__%
                           _self144811_
                           _id144812_
                           _super144813_))
                        _g149444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g149444_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self144663_ _super144664_)
        (if (##fx< '3 (##structure-length _self144663_))
            (begin
              (##unchecked-structure-set!
               _self144663_
               (gensym 'L)
               '1
               (##structure-type _self144663_)
               '#f)
              (##unchecked-structure-set!
               _self144663_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144663_)
               '#f)
              (##unchecked-structure-set!
               _self144663_
               _super144664_
               '3
               (##structure-type _self144663_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144663_
                   '3
                   (##vector-length _self144663_)))))
    (define gx#local-context:::init!__0
      (lambda (_self144669_)
        (let ((_super144671_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self144669_ _super144671_))))
    (define gx#local-context:::init!
      (lambda _g149446_
        (let ((_g149445_ (##length _g149446_)))
          (cond ((##fx= _g149445_ 1)
                 (apply (lambda (_self144669_)
                          (gx#local-context:::init!__0 _self144669_))
                        _g149446_))
                ((##fx= _g149445_ 2)
                 (apply (lambda (_self144673_ _super144674_)
                          (gx#local-context:::init!__%
                           _self144673_
                           _super144674_))
                        _g149446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g149446_))))))
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
      (lambda _$args144537_ (apply make-instance gx#binding::t _$args144537_)))
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
      (lambda _$args144534_
        (apply make-instance gx#runtime-binding::t _$args144534_)))
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
      (lambda _$args144531_
        (apply make-instance gx#local-binding::t _$args144531_)))
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
      (lambda _$args144528_
        (apply make-instance gx#top-binding::t _$args144528_)))
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
      (lambda _$args144525_
        (apply make-instance gx#module-binding::t _$args144525_)))
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
      (lambda _$args144522_
        (apply make-instance gx#extern-binding::t _$args144522_)))
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
      (lambda _$args144519_
        (apply make-instance gx#syntax-binding::t _$args144519_)))
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
      (lambda _$args144516_
        (apply make-instance gx#import-binding::t _$args144516_)))
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
      (lambda _$args144513_
        (apply make-instance gx#alias-binding::t _$args144513_)))
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
      (lambda _$args144510_
        (apply make-instance gx#expander::t _$args144510_)))
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
      (lambda _$args144507_
        (apply make-instance gx#core-expander::t _$args144507_)))
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
      (lambda _$args144504_
        (apply make-instance gx#expression-form::t _$args144504_)))
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
      (lambda _$args144501_
        (apply make-instance gx#special-form::t _$args144501_)))
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
      (lambda _$args144498_
        (apply make-instance gx#definition-form::t _$args144498_)))
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
      (lambda _$args144495_
        (apply make-instance gx#top-special-form::t _$args144495_)))
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
      (lambda _$args144492_
        (apply make-instance gx#module-special-form::t _$args144492_)))
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
      (lambda _$args144489_
        (apply make-instance gx#feature-expander::t _$args144489_)))
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
      (lambda _$args144486_
        (apply make-instance gx#private-feature-expander::t _$args144486_)))
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
      (lambda _$args144483_
        (apply make-instance gx#reserved-expander::t _$args144483_)))
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
      (lambda _$args144480_
        (apply make-instance gx#macro-expander::t _$args144480_)))
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
      (lambda _$args144477_
        (apply make-instance gx#rename-macro-expander::t _$args144477_)))
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
      (lambda _$args144474_
        (apply make-instance gx#user-expander::t _$args144474_)))
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
      (lambda _$args144471_
        (apply make-instance gx#expander-mark::t _$args144471_)))
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
      (lambda (_ctx144456_ _message144457_ _stx144458_ . _details144459_)
        (let ((_ctx144469_
               (let ((_$e144461_ _ctx144456_))
                 (if _$e144461_
                     _$e144461_
                     (let ((_$e144464_ (gx#core-context-top__0)))
                       (if _$e144464_
                           ((lambda (_ctx144467_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx144467_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e144464_)
                           '#f))))))
          (raise (make-syntax-error
                  _message144457_
                  (cons _stx144458_ _details144459_)
                  _ctx144469_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx144443_ _expression?144444_)
        (gx#eval-syntax* (gx#core-expand__% _stx144443_ _expression?144444_))))
    (define gx#eval-syntax__0
      (lambda (_stx144449_)
        (let ((_expression?144451_ '#f))
          (gx#eval-syntax__% _stx144449_ _expression?144451_))))
    (define gx#eval-syntax
      (lambda _g149448_
        (let ((_g149447_ (##length _g149448_)))
          (cond ((##fx= _g149447_ 1)
                 (apply (lambda (_stx144449_) (gx#eval-syntax__0 _stx144449_))
                        _g149448_))
                ((##fx= _g149447_ 2)
                 (apply (lambda (_stx144453_ _expression?144454_)
                          (gx#eval-syntax__% _stx144453_ _expression?144454_))
                        _g149448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g149448_))))))
    (define gx#eval-syntax*
      (lambda (_stx144440_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx144440_))))
    (define gx#core-expand__%
      (lambda (_stx144427_ _expression?144428_)
        (if _expression?144428_
            (gx#core-expand-expression _stx144427_)
            (gx#core-expand-top _stx144427_))))
    (define gx#core-expand__0
      (lambda (_stx144433_)
        (let ((_expression?144435_ '#f))
          (gx#core-expand__% _stx144433_ _expression?144435_))))
    (define gx#core-expand
      (lambda _g149450_
        (let ((_g149449_ (##length _g149450_)))
          (cond ((##fx= _g149449_ 1)
                 (apply (lambda (_stx144433_) (gx#core-expand__0 _stx144433_))
                        _g149450_))
                ((##fx= _g149449_ 2)
                 (apply (lambda (_stx144437_ _expression?144438_)
                          (gx#core-expand__% _stx144437_ _expression?144438_))
                        _g149450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g149450_))))))
    (define gx#core-expand-top
      (lambda (_stx144394_)
        (let* ((_stx144396_ (gx#core-expand*__0 _stx144394_))
               (_e144397144404_ _stx144396_)
               (_E144399144408_
                (lambda () (gx#core-expand-expression _stx144396_)))
               (_E144398144422_
                (lambda ()
                  (if (gx#stx-pair? _e144397144404_)
                      (let ((_e144400144412_ (gx#syntax-e _e144397144404_)))
                        (let ((_hd144401144415_ (##car _e144400144412_))
                              (_tl144402144417_ (##cdr _e144400144412_)))
                          (let ((_form144420_ _hd144401144415_))
                            (if (gx#core-bound-identifier?__0 _form144420_)
                                _stx144396_
                                (_E144399144408_)))))
                      (_E144399144408_)))))
          (_E144398144422_))))
    (define gx#core-expand-expression
      (lambda (_stx144341_)
        (letrec ((_sealed-expression?144343_
                  (lambda (_hd144364_)
                    (if (gx#sealed-syntax? _hd144364_)
                        (let* ((_e144365144372_ _hd144364_)
                               (_E144367144376_ (lambda () '#f))
                               (_E144366144390_
                                (lambda ()
                                  (if (gx#stx-pair? _e144365144372_)
                                      (let ((_e144368144380_
                                             (gx#syntax-e _e144365144372_)))
                                        (let ((_hd144369144383_
                                               (##car _e144368144380_))
                                              (_tl144370144385_
                                               (##cdr _e144368144380_)))
                                          (let ((_form144388_
                                                 _hd144369144383_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form144388_
                                                 gx#expression-form-binding?)
                                                (_E144367144376_)))))
                                      (_E144367144376_)))))
                          (_E144366144390_))
                        '#f)))
                 (_illegal-expression144344_
                  (lambda (_hd144362_ . _g149451_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx144341_
                     _hd144362_)))
                 (_expand-e144345_
                  (lambda (_form144357_ _hd144358_)
                    (let ((_bind144360_
                           (if (##structure-instance-of?
                                _form144357_
                                'gx#binding::t)
                               _form144357_
                               (gx#resolve-identifier__0 _form144357_))))
                      (if (gx#core-expander-binding? _bind144360_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind144360_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd144358_
                            (gx#stx-source _stx144341_)))
                          (if (##structure-direct-instance-of?
                               _bind144360_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind144360_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd144358_
                                 (gx#stx-source _stx144341_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx144341_
                               _form144357_)))))))
          (let ((_hd144347_ (gx#core-expand-head _stx144341_)))
            (if (_sealed-expression?144343_ _hd144347_)
                _hd144347_
                (if (gx#stx-pair? _hd144347_)
                    (let* ((_form144349_ (gx#stx-car _hd144347_))
                           (_bind144351_
                            (if (gx#identifier? _form144349_)
                                (gx#resolve-identifier__0 _form144349_)
                                '#f)))
                      (if (or (not _bind144351_)
                              (not (gx#core-expander-binding? _bind144351_)))
                          (_expand-e144345_ '%%app (cons '%%app _hd144347_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind144351_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd144347_
                               _illegal-expression144344_)
                              (if (gx#expression-form-binding? _bind144351_)
                                  (_expand-e144345_ _bind144351_ _hd144347_)
                                  (if (gx#direct-special-form-binding?
                                       _bind144351_)
                                      (gx#core-expand-expression
                                       (_expand-e144345_
                                        _bind144351_
                                        _hd144347_))
                                      (_illegal-expression144344_
                                       _hd144347_))))))
                    (if (gx#core-bound-identifier?__0 _hd144347_)
                        (_illegal-expression144344_ _hd144347_)
                        (if (gx#identifier? _hd144347_)
                            (_expand-e144345_
                             '%%ref
                             (cons '%%ref (cons _hd144347_ '())))
                            (if (gx#stx-datum? _hd144347_)
                                (_expand-e144345_
                                 '%#quote
                                 (cons '%#quote (cons _hd144347_ '())))
                                (_illegal-expression144344_
                                 _hd144347_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx144336_)
        (call-with-parameters
         (lambda ()
           (let ((_stx144339_ (gx#core-expand-expression _stx144336_)))
             (values _stx144339_ (gx#eval-syntax* _stx144339_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx144317_ _stop?144318_)
        (let _lp144320_ ((_stx144322_ _stx144317_))
          (if (_stop?144318_ _stx144322_)
              _stx144322_
              (let ((_rstx144324_ (gx#core-expand1 _stx144322_)))
                (if (eq? _stx144322_ _rstx144324_)
                    _stx144322_
                    (_lp144320_ _rstx144324_)))))))
    (define gx#core-expand*__0
      (lambda (_stx144329_)
        (let ((_stop?144331_ false))
          (gx#core-expand*__% _stx144329_ _stop?144331_))))
    (define gx#core-expand*
      (lambda _g149453_
        (let ((_g149452_ (##length _g149453_)))
          (cond ((##fx= _g149452_ 1)
                 (apply (lambda (_stx144329_) (gx#core-expand*__0 _stx144329_))
                        _g149453_))
                ((##fx= _g149452_ 2)
                 (apply (lambda (_stx144333_ _stop?144334_)
                          (gx#core-expand*__% _stx144333_ _stop?144334_))
                        _g149453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g149453_))))))
    (define gx#core-expand1
      (lambda (_stx144273_)
        (letrec ((_step144275_
                  (lambda (_hd144312_)
                    (let ((_bind144314_ (gx#resolve-identifier__0 _hd144312_)))
                      (if (##structure-instance-of?
                           _bind144314_
                           'gx#runtime-binding::t)
                          _stx144273_
                          (if (##structure-direct-instance-of?
                               _bind144314_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind144314_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx144273_)
                              (if (not _bind144314_)
                                  _stx144273_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx144273_))))))))
          (let* ((_e144276144284_ _stx144273_)
                 (_E144282144288_ (lambda () _stx144273_))
                 (_E144278144294_
                  (lambda ()
                    (let ((_hd144292_ _e144276144284_))
                      (if (gx#identifier? _hd144292_)
                          (_step144275_ _hd144292_)
                          (_E144282144288_)))))
                 (_E144277144308_
                  (lambda ()
                    (if (gx#stx-pair? _e144276144284_)
                        (let ((_e144279144298_ (gx#syntax-e _e144276144284_)))
                          (let ((_hd144280144301_ (##car _e144279144298_))
                                (_tl144281144303_ (##cdr _e144279144298_)))
                            (let ((_hd144306_ _hd144280144301_))
                              (if (gx#identifier? _hd144306_)
                                  (_step144275_ _hd144306_)
                                  (_E144278144294_)))))
                        (_E144278144294_)))))
            (_E144277144308_)))))
    (define gx#core-expand-head
      (lambda (_stx144239_)
        (letrec ((_stop?144241_
                  (lambda (_stx144243_)
                    (let* ((_e144244144251_ _stx144243_)
                           (_E144246144255_ (lambda () '#f))
                           (_E144245144269_
                            (lambda ()
                              (if (gx#stx-pair? _e144244144251_)
                                  (let ((_e144247144259_
                                         (gx#syntax-e _e144244144251_)))
                                    (let ((_hd144248144262_
                                           (##car _e144247144259_))
                                          (_tl144249144264_
                                           (##cdr _e144247144259_)))
                                      (let ((_hd144267_ _hd144248144262_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd144267_)
                                            (_E144246144255_)))))
                                  (_E144246144255_)))))
                      (_E144245144269_)))))
          (gx#core-expand*__% _stx144239_ _stop?144241_))))
    (define gx#core-expand-block__%
      (lambda (_stx144045_
               _expand-special144046_
               _begin-form144047_
               _expand-e144048_)
        (letrec ((_expand-splice144050_
                  (lambda (_hd144213_ _body144214_ _rest144215_ _r144216_)
                    (if (gx#stx-list? _body144214_)
                        (_K144054_
                         (gx#stx-foldr cons _rest144215_ _body144214_)
                         _r144216_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx144045_
                         _hd144213_))))
                 (_expand-cond-expand144051_
                  (lambda (_hd144209_ _rest144210_ _r144211_)
                    (_K144054_
                     (cons (gx#core-expand-cond-expand% _hd144209_)
                           _rest144210_)
                     _r144211_)))
                 (_expand-include144052_
                  (lambda (_hd144158_ _rest144159_ _r144160_)
                    (let* ((_e144161144171_ _hd144158_)
                           (_E144163144175_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144161144171_)))
                           (_E144162144205_
                            (lambda ()
                              (if (gx#stx-pair? _e144161144171_)
                                  (let ((_e144164144179_
                                         (gx#syntax-e _e144161144171_)))
                                    (let ((_hd144165144182_
                                           (##car _e144164144179_))
                                          (_tl144166144184_
                                           (##cdr _e144164144179_)))
                                      (if (gx#stx-pair? _tl144166144184_)
                                          (let ((_e144167144187_
                                                 (gx#syntax-e
                                                  _tl144166144184_)))
                                            (let ((_hd144168144190_
                                                   (##car _e144167144187_))
                                                  (_tl144169144192_
                                                   (##cdr _e144167144187_)))
                                              (let ((_path144195_
                                                     _hd144168144190_))
                                                (if (gx#stx-null?
                                                     _tl144169144192_)
                                                    (if (gx#stx-string?
                                                         _path144195_)
                                                        (let* ((_rpath144197_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path144195_
                         (gx#stx-source _hd144158_)))
                       (_block144199_
                        (gx#core-expand-include%__% _hd144158_ _rpath144197_))
                       (_rbody144202_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block144199_
                            _expand-special144046_
                            '#f
                            _expand-e144048_))
                         gx#current-expander-path
                         (cons _rpath144197_ (gx#current-expander-path)))))
                  (_K144054_
                   _rest144159_
                   (foldr1 cons _r144160_ _rbody144202_)))
                (_E144163144175_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E144163144175_)))))
                                          (_E144163144175_))))
                                  (_E144163144175_)))))
                      (_E144162144205_))))
                 (_expand-expression144053_
                  (lambda (_hd144154_ _rest144155_ _r144156_)
                    (_K144054_
                     _rest144155_
                     (cons (_expand-e144048_ _hd144154_) _r144156_))))
                 (_K144054_
                  (lambda (_rest144084_ _r144085_)
                    (let* ((_e144086144093_ _rest144084_)
                           (_E144088144097_
                            (lambda ()
                              (if _begin-form144047_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form144047_
                                    (reverse _r144085_))
                                   (gx#stx-source _stx144045_))
                                  _r144085_)))
                           (_E144087144150_
                            (lambda ()
                              (if (gx#stx-pair? _e144086144093_)
                                  (let ((_e144089144101_
                                         (gx#syntax-e _e144086144093_)))
                                    (let ((_hd144090144104_
                                           (##car _e144089144101_))
                                          (_tl144091144106_
                                           (##cdr _e144089144101_)))
                                      (let* ((_hd144109_ _hd144090144104_)
                                             (_rest144111_ _tl144091144106_))
                                        (if '#t
                                            (let* ((_hd144113_
                                                    (gx#core-expand-head
                                                     _hd144109_))
                                                   (_e144114144121_ _hd144113_)
                                                   (_E144116144125_
                                                    (lambda ()
                                                      (_expand-expression144053_
                                                       _hd144113_
                                                       _rest144111_
                                                       _r144085_)))
                                                   (_E144115144146_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e144114144121_)
                                                          (let ((_e144117144129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e144114144121_)))
                    (let ((_hd144118144132_ (##car _e144117144129_))
                          (_tl144119144134_ (##cdr _e144117144129_)))
                      (let* ((_form144137_ _hd144118144132_)
                             (_body144139_ _tl144119144134_))
                        (if '#t
                            (let ((_bind144141_
                                   (if (gx#identifier? _form144137_)
                                       (gx#resolve-identifier__0 _form144137_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind144141_)
                                  (let ((_$e144143_
                                         (##unchecked-structure-ref
                                          _bind144141_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e144143_)
                                        (_expand-splice144050_
                                         _hd144113_
                                         _body144139_
                                         _rest144111_
                                         _r144085_)
                                        (if (eq? '%#cond-expand _$e144143_)
                                            (_expand-cond-expand144051_
                                             _hd144113_
                                             _rest144111_
                                             _r144085_)
                                            (if (eq? '%#include _$e144143_)
                                                (_expand-include144052_
                                                 _hd144113_
                                                 _rest144111_
                                                 _r144085_)
                                                (_expand-special144046_
                                                 _hd144113_
                                                 _K144054_
                                                 _rest144111_
                                                 _r144085_)))))
                                  (_expand-expression144053_
                                   _hd144113_
                                   _rest144111_
                                   _r144085_)))
                            (_E144116144125_)))))
                  (_E144116144125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144115144146_))
                                            (_E144088144097_)))))
                                  (_E144088144097_)))))
                      (_E144087144150_)))))
          (let* ((_e144055144062_ _stx144045_)
                 (_E144057144066_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e144055144062_)))
                 (_E144056144080_
                  (lambda ()
                    (if (gx#stx-pair? _e144055144062_)
                        (let ((_e144058144070_ (gx#syntax-e _e144055144062_)))
                          (let ((_hd144059144073_ (##car _e144058144070_))
                                (_tl144060144075_ (##cdr _e144058144070_)))
                            (let ((_body144078_ _tl144060144075_))
                              (if (gx#stx-list? _body144078_)
                                  (_K144054_ _body144078_ '())
                                  (_E144057144066_)))))
                        (_E144057144066_)))))
            (_E144056144080_)))))
    (define gx#core-expand-block__0
      (lambda (_stx144221_ _expand-special144222_)
        (let* ((_begin-form144224_ '%#begin)
               (_expand-e144226_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144221_
           _expand-special144222_
           _begin-form144224_
           _expand-e144226_))))
    (define gx#core-expand-block__1
      (lambda (_stx144228_ _expand-special144229_ _begin-form144230_)
        (let ((_expand-e144232_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144228_
           _expand-special144229_
           _begin-form144230_
           _expand-e144232_))))
    (define gx#core-expand-block
      (lambda _g149455_
        (let ((_g149454_ (##length _g149455_)))
          (cond ((##fx= _g149454_ 2)
                 (apply (lambda (_stx144221_ _expand-special144222_)
                          (gx#core-expand-block__0
                           _stx144221_
                           _expand-special144222_))
                        _g149455_))
                ((##fx= _g149454_ 3)
                 (apply (lambda (_stx144228_
                                 _expand-special144229_
                                 _begin-form144230_)
                          (gx#core-expand-block__1
                           _stx144228_
                           _expand-special144229_
                           _begin-form144230_))
                        _g149455_))
                ((##fx= _g149454_ 4)
                 (apply (lambda (_stx144234_
                                 _expand-special144235_
                                 _begin-form144236_
                                 _expand-e144237_)
                          (gx#core-expand-block__%
                           _stx144234_
                           _expand-special144235_
                           _begin-form144236_
                           _expand-e144237_))
                        _g149455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g149455_))))))
    (define gx#core-expand-block*
      (lambda (_stx143993_ _expand-special143994_)
        (let* ((_g143995144006_
                (gx#core-expand-block__1
                 _stx143993_
                 _expand-special143994_
                 '#f))
               (_E143999144010_
                (lambda () (error '"No clause matching" _g143995144006_))))
          (let ((_K144004144041_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx143993_)))
                (_K144001144027_ (lambda (_expr144025_) _expr144025_))
                (_K144000144016_
                 (lambda (_body144014_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body144014_))
                    (gx#stx-source _stx143993_)))))
            (let ((_try-match143997144037_
                   (lambda ()
                     (if (##pair? _g143995144006_)
                         (let ((_tl144003144032_ (##cdr _g143995144006_))
                               (_hd144002144030_ (##car _g143995144006_)))
                           (if (##null? _tl144003144032_)
                               (let ((_expr144035_ _hd144002144030_))
                                 (_K144001144027_ _expr144035_))
                               (let ((_body144019_ _g143995144006_))
                                 (_K144000144016_ _body144019_))))
                         (let ((_body144019_ _g143995144006_))
                           (_K144000144016_ _body144019_))))))
              (if (##null? _g143995144006_)
                  (_K144004144041_)
                  (_try-match143997144037_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx143821_)
        (letrec ((_satisfied?143823_
                  (lambda (_condition143921_)
                    (let* ((_e143922143937_ _condition143921_)
                           (_E143932143941_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143922143937_)))
                           (_E143925143960_
                            (lambda ()
                              (if (gx#stx-pair? _e143922143937_)
                                  (let ((_e143933143945_
                                         (gx#syntax-e _e143922143937_)))
                                    (let ((_hd143934143948_
                                           (##car _e143933143945_))
                                          (_tl143935143950_
                                           (##cdr _e143933143945_)))
                                      (let* ((_combinator143953_
                                              _hd143934143948_)
                                             (_body143955_ _tl143935143950_))
                                        (if (gx#stx-list? _body143955_)
                                            (let ((_$e143957_
                                                   (gx#stx-e
                                                    _combinator143953_)))
                                              (if (eq? 'not _$e143957_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?143823_
                                                        _body143955_))
                                                  (if (eq? 'and _$e143957_)
                                                      (gx#stx-andmap
                                                       _satisfied?143823_
                                                       _body143955_)
                                                      (if (eq? 'or _$e143957_)
                                                          (gx#stx-ormap
                                                           _satisfied?143823_
                                                           _body143955_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e143957_)
                      (gx#stx-andmap gx#core-resolve-identifier _body143955_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx143821_
                       _combinator143953_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E143932143941_)))))
                                  (_E143932143941_))))
                           (_E143924143983_
                            (lambda ()
                              (if (gx#stx-pair? _e143922143937_)
                                  (let ((_e143926143964_
                                         (gx#syntax-e _e143922143937_)))
                                    (let ((_hd143927143967_
                                           (##car _e143926143964_))
                                          (_tl143928143969_
                                           (##cdr _e143926143964_)))
                                      (if (and (gx#identifier?
                                                _hd143927143967_)
                                               (gx#core-identifier=?
                                                _hd143927143967_
                                                'unquote))
                                          (if (gx#stx-pair? _tl143928143969_)
                                              (let ((_e143929143972_
                                                     (gx#syntax-e
                                                      _tl143928143969_)))
                                                (let ((_hd143930143975_
                                                       (##car _e143929143972_))
                                                      (_tl143931143977_
                                                       (##cdr _e143929143972_)))
                                                  (let ((_expr143980_
                                                         _hd143930143975_))
                                                    (if (gx#stx-null?
                                                         _tl143931143977_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr143980_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E143925143960_))
                (_E143925143960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143925143960_))
                                          (_E143925143960_))))
                                  (_E143925143960_))))
                           (_E143923143989_
                            (lambda ()
                              (let ((_id143987_ _e143922143937_))
                                (if (gx#identifier? _id143987_)
                                    (gx#core-bound-identifier?__%
                                     _id143987_
                                     gx#feature-binding?)
                                    (_E143924143983_))))))
                      (_E143923143989_))))
                 (_loop143824_
                  (lambda (_rest143854_)
                    (let* ((_e143855143863_ _rest143854_)
                           (_E143861143867_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143855143863_)))
                           (_E143857143871_
                            (lambda ()
                              (if (gx#stx-null? _e143855143863_)
                                  (if '#t '() (_E143861143867_))
                                  (_E143861143867_))))
                           (_E143856143917_
                            (lambda ()
                              (if (gx#stx-pair? _e143855143863_)
                                  (let ((_e143858143875_
                                         (gx#syntax-e _e143855143863_)))
                                    (let ((_hd143859143878_
                                           (##car _e143858143875_))
                                          (_tl143860143880_
                                           (##cdr _e143858143875_)))
                                      (let* ((_hd143883_ _hd143859143878_)
                                             (_rest143885_ _tl143860143880_))
                                        (if '#t
                                            (let* ((_e143886143893_ _hd143883_)
                                                   (_E143888143897_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e143886143893_)))
                                                   (_E143887143913_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e143886143893_)
                                                          (let ((_e143889143901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e143886143893_)))
                    (let ((_hd143890143904_ (##car _e143889143901_))
                          (_tl143891143906_ (##cdr _e143889143901_)))
                      (let* ((_condition143909_ _hd143890143904_)
                             (_body143911_ _tl143891143906_))
                        (if '#t
                            (if (gx#stx-eq? _condition143909_ 'else)
                                (if (gx#stx-null? _rest143885_)
                                    _body143911_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx143821_
                                     _hd143883_))
                                (if (_satisfied?143823_ _condition143909_)
                                    _body143911_
                                    (_loop143824_ _rest143885_)))
                            (_E143888143897_)))))
                  (_E143888143897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143887143913_))
                                            (_E143857143871_)))))
                                  (_E143857143871_)))))
                      (_E143856143917_)))))
          (let* ((_e143825143832_ _stx143821_)
                 (_E143827143836_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e143825143832_)))
                 (_E143826143850_
                  (lambda ()
                    (if (gx#stx-pair? _e143825143832_)
                        (let ((_e143828143840_ (gx#syntax-e _e143825143832_)))
                          (let ((_hd143829143843_ (##car _e143828143840_))
                                (_tl143830143845_ (##cdr _e143828143840_)))
                            (let ((_clauses143848_ _tl143830143845_))
                              (if (gx#stx-list? _clauses143848_)
                                  (gx#core-cons
                                   'begin
                                   (_loop143824_ _clauses143848_))
                                  (_E143827143836_)))))
                        (_E143827143836_)))))
            (_E143826143850_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx143764_ _rpath143765_)
        (let* ((_e143766143776_ _stx143764_)
               (_E143768143780_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e143766143776_)))
               (_E143767143807_
                (lambda ()
                  (if (gx#stx-pair? _e143766143776_)
                      (let ((_e143769143784_ (gx#syntax-e _e143766143776_)))
                        (let ((_hd143770143787_ (##car _e143769143784_))
                              (_tl143771143789_ (##cdr _e143769143784_)))
                          (if (gx#stx-pair? _tl143771143789_)
                              (let ((_e143772143792_
                                     (gx#syntax-e _tl143771143789_)))
                                (let ((_hd143773143795_
                                       (##car _e143772143792_))
                                      (_tl143774143797_
                                       (##cdr _e143772143792_)))
                                  (let ((_path143800_ _hd143773143795_))
                                    (if (gx#stx-null? _tl143774143797_)
                                        (if (gx#stx-string? _path143800_)
                                            (let ((_rpath143805_
                                                   (let ((_$e143802_
                                                          _rpath143765_))
                                                     (if _$e143802_
                                                         _$e143802_
                                                         (gx#core-resolve-path__%
                                                          _path143800_
                                                          (gx#stx-source
                                                           _stx143764_))))))
                                              (if (member _rpath143805_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx143764_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath143805_))
                                                    (gx#stx-source
                                                     _stx143764_)))))
                                            (_E143768143780_))
                                        (_E143768143780_)))))
                              (_E143768143780_))))
                      (_E143768143780_)))))
          (_E143767143807_))))
    (define gx#core-expand-include%__0
      (lambda (_stx143814_)
        (let ((_rpath143816_ '#f))
          (gx#core-expand-include%__% _stx143814_ _rpath143816_))))
    (define gx#core-expand-include%
      (lambda _g149457_
        (let ((_g149456_ (##length _g149457_)))
          (cond ((##fx= _g149456_ 1)
                 (apply (lambda (_stx143814_)
                          (gx#core-expand-include%__0 _stx143814_))
                        _g149457_))
                ((##fx= _g149456_ 2)
                 (apply (lambda (_stx143818_ _rpath143819_)
                          (gx#core-expand-include%__%
                           _stx143818_
                           _rpath143819_))
                        _g149457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g149457_))))))
    (define gx#core-apply-expander__%
      (lambda (_K143733_ _stx143734_ _method143735_)
        (if (procedure? _K143733_)
            (let ((_$e143737_ (gx#stx-source _stx143734_)))
              (if _$e143737_
                  ((lambda (_g143739143741_)
                     (gx#stx-wrap-source
                      (_K143733_ _stx143734_)
                      _g143739143741_))
                   _$e143737_)
                  (_K143733_ _stx143734_)))
            (let ((_$e143744_ (bound-method-ref _K143733_ _method143735_)))
              (if _$e143744_
                  ((lambda (_g143746143748_)
                     (gx#core-apply-expander__%
                      _g143746143748_
                      _stx143734_
                      _method143735_))
                   _$e143744_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx143734_
                   _method143735_))))))
    (define gx#core-apply-expander__0
      (lambda (_K143754_ _stx143755_)
        (let ((_method143757_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K143754_ _stx143755_ _method143757_))))
    (define gx#core-apply-expander
      (lambda _g149459_
        (let ((_g149458_ (##length _g149459_)))
          (cond ((##fx= _g149458_ 2)
                 (apply (lambda (_K143754_ _stx143755_)
                          (gx#core-apply-expander__0 _K143754_ _stx143755_))
                        _g149459_))
                ((##fx= _g149458_ 3)
                 (apply (lambda (_K143759_ _stx143760_ _method143761_)
                          (gx#core-apply-expander__%
                           _K143759_
                           _stx143760_
                           _method143761_))
                        _g149459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g149459_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self143729_ _stx143730_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx143730_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self143582_ _stx143583_)
        (let* ((_self143584143590_ _self143582_)
               (_E143586143594_
                (lambda () (error '"No clause matching" _self143584143590_)))
               (_K143587143599_
                (lambda (_K143597_)
                  (gx#core-apply-expander__0 _K143597_ _stx143583_))))
          (if (##structure-instance-of? _self143584143590_ 'gx#core-macro::t)
              (let* ((_e143588143602_
                      (##unchecked-structure-ref
                       _self143584143590_
                       '1
                       gx#expander::t
                       '#f))
                     (_K143605_ _e143588143602_))
                (_K143587143599_ _K143605_))
              (_E143586143594_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self143435_ _stx143436_)
        (if (gx#sealed-syntax? _stx143436_)
            _stx143436_
            (let* ((_self143437143443_ _self143435_)
                   (_E143439143447_
                    (lambda ()
                      (error '"No clause matching" _self143437143443_)))
                   (_K143440143452_
                    (lambda (_K143450_)
                      (gx#core-apply-expander__0 _K143450_ _stx143436_))))
              (if (##structure-instance-of?
                   _self143437143443_
                   'gx#core-expander::t)
                  (let* ((_e143441143455_
                          (##unchecked-structure-ref
                           _self143437143443_
                           '1
                           gx#expander::t
                           '#f))
                         (_K143458_ _e143441143455_))
                    (_K143440143452_ _K143458_))
                  (_E143439143447_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self143297_ _stx143298_ _top?143299_)
        (if (_top?143299_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self143297_ _stx143298_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx143298_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self143304_ _stx143305_)
        (let ((_top?143307_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self143304_
           _stx143305_
           _top?143307_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g149461_
        (let ((_g149460_ (##length _g149461_)))
          (cond ((##fx= _g149460_ 2)
                 (apply (lambda (_self143304_ _stx143305_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self143304_
                           _stx143305_))
                        _g149461_))
                ((##fx= _g149460_ 3)
                 (apply (lambda (_self143309_ _stx143310_ _top?143311_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self143309_
                           _stx143310_
                           _top?143311_))
                        _g149461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g149461_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self143171_ _stx143172_)
        (gx#top-special-form::apply-macro-expander__%
         _self143171_
         _stx143172_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self142996_ _stx142997_)
        (let* ((_self142998143004_ _self142996_)
               (_E143000143008_
                (lambda () (error '"No clause matching" _self142998143004_)))
               (_K143001143041_
                (lambda (_id143011_)
                  (let* ((_e143012143019_ _stx142997_)
                         (_E143014143023_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e143012143019_)))
                         (_E143013143037_
                          (lambda ()
                            (if (gx#stx-pair? _e143012143019_)
                                (let ((_e143015143027_
                                       (gx#syntax-e _e143012143019_)))
                                  (let ((_hd143016143030_
                                         (##car _e143015143027_))
                                        (_tl143017143032_
                                         (##cdr _e143015143027_)))
                                    (let ((_body143035_ _tl143017143032_))
                                      (if '#t
                                          (gx#core-cons
                                           _id143011_
                                           _body143035_)
                                          (_E143014143023_)))))
                                (_E143014143023_)))))
                    (_E143013143037_)))))
          (if (##structure-instance-of?
               _self142998143004_
               'gx#rename-macro-expander::t)
              (let* ((_e143002143044_
                      (##unchecked-structure-ref
                       _self142998143004_
                       '1
                       gx#expander::t
                       '#f))
                     (_id143047_ _e143002143044_))
                (_K143001143041_ _id143047_))
              (_E143000143008_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self142822_ _stx142823_ _method142824_)
        (let* ((_self142825142833_ _self142822_)
               (_E142827142837_
                (lambda () (error '"No clause matching" _self142825142833_)))
               (_K142828142844_
                (lambda (_phi142840_ _ctx142841_ _K142842_)
                  (gx#core-apply-user-macro
                   _K142842_
                   _stx142823_
                   _ctx142841_
                   _phi142840_
                   _method142824_))))
          (if (##structure-instance-of?
               _self142825142833_
               'gx#macro-expander::t)
              (let* ((_e142829142847_
                      (##unchecked-structure-ref
                       _self142825142833_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142850_ _e142829142847_)
                     (_e142830142852_
                      (##unchecked-structure-ref
                       _self142825142833_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx142855_ _e142830142852_)
                     (_e142831142857_
                      (##unchecked-structure-ref
                       _self142825142833_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi142860_ _e142831142857_))
                (_K142828142844_ _phi142860_ _ctx142855_ _K142850_))
              (_E142827142837_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self142865_ _stx142866_)
        (let ((_method142868_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self142865_
           _stx142866_
           _method142868_))))
    (define gx#core-apply-user-expander
      (lambda _g149463_
        (let ((_g149462_ (##length _g149463_)))
          (cond ((##fx= _g149462_ 2)
                 (apply (lambda (_self142865_ _stx142866_)
                          (gx#core-apply-user-expander__0
                           _self142865_
                           _stx142866_))
                        _g149463_))
                ((##fx= _g149462_ 3)
                 (apply (lambda (_self142870_ _stx142871_ _method142872_)
                          (gx#core-apply-user-expander__%
                           _self142870_
                           _stx142871_
                           _method142872_))
                        _g149463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g149463_))))))
    (define gx#core-apply-user-macro
      (lambda (_K142812_ _stx142813_ _ctx142814_ _phi142815_ _method142816_)
        (let ((_mark142818_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx142814_
                _phi142815_
                _stx142813_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K142812_
               (gx#stx-apply-mark _stx142813_ _mark142818_)
               _method142816_)
              _mark142818_))
           gx#current-expander-marks
           (cons _mark142818_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx142664_ _phi142665_ _ctx142666_)
        (let _lp142668_ ((_bind142670_
                          (gx#core-resolve-identifier__%
                           _stx142664_
                           _phi142665_
                           _ctx142666_)))
          (if (##structure-direct-instance-of?
               _bind142670_
               'gx#import-binding::t)
              (_lp142668_
               (##unchecked-structure-ref
                _bind142670_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind142670_
                   'gx#alias-binding::t)
                  (_lp142668_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind142670_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi142665_
                    _ctx142666_))
                  _bind142670_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx142675_)
        (let* ((_phi142677_ (gx#current-expander-phi))
               (_ctx142679_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142675_ _phi142677_ _ctx142679_))))
    (define gx#resolve-identifier__1
      (lambda (_stx142681_ _phi142682_)
        (let ((_ctx142684_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142681_ _phi142682_ _ctx142684_))))
    (define gx#resolve-identifier
      (lambda _g149465_
        (let ((_g149464_ (##length _g149465_)))
          (cond ((##fx= _g149464_ 1)
                 (apply (lambda (_stx142675_)
                          (gx#resolve-identifier__0 _stx142675_))
                        _g149465_))
                ((##fx= _g149464_ 2)
                 (apply (lambda (_stx142681_ _phi142682_)
                          (gx#resolve-identifier__1 _stx142681_ _phi142682_))
                        _g149465_))
                ((##fx= _g149464_ 3)
                 (apply (lambda (_stx142686_ _phi142687_ _ctx142688_)
                          (gx#resolve-identifier__%
                           _stx142686_
                           _phi142687_
                           _ctx142688_))
                        _g149465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g149465_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx142622_ _val142623_ _rebind?142624_ _phi142625_ _ctx142626_)
        (let ((_rebind?142628_
               (if (not _rebind?142624_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?142624_) _rebind?142624_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx142622_)
           _val142623_
           _rebind?142628_
           _phi142625_
           _ctx142626_))))
    (define gx#bind-identifier!__0
      (lambda (_stx142633_ _val142634_)
        (let* ((_rebind?142636_ '#f)
               (_phi142638_ (gx#current-expander-phi))
               (_ctx142640_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142633_
           _val142634_
           _rebind?142636_
           _phi142638_
           _ctx142640_))))
    (define gx#bind-identifier!__1
      (lambda (_stx142642_ _val142643_ _rebind?142644_)
        (let* ((_phi142646_ (gx#current-expander-phi))
               (_ctx142648_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142642_
           _val142643_
           _rebind?142644_
           _phi142646_
           _ctx142648_))))
    (define gx#bind-identifier!__2
      (lambda (_stx142650_ _val142651_ _rebind?142652_ _phi142653_)
        (let ((_ctx142655_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142650_
           _val142651_
           _rebind?142652_
           _phi142653_
           _ctx142655_))))
    (define gx#bind-identifier!
      (lambda _g149467_
        (let ((_g149466_ (##length _g149467_)))
          (cond ((##fx= _g149466_ 2)
                 (apply (lambda (_stx142633_ _val142634_)
                          (gx#bind-identifier!__0 _stx142633_ _val142634_))
                        _g149467_))
                ((##fx= _g149466_ 3)
                 (apply (lambda (_stx142642_ _val142643_ _rebind?142644_)
                          (gx#bind-identifier!__1
                           _stx142642_
                           _val142643_
                           _rebind?142644_))
                        _g149467_))
                ((##fx= _g149466_ 4)
                 (apply (lambda (_stx142650_
                                 _val142651_
                                 _rebind?142652_
                                 _phi142653_)
                          (gx#bind-identifier!__2
                           _stx142650_
                           _val142651_
                           _rebind?142652_
                           _phi142653_))
                        _g149467_))
                ((##fx= _g149466_ 5)
                 (apply (lambda (_stx142657_
                                 _val142658_
                                 _rebind?142659_
                                 _phi142660_
                                 _ctx142661_)
                          (gx#bind-identifier!__%
                           _stx142657_
                           _val142658_
                           _rebind?142659_
                           _phi142660_
                           _ctx142661_))
                        _g149467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g149467_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx142594_ _phi142595_ _ctx142596_)
        (let _lp142598_ ((_e142600_ _stx142594_)
                         (_marks142601_ (gx#current-expander-marks)))
          (if (symbol? _e142600_)
              (gx#core-resolve-binding
               _e142600_
               _phi142595_
               _phi142595_
               _ctx142596_
               (reverse _marks142601_))
              (if (gx#identifier-quote? _e142600_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e142600_ '1 gx#AST::t '#f)
                   _phi142595_
                   '0
                   (##unchecked-structure-ref
                    _e142600_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e142600_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e142600_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e142600_ '1 gx#AST::t '#f)
                       _phi142595_
                       _phi142595_
                       _ctx142596_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e142600_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks142601_))
                      (if (##structure-direct-instance-of?
                           _e142600_
                           'gx#syntax-wrap::t)
                          (_lp142598_
                           (##unchecked-structure-ref
                            _e142600_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e142600_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks142601_))
                          (if (##structure-instance-of?
                               _e142600_
                               'gerbil#AST::t)
                              (_lp142598_
                               (##unchecked-structure-ref
                                _e142600_
                                '1
                                gx#AST::t
                                '#f)
                               _marks142601_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx142594_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx142606_)
        (let* ((_phi142608_ (gx#current-expander-phi))
               (_ctx142610_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142606_
           _phi142608_
           _ctx142610_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx142612_ _phi142613_)
        (let ((_ctx142615_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142612_
           _phi142613_
           _ctx142615_))))
    (define gx#core-resolve-identifier
      (lambda _g149469_
        (let ((_g149468_ (##length _g149469_)))
          (cond ((##fx= _g149468_ 1)
                 (apply (lambda (_stx142606_)
                          (gx#core-resolve-identifier__0 _stx142606_))
                        _g149469_))
                ((##fx= _g149468_ 2)
                 (apply (lambda (_stx142612_ _phi142613_)
                          (gx#core-resolve-identifier__1
                           _stx142612_
                           _phi142613_))
                        _g149469_))
                ((##fx= _g149468_ 3)
                 (apply (lambda (_stx142617_ _phi142618_ _ctx142619_)
                          (gx#core-resolve-identifier__%
                           _stx142617_
                           _phi142618_
                           _ctx142619_))
                        _g149469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g149469_))))))
    (define gx#core-resolve-binding
      (lambda (_id142507_
               _phi142508_
               _src-phi142509_
               _ctx142510_
               _marks142511_)
        (letrec ((_resolve142513_
                  (lambda (_ctx142581_ _src-phi142582_ _key142583_)
                    (let _lp142585_ ((_ctx142587_
                                      (gx#core-context-shift
                                       _ctx142581_
                                       _phi142508_))
                                     (_dphi142588_
                                      (fx- _phi142508_ _src-phi142582_)))
                      (let ((_$e142590_
                             (gx#core-context-resolve
                              _ctx142587_
                              _key142583_)))
                        (if _$e142590_
                            (values _$e142590_)
                            (if (fxzero? _dphi142588_)
                                '#f
                                (if (fxpositive? _dphi142588_)
                                    (_lp142585_
                                     (gx#core-context-shift _ctx142587_ '-1)
                                     (fx- _dphi142588_ '1))
                                    (_lp142585_
                                     (gx#core-context-shift _ctx142587_ '1)
                                     (fx+ _dphi142588_ '1))))))))))
          (let _lp142515_ ((_ctx142517_ _ctx142510_)
                           (_src-phi142518_ _src-phi142509_)
                           (_rest142519_ _marks142511_))
            (let* ((_rest142520142528_ _rest142519_)
                   (_else142522142536_
                    (lambda ()
                      (_resolve142513_
                       _ctx142517_
                       _src-phi142518_
                       _id142507_)))
                   (_K142524142569_
                    (lambda (_rest142539_ _hd142540_)
                      (let* ((_hd142541142547_ _hd142540_)
                             (_E142543142551_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd142541142547_)))
                             (_K142544142561_
                              (lambda (_subst142554_)
                                (let ((_$e142558_
                                       (let ((_key142556_
                                              (if _subst142554_
                                                  (table-ref
                                                   _subst142554_
                                                   _id142507_
                                                   '#f)
                                                  '#f)))
                                         (if _key142556_
                                             (_resolve142513_
                                              _ctx142517_
                                              _src-phi142518_
                                              _key142556_)
                                             '#f))))
                                  (if _$e142558_
                                      _$e142558_
                                      (_lp142515_
                                       (##unchecked-structure-ref
                                        _hd142540_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd142540_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest142539_))))))
                        (if (##structure-instance-of?
                             _hd142541142547_
                             'gx#expander-mark::t)
                            (let* ((_e142545142564_
                                    (##unchecked-structure-ref
                                     _hd142541142547_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst142567_ _e142545142564_))
                              (_K142544142561_ _subst142567_))
                            (_E142543142551_))))))
              (if (##pair? _rest142520142528_)
                  (let ((_hd142525142572_ (##car _rest142520142528_))
                        (_tl142526142574_ (##cdr _rest142520142528_)))
                    (let* ((_hd142577_ _hd142525142572_)
                           (_rest142579_ _tl142526142574_))
                      (_K142524142569_ _rest142579_ _hd142577_)))
                  (_else142522142536_)))))))
    (define gx#core-bind!__%
      (lambda (_key142383_ _val142384_ _rebind?142385_ _phi142386_ _ctx142387_)
        (letrec ((_update-binding142389_
                  (lambda (_xval142460_)
                    (if (or (_rebind?142385_
                             _ctx142387_
                             _xval142460_
                             _val142384_)
                            (and (##structure-direct-instance-of?
                                  _xval142460_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval142460_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val142384_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val142384_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval142460_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val142384_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val142384_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval142460_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val142384_
                        (if (and (##structure-direct-instance-of?
                                  _val142384_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val142384_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval142460_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val142384_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval142460_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval142460_
                            (if (and (##structure-direct-instance-of?
                                      _val142384_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval142460_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key142383_
                                 (cons (##unchecked-structure-ref
                                        _val142384_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val142384_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval142460_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval142460_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval142460_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval142460_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key142383_
                                 _val142384_
                                 _xval142460_))))))
                 (_gensubst142390_
                  (lambda (_subst142455_ _id142456_)
                    (let ((_eid142458_
                           (gensym (if (uninterned-symbol? _id142456_)
                                       '%
                                       _id142456_))))
                      (table-set! _subst142455_ _id142456_ _eid142458_)
                      _eid142458_)))
                 (_subst!142391_
                  (lambda (_key142393_)
                    (let* ((_key142394142402_ _key142393_)
                           (_else142396142410_ (lambda () _key142393_))
                           (_K142398142443_
                            (lambda (_mark142413_ _id142414_)
                              (let* ((_mark142415142421_ _mark142413_)
                                     (_E142417142425_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark142415142421_)))
                                     (_K142418142435_
                                      (lambda (_subst142428_)
                                        (if (not _subst142428_)
                                            (let ((_subst142430_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark142413_
                                               _subst142430_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst142390_
                                               _subst142430_
                                               _id142414_))
                                            (let ((_$e142432_
                                                   (table-ref
                                                    _subst142428_
                                                    _id142414_
                                                    '#f)))
                                              (if _$e142432_
                                                  (values _$e142432_)
                                                  (_gensubst142390_
                                                   _subst142428_
                                                   _id142414_)))))))
                                (if (##structure-instance-of?
                                     _mark142415142421_
                                     'gx#expander-mark::t)
                                    (let* ((_e142419142438_
                                            (##unchecked-structure-ref
                                             _mark142415142421_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst142441_ _e142419142438_))
                                      (_K142418142435_ _subst142441_))
                                    (_E142417142425_))))))
                      (if (##pair? _key142394142402_)
                          (let ((_hd142399142446_ (##car _key142394142402_))
                                (_tl142400142448_ (##cdr _key142394142402_)))
                            (let* ((_id142451_ _hd142399142446_)
                                   (_mark142453_ _tl142400142448_))
                              (_K142398142443_ _mark142453_ _id142451_)))
                          (_else142396142410_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx142387_ _phi142386_)
           (_subst!142391_ _key142383_)
           _val142384_
           _update-binding142389_))))
    (define gx#core-bind!__0
      (lambda (_key142477_ _val142478_)
        (let* ((_rebind?142480_ false)
               (_phi142482_ (gx#current-expander-phi))
               (_ctx142484_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142477_
           _val142478_
           _rebind?142480_
           _phi142482_
           _ctx142484_))))
    (define gx#core-bind!__1
      (lambda (_key142486_ _val142487_ _rebind?142488_)
        (let* ((_phi142490_ (gx#current-expander-phi))
               (_ctx142492_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142486_
           _val142487_
           _rebind?142488_
           _phi142490_
           _ctx142492_))))
    (define gx#core-bind!__2
      (lambda (_key142494_ _val142495_ _rebind?142496_ _phi142497_)
        (let ((_ctx142499_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142494_
           _val142495_
           _rebind?142496_
           _phi142497_
           _ctx142499_))))
    (define gx#core-bind!
      (lambda _g149471_
        (let ((_g149470_ (##length _g149471_)))
          (cond ((##fx= _g149470_ 2)
                 (apply (lambda (_key142477_ _val142478_)
                          (gx#core-bind!__0 _key142477_ _val142478_))
                        _g149471_))
                ((##fx= _g149470_ 3)
                 (apply (lambda (_key142486_ _val142487_ _rebind?142488_)
                          (gx#core-bind!__1
                           _key142486_
                           _val142487_
                           _rebind?142488_))
                        _g149471_))
                ((##fx= _g149470_ 4)
                 (apply (lambda (_key142494_
                                 _val142495_
                                 _rebind?142496_
                                 _phi142497_)
                          (gx#core-bind!__2
                           _key142494_
                           _val142495_
                           _rebind?142496_
                           _phi142497_))
                        _g149471_))
                ((##fx= _g149470_ 5)
                 (apply (lambda (_key142501_
                                 _val142502_
                                 _rebind?142503_
                                 _phi142504_
                                 _ctx142505_)
                          (gx#core-bind!__%
                           _key142501_
                           _val142502_
                           _rebind?142503_
                           _phi142504_
                           _ctx142505_))
                        _g149471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g149471_))))))
    (define gx#core-identifier-key
      (lambda (_stx142317_)
        (if (symbol? _stx142317_)
            (let* ((_g142318142326_ (gx#current-expander-marks))
                   (_else142320142334_ (lambda () _stx142317_))
                   (_K142322142339_
                    (lambda (_hd142337_) (cons _stx142317_ _hd142337_))))
              (if (##pair? _g142318142326_)
                  (let* ((_hd142323142342_ (##car _g142318142326_))
                         (_hd142345_ _hd142323142342_))
                    (_K142322142339_ _hd142345_))
                  (_else142320142334_)))
            (if (gx#identifier? _stx142317_)
                (let* ((_id142347_ (gx#syntax-local-unwrap _stx142317_))
                       (_eid142349_ (gx#stx-e _id142347_))
                       (_marks142351_ (gx#stx-identifier-marks* _id142347_)))
                  (let* ((_marks142353142361_ _marks142351_)
                         (_else142355142369_ (lambda () _eid142349_))
                         (_K142357142374_
                          (lambda (_hd142372_) (cons _eid142349_ _hd142372_))))
                    (if (##pair? _marks142353142361_)
                        (let* ((_hd142358142377_ (##car _marks142353142361_))
                               (_hd142380_ _hd142358142377_))
                          (_K142357142374_ _hd142380_))
                        (_else142355142369_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx142317_)))))
    (define gx#core-context-shift
      (lambda (_ctx142262_ _phi142263_)
        (letrec ((_make-phi142265_
                  (lambda (_super142315_)
                    (let ((__obj149442
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj149442
                       (gensym 'phi)
                       _super142315_)
                      __obj149442)))
                 (_make-phi/up142266_
                  (lambda (_ctx142310_ _super142311_)
                    (let ((_ctx+1142313_ (_make-phi142265_ _super142311_)))
                      (##unchecked-structure-set!
                       _ctx142310_
                       _ctx+1142313_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1142313_
                       _ctx142310_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1142313_)))
                 (_make-phi/down142267_
                  (lambda (_ctx142305_ _super142306_)
                    (let ((_ctx-1142308_ (_make-phi142265_ _super142306_)))
                      (##unchecked-structure-set!
                       _ctx-1142308_
                       _ctx142305_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx142305_
                       _ctx-1142308_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1142308_)))
                 (_shift142268_
                  (lambda (_ctx142289_
                           _delta142290_
                           _make-delta-context142291_
                           _phi142292_
                           _K142293_)
                    (let ((_$e142295_
                           (##unchecked-structure-ref
                            _ctx142289_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e142295_
                          ((lambda (_super142298_)
                             (let* ((_super142300_
                                     (_K142293_ _super142298_ _delta142290_))
                                    (_ctx+d142302_
                                     (_make-delta-context142291_
                                      _ctx142289_
                                      _super142300_)))
                               (_K142293_
                                _ctx+d142302_
                                (fx- _phi142292_ _delta142290_))))
                           _$e142295_)
                          (error '"Bad context" _ctx142289_))))))
          (let _K142270_ ((_ctx142272_ _ctx142262_) (_phi142273_ _phi142263_))
            (if (fxzero? _phi142273_)
                _ctx142272_
                (if (fx> (##vector-length _ctx142272_) '3)
                    (if (fxpositive? _phi142273_)
                        (let ((_$e142275_
                               (##unchecked-structure-ref
                                _ctx142272_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e142275_
                              ((lambda (_g142277142279_)
                                 (_K142270_
                                  _g142277142279_
                                  (fx- _phi142273_ '1)))
                               _$e142275_)
                              (_shift142268_
                               _ctx142272_
                               '1
                               _make-phi/up142266_
                               _phi142273_
                               _K142270_)))
                        (let ((_$e142282_
                               (##unchecked-structure-ref
                                _ctx142272_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e142282_
                              ((lambda (_g142284142286_)
                                 (_K142270_
                                  _g142284142286_
                                  (fx+ _phi142273_ '1)))
                               _$e142282_)
                              (_shift142268_
                               _ctx142272_
                               '-1
                               _make-phi/down142267_
                               _phi142273_
                               _K142270_))))
                    _ctx142272_))))))
    (define gx#core-context-get
      (lambda (_ctx142259_ _key142260_)
        (table-ref
         (##unchecked-structure-ref _ctx142259_ '2 gx#expander-context::t '#f)
         _key142260_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx142255_ _key142256_ _val142257_)
        (table-set!
         (##unchecked-structure-ref _ctx142255_ '2 gx#expander-context::t '#f)
         _key142256_
         _val142257_)))
    (define gx#core-context-resolve
      (lambda (_ctx142242_ _key142243_)
        (let _lp142245_ ((_ctx142247_ _ctx142242_))
          (let ((_$e142249_ (gx#core-context-get _ctx142247_ _key142243_)))
            (if _$e142249_
                (values _$e142249_)
                (let ((_$e142252_
                       (if (fx> (##vector-length _ctx142247_) '3)
                           (##unchecked-structure-ref
                            _ctx142247_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e142252_ (_lp142245_ _$e142252_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx142232_ _key142233_ _val142234_ _rebind142235_)
        (let ((_$e142237_ (gx#core-context-get _ctx142232_ _key142233_)))
          (if _$e142237_
              ((lambda (_xval142240_)
                 (gx#core-context-put!
                  _ctx142232_
                  _key142233_
                  (_rebind142235_ _xval142240_)))
               _$e142237_)
              (gx#core-context-put! _ctx142232_ _key142233_ _val142234_)))))
    (define gx#core-context-top__%
      (lambda (_ctx142210_ _stop?142211_)
        (let _lp142213_ ((_ctx142215_ _ctx142210_))
          (if (_stop?142211_ _ctx142215_)
              _ctx142215_
              (if (##structure-instance-of? _ctx142215_ 'gx#context-phi::t)
                  (_lp142213_
                   (##unchecked-structure-ref
                    _ctx142215_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx142221_ (gx#current-expander-context))
               (_stop?142223_ gx#top-context?))
          (gx#core-context-top__% _ctx142221_ _stop?142223_))))
    (define gx#core-context-top__1
      (lambda (_ctx142225_)
        (let ((_stop?142227_ gx#top-context?))
          (gx#core-context-top__% _ctx142225_ _stop?142227_))))
    (define gx#core-context-top
      (lambda _g149473_
        (let ((_g149472_ (##length _g149473_)))
          (cond ((##fx= _g149472_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g149473_))
                ((##fx= _g149472_ 1)
                 (apply (lambda (_ctx142225_)
                          (gx#core-context-top__1 _ctx142225_))
                        _g149473_))
                ((##fx= _g149472_ 2)
                 (apply (lambda (_ctx142229_ _stop?142230_)
                          (gx#core-context-top__% _ctx142229_ _stop?142230_))
                        _g149473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g149473_))))))
    (define gx#core-context-root__%
      (lambda (_ctx142195_)
        (let _lp142197_ ((_ctx142199_ _ctx142195_))
          (if (##structure-instance-of? _ctx142199_ 'gx#context-phi::t)
              (_lp142197_
               (##unchecked-structure-ref
                _ctx142199_
                '3
                gx#phi-context::t
                '#f))
              _ctx142199_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx142205_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx142205_))))
    (define gx#core-context-root
      (lambda _g149475_
        (let ((_g149474_ (##length _g149475_)))
          (cond ((##fx= _g149474_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g149475_))
                ((##fx= _g149474_ 1)
                 (apply (lambda (_ctx142207_)
                          (gx#core-context-root__% _ctx142207_))
                        _g149475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g149475_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx142176_ . __142173142177_)
        (let ((_$e142180_ (gx#current-expander-allow-rebind?)))
          (if _$e142180_
              _$e142180_
              (if (##structure-instance-of? _ctx142176_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx142176_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx142176_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx142187_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx142187_))))
    (define gx#core-context-rebind?
      (lambda _g149477_
        (let ((_g149476_ (##length _g149477_)))
          (cond ((##fx= _g149476_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g149477_))
                ((##fx= _g149476_ 1)
                 (apply (lambda (_ctx142189_)
                          (gx#core-context-rebind?__% _ctx142189_))
                        _g149477_))
                ((##fx>= _g149476_ 1)
                 (apply gx#core-context-rebind?__% _g149477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g149477_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx142159_)
        (let ((_$e142161_ (gx#core-context-top__1 _ctx142159_)))
          (if _$e142161_
              ((lambda (_ctx142164_)
                 (if (##structure-instance-of?
                      _ctx142164_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx142164_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e142161_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx142170_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx142170_))))
    (define gx#core-context-namespace
      (lambda _g149479_
        (let ((_g149478_ (##length _g149479_)))
          (cond ((##fx= _g149478_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g149479_))
                ((##fx= _g149478_ 1)
                 (apply (lambda (_ctx142172_)
                          (gx#core-context-namespace__% _ctx142172_))
                        _g149479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g149479_))))))
    (define gx#expander-binding?__%
      (lambda (_bind142145_ _is?142146_)
        (if (##structure-direct-instance-of?
             _bind142145_
             'gx#syntax-binding::t)
            (_is?142146_
             (##unchecked-structure-ref
              _bind142145_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind142151_)
        (let ((_is?142153_ gx#expander?))
          (gx#expander-binding?__% _bind142151_ _is?142153_))))
    (define gx#expander-binding?
      (lambda _g149481_
        (let ((_g149480_ (##length _g149481_)))
          (cond ((##fx= _g149480_ 1)
                 (apply (lambda (_bind142151_)
                          (gx#expander-binding?__0 _bind142151_))
                        _g149481_))
                ((##fx= _g149480_ 2)
                 (apply (lambda (_bind142155_ _is?142156_)
                          (gx#expander-binding?__% _bind142155_ _is?142156_))
                        _g149481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g149481_))))))
    (define gx#core-expander-binding?
      (lambda (_bind142142_)
        (gx#expander-binding?__% _bind142142_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind142140_)
        (gx#expander-binding?__% _bind142140_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind142134_)
        (letrec ((_direct-special-form?142136_
                  (lambda (_obj142138_)
                    (##structure-direct-instance-of?
                     _obj142138_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind142134_
           _direct-special-form?142136_))))
    (define gx#special-form-binding?
      (lambda (_bind142132_)
        (gx#expander-binding?__% _bind142132_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind142123_)
        (letrec ((_feature?142125_
                  (lambda (_e142127_)
                    (let ((_$e142129_
                           (##structure-instance-of?
                            _e142127_
                            'gx#feature-expander::t)))
                      (if _$e142129_
                          _$e142129_
                          (##structure-instance-of?
                           _e142127_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind142123_ _feature?142125_))))
    (define gx#private-feature-binding?
      (lambda (_bind142121_)
        (gx#expander-binding?__% _bind142121_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id142108_ _bound?142109_)
        (if (gx#identifier? _id142108_)
            (_bound?142109_ (gx#resolve-identifier__0 _id142108_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id142114_)
        (let ((_bound?142116_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id142114_ _bound?142116_))))
    (define gx#core-bound-identifier?
      (lambda _g149483_
        (let ((_g149482_ (##length _g149483_)))
          (cond ((##fx= _g149482_ 1)
                 (apply (lambda (_id142114_)
                          (gx#core-bound-identifier?__0 _id142114_))
                        _g149483_))
                ((##fx= _g149482_ 2)
                 (apply (lambda (_id142118_ _bound?142119_)
                          (gx#core-bound-identifier?__%
                           _id142118_
                           _bound?142119_))
                        _g149483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g149483_))))))
    (define gx#core-identifier=?
      (lambda (_x142098_ _y142099_)
        (letrec ((_y=?142101_
                  (lambda (_xid142105_)
                    ((if (list? _y142099_) memq eq?) _xid142105_ _y142099_))))
          (let ((_bind142103_ (gx#resolve-identifier__0 _x142098_)))
            (if (##structure-instance-of? _bind142103_ 'gx#binding::t)
                (_y=?142101_
                 (##unchecked-structure-ref _bind142103_ '1 gx#binding::t '#f))
                (_y=?142101_ (gx#stx-e _x142098_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e142096_)
        (if (interned-symbol? _e142096_)
            (string-index (symbol->string _e142096_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx142051_ _src142052_ _ctx142053_ _marks142054_)
        (if (##structure? _stx142051_)
            (let ((_$e142056_ (gx#sealed-syntax-unwrap _stx142051_)))
              (if _$e142056_
                  (values _$e142056_)
                  (if (gx#identifier? _stx142051_)
                      (let ((_id142059_
                             (gx#stx-unwrap__% _stx142051_ _marks142054_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id142059_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e142061_
                                (##unchecked-structure-ref
                                 _id142059_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e142061_ _$e142061_ _src142052_))
                         _ctx142053_
                         (##unchecked-structure-ref
                          _id142059_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx142051_)
                       (let ((_$e142064_ (gx#stx-source _stx142051_)))
                         (if _$e142064_ _$e142064_ _src142052_))
                       _ctx142053_
                       (reverse _marks142054_)))))
            (##structure
             gx#syntax-quote::t
             _stx142051_
             _src142052_
             _ctx142053_
             (reverse _marks142054_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx142070_)
        (let* ((_src142072_ '#f)
               (_ctx142074_ (gx#current-expander-context))
               (_marks142076_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142070_
           _src142072_
           _ctx142074_
           _marks142076_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx142078_ _src142079_)
        (let* ((_ctx142081_ (gx#current-expander-context))
               (_marks142083_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142078_
           _src142079_
           _ctx142081_
           _marks142083_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx142085_ _src142086_ _ctx142087_)
        (let ((_marks142089_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142085_
           _src142086_
           _ctx142087_
           _marks142089_))))
    (define gx#core-quote-syntax
      (lambda _g149485_
        (let ((_g149484_ (##length _g149485_)))
          (cond ((##fx= _g149484_ 1)
                 (apply (lambda (_stx142070_)
                          (gx#core-quote-syntax__0 _stx142070_))
                        _g149485_))
                ((##fx= _g149484_ 2)
                 (apply (lambda (_stx142078_ _src142079_)
                          (gx#core-quote-syntax__1 _stx142078_ _src142079_))
                        _g149485_))
                ((##fx= _g149484_ 3)
                 (apply (lambda (_stx142085_ _src142086_ _ctx142087_)
                          (gx#core-quote-syntax__2
                           _stx142085_
                           _src142086_
                           _ctx142087_))
                        _g149485_))
                ((##fx= _g149484_ 4)
                 (apply (lambda (_stx142091_
                                 _src142092_
                                 _ctx142093_
                                 _marks142094_)
                          (gx#core-quote-syntax__%
                           _stx142091_
                           _src142092_
                           _ctx142093_
                           _marks142094_))
                        _g149485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g149485_))))))
    (define gx#core-cons
      (lambda (_hd142047_ _tl142048_)
        (cons (gx#core-quote-syntax__0 _hd142047_) _tl142048_)))
    (define gx#core-list
      (lambda (_hd142044_ . _rest142045_)
        (cons (gx#core-quote-syntax__0 _hd142044_) _rest142045_)))
    (define gx#core-cons*
      (lambda (_hd142041_ . _rest142042_)
        (apply cons* (gx#core-quote-syntax__0 _hd142041_) _rest142042_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path142015_ _rel142016_)
        (let ((_path142028_ (gx#stx-e _stx-path142015_))
              (_reldir142029_
               (let _lp142018_ ((_relsrc142020_
                                 (let ((_$e142025_
                                        (gx#stx-source _stx-path142015_)))
                                   (if _$e142025_ _$e142025_ _rel142016_))))
                 (if (##structure-instance-of? _relsrc142020_ 'gerbil#AST::t)
                     (_lp142018_
                      (let ((_$e142022_ (gx#stx-source _relsrc142020_)))
                        (if _$e142022_ _$e142022_ (gx#stx-e _relsrc142020_))))
                     (if (source-location-path? _relsrc142020_)
                         (path-directory (source-location-path _relsrc142020_))
                         (if (string? _relsrc142020_)
                             (path-directory _relsrc142020_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path142028_ (path-normalize _reldir142029_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path142034_)
        (let ((_rel142036_ '#f))
          (gx#core-resolve-path__% _stx-path142034_ _rel142036_))))
    (define gx#core-resolve-path
      (lambda _g149487_
        (let ((_g149486_ (##length _g149487_)))
          (cond ((##fx= _g149486_ 1)
                 (apply (lambda (_stx-path142034_)
                          (gx#core-resolve-path__0 _stx-path142034_))
                        _g149487_))
                ((##fx= _g149486_ 2)
                 (apply (lambda (_stx-path142038_ _rel142039_)
                          (gx#core-resolve-path__%
                           _stx-path142038_
                           _rel142039_))
                        _g149487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g149487_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr141971_ _ctx141972_)
        (let* ((_repr141973141980_ _repr141971_)
               (_E141975141984_
                (lambda () (error '"No clause matching" _repr141973141980_)))
               (_K141976141992_
                (lambda (_subs141987_ _phi141988_)
                  (let ((_subst141990_
                         (if (not (null? _subs141987_))
                             (list->table _subs141987_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst141990_
                     _ctx141972_
                     _phi141988_
                     '#f)))))
          (if (##pair? _repr141973141980_)
              (let ((_hd141977141995_ (##car _repr141973141980_))
                    (_tl141978141997_ (##cdr _repr141973141980_)))
                (let* ((_phi142000_ _hd141977141995_)
                       (_subs142002_ _tl141978141997_))
                  (_K141976141992_ _subs142002_ _phi142000_)))
              (_E141975141984_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr142007_)
        (let ((_ctx142009_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr142007_ _ctx142009_))))
    (define gx#core-deserialize-mark
      (lambda _g149489_
        (let ((_g149488_ (##length _g149489_)))
          (cond ((##fx= _g149488_ 1)
                 (apply (lambda (_repr142007_)
                          (gx#core-deserialize-mark__0 _repr142007_))
                        _g149489_))
                ((##fx= _g149488_ 2)
                 (apply (lambda (_repr142011_ _ctx142012_)
                          (gx#core-deserialize-mark__%
                           _repr142011_
                           _ctx142012_))
                        _g149489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g149489_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx141968_)
        (gx#stx-rewrap _stx141968_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx141966_)
        (gx#stx-unwrap__% _stx141966_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx141936_)
        (let* ((_g141937141945_ (gx#current-expander-marks))
               (_else141939141953_ (lambda () _stx141936_))
               (_K141941141958_
                (lambda (_hd141956_)
                  (gx#stx-apply-mark _stx141936_ _hd141956_))))
          (if (##pair? _g141937141945_)
              (let* ((_hd141942141961_ (##car _g141937141945_))
                     (_hd141964_ _hd141942141961_))
                (_K141941141958_ _hd141964_))
              (_else141939141953_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx141921_ _E141922_)
        (let ((_bind141924_ (gx#resolve-identifier__0 _stx141921_)))
          (if (##structure-direct-instance-of?
               _bind141924_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind141924_
               '4
               gx#syntax-binding::t
               '#f)
              (_E141922_ _stx141921_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx141929_)
        (let ((_E141931_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx141929_ _E141931_))))
    (define gx#syntax-local-e
      (lambda _g149491_
        (let ((_g149490_ (##length _g149491_)))
          (cond ((##fx= _g149490_ 1)
                 (apply (lambda (_stx141929_)
                          (gx#syntax-local-e__0 _stx141929_))
                        _g149491_))
                ((##fx= _g149490_ 2)
                 (apply (lambda (_stx141933_ _E141934_)
                          (gx#syntax-local-e__% _stx141933_ _E141934_))
                        _g149491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g149491_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx141905_ _E141906_)
        (let ((_e141908_ (gx#syntax-local-e__% _stx141905_ _E141906_)))
          (if (##structure-instance-of? _e141908_ 'gx#expander::t)
              (##structure-ref _e141908_ '1 gx#expander::t '#f)
              _e141908_))))
    (define gx#syntax-local-value__0
      (lambda (_stx141913_)
        (let ((_E141915_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx141913_ _E141915_))))
    (define gx#syntax-local-value
      (lambda _g149493_
        (let ((_g149492_ (##length _g149493_)))
          (cond ((##fx= _g149492_ 1)
                 (apply (lambda (_stx141913_)
                          (gx#syntax-local-value__0 _stx141913_))
                        _g149493_))
                ((##fx= _g149492_ 2)
                 (apply (lambda (_stx141917_ _E141918_)
                          (gx#syntax-local-value__% _stx141917_ _E141918_))
                        _g149493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g149493_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx141902_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx141902_)))))
