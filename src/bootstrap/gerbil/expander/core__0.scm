(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708451993)
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
      (lambda _$args81321_
        (apply make-instance gx#expander-context::t _$args81321_)))
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
      (lambda _$args81318_
        (apply make-instance gx#root-context::t _$args81318_)))
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
      (lambda _$args81315_
        (apply make-instance gx#phi-context::t _$args81315_)))
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
      (lambda _$args81312_
        (apply make-instance gx#top-context::t _$args81312_)))
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
      (lambda _$args81309_
        (apply make-instance gx#module-context::t _$args81309_)))
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
      (lambda _$args81306_
        (apply make-instance gx#prelude-context::t _$args81306_)))
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
      (lambda _$args81303_
        (apply make-instance gx#local-context::t _$args81303_)))
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
      (lambda (_self81287_ _id81288_ _super81289_)
        (if (##fx< '3 (##structure-length _self81287_))
            (begin
              (##unchecked-structure-set!
               _self81287_
               _id81288_
               '1
               (##structure-type _self81287_)
               '#f)
              (##unchecked-structure-set!
               _self81287_
               (make-hash-table-eq)
               '2
               (##structure-type _self81287_)
               '#f)
              (##unchecked-structure-set!
               _self81287_
               _super81289_
               '3
               (##structure-type _self81287_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self81287_
                   '3
                   (##vector-length _self81287_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self81294_ _id81295_)
        (let ((_super81297_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self81294_ _id81295_ _super81297_))))
    (define gx#phi-context:::init!
      (lambda _g81364_
        (let ((_g81363_ (##length _g81364_)))
          (cond ((##fx= _g81363_ 2)
                 (apply (lambda (_self81294_ _id81295_)
                          (gx#phi-context:::init!__0 _self81294_ _id81295_))
                        _g81364_))
                ((##fx= _g81363_ 3)
                 (apply (lambda (_self81299_ _id81300_ _super81301_)
                          (gx#phi-context:::init!__%
                           _self81299_
                           _id81300_
                           _super81301_))
                        _g81364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g81364_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self81151_ _super81152_)
        (if (##fx< '3 (##structure-length _self81151_))
            (begin
              (##unchecked-structure-set!
               _self81151_
               (gensym 'L)
               '1
               (##structure-type _self81151_)
               '#f)
              (##unchecked-structure-set!
               _self81151_
               (make-hash-table-eq)
               '2
               (##structure-type _self81151_)
               '#f)
              (##unchecked-structure-set!
               _self81151_
               _super81152_
               '3
               (##structure-type _self81151_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self81151_
                   '3
                   (##vector-length _self81151_)))))
    (define gx#local-context:::init!__0
      (lambda (_self81157_)
        (let ((_super81159_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self81157_ _super81159_))))
    (define gx#local-context:::init!
      (lambda _g81366_
        (let ((_g81365_ (##length _g81366_)))
          (cond ((##fx= _g81365_ 1)
                 (apply (lambda (_self81157_)
                          (gx#local-context:::init!__0 _self81157_))
                        _g81366_))
                ((##fx= _g81365_ 2)
                 (apply (lambda (_self81161_ _super81162_)
                          (gx#local-context:::init!__%
                           _self81161_
                           _super81162_))
                        _g81366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g81366_))))))
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
      (lambda _$args81025_ (apply make-instance gx#binding::t _$args81025_)))
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
      (lambda _$args81022_
        (apply make-instance gx#runtime-binding::t _$args81022_)))
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
      (lambda _$args81019_
        (apply make-instance gx#local-binding::t _$args81019_)))
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
      (lambda _$args81016_
        (apply make-instance gx#top-binding::t _$args81016_)))
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
      (lambda _$args81013_
        (apply make-instance gx#module-binding::t _$args81013_)))
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
      (lambda _$args81010_
        (apply make-instance gx#extern-binding::t _$args81010_)))
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
      (lambda _$args81007_
        (apply make-instance gx#syntax-binding::t _$args81007_)))
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
      (lambda _$args81004_
        (apply make-instance gx#import-binding::t _$args81004_)))
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
      (lambda _$args81001_
        (apply make-instance gx#alias-binding::t _$args81001_)))
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
      (lambda _$args80998_ (apply make-instance gx#expander::t _$args80998_)))
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
      (lambda _$args80995_
        (apply make-instance gx#core-expander::t _$args80995_)))
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
      (lambda _$args80992_
        (apply make-instance gx#expression-form::t _$args80992_)))
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
      (lambda _$args80989_
        (apply make-instance gx#special-form::t _$args80989_)))
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
      (lambda _$args80986_
        (apply make-instance gx#definition-form::t _$args80986_)))
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
      (lambda _$args80983_
        (apply make-instance gx#top-special-form::t _$args80983_)))
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
      (lambda _$args80980_
        (apply make-instance gx#module-special-form::t _$args80980_)))
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
      (lambda _$args80977_
        (apply make-instance gx#feature-expander::t _$args80977_)))
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
      (lambda _$args80974_
        (apply make-instance gx#private-feature-expander::t _$args80974_)))
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
      (lambda _$args80971_
        (apply make-instance gx#reserved-expander::t _$args80971_)))
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
      (lambda _$args80968_
        (apply make-instance gx#macro-expander::t _$args80968_)))
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
      (lambda _$args80965_
        (apply make-instance gx#rename-macro-expander::t _$args80965_)))
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
      (lambda _$args80962_
        (apply make-instance gx#user-expander::t _$args80962_)))
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
      (lambda _$args80959_
        (apply make-instance gx#expander-mark::t _$args80959_)))
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
      (lambda (_ctx80944_ _message80945_ _stx80946_ . _details80947_)
        (let ((_ctx80957_
               (let ((_$e80949_ _ctx80944_))
                 (if _$e80949_
                     _$e80949_
                     (let ((_$e80952_ (gx#core-context-top__0)))
                       (if _$e80952_
                           ((lambda (_ctx80955_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx80955_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e80952_)
                           '#f))))))
          (raise (make-syntax-error
                  _message80945_
                  (cons _stx80946_ _details80947_)
                  _ctx80957_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx80931_ _expression?80932_)
        (gx#eval-syntax* (gx#core-expand__% _stx80931_ _expression?80932_))))
    (define gx#eval-syntax__0
      (lambda (_stx80937_)
        (let ((_expression?80939_ '#f))
          (gx#eval-syntax__% _stx80937_ _expression?80939_))))
    (define gx#eval-syntax
      (lambda _g81368_
        (let ((_g81367_ (##length _g81368_)))
          (cond ((##fx= _g81367_ 1)
                 (apply (lambda (_stx80937_) (gx#eval-syntax__0 _stx80937_))
                        _g81368_))
                ((##fx= _g81367_ 2)
                 (apply (lambda (_stx80941_ _expression?80942_)
                          (gx#eval-syntax__% _stx80941_ _expression?80942_))
                        _g81368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g81368_))))))
    (define gx#eval-syntax*
      (lambda (_stx80928_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx80928_))))
    (define gx#core-expand__%
      (lambda (_stx80915_ _expression?80916_)
        (if _expression?80916_
            (gx#core-expand-expression _stx80915_)
            (gx#core-expand-top _stx80915_))))
    (define gx#core-expand__0
      (lambda (_stx80921_)
        (let ((_expression?80923_ '#f))
          (gx#core-expand__% _stx80921_ _expression?80923_))))
    (define gx#core-expand
      (lambda _g81370_
        (let ((_g81369_ (##length _g81370_)))
          (cond ((##fx= _g81369_ 1)
                 (apply (lambda (_stx80921_) (gx#core-expand__0 _stx80921_))
                        _g81370_))
                ((##fx= _g81369_ 2)
                 (apply (lambda (_stx80925_ _expression?80926_)
                          (gx#core-expand__% _stx80925_ _expression?80926_))
                        _g81370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g81370_))))))
    (define gx#core-expand-top
      (lambda (_stx80882_)
        (let* ((_stx80884_ (gx#core-expand*__0 _stx80882_))
               (_e8088580892_ _stx80884_)
               (_E8088780896_
                (lambda () (gx#core-expand-expression _stx80884_)))
               (_E8088680910_
                (lambda ()
                  (if (gx#stx-pair? _e8088580892_)
                      (let ((_e8088880900_ (gx#syntax-e _e8088580892_)))
                        (let ((_hd8088980903_ (##car _e8088880900_))
                              (_tl8089080905_ (##cdr _e8088880900_)))
                          (let ((_form80908_ _hd8088980903_))
                            (if (gx#core-bound-identifier?__0 _form80908_)
                                _stx80884_
                                (_E8088780896_)))))
                      (_E8088780896_)))))
          (_E8088680910_))))
    (define gx#core-expand-expression
      (lambda (_stx80829_)
        (letrec ((_sealed-expression?80831_
                  (lambda (_hd80852_)
                    (if (gx#sealed-syntax? _hd80852_)
                        (let* ((_e8085380860_ _hd80852_)
                               (_E8085580864_ (lambda () '#f))
                               (_E8085480878_
                                (lambda ()
                                  (if (gx#stx-pair? _e8085380860_)
                                      (let ((_e8085680868_
                                             (gx#syntax-e _e8085380860_)))
                                        (let ((_hd8085780871_
                                               (##car _e8085680868_))
                                              (_tl8085880873_
                                               (##cdr _e8085680868_)))
                                          (let ((_form80876_ _hd8085780871_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form80876_
                                                 gx#expression-form-binding?)
                                                (_E8085580864_)))))
                                      (_E8085580864_)))))
                          (_E8085480878_))
                        '#f)))
                 (_illegal-expression80832_
                  (lambda (_hd80850_ . _g81371_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx80829_
                     _hd80850_)))
                 (_expand-e80833_
                  (lambda (_form80845_ _hd80846_)
                    (let ((_bind80848_
                           (if (##structure-instance-of?
                                _form80845_
                                'gx#binding::t)
                               _form80845_
                               (gx#resolve-identifier__0 _form80845_))))
                      (if (gx#core-expander-binding? _bind80848_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind80848_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd80846_
                            (gx#stx-source _stx80829_)))
                          (if (##structure-direct-instance-of?
                               _bind80848_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind80848_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd80846_
                                 (gx#stx-source _stx80829_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx80829_
                               _form80845_)))))))
          (let ((_hd80835_ (gx#core-expand-head _stx80829_)))
            (if (_sealed-expression?80831_ _hd80835_)
                _hd80835_
                (if (gx#stx-pair? _hd80835_)
                    (let* ((_form80837_ (gx#stx-car _hd80835_))
                           (_bind80839_
                            (if (gx#identifier? _form80837_)
                                (gx#resolve-identifier__0 _form80837_)
                                '#f)))
                      (if (or (not _bind80839_)
                              (not (gx#core-expander-binding? _bind80839_)))
                          (_expand-e80833_ '%%app (cons '%%app _hd80835_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind80839_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd80835_
                               _illegal-expression80832_)
                              (if (gx#expression-form-binding? _bind80839_)
                                  (_expand-e80833_ _bind80839_ _hd80835_)
                                  (if (gx#direct-special-form-binding?
                                       _bind80839_)
                                      (gx#core-expand-expression
                                       (_expand-e80833_ _bind80839_ _hd80835_))
                                      (_illegal-expression80832_
                                       _hd80835_))))))
                    (if (gx#core-bound-identifier?__0 _hd80835_)
                        (_illegal-expression80832_ _hd80835_)
                        (if (gx#identifier? _hd80835_)
                            (_expand-e80833_
                             '%%ref
                             (cons '%%ref (cons _hd80835_ '())))
                            (if (gx#stx-datum? _hd80835_)
                                (_expand-e80833_
                                 '%#quote
                                 (cons '%#quote (cons _hd80835_ '())))
                                (_illegal-expression80832_ _hd80835_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx80824_)
        (call-with-parameters
         (lambda ()
           (let ((_stx80827_ (gx#core-expand-expression _stx80824_)))
             (values _stx80827_ (gx#eval-syntax* _stx80827_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx80805_ _stop?80806_)
        (let _lp80808_ ((_stx80810_ _stx80805_))
          (if (_stop?80806_ _stx80810_)
              _stx80810_
              (let ((_rstx80812_ (gx#core-expand1 _stx80810_)))
                (if (eq? _stx80810_ _rstx80812_)
                    _stx80810_
                    (_lp80808_ _rstx80812_)))))))
    (define gx#core-expand*__0
      (lambda (_stx80817_)
        (let ((_stop?80819_ false))
          (gx#core-expand*__% _stx80817_ _stop?80819_))))
    (define gx#core-expand*
      (lambda _g81373_
        (let ((_g81372_ (##length _g81373_)))
          (cond ((##fx= _g81372_ 1)
                 (apply (lambda (_stx80817_) (gx#core-expand*__0 _stx80817_))
                        _g81373_))
                ((##fx= _g81372_ 2)
                 (apply (lambda (_stx80821_ _stop?80822_)
                          (gx#core-expand*__% _stx80821_ _stop?80822_))
                        _g81373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g81373_))))))
    (define gx#core-expand1
      (lambda (_stx80761_)
        (letrec ((_step80763_
                  (lambda (_hd80800_)
                    (let ((_bind80802_ (gx#resolve-identifier__0 _hd80800_)))
                      (if (##structure-instance-of?
                           _bind80802_
                           'gx#runtime-binding::t)
                          _stx80761_
                          (if (##structure-direct-instance-of?
                               _bind80802_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind80802_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx80761_)
                              (if (not _bind80802_)
                                  _stx80761_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx80761_))))))))
          (let* ((_e8076480772_ _stx80761_)
                 (_E8077080776_ (lambda () _stx80761_))
                 (_E8076680782_
                  (lambda ()
                    (let ((_hd80780_ _e8076480772_))
                      (if (gx#identifier? _hd80780_)
                          (_step80763_ _hd80780_)
                          (_E8077080776_)))))
                 (_E8076580796_
                  (lambda ()
                    (if (gx#stx-pair? _e8076480772_)
                        (let ((_e8076780786_ (gx#syntax-e _e8076480772_)))
                          (let ((_hd8076880789_ (##car _e8076780786_))
                                (_tl8076980791_ (##cdr _e8076780786_)))
                            (let ((_hd80794_ _hd8076880789_))
                              (if (gx#identifier? _hd80794_)
                                  (_step80763_ _hd80794_)
                                  (_E8076680782_)))))
                        (_E8076680782_)))))
            (_E8076580796_)))))
    (define gx#core-expand-head
      (lambda (_stx80727_)
        (letrec ((_stop?80729_
                  (lambda (_stx80731_)
                    (let* ((_e8073280739_ _stx80731_)
                           (_E8073480743_ (lambda () '#f))
                           (_E8073380757_
                            (lambda ()
                              (if (gx#stx-pair? _e8073280739_)
                                  (let ((_e8073580747_
                                         (gx#syntax-e _e8073280739_)))
                                    (let ((_hd8073680750_
                                           (##car _e8073580747_))
                                          (_tl8073780752_
                                           (##cdr _e8073580747_)))
                                      (let ((_hd80755_ _hd8073680750_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd80755_)
                                            (_E8073480743_)))))
                                  (_E8073480743_)))))
                      (_E8073380757_)))))
          (gx#core-expand*__% _stx80727_ _stop?80729_))))
    (define gx#core-expand-block__%
      (lambda (_stx80533_
               _expand-special80534_
               _begin-form80535_
               _expand-e80536_)
        (letrec ((_expand-splice80538_
                  (lambda (_hd80701_ _body80702_ _rest80703_ _r80704_)
                    (if (gx#stx-list? _body80702_)
                        (_K80542_
                         (gx#stx-foldr cons _rest80703_ _body80702_)
                         _r80704_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx80533_
                         _hd80701_))))
                 (_expand-cond-expand80539_
                  (lambda (_hd80697_ _rest80698_ _r80699_)
                    (_K80542_
                     (cons (gx#core-expand-cond-expand% _hd80697_) _rest80698_)
                     _r80699_)))
                 (_expand-include80540_
                  (lambda (_hd80646_ _rest80647_ _r80648_)
                    (let* ((_e8064980659_ _hd80646_)
                           (_E8065180663_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8064980659_)))
                           (_E8065080693_
                            (lambda ()
                              (if (gx#stx-pair? _e8064980659_)
                                  (let ((_e8065280667_
                                         (gx#syntax-e _e8064980659_)))
                                    (let ((_hd8065380670_
                                           (##car _e8065280667_))
                                          (_tl8065480672_
                                           (##cdr _e8065280667_)))
                                      (if (gx#stx-pair? _tl8065480672_)
                                          (let ((_e8065580675_
                                                 (gx#syntax-e _tl8065480672_)))
                                            (let ((_hd8065680678_
                                                   (##car _e8065580675_))
                                                  (_tl8065780680_
                                                   (##cdr _e8065580675_)))
                                              (let ((_path80683_
                                                     _hd8065680678_))
                                                (if (gx#stx-null?
                                                     _tl8065780680_)
                                                    (if (gx#stx-string?
                                                         _path80683_)
                                                        (let* ((_rpath80685_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path80683_
                         (gx#stx-source _hd80646_)))
                       (_block80687_
                        (gx#core-expand-include%__% _hd80646_ _rpath80685_))
                       (_rbody80690_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block80687_
                            _expand-special80534_
                            '#f
                            _expand-e80536_))
                         gx#current-expander-path
                         (cons _rpath80685_ (gx#current-expander-path)))))
                  (_K80542_ _rest80647_ (foldr1 cons _r80648_ _rbody80690_)))
                (_E8065180663_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8065180663_)))))
                                          (_E8065180663_))))
                                  (_E8065180663_)))))
                      (_E8065080693_))))
                 (_expand-expression80541_
                  (lambda (_hd80642_ _rest80643_ _r80644_)
                    (_K80542_
                     _rest80643_
                     (cons (_expand-e80536_ _hd80642_) _r80644_))))
                 (_K80542_
                  (lambda (_rest80572_ _r80573_)
                    (let* ((_e8057480581_ _rest80572_)
                           (_E8057680585_
                            (lambda ()
                              (if _begin-form80535_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form80535_
                                    (reverse _r80573_))
                                   (gx#stx-source _stx80533_))
                                  _r80573_)))
                           (_E8057580638_
                            (lambda ()
                              (if (gx#stx-pair? _e8057480581_)
                                  (let ((_e8057780589_
                                         (gx#syntax-e _e8057480581_)))
                                    (let ((_hd8057880592_
                                           (##car _e8057780589_))
                                          (_tl8057980594_
                                           (##cdr _e8057780589_)))
                                      (let* ((_hd80597_ _hd8057880592_)
                                             (_rest80599_ _tl8057980594_))
                                        (if '#t
                                            (let* ((_hd80601_
                                                    (gx#core-expand-head
                                                     _hd80597_))
                                                   (_e8060280609_ _hd80601_)
                                                   (_E8060480613_
                                                    (lambda ()
                                                      (_expand-expression80541_
                                                       _hd80601_
                                                       _rest80599_
                                                       _r80573_)))
                                                   (_E8060380634_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8060280609_)
                                                          (let ((_e8060580617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8060280609_)))
                    (let ((_hd8060680620_ (##car _e8060580617_))
                          (_tl8060780622_ (##cdr _e8060580617_)))
                      (let* ((_form80625_ _hd8060680620_)
                             (_body80627_ _tl8060780622_))
                        (if '#t
                            (let ((_bind80629_
                                   (if (gx#identifier? _form80625_)
                                       (gx#resolve-identifier__0 _form80625_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind80629_)
                                  (let ((_$e80631_
                                         (##unchecked-structure-ref
                                          _bind80629_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e80631_)
                                        (_expand-splice80538_
                                         _hd80601_
                                         _body80627_
                                         _rest80599_
                                         _r80573_)
                                        (if (eq? '%#cond-expand _$e80631_)
                                            (_expand-cond-expand80539_
                                             _hd80601_
                                             _rest80599_
                                             _r80573_)
                                            (if (eq? '%#include _$e80631_)
                                                (_expand-include80540_
                                                 _hd80601_
                                                 _rest80599_
                                                 _r80573_)
                                                (_expand-special80534_
                                                 _hd80601_
                                                 _K80542_
                                                 _rest80599_
                                                 _r80573_)))))
                                  (_expand-expression80541_
                                   _hd80601_
                                   _rest80599_
                                   _r80573_)))
                            (_E8060480613_)))))
                  (_E8060480613_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8060380634_))
                                            (_E8057680585_)))))
                                  (_E8057680585_)))))
                      (_E8057580638_)))))
          (let* ((_e8054380550_ _stx80533_)
                 (_E8054580554_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8054380550_)))
                 (_E8054480568_
                  (lambda ()
                    (if (gx#stx-pair? _e8054380550_)
                        (let ((_e8054680558_ (gx#syntax-e _e8054380550_)))
                          (let ((_hd8054780561_ (##car _e8054680558_))
                                (_tl8054880563_ (##cdr _e8054680558_)))
                            (let ((_body80566_ _tl8054880563_))
                              (if (gx#stx-list? _body80566_)
                                  (_K80542_ _body80566_ '())
                                  (_E8054580554_)))))
                        (_E8054580554_)))))
            (_E8054480568_)))))
    (define gx#core-expand-block__0
      (lambda (_stx80709_ _expand-special80710_)
        (let* ((_begin-form80712_ '%#begin)
               (_expand-e80714_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx80709_
           _expand-special80710_
           _begin-form80712_
           _expand-e80714_))))
    (define gx#core-expand-block__1
      (lambda (_stx80716_ _expand-special80717_ _begin-form80718_)
        (let ((_expand-e80720_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx80716_
           _expand-special80717_
           _begin-form80718_
           _expand-e80720_))))
    (define gx#core-expand-block
      (lambda _g81375_
        (let ((_g81374_ (##length _g81375_)))
          (cond ((##fx= _g81374_ 2)
                 (apply (lambda (_stx80709_ _expand-special80710_)
                          (gx#core-expand-block__0
                           _stx80709_
                           _expand-special80710_))
                        _g81375_))
                ((##fx= _g81374_ 3)
                 (apply (lambda (_stx80716_
                                 _expand-special80717_
                                 _begin-form80718_)
                          (gx#core-expand-block__1
                           _stx80716_
                           _expand-special80717_
                           _begin-form80718_))
                        _g81375_))
                ((##fx= _g81374_ 4)
                 (apply (lambda (_stx80722_
                                 _expand-special80723_
                                 _begin-form80724_
                                 _expand-e80725_)
                          (gx#core-expand-block__%
                           _stx80722_
                           _expand-special80723_
                           _begin-form80724_
                           _expand-e80725_))
                        _g81375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g81375_))))))
    (define gx#core-expand-block*
      (lambda (_stx80481_ _expand-special80482_)
        (let* ((_g8048380494_
                (gx#core-expand-block__1 _stx80481_ _expand-special80482_ '#f))
               (_E8048780498_
                (lambda () (error '"No clause matching" _g8048380494_))))
          (let ((_K8049280529_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx80481_)))
                (_K8048980515_ (lambda (_expr80513_) _expr80513_))
                (_K8048880504_
                 (lambda (_body80502_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body80502_))
                    (gx#stx-source _stx80481_)))))
            (let ((_try-match8048580525_
                   (lambda ()
                     (if (##pair? _g8048380494_)
                         (let ((_tl8049180520_ (##cdr _g8048380494_))
                               (_hd8049080518_ (##car _g8048380494_)))
                           (if (##null? _tl8049180520_)
                               (let ((_expr80523_ _hd8049080518_))
                                 (_K8048980515_ _expr80523_))
                               (let ((_body80507_ _g8048380494_))
                                 (_K8048880504_ _body80507_))))
                         (let ((_body80507_ _g8048380494_))
                           (_K8048880504_ _body80507_))))))
              (if (##null? _g8048380494_)
                  (_K8049280529_)
                  (_try-match8048580525_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx80309_)
        (letrec ((_satisfied?80311_
                  (lambda (_condition80409_)
                    (let* ((_e8041080425_ _condition80409_)
                           (_E8042080429_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8041080425_)))
                           (_E8041380448_
                            (lambda ()
                              (if (gx#stx-pair? _e8041080425_)
                                  (let ((_e8042180433_
                                         (gx#syntax-e _e8041080425_)))
                                    (let ((_hd8042280436_
                                           (##car _e8042180433_))
                                          (_tl8042380438_
                                           (##cdr _e8042180433_)))
                                      (let* ((_combinator80441_ _hd8042280436_)
                                             (_body80443_ _tl8042380438_))
                                        (if (gx#stx-list? _body80443_)
                                            (let ((_$e80445_
                                                   (gx#stx-e
                                                    _combinator80441_)))
                                              (if (eq? 'not _$e80445_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?80311_
                                                        _body80443_))
                                                  (if (eq? 'and _$e80445_)
                                                      (gx#stx-andmap
                                                       _satisfied?80311_
                                                       _body80443_)
                                                      (if (eq? 'or _$e80445_)
                                                          (gx#stx-ormap
                                                           _satisfied?80311_
                                                           _body80443_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e80445_)
                      (gx#stx-andmap gx#core-resolve-identifier _body80443_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx80309_
                       _combinator80441_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8042080429_)))))
                                  (_E8042080429_))))
                           (_E8041280471_
                            (lambda ()
                              (if (gx#stx-pair? _e8041080425_)
                                  (let ((_e8041480452_
                                         (gx#syntax-e _e8041080425_)))
                                    (let ((_hd8041580455_
                                           (##car _e8041480452_))
                                          (_tl8041680457_
                                           (##cdr _e8041480452_)))
                                      (if (and (gx#identifier? _hd8041580455_)
                                               (gx#core-identifier=?
                                                _hd8041580455_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8041680457_)
                                              (let ((_e8041780460_
                                                     (gx#syntax-e
                                                      _tl8041680457_)))
                                                (let ((_hd8041880463_
                                                       (##car _e8041780460_))
                                                      (_tl8041980465_
                                                       (##cdr _e8041780460_)))
                                                  (let ((_expr80468_
                                                         _hd8041880463_))
                                                    (if (gx#stx-null?
                                                         _tl8041980465_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr80468_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8041380448_))
                (_E8041380448_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8041380448_))
                                          (_E8041380448_))))
                                  (_E8041380448_))))
                           (_E8041180477_
                            (lambda ()
                              (let ((_id80475_ _e8041080425_))
                                (if (gx#identifier? _id80475_)
                                    (gx#core-bound-identifier?__%
                                     _id80475_
                                     gx#feature-binding?)
                                    (_E8041280471_))))))
                      (_E8041180477_))))
                 (_loop80312_
                  (lambda (_rest80342_)
                    (let* ((_e8034380351_ _rest80342_)
                           (_E8034980355_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8034380351_)))
                           (_E8034580359_
                            (lambda ()
                              (if (gx#stx-null? _e8034380351_)
                                  (if '#t '() (_E8034980355_))
                                  (_E8034980355_))))
                           (_E8034480405_
                            (lambda ()
                              (if (gx#stx-pair? _e8034380351_)
                                  (let ((_e8034680363_
                                         (gx#syntax-e _e8034380351_)))
                                    (let ((_hd8034780366_
                                           (##car _e8034680363_))
                                          (_tl8034880368_
                                           (##cdr _e8034680363_)))
                                      (let* ((_hd80371_ _hd8034780366_)
                                             (_rest80373_ _tl8034880368_))
                                        (if '#t
                                            (let* ((_e8037480381_ _hd80371_)
                                                   (_E8037680385_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8037480381_)))
                                                   (_E8037580401_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8037480381_)
                                                          (let ((_e8037780389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8037480381_)))
                    (let ((_hd8037880392_ (##car _e8037780389_))
                          (_tl8037980394_ (##cdr _e8037780389_)))
                      (let* ((_condition80397_ _hd8037880392_)
                             (_body80399_ _tl8037980394_))
                        (if '#t
                            (if (gx#stx-eq? _condition80397_ 'else)
                                (if (gx#stx-null? _rest80373_)
                                    _body80399_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx80309_
                                     _hd80371_))
                                (if (_satisfied?80311_ _condition80397_)
                                    _body80399_
                                    (_loop80312_ _rest80373_)))
                            (_E8037680385_)))))
                  (_E8037680385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8037580401_))
                                            (_E8034580359_)))))
                                  (_E8034580359_)))))
                      (_E8034480405_)))))
          (let* ((_e8031380320_ _stx80309_)
                 (_E8031580324_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8031380320_)))
                 (_E8031480338_
                  (lambda ()
                    (if (gx#stx-pair? _e8031380320_)
                        (let ((_e8031680328_ (gx#syntax-e _e8031380320_)))
                          (let ((_hd8031780331_ (##car _e8031680328_))
                                (_tl8031880333_ (##cdr _e8031680328_)))
                            (let ((_clauses80336_ _tl8031880333_))
                              (if (gx#stx-list? _clauses80336_)
                                  (gx#core-cons
                                   'begin
                                   (_loop80312_ _clauses80336_))
                                  (_E8031580324_)))))
                        (_E8031580324_)))))
            (_E8031480338_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx80252_ _rpath80253_)
        (let* ((_e8025480264_ _stx80252_)
               (_E8025680268_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8025480264_)))
               (_E8025580295_
                (lambda ()
                  (if (gx#stx-pair? _e8025480264_)
                      (let ((_e8025780272_ (gx#syntax-e _e8025480264_)))
                        (let ((_hd8025880275_ (##car _e8025780272_))
                              (_tl8025980277_ (##cdr _e8025780272_)))
                          (if (gx#stx-pair? _tl8025980277_)
                              (let ((_e8026080280_
                                     (gx#syntax-e _tl8025980277_)))
                                (let ((_hd8026180283_ (##car _e8026080280_))
                                      (_tl8026280285_ (##cdr _e8026080280_)))
                                  (let ((_path80288_ _hd8026180283_))
                                    (if (gx#stx-null? _tl8026280285_)
                                        (if (gx#stx-string? _path80288_)
                                            (let ((_rpath80293_
                                                   (let ((_$e80290_
                                                          _rpath80253_))
                                                     (if _$e80290_
                                                         _$e80290_
                                                         (gx#core-resolve-path__%
                                                          _path80288_
                                                          (gx#stx-source
                                                           _stx80252_))))))
                                              (if (member _rpath80293_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx80252_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath80293_))
                                                    (gx#stx-source
                                                     _stx80252_)))))
                                            (_E8025680268_))
                                        (_E8025680268_)))))
                              (_E8025680268_))))
                      (_E8025680268_)))))
          (_E8025580295_))))
    (define gx#core-expand-include%__0
      (lambda (_stx80302_)
        (let ((_rpath80304_ '#f))
          (gx#core-expand-include%__% _stx80302_ _rpath80304_))))
    (define gx#core-expand-include%
      (lambda _g81377_
        (let ((_g81376_ (##length _g81377_)))
          (cond ((##fx= _g81376_ 1)
                 (apply (lambda (_stx80302_)
                          (gx#core-expand-include%__0 _stx80302_))
                        _g81377_))
                ((##fx= _g81376_ 2)
                 (apply (lambda (_stx80306_ _rpath80307_)
                          (gx#core-expand-include%__% _stx80306_ _rpath80307_))
                        _g81377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g81377_))))))
    (define gx#core-apply-expander__%
      (lambda (_K80221_ _stx80222_ _method80223_)
        (if (procedure? _K80221_)
            (let ((_$e80225_ (gx#stx-source _stx80222_)))
              (if _$e80225_
                  ((lambda (_g8022780229_)
                     (gx#stx-wrap-source (_K80221_ _stx80222_) _g8022780229_))
                   _$e80225_)
                  (_K80221_ _stx80222_)))
            (let ((_$e80232_ (bound-method-ref _K80221_ _method80223_)))
              (if _$e80232_
                  ((lambda (_g8023480236_)
                     (gx#core-apply-expander__%
                      _g8023480236_
                      _stx80222_
                      _method80223_))
                   _$e80232_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx80222_
                   _method80223_))))))
    (define gx#core-apply-expander__0
      (lambda (_K80242_ _stx80243_)
        (let ((_method80245_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K80242_ _stx80243_ _method80245_))))
    (define gx#core-apply-expander
      (lambda _g81379_
        (let ((_g81378_ (##length _g81379_)))
          (cond ((##fx= _g81378_ 2)
                 (apply (lambda (_K80242_ _stx80243_)
                          (gx#core-apply-expander__0 _K80242_ _stx80243_))
                        _g81379_))
                ((##fx= _g81378_ 3)
                 (apply (lambda (_K80247_ _stx80248_ _method80249_)
                          (gx#core-apply-expander__%
                           _K80247_
                           _stx80248_
                           _method80249_))
                        _g81379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g81379_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self80217_ _stx80218_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx80218_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self80070_ _stx80071_)
        (let* ((_self8007280078_ _self80070_)
               (_E8007480082_
                (lambda () (error '"No clause matching" _self8007280078_)))
               (_K8007580087_
                (lambda (_K80085_)
                  (gx#core-apply-expander__0 _K80085_ _stx80071_))))
          (if (##structure-instance-of? _self8007280078_ 'gx#core-macro::t)
              (let* ((_e8007680090_
                      (##unchecked-structure-ref
                       _self8007280078_
                       '1
                       gx#expander::t
                       '#f))
                     (_K80093_ _e8007680090_))
                (_K8007580087_ _K80093_))
              (_E8007480082_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self79923_ _stx79924_)
        (if (gx#sealed-syntax? _stx79924_)
            _stx79924_
            (let* ((_self7992579931_ _self79923_)
                   (_E7992779935_
                    (lambda () (error '"No clause matching" _self7992579931_)))
                   (_K7992879940_
                    (lambda (_K79938_)
                      (gx#core-apply-expander__0 _K79938_ _stx79924_))))
              (if (##structure-instance-of?
                   _self7992579931_
                   'gx#core-expander::t)
                  (let* ((_e7992979943_
                          (##unchecked-structure-ref
                           _self7992579931_
                           '1
                           gx#expander::t
                           '#f))
                         (_K79946_ _e7992979943_))
                    (_K7992879940_ _K79946_))
                  (_E7992779935_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self79785_ _stx79786_ _top?79787_)
        (if (_top?79787_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self79785_ _stx79786_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx79786_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self79792_ _stx79793_)
        (let ((_top?79795_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self79792_
           _stx79793_
           _top?79795_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g81381_
        (let ((_g81380_ (##length _g81381_)))
          (cond ((##fx= _g81380_ 2)
                 (apply (lambda (_self79792_ _stx79793_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self79792_
                           _stx79793_))
                        _g81381_))
                ((##fx= _g81380_ 3)
                 (apply (lambda (_self79797_ _stx79798_ _top?79799_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self79797_
                           _stx79798_
                           _top?79799_))
                        _g81381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g81381_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self79659_ _stx79660_)
        (gx#top-special-form::apply-macro-expander__%
         _self79659_
         _stx79660_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self79484_ _stx79485_)
        (let* ((_self7948679492_ _self79484_)
               (_E7948879496_
                (lambda () (error '"No clause matching" _self7948679492_)))
               (_K7948979529_
                (lambda (_id79499_)
                  (let* ((_e7950079507_ _stx79485_)
                         (_E7950279511_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e7950079507_)))
                         (_E7950179525_
                          (lambda ()
                            (if (gx#stx-pair? _e7950079507_)
                                (let ((_e7950379515_
                                       (gx#syntax-e _e7950079507_)))
                                  (let ((_hd7950479518_ (##car _e7950379515_))
                                        (_tl7950579520_ (##cdr _e7950379515_)))
                                    (let ((_body79523_ _tl7950579520_))
                                      (if '#t
                                          (gx#core-cons _id79499_ _body79523_)
                                          (_E7950279511_)))))
                                (_E7950279511_)))))
                    (_E7950179525_)))))
          (if (##structure-instance-of?
               _self7948679492_
               'gx#rename-macro-expander::t)
              (let* ((_e7949079532_
                      (##unchecked-structure-ref
                       _self7948679492_
                       '1
                       gx#expander::t
                       '#f))
                     (_id79535_ _e7949079532_))
                (_K7948979529_ _id79535_))
              (_E7948879496_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self79310_ _stx79311_ _method79312_)
        (let* ((_self7931379321_ _self79310_)
               (_E7931579325_
                (lambda () (error '"No clause matching" _self7931379321_)))
               (_K7931679332_
                (lambda (_phi79328_ _ctx79329_ _K79330_)
                  (gx#core-apply-user-macro
                   _K79330_
                   _stx79311_
                   _ctx79329_
                   _phi79328_
                   _method79312_))))
          (if (##structure-instance-of? _self7931379321_ 'gx#macro-expander::t)
              (let* ((_e7931779335_
                      (##unchecked-structure-ref
                       _self7931379321_
                       '1
                       gx#expander::t
                       '#f))
                     (_K79338_ _e7931779335_)
                     (_e7931879340_
                      (##unchecked-structure-ref
                       _self7931379321_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx79343_ _e7931879340_)
                     (_e7931979345_
                      (##unchecked-structure-ref
                       _self7931379321_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi79348_ _e7931979345_))
                (_K7931679332_ _phi79348_ _ctx79343_ _K79338_))
              (_E7931579325_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self79353_ _stx79354_)
        (let ((_method79356_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self79353_
           _stx79354_
           _method79356_))))
    (define gx#core-apply-user-expander
      (lambda _g81383_
        (let ((_g81382_ (##length _g81383_)))
          (cond ((##fx= _g81382_ 2)
                 (apply (lambda (_self79353_ _stx79354_)
                          (gx#core-apply-user-expander__0
                           _self79353_
                           _stx79354_))
                        _g81383_))
                ((##fx= _g81382_ 3)
                 (apply (lambda (_self79358_ _stx79359_ _method79360_)
                          (gx#core-apply-user-expander__%
                           _self79358_
                           _stx79359_
                           _method79360_))
                        _g81383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g81383_))))))
    (define gx#core-apply-user-macro
      (lambda (_K79300_ _stx79301_ _ctx79302_ _phi79303_ _method79304_)
        (let ((_mark79306_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx79302_
                _phi79303_
                _stx79301_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K79300_
               (gx#stx-apply-mark _stx79301_ _mark79306_)
               _method79304_)
              _mark79306_))
           gx#current-expander-marks
           (cons _mark79306_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx79152_ _phi79153_ _ctx79154_)
        (let _lp79156_ ((_bind79158_
                         (gx#core-resolve-identifier__%
                          _stx79152_
                          _phi79153_
                          _ctx79154_)))
          (if (##structure-direct-instance-of?
               _bind79158_
               'gx#import-binding::t)
              (_lp79156_
               (##unchecked-structure-ref
                _bind79158_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind79158_
                   'gx#alias-binding::t)
                  (_lp79156_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind79158_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi79153_
                    _ctx79154_))
                  _bind79158_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx79163_)
        (let* ((_phi79165_ (gx#current-expander-phi))
               (_ctx79167_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx79163_ _phi79165_ _ctx79167_))))
    (define gx#resolve-identifier__1
      (lambda (_stx79169_ _phi79170_)
        (let ((_ctx79172_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx79169_ _phi79170_ _ctx79172_))))
    (define gx#resolve-identifier
      (lambda _g81385_
        (let ((_g81384_ (##length _g81385_)))
          (cond ((##fx= _g81384_ 1)
                 (apply (lambda (_stx79163_)
                          (gx#resolve-identifier__0 _stx79163_))
                        _g81385_))
                ((##fx= _g81384_ 2)
                 (apply (lambda (_stx79169_ _phi79170_)
                          (gx#resolve-identifier__1 _stx79169_ _phi79170_))
                        _g81385_))
                ((##fx= _g81384_ 3)
                 (apply (lambda (_stx79174_ _phi79175_ _ctx79176_)
                          (gx#resolve-identifier__%
                           _stx79174_
                           _phi79175_
                           _ctx79176_))
                        _g81385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g81385_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx79110_ _val79111_ _rebind?79112_ _phi79113_ _ctx79114_)
        (let ((_rebind?79116_
               (if (not _rebind?79112_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?79112_) _rebind?79112_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx79110_)
           _val79111_
           _rebind?79116_
           _phi79113_
           _ctx79114_))))
    (define gx#bind-identifier!__0
      (lambda (_stx79121_ _val79122_)
        (let* ((_rebind?79124_ '#f)
               (_phi79126_ (gx#current-expander-phi))
               (_ctx79128_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx79121_
           _val79122_
           _rebind?79124_
           _phi79126_
           _ctx79128_))))
    (define gx#bind-identifier!__1
      (lambda (_stx79130_ _val79131_ _rebind?79132_)
        (let* ((_phi79134_ (gx#current-expander-phi))
               (_ctx79136_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx79130_
           _val79131_
           _rebind?79132_
           _phi79134_
           _ctx79136_))))
    (define gx#bind-identifier!__2
      (lambda (_stx79138_ _val79139_ _rebind?79140_ _phi79141_)
        (let ((_ctx79143_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx79138_
           _val79139_
           _rebind?79140_
           _phi79141_
           _ctx79143_))))
    (define gx#bind-identifier!
      (lambda _g81387_
        (let ((_g81386_ (##length _g81387_)))
          (cond ((##fx= _g81386_ 2)
                 (apply (lambda (_stx79121_ _val79122_)
                          (gx#bind-identifier!__0 _stx79121_ _val79122_))
                        _g81387_))
                ((##fx= _g81386_ 3)
                 (apply (lambda (_stx79130_ _val79131_ _rebind?79132_)
                          (gx#bind-identifier!__1
                           _stx79130_
                           _val79131_
                           _rebind?79132_))
                        _g81387_))
                ((##fx= _g81386_ 4)
                 (apply (lambda (_stx79138_
                                 _val79139_
                                 _rebind?79140_
                                 _phi79141_)
                          (gx#bind-identifier!__2
                           _stx79138_
                           _val79139_
                           _rebind?79140_
                           _phi79141_))
                        _g81387_))
                ((##fx= _g81386_ 5)
                 (apply (lambda (_stx79145_
                                 _val79146_
                                 _rebind?79147_
                                 _phi79148_
                                 _ctx79149_)
                          (gx#bind-identifier!__%
                           _stx79145_
                           _val79146_
                           _rebind?79147_
                           _phi79148_
                           _ctx79149_))
                        _g81387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g81387_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx79082_ _phi79083_ _ctx79084_)
        (let _lp79086_ ((_e79088_ _stx79082_)
                        (_marks79089_ (gx#current-expander-marks)))
          (if (symbol? _e79088_)
              (gx#core-resolve-binding
               _e79088_
               _phi79083_
               _phi79083_
               _ctx79084_
               (reverse _marks79089_))
              (if (gx#identifier-quote? _e79088_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e79088_ '1 gx#AST::t '#f)
                   _phi79083_
                   '0
                   (##unchecked-structure-ref
                    _e79088_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e79088_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e79088_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e79088_ '1 gx#AST::t '#f)
                       _phi79083_
                       _phi79083_
                       _ctx79084_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e79088_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks79089_))
                      (if (##structure-direct-instance-of?
                           _e79088_
                           'gx#syntax-wrap::t)
                          (_lp79086_
                           (##unchecked-structure-ref
                            _e79088_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e79088_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks79089_))
                          (if (##structure-instance-of?
                               _e79088_
                               'gerbil#AST::t)
                              (_lp79086_
                               (##unchecked-structure-ref
                                _e79088_
                                '1
                                gx#AST::t
                                '#f)
                               _marks79089_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx79082_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx79094_)
        (let* ((_phi79096_ (gx#current-expander-phi))
               (_ctx79098_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx79094_ _phi79096_ _ctx79098_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx79100_ _phi79101_)
        (let ((_ctx79103_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx79100_ _phi79101_ _ctx79103_))))
    (define gx#core-resolve-identifier
      (lambda _g81389_
        (let ((_g81388_ (##length _g81389_)))
          (cond ((##fx= _g81388_ 1)
                 (apply (lambda (_stx79094_)
                          (gx#core-resolve-identifier__0 _stx79094_))
                        _g81389_))
                ((##fx= _g81388_ 2)
                 (apply (lambda (_stx79100_ _phi79101_)
                          (gx#core-resolve-identifier__1
                           _stx79100_
                           _phi79101_))
                        _g81389_))
                ((##fx= _g81388_ 3)
                 (apply (lambda (_stx79105_ _phi79106_ _ctx79107_)
                          (gx#core-resolve-identifier__%
                           _stx79105_
                           _phi79106_
                           _ctx79107_))
                        _g81389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g81389_))))))
    (define gx#core-resolve-binding
      (lambda (_id78995_ _phi78996_ _src-phi78997_ _ctx78998_ _marks78999_)
        (letrec ((_resolve79001_
                  (lambda (_ctx79069_ _src-phi79070_ _key79071_)
                    (let _lp79073_ ((_ctx79075_
                                     (gx#core-context-shift
                                      _ctx79069_
                                      _phi78996_))
                                    (_dphi79076_
                                     (fx- _phi78996_ _src-phi79070_)))
                      (let ((_$e79078_
                             (gx#core-context-resolve _ctx79075_ _key79071_)))
                        (if _$e79078_
                            (values _$e79078_)
                            (if (fxzero? _dphi79076_)
                                '#f
                                (if (fxpositive? _dphi79076_)
                                    (_lp79073_
                                     (gx#core-context-shift _ctx79075_ '-1)
                                     (fx- _dphi79076_ '1))
                                    (_lp79073_
                                     (gx#core-context-shift _ctx79075_ '1)
                                     (fx+ _dphi79076_ '1))))))))))
          (let _lp79003_ ((_ctx79005_ _ctx78998_)
                          (_src-phi79006_ _src-phi78997_)
                          (_rest79007_ _marks78999_))
            (let* ((_rest7900879016_ _rest79007_)
                   (_else7901079024_
                    (lambda ()
                      (_resolve79001_ _ctx79005_ _src-phi79006_ _id78995_)))
                   (_K7901279057_
                    (lambda (_rest79027_ _hd79028_)
                      (let* ((_hd7902979035_ _hd79028_)
                             (_E7903179039_
                              (lambda ()
                                (error '"No clause matching" _hd7902979035_)))
                             (_K7903279049_
                              (lambda (_subst79042_)
                                (let ((_$e79046_
                                       (let ((_key79044_
                                              (if _subst79042_
                                                  (hash-get
                                                   _subst79042_
                                                   _id78995_)
                                                  '#f)))
                                         (if _key79044_
                                             (_resolve79001_
                                              _ctx79005_
                                              _src-phi79006_
                                              _key79044_)
                                             '#f))))
                                  (if _$e79046_
                                      _$e79046_
                                      (_lp79003_
                                       (##unchecked-structure-ref
                                        _hd79028_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd79028_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest79027_))))))
                        (if (##structure-instance-of?
                             _hd7902979035_
                             'gx#expander-mark::t)
                            (let* ((_e7903379052_
                                    (##unchecked-structure-ref
                                     _hd7902979035_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst79055_ _e7903379052_))
                              (_K7903279049_ _subst79055_))
                            (_E7903179039_))))))
              (if (##pair? _rest7900879016_)
                  (let ((_hd7901379060_ (##car _rest7900879016_))
                        (_tl7901479062_ (##cdr _rest7900879016_)))
                    (let* ((_hd79065_ _hd7901379060_)
                           (_rest79067_ _tl7901479062_))
                      (_K7901279057_ _rest79067_ _hd79065_)))
                  (_else7901079024_)))))))
    (define gx#core-bind!__%
      (lambda (_key78871_ _val78872_ _rebind?78873_ _phi78874_ _ctx78875_)
        (letrec ((_update-binding78877_
                  (lambda (_xval78948_)
                    (if (or (_rebind?78873_ _ctx78875_ _xval78948_ _val78872_)
                            (and (##structure-direct-instance-of?
                                  _xval78948_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval78948_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val78872_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val78872_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval78948_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val78872_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val78872_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval78948_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val78872_
                        (if (and (##structure-direct-instance-of?
                                  _val78872_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val78872_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval78948_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val78872_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval78948_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval78948_
                            (if (and (##structure-direct-instance-of?
                                      _val78872_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval78948_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key78871_
                                 (cons (##unchecked-structure-ref
                                        _val78872_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val78872_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval78948_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval78948_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval78948_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval78948_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key78871_
                                 _val78872_
                                 _xval78948_))))))
                 (_gensubst78878_
                  (lambda (_subst78943_ _id78944_)
                    (let ((_eid78946_
                           (gensym (if (uninterned-symbol? _id78944_)
                                       '%
                                       _id78944_))))
                      (hash-put! _subst78943_ _id78944_ _eid78946_)
                      _eid78946_)))
                 (_subst!78879_
                  (lambda (_key78881_)
                    (let* ((_key7888278890_ _key78881_)
                           (_else7888478898_ (lambda () _key78881_))
                           (_K7888678931_
                            (lambda (_mark78901_ _id78902_)
                              (let* ((_mark7890378909_ _mark78901_)
                                     (_E7890578913_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark7890378909_)))
                                     (_K7890678923_
                                      (lambda (_subst78916_)
                                        (if (not _subst78916_)
                                            (let ((_subst78918_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark78901_
                                               _subst78918_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst78878_
                                               _subst78918_
                                               _id78902_))
                                            (let ((_$e78920_
                                                   (hash-get
                                                    _subst78916_
                                                    _id78902_)))
                                              (if _$e78920_
                                                  (values _$e78920_)
                                                  (_gensubst78878_
                                                   _subst78916_
                                                   _id78902_)))))))
                                (if (##structure-instance-of?
                                     _mark7890378909_
                                     'gx#expander-mark::t)
                                    (let* ((_e7890778926_
                                            (##unchecked-structure-ref
                                             _mark7890378909_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst78929_ _e7890778926_))
                                      (_K7890678923_ _subst78929_))
                                    (_E7890578913_))))))
                      (if (##pair? _key7888278890_)
                          (let ((_hd7888778934_ (##car _key7888278890_))
                                (_tl7888878936_ (##cdr _key7888278890_)))
                            (let* ((_id78939_ _hd7888778934_)
                                   (_mark78941_ _tl7888878936_))
                              (_K7888678931_ _mark78941_ _id78939_)))
                          (_else7888478898_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx78875_ _phi78874_)
           (_subst!78879_ _key78871_)
           _val78872_
           _update-binding78877_))))
    (define gx#core-bind!__0
      (lambda (_key78965_ _val78966_)
        (let* ((_rebind?78968_ false)
               (_phi78970_ (gx#current-expander-phi))
               (_ctx78972_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key78965_
           _val78966_
           _rebind?78968_
           _phi78970_
           _ctx78972_))))
    (define gx#core-bind!__1
      (lambda (_key78974_ _val78975_ _rebind?78976_)
        (let* ((_phi78978_ (gx#current-expander-phi))
               (_ctx78980_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key78974_
           _val78975_
           _rebind?78976_
           _phi78978_
           _ctx78980_))))
    (define gx#core-bind!__2
      (lambda (_key78982_ _val78983_ _rebind?78984_ _phi78985_)
        (let ((_ctx78987_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key78982_
           _val78983_
           _rebind?78984_
           _phi78985_
           _ctx78987_))))
    (define gx#core-bind!
      (lambda _g81391_
        (let ((_g81390_ (##length _g81391_)))
          (cond ((##fx= _g81390_ 2)
                 (apply (lambda (_key78965_ _val78966_)
                          (gx#core-bind!__0 _key78965_ _val78966_))
                        _g81391_))
                ((##fx= _g81390_ 3)
                 (apply (lambda (_key78974_ _val78975_ _rebind?78976_)
                          (gx#core-bind!__1
                           _key78974_
                           _val78975_
                           _rebind?78976_))
                        _g81391_))
                ((##fx= _g81390_ 4)
                 (apply (lambda (_key78982_
                                 _val78983_
                                 _rebind?78984_
                                 _phi78985_)
                          (gx#core-bind!__2
                           _key78982_
                           _val78983_
                           _rebind?78984_
                           _phi78985_))
                        _g81391_))
                ((##fx= _g81390_ 5)
                 (apply (lambda (_key78989_
                                 _val78990_
                                 _rebind?78991_
                                 _phi78992_
                                 _ctx78993_)
                          (gx#core-bind!__%
                           _key78989_
                           _val78990_
                           _rebind?78991_
                           _phi78992_
                           _ctx78993_))
                        _g81391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g81391_))))))
    (define gx#core-identifier-key
      (lambda (_stx78805_)
        (if (symbol? _stx78805_)
            (let* ((_g7880678814_ (gx#current-expander-marks))
                   (_else7880878822_ (lambda () _stx78805_))
                   (_K7881078827_
                    (lambda (_hd78825_) (cons _stx78805_ _hd78825_))))
              (if (##pair? _g7880678814_)
                  (let* ((_hd7881178830_ (##car _g7880678814_))
                         (_hd78833_ _hd7881178830_))
                    (_K7881078827_ _hd78833_))
                  (_else7880878822_)))
            (if (gx#identifier? _stx78805_)
                (let* ((_id78835_ (gx#syntax-local-unwrap _stx78805_))
                       (_eid78837_ (gx#stx-e _id78835_))
                       (_marks78839_ (gx#stx-identifier-marks* _id78835_)))
                  (let* ((_marks7884178849_ _marks78839_)
                         (_else7884378857_ (lambda () _eid78837_))
                         (_K7884578862_
                          (lambda (_hd78860_) (cons _eid78837_ _hd78860_))))
                    (if (##pair? _marks7884178849_)
                        (let* ((_hd7884678865_ (##car _marks7884178849_))
                               (_hd78868_ _hd7884678865_))
                          (_K7884578862_ _hd78868_))
                        (_else7884378857_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx78805_)))))
    (define gx#core-context-shift
      (lambda (_ctx78750_ _phi78751_)
        (letrec ((_make-phi78753_
                  (lambda (_super78803_)
                    (let ((__obj81362
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj81362
                       (gensym 'phi)
                       _super78803_)
                      __obj81362)))
                 (_make-phi/up78754_
                  (lambda (_ctx78798_ _super78799_)
                    (let ((_ctx+178801_ (_make-phi78753_ _super78799_)))
                      (##unchecked-structure-set!
                       _ctx78798_
                       _ctx+178801_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+178801_
                       _ctx78798_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+178801_)))
                 (_make-phi/down78755_
                  (lambda (_ctx78793_ _super78794_)
                    (let ((_ctx-178796_ (_make-phi78753_ _super78794_)))
                      (##unchecked-structure-set!
                       _ctx-178796_
                       _ctx78793_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx78793_
                       _ctx-178796_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-178796_)))
                 (_shift78756_
                  (lambda (_ctx78777_
                           _delta78778_
                           _make-delta-context78779_
                           _phi78780_
                           _K78781_)
                    (let ((_$e78783_
                           (##unchecked-structure-ref
                            _ctx78777_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e78783_
                          ((lambda (_super78786_)
                             (let* ((_super78788_
                                     (_K78781_ _super78786_ _delta78778_))
                                    (_ctx+d78790_
                                     (_make-delta-context78779_
                                      _ctx78777_
                                      _super78788_)))
                               (_K78781_
                                _ctx+d78790_
                                (fx- _phi78780_ _delta78778_))))
                           _$e78783_)
                          (error '"Bad context" _ctx78777_))))))
          (let _K78758_ ((_ctx78760_ _ctx78750_) (_phi78761_ _phi78751_))
            (if (fxzero? _phi78761_)
                _ctx78760_
                (if (fx> (##vector-length _ctx78760_) '3)
                    (if (fxpositive? _phi78761_)
                        (let ((_$e78763_
                               (##unchecked-structure-ref
                                _ctx78760_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e78763_
                              ((lambda (_g7876578767_)
                                 (_K78758_ _g7876578767_ (fx- _phi78761_ '1)))
                               _$e78763_)
                              (_shift78756_
                               _ctx78760_
                               '1
                               _make-phi/up78754_
                               _phi78761_
                               _K78758_)))
                        (let ((_$e78770_
                               (##unchecked-structure-ref
                                _ctx78760_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e78770_
                              ((lambda (_g7877278774_)
                                 (_K78758_ _g7877278774_ (fx+ _phi78761_ '1)))
                               _$e78770_)
                              (_shift78756_
                               _ctx78760_
                               '-1
                               _make-phi/down78755_
                               _phi78761_
                               _K78758_))))
                    _ctx78760_))))))
    (define gx#core-context-get
      (lambda (_ctx78747_ _key78748_)
        (hash-get
         (##unchecked-structure-ref _ctx78747_ '2 gx#expander-context::t '#f)
         _key78748_)))
    (define gx#core-context-put!
      (lambda (_ctx78743_ _key78744_ _val78745_)
        (hash-put!
         (##unchecked-structure-ref _ctx78743_ '2 gx#expander-context::t '#f)
         _key78744_
         _val78745_)))
    (define gx#core-context-resolve
      (lambda (_ctx78730_ _key78731_)
        (let _lp78733_ ((_ctx78735_ _ctx78730_))
          (let ((_$e78737_ (gx#core-context-get _ctx78735_ _key78731_)))
            (if _$e78737_
                (values _$e78737_)
                (let ((_$e78740_
                       (if (fx> (##vector-length _ctx78735_) '3)
                           (##unchecked-structure-ref
                            _ctx78735_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e78740_ (_lp78733_ _$e78740_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx78720_ _key78721_ _val78722_ _rebind78723_)
        (let ((_$e78725_ (gx#core-context-get _ctx78720_ _key78721_)))
          (if _$e78725_
              ((lambda (_xval78728_)
                 (gx#core-context-put!
                  _ctx78720_
                  _key78721_
                  (_rebind78723_ _xval78728_)))
               _$e78725_)
              (gx#core-context-put! _ctx78720_ _key78721_ _val78722_)))))
    (define gx#core-context-top__%
      (lambda (_ctx78698_ _stop?78699_)
        (let _lp78701_ ((_ctx78703_ _ctx78698_))
          (if (_stop?78699_ _ctx78703_)
              _ctx78703_
              (if (##structure-instance-of? _ctx78703_ 'gx#context-phi::t)
                  (_lp78701_
                   (##unchecked-structure-ref
                    _ctx78703_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx78709_ (gx#current-expander-context))
               (_stop?78711_ gx#top-context?))
          (gx#core-context-top__% _ctx78709_ _stop?78711_))))
    (define gx#core-context-top__1
      (lambda (_ctx78713_)
        (let ((_stop?78715_ gx#top-context?))
          (gx#core-context-top__% _ctx78713_ _stop?78715_))))
    (define gx#core-context-top
      (lambda _g81393_
        (let ((_g81392_ (##length _g81393_)))
          (cond ((##fx= _g81392_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g81393_))
                ((##fx= _g81392_ 1)
                 (apply (lambda (_ctx78713_)
                          (gx#core-context-top__1 _ctx78713_))
                        _g81393_))
                ((##fx= _g81392_ 2)
                 (apply (lambda (_ctx78717_ _stop?78718_)
                          (gx#core-context-top__% _ctx78717_ _stop?78718_))
                        _g81393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g81393_))))))
    (define gx#core-context-root__%
      (lambda (_ctx78683_)
        (let _lp78685_ ((_ctx78687_ _ctx78683_))
          (if (##structure-instance-of? _ctx78687_ 'gx#context-phi::t)
              (_lp78685_
               (##unchecked-structure-ref _ctx78687_ '3 gx#phi-context::t '#f))
              _ctx78687_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx78693_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx78693_))))
    (define gx#core-context-root
      (lambda _g81395_
        (let ((_g81394_ (##length _g81395_)))
          (cond ((##fx= _g81394_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g81395_))
                ((##fx= _g81394_ 1)
                 (apply (lambda (_ctx78695_)
                          (gx#core-context-root__% _ctx78695_))
                        _g81395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g81395_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx78664_ . __7866178665_)
        (let ((_$e78668_ (gx#current-expander-allow-rebind?)))
          (if _$e78668_
              _$e78668_
              (if (##structure-instance-of? _ctx78664_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx78664_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx78664_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx78675_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx78675_))))
    (define gx#core-context-rebind?
      (lambda _g81397_
        (let ((_g81396_ (##length _g81397_)))
          (cond ((##fx= _g81396_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g81397_))
                ((##fx= _g81396_ 1)
                 (apply (lambda (_ctx78677_)
                          (gx#core-context-rebind?__% _ctx78677_))
                        _g81397_))
                ((##fx>= _g81396_ 1)
                 (apply gx#core-context-rebind?__% _g81397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g81397_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx78647_)
        (let ((_$e78649_ (gx#core-context-top__1 _ctx78647_)))
          (if _$e78649_
              ((lambda (_ctx78652_)
                 (if (##structure-instance-of?
                      _ctx78652_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx78652_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e78649_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx78658_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx78658_))))
    (define gx#core-context-namespace
      (lambda _g81399_
        (let ((_g81398_ (##length _g81399_)))
          (cond ((##fx= _g81398_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g81399_))
                ((##fx= _g81398_ 1)
                 (apply (lambda (_ctx78660_)
                          (gx#core-context-namespace__% _ctx78660_))
                        _g81399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g81399_))))))
    (define gx#expander-binding?__%
      (lambda (_bind78633_ _is?78634_)
        (if (##structure-direct-instance-of? _bind78633_ 'gx#syntax-binding::t)
            (_is?78634_
             (##unchecked-structure-ref
              _bind78633_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind78639_)
        (let ((_is?78641_ gx#expander?))
          (gx#expander-binding?__% _bind78639_ _is?78641_))))
    (define gx#expander-binding?
      (lambda _g81401_
        (let ((_g81400_ (##length _g81401_)))
          (cond ((##fx= _g81400_ 1)
                 (apply (lambda (_bind78639_)
                          (gx#expander-binding?__0 _bind78639_))
                        _g81401_))
                ((##fx= _g81400_ 2)
                 (apply (lambda (_bind78643_ _is?78644_)
                          (gx#expander-binding?__% _bind78643_ _is?78644_))
                        _g81401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g81401_))))))
    (define gx#core-expander-binding?
      (lambda (_bind78630_)
        (gx#expander-binding?__% _bind78630_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind78628_)
        (gx#expander-binding?__% _bind78628_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind78622_)
        (letrec ((_direct-special-form?78624_
                  (lambda (_obj78626_)
                    (##structure-direct-instance-of?
                     _obj78626_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind78622_ _direct-special-form?78624_))))
    (define gx#special-form-binding?
      (lambda (_bind78620_)
        (gx#expander-binding?__% _bind78620_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind78611_)
        (letrec ((_feature?78613_
                  (lambda (_e78615_)
                    (let ((_$e78617_
                           (##structure-instance-of?
                            _e78615_
                            'gx#feature-expander::t)))
                      (if _$e78617_
                          _$e78617_
                          (##structure-instance-of?
                           _e78615_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind78611_ _feature?78613_))))
    (define gx#private-feature-binding?
      (lambda (_bind78609_)
        (gx#expander-binding?__% _bind78609_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id78596_ _bound?78597_)
        (if (gx#identifier? _id78596_)
            (_bound?78597_ (gx#resolve-identifier__0 _id78596_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id78602_)
        (let ((_bound?78604_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id78602_ _bound?78604_))))
    (define gx#core-bound-identifier?
      (lambda _g81403_
        (let ((_g81402_ (##length _g81403_)))
          (cond ((##fx= _g81402_ 1)
                 (apply (lambda (_id78602_)
                          (gx#core-bound-identifier?__0 _id78602_))
                        _g81403_))
                ((##fx= _g81402_ 2)
                 (apply (lambda (_id78606_ _bound?78607_)
                          (gx#core-bound-identifier?__%
                           _id78606_
                           _bound?78607_))
                        _g81403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g81403_))))))
    (define gx#core-identifier=?
      (lambda (_x78586_ _y78587_)
        (letrec ((_y=?78589_
                  (lambda (_xid78593_)
                    ((if (list? _y78587_) memq eq?) _xid78593_ _y78587_))))
          (let ((_bind78591_ (gx#resolve-identifier__0 _x78586_)))
            (if (##structure-instance-of? _bind78591_ 'gx#binding::t)
                (_y=?78589_
                 (##unchecked-structure-ref _bind78591_ '1 gx#binding::t '#f))
                (_y=?78589_ (gx#stx-e _x78586_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e78584_)
        (if (interned-symbol? _e78584_)
            (string-index__0 (symbol->string _e78584_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx78539_ _src78540_ _ctx78541_ _marks78542_)
        (if (##structure? _stx78539_)
            (let ((_$e78544_ (gx#sealed-syntax-unwrap _stx78539_)))
              (if _$e78544_
                  (values _$e78544_)
                  (if (gx#identifier? _stx78539_)
                      (let ((_id78547_
                             (gx#stx-unwrap__% _stx78539_ _marks78542_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id78547_ '1 gx#AST::t '#f)
                         (let ((_$e78549_
                                (##unchecked-structure-ref
                                 _id78547_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e78549_ _$e78549_ _src78540_))
                         _ctx78541_
                         (##unchecked-structure-ref
                          _id78547_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx78539_)
                       (let ((_$e78552_ (gx#stx-source _stx78539_)))
                         (if _$e78552_ _$e78552_ _src78540_))
                       _ctx78541_
                       (reverse _marks78542_)))))
            (##structure
             gx#syntax-quote::t
             _stx78539_
             _src78540_
             _ctx78541_
             (reverse _marks78542_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx78558_)
        (let* ((_src78560_ '#f)
               (_ctx78562_ (gx#current-expander-context))
               (_marks78564_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx78558_
           _src78560_
           _ctx78562_
           _marks78564_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx78566_ _src78567_)
        (let* ((_ctx78569_ (gx#current-expander-context))
               (_marks78571_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx78566_
           _src78567_
           _ctx78569_
           _marks78571_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx78573_ _src78574_ _ctx78575_)
        (let ((_marks78577_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx78573_
           _src78574_
           _ctx78575_
           _marks78577_))))
    (define gx#core-quote-syntax
      (lambda _g81405_
        (let ((_g81404_ (##length _g81405_)))
          (cond ((##fx= _g81404_ 1)
                 (apply (lambda (_stx78558_)
                          (gx#core-quote-syntax__0 _stx78558_))
                        _g81405_))
                ((##fx= _g81404_ 2)
                 (apply (lambda (_stx78566_ _src78567_)
                          (gx#core-quote-syntax__1 _stx78566_ _src78567_))
                        _g81405_))
                ((##fx= _g81404_ 3)
                 (apply (lambda (_stx78573_ _src78574_ _ctx78575_)
                          (gx#core-quote-syntax__2
                           _stx78573_
                           _src78574_
                           _ctx78575_))
                        _g81405_))
                ((##fx= _g81404_ 4)
                 (apply (lambda (_stx78579_ _src78580_ _ctx78581_ _marks78582_)
                          (gx#core-quote-syntax__%
                           _stx78579_
                           _src78580_
                           _ctx78581_
                           _marks78582_))
                        _g81405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g81405_))))))
    (define gx#core-cons
      (lambda (_hd78535_ _tl78536_)
        (cons (gx#core-quote-syntax__0 _hd78535_) _tl78536_)))
    (define gx#core-list
      (lambda (_hd78532_ . _rest78533_)
        (cons (gx#core-quote-syntax__0 _hd78532_) _rest78533_)))
    (define gx#core-cons*
      (lambda (_hd78529_ . _rest78530_)
        (apply cons* (gx#core-quote-syntax__0 _hd78529_) _rest78530_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path78503_ _rel78504_)
        (let ((_path78516_ (gx#stx-e _stx-path78503_))
              (_reldir78517_
               (let _lp78506_ ((_relsrc78508_
                                (let ((_$e78513_
                                       (gx#stx-source _stx-path78503_)))
                                  (if _$e78513_ _$e78513_ _rel78504_))))
                 (if (##structure-instance-of? _relsrc78508_ 'gerbil#AST::t)
                     (_lp78506_
                      (let ((_$e78510_ (gx#stx-source _relsrc78508_)))
                        (if _$e78510_ _$e78510_ (gx#stx-e _relsrc78508_))))
                     (if (source-location-path? _relsrc78508_)
                         (path-directory (source-location-path _relsrc78508_))
                         (if (string? _relsrc78508_)
                             (path-directory _relsrc78508_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path78516_ (path-normalize _reldir78517_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path78522_)
        (let ((_rel78524_ '#f))
          (gx#core-resolve-path__% _stx-path78522_ _rel78524_))))
    (define gx#core-resolve-path
      (lambda _g81407_
        (let ((_g81406_ (##length _g81407_)))
          (cond ((##fx= _g81406_ 1)
                 (apply (lambda (_stx-path78522_)
                          (gx#core-resolve-path__0 _stx-path78522_))
                        _g81407_))
                ((##fx= _g81406_ 2)
                 (apply (lambda (_stx-path78526_ _rel78527_)
                          (gx#core-resolve-path__% _stx-path78526_ _rel78527_))
                        _g81407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g81407_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr78459_ _ctx78460_)
        (let* ((_repr7846178468_ _repr78459_)
               (_E7846378472_
                (lambda () (error '"No clause matching" _repr7846178468_)))
               (_K7846478480_
                (lambda (_subs78475_ _phi78476_)
                  (let ((_subst78478_
                         (if (not (null? _subs78475_))
                             (list->hash-table-eq _subs78475_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst78478_
                     _ctx78460_
                     _phi78476_
                     '#f)))))
          (if (##pair? _repr7846178468_)
              (let ((_hd7846578483_ (##car _repr7846178468_))
                    (_tl7846678485_ (##cdr _repr7846178468_)))
                (let* ((_phi78488_ _hd7846578483_)
                       (_subs78490_ _tl7846678485_))
                  (_K7846478480_ _subs78490_ _phi78488_)))
              (_E7846378472_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr78495_)
        (let ((_ctx78497_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr78495_ _ctx78497_))))
    (define gx#core-deserialize-mark
      (lambda _g81409_
        (let ((_g81408_ (##length _g81409_)))
          (cond ((##fx= _g81408_ 1)
                 (apply (lambda (_repr78495_)
                          (gx#core-deserialize-mark__0 _repr78495_))
                        _g81409_))
                ((##fx= _g81408_ 2)
                 (apply (lambda (_repr78499_ _ctx78500_)
                          (gx#core-deserialize-mark__% _repr78499_ _ctx78500_))
                        _g81409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g81409_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx78456_)
        (gx#stx-rewrap _stx78456_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx78454_)
        (gx#stx-unwrap__% _stx78454_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx78424_)
        (let* ((_g7842578433_ (gx#current-expander-marks))
               (_else7842778441_ (lambda () _stx78424_))
               (_K7842978446_
                (lambda (_hd78444_) (gx#stx-apply-mark _stx78424_ _hd78444_))))
          (if (##pair? _g7842578433_)
              (let* ((_hd7843078449_ (##car _g7842578433_))
                     (_hd78452_ _hd7843078449_))
                (_K7842978446_ _hd78452_))
              (_else7842778441_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx78409_ _E78410_)
        (let ((_bind78412_ (gx#resolve-identifier__0 _stx78409_)))
          (if (##structure-direct-instance-of?
               _bind78412_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind78412_
               '4
               gx#syntax-binding::t
               '#f)
              (_E78410_ _stx78409_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx78417_)
        (let ((_E78419_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx78417_ _E78419_))))
    (define gx#syntax-local-e
      (lambda _g81411_
        (let ((_g81410_ (##length _g81411_)))
          (cond ((##fx= _g81410_ 1)
                 (apply (lambda (_stx78417_) (gx#syntax-local-e__0 _stx78417_))
                        _g81411_))
                ((##fx= _g81410_ 2)
                 (apply (lambda (_stx78421_ _E78422_)
                          (gx#syntax-local-e__% _stx78421_ _E78422_))
                        _g81411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g81411_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx78393_ _E78394_)
        (let ((_e78396_ (gx#syntax-local-e__% _stx78393_ _E78394_)))
          (if (##structure-instance-of? _e78396_ 'gx#expander::t)
              (##structure-ref _e78396_ '1 gx#expander::t '#f)
              _e78396_))))
    (define gx#syntax-local-value__0
      (lambda (_stx78401_)
        (let ((_E78403_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx78401_ _E78403_))))
    (define gx#syntax-local-value
      (lambda _g81413_
        (let ((_g81412_ (##length _g81413_)))
          (cond ((##fx= _g81412_ 1)
                 (apply (lambda (_stx78401_)
                          (gx#syntax-local-value__0 _stx78401_))
                        _g81413_))
                ((##fx= _g81412_ 2)
                 (apply (lambda (_stx78405_ _E78406_)
                          (gx#syntax-local-value__% _stx78405_ _E78406_))
                        _g81413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g81413_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx78390_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx78390_)))))
