(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1709229970)
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
      (lambda _$args84739_
        (apply make-instance gx#expander-context::t _$args84739_)))
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
      (lambda _$args84736_
        (apply make-instance gx#root-context::t _$args84736_)))
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
      (lambda _$args84733_
        (apply make-instance gx#phi-context::t _$args84733_)))
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
      (lambda _$args84730_
        (apply make-instance gx#top-context::t _$args84730_)))
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
      (lambda _$args84727_
        (apply make-instance gx#module-context::t _$args84727_)))
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
      (lambda _$args84724_
        (apply make-instance gx#prelude-context::t _$args84724_)))
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
      (lambda _$args84721_
        (apply make-instance gx#local-context::t _$args84721_)))
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
      (lambda (_self84705_ _id84706_ _super84707_)
        (if (##fx< '3 (##structure-length _self84705_))
            (begin
              (##unchecked-structure-set!
               _self84705_
               _id84706_
               '1
               (##structure-type _self84705_)
               '#f)
              (##unchecked-structure-set!
               _self84705_
               (make-hash-table-eq)
               '2
               (##structure-type _self84705_)
               '#f)
              (##unchecked-structure-set!
               _self84705_
               _super84707_
               '3
               (##structure-type _self84705_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84705_
                   '3
                   (##vector-length _self84705_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84712_ _id84713_)
        (let ((_super84715_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84712_ _id84713_ _super84715_))))
    (define gx#phi-context:::init!
      (lambda _g84782_
        (let ((_g84781_ (##length _g84782_)))
          (cond ((##fx= _g84781_ 2)
                 (apply (lambda (_self84712_ _id84713_)
                          (gx#phi-context:::init!__0 _self84712_ _id84713_))
                        _g84782_))
                ((##fx= _g84781_ 3)
                 (apply (lambda (_self84717_ _id84718_ _super84719_)
                          (gx#phi-context:::init!__%
                           _self84717_
                           _id84718_
                           _super84719_))
                        _g84782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84782_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self84569_ _super84570_)
        (if (##fx< '3 (##structure-length _self84569_))
            (begin
              (##unchecked-structure-set!
               _self84569_
               (gensym 'L)
               '1
               (##structure-type _self84569_)
               '#f)
              (##unchecked-structure-set!
               _self84569_
               (make-hash-table-eq)
               '2
               (##structure-type _self84569_)
               '#f)
              (##unchecked-structure-set!
               _self84569_
               _super84570_
               '3
               (##structure-type _self84569_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84569_
                   '3
                   (##vector-length _self84569_)))))
    (define gx#local-context:::init!__0
      (lambda (_self84575_)
        (let ((_super84577_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self84575_ _super84577_))))
    (define gx#local-context:::init!
      (lambda _g84784_
        (let ((_g84783_ (##length _g84784_)))
          (cond ((##fx= _g84783_ 1)
                 (apply (lambda (_self84575_)
                          (gx#local-context:::init!__0 _self84575_))
                        _g84784_))
                ((##fx= _g84783_ 2)
                 (apply (lambda (_self84579_ _super84580_)
                          (gx#local-context:::init!__%
                           _self84579_
                           _super84580_))
                        _g84784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84784_))))))
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
      (lambda _$args84443_ (apply make-instance gx#binding::t _$args84443_)))
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
      (lambda _$args84440_
        (apply make-instance gx#runtime-binding::t _$args84440_)))
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
      (lambda _$args84437_
        (apply make-instance gx#local-binding::t _$args84437_)))
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
      (lambda _$args84434_
        (apply make-instance gx#top-binding::t _$args84434_)))
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
      (lambda _$args84431_
        (apply make-instance gx#module-binding::t _$args84431_)))
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
      (lambda _$args84428_
        (apply make-instance gx#extern-binding::t _$args84428_)))
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
      (lambda _$args84425_
        (apply make-instance gx#syntax-binding::t _$args84425_)))
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
      (lambda _$args84422_
        (apply make-instance gx#import-binding::t _$args84422_)))
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
      (lambda _$args84419_
        (apply make-instance gx#alias-binding::t _$args84419_)))
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
      (lambda _$args84416_ (apply make-instance gx#expander::t _$args84416_)))
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
      (lambda _$args84413_
        (apply make-instance gx#core-expander::t _$args84413_)))
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
      (lambda _$args84410_
        (apply make-instance gx#expression-form::t _$args84410_)))
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
      (lambda _$args84407_
        (apply make-instance gx#special-form::t _$args84407_)))
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
      (lambda _$args84404_
        (apply make-instance gx#definition-form::t _$args84404_)))
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
      (lambda _$args84401_
        (apply make-instance gx#top-special-form::t _$args84401_)))
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
      (lambda _$args84398_
        (apply make-instance gx#module-special-form::t _$args84398_)))
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
      (lambda _$args84395_
        (apply make-instance gx#feature-expander::t _$args84395_)))
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
      (lambda _$args84392_
        (apply make-instance gx#private-feature-expander::t _$args84392_)))
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
      (lambda _$args84389_
        (apply make-instance gx#reserved-expander::t _$args84389_)))
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
      (lambda _$args84386_
        (apply make-instance gx#macro-expander::t _$args84386_)))
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
      (lambda _$args84383_
        (apply make-instance gx#rename-macro-expander::t _$args84383_)))
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
      (lambda _$args84380_
        (apply make-instance gx#user-expander::t _$args84380_)))
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
      (lambda _$args84377_
        (apply make-instance gx#expander-mark::t _$args84377_)))
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
      (lambda (_ctx84362_ _message84363_ _stx84364_ . _details84365_)
        (let ((_ctx84375_
               (let ((_$e84367_ _ctx84362_))
                 (if _$e84367_
                     _$e84367_
                     (let ((_$e84370_ (gx#core-context-top__0)))
                       (if _$e84370_
                           ((lambda (_ctx84373_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx84373_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e84370_)
                           '#f))))))
          (raise (make-syntax-error
                  _message84363_
                  (cons _stx84364_ _details84365_)
                  _ctx84375_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx84349_ _expression?84350_)
        (gx#eval-syntax* (gx#core-expand__% _stx84349_ _expression?84350_))))
    (define gx#eval-syntax__0
      (lambda (_stx84355_)
        (let ((_expression?84357_ '#f))
          (gx#eval-syntax__% _stx84355_ _expression?84357_))))
    (define gx#eval-syntax
      (lambda _g84786_
        (let ((_g84785_ (##length _g84786_)))
          (cond ((##fx= _g84785_ 1)
                 (apply (lambda (_stx84355_) (gx#eval-syntax__0 _stx84355_))
                        _g84786_))
                ((##fx= _g84785_ 2)
                 (apply (lambda (_stx84359_ _expression?84360_)
                          (gx#eval-syntax__% _stx84359_ _expression?84360_))
                        _g84786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84786_))))))
    (define gx#eval-syntax*
      (lambda (_stx84346_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx84346_))))
    (define gx#core-expand__%
      (lambda (_stx84333_ _expression?84334_)
        (if _expression?84334_
            (gx#core-expand-expression _stx84333_)
            (gx#core-expand-top _stx84333_))))
    (define gx#core-expand__0
      (lambda (_stx84339_)
        (let ((_expression?84341_ '#f))
          (gx#core-expand__% _stx84339_ _expression?84341_))))
    (define gx#core-expand
      (lambda _g84788_
        (let ((_g84787_ (##length _g84788_)))
          (cond ((##fx= _g84787_ 1)
                 (apply (lambda (_stx84339_) (gx#core-expand__0 _stx84339_))
                        _g84788_))
                ((##fx= _g84787_ 2)
                 (apply (lambda (_stx84343_ _expression?84344_)
                          (gx#core-expand__% _stx84343_ _expression?84344_))
                        _g84788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84788_))))))
    (define gx#core-expand-top
      (lambda (_stx84300_)
        (let* ((_stx84302_ (gx#core-expand*__0 _stx84300_))
               (_e8430384310_ _stx84302_)
               (_E8430584314_
                (lambda () (gx#core-expand-expression _stx84302_)))
               (_E8430484328_
                (lambda ()
                  (if (gx#stx-pair? _e8430384310_)
                      (let ((_e8430684318_ (gx#syntax-e _e8430384310_)))
                        (let ((_hd8430784321_ (##car _e8430684318_))
                              (_tl8430884323_ (##cdr _e8430684318_)))
                          (let ((_form84326_ _hd8430784321_))
                            (if (gx#core-bound-identifier?__0 _form84326_)
                                _stx84302_
                                (_E8430584314_)))))
                      (_E8430584314_)))))
          (_E8430484328_))))
    (define gx#core-expand-expression
      (lambda (_stx84247_)
        (letrec ((_sealed-expression?84249_
                  (lambda (_hd84270_)
                    (if (gx#sealed-syntax? _hd84270_)
                        (let* ((_e8427184278_ _hd84270_)
                               (_E8427384282_ (lambda () '#f))
                               (_E8427284296_
                                (lambda ()
                                  (if (gx#stx-pair? _e8427184278_)
                                      (let ((_e8427484286_
                                             (gx#syntax-e _e8427184278_)))
                                        (let ((_hd8427584289_
                                               (##car _e8427484286_))
                                              (_tl8427684291_
                                               (##cdr _e8427484286_)))
                                          (let ((_form84294_ _hd8427584289_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form84294_
                                                 gx#expression-form-binding?)
                                                (_E8427384282_)))))
                                      (_E8427384282_)))))
                          (_E8427284296_))
                        '#f)))
                 (_illegal-expression84250_
                  (lambda (_hd84268_ . _g84789_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx84247_
                     _hd84268_)))
                 (_expand-e84251_
                  (lambda (_form84263_ _hd84264_)
                    (let ((_bind84266_
                           (if (##structure-instance-of?
                                _form84263_
                                'gx#binding::t)
                               _form84263_
                               (gx#resolve-identifier__0 _form84263_))))
                      (if (gx#core-expander-binding? _bind84266_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind84266_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd84264_
                            (gx#stx-source _stx84247_)))
                          (if (##structure-direct-instance-of?
                               _bind84266_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind84266_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd84264_
                                 (gx#stx-source _stx84247_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx84247_
                               _form84263_)))))))
          (let ((_hd84253_ (gx#core-expand-head _stx84247_)))
            (if (_sealed-expression?84249_ _hd84253_)
                _hd84253_
                (if (gx#stx-pair? _hd84253_)
                    (let* ((_form84255_ (gx#stx-car _hd84253_))
                           (_bind84257_
                            (if (gx#identifier? _form84255_)
                                (gx#resolve-identifier__0 _form84255_)
                                '#f)))
                      (if (or (not _bind84257_)
                              (not (gx#core-expander-binding? _bind84257_)))
                          (_expand-e84251_ '%%app (cons '%%app _hd84253_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind84257_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd84253_
                               _illegal-expression84250_)
                              (if (gx#expression-form-binding? _bind84257_)
                                  (_expand-e84251_ _bind84257_ _hd84253_)
                                  (if (gx#direct-special-form-binding?
                                       _bind84257_)
                                      (gx#core-expand-expression
                                       (_expand-e84251_ _bind84257_ _hd84253_))
                                      (_illegal-expression84250_
                                       _hd84253_))))))
                    (if (gx#core-bound-identifier?__0 _hd84253_)
                        (_illegal-expression84250_ _hd84253_)
                        (if (gx#identifier? _hd84253_)
                            (_expand-e84251_
                             '%%ref
                             (cons '%%ref (cons _hd84253_ '())))
                            (if (gx#stx-datum? _hd84253_)
                                (_expand-e84251_
                                 '%#quote
                                 (cons '%#quote (cons _hd84253_ '())))
                                (_illegal-expression84250_ _hd84253_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx84242_)
        (call-with-parameters
         (lambda ()
           (let ((_stx84245_ (gx#core-expand-expression _stx84242_)))
             (values _stx84245_ (gx#eval-syntax* _stx84245_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx84223_ _stop?84224_)
        (let _lp84226_ ((_stx84228_ _stx84223_))
          (if (_stop?84224_ _stx84228_)
              _stx84228_
              (let ((_rstx84230_ (gx#core-expand1 _stx84228_)))
                (if (eq? _stx84228_ _rstx84230_)
                    _stx84228_
                    (_lp84226_ _rstx84230_)))))))
    (define gx#core-expand*__0
      (lambda (_stx84235_)
        (let ((_stop?84237_ false))
          (gx#core-expand*__% _stx84235_ _stop?84237_))))
    (define gx#core-expand*
      (lambda _g84791_
        (let ((_g84790_ (##length _g84791_)))
          (cond ((##fx= _g84790_ 1)
                 (apply (lambda (_stx84235_) (gx#core-expand*__0 _stx84235_))
                        _g84791_))
                ((##fx= _g84790_ 2)
                 (apply (lambda (_stx84239_ _stop?84240_)
                          (gx#core-expand*__% _stx84239_ _stop?84240_))
                        _g84791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84791_))))))
    (define gx#core-expand1
      (lambda (_stx84179_)
        (letrec ((_step84181_
                  (lambda (_hd84218_)
                    (let ((_bind84220_ (gx#resolve-identifier__0 _hd84218_)))
                      (if (##structure-instance-of?
                           _bind84220_
                           'gx#runtime-binding::t)
                          _stx84179_
                          (if (##structure-direct-instance-of?
                               _bind84220_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind84220_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx84179_)
                              (if (not _bind84220_)
                                  _stx84179_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx84179_))))))))
          (let* ((_e8418284190_ _stx84179_)
                 (_E8418884194_ (lambda () _stx84179_))
                 (_E8418484200_
                  (lambda ()
                    (let ((_hd84198_ _e8418284190_))
                      (if (gx#identifier? _hd84198_)
                          (_step84181_ _hd84198_)
                          (_E8418884194_)))))
                 (_E8418384214_
                  (lambda ()
                    (if (gx#stx-pair? _e8418284190_)
                        (let ((_e8418584204_ (gx#syntax-e _e8418284190_)))
                          (let ((_hd8418684207_ (##car _e8418584204_))
                                (_tl8418784209_ (##cdr _e8418584204_)))
                            (let ((_hd84212_ _hd8418684207_))
                              (if (gx#identifier? _hd84212_)
                                  (_step84181_ _hd84212_)
                                  (_E8418484200_)))))
                        (_E8418484200_)))))
            (_E8418384214_)))))
    (define gx#core-expand-head
      (lambda (_stx84145_)
        (letrec ((_stop?84147_
                  (lambda (_stx84149_)
                    (let* ((_e8415084157_ _stx84149_)
                           (_E8415284161_ (lambda () '#f))
                           (_E8415184175_
                            (lambda ()
                              (if (gx#stx-pair? _e8415084157_)
                                  (let ((_e8415384165_
                                         (gx#syntax-e _e8415084157_)))
                                    (let ((_hd8415484168_
                                           (##car _e8415384165_))
                                          (_tl8415584170_
                                           (##cdr _e8415384165_)))
                                      (let ((_hd84173_ _hd8415484168_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd84173_)
                                            (_E8415284161_)))))
                                  (_E8415284161_)))))
                      (_E8415184175_)))))
          (gx#core-expand*__% _stx84145_ _stop?84147_))))
    (define gx#core-expand-block__%
      (lambda (_stx83951_
               _expand-special83952_
               _begin-form83953_
               _expand-e83954_)
        (letrec ((_expand-splice83956_
                  (lambda (_hd84119_ _body84120_ _rest84121_ _r84122_)
                    (if (gx#stx-list? _body84120_)
                        (_K83960_
                         (gx#stx-foldr cons _rest84121_ _body84120_)
                         _r84122_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83951_
                         _hd84119_))))
                 (_expand-cond-expand83957_
                  (lambda (_hd84115_ _rest84116_ _r84117_)
                    (_K83960_
                     (cons (gx#core-expand-cond-expand% _hd84115_) _rest84116_)
                     _r84117_)))
                 (_expand-include83958_
                  (lambda (_hd84064_ _rest84065_ _r84066_)
                    (let* ((_e8406784077_ _hd84064_)
                           (_E8406984081_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8406784077_)))
                           (_E8406884111_
                            (lambda ()
                              (if (gx#stx-pair? _e8406784077_)
                                  (let ((_e8407084085_
                                         (gx#syntax-e _e8406784077_)))
                                    (let ((_hd8407184088_
                                           (##car _e8407084085_))
                                          (_tl8407284090_
                                           (##cdr _e8407084085_)))
                                      (if (gx#stx-pair? _tl8407284090_)
                                          (let ((_e8407384093_
                                                 (gx#syntax-e _tl8407284090_)))
                                            (let ((_hd8407484096_
                                                   (##car _e8407384093_))
                                                  (_tl8407584098_
                                                   (##cdr _e8407384093_)))
                                              (let ((_path84101_
                                                     _hd8407484096_))
                                                (if (gx#stx-null?
                                                     _tl8407584098_)
                                                    (if (gx#stx-string?
                                                         _path84101_)
                                                        (let* ((_rpath84103_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path84101_
                         (gx#stx-source _hd84064_)))
                       (_block84105_
                        (gx#core-expand-include%__% _hd84064_ _rpath84103_))
                       (_rbody84108_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block84105_
                            _expand-special83952_
                            '#f
                            _expand-e83954_))
                         gx#current-expander-path
                         (cons _rpath84103_ (gx#current-expander-path)))))
                  (_K83960_ _rest84065_ (foldr1 cons _r84066_ _rbody84108_)))
                (_E8406984081_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8406984081_)))))
                                          (_E8406984081_))))
                                  (_E8406984081_)))))
                      (_E8406884111_))))
                 (_expand-expression83959_
                  (lambda (_hd84060_ _rest84061_ _r84062_)
                    (_K83960_
                     _rest84061_
                     (cons (_expand-e83954_ _hd84060_) _r84062_))))
                 (_K83960_
                  (lambda (_rest83990_ _r83991_)
                    (let* ((_e8399283999_ _rest83990_)
                           (_E8399484003_
                            (lambda ()
                              (if _begin-form83953_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83953_
                                    (reverse _r83991_))
                                   (gx#stx-source _stx83951_))
                                  _r83991_)))
                           (_E8399384056_
                            (lambda ()
                              (if (gx#stx-pair? _e8399283999_)
                                  (let ((_e8399584007_
                                         (gx#syntax-e _e8399283999_)))
                                    (let ((_hd8399684010_
                                           (##car _e8399584007_))
                                          (_tl8399784012_
                                           (##cdr _e8399584007_)))
                                      (let* ((_hd84015_ _hd8399684010_)
                                             (_rest84017_ _tl8399784012_))
                                        (if '#t
                                            (let* ((_hd84019_
                                                    (gx#core-expand-head
                                                     _hd84015_))
                                                   (_e8402084027_ _hd84019_)
                                                   (_E8402284031_
                                                    (lambda ()
                                                      (_expand-expression83959_
                                                       _hd84019_
                                                       _rest84017_
                                                       _r83991_)))
                                                   (_E8402184052_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8402084027_)
                                                          (let ((_e8402384035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8402084027_)))
                    (let ((_hd8402484038_ (##car _e8402384035_))
                          (_tl8402584040_ (##cdr _e8402384035_)))
                      (let* ((_form84043_ _hd8402484038_)
                             (_body84045_ _tl8402584040_))
                        (if '#t
                            (let ((_bind84047_
                                   (if (gx#identifier? _form84043_)
                                       (gx#resolve-identifier__0 _form84043_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind84047_)
                                  (let ((_$e84049_
                                         (##unchecked-structure-ref
                                          _bind84047_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e84049_)
                                        (_expand-splice83956_
                                         _hd84019_
                                         _body84045_
                                         _rest84017_
                                         _r83991_)
                                        (if (eq? '%#cond-expand _$e84049_)
                                            (_expand-cond-expand83957_
                                             _hd84019_
                                             _rest84017_
                                             _r83991_)
                                            (if (eq? '%#include _$e84049_)
                                                (_expand-include83958_
                                                 _hd84019_
                                                 _rest84017_
                                                 _r83991_)
                                                (_expand-special83952_
                                                 _hd84019_
                                                 _K83960_
                                                 _rest84017_
                                                 _r83991_)))))
                                  (_expand-expression83959_
                                   _hd84019_
                                   _rest84017_
                                   _r83991_)))
                            (_E8402284031_)))))
                  (_E8402284031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8402184052_))
                                            (_E8399484003_)))))
                                  (_E8399484003_)))))
                      (_E8399384056_)))))
          (let* ((_e8396183968_ _stx83951_)
                 (_E8396383972_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8396183968_)))
                 (_E8396283986_
                  (lambda ()
                    (if (gx#stx-pair? _e8396183968_)
                        (let ((_e8396483976_ (gx#syntax-e _e8396183968_)))
                          (let ((_hd8396583979_ (##car _e8396483976_))
                                (_tl8396683981_ (##cdr _e8396483976_)))
                            (let ((_body83984_ _tl8396683981_))
                              (if (gx#stx-list? _body83984_)
                                  (_K83960_ _body83984_ '())
                                  (_E8396383972_)))))
                        (_E8396383972_)))))
            (_E8396283986_)))))
    (define gx#core-expand-block__0
      (lambda (_stx84127_ _expand-special84128_)
        (let* ((_begin-form84130_ '%#begin)
               (_expand-e84132_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84127_
           _expand-special84128_
           _begin-form84130_
           _expand-e84132_))))
    (define gx#core-expand-block__1
      (lambda (_stx84134_ _expand-special84135_ _begin-form84136_)
        (let ((_expand-e84138_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84134_
           _expand-special84135_
           _begin-form84136_
           _expand-e84138_))))
    (define gx#core-expand-block
      (lambda _g84793_
        (let ((_g84792_ (##length _g84793_)))
          (cond ((##fx= _g84792_ 2)
                 (apply (lambda (_stx84127_ _expand-special84128_)
                          (gx#core-expand-block__0
                           _stx84127_
                           _expand-special84128_))
                        _g84793_))
                ((##fx= _g84792_ 3)
                 (apply (lambda (_stx84134_
                                 _expand-special84135_
                                 _begin-form84136_)
                          (gx#core-expand-block__1
                           _stx84134_
                           _expand-special84135_
                           _begin-form84136_))
                        _g84793_))
                ((##fx= _g84792_ 4)
                 (apply (lambda (_stx84140_
                                 _expand-special84141_
                                 _begin-form84142_
                                 _expand-e84143_)
                          (gx#core-expand-block__%
                           _stx84140_
                           _expand-special84141_
                           _begin-form84142_
                           _expand-e84143_))
                        _g84793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84793_))))))
    (define gx#core-expand-block*
      (lambda (_stx83899_ _expand-special83900_)
        (let* ((_g8390183912_
                (gx#core-expand-block__1 _stx83899_ _expand-special83900_ '#f))
               (_E8390583916_
                (lambda () (error '"No clause matching" _g8390183912_))))
          (let ((_K8391083947_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83899_)))
                (_K8390783933_ (lambda (_expr83931_) _expr83931_))
                (_K8390683922_
                 (lambda (_body83920_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83920_))
                    (gx#stx-source _stx83899_)))))
            (let ((_try-match8390383943_
                   (lambda ()
                     (if (##pair? _g8390183912_)
                         (let ((_tl8390983938_ (##cdr _g8390183912_))
                               (_hd8390883936_ (##car _g8390183912_)))
                           (if (##null? _tl8390983938_)
                               (let ((_expr83941_ _hd8390883936_))
                                 (_K8390783933_ _expr83941_))
                               (let ((_body83925_ _g8390183912_))
                                 (_K8390683922_ _body83925_))))
                         (let ((_body83925_ _g8390183912_))
                           (_K8390683922_ _body83925_))))))
              (if (##null? _g8390183912_)
                  (_K8391083947_)
                  (_try-match8390383943_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83727_)
        (letrec ((_satisfied?83729_
                  (lambda (_condition83827_)
                    (let* ((_e8382883843_ _condition83827_)
                           (_E8383883847_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8382883843_)))
                           (_E8383183866_
                            (lambda ()
                              (if (gx#stx-pair? _e8382883843_)
                                  (let ((_e8383983851_
                                         (gx#syntax-e _e8382883843_)))
                                    (let ((_hd8384083854_
                                           (##car _e8383983851_))
                                          (_tl8384183856_
                                           (##cdr _e8383983851_)))
                                      (let* ((_combinator83859_ _hd8384083854_)
                                             (_body83861_ _tl8384183856_))
                                        (if (gx#stx-list? _body83861_)
                                            (let ((_$e83863_
                                                   (gx#stx-e
                                                    _combinator83859_)))
                                              (if (eq? 'not _$e83863_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83729_
                                                        _body83861_))
                                                  (if (eq? 'and _$e83863_)
                                                      (gx#stx-andmap
                                                       _satisfied?83729_
                                                       _body83861_)
                                                      (if (eq? 'or _$e83863_)
                                                          (gx#stx-ormap
                                                           _satisfied?83729_
                                                           _body83861_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83863_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83861_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83727_
                       _combinator83859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8383883847_)))))
                                  (_E8383883847_))))
                           (_E8383083889_
                            (lambda ()
                              (if (gx#stx-pair? _e8382883843_)
                                  (let ((_e8383283870_
                                         (gx#syntax-e _e8382883843_)))
                                    (let ((_hd8383383873_
                                           (##car _e8383283870_))
                                          (_tl8383483875_
                                           (##cdr _e8383283870_)))
                                      (if (and (gx#identifier? _hd8383383873_)
                                               (gx#core-identifier=?
                                                _hd8383383873_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8383483875_)
                                              (let ((_e8383583878_
                                                     (gx#syntax-e
                                                      _tl8383483875_)))
                                                (let ((_hd8383683881_
                                                       (##car _e8383583878_))
                                                      (_tl8383783883_
                                                       (##cdr _e8383583878_)))
                                                  (let ((_expr83886_
                                                         _hd8383683881_))
                                                    (if (gx#stx-null?
                                                         _tl8383783883_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83886_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8383183866_))
                (_E8383183866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8383183866_))
                                          (_E8383183866_))))
                                  (_E8383183866_))))
                           (_E8382983895_
                            (lambda ()
                              (let ((_id83893_ _e8382883843_))
                                (if (gx#identifier? _id83893_)
                                    (gx#core-bound-identifier?__%
                                     _id83893_
                                     gx#feature-binding?)
                                    (_E8383083889_))))))
                      (_E8382983895_))))
                 (_loop83730_
                  (lambda (_rest83760_)
                    (let* ((_e8376183769_ _rest83760_)
                           (_E8376783773_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8376183769_)))
                           (_E8376383777_
                            (lambda ()
                              (if (gx#stx-null? _e8376183769_)
                                  (if '#t '() (_E8376783773_))
                                  (_E8376783773_))))
                           (_E8376283823_
                            (lambda ()
                              (if (gx#stx-pair? _e8376183769_)
                                  (let ((_e8376483781_
                                         (gx#syntax-e _e8376183769_)))
                                    (let ((_hd8376583784_
                                           (##car _e8376483781_))
                                          (_tl8376683786_
                                           (##cdr _e8376483781_)))
                                      (let* ((_hd83789_ _hd8376583784_)
                                             (_rest83791_ _tl8376683786_))
                                        (if '#t
                                            (let* ((_e8379283799_ _hd83789_)
                                                   (_E8379483803_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8379283799_)))
                                                   (_E8379383819_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8379283799_)
                                                          (let ((_e8379583807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8379283799_)))
                    (let ((_hd8379683810_ (##car _e8379583807_))
                          (_tl8379783812_ (##cdr _e8379583807_)))
                      (let* ((_condition83815_ _hd8379683810_)
                             (_body83817_ _tl8379783812_))
                        (if '#t
                            (if (gx#stx-eq? _condition83815_ 'else)
                                (if (gx#stx-null? _rest83791_)
                                    _body83817_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83727_
                                     _hd83789_))
                                (if (_satisfied?83729_ _condition83815_)
                                    _body83817_
                                    (_loop83730_ _rest83791_)))
                            (_E8379483803_)))))
                  (_E8379483803_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8379383819_))
                                            (_E8376383777_)))))
                                  (_E8376383777_)))))
                      (_E8376283823_)))))
          (let* ((_e8373183738_ _stx83727_)
                 (_E8373383742_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8373183738_)))
                 (_E8373283756_
                  (lambda ()
                    (if (gx#stx-pair? _e8373183738_)
                        (let ((_e8373483746_ (gx#syntax-e _e8373183738_)))
                          (let ((_hd8373583749_ (##car _e8373483746_))
                                (_tl8373683751_ (##cdr _e8373483746_)))
                            (let ((_clauses83754_ _tl8373683751_))
                              (if (gx#stx-list? _clauses83754_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83730_ _clauses83754_))
                                  (_E8373383742_)))))
                        (_E8373383742_)))))
            (_E8373283756_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83670_ _rpath83671_)
        (let* ((_e8367283682_ _stx83670_)
               (_E8367483686_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8367283682_)))
               (_E8367383713_
                (lambda ()
                  (if (gx#stx-pair? _e8367283682_)
                      (let ((_e8367583690_ (gx#syntax-e _e8367283682_)))
                        (let ((_hd8367683693_ (##car _e8367583690_))
                              (_tl8367783695_ (##cdr _e8367583690_)))
                          (if (gx#stx-pair? _tl8367783695_)
                              (let ((_e8367883698_
                                     (gx#syntax-e _tl8367783695_)))
                                (let ((_hd8367983701_ (##car _e8367883698_))
                                      (_tl8368083703_ (##cdr _e8367883698_)))
                                  (let ((_path83706_ _hd8367983701_))
                                    (if (gx#stx-null? _tl8368083703_)
                                        (if (gx#stx-string? _path83706_)
                                            (let ((_rpath83711_
                                                   (let ((_$e83708_
                                                          _rpath83671_))
                                                     (if _$e83708_
                                                         _$e83708_
                                                         (gx#core-resolve-path__%
                                                          _path83706_
                                                          (gx#stx-source
                                                           _stx83670_))))))
                                              (if (member _rpath83711_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83670_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83711_))
                                                    (gx#stx-source
                                                     _stx83670_)))))
                                            (_E8367483686_))
                                        (_E8367483686_)))))
                              (_E8367483686_))))
                      (_E8367483686_)))))
          (_E8367383713_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83720_)
        (let ((_rpath83722_ '#f))
          (gx#core-expand-include%__% _stx83720_ _rpath83722_))))
    (define gx#core-expand-include%
      (lambda _g84795_
        (let ((_g84794_ (##length _g84795_)))
          (cond ((##fx= _g84794_ 1)
                 (apply (lambda (_stx83720_)
                          (gx#core-expand-include%__0 _stx83720_))
                        _g84795_))
                ((##fx= _g84794_ 2)
                 (apply (lambda (_stx83724_ _rpath83725_)
                          (gx#core-expand-include%__% _stx83724_ _rpath83725_))
                        _g84795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84795_))))))
    (define gx#core-apply-expander__%
      (lambda (_K83639_ _stx83640_ _method83641_)
        (if (procedure? _K83639_)
            (let ((_$e83643_ (gx#stx-source _stx83640_)))
              (if _$e83643_
                  ((lambda (_g8364583647_)
                     (gx#stx-wrap-source (_K83639_ _stx83640_) _g8364583647_))
                   _$e83643_)
                  (_K83639_ _stx83640_)))
            (let ((_$e83650_ (bound-method-ref _K83639_ _method83641_)))
              (if _$e83650_
                  ((lambda (_g8365283654_)
                     (gx#core-apply-expander__%
                      _g8365283654_
                      _stx83640_
                      _method83641_))
                   _$e83650_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx83640_
                   _method83641_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83660_ _stx83661_)
        (let ((_method83663_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83660_ _stx83661_ _method83663_))))
    (define gx#core-apply-expander
      (lambda _g84797_
        (let ((_g84796_ (##length _g84797_)))
          (cond ((##fx= _g84796_ 2)
                 (apply (lambda (_K83660_ _stx83661_)
                          (gx#core-apply-expander__0 _K83660_ _stx83661_))
                        _g84797_))
                ((##fx= _g84796_ 3)
                 (apply (lambda (_K83665_ _stx83666_ _method83667_)
                          (gx#core-apply-expander__%
                           _K83665_
                           _stx83666_
                           _method83667_))
                        _g84797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84797_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self83635_ _stx83636_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx83636_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self83488_ _stx83489_)
        (let* ((_self8349083496_ _self83488_)
               (_E8349283500_
                (lambda () (error '"No clause matching" _self8349083496_)))
               (_K8349383505_
                (lambda (_K83503_)
                  (gx#core-apply-expander__0 _K83503_ _stx83489_))))
          (if (##structure-instance-of? _self8349083496_ 'gx#core-macro::t)
              (let* ((_e8349483508_
                      (##unchecked-structure-ref
                       _self8349083496_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83511_ _e8349483508_))
                (_K8349383505_ _K83511_))
              (_E8349283500_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self83341_ _stx83342_)
        (if (gx#sealed-syntax? _stx83342_)
            _stx83342_
            (let* ((_self8334383349_ _self83341_)
                   (_E8334583353_
                    (lambda () (error '"No clause matching" _self8334383349_)))
                   (_K8334683358_
                    (lambda (_K83356_)
                      (gx#core-apply-expander__0 _K83356_ _stx83342_))))
              (if (##structure-instance-of?
                   _self8334383349_
                   'gx#core-expander::t)
                  (let* ((_e8334783361_
                          (##unchecked-structure-ref
                           _self8334383349_
                           '1
                           gx#expander::t
                           '#f))
                         (_K83364_ _e8334783361_))
                    (_K8334683358_ _K83364_))
                  (_E8334583353_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self83203_ _stx83204_ _top?83205_)
        (if (_top?83205_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self83203_ _stx83204_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx83204_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self83210_ _stx83211_)
        (let ((_top?83213_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self83210_
           _stx83211_
           _top?83213_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84799_
        (let ((_g84798_ (##length _g84799_)))
          (cond ((##fx= _g84798_ 2)
                 (apply (lambda (_self83210_ _stx83211_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self83210_
                           _stx83211_))
                        _g84799_))
                ((##fx= _g84798_ 3)
                 (apply (lambda (_self83215_ _stx83216_ _top?83217_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self83215_
                           _stx83216_
                           _top?83217_))
                        _g84799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84799_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self83077_ _stx83078_)
        (gx#top-special-form::apply-macro-expander__%
         _self83077_
         _stx83078_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82902_ _stx82903_)
        (let* ((_self8290482910_ _self82902_)
               (_E8290682914_
                (lambda () (error '"No clause matching" _self8290482910_)))
               (_K8290782947_
                (lambda (_id82917_)
                  (let* ((_e8291882925_ _stx82903_)
                         (_E8292082929_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8291882925_)))
                         (_E8291982943_
                          (lambda ()
                            (if (gx#stx-pair? _e8291882925_)
                                (let ((_e8292182933_
                                       (gx#syntax-e _e8291882925_)))
                                  (let ((_hd8292282936_ (##car _e8292182933_))
                                        (_tl8292382938_ (##cdr _e8292182933_)))
                                    (let ((_body82941_ _tl8292382938_))
                                      (if '#t
                                          (gx#core-cons _id82917_ _body82941_)
                                          (_E8292082929_)))))
                                (_E8292082929_)))))
                    (_E8291982943_)))))
          (if (##structure-instance-of?
               _self8290482910_
               'gx#rename-macro-expander::t)
              (let* ((_e8290882950_
                      (##unchecked-structure-ref
                       _self8290482910_
                       '1
                       gx#expander::t
                       '#f))
                     (_id82953_ _e8290882950_))
                (_K8290782947_ _id82953_))
              (_E8290682914_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82728_ _stx82729_ _method82730_)
        (let* ((_self8273182739_ _self82728_)
               (_E8273382743_
                (lambda () (error '"No clause matching" _self8273182739_)))
               (_K8273482750_
                (lambda (_phi82746_ _ctx82747_ _K82748_)
                  (gx#core-apply-user-macro
                   _K82748_
                   _stx82729_
                   _ctx82747_
                   _phi82746_
                   _method82730_))))
          (if (##structure-instance-of? _self8273182739_ 'gx#macro-expander::t)
              (let* ((_e8273582753_
                      (##unchecked-structure-ref
                       _self8273182739_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82756_ _e8273582753_)
                     (_e8273682758_
                      (##unchecked-structure-ref
                       _self8273182739_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx82761_ _e8273682758_)
                     (_e8273782763_
                      (##unchecked-structure-ref
                       _self8273182739_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi82766_ _e8273782763_))
                (_K8273482750_ _phi82766_ _ctx82761_ _K82756_))
              (_E8273382743_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82771_ _stx82772_)
        (let ((_method82774_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82771_
           _stx82772_
           _method82774_))))
    (define gx#core-apply-user-expander
      (lambda _g84801_
        (let ((_g84800_ (##length _g84801_)))
          (cond ((##fx= _g84800_ 2)
                 (apply (lambda (_self82771_ _stx82772_)
                          (gx#core-apply-user-expander__0
                           _self82771_
                           _stx82772_))
                        _g84801_))
                ((##fx= _g84800_ 3)
                 (apply (lambda (_self82776_ _stx82777_ _method82778_)
                          (gx#core-apply-user-expander__%
                           _self82776_
                           _stx82777_
                           _method82778_))
                        _g84801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84801_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82718_ _stx82719_ _ctx82720_ _phi82721_ _method82722_)
        (let ((_mark82724_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82720_
                _phi82721_
                _stx82719_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82718_
               (gx#stx-apply-mark _stx82719_ _mark82724_)
               _method82722_)
              _mark82724_))
           gx#current-expander-marks
           (cons _mark82724_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx82570_ _phi82571_ _ctx82572_)
        (let _lp82574_ ((_bind82576_
                         (gx#core-resolve-identifier__%
                          _stx82570_
                          _phi82571_
                          _ctx82572_)))
          (if (##structure-direct-instance-of?
               _bind82576_
               'gx#import-binding::t)
              (_lp82574_
               (##unchecked-structure-ref
                _bind82576_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind82576_
                   'gx#alias-binding::t)
                  (_lp82574_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind82576_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi82571_
                    _ctx82572_))
                  _bind82576_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx82581_)
        (let* ((_phi82583_ (gx#current-expander-phi))
               (_ctx82585_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82581_ _phi82583_ _ctx82585_))))
    (define gx#resolve-identifier__1
      (lambda (_stx82587_ _phi82588_)
        (let ((_ctx82590_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82587_ _phi82588_ _ctx82590_))))
    (define gx#resolve-identifier
      (lambda _g84803_
        (let ((_g84802_ (##length _g84803_)))
          (cond ((##fx= _g84802_ 1)
                 (apply (lambda (_stx82581_)
                          (gx#resolve-identifier__0 _stx82581_))
                        _g84803_))
                ((##fx= _g84802_ 2)
                 (apply (lambda (_stx82587_ _phi82588_)
                          (gx#resolve-identifier__1 _stx82587_ _phi82588_))
                        _g84803_))
                ((##fx= _g84802_ 3)
                 (apply (lambda (_stx82592_ _phi82593_ _ctx82594_)
                          (gx#resolve-identifier__%
                           _stx82592_
                           _phi82593_
                           _ctx82594_))
                        _g84803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84803_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx82528_ _val82529_ _rebind?82530_ _phi82531_ _ctx82532_)
        (let ((_rebind?82534_
               (if (not _rebind?82530_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?82530_) _rebind?82530_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx82528_)
           _val82529_
           _rebind?82534_
           _phi82531_
           _ctx82532_))))
    (define gx#bind-identifier!__0
      (lambda (_stx82539_ _val82540_)
        (let* ((_rebind?82542_ '#f)
               (_phi82544_ (gx#current-expander-phi))
               (_ctx82546_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82539_
           _val82540_
           _rebind?82542_
           _phi82544_
           _ctx82546_))))
    (define gx#bind-identifier!__1
      (lambda (_stx82548_ _val82549_ _rebind?82550_)
        (let* ((_phi82552_ (gx#current-expander-phi))
               (_ctx82554_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82548_
           _val82549_
           _rebind?82550_
           _phi82552_
           _ctx82554_))))
    (define gx#bind-identifier!__2
      (lambda (_stx82556_ _val82557_ _rebind?82558_ _phi82559_)
        (let ((_ctx82561_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82556_
           _val82557_
           _rebind?82558_
           _phi82559_
           _ctx82561_))))
    (define gx#bind-identifier!
      (lambda _g84805_
        (let ((_g84804_ (##length _g84805_)))
          (cond ((##fx= _g84804_ 2)
                 (apply (lambda (_stx82539_ _val82540_)
                          (gx#bind-identifier!__0 _stx82539_ _val82540_))
                        _g84805_))
                ((##fx= _g84804_ 3)
                 (apply (lambda (_stx82548_ _val82549_ _rebind?82550_)
                          (gx#bind-identifier!__1
                           _stx82548_
                           _val82549_
                           _rebind?82550_))
                        _g84805_))
                ((##fx= _g84804_ 4)
                 (apply (lambda (_stx82556_
                                 _val82557_
                                 _rebind?82558_
                                 _phi82559_)
                          (gx#bind-identifier!__2
                           _stx82556_
                           _val82557_
                           _rebind?82558_
                           _phi82559_))
                        _g84805_))
                ((##fx= _g84804_ 5)
                 (apply (lambda (_stx82563_
                                 _val82564_
                                 _rebind?82565_
                                 _phi82566_
                                 _ctx82567_)
                          (gx#bind-identifier!__%
                           _stx82563_
                           _val82564_
                           _rebind?82565_
                           _phi82566_
                           _ctx82567_))
                        _g84805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84805_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx82500_ _phi82501_ _ctx82502_)
        (let _lp82504_ ((_e82506_ _stx82500_)
                        (_marks82507_ (gx#current-expander-marks)))
          (if (symbol? _e82506_)
              (gx#core-resolve-binding
               _e82506_
               _phi82501_
               _phi82501_
               _ctx82502_
               (reverse _marks82507_))
              (if (gx#identifier-quote? _e82506_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e82506_ '1 gx#AST::t '#f)
                   _phi82501_
                   '0
                   (##unchecked-structure-ref
                    _e82506_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e82506_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e82506_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e82506_ '1 gx#AST::t '#f)
                       _phi82501_
                       _phi82501_
                       _ctx82502_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82506_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82507_))
                      (if (##structure-direct-instance-of?
                           _e82506_
                           'gx#syntax-wrap::t)
                          (_lp82504_
                           (##unchecked-structure-ref
                            _e82506_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e82506_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks82507_))
                          (if (##structure-instance-of?
                               _e82506_
                               'gerbil#AST::t)
                              (_lp82504_
                               (##unchecked-structure-ref
                                _e82506_
                                '1
                                gx#AST::t
                                '#f)
                               _marks82507_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx82500_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx82512_)
        (let* ((_phi82514_ (gx#current-expander-phi))
               (_ctx82516_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82512_ _phi82514_ _ctx82516_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx82518_ _phi82519_)
        (let ((_ctx82521_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82518_ _phi82519_ _ctx82521_))))
    (define gx#core-resolve-identifier
      (lambda _g84807_
        (let ((_g84806_ (##length _g84807_)))
          (cond ((##fx= _g84806_ 1)
                 (apply (lambda (_stx82512_)
                          (gx#core-resolve-identifier__0 _stx82512_))
                        _g84807_))
                ((##fx= _g84806_ 2)
                 (apply (lambda (_stx82518_ _phi82519_)
                          (gx#core-resolve-identifier__1
                           _stx82518_
                           _phi82519_))
                        _g84807_))
                ((##fx= _g84806_ 3)
                 (apply (lambda (_stx82523_ _phi82524_ _ctx82525_)
                          (gx#core-resolve-identifier__%
                           _stx82523_
                           _phi82524_
                           _ctx82525_))
                        _g84807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84807_))))))
    (define gx#core-resolve-binding
      (lambda (_id82413_ _phi82414_ _src-phi82415_ _ctx82416_ _marks82417_)
        (letrec ((_resolve82419_
                  (lambda (_ctx82487_ _src-phi82488_ _key82489_)
                    (let _lp82491_ ((_ctx82493_
                                     (gx#core-context-shift
                                      _ctx82487_
                                      _phi82414_))
                                    (_dphi82494_
                                     (fx- _phi82414_ _src-phi82488_)))
                      (let ((_$e82496_
                             (gx#core-context-resolve _ctx82493_ _key82489_)))
                        (if _$e82496_
                            (values _$e82496_)
                            (if (fxzero? _dphi82494_)
                                '#f
                                (if (fxpositive? _dphi82494_)
                                    (_lp82491_
                                     (gx#core-context-shift _ctx82493_ '-1)
                                     (fx- _dphi82494_ '1))
                                    (_lp82491_
                                     (gx#core-context-shift _ctx82493_ '1)
                                     (fx+ _dphi82494_ '1))))))))))
          (let _lp82421_ ((_ctx82423_ _ctx82416_)
                          (_src-phi82424_ _src-phi82415_)
                          (_rest82425_ _marks82417_))
            (let* ((_rest8242682434_ _rest82425_)
                   (_else8242882442_
                    (lambda ()
                      (_resolve82419_ _ctx82423_ _src-phi82424_ _id82413_)))
                   (_K8243082475_
                    (lambda (_rest82445_ _hd82446_)
                      (let* ((_hd8244782453_ _hd82446_)
                             (_E8244982457_
                              (lambda ()
                                (error '"No clause matching" _hd8244782453_)))
                             (_K8245082467_
                              (lambda (_subst82460_)
                                (let ((_$e82464_
                                       (let ((_key82462_
                                              (if _subst82460_
                                                  (hash-get
                                                   _subst82460_
                                                   _id82413_)
                                                  '#f)))
                                         (if _key82462_
                                             (_resolve82419_
                                              _ctx82423_
                                              _src-phi82424_
                                              _key82462_)
                                             '#f))))
                                  (if _$e82464_
                                      _$e82464_
                                      (_lp82421_
                                       (##unchecked-structure-ref
                                        _hd82446_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd82446_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest82445_))))))
                        (if (##structure-instance-of?
                             _hd8244782453_
                             'gx#expander-mark::t)
                            (let* ((_e8245182470_
                                    (##unchecked-structure-ref
                                     _hd8244782453_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst82473_ _e8245182470_))
                              (_K8245082467_ _subst82473_))
                            (_E8244982457_))))))
              (if (##pair? _rest8242682434_)
                  (let ((_hd8243182478_ (##car _rest8242682434_))
                        (_tl8243282480_ (##cdr _rest8242682434_)))
                    (let* ((_hd82483_ _hd8243182478_)
                           (_rest82485_ _tl8243282480_))
                      (_K8243082475_ _rest82485_ _hd82483_)))
                  (_else8242882442_)))))))
    (define gx#core-bind!__%
      (lambda (_key82289_ _val82290_ _rebind?82291_ _phi82292_ _ctx82293_)
        (letrec ((_update-binding82295_
                  (lambda (_xval82366_)
                    (if (or (_rebind?82291_ _ctx82293_ _xval82366_ _val82290_)
                            (and (##structure-direct-instance-of?
                                  _xval82366_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval82366_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val82290_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val82290_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval82366_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val82290_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val82290_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval82366_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val82290_
                        (if (and (##structure-direct-instance-of?
                                  _val82290_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val82290_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval82366_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val82290_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval82366_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval82366_
                            (if (and (##structure-direct-instance-of?
                                      _val82290_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval82366_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key82289_
                                 (cons (##unchecked-structure-ref
                                        _val82290_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val82290_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval82366_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval82366_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval82366_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval82366_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key82289_
                                 _val82290_
                                 _xval82366_))))))
                 (_gensubst82296_
                  (lambda (_subst82361_ _id82362_)
                    (let ((_eid82364_
                           (gensym (if (uninterned-symbol? _id82362_)
                                       '%
                                       _id82362_))))
                      (hash-put! _subst82361_ _id82362_ _eid82364_)
                      _eid82364_)))
                 (_subst!82297_
                  (lambda (_key82299_)
                    (let* ((_key8230082308_ _key82299_)
                           (_else8230282316_ (lambda () _key82299_))
                           (_K8230482349_
                            (lambda (_mark82319_ _id82320_)
                              (let* ((_mark8232182327_ _mark82319_)
                                     (_E8232382331_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8232182327_)))
                                     (_K8232482341_
                                      (lambda (_subst82334_)
                                        (if (not _subst82334_)
                                            (let ((_subst82336_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark82319_
                                               _subst82336_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst82296_
                                               _subst82336_
                                               _id82320_))
                                            (let ((_$e82338_
                                                   (hash-get
                                                    _subst82334_
                                                    _id82320_)))
                                              (if _$e82338_
                                                  (values _$e82338_)
                                                  (_gensubst82296_
                                                   _subst82334_
                                                   _id82320_)))))))
                                (if (##structure-instance-of?
                                     _mark8232182327_
                                     'gx#expander-mark::t)
                                    (let* ((_e8232582344_
                                            (##unchecked-structure-ref
                                             _mark8232182327_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst82347_ _e8232582344_))
                                      (_K8232482341_ _subst82347_))
                                    (_E8232382331_))))))
                      (if (##pair? _key8230082308_)
                          (let ((_hd8230582352_ (##car _key8230082308_))
                                (_tl8230682354_ (##cdr _key8230082308_)))
                            (let* ((_id82357_ _hd8230582352_)
                                   (_mark82359_ _tl8230682354_))
                              (_K8230482349_ _mark82359_ _id82357_)))
                          (_else8230282316_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx82293_ _phi82292_)
           (_subst!82297_ _key82289_)
           _val82290_
           _update-binding82295_))))
    (define gx#core-bind!__0
      (lambda (_key82383_ _val82384_)
        (let* ((_rebind?82386_ false)
               (_phi82388_ (gx#current-expander-phi))
               (_ctx82390_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82383_
           _val82384_
           _rebind?82386_
           _phi82388_
           _ctx82390_))))
    (define gx#core-bind!__1
      (lambda (_key82392_ _val82393_ _rebind?82394_)
        (let* ((_phi82396_ (gx#current-expander-phi))
               (_ctx82398_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82392_
           _val82393_
           _rebind?82394_
           _phi82396_
           _ctx82398_))))
    (define gx#core-bind!__2
      (lambda (_key82400_ _val82401_ _rebind?82402_ _phi82403_)
        (let ((_ctx82405_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82400_
           _val82401_
           _rebind?82402_
           _phi82403_
           _ctx82405_))))
    (define gx#core-bind!
      (lambda _g84809_
        (let ((_g84808_ (##length _g84809_)))
          (cond ((##fx= _g84808_ 2)
                 (apply (lambda (_key82383_ _val82384_)
                          (gx#core-bind!__0 _key82383_ _val82384_))
                        _g84809_))
                ((##fx= _g84808_ 3)
                 (apply (lambda (_key82392_ _val82393_ _rebind?82394_)
                          (gx#core-bind!__1
                           _key82392_
                           _val82393_
                           _rebind?82394_))
                        _g84809_))
                ((##fx= _g84808_ 4)
                 (apply (lambda (_key82400_
                                 _val82401_
                                 _rebind?82402_
                                 _phi82403_)
                          (gx#core-bind!__2
                           _key82400_
                           _val82401_
                           _rebind?82402_
                           _phi82403_))
                        _g84809_))
                ((##fx= _g84808_ 5)
                 (apply (lambda (_key82407_
                                 _val82408_
                                 _rebind?82409_
                                 _phi82410_
                                 _ctx82411_)
                          (gx#core-bind!__%
                           _key82407_
                           _val82408_
                           _rebind?82409_
                           _phi82410_
                           _ctx82411_))
                        _g84809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84809_))))))
    (define gx#core-identifier-key
      (lambda (_stx82223_)
        (if (symbol? _stx82223_)
            (let* ((_g8222482232_ (gx#current-expander-marks))
                   (_else8222682240_ (lambda () _stx82223_))
                   (_K8222882245_
                    (lambda (_hd82243_) (cons _stx82223_ _hd82243_))))
              (if (##pair? _g8222482232_)
                  (let* ((_hd8222982248_ (##car _g8222482232_))
                         (_hd82251_ _hd8222982248_))
                    (_K8222882245_ _hd82251_))
                  (_else8222682240_)))
            (if (gx#identifier? _stx82223_)
                (let* ((_id82253_ (gx#syntax-local-unwrap _stx82223_))
                       (_eid82255_ (gx#stx-e _id82253_))
                       (_marks82257_ (gx#stx-identifier-marks* _id82253_)))
                  (let* ((_marks8225982267_ _marks82257_)
                         (_else8226182275_ (lambda () _eid82255_))
                         (_K8226382280_
                          (lambda (_hd82278_) (cons _eid82255_ _hd82278_))))
                    (if (##pair? _marks8225982267_)
                        (let* ((_hd8226482283_ (##car _marks8225982267_))
                               (_hd82286_ _hd8226482283_))
                          (_K8226382280_ _hd82286_))
                        (_else8226182275_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx82223_)))))
    (define gx#core-context-shift
      (lambda (_ctx82168_ _phi82169_)
        (letrec ((_make-phi82171_
                  (lambda (_super82221_)
                    (let ((__obj84780
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84780
                       (gensym 'phi)
                       _super82221_)
                      __obj84780)))
                 (_make-phi/up82172_
                  (lambda (_ctx82216_ _super82217_)
                    (let ((_ctx+182219_ (_make-phi82171_ _super82217_)))
                      (##unchecked-structure-set!
                       _ctx82216_
                       _ctx+182219_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+182219_
                       _ctx82216_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+182219_)))
                 (_make-phi/down82173_
                  (lambda (_ctx82211_ _super82212_)
                    (let ((_ctx-182214_ (_make-phi82171_ _super82212_)))
                      (##unchecked-structure-set!
                       _ctx-182214_
                       _ctx82211_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx82211_
                       _ctx-182214_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-182214_)))
                 (_shift82174_
                  (lambda (_ctx82195_
                           _delta82196_
                           _make-delta-context82197_
                           _phi82198_
                           _K82199_)
                    (let ((_$e82201_
                           (##unchecked-structure-ref
                            _ctx82195_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e82201_
                          ((lambda (_super82204_)
                             (let* ((_super82206_
                                     (_K82199_ _super82204_ _delta82196_))
                                    (_ctx+d82208_
                                     (_make-delta-context82197_
                                      _ctx82195_
                                      _super82206_)))
                               (_K82199_
                                _ctx+d82208_
                                (fx- _phi82198_ _delta82196_))))
                           _$e82201_)
                          (error '"Bad context" _ctx82195_))))))
          (let _K82176_ ((_ctx82178_ _ctx82168_) (_phi82179_ _phi82169_))
            (if (fxzero? _phi82179_)
                _ctx82178_
                (if (fx> (##vector-length _ctx82178_) '3)
                    (if (fxpositive? _phi82179_)
                        (let ((_$e82181_
                               (##unchecked-structure-ref
                                _ctx82178_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e82181_
                              ((lambda (_g8218382185_)
                                 (_K82176_ _g8218382185_ (fx- _phi82179_ '1)))
                               _$e82181_)
                              (_shift82174_
                               _ctx82178_
                               '1
                               _make-phi/up82172_
                               _phi82179_
                               _K82176_)))
                        (let ((_$e82188_
                               (##unchecked-structure-ref
                                _ctx82178_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e82188_
                              ((lambda (_g8219082192_)
                                 (_K82176_ _g8219082192_ (fx+ _phi82179_ '1)))
                               _$e82188_)
                              (_shift82174_
                               _ctx82178_
                               '-1
                               _make-phi/down82173_
                               _phi82179_
                               _K82176_))))
                    _ctx82178_))))))
    (define gx#core-context-get
      (lambda (_ctx82165_ _key82166_)
        (hash-get
         (##unchecked-structure-ref _ctx82165_ '2 gx#expander-context::t '#f)
         _key82166_)))
    (define gx#core-context-put!
      (lambda (_ctx82161_ _key82162_ _val82163_)
        (hash-put!
         (##unchecked-structure-ref _ctx82161_ '2 gx#expander-context::t '#f)
         _key82162_
         _val82163_)))
    (define gx#core-context-resolve
      (lambda (_ctx82148_ _key82149_)
        (let _lp82151_ ((_ctx82153_ _ctx82148_))
          (let ((_$e82155_ (gx#core-context-get _ctx82153_ _key82149_)))
            (if _$e82155_
                (values _$e82155_)
                (let ((_$e82158_
                       (if (fx> (##vector-length _ctx82153_) '3)
                           (##unchecked-structure-ref
                            _ctx82153_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e82158_ (_lp82151_ _$e82158_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx82138_ _key82139_ _val82140_ _rebind82141_)
        (let ((_$e82143_ (gx#core-context-get _ctx82138_ _key82139_)))
          (if _$e82143_
              ((lambda (_xval82146_)
                 (gx#core-context-put!
                  _ctx82138_
                  _key82139_
                  (_rebind82141_ _xval82146_)))
               _$e82143_)
              (gx#core-context-put! _ctx82138_ _key82139_ _val82140_)))))
    (define gx#core-context-top__%
      (lambda (_ctx82116_ _stop?82117_)
        (let _lp82119_ ((_ctx82121_ _ctx82116_))
          (if (_stop?82117_ _ctx82121_)
              _ctx82121_
              (if (##structure-instance-of? _ctx82121_ 'gx#context-phi::t)
                  (_lp82119_
                   (##unchecked-structure-ref
                    _ctx82121_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx82127_ (gx#current-expander-context))
               (_stop?82129_ gx#top-context?))
          (gx#core-context-top__% _ctx82127_ _stop?82129_))))
    (define gx#core-context-top__1
      (lambda (_ctx82131_)
        (let ((_stop?82133_ gx#top-context?))
          (gx#core-context-top__% _ctx82131_ _stop?82133_))))
    (define gx#core-context-top
      (lambda _g84811_
        (let ((_g84810_ (##length _g84811_)))
          (cond ((##fx= _g84810_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84811_))
                ((##fx= _g84810_ 1)
                 (apply (lambda (_ctx82131_)
                          (gx#core-context-top__1 _ctx82131_))
                        _g84811_))
                ((##fx= _g84810_ 2)
                 (apply (lambda (_ctx82135_ _stop?82136_)
                          (gx#core-context-top__% _ctx82135_ _stop?82136_))
                        _g84811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84811_))))))
    (define gx#core-context-root__%
      (lambda (_ctx82101_)
        (let _lp82103_ ((_ctx82105_ _ctx82101_))
          (if (##structure-instance-of? _ctx82105_ 'gx#context-phi::t)
              (_lp82103_
               (##unchecked-structure-ref _ctx82105_ '3 gx#phi-context::t '#f))
              _ctx82105_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx82111_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx82111_))))
    (define gx#core-context-root
      (lambda _g84813_
        (let ((_g84812_ (##length _g84813_)))
          (cond ((##fx= _g84812_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84813_))
                ((##fx= _g84812_ 1)
                 (apply (lambda (_ctx82113_)
                          (gx#core-context-root__% _ctx82113_))
                        _g84813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84813_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx82082_ . __8207982083_)
        (let ((_$e82086_ (gx#current-expander-allow-rebind?)))
          (if _$e82086_
              _$e82086_
              (if (##structure-instance-of? _ctx82082_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx82082_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx82082_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx82093_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx82093_))))
    (define gx#core-context-rebind?
      (lambda _g84815_
        (let ((_g84814_ (##length _g84815_)))
          (cond ((##fx= _g84814_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84815_))
                ((##fx= _g84814_ 1)
                 (apply (lambda (_ctx82095_)
                          (gx#core-context-rebind?__% _ctx82095_))
                        _g84815_))
                ((##fx>= _g84814_ 1)
                 (apply gx#core-context-rebind?__% _g84815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84815_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx82065_)
        (let ((_$e82067_ (gx#core-context-top__1 _ctx82065_)))
          (if _$e82067_
              ((lambda (_ctx82070_)
                 (if (##structure-instance-of?
                      _ctx82070_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx82070_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e82067_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx82076_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx82076_))))
    (define gx#core-context-namespace
      (lambda _g84817_
        (let ((_g84816_ (##length _g84817_)))
          (cond ((##fx= _g84816_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84817_))
                ((##fx= _g84816_ 1)
                 (apply (lambda (_ctx82078_)
                          (gx#core-context-namespace__% _ctx82078_))
                        _g84817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84817_))))))
    (define gx#expander-binding?__%
      (lambda (_bind82051_ _is?82052_)
        (if (##structure-direct-instance-of? _bind82051_ 'gx#syntax-binding::t)
            (_is?82052_
             (##unchecked-structure-ref
              _bind82051_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind82057_)
        (let ((_is?82059_ gx#expander?))
          (gx#expander-binding?__% _bind82057_ _is?82059_))))
    (define gx#expander-binding?
      (lambda _g84819_
        (let ((_g84818_ (##length _g84819_)))
          (cond ((##fx= _g84818_ 1)
                 (apply (lambda (_bind82057_)
                          (gx#expander-binding?__0 _bind82057_))
                        _g84819_))
                ((##fx= _g84818_ 2)
                 (apply (lambda (_bind82061_ _is?82062_)
                          (gx#expander-binding?__% _bind82061_ _is?82062_))
                        _g84819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84819_))))))
    (define gx#core-expander-binding?
      (lambda (_bind82048_)
        (gx#expander-binding?__% _bind82048_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind82046_)
        (gx#expander-binding?__% _bind82046_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind82040_)
        (letrec ((_direct-special-form?82042_
                  (lambda (_obj82044_)
                    (##structure-direct-instance-of?
                     _obj82044_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind82040_ _direct-special-form?82042_))))
    (define gx#special-form-binding?
      (lambda (_bind82038_)
        (gx#expander-binding?__% _bind82038_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind82029_)
        (letrec ((_feature?82031_
                  (lambda (_e82033_)
                    (let ((_$e82035_
                           (##structure-instance-of?
                            _e82033_
                            'gx#feature-expander::t)))
                      (if _$e82035_
                          _$e82035_
                          (##structure-instance-of?
                           _e82033_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind82029_ _feature?82031_))))
    (define gx#private-feature-binding?
      (lambda (_bind82027_)
        (gx#expander-binding?__% _bind82027_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id82014_ _bound?82015_)
        (if (gx#identifier? _id82014_)
            (_bound?82015_ (gx#resolve-identifier__0 _id82014_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id82020_)
        (let ((_bound?82022_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id82020_ _bound?82022_))))
    (define gx#core-bound-identifier?
      (lambda _g84821_
        (let ((_g84820_ (##length _g84821_)))
          (cond ((##fx= _g84820_ 1)
                 (apply (lambda (_id82020_)
                          (gx#core-bound-identifier?__0 _id82020_))
                        _g84821_))
                ((##fx= _g84820_ 2)
                 (apply (lambda (_id82024_ _bound?82025_)
                          (gx#core-bound-identifier?__%
                           _id82024_
                           _bound?82025_))
                        _g84821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84821_))))))
    (define gx#core-identifier=?
      (lambda (_x82004_ _y82005_)
        (letrec ((_y=?82007_
                  (lambda (_xid82011_)
                    ((if (list? _y82005_) memq eq?) _xid82011_ _y82005_))))
          (let ((_bind82009_ (gx#resolve-identifier__0 _x82004_)))
            (if (##structure-instance-of? _bind82009_ 'gx#binding::t)
                (_y=?82007_
                 (##unchecked-structure-ref _bind82009_ '1 gx#binding::t '#f))
                (_y=?82007_ (gx#stx-e _x82004_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e82002_)
        (if (interned-symbol? _e82002_)
            (string-index__0 (symbol->string _e82002_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81957_ _src81958_ _ctx81959_ _marks81960_)
        (if (##structure? _stx81957_)
            (let ((_$e81962_ (gx#sealed-syntax-unwrap _stx81957_)))
              (if _$e81962_
                  (values _$e81962_)
                  (if (gx#identifier? _stx81957_)
                      (let ((_id81965_
                             (gx#stx-unwrap__% _stx81957_ _marks81960_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81965_ '1 gx#AST::t '#f)
                         (let ((_$e81967_
                                (##unchecked-structure-ref
                                 _id81965_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e81967_ _$e81967_ _src81958_))
                         _ctx81959_
                         (##unchecked-structure-ref
                          _id81965_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81957_)
                       (let ((_$e81970_ (gx#stx-source _stx81957_)))
                         (if _$e81970_ _$e81970_ _src81958_))
                       _ctx81959_
                       (reverse _marks81960_)))))
            (##structure
             gx#syntax-quote::t
             _stx81957_
             _src81958_
             _ctx81959_
             (reverse _marks81960_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81976_)
        (let* ((_src81978_ '#f)
               (_ctx81980_ (gx#current-expander-context))
               (_marks81982_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81976_
           _src81978_
           _ctx81980_
           _marks81982_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81984_ _src81985_)
        (let* ((_ctx81987_ (gx#current-expander-context))
               (_marks81989_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81984_
           _src81985_
           _ctx81987_
           _marks81989_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81991_ _src81992_ _ctx81993_)
        (let ((_marks81995_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81991_
           _src81992_
           _ctx81993_
           _marks81995_))))
    (define gx#core-quote-syntax
      (lambda _g84823_
        (let ((_g84822_ (##length _g84823_)))
          (cond ((##fx= _g84822_ 1)
                 (apply (lambda (_stx81976_)
                          (gx#core-quote-syntax__0 _stx81976_))
                        _g84823_))
                ((##fx= _g84822_ 2)
                 (apply (lambda (_stx81984_ _src81985_)
                          (gx#core-quote-syntax__1 _stx81984_ _src81985_))
                        _g84823_))
                ((##fx= _g84822_ 3)
                 (apply (lambda (_stx81991_ _src81992_ _ctx81993_)
                          (gx#core-quote-syntax__2
                           _stx81991_
                           _src81992_
                           _ctx81993_))
                        _g84823_))
                ((##fx= _g84822_ 4)
                 (apply (lambda (_stx81997_ _src81998_ _ctx81999_ _marks82000_)
                          (gx#core-quote-syntax__%
                           _stx81997_
                           _src81998_
                           _ctx81999_
                           _marks82000_))
                        _g84823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84823_))))))
    (define gx#core-cons
      (lambda (_hd81953_ _tl81954_)
        (cons (gx#core-quote-syntax__0 _hd81953_) _tl81954_)))
    (define gx#core-list
      (lambda (_hd81950_ . _rest81951_)
        (cons (gx#core-quote-syntax__0 _hd81950_) _rest81951_)))
    (define gx#core-cons*
      (lambda (_hd81947_ . _rest81948_)
        (apply cons* (gx#core-quote-syntax__0 _hd81947_) _rest81948_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81921_ _rel81922_)
        (let ((_path81934_ (gx#stx-e _stx-path81921_))
              (_reldir81935_
               (let _lp81924_ ((_relsrc81926_
                                (let ((_$e81931_
                                       (gx#stx-source _stx-path81921_)))
                                  (if _$e81931_ _$e81931_ _rel81922_))))
                 (if (##structure-instance-of? _relsrc81926_ 'gerbil#AST::t)
                     (_lp81924_
                      (let ((_$e81928_ (gx#stx-source _relsrc81926_)))
                        (if _$e81928_ _$e81928_ (gx#stx-e _relsrc81926_))))
                     (if (source-location-path? _relsrc81926_)
                         (path-directory (source-location-path _relsrc81926_))
                         (if (string? _relsrc81926_)
                             (path-directory _relsrc81926_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81934_ (path-normalize _reldir81935_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81940_)
        (let ((_rel81942_ '#f))
          (gx#core-resolve-path__% _stx-path81940_ _rel81942_))))
    (define gx#core-resolve-path
      (lambda _g84825_
        (let ((_g84824_ (##length _g84825_)))
          (cond ((##fx= _g84824_ 1)
                 (apply (lambda (_stx-path81940_)
                          (gx#core-resolve-path__0 _stx-path81940_))
                        _g84825_))
                ((##fx= _g84824_ 2)
                 (apply (lambda (_stx-path81944_ _rel81945_)
                          (gx#core-resolve-path__% _stx-path81944_ _rel81945_))
                        _g84825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84825_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81877_ _ctx81878_)
        (let* ((_repr8187981886_ _repr81877_)
               (_E8188181890_
                (lambda () (error '"No clause matching" _repr8187981886_)))
               (_K8188281898_
                (lambda (_subs81893_ _phi81894_)
                  (let ((_subst81896_
                         (if (not (null? _subs81893_))
                             (list->hash-table-eq _subs81893_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81896_
                     _ctx81878_
                     _phi81894_
                     '#f)))))
          (if (##pair? _repr8187981886_)
              (let ((_hd8188381901_ (##car _repr8187981886_))
                    (_tl8188481903_ (##cdr _repr8187981886_)))
                (let* ((_phi81906_ _hd8188381901_)
                       (_subs81908_ _tl8188481903_))
                  (_K8188281898_ _subs81908_ _phi81906_)))
              (_E8188181890_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81913_)
        (let ((_ctx81915_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81913_ _ctx81915_))))
    (define gx#core-deserialize-mark
      (lambda _g84827_
        (let ((_g84826_ (##length _g84827_)))
          (cond ((##fx= _g84826_ 1)
                 (apply (lambda (_repr81913_)
                          (gx#core-deserialize-mark__0 _repr81913_))
                        _g84827_))
                ((##fx= _g84826_ 2)
                 (apply (lambda (_repr81917_ _ctx81918_)
                          (gx#core-deserialize-mark__% _repr81917_ _ctx81918_))
                        _g84827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84827_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81874_)
        (gx#stx-rewrap _stx81874_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81872_)
        (gx#stx-unwrap__% _stx81872_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81842_)
        (let* ((_g8184381851_ (gx#current-expander-marks))
               (_else8184581859_ (lambda () _stx81842_))
               (_K8184781864_
                (lambda (_hd81862_) (gx#stx-apply-mark _stx81842_ _hd81862_))))
          (if (##pair? _g8184381851_)
              (let* ((_hd8184881867_ (##car _g8184381851_))
                     (_hd81870_ _hd8184881867_))
                (_K8184781864_ _hd81870_))
              (_else8184581859_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81827_ _E81828_)
        (let ((_bind81830_ (gx#resolve-identifier__0 _stx81827_)))
          (if (##structure-direct-instance-of?
               _bind81830_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind81830_
               '4
               gx#syntax-binding::t
               '#f)
              (_E81828_ _stx81827_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81835_)
        (let ((_E81837_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81835_ _E81837_))))
    (define gx#syntax-local-e
      (lambda _g84829_
        (let ((_g84828_ (##length _g84829_)))
          (cond ((##fx= _g84828_ 1)
                 (apply (lambda (_stx81835_) (gx#syntax-local-e__0 _stx81835_))
                        _g84829_))
                ((##fx= _g84828_ 2)
                 (apply (lambda (_stx81839_ _E81840_)
                          (gx#syntax-local-e__% _stx81839_ _E81840_))
                        _g84829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84829_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81811_ _E81812_)
        (let ((_e81814_ (gx#syntax-local-e__% _stx81811_ _E81812_)))
          (if (##structure-instance-of? _e81814_ 'gx#expander::t)
              (##structure-ref _e81814_ '1 gx#expander::t '#f)
              _e81814_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81819_)
        (let ((_E81821_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81819_ _E81821_))))
    (define gx#syntax-local-value
      (lambda _g84831_
        (let ((_g84830_ (##length _g84831_)))
          (cond ((##fx= _g84830_ 1)
                 (apply (lambda (_stx81819_)
                          (gx#syntax-local-value__0 _stx81819_))
                        _g84831_))
                ((##fx= _g84830_ 2)
                 (apply (lambda (_stx81823_ _E81824_)
                          (gx#syntax-local-value__% _stx81823_ _E81824_))
                        _g84831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84831_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81808_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81808_)))))
