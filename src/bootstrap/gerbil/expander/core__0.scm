(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1709125254)
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
      (lambda _$args84732_
        (apply make-instance gx#expander-context::t _$args84732_)))
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
      (lambda _$args84729_
        (apply make-instance gx#root-context::t _$args84729_)))
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
      (lambda _$args84726_
        (apply make-instance gx#phi-context::t _$args84726_)))
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
      (lambda _$args84723_
        (apply make-instance gx#top-context::t _$args84723_)))
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
      (lambda _$args84720_
        (apply make-instance gx#module-context::t _$args84720_)))
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
      (lambda _$args84717_
        (apply make-instance gx#prelude-context::t _$args84717_)))
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
      (lambda _$args84714_
        (apply make-instance gx#local-context::t _$args84714_)))
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
      (lambda (_self84698_ _id84699_ _super84700_)
        (if (##fx< '3 (##structure-length _self84698_))
            (begin
              (##unchecked-structure-set!
               _self84698_
               _id84699_
               '1
               (##structure-type _self84698_)
               '#f)
              (##unchecked-structure-set!
               _self84698_
               (make-hash-table-eq)
               '2
               (##structure-type _self84698_)
               '#f)
              (##unchecked-structure-set!
               _self84698_
               _super84700_
               '3
               (##structure-type _self84698_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84698_
                   '3
                   (##vector-length _self84698_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84705_ _id84706_)
        (let ((_super84708_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84705_ _id84706_ _super84708_))))
    (define gx#phi-context:::init!
      (lambda _g84775_
        (let ((_g84774_ (##length _g84775_)))
          (cond ((##fx= _g84774_ 2)
                 (apply (lambda (_self84705_ _id84706_)
                          (gx#phi-context:::init!__0 _self84705_ _id84706_))
                        _g84775_))
                ((##fx= _g84774_ 3)
                 (apply (lambda (_self84710_ _id84711_ _super84712_)
                          (gx#phi-context:::init!__%
                           _self84710_
                           _id84711_
                           _super84712_))
                        _g84775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84775_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self84562_ _super84563_)
        (if (##fx< '3 (##structure-length _self84562_))
            (begin
              (##unchecked-structure-set!
               _self84562_
               (gensym 'L)
               '1
               (##structure-type _self84562_)
               '#f)
              (##unchecked-structure-set!
               _self84562_
               (make-hash-table-eq)
               '2
               (##structure-type _self84562_)
               '#f)
              (##unchecked-structure-set!
               _self84562_
               _super84563_
               '3
               (##structure-type _self84562_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84562_
                   '3
                   (##vector-length _self84562_)))))
    (define gx#local-context:::init!__0
      (lambda (_self84568_)
        (let ((_super84570_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self84568_ _super84570_))))
    (define gx#local-context:::init!
      (lambda _g84777_
        (let ((_g84776_ (##length _g84777_)))
          (cond ((##fx= _g84776_ 1)
                 (apply (lambda (_self84568_)
                          (gx#local-context:::init!__0 _self84568_))
                        _g84777_))
                ((##fx= _g84776_ 2)
                 (apply (lambda (_self84572_ _super84573_)
                          (gx#local-context:::init!__%
                           _self84572_
                           _super84573_))
                        _g84777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84777_))))))
    (bind-method!__% gx#local-context::t ':init! gx#local-context:::init! '#f)
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
      (lambda _$args84436_ (apply make-instance gx#binding::t _$args84436_)))
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
      (lambda _$args84433_
        (apply make-instance gx#runtime-binding::t _$args84433_)))
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
      (lambda _$args84430_
        (apply make-instance gx#local-binding::t _$args84430_)))
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
      (lambda _$args84427_
        (apply make-instance gx#top-binding::t _$args84427_)))
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
      (lambda _$args84424_
        (apply make-instance gx#module-binding::t _$args84424_)))
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
      (lambda _$args84421_
        (apply make-instance gx#extern-binding::t _$args84421_)))
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
      (lambda _$args84418_
        (apply make-instance gx#syntax-binding::t _$args84418_)))
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
      (lambda _$args84415_
        (apply make-instance gx#import-binding::t _$args84415_)))
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
      (lambda _$args84412_
        (apply make-instance gx#alias-binding::t _$args84412_)))
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
      (lambda _$args84409_ (apply make-instance gx#expander::t _$args84409_)))
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
      (lambda _$args84406_
        (apply make-instance gx#core-expander::t _$args84406_)))
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
      (lambda _$args84403_
        (apply make-instance gx#expression-form::t _$args84403_)))
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
      (lambda _$args84400_
        (apply make-instance gx#special-form::t _$args84400_)))
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
      (lambda _$args84397_
        (apply make-instance gx#definition-form::t _$args84397_)))
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
      (lambda _$args84394_
        (apply make-instance gx#top-special-form::t _$args84394_)))
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
      (lambda _$args84391_
        (apply make-instance gx#module-special-form::t _$args84391_)))
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
      (lambda _$args84388_
        (apply make-instance gx#feature-expander::t _$args84388_)))
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
      (lambda _$args84385_
        (apply make-instance gx#private-feature-expander::t _$args84385_)))
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
      (lambda _$args84382_
        (apply make-instance gx#reserved-expander::t _$args84382_)))
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
      (lambda _$args84379_
        (apply make-instance gx#macro-expander::t _$args84379_)))
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
      (lambda _$args84376_
        (apply make-instance gx#rename-macro-expander::t _$args84376_)))
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
      (lambda _$args84373_
        (apply make-instance gx#user-expander::t _$args84373_)))
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
      (lambda _$args84370_
        (apply make-instance gx#expander-mark::t _$args84370_)))
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
      (lambda (_ctx84355_ _message84356_ _stx84357_ . _details84358_)
        (let ((_ctx84368_
               (let ((_$e84360_ _ctx84355_))
                 (if _$e84360_
                     _$e84360_
                     (let ((_$e84363_ (gx#core-context-top__0)))
                       (if _$e84363_
                           ((lambda (_ctx84366_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx84366_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e84363_)
                           '#f))))))
          (raise (make-syntax-error
                  _message84356_
                  (cons _stx84357_ _details84358_)
                  _ctx84368_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx84342_ _expression?84343_)
        (gx#eval-syntax* (gx#core-expand__% _stx84342_ _expression?84343_))))
    (define gx#eval-syntax__0
      (lambda (_stx84348_)
        (let ((_expression?84350_ '#f))
          (gx#eval-syntax__% _stx84348_ _expression?84350_))))
    (define gx#eval-syntax
      (lambda _g84779_
        (let ((_g84778_ (##length _g84779_)))
          (cond ((##fx= _g84778_ 1)
                 (apply (lambda (_stx84348_) (gx#eval-syntax__0 _stx84348_))
                        _g84779_))
                ((##fx= _g84778_ 2)
                 (apply (lambda (_stx84352_ _expression?84353_)
                          (gx#eval-syntax__% _stx84352_ _expression?84353_))
                        _g84779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84779_))))))
    (define gx#eval-syntax*
      (lambda (_stx84339_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx84339_))))
    (define gx#core-expand__%
      (lambda (_stx84326_ _expression?84327_)
        (if _expression?84327_
            (gx#core-expand-expression _stx84326_)
            (gx#core-expand-top _stx84326_))))
    (define gx#core-expand__0
      (lambda (_stx84332_)
        (let ((_expression?84334_ '#f))
          (gx#core-expand__% _stx84332_ _expression?84334_))))
    (define gx#core-expand
      (lambda _g84781_
        (let ((_g84780_ (##length _g84781_)))
          (cond ((##fx= _g84780_ 1)
                 (apply (lambda (_stx84332_) (gx#core-expand__0 _stx84332_))
                        _g84781_))
                ((##fx= _g84780_ 2)
                 (apply (lambda (_stx84336_ _expression?84337_)
                          (gx#core-expand__% _stx84336_ _expression?84337_))
                        _g84781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84781_))))))
    (define gx#core-expand-top
      (lambda (_stx84293_)
        (let* ((_stx84295_ (gx#core-expand*__0 _stx84293_))
               (_e8429684303_ _stx84295_)
               (_E8429884307_
                (lambda () (gx#core-expand-expression _stx84295_)))
               (_E8429784321_
                (lambda ()
                  (if (gx#stx-pair? _e8429684303_)
                      (let ((_e8429984311_ (gx#syntax-e _e8429684303_)))
                        (let ((_hd8430084314_ (##car _e8429984311_))
                              (_tl8430184316_ (##cdr _e8429984311_)))
                          (let ((_form84319_ _hd8430084314_))
                            (if (gx#core-bound-identifier?__0 _form84319_)
                                _stx84295_
                                (_E8429884307_)))))
                      (_E8429884307_)))))
          (_E8429784321_))))
    (define gx#core-expand-expression
      (lambda (_stx84240_)
        (letrec ((_sealed-expression?84242_
                  (lambda (_hd84263_)
                    (if (gx#sealed-syntax? _hd84263_)
                        (let* ((_e8426484271_ _hd84263_)
                               (_E8426684275_ (lambda () '#f))
                               (_E8426584289_
                                (lambda ()
                                  (if (gx#stx-pair? _e8426484271_)
                                      (let ((_e8426784279_
                                             (gx#syntax-e _e8426484271_)))
                                        (let ((_hd8426884282_
                                               (##car _e8426784279_))
                                              (_tl8426984284_
                                               (##cdr _e8426784279_)))
                                          (let ((_form84287_ _hd8426884282_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form84287_
                                                 gx#expression-form-binding?)
                                                (_E8426684275_)))))
                                      (_E8426684275_)))))
                          (_E8426584289_))
                        '#f)))
                 (_illegal-expression84243_
                  (lambda (_hd84261_ . _g84782_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx84240_
                     _hd84261_)))
                 (_expand-e84244_
                  (lambda (_form84256_ _hd84257_)
                    (let ((_bind84259_
                           (if (##structure-instance-of?
                                _form84256_
                                'gx#binding::t)
                               _form84256_
                               (gx#resolve-identifier__0 _form84256_))))
                      (if (gx#core-expander-binding? _bind84259_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind84259_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd84257_
                            (gx#stx-source _stx84240_)))
                          (if (##structure-direct-instance-of?
                               _bind84259_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind84259_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd84257_
                                 (gx#stx-source _stx84240_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx84240_
                               _form84256_)))))))
          (let ((_hd84246_ (gx#core-expand-head _stx84240_)))
            (if (_sealed-expression?84242_ _hd84246_)
                _hd84246_
                (if (gx#stx-pair? _hd84246_)
                    (let* ((_form84248_ (gx#stx-car _hd84246_))
                           (_bind84250_
                            (if (gx#identifier? _form84248_)
                                (gx#resolve-identifier__0 _form84248_)
                                '#f)))
                      (if (or (not _bind84250_)
                              (not (gx#core-expander-binding? _bind84250_)))
                          (_expand-e84244_ '%%app (cons '%%app _hd84246_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind84250_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd84246_
                               _illegal-expression84243_)
                              (if (gx#expression-form-binding? _bind84250_)
                                  (_expand-e84244_ _bind84250_ _hd84246_)
                                  (if (gx#direct-special-form-binding?
                                       _bind84250_)
                                      (gx#core-expand-expression
                                       (_expand-e84244_ _bind84250_ _hd84246_))
                                      (_illegal-expression84243_
                                       _hd84246_))))))
                    (if (gx#core-bound-identifier?__0 _hd84246_)
                        (_illegal-expression84243_ _hd84246_)
                        (if (gx#identifier? _hd84246_)
                            (_expand-e84244_
                             '%%ref
                             (cons '%%ref (cons _hd84246_ '())))
                            (if (gx#stx-datum? _hd84246_)
                                (_expand-e84244_
                                 '%#quote
                                 (cons '%#quote (cons _hd84246_ '())))
                                (_illegal-expression84243_ _hd84246_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx84235_)
        (call-with-parameters
         (lambda ()
           (let ((_stx84238_ (gx#core-expand-expression _stx84235_)))
             (values _stx84238_ (gx#eval-syntax* _stx84238_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx84216_ _stop?84217_)
        (let _lp84219_ ((_stx84221_ _stx84216_))
          (if (_stop?84217_ _stx84221_)
              _stx84221_
              (let ((_rstx84223_ (gx#core-expand1 _stx84221_)))
                (if (eq? _stx84221_ _rstx84223_)
                    _stx84221_
                    (_lp84219_ _rstx84223_)))))))
    (define gx#core-expand*__0
      (lambda (_stx84228_)
        (let ((_stop?84230_ false))
          (gx#core-expand*__% _stx84228_ _stop?84230_))))
    (define gx#core-expand*
      (lambda _g84784_
        (let ((_g84783_ (##length _g84784_)))
          (cond ((##fx= _g84783_ 1)
                 (apply (lambda (_stx84228_) (gx#core-expand*__0 _stx84228_))
                        _g84784_))
                ((##fx= _g84783_ 2)
                 (apply (lambda (_stx84232_ _stop?84233_)
                          (gx#core-expand*__% _stx84232_ _stop?84233_))
                        _g84784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84784_))))))
    (define gx#core-expand1
      (lambda (_stx84172_)
        (letrec ((_step84174_
                  (lambda (_hd84211_)
                    (let ((_bind84213_ (gx#resolve-identifier__0 _hd84211_)))
                      (if (##structure-instance-of?
                           _bind84213_
                           'gx#runtime-binding::t)
                          _stx84172_
                          (if (##structure-direct-instance-of?
                               _bind84213_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind84213_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx84172_)
                              (if (not _bind84213_)
                                  _stx84172_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx84172_))))))))
          (let* ((_e8417584183_ _stx84172_)
                 (_E8418184187_ (lambda () _stx84172_))
                 (_E8417784193_
                  (lambda ()
                    (let ((_hd84191_ _e8417584183_))
                      (if (gx#identifier? _hd84191_)
                          (_step84174_ _hd84191_)
                          (_E8418184187_)))))
                 (_E8417684207_
                  (lambda ()
                    (if (gx#stx-pair? _e8417584183_)
                        (let ((_e8417884197_ (gx#syntax-e _e8417584183_)))
                          (let ((_hd8417984200_ (##car _e8417884197_))
                                (_tl8418084202_ (##cdr _e8417884197_)))
                            (let ((_hd84205_ _hd8417984200_))
                              (if (gx#identifier? _hd84205_)
                                  (_step84174_ _hd84205_)
                                  (_E8417784193_)))))
                        (_E8417784193_)))))
            (_E8417684207_)))))
    (define gx#core-expand-head
      (lambda (_stx84138_)
        (letrec ((_stop?84140_
                  (lambda (_stx84142_)
                    (let* ((_e8414384150_ _stx84142_)
                           (_E8414584154_ (lambda () '#f))
                           (_E8414484168_
                            (lambda ()
                              (if (gx#stx-pair? _e8414384150_)
                                  (let ((_e8414684158_
                                         (gx#syntax-e _e8414384150_)))
                                    (let ((_hd8414784161_
                                           (##car _e8414684158_))
                                          (_tl8414884163_
                                           (##cdr _e8414684158_)))
                                      (let ((_hd84166_ _hd8414784161_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd84166_)
                                            (_E8414584154_)))))
                                  (_E8414584154_)))))
                      (_E8414484168_)))))
          (gx#core-expand*__% _stx84138_ _stop?84140_))))
    (define gx#core-expand-block__%
      (lambda (_stx83944_
               _expand-special83945_
               _begin-form83946_
               _expand-e83947_)
        (letrec ((_expand-splice83949_
                  (lambda (_hd84112_ _body84113_ _rest84114_ _r84115_)
                    (if (gx#stx-list? _body84113_)
                        (_K83953_
                         (gx#stx-foldr cons _rest84114_ _body84113_)
                         _r84115_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83944_
                         _hd84112_))))
                 (_expand-cond-expand83950_
                  (lambda (_hd84108_ _rest84109_ _r84110_)
                    (_K83953_
                     (cons (gx#core-expand-cond-expand% _hd84108_) _rest84109_)
                     _r84110_)))
                 (_expand-include83951_
                  (lambda (_hd84057_ _rest84058_ _r84059_)
                    (let* ((_e8406084070_ _hd84057_)
                           (_E8406284074_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8406084070_)))
                           (_E8406184104_
                            (lambda ()
                              (if (gx#stx-pair? _e8406084070_)
                                  (let ((_e8406384078_
                                         (gx#syntax-e _e8406084070_)))
                                    (let ((_hd8406484081_
                                           (##car _e8406384078_))
                                          (_tl8406584083_
                                           (##cdr _e8406384078_)))
                                      (if (gx#stx-pair? _tl8406584083_)
                                          (let ((_e8406684086_
                                                 (gx#syntax-e _tl8406584083_)))
                                            (let ((_hd8406784089_
                                                   (##car _e8406684086_))
                                                  (_tl8406884091_
                                                   (##cdr _e8406684086_)))
                                              (let ((_path84094_
                                                     _hd8406784089_))
                                                (if (gx#stx-null?
                                                     _tl8406884091_)
                                                    (if (gx#stx-string?
                                                         _path84094_)
                                                        (let* ((_rpath84096_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path84094_
                         (gx#stx-source _hd84057_)))
                       (_block84098_
                        (gx#core-expand-include%__% _hd84057_ _rpath84096_))
                       (_rbody84101_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block84098_
                            _expand-special83945_
                            '#f
                            _expand-e83947_))
                         gx#current-expander-path
                         (cons _rpath84096_ (gx#current-expander-path)))))
                  (_K83953_ _rest84058_ (foldr1 cons _r84059_ _rbody84101_)))
                (_E8406284074_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8406284074_)))))
                                          (_E8406284074_))))
                                  (_E8406284074_)))))
                      (_E8406184104_))))
                 (_expand-expression83952_
                  (lambda (_hd84053_ _rest84054_ _r84055_)
                    (_K83953_
                     _rest84054_
                     (cons (_expand-e83947_ _hd84053_) _r84055_))))
                 (_K83953_
                  (lambda (_rest83983_ _r83984_)
                    (let* ((_e8398583992_ _rest83983_)
                           (_E8398783996_
                            (lambda ()
                              (if _begin-form83946_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83946_
                                    (reverse _r83984_))
                                   (gx#stx-source _stx83944_))
                                  _r83984_)))
                           (_E8398684049_
                            (lambda ()
                              (if (gx#stx-pair? _e8398583992_)
                                  (let ((_e8398884000_
                                         (gx#syntax-e _e8398583992_)))
                                    (let ((_hd8398984003_
                                           (##car _e8398884000_))
                                          (_tl8399084005_
                                           (##cdr _e8398884000_)))
                                      (let* ((_hd84008_ _hd8398984003_)
                                             (_rest84010_ _tl8399084005_))
                                        (if '#t
                                            (let* ((_hd84012_
                                                    (gx#core-expand-head
                                                     _hd84008_))
                                                   (_e8401384020_ _hd84012_)
                                                   (_E8401584024_
                                                    (lambda ()
                                                      (_expand-expression83952_
                                                       _hd84012_
                                                       _rest84010_
                                                       _r83984_)))
                                                   (_E8401484045_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8401384020_)
                                                          (let ((_e8401684028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8401384020_)))
                    (let ((_hd8401784031_ (##car _e8401684028_))
                          (_tl8401884033_ (##cdr _e8401684028_)))
                      (let* ((_form84036_ _hd8401784031_)
                             (_body84038_ _tl8401884033_))
                        (if '#t
                            (let ((_bind84040_
                                   (if (gx#identifier? _form84036_)
                                       (gx#resolve-identifier__0 _form84036_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind84040_)
                                  (let ((_$e84042_
                                         (##unchecked-structure-ref
                                          _bind84040_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e84042_)
                                        (_expand-splice83949_
                                         _hd84012_
                                         _body84038_
                                         _rest84010_
                                         _r83984_)
                                        (if (eq? '%#cond-expand _$e84042_)
                                            (_expand-cond-expand83950_
                                             _hd84012_
                                             _rest84010_
                                             _r83984_)
                                            (if (eq? '%#include _$e84042_)
                                                (_expand-include83951_
                                                 _hd84012_
                                                 _rest84010_
                                                 _r83984_)
                                                (_expand-special83945_
                                                 _hd84012_
                                                 _K83953_
                                                 _rest84010_
                                                 _r83984_)))))
                                  (_expand-expression83952_
                                   _hd84012_
                                   _rest84010_
                                   _r83984_)))
                            (_E8401584024_)))))
                  (_E8401584024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8401484045_))
                                            (_E8398783996_)))))
                                  (_E8398783996_)))))
                      (_E8398684049_)))))
          (let* ((_e8395483961_ _stx83944_)
                 (_E8395683965_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8395483961_)))
                 (_E8395583979_
                  (lambda ()
                    (if (gx#stx-pair? _e8395483961_)
                        (let ((_e8395783969_ (gx#syntax-e _e8395483961_)))
                          (let ((_hd8395883972_ (##car _e8395783969_))
                                (_tl8395983974_ (##cdr _e8395783969_)))
                            (let ((_body83977_ _tl8395983974_))
                              (if (gx#stx-list? _body83977_)
                                  (_K83953_ _body83977_ '())
                                  (_E8395683965_)))))
                        (_E8395683965_)))))
            (_E8395583979_)))))
    (define gx#core-expand-block__0
      (lambda (_stx84120_ _expand-special84121_)
        (let* ((_begin-form84123_ '%#begin)
               (_expand-e84125_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84120_
           _expand-special84121_
           _begin-form84123_
           _expand-e84125_))))
    (define gx#core-expand-block__1
      (lambda (_stx84127_ _expand-special84128_ _begin-form84129_)
        (let ((_expand-e84131_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84127_
           _expand-special84128_
           _begin-form84129_
           _expand-e84131_))))
    (define gx#core-expand-block
      (lambda _g84786_
        (let ((_g84785_ (##length _g84786_)))
          (cond ((##fx= _g84785_ 2)
                 (apply (lambda (_stx84120_ _expand-special84121_)
                          (gx#core-expand-block__0
                           _stx84120_
                           _expand-special84121_))
                        _g84786_))
                ((##fx= _g84785_ 3)
                 (apply (lambda (_stx84127_
                                 _expand-special84128_
                                 _begin-form84129_)
                          (gx#core-expand-block__1
                           _stx84127_
                           _expand-special84128_
                           _begin-form84129_))
                        _g84786_))
                ((##fx= _g84785_ 4)
                 (apply (lambda (_stx84133_
                                 _expand-special84134_
                                 _begin-form84135_
                                 _expand-e84136_)
                          (gx#core-expand-block__%
                           _stx84133_
                           _expand-special84134_
                           _begin-form84135_
                           _expand-e84136_))
                        _g84786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84786_))))))
    (define gx#core-expand-block*
      (lambda (_stx83892_ _expand-special83893_)
        (let* ((_g8389483905_
                (gx#core-expand-block__1 _stx83892_ _expand-special83893_ '#f))
               (_E8389883909_
                (lambda () (error '"No clause matching" _g8389483905_))))
          (let ((_K8390383940_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83892_)))
                (_K8390083926_ (lambda (_expr83924_) _expr83924_))
                (_K8389983915_
                 (lambda (_body83913_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83913_))
                    (gx#stx-source _stx83892_)))))
            (let ((_try-match8389683936_
                   (lambda ()
                     (if (##pair? _g8389483905_)
                         (let ((_tl8390283931_ (##cdr _g8389483905_))
                               (_hd8390183929_ (##car _g8389483905_)))
                           (if (##null? _tl8390283931_)
                               (let ((_expr83934_ _hd8390183929_))
                                 (_K8390083926_ _expr83934_))
                               (let ((_body83918_ _g8389483905_))
                                 (_K8389983915_ _body83918_))))
                         (let ((_body83918_ _g8389483905_))
                           (_K8389983915_ _body83918_))))))
              (if (##null? _g8389483905_)
                  (_K8390383940_)
                  (_try-match8389683936_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83720_)
        (letrec ((_satisfied?83722_
                  (lambda (_condition83820_)
                    (let* ((_e8382183836_ _condition83820_)
                           (_E8383183840_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8382183836_)))
                           (_E8382483859_
                            (lambda ()
                              (if (gx#stx-pair? _e8382183836_)
                                  (let ((_e8383283844_
                                         (gx#syntax-e _e8382183836_)))
                                    (let ((_hd8383383847_
                                           (##car _e8383283844_))
                                          (_tl8383483849_
                                           (##cdr _e8383283844_)))
                                      (let* ((_combinator83852_ _hd8383383847_)
                                             (_body83854_ _tl8383483849_))
                                        (if (gx#stx-list? _body83854_)
                                            (let ((_$e83856_
                                                   (gx#stx-e
                                                    _combinator83852_)))
                                              (if (eq? 'not _$e83856_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83722_
                                                        _body83854_))
                                                  (if (eq? 'and _$e83856_)
                                                      (gx#stx-andmap
                                                       _satisfied?83722_
                                                       _body83854_)
                                                      (if (eq? 'or _$e83856_)
                                                          (gx#stx-ormap
                                                           _satisfied?83722_
                                                           _body83854_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83856_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83854_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83720_
                       _combinator83852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8383183840_)))))
                                  (_E8383183840_))))
                           (_E8382383882_
                            (lambda ()
                              (if (gx#stx-pair? _e8382183836_)
                                  (let ((_e8382583863_
                                         (gx#syntax-e _e8382183836_)))
                                    (let ((_hd8382683866_
                                           (##car _e8382583863_))
                                          (_tl8382783868_
                                           (##cdr _e8382583863_)))
                                      (if (and (gx#identifier? _hd8382683866_)
                                               (gx#core-identifier=?
                                                _hd8382683866_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8382783868_)
                                              (let ((_e8382883871_
                                                     (gx#syntax-e
                                                      _tl8382783868_)))
                                                (let ((_hd8382983874_
                                                       (##car _e8382883871_))
                                                      (_tl8383083876_
                                                       (##cdr _e8382883871_)))
                                                  (let ((_expr83879_
                                                         _hd8382983874_))
                                                    (if (gx#stx-null?
                                                         _tl8383083876_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83879_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8382483859_))
                (_E8382483859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8382483859_))
                                          (_E8382483859_))))
                                  (_E8382483859_))))
                           (_E8382283888_
                            (lambda ()
                              (let ((_id83886_ _e8382183836_))
                                (if (gx#identifier? _id83886_)
                                    (gx#core-bound-identifier?__%
                                     _id83886_
                                     gx#feature-binding?)
                                    (_E8382383882_))))))
                      (_E8382283888_))))
                 (_loop83723_
                  (lambda (_rest83753_)
                    (let* ((_e8375483762_ _rest83753_)
                           (_E8376083766_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8375483762_)))
                           (_E8375683770_
                            (lambda ()
                              (if (gx#stx-null? _e8375483762_)
                                  (if '#t '() (_E8376083766_))
                                  (_E8376083766_))))
                           (_E8375583816_
                            (lambda ()
                              (if (gx#stx-pair? _e8375483762_)
                                  (let ((_e8375783774_
                                         (gx#syntax-e _e8375483762_)))
                                    (let ((_hd8375883777_
                                           (##car _e8375783774_))
                                          (_tl8375983779_
                                           (##cdr _e8375783774_)))
                                      (let* ((_hd83782_ _hd8375883777_)
                                             (_rest83784_ _tl8375983779_))
                                        (if '#t
                                            (let* ((_e8378583792_ _hd83782_)
                                                   (_E8378783796_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8378583792_)))
                                                   (_E8378683812_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8378583792_)
                                                          (let ((_e8378883800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8378583792_)))
                    (let ((_hd8378983803_ (##car _e8378883800_))
                          (_tl8379083805_ (##cdr _e8378883800_)))
                      (let* ((_condition83808_ _hd8378983803_)
                             (_body83810_ _tl8379083805_))
                        (if '#t
                            (if (gx#stx-eq? _condition83808_ 'else)
                                (if (gx#stx-null? _rest83784_)
                                    _body83810_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83720_
                                     _hd83782_))
                                (if (_satisfied?83722_ _condition83808_)
                                    _body83810_
                                    (_loop83723_ _rest83784_)))
                            (_E8378783796_)))))
                  (_E8378783796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8378683812_))
                                            (_E8375683770_)))))
                                  (_E8375683770_)))))
                      (_E8375583816_)))))
          (let* ((_e8372483731_ _stx83720_)
                 (_E8372683735_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8372483731_)))
                 (_E8372583749_
                  (lambda ()
                    (if (gx#stx-pair? _e8372483731_)
                        (let ((_e8372783739_ (gx#syntax-e _e8372483731_)))
                          (let ((_hd8372883742_ (##car _e8372783739_))
                                (_tl8372983744_ (##cdr _e8372783739_)))
                            (let ((_clauses83747_ _tl8372983744_))
                              (if (gx#stx-list? _clauses83747_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83723_ _clauses83747_))
                                  (_E8372683735_)))))
                        (_E8372683735_)))))
            (_E8372583749_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83663_ _rpath83664_)
        (let* ((_e8366583675_ _stx83663_)
               (_E8366783679_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8366583675_)))
               (_E8366683706_
                (lambda ()
                  (if (gx#stx-pair? _e8366583675_)
                      (let ((_e8366883683_ (gx#syntax-e _e8366583675_)))
                        (let ((_hd8366983686_ (##car _e8366883683_))
                              (_tl8367083688_ (##cdr _e8366883683_)))
                          (if (gx#stx-pair? _tl8367083688_)
                              (let ((_e8367183691_
                                     (gx#syntax-e _tl8367083688_)))
                                (let ((_hd8367283694_ (##car _e8367183691_))
                                      (_tl8367383696_ (##cdr _e8367183691_)))
                                  (let ((_path83699_ _hd8367283694_))
                                    (if (gx#stx-null? _tl8367383696_)
                                        (if (gx#stx-string? _path83699_)
                                            (let ((_rpath83704_
                                                   (let ((_$e83701_
                                                          _rpath83664_))
                                                     (if _$e83701_
                                                         _$e83701_
                                                         (gx#core-resolve-path__%
                                                          _path83699_
                                                          (gx#stx-source
                                                           _stx83663_))))))
                                              (if (member _rpath83704_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83663_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83704_))
                                                    (gx#stx-source
                                                     _stx83663_)))))
                                            (_E8366783679_))
                                        (_E8366783679_)))))
                              (_E8366783679_))))
                      (_E8366783679_)))))
          (_E8366683706_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83713_)
        (let ((_rpath83715_ '#f))
          (gx#core-expand-include%__% _stx83713_ _rpath83715_))))
    (define gx#core-expand-include%
      (lambda _g84788_
        (let ((_g84787_ (##length _g84788_)))
          (cond ((##fx= _g84787_ 1)
                 (apply (lambda (_stx83713_)
                          (gx#core-expand-include%__0 _stx83713_))
                        _g84788_))
                ((##fx= _g84787_ 2)
                 (apply (lambda (_stx83717_ _rpath83718_)
                          (gx#core-expand-include%__% _stx83717_ _rpath83718_))
                        _g84788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84788_))))))
    (define gx#core-apply-expander__%
      (lambda (_K83632_ _stx83633_ _method83634_)
        (if (procedure? _K83632_)
            (let ((_$e83636_ (gx#stx-source _stx83633_)))
              (if _$e83636_
                  ((lambda (_g8363883640_)
                     (gx#stx-wrap-source (_K83632_ _stx83633_) _g8363883640_))
                   _$e83636_)
                  (_K83632_ _stx83633_)))
            (let ((_$e83643_ (bound-method-ref _K83632_ _method83634_)))
              (if _$e83643_
                  ((lambda (_g8364583647_)
                     (gx#core-apply-expander__%
                      _g8364583647_
                      _stx83633_
                      _method83634_))
                   _$e83643_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx83633_
                   _method83634_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83653_ _stx83654_)
        (let ((_method83656_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83653_ _stx83654_ _method83656_))))
    (define gx#core-apply-expander
      (lambda _g84790_
        (let ((_g84789_ (##length _g84790_)))
          (cond ((##fx= _g84789_ 2)
                 (apply (lambda (_K83653_ _stx83654_)
                          (gx#core-apply-expander__0 _K83653_ _stx83654_))
                        _g84790_))
                ((##fx= _g84789_ 3)
                 (apply (lambda (_K83658_ _stx83659_ _method83660_)
                          (gx#core-apply-expander__%
                           _K83658_
                           _stx83659_
                           _method83660_))
                        _g84790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84790_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self83628_ _stx83629_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx83629_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self83481_ _stx83482_)
        (let* ((_self8348383489_ _self83481_)
               (_E8348583493_
                (lambda () (error '"No clause matching" _self8348383489_)))
               (_K8348683498_
                (lambda (_K83496_)
                  (gx#core-apply-expander__0 _K83496_ _stx83482_))))
          (if (##structure-instance-of? _self8348383489_ 'gx#core-macro::t)
              (let* ((_e8348783501_
                      (##unchecked-structure-ref
                       _self8348383489_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83504_ _e8348783501_))
                (_K8348683498_ _K83504_))
              (_E8348583493_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self83334_ _stx83335_)
        (if (gx#sealed-syntax? _stx83335_)
            _stx83335_
            (let* ((_self8333683342_ _self83334_)
                   (_E8333883346_
                    (lambda () (error '"No clause matching" _self8333683342_)))
                   (_K8333983351_
                    (lambda (_K83349_)
                      (gx#core-apply-expander__0 _K83349_ _stx83335_))))
              (if (##structure-instance-of?
                   _self8333683342_
                   'gx#core-expander::t)
                  (let* ((_e8334083354_
                          (##unchecked-structure-ref
                           _self8333683342_
                           '1
                           gx#expander::t
                           '#f))
                         (_K83357_ _e8334083354_))
                    (_K8333983351_ _K83357_))
                  (_E8333883346_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self83196_ _stx83197_ _top?83198_)
        (if (_top?83198_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self83196_ _stx83197_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx83197_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self83203_ _stx83204_)
        (let ((_top?83206_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self83203_
           _stx83204_
           _top?83206_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84792_
        (let ((_g84791_ (##length _g84792_)))
          (cond ((##fx= _g84791_ 2)
                 (apply (lambda (_self83203_ _stx83204_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self83203_
                           _stx83204_))
                        _g84792_))
                ((##fx= _g84791_ 3)
                 (apply (lambda (_self83208_ _stx83209_ _top?83210_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self83208_
                           _stx83209_
                           _top?83210_))
                        _g84792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84792_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self83070_ _stx83071_)
        (gx#top-special-form::apply-macro-expander__%
         _self83070_
         _stx83071_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82895_ _stx82896_)
        (let* ((_self8289782903_ _self82895_)
               (_E8289982907_
                (lambda () (error '"No clause matching" _self8289782903_)))
               (_K8290082940_
                (lambda (_id82910_)
                  (let* ((_e8291182918_ _stx82896_)
                         (_E8291382922_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8291182918_)))
                         (_E8291282936_
                          (lambda ()
                            (if (gx#stx-pair? _e8291182918_)
                                (let ((_e8291482926_
                                       (gx#syntax-e _e8291182918_)))
                                  (let ((_hd8291582929_ (##car _e8291482926_))
                                        (_tl8291682931_ (##cdr _e8291482926_)))
                                    (let ((_body82934_ _tl8291682931_))
                                      (if '#t
                                          (gx#core-cons _id82910_ _body82934_)
                                          (_E8291382922_)))))
                                (_E8291382922_)))))
                    (_E8291282936_)))))
          (if (##structure-instance-of?
               _self8289782903_
               'gx#rename-macro-expander::t)
              (let* ((_e8290182943_
                      (##unchecked-structure-ref
                       _self8289782903_
                       '1
                       gx#expander::t
                       '#f))
                     (_id82946_ _e8290182943_))
                (_K8290082940_ _id82946_))
              (_E8289982907_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82721_ _stx82722_ _method82723_)
        (let* ((_self8272482732_ _self82721_)
               (_E8272682736_
                (lambda () (error '"No clause matching" _self8272482732_)))
               (_K8272782743_
                (lambda (_phi82739_ _ctx82740_ _K82741_)
                  (gx#core-apply-user-macro
                   _K82741_
                   _stx82722_
                   _ctx82740_
                   _phi82739_
                   _method82723_))))
          (if (##structure-instance-of? _self8272482732_ 'gx#macro-expander::t)
              (let* ((_e8272882746_
                      (##unchecked-structure-ref
                       _self8272482732_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82749_ _e8272882746_)
                     (_e8272982751_
                      (##unchecked-structure-ref
                       _self8272482732_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx82754_ _e8272982751_)
                     (_e8273082756_
                      (##unchecked-structure-ref
                       _self8272482732_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi82759_ _e8273082756_))
                (_K8272782743_ _phi82759_ _ctx82754_ _K82749_))
              (_E8272682736_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82764_ _stx82765_)
        (let ((_method82767_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82764_
           _stx82765_
           _method82767_))))
    (define gx#core-apply-user-expander
      (lambda _g84794_
        (let ((_g84793_ (##length _g84794_)))
          (cond ((##fx= _g84793_ 2)
                 (apply (lambda (_self82764_ _stx82765_)
                          (gx#core-apply-user-expander__0
                           _self82764_
                           _stx82765_))
                        _g84794_))
                ((##fx= _g84793_ 3)
                 (apply (lambda (_self82769_ _stx82770_ _method82771_)
                          (gx#core-apply-user-expander__%
                           _self82769_
                           _stx82770_
                           _method82771_))
                        _g84794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84794_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82711_ _stx82712_ _ctx82713_ _phi82714_ _method82715_)
        (let ((_mark82717_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82713_
                _phi82714_
                _stx82712_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82711_
               (gx#stx-apply-mark _stx82712_ _mark82717_)
               _method82715_)
              _mark82717_))
           gx#current-expander-marks
           (cons _mark82717_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx82563_ _phi82564_ _ctx82565_)
        (let _lp82567_ ((_bind82569_
                         (gx#core-resolve-identifier__%
                          _stx82563_
                          _phi82564_
                          _ctx82565_)))
          (if (##structure-direct-instance-of?
               _bind82569_
               'gx#import-binding::t)
              (_lp82567_
               (##unchecked-structure-ref
                _bind82569_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind82569_
                   'gx#alias-binding::t)
                  (_lp82567_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind82569_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi82564_
                    _ctx82565_))
                  _bind82569_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx82574_)
        (let* ((_phi82576_ (gx#current-expander-phi))
               (_ctx82578_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82574_ _phi82576_ _ctx82578_))))
    (define gx#resolve-identifier__1
      (lambda (_stx82580_ _phi82581_)
        (let ((_ctx82583_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82580_ _phi82581_ _ctx82583_))))
    (define gx#resolve-identifier
      (lambda _g84796_
        (let ((_g84795_ (##length _g84796_)))
          (cond ((##fx= _g84795_ 1)
                 (apply (lambda (_stx82574_)
                          (gx#resolve-identifier__0 _stx82574_))
                        _g84796_))
                ((##fx= _g84795_ 2)
                 (apply (lambda (_stx82580_ _phi82581_)
                          (gx#resolve-identifier__1 _stx82580_ _phi82581_))
                        _g84796_))
                ((##fx= _g84795_ 3)
                 (apply (lambda (_stx82585_ _phi82586_ _ctx82587_)
                          (gx#resolve-identifier__%
                           _stx82585_
                           _phi82586_
                           _ctx82587_))
                        _g84796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84796_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx82521_ _val82522_ _rebind?82523_ _phi82524_ _ctx82525_)
        (let ((_rebind?82527_
               (if (not _rebind?82523_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?82523_) _rebind?82523_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx82521_)
           _val82522_
           _rebind?82527_
           _phi82524_
           _ctx82525_))))
    (define gx#bind-identifier!__0
      (lambda (_stx82532_ _val82533_)
        (let* ((_rebind?82535_ '#f)
               (_phi82537_ (gx#current-expander-phi))
               (_ctx82539_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82532_
           _val82533_
           _rebind?82535_
           _phi82537_
           _ctx82539_))))
    (define gx#bind-identifier!__1
      (lambda (_stx82541_ _val82542_ _rebind?82543_)
        (let* ((_phi82545_ (gx#current-expander-phi))
               (_ctx82547_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82541_
           _val82542_
           _rebind?82543_
           _phi82545_
           _ctx82547_))))
    (define gx#bind-identifier!__2
      (lambda (_stx82549_ _val82550_ _rebind?82551_ _phi82552_)
        (let ((_ctx82554_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82549_
           _val82550_
           _rebind?82551_
           _phi82552_
           _ctx82554_))))
    (define gx#bind-identifier!
      (lambda _g84798_
        (let ((_g84797_ (##length _g84798_)))
          (cond ((##fx= _g84797_ 2)
                 (apply (lambda (_stx82532_ _val82533_)
                          (gx#bind-identifier!__0 _stx82532_ _val82533_))
                        _g84798_))
                ((##fx= _g84797_ 3)
                 (apply (lambda (_stx82541_ _val82542_ _rebind?82543_)
                          (gx#bind-identifier!__1
                           _stx82541_
                           _val82542_
                           _rebind?82543_))
                        _g84798_))
                ((##fx= _g84797_ 4)
                 (apply (lambda (_stx82549_
                                 _val82550_
                                 _rebind?82551_
                                 _phi82552_)
                          (gx#bind-identifier!__2
                           _stx82549_
                           _val82550_
                           _rebind?82551_
                           _phi82552_))
                        _g84798_))
                ((##fx= _g84797_ 5)
                 (apply (lambda (_stx82556_
                                 _val82557_
                                 _rebind?82558_
                                 _phi82559_
                                 _ctx82560_)
                          (gx#bind-identifier!__%
                           _stx82556_
                           _val82557_
                           _rebind?82558_
                           _phi82559_
                           _ctx82560_))
                        _g84798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84798_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx82493_ _phi82494_ _ctx82495_)
        (let _lp82497_ ((_e82499_ _stx82493_)
                        (_marks82500_ (gx#current-expander-marks)))
          (if (symbol? _e82499_)
              (gx#core-resolve-binding
               _e82499_
               _phi82494_
               _phi82494_
               _ctx82495_
               (reverse _marks82500_))
              (if (gx#identifier-quote? _e82499_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e82499_ '1 gx#AST::t '#f)
                   _phi82494_
                   '0
                   (##unchecked-structure-ref
                    _e82499_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e82499_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e82499_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e82499_ '1 gx#AST::t '#f)
                       _phi82494_
                       _phi82494_
                       _ctx82495_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82499_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82500_))
                      (if (##structure-direct-instance-of?
                           _e82499_
                           'gx#syntax-wrap::t)
                          (_lp82497_
                           (##unchecked-structure-ref
                            _e82499_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e82499_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks82500_))
                          (if (##structure-instance-of?
                               _e82499_
                               'gerbil#AST::t)
                              (_lp82497_
                               (##unchecked-structure-ref
                                _e82499_
                                '1
                                gx#AST::t
                                '#f)
                               _marks82500_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx82493_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx82505_)
        (let* ((_phi82507_ (gx#current-expander-phi))
               (_ctx82509_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82505_ _phi82507_ _ctx82509_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx82511_ _phi82512_)
        (let ((_ctx82514_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82511_ _phi82512_ _ctx82514_))))
    (define gx#core-resolve-identifier
      (lambda _g84800_
        (let ((_g84799_ (##length _g84800_)))
          (cond ((##fx= _g84799_ 1)
                 (apply (lambda (_stx82505_)
                          (gx#core-resolve-identifier__0 _stx82505_))
                        _g84800_))
                ((##fx= _g84799_ 2)
                 (apply (lambda (_stx82511_ _phi82512_)
                          (gx#core-resolve-identifier__1
                           _stx82511_
                           _phi82512_))
                        _g84800_))
                ((##fx= _g84799_ 3)
                 (apply (lambda (_stx82516_ _phi82517_ _ctx82518_)
                          (gx#core-resolve-identifier__%
                           _stx82516_
                           _phi82517_
                           _ctx82518_))
                        _g84800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84800_))))))
    (define gx#core-resolve-binding
      (lambda (_id82406_ _phi82407_ _src-phi82408_ _ctx82409_ _marks82410_)
        (letrec ((_resolve82412_
                  (lambda (_ctx82480_ _src-phi82481_ _key82482_)
                    (let _lp82484_ ((_ctx82486_
                                     (gx#core-context-shift
                                      _ctx82480_
                                      _phi82407_))
                                    (_dphi82487_
                                     (fx- _phi82407_ _src-phi82481_)))
                      (let ((_$e82489_
                             (gx#core-context-resolve _ctx82486_ _key82482_)))
                        (if _$e82489_
                            (values _$e82489_)
                            (if (fxzero? _dphi82487_)
                                '#f
                                (if (fxpositive? _dphi82487_)
                                    (_lp82484_
                                     (gx#core-context-shift _ctx82486_ '-1)
                                     (fx- _dphi82487_ '1))
                                    (_lp82484_
                                     (gx#core-context-shift _ctx82486_ '1)
                                     (fx+ _dphi82487_ '1))))))))))
          (let _lp82414_ ((_ctx82416_ _ctx82409_)
                          (_src-phi82417_ _src-phi82408_)
                          (_rest82418_ _marks82410_))
            (let* ((_rest8241982427_ _rest82418_)
                   (_else8242182435_
                    (lambda ()
                      (_resolve82412_ _ctx82416_ _src-phi82417_ _id82406_)))
                   (_K8242382468_
                    (lambda (_rest82438_ _hd82439_)
                      (let* ((_hd8244082446_ _hd82439_)
                             (_E8244282450_
                              (lambda ()
                                (error '"No clause matching" _hd8244082446_)))
                             (_K8244382460_
                              (lambda (_subst82453_)
                                (let ((_$e82457_
                                       (let ((_key82455_
                                              (if _subst82453_
                                                  (hash-get
                                                   _subst82453_
                                                   _id82406_)
                                                  '#f)))
                                         (if _key82455_
                                             (_resolve82412_
                                              _ctx82416_
                                              _src-phi82417_
                                              _key82455_)
                                             '#f))))
                                  (if _$e82457_
                                      _$e82457_
                                      (_lp82414_
                                       (##unchecked-structure-ref
                                        _hd82439_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd82439_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest82438_))))))
                        (if (##structure-instance-of?
                             _hd8244082446_
                             'gx#expander-mark::t)
                            (let* ((_e8244482463_
                                    (##unchecked-structure-ref
                                     _hd8244082446_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst82466_ _e8244482463_))
                              (_K8244382460_ _subst82466_))
                            (_E8244282450_))))))
              (if (##pair? _rest8241982427_)
                  (let ((_hd8242482471_ (##car _rest8241982427_))
                        (_tl8242582473_ (##cdr _rest8241982427_)))
                    (let* ((_hd82476_ _hd8242482471_)
                           (_rest82478_ _tl8242582473_))
                      (_K8242382468_ _rest82478_ _hd82476_)))
                  (_else8242182435_)))))))
    (define gx#core-bind!__%
      (lambda (_key82282_ _val82283_ _rebind?82284_ _phi82285_ _ctx82286_)
        (letrec ((_update-binding82288_
                  (lambda (_xval82359_)
                    (if (or (_rebind?82284_ _ctx82286_ _xval82359_ _val82283_)
                            (and (##structure-direct-instance-of?
                                  _xval82359_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval82359_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val82283_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val82283_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval82359_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val82283_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val82283_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval82359_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val82283_
                        (if (and (##structure-direct-instance-of?
                                  _val82283_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val82283_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval82359_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val82283_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval82359_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval82359_
                            (if (and (##structure-direct-instance-of?
                                      _val82283_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval82359_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key82282_
                                 (cons (##unchecked-structure-ref
                                        _val82283_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val82283_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval82359_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval82359_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval82359_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval82359_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key82282_
                                 _val82283_
                                 _xval82359_))))))
                 (_gensubst82289_
                  (lambda (_subst82354_ _id82355_)
                    (let ((_eid82357_
                           (gensym (if (uninterned-symbol? _id82355_)
                                       '%
                                       _id82355_))))
                      (hash-put! _subst82354_ _id82355_ _eid82357_)
                      _eid82357_)))
                 (_subst!82290_
                  (lambda (_key82292_)
                    (let* ((_key8229382301_ _key82292_)
                           (_else8229582309_ (lambda () _key82292_))
                           (_K8229782342_
                            (lambda (_mark82312_ _id82313_)
                              (let* ((_mark8231482320_ _mark82312_)
                                     (_E8231682324_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8231482320_)))
                                     (_K8231782334_
                                      (lambda (_subst82327_)
                                        (if (not _subst82327_)
                                            (let ((_subst82329_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark82312_
                                               _subst82329_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst82289_
                                               _subst82329_
                                               _id82313_))
                                            (let ((_$e82331_
                                                   (hash-get
                                                    _subst82327_
                                                    _id82313_)))
                                              (if _$e82331_
                                                  (values _$e82331_)
                                                  (_gensubst82289_
                                                   _subst82327_
                                                   _id82313_)))))))
                                (if (##structure-instance-of?
                                     _mark8231482320_
                                     'gx#expander-mark::t)
                                    (let* ((_e8231882337_
                                            (##unchecked-structure-ref
                                             _mark8231482320_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst82340_ _e8231882337_))
                                      (_K8231782334_ _subst82340_))
                                    (_E8231682324_))))))
                      (if (##pair? _key8229382301_)
                          (let ((_hd8229882345_ (##car _key8229382301_))
                                (_tl8229982347_ (##cdr _key8229382301_)))
                            (let* ((_id82350_ _hd8229882345_)
                                   (_mark82352_ _tl8229982347_))
                              (_K8229782342_ _mark82352_ _id82350_)))
                          (_else8229582309_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx82286_ _phi82285_)
           (_subst!82290_ _key82282_)
           _val82283_
           _update-binding82288_))))
    (define gx#core-bind!__0
      (lambda (_key82376_ _val82377_)
        (let* ((_rebind?82379_ false)
               (_phi82381_ (gx#current-expander-phi))
               (_ctx82383_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82376_
           _val82377_
           _rebind?82379_
           _phi82381_
           _ctx82383_))))
    (define gx#core-bind!__1
      (lambda (_key82385_ _val82386_ _rebind?82387_)
        (let* ((_phi82389_ (gx#current-expander-phi))
               (_ctx82391_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82385_
           _val82386_
           _rebind?82387_
           _phi82389_
           _ctx82391_))))
    (define gx#core-bind!__2
      (lambda (_key82393_ _val82394_ _rebind?82395_ _phi82396_)
        (let ((_ctx82398_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82393_
           _val82394_
           _rebind?82395_
           _phi82396_
           _ctx82398_))))
    (define gx#core-bind!
      (lambda _g84802_
        (let ((_g84801_ (##length _g84802_)))
          (cond ((##fx= _g84801_ 2)
                 (apply (lambda (_key82376_ _val82377_)
                          (gx#core-bind!__0 _key82376_ _val82377_))
                        _g84802_))
                ((##fx= _g84801_ 3)
                 (apply (lambda (_key82385_ _val82386_ _rebind?82387_)
                          (gx#core-bind!__1
                           _key82385_
                           _val82386_
                           _rebind?82387_))
                        _g84802_))
                ((##fx= _g84801_ 4)
                 (apply (lambda (_key82393_
                                 _val82394_
                                 _rebind?82395_
                                 _phi82396_)
                          (gx#core-bind!__2
                           _key82393_
                           _val82394_
                           _rebind?82395_
                           _phi82396_))
                        _g84802_))
                ((##fx= _g84801_ 5)
                 (apply (lambda (_key82400_
                                 _val82401_
                                 _rebind?82402_
                                 _phi82403_
                                 _ctx82404_)
                          (gx#core-bind!__%
                           _key82400_
                           _val82401_
                           _rebind?82402_
                           _phi82403_
                           _ctx82404_))
                        _g84802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84802_))))))
    (define gx#core-identifier-key
      (lambda (_stx82216_)
        (if (symbol? _stx82216_)
            (let* ((_g8221782225_ (gx#current-expander-marks))
                   (_else8221982233_ (lambda () _stx82216_))
                   (_K8222182238_
                    (lambda (_hd82236_) (cons _stx82216_ _hd82236_))))
              (if (##pair? _g8221782225_)
                  (let* ((_hd8222282241_ (##car _g8221782225_))
                         (_hd82244_ _hd8222282241_))
                    (_K8222182238_ _hd82244_))
                  (_else8221982233_)))
            (if (gx#identifier? _stx82216_)
                (let* ((_id82246_ (gx#syntax-local-unwrap _stx82216_))
                       (_eid82248_ (gx#stx-e _id82246_))
                       (_marks82250_ (gx#stx-identifier-marks* _id82246_)))
                  (let* ((_marks8225282260_ _marks82250_)
                         (_else8225482268_ (lambda () _eid82248_))
                         (_K8225682273_
                          (lambda (_hd82271_) (cons _eid82248_ _hd82271_))))
                    (if (##pair? _marks8225282260_)
                        (let* ((_hd8225782276_ (##car _marks8225282260_))
                               (_hd82279_ _hd8225782276_))
                          (_K8225682273_ _hd82279_))
                        (_else8225482268_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx82216_)))))
    (define gx#core-context-shift
      (lambda (_ctx82161_ _phi82162_)
        (letrec ((_make-phi82164_
                  (lambda (_super82214_)
                    (let ((__obj84773
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84773
                       (gensym 'phi)
                       _super82214_)
                      __obj84773)))
                 (_make-phi/up82165_
                  (lambda (_ctx82209_ _super82210_)
                    (let ((_ctx+182212_ (_make-phi82164_ _super82210_)))
                      (##unchecked-structure-set!
                       _ctx82209_
                       _ctx+182212_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+182212_
                       _ctx82209_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+182212_)))
                 (_make-phi/down82166_
                  (lambda (_ctx82204_ _super82205_)
                    (let ((_ctx-182207_ (_make-phi82164_ _super82205_)))
                      (##unchecked-structure-set!
                       _ctx-182207_
                       _ctx82204_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx82204_
                       _ctx-182207_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-182207_)))
                 (_shift82167_
                  (lambda (_ctx82188_
                           _delta82189_
                           _make-delta-context82190_
                           _phi82191_
                           _K82192_)
                    (let ((_$e82194_
                           (##unchecked-structure-ref
                            _ctx82188_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e82194_
                          ((lambda (_super82197_)
                             (let* ((_super82199_
                                     (_K82192_ _super82197_ _delta82189_))
                                    (_ctx+d82201_
                                     (_make-delta-context82190_
                                      _ctx82188_
                                      _super82199_)))
                               (_K82192_
                                _ctx+d82201_
                                (fx- _phi82191_ _delta82189_))))
                           _$e82194_)
                          (error '"Bad context" _ctx82188_))))))
          (let _K82169_ ((_ctx82171_ _ctx82161_) (_phi82172_ _phi82162_))
            (if (fxzero? _phi82172_)
                _ctx82171_
                (if (fx> (##vector-length _ctx82171_) '3)
                    (if (fxpositive? _phi82172_)
                        (let ((_$e82174_
                               (##unchecked-structure-ref
                                _ctx82171_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e82174_
                              ((lambda (_g8217682178_)
                                 (_K82169_ _g8217682178_ (fx- _phi82172_ '1)))
                               _$e82174_)
                              (_shift82167_
                               _ctx82171_
                               '1
                               _make-phi/up82165_
                               _phi82172_
                               _K82169_)))
                        (let ((_$e82181_
                               (##unchecked-structure-ref
                                _ctx82171_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e82181_
                              ((lambda (_g8218382185_)
                                 (_K82169_ _g8218382185_ (fx+ _phi82172_ '1)))
                               _$e82181_)
                              (_shift82167_
                               _ctx82171_
                               '-1
                               _make-phi/down82166_
                               _phi82172_
                               _K82169_))))
                    _ctx82171_))))))
    (define gx#core-context-get
      (lambda (_ctx82158_ _key82159_)
        (hash-get
         (##unchecked-structure-ref _ctx82158_ '2 gx#expander-context::t '#f)
         _key82159_)))
    (define gx#core-context-put!
      (lambda (_ctx82154_ _key82155_ _val82156_)
        (hash-put!
         (##unchecked-structure-ref _ctx82154_ '2 gx#expander-context::t '#f)
         _key82155_
         _val82156_)))
    (define gx#core-context-resolve
      (lambda (_ctx82141_ _key82142_)
        (let _lp82144_ ((_ctx82146_ _ctx82141_))
          (let ((_$e82148_ (gx#core-context-get _ctx82146_ _key82142_)))
            (if _$e82148_
                (values _$e82148_)
                (let ((_$e82151_
                       (if (fx> (##vector-length _ctx82146_) '3)
                           (##unchecked-structure-ref
                            _ctx82146_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e82151_ (_lp82144_ _$e82151_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx82131_ _key82132_ _val82133_ _rebind82134_)
        (let ((_$e82136_ (gx#core-context-get _ctx82131_ _key82132_)))
          (if _$e82136_
              ((lambda (_xval82139_)
                 (gx#core-context-put!
                  _ctx82131_
                  _key82132_
                  (_rebind82134_ _xval82139_)))
               _$e82136_)
              (gx#core-context-put! _ctx82131_ _key82132_ _val82133_)))))
    (define gx#core-context-top__%
      (lambda (_ctx82109_ _stop?82110_)
        (let _lp82112_ ((_ctx82114_ _ctx82109_))
          (if (_stop?82110_ _ctx82114_)
              _ctx82114_
              (if (##structure-instance-of? _ctx82114_ 'gx#context-phi::t)
                  (_lp82112_
                   (##unchecked-structure-ref
                    _ctx82114_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx82120_ (gx#current-expander-context))
               (_stop?82122_ gx#top-context?))
          (gx#core-context-top__% _ctx82120_ _stop?82122_))))
    (define gx#core-context-top__1
      (lambda (_ctx82124_)
        (let ((_stop?82126_ gx#top-context?))
          (gx#core-context-top__% _ctx82124_ _stop?82126_))))
    (define gx#core-context-top
      (lambda _g84804_
        (let ((_g84803_ (##length _g84804_)))
          (cond ((##fx= _g84803_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84804_))
                ((##fx= _g84803_ 1)
                 (apply (lambda (_ctx82124_)
                          (gx#core-context-top__1 _ctx82124_))
                        _g84804_))
                ((##fx= _g84803_ 2)
                 (apply (lambda (_ctx82128_ _stop?82129_)
                          (gx#core-context-top__% _ctx82128_ _stop?82129_))
                        _g84804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84804_))))))
    (define gx#core-context-root__%
      (lambda (_ctx82094_)
        (let _lp82096_ ((_ctx82098_ _ctx82094_))
          (if (##structure-instance-of? _ctx82098_ 'gx#context-phi::t)
              (_lp82096_
               (##unchecked-structure-ref _ctx82098_ '3 gx#phi-context::t '#f))
              _ctx82098_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx82104_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx82104_))))
    (define gx#core-context-root
      (lambda _g84806_
        (let ((_g84805_ (##length _g84806_)))
          (cond ((##fx= _g84805_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84806_))
                ((##fx= _g84805_ 1)
                 (apply (lambda (_ctx82106_)
                          (gx#core-context-root__% _ctx82106_))
                        _g84806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84806_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx82075_ . __8207282076_)
        (let ((_$e82079_ (gx#current-expander-allow-rebind?)))
          (if _$e82079_
              _$e82079_
              (if (##structure-instance-of? _ctx82075_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx82075_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx82075_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx82086_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx82086_))))
    (define gx#core-context-rebind?
      (lambda _g84808_
        (let ((_g84807_ (##length _g84808_)))
          (cond ((##fx= _g84807_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84808_))
                ((##fx= _g84807_ 1)
                 (apply (lambda (_ctx82088_)
                          (gx#core-context-rebind?__% _ctx82088_))
                        _g84808_))
                ((##fx>= _g84807_ 1)
                 (apply gx#core-context-rebind?__% _g84808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84808_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx82058_)
        (let ((_$e82060_ (gx#core-context-top__1 _ctx82058_)))
          (if _$e82060_
              ((lambda (_ctx82063_)
                 (if (##structure-instance-of?
                      _ctx82063_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx82063_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e82060_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx82069_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx82069_))))
    (define gx#core-context-namespace
      (lambda _g84810_
        (let ((_g84809_ (##length _g84810_)))
          (cond ((##fx= _g84809_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84810_))
                ((##fx= _g84809_ 1)
                 (apply (lambda (_ctx82071_)
                          (gx#core-context-namespace__% _ctx82071_))
                        _g84810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84810_))))))
    (define gx#expander-binding?__%
      (lambda (_bind82044_ _is?82045_)
        (if (##structure-direct-instance-of? _bind82044_ 'gx#syntax-binding::t)
            (_is?82045_
             (##unchecked-structure-ref
              _bind82044_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind82050_)
        (let ((_is?82052_ gx#expander?))
          (gx#expander-binding?__% _bind82050_ _is?82052_))))
    (define gx#expander-binding?
      (lambda _g84812_
        (let ((_g84811_ (##length _g84812_)))
          (cond ((##fx= _g84811_ 1)
                 (apply (lambda (_bind82050_)
                          (gx#expander-binding?__0 _bind82050_))
                        _g84812_))
                ((##fx= _g84811_ 2)
                 (apply (lambda (_bind82054_ _is?82055_)
                          (gx#expander-binding?__% _bind82054_ _is?82055_))
                        _g84812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84812_))))))
    (define gx#core-expander-binding?
      (lambda (_bind82041_)
        (gx#expander-binding?__% _bind82041_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind82039_)
        (gx#expander-binding?__% _bind82039_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind82033_)
        (letrec ((_direct-special-form?82035_
                  (lambda (_obj82037_)
                    (##structure-direct-instance-of?
                     _obj82037_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind82033_ _direct-special-form?82035_))))
    (define gx#special-form-binding?
      (lambda (_bind82031_)
        (gx#expander-binding?__% _bind82031_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind82022_)
        (letrec ((_feature?82024_
                  (lambda (_e82026_)
                    (let ((_$e82028_
                           (##structure-instance-of?
                            _e82026_
                            'gx#feature-expander::t)))
                      (if _$e82028_
                          _$e82028_
                          (##structure-instance-of?
                           _e82026_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind82022_ _feature?82024_))))
    (define gx#private-feature-binding?
      (lambda (_bind82020_)
        (gx#expander-binding?__% _bind82020_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id82007_ _bound?82008_)
        (if (gx#identifier? _id82007_)
            (_bound?82008_ (gx#resolve-identifier__0 _id82007_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id82013_)
        (let ((_bound?82015_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id82013_ _bound?82015_))))
    (define gx#core-bound-identifier?
      (lambda _g84814_
        (let ((_g84813_ (##length _g84814_)))
          (cond ((##fx= _g84813_ 1)
                 (apply (lambda (_id82013_)
                          (gx#core-bound-identifier?__0 _id82013_))
                        _g84814_))
                ((##fx= _g84813_ 2)
                 (apply (lambda (_id82017_ _bound?82018_)
                          (gx#core-bound-identifier?__%
                           _id82017_
                           _bound?82018_))
                        _g84814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84814_))))))
    (define gx#core-identifier=?
      (lambda (_x81997_ _y81998_)
        (letrec ((_y=?82000_
                  (lambda (_xid82004_)
                    ((if (list? _y81998_) memq eq?) _xid82004_ _y81998_))))
          (let ((_bind82002_ (gx#resolve-identifier__0 _x81997_)))
            (if (##structure-instance-of? _bind82002_ 'gx#binding::t)
                (_y=?82000_
                 (##unchecked-structure-ref _bind82002_ '1 gx#binding::t '#f))
                (_y=?82000_ (gx#stx-e _x81997_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e81995_)
        (if (interned-symbol? _e81995_)
            (string-index__0 (symbol->string _e81995_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81950_ _src81951_ _ctx81952_ _marks81953_)
        (if (##structure? _stx81950_)
            (let ((_$e81955_ (gx#sealed-syntax-unwrap _stx81950_)))
              (if _$e81955_
                  (values _$e81955_)
                  (if (gx#identifier? _stx81950_)
                      (let ((_id81958_
                             (gx#stx-unwrap__% _stx81950_ _marks81953_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81958_ '1 gx#AST::t '#f)
                         (let ((_$e81960_
                                (##unchecked-structure-ref
                                 _id81958_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e81960_ _$e81960_ _src81951_))
                         _ctx81952_
                         (##unchecked-structure-ref
                          _id81958_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81950_)
                       (let ((_$e81963_ (gx#stx-source _stx81950_)))
                         (if _$e81963_ _$e81963_ _src81951_))
                       _ctx81952_
                       (reverse _marks81953_)))))
            (##structure
             gx#syntax-quote::t
             _stx81950_
             _src81951_
             _ctx81952_
             (reverse _marks81953_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81969_)
        (let* ((_src81971_ '#f)
               (_ctx81973_ (gx#current-expander-context))
               (_marks81975_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81969_
           _src81971_
           _ctx81973_
           _marks81975_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81977_ _src81978_)
        (let* ((_ctx81980_ (gx#current-expander-context))
               (_marks81982_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81977_
           _src81978_
           _ctx81980_
           _marks81982_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81984_ _src81985_ _ctx81986_)
        (let ((_marks81988_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81984_
           _src81985_
           _ctx81986_
           _marks81988_))))
    (define gx#core-quote-syntax
      (lambda _g84816_
        (let ((_g84815_ (##length _g84816_)))
          (cond ((##fx= _g84815_ 1)
                 (apply (lambda (_stx81969_)
                          (gx#core-quote-syntax__0 _stx81969_))
                        _g84816_))
                ((##fx= _g84815_ 2)
                 (apply (lambda (_stx81977_ _src81978_)
                          (gx#core-quote-syntax__1 _stx81977_ _src81978_))
                        _g84816_))
                ((##fx= _g84815_ 3)
                 (apply (lambda (_stx81984_ _src81985_ _ctx81986_)
                          (gx#core-quote-syntax__2
                           _stx81984_
                           _src81985_
                           _ctx81986_))
                        _g84816_))
                ((##fx= _g84815_ 4)
                 (apply (lambda (_stx81990_ _src81991_ _ctx81992_ _marks81993_)
                          (gx#core-quote-syntax__%
                           _stx81990_
                           _src81991_
                           _ctx81992_
                           _marks81993_))
                        _g84816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84816_))))))
    (define gx#core-cons
      (lambda (_hd81946_ _tl81947_)
        (cons (gx#core-quote-syntax__0 _hd81946_) _tl81947_)))
    (define gx#core-list
      (lambda (_hd81943_ . _rest81944_)
        (cons (gx#core-quote-syntax__0 _hd81943_) _rest81944_)))
    (define gx#core-cons*
      (lambda (_hd81940_ . _rest81941_)
        (apply cons* (gx#core-quote-syntax__0 _hd81940_) _rest81941_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81914_ _rel81915_)
        (let ((_path81927_ (gx#stx-e _stx-path81914_))
              (_reldir81928_
               (let _lp81917_ ((_relsrc81919_
                                (let ((_$e81924_
                                       (gx#stx-source _stx-path81914_)))
                                  (if _$e81924_ _$e81924_ _rel81915_))))
                 (if (##structure-instance-of? _relsrc81919_ 'gerbil#AST::t)
                     (_lp81917_
                      (let ((_$e81921_ (gx#stx-source _relsrc81919_)))
                        (if _$e81921_ _$e81921_ (gx#stx-e _relsrc81919_))))
                     (if (source-location-path? _relsrc81919_)
                         (path-directory (source-location-path _relsrc81919_))
                         (if (string? _relsrc81919_)
                             (path-directory _relsrc81919_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81927_ (path-normalize _reldir81928_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81933_)
        (let ((_rel81935_ '#f))
          (gx#core-resolve-path__% _stx-path81933_ _rel81935_))))
    (define gx#core-resolve-path
      (lambda _g84818_
        (let ((_g84817_ (##length _g84818_)))
          (cond ((##fx= _g84817_ 1)
                 (apply (lambda (_stx-path81933_)
                          (gx#core-resolve-path__0 _stx-path81933_))
                        _g84818_))
                ((##fx= _g84817_ 2)
                 (apply (lambda (_stx-path81937_ _rel81938_)
                          (gx#core-resolve-path__% _stx-path81937_ _rel81938_))
                        _g84818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84818_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81870_ _ctx81871_)
        (let* ((_repr8187281879_ _repr81870_)
               (_E8187481883_
                (lambda () (error '"No clause matching" _repr8187281879_)))
               (_K8187581891_
                (lambda (_subs81886_ _phi81887_)
                  (let ((_subst81889_
                         (if (not (null? _subs81886_))
                             (list->hash-table-eq _subs81886_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81889_
                     _ctx81871_
                     _phi81887_
                     '#f)))))
          (if (##pair? _repr8187281879_)
              (let ((_hd8187681894_ (##car _repr8187281879_))
                    (_tl8187781896_ (##cdr _repr8187281879_)))
                (let* ((_phi81899_ _hd8187681894_)
                       (_subs81901_ _tl8187781896_))
                  (_K8187581891_ _subs81901_ _phi81899_)))
              (_E8187481883_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81906_)
        (let ((_ctx81908_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81906_ _ctx81908_))))
    (define gx#core-deserialize-mark
      (lambda _g84820_
        (let ((_g84819_ (##length _g84820_)))
          (cond ((##fx= _g84819_ 1)
                 (apply (lambda (_repr81906_)
                          (gx#core-deserialize-mark__0 _repr81906_))
                        _g84820_))
                ((##fx= _g84819_ 2)
                 (apply (lambda (_repr81910_ _ctx81911_)
                          (gx#core-deserialize-mark__% _repr81910_ _ctx81911_))
                        _g84820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84820_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81867_)
        (gx#stx-rewrap _stx81867_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81865_)
        (gx#stx-unwrap__% _stx81865_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81835_)
        (let* ((_g8183681844_ (gx#current-expander-marks))
               (_else8183881852_ (lambda () _stx81835_))
               (_K8184081857_
                (lambda (_hd81855_) (gx#stx-apply-mark _stx81835_ _hd81855_))))
          (if (##pair? _g8183681844_)
              (let* ((_hd8184181860_ (##car _g8183681844_))
                     (_hd81863_ _hd8184181860_))
                (_K8184081857_ _hd81863_))
              (_else8183881852_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81820_ _E81821_)
        (let ((_bind81823_ (gx#resolve-identifier__0 _stx81820_)))
          (if (##structure-direct-instance-of?
               _bind81823_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind81823_
               '4
               gx#syntax-binding::t
               '#f)
              (_E81821_ _stx81820_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81828_)
        (let ((_E81830_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81828_ _E81830_))))
    (define gx#syntax-local-e
      (lambda _g84822_
        (let ((_g84821_ (##length _g84822_)))
          (cond ((##fx= _g84821_ 1)
                 (apply (lambda (_stx81828_) (gx#syntax-local-e__0 _stx81828_))
                        _g84822_))
                ((##fx= _g84821_ 2)
                 (apply (lambda (_stx81832_ _E81833_)
                          (gx#syntax-local-e__% _stx81832_ _E81833_))
                        _g84822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84822_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81804_ _E81805_)
        (let ((_e81807_ (gx#syntax-local-e__% _stx81804_ _E81805_)))
          (if (##structure-instance-of? _e81807_ 'gx#expander::t)
              (##structure-ref _e81807_ '1 gx#expander::t '#f)
              _e81807_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81812_)
        (let ((_E81814_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81812_ _E81814_))))
    (define gx#syntax-local-value
      (lambda _g84824_
        (let ((_g84823_ (##length _g84824_)))
          (cond ((##fx= _g84823_ 1)
                 (apply (lambda (_stx81812_)
                          (gx#syntax-local-value__0 _stx81812_))
                        _g84824_))
                ((##fx= _g84823_ 2)
                 (apply (lambda (_stx81816_ _E81817_)
                          (gx#syntax-local-value__% _stx81816_ _E81817_))
                        _g84824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84824_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81801_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81801_)))))
