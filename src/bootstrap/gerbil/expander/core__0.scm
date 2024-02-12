(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707772765)
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
      (lambda _$args145029_
        (apply make-instance gx#expander-context::t _$args145029_)))
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
      (lambda _$args145026_
        (apply make-instance gx#root-context::t _$args145026_)))
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
      (lambda _$args145023_
        (apply make-instance gx#phi-context::t _$args145023_)))
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
      (lambda _$args145020_
        (apply make-instance gx#top-context::t _$args145020_)))
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
      (lambda _$args145017_
        (apply make-instance gx#module-context::t _$args145017_)))
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
      (lambda _$args145014_
        (apply make-instance gx#prelude-context::t _$args145014_)))
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
      (lambda _$args145011_
        (apply make-instance gx#local-context::t _$args145011_)))
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
      (lambda (_self144995_ _id144996_ _super144997_)
        (if (##fx< '3 (##structure-length _self144995_))
            (begin
              (##unchecked-structure-set!
               _self144995_
               _id144996_
               '1
               (##structure-type _self144995_)
               '#f)
              (##unchecked-structure-set!
               _self144995_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144995_)
               '#f)
              (##unchecked-structure-set!
               _self144995_
               _super144997_
               '3
               (##structure-type _self144995_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144995_
                   '3
                   (##vector-length _self144995_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self145002_ _id145003_)
        (let ((_super145005_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self145002_ _id145003_ _super145005_))))
    (define gx#phi-context:::init!
      (lambda _g149640_
        (let ((_g149639_ (##length _g149640_)))
          (cond ((##fx= _g149639_ 2)
                 (apply (lambda (_self145002_ _id145003_)
                          (gx#phi-context:::init!__0 _self145002_ _id145003_))
                        _g149640_))
                ((##fx= _g149639_ 3)
                 (apply (lambda (_self145007_ _id145008_ _super145009_)
                          (gx#phi-context:::init!__%
                           _self145007_
                           _id145008_
                           _super145009_))
                        _g149640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g149640_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self144859_ _super144860_)
        (if (##fx< '3 (##structure-length _self144859_))
            (begin
              (##unchecked-structure-set!
               _self144859_
               (gensym 'L)
               '1
               (##structure-type _self144859_)
               '#f)
              (##unchecked-structure-set!
               _self144859_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144859_)
               '#f)
              (##unchecked-structure-set!
               _self144859_
               _super144860_
               '3
               (##structure-type _self144859_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144859_
                   '3
                   (##vector-length _self144859_)))))
    (define gx#local-context:::init!__0
      (lambda (_self144865_)
        (let ((_super144867_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self144865_ _super144867_))))
    (define gx#local-context:::init!
      (lambda _g149642_
        (let ((_g149641_ (##length _g149642_)))
          (cond ((##fx= _g149641_ 1)
                 (apply (lambda (_self144865_)
                          (gx#local-context:::init!__0 _self144865_))
                        _g149642_))
                ((##fx= _g149641_ 2)
                 (apply (lambda (_self144869_ _super144870_)
                          (gx#local-context:::init!__%
                           _self144869_
                           _super144870_))
                        _g149642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g149642_))))))
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
      (lambda _$args144733_ (apply make-instance gx#binding::t _$args144733_)))
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
      (lambda _$args144730_
        (apply make-instance gx#runtime-binding::t _$args144730_)))
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
      (lambda _$args144727_
        (apply make-instance gx#local-binding::t _$args144727_)))
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
      (lambda _$args144724_
        (apply make-instance gx#top-binding::t _$args144724_)))
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
      (lambda _$args144721_
        (apply make-instance gx#module-binding::t _$args144721_)))
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
      (lambda _$args144718_
        (apply make-instance gx#extern-binding::t _$args144718_)))
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
      (lambda _$args144715_
        (apply make-instance gx#syntax-binding::t _$args144715_)))
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
      (lambda _$args144712_
        (apply make-instance gx#import-binding::t _$args144712_)))
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
      (lambda _$args144709_
        (apply make-instance gx#alias-binding::t _$args144709_)))
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
      (lambda _$args144706_
        (apply make-instance gx#expander::t _$args144706_)))
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
      (lambda _$args144703_
        (apply make-instance gx#core-expander::t _$args144703_)))
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
      (lambda _$args144700_
        (apply make-instance gx#expression-form::t _$args144700_)))
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
      (lambda _$args144697_
        (apply make-instance gx#special-form::t _$args144697_)))
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
      (lambda _$args144694_
        (apply make-instance gx#definition-form::t _$args144694_)))
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
      (lambda _$args144691_
        (apply make-instance gx#top-special-form::t _$args144691_)))
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
      (lambda _$args144688_
        (apply make-instance gx#module-special-form::t _$args144688_)))
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
      (lambda _$args144685_
        (apply make-instance gx#feature-expander::t _$args144685_)))
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
      (lambda _$args144682_
        (apply make-instance gx#private-feature-expander::t _$args144682_)))
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
      (lambda _$args144679_
        (apply make-instance gx#reserved-expander::t _$args144679_)))
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
      (lambda _$args144676_
        (apply make-instance gx#macro-expander::t _$args144676_)))
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
      (lambda _$args144673_
        (apply make-instance gx#rename-macro-expander::t _$args144673_)))
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
      (lambda _$args144670_
        (apply make-instance gx#user-expander::t _$args144670_)))
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
      (lambda _$args144667_
        (apply make-instance gx#expander-mark::t _$args144667_)))
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
      (lambda (_ctx144652_ _message144653_ _stx144654_ . _details144655_)
        (let ((_ctx144665_
               (let ((_$e144657_ _ctx144652_))
                 (if _$e144657_
                     _$e144657_
                     (let ((_$e144660_ (gx#core-context-top__0)))
                       (if _$e144660_
                           ((lambda (_ctx144663_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx144663_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e144660_)
                           '#f))))))
          (raise (make-syntax-error
                  _message144653_
                  (cons _stx144654_ _details144655_)
                  _ctx144665_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx144639_ _expression?144640_)
        (gx#eval-syntax* (gx#core-expand__% _stx144639_ _expression?144640_))))
    (define gx#eval-syntax__0
      (lambda (_stx144645_)
        (let ((_expression?144647_ '#f))
          (gx#eval-syntax__% _stx144645_ _expression?144647_))))
    (define gx#eval-syntax
      (lambda _g149644_
        (let ((_g149643_ (##length _g149644_)))
          (cond ((##fx= _g149643_ 1)
                 (apply (lambda (_stx144645_) (gx#eval-syntax__0 _stx144645_))
                        _g149644_))
                ((##fx= _g149643_ 2)
                 (apply (lambda (_stx144649_ _expression?144650_)
                          (gx#eval-syntax__% _stx144649_ _expression?144650_))
                        _g149644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g149644_))))))
    (define gx#eval-syntax*
      (lambda (_stx144636_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx144636_))))
    (define gx#core-expand__%
      (lambda (_stx144623_ _expression?144624_)
        (if _expression?144624_
            (gx#core-expand-expression _stx144623_)
            (gx#core-expand-top _stx144623_))))
    (define gx#core-expand__0
      (lambda (_stx144629_)
        (let ((_expression?144631_ '#f))
          (gx#core-expand__% _stx144629_ _expression?144631_))))
    (define gx#core-expand
      (lambda _g149646_
        (let ((_g149645_ (##length _g149646_)))
          (cond ((##fx= _g149645_ 1)
                 (apply (lambda (_stx144629_) (gx#core-expand__0 _stx144629_))
                        _g149646_))
                ((##fx= _g149645_ 2)
                 (apply (lambda (_stx144633_ _expression?144634_)
                          (gx#core-expand__% _stx144633_ _expression?144634_))
                        _g149646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g149646_))))))
    (define gx#core-expand-top
      (lambda (_stx144590_)
        (let* ((_stx144592_ (gx#core-expand*__0 _stx144590_))
               (_e144593144600_ _stx144592_)
               (_E144595144604_
                (lambda () (gx#core-expand-expression _stx144592_)))
               (_E144594144618_
                (lambda ()
                  (if (gx#stx-pair? _e144593144600_)
                      (let ((_e144596144608_ (gx#syntax-e _e144593144600_)))
                        (let ((_hd144597144611_ (##car _e144596144608_))
                              (_tl144598144613_ (##cdr _e144596144608_)))
                          (let ((_form144616_ _hd144597144611_))
                            (if (gx#core-bound-identifier?__0 _form144616_)
                                _stx144592_
                                (_E144595144604_)))))
                      (_E144595144604_)))))
          (_E144594144618_))))
    (define gx#core-expand-expression
      (lambda (_stx144537_)
        (letrec ((_sealed-expression?144539_
                  (lambda (_hd144560_)
                    (if (gx#sealed-syntax? _hd144560_)
                        (let* ((_e144561144568_ _hd144560_)
                               (_E144563144572_ (lambda () '#f))
                               (_E144562144586_
                                (lambda ()
                                  (if (gx#stx-pair? _e144561144568_)
                                      (let ((_e144564144576_
                                             (gx#syntax-e _e144561144568_)))
                                        (let ((_hd144565144579_
                                               (##car _e144564144576_))
                                              (_tl144566144581_
                                               (##cdr _e144564144576_)))
                                          (let ((_form144584_
                                                 _hd144565144579_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form144584_
                                                 gx#expression-form-binding?)
                                                (_E144563144572_)))))
                                      (_E144563144572_)))))
                          (_E144562144586_))
                        '#f)))
                 (_illegal-expression144540_
                  (lambda (_hd144558_ . _g149647_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx144537_
                     _hd144558_)))
                 (_expand-e144541_
                  (lambda (_form144553_ _hd144554_)
                    (let ((_bind144556_
                           (if (##structure-instance-of?
                                _form144553_
                                'gx#binding::t)
                               _form144553_
                               (gx#resolve-identifier__0 _form144553_))))
                      (if (gx#core-expander-binding? _bind144556_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind144556_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd144554_
                            (gx#stx-source _stx144537_)))
                          (if (##structure-direct-instance-of?
                               _bind144556_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind144556_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd144554_
                                 (gx#stx-source _stx144537_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx144537_
                               _form144553_)))))))
          (let ((_hd144543_ (gx#core-expand-head _stx144537_)))
            (if (_sealed-expression?144539_ _hd144543_)
                _hd144543_
                (if (gx#stx-pair? _hd144543_)
                    (let* ((_form144545_ (gx#stx-car _hd144543_))
                           (_bind144547_
                            (if (gx#identifier? _form144545_)
                                (gx#resolve-identifier__0 _form144545_)
                                '#f)))
                      (if (or (not _bind144547_)
                              (not (gx#core-expander-binding? _bind144547_)))
                          (_expand-e144541_ '%%app (cons '%%app _hd144543_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind144547_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd144543_
                               _illegal-expression144540_)
                              (if (gx#expression-form-binding? _bind144547_)
                                  (_expand-e144541_ _bind144547_ _hd144543_)
                                  (if (gx#direct-special-form-binding?
                                       _bind144547_)
                                      (gx#core-expand-expression
                                       (_expand-e144541_
                                        _bind144547_
                                        _hd144543_))
                                      (_illegal-expression144540_
                                       _hd144543_))))))
                    (if (gx#core-bound-identifier?__0 _hd144543_)
                        (_illegal-expression144540_ _hd144543_)
                        (if (gx#identifier? _hd144543_)
                            (_expand-e144541_
                             '%%ref
                             (cons '%%ref (cons _hd144543_ '())))
                            (if (gx#stx-datum? _hd144543_)
                                (_expand-e144541_
                                 '%#quote
                                 (cons '%#quote (cons _hd144543_ '())))
                                (_illegal-expression144540_
                                 _hd144543_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx144532_)
        (call-with-parameters
         (lambda ()
           (let ((_stx144535_ (gx#core-expand-expression _stx144532_)))
             (values _stx144535_ (gx#eval-syntax* _stx144535_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx144513_ _stop?144514_)
        (let _lp144516_ ((_stx144518_ _stx144513_))
          (if (_stop?144514_ _stx144518_)
              _stx144518_
              (let ((_rstx144520_ (gx#core-expand1 _stx144518_)))
                (if (eq? _stx144518_ _rstx144520_)
                    _stx144518_
                    (_lp144516_ _rstx144520_)))))))
    (define gx#core-expand*__0
      (lambda (_stx144525_)
        (let ((_stop?144527_ false))
          (gx#core-expand*__% _stx144525_ _stop?144527_))))
    (define gx#core-expand*
      (lambda _g149649_
        (let ((_g149648_ (##length _g149649_)))
          (cond ((##fx= _g149648_ 1)
                 (apply (lambda (_stx144525_) (gx#core-expand*__0 _stx144525_))
                        _g149649_))
                ((##fx= _g149648_ 2)
                 (apply (lambda (_stx144529_ _stop?144530_)
                          (gx#core-expand*__% _stx144529_ _stop?144530_))
                        _g149649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g149649_))))))
    (define gx#core-expand1
      (lambda (_stx144469_)
        (letrec ((_step144471_
                  (lambda (_hd144508_)
                    (let ((_bind144510_ (gx#resolve-identifier__0 _hd144508_)))
                      (if (##structure-instance-of?
                           _bind144510_
                           'gx#runtime-binding::t)
                          _stx144469_
                          (if (##structure-direct-instance-of?
                               _bind144510_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind144510_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx144469_)
                              (if (not _bind144510_)
                                  _stx144469_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx144469_))))))))
          (let* ((_e144472144480_ _stx144469_)
                 (_E144478144484_ (lambda () _stx144469_))
                 (_E144474144490_
                  (lambda ()
                    (let ((_hd144488_ _e144472144480_))
                      (if (gx#identifier? _hd144488_)
                          (_step144471_ _hd144488_)
                          (_E144478144484_)))))
                 (_E144473144504_
                  (lambda ()
                    (if (gx#stx-pair? _e144472144480_)
                        (let ((_e144475144494_ (gx#syntax-e _e144472144480_)))
                          (let ((_hd144476144497_ (##car _e144475144494_))
                                (_tl144477144499_ (##cdr _e144475144494_)))
                            (let ((_hd144502_ _hd144476144497_))
                              (if (gx#identifier? _hd144502_)
                                  (_step144471_ _hd144502_)
                                  (_E144474144490_)))))
                        (_E144474144490_)))))
            (_E144473144504_)))))
    (define gx#core-expand-head
      (lambda (_stx144435_)
        (letrec ((_stop?144437_
                  (lambda (_stx144439_)
                    (let* ((_e144440144447_ _stx144439_)
                           (_E144442144451_ (lambda () '#f))
                           (_E144441144465_
                            (lambda ()
                              (if (gx#stx-pair? _e144440144447_)
                                  (let ((_e144443144455_
                                         (gx#syntax-e _e144440144447_)))
                                    (let ((_hd144444144458_
                                           (##car _e144443144455_))
                                          (_tl144445144460_
                                           (##cdr _e144443144455_)))
                                      (let ((_hd144463_ _hd144444144458_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd144463_)
                                            (_E144442144451_)))))
                                  (_E144442144451_)))))
                      (_E144441144465_)))))
          (gx#core-expand*__% _stx144435_ _stop?144437_))))
    (define gx#core-expand-block__%
      (lambda (_stx144241_
               _expand-special144242_
               _begin-form144243_
               _expand-e144244_)
        (letrec ((_expand-splice144246_
                  (lambda (_hd144409_ _body144410_ _rest144411_ _r144412_)
                    (if (gx#stx-list? _body144410_)
                        (_K144250_
                         (gx#stx-foldr cons _rest144411_ _body144410_)
                         _r144412_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx144241_
                         _hd144409_))))
                 (_expand-cond-expand144247_
                  (lambda (_hd144405_ _rest144406_ _r144407_)
                    (_K144250_
                     (cons (gx#core-expand-cond-expand% _hd144405_)
                           _rest144406_)
                     _r144407_)))
                 (_expand-include144248_
                  (lambda (_hd144354_ _rest144355_ _r144356_)
                    (let* ((_e144357144367_ _hd144354_)
                           (_E144359144371_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144357144367_)))
                           (_E144358144401_
                            (lambda ()
                              (if (gx#stx-pair? _e144357144367_)
                                  (let ((_e144360144375_
                                         (gx#syntax-e _e144357144367_)))
                                    (let ((_hd144361144378_
                                           (##car _e144360144375_))
                                          (_tl144362144380_
                                           (##cdr _e144360144375_)))
                                      (if (gx#stx-pair? _tl144362144380_)
                                          (let ((_e144363144383_
                                                 (gx#syntax-e
                                                  _tl144362144380_)))
                                            (let ((_hd144364144386_
                                                   (##car _e144363144383_))
                                                  (_tl144365144388_
                                                   (##cdr _e144363144383_)))
                                              (let ((_path144391_
                                                     _hd144364144386_))
                                                (if (gx#stx-null?
                                                     _tl144365144388_)
                                                    (if (gx#stx-string?
                                                         _path144391_)
                                                        (let* ((_rpath144393_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path144391_
                         (gx#stx-source _hd144354_)))
                       (_block144395_
                        (gx#core-expand-include%__% _hd144354_ _rpath144393_))
                       (_rbody144398_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block144395_
                            _expand-special144242_
                            '#f
                            _expand-e144244_))
                         gx#current-expander-path
                         (cons _rpath144393_ (gx#current-expander-path)))))
                  (_K144250_
                   _rest144355_
                   (foldr1 cons _r144356_ _rbody144398_)))
                (_E144359144371_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E144359144371_)))))
                                          (_E144359144371_))))
                                  (_E144359144371_)))))
                      (_E144358144401_))))
                 (_expand-expression144249_
                  (lambda (_hd144350_ _rest144351_ _r144352_)
                    (_K144250_
                     _rest144351_
                     (cons (_expand-e144244_ _hd144350_) _r144352_))))
                 (_K144250_
                  (lambda (_rest144280_ _r144281_)
                    (let* ((_e144282144289_ _rest144280_)
                           (_E144284144293_
                            (lambda ()
                              (if _begin-form144243_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form144243_
                                    (reverse _r144281_))
                                   (gx#stx-source _stx144241_))
                                  _r144281_)))
                           (_E144283144346_
                            (lambda ()
                              (if (gx#stx-pair? _e144282144289_)
                                  (let ((_e144285144297_
                                         (gx#syntax-e _e144282144289_)))
                                    (let ((_hd144286144300_
                                           (##car _e144285144297_))
                                          (_tl144287144302_
                                           (##cdr _e144285144297_)))
                                      (let* ((_hd144305_ _hd144286144300_)
                                             (_rest144307_ _tl144287144302_))
                                        (if '#t
                                            (let* ((_hd144309_
                                                    (gx#core-expand-head
                                                     _hd144305_))
                                                   (_e144310144317_ _hd144309_)
                                                   (_E144312144321_
                                                    (lambda ()
                                                      (_expand-expression144249_
                                                       _hd144309_
                                                       _rest144307_
                                                       _r144281_)))
                                                   (_E144311144342_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e144310144317_)
                                                          (let ((_e144313144325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e144310144317_)))
                    (let ((_hd144314144328_ (##car _e144313144325_))
                          (_tl144315144330_ (##cdr _e144313144325_)))
                      (let* ((_form144333_ _hd144314144328_)
                             (_body144335_ _tl144315144330_))
                        (if '#t
                            (let ((_bind144337_
                                   (if (gx#identifier? _form144333_)
                                       (gx#resolve-identifier__0 _form144333_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind144337_)
                                  (let ((_$e144339_
                                         (##unchecked-structure-ref
                                          _bind144337_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e144339_)
                                        (_expand-splice144246_
                                         _hd144309_
                                         _body144335_
                                         _rest144307_
                                         _r144281_)
                                        (if (eq? '%#cond-expand _$e144339_)
                                            (_expand-cond-expand144247_
                                             _hd144309_
                                             _rest144307_
                                             _r144281_)
                                            (if (eq? '%#include _$e144339_)
                                                (_expand-include144248_
                                                 _hd144309_
                                                 _rest144307_
                                                 _r144281_)
                                                (_expand-special144242_
                                                 _hd144309_
                                                 _K144250_
                                                 _rest144307_
                                                 _r144281_)))))
                                  (_expand-expression144249_
                                   _hd144309_
                                   _rest144307_
                                   _r144281_)))
                            (_E144312144321_)))))
                  (_E144312144321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144311144342_))
                                            (_E144284144293_)))))
                                  (_E144284144293_)))))
                      (_E144283144346_)))))
          (let* ((_e144251144258_ _stx144241_)
                 (_E144253144262_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e144251144258_)))
                 (_E144252144276_
                  (lambda ()
                    (if (gx#stx-pair? _e144251144258_)
                        (let ((_e144254144266_ (gx#syntax-e _e144251144258_)))
                          (let ((_hd144255144269_ (##car _e144254144266_))
                                (_tl144256144271_ (##cdr _e144254144266_)))
                            (let ((_body144274_ _tl144256144271_))
                              (if (gx#stx-list? _body144274_)
                                  (_K144250_ _body144274_ '())
                                  (_E144253144262_)))))
                        (_E144253144262_)))))
            (_E144252144276_)))))
    (define gx#core-expand-block__0
      (lambda (_stx144417_ _expand-special144418_)
        (let* ((_begin-form144420_ '%#begin)
               (_expand-e144422_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144417_
           _expand-special144418_
           _begin-form144420_
           _expand-e144422_))))
    (define gx#core-expand-block__1
      (lambda (_stx144424_ _expand-special144425_ _begin-form144426_)
        (let ((_expand-e144428_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144424_
           _expand-special144425_
           _begin-form144426_
           _expand-e144428_))))
    (define gx#core-expand-block
      (lambda _g149651_
        (let ((_g149650_ (##length _g149651_)))
          (cond ((##fx= _g149650_ 2)
                 (apply (lambda (_stx144417_ _expand-special144418_)
                          (gx#core-expand-block__0
                           _stx144417_
                           _expand-special144418_))
                        _g149651_))
                ((##fx= _g149650_ 3)
                 (apply (lambda (_stx144424_
                                 _expand-special144425_
                                 _begin-form144426_)
                          (gx#core-expand-block__1
                           _stx144424_
                           _expand-special144425_
                           _begin-form144426_))
                        _g149651_))
                ((##fx= _g149650_ 4)
                 (apply (lambda (_stx144430_
                                 _expand-special144431_
                                 _begin-form144432_
                                 _expand-e144433_)
                          (gx#core-expand-block__%
                           _stx144430_
                           _expand-special144431_
                           _begin-form144432_
                           _expand-e144433_))
                        _g149651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g149651_))))))
    (define gx#core-expand-block*
      (lambda (_stx144189_ _expand-special144190_)
        (let* ((_g144191144202_
                (gx#core-expand-block__1
                 _stx144189_
                 _expand-special144190_
                 '#f))
               (_E144195144206_
                (lambda () (error '"No clause matching" _g144191144202_))))
          (let ((_K144200144237_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx144189_)))
                (_K144197144223_ (lambda (_expr144221_) _expr144221_))
                (_K144196144212_
                 (lambda (_body144210_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body144210_))
                    (gx#stx-source _stx144189_)))))
            (let ((_try-match144193144233_
                   (lambda ()
                     (if (##pair? _g144191144202_)
                         (let ((_tl144199144228_ (##cdr _g144191144202_))
                               (_hd144198144226_ (##car _g144191144202_)))
                           (if (##null? _tl144199144228_)
                               (let ((_expr144231_ _hd144198144226_))
                                 (_K144197144223_ _expr144231_))
                               (let ((_body144215_ _g144191144202_))
                                 (_K144196144212_ _body144215_))))
                         (let ((_body144215_ _g144191144202_))
                           (_K144196144212_ _body144215_))))))
              (if (##null? _g144191144202_)
                  (_K144200144237_)
                  (_try-match144193144233_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx144017_)
        (letrec ((_satisfied?144019_
                  (lambda (_condition144117_)
                    (let* ((_e144118144133_ _condition144117_)
                           (_E144128144137_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144118144133_)))
                           (_E144121144156_
                            (lambda ()
                              (if (gx#stx-pair? _e144118144133_)
                                  (let ((_e144129144141_
                                         (gx#syntax-e _e144118144133_)))
                                    (let ((_hd144130144144_
                                           (##car _e144129144141_))
                                          (_tl144131144146_
                                           (##cdr _e144129144141_)))
                                      (let* ((_combinator144149_
                                              _hd144130144144_)
                                             (_body144151_ _tl144131144146_))
                                        (if (gx#stx-list? _body144151_)
                                            (let ((_$e144153_
                                                   (gx#stx-e
                                                    _combinator144149_)))
                                              (if (eq? 'not _$e144153_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?144019_
                                                        _body144151_))
                                                  (if (eq? 'and _$e144153_)
                                                      (gx#stx-andmap
                                                       _satisfied?144019_
                                                       _body144151_)
                                                      (if (eq? 'or _$e144153_)
                                                          (gx#stx-ormap
                                                           _satisfied?144019_
                                                           _body144151_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e144153_)
                      (gx#stx-andmap gx#core-resolve-identifier _body144151_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx144017_
                       _combinator144149_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E144128144137_)))))
                                  (_E144128144137_))))
                           (_E144120144179_
                            (lambda ()
                              (if (gx#stx-pair? _e144118144133_)
                                  (let ((_e144122144160_
                                         (gx#syntax-e _e144118144133_)))
                                    (let ((_hd144123144163_
                                           (##car _e144122144160_))
                                          (_tl144124144165_
                                           (##cdr _e144122144160_)))
                                      (if (and (gx#identifier?
                                                _hd144123144163_)
                                               (gx#core-identifier=?
                                                _hd144123144163_
                                                'unquote))
                                          (if (gx#stx-pair? _tl144124144165_)
                                              (let ((_e144125144168_
                                                     (gx#syntax-e
                                                      _tl144124144165_)))
                                                (let ((_hd144126144171_
                                                       (##car _e144125144168_))
                                                      (_tl144127144173_
                                                       (##cdr _e144125144168_)))
                                                  (let ((_expr144176_
                                                         _hd144126144171_))
                                                    (if (gx#stx-null?
                                                         _tl144127144173_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr144176_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E144121144156_))
                (_E144121144156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144121144156_))
                                          (_E144121144156_))))
                                  (_E144121144156_))))
                           (_E144119144185_
                            (lambda ()
                              (let ((_id144183_ _e144118144133_))
                                (if (gx#identifier? _id144183_)
                                    (gx#core-bound-identifier?__%
                                     _id144183_
                                     gx#feature-binding?)
                                    (_E144120144179_))))))
                      (_E144119144185_))))
                 (_loop144020_
                  (lambda (_rest144050_)
                    (let* ((_e144051144059_ _rest144050_)
                           (_E144057144063_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144051144059_)))
                           (_E144053144067_
                            (lambda ()
                              (if (gx#stx-null? _e144051144059_)
                                  (if '#t '() (_E144057144063_))
                                  (_E144057144063_))))
                           (_E144052144113_
                            (lambda ()
                              (if (gx#stx-pair? _e144051144059_)
                                  (let ((_e144054144071_
                                         (gx#syntax-e _e144051144059_)))
                                    (let ((_hd144055144074_
                                           (##car _e144054144071_))
                                          (_tl144056144076_
                                           (##cdr _e144054144071_)))
                                      (let* ((_hd144079_ _hd144055144074_)
                                             (_rest144081_ _tl144056144076_))
                                        (if '#t
                                            (let* ((_e144082144089_ _hd144079_)
                                                   (_E144084144093_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e144082144089_)))
                                                   (_E144083144109_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e144082144089_)
                                                          (let ((_e144085144097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e144082144089_)))
                    (let ((_hd144086144100_ (##car _e144085144097_))
                          (_tl144087144102_ (##cdr _e144085144097_)))
                      (let* ((_condition144105_ _hd144086144100_)
                             (_body144107_ _tl144087144102_))
                        (if '#t
                            (if (gx#stx-eq? _condition144105_ 'else)
                                (if (gx#stx-null? _rest144081_)
                                    _body144107_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx144017_
                                     _hd144079_))
                                (if (_satisfied?144019_ _condition144105_)
                                    _body144107_
                                    (_loop144020_ _rest144081_)))
                            (_E144084144093_)))))
                  (_E144084144093_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144083144109_))
                                            (_E144053144067_)))))
                                  (_E144053144067_)))))
                      (_E144052144113_)))))
          (let* ((_e144021144028_ _stx144017_)
                 (_E144023144032_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e144021144028_)))
                 (_E144022144046_
                  (lambda ()
                    (if (gx#stx-pair? _e144021144028_)
                        (let ((_e144024144036_ (gx#syntax-e _e144021144028_)))
                          (let ((_hd144025144039_ (##car _e144024144036_))
                                (_tl144026144041_ (##cdr _e144024144036_)))
                            (let ((_clauses144044_ _tl144026144041_))
                              (if (gx#stx-list? _clauses144044_)
                                  (gx#core-cons
                                   'begin
                                   (_loop144020_ _clauses144044_))
                                  (_E144023144032_)))))
                        (_E144023144032_)))))
            (_E144022144046_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx143960_ _rpath143961_)
        (let* ((_e143962143972_ _stx143960_)
               (_E143964143976_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e143962143972_)))
               (_E143963144003_
                (lambda ()
                  (if (gx#stx-pair? _e143962143972_)
                      (let ((_e143965143980_ (gx#syntax-e _e143962143972_)))
                        (let ((_hd143966143983_ (##car _e143965143980_))
                              (_tl143967143985_ (##cdr _e143965143980_)))
                          (if (gx#stx-pair? _tl143967143985_)
                              (let ((_e143968143988_
                                     (gx#syntax-e _tl143967143985_)))
                                (let ((_hd143969143991_
                                       (##car _e143968143988_))
                                      (_tl143970143993_
                                       (##cdr _e143968143988_)))
                                  (let ((_path143996_ _hd143969143991_))
                                    (if (gx#stx-null? _tl143970143993_)
                                        (if (gx#stx-string? _path143996_)
                                            (let ((_rpath144001_
                                                   (let ((_$e143998_
                                                          _rpath143961_))
                                                     (if _$e143998_
                                                         _$e143998_
                                                         (gx#core-resolve-path__%
                                                          _path143996_
                                                          (gx#stx-source
                                                           _stx143960_))))))
                                              (if (member _rpath144001_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx143960_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath144001_))
                                                    (gx#stx-source
                                                     _stx143960_)))))
                                            (_E143964143976_))
                                        (_E143964143976_)))))
                              (_E143964143976_))))
                      (_E143964143976_)))))
          (_E143963144003_))))
    (define gx#core-expand-include%__0
      (lambda (_stx144010_)
        (let ((_rpath144012_ '#f))
          (gx#core-expand-include%__% _stx144010_ _rpath144012_))))
    (define gx#core-expand-include%
      (lambda _g149653_
        (let ((_g149652_ (##length _g149653_)))
          (cond ((##fx= _g149652_ 1)
                 (apply (lambda (_stx144010_)
                          (gx#core-expand-include%__0 _stx144010_))
                        _g149653_))
                ((##fx= _g149652_ 2)
                 (apply (lambda (_stx144014_ _rpath144015_)
                          (gx#core-expand-include%__%
                           _stx144014_
                           _rpath144015_))
                        _g149653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g149653_))))))
    (define gx#core-apply-expander__%
      (lambda (_K143929_ _stx143930_ _method143931_)
        (if (procedure? _K143929_)
            (let ((_$e143933_ (gx#stx-source _stx143930_)))
              (if _$e143933_
                  ((lambda (_g143935143937_)
                     (gx#stx-wrap-source
                      (_K143929_ _stx143930_)
                      _g143935143937_))
                   _$e143933_)
                  (_K143929_ _stx143930_)))
            (let ((_$e143940_ (bound-method-ref _K143929_ _method143931_)))
              (if _$e143940_
                  ((lambda (_g143942143944_)
                     (gx#core-apply-expander__%
                      _g143942143944_
                      _stx143930_
                      _method143931_))
                   _$e143940_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx143930_
                   _method143931_))))))
    (define gx#core-apply-expander__0
      (lambda (_K143950_ _stx143951_)
        (let ((_method143953_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K143950_ _stx143951_ _method143953_))))
    (define gx#core-apply-expander
      (lambda _g149655_
        (let ((_g149654_ (##length _g149655_)))
          (cond ((##fx= _g149654_ 2)
                 (apply (lambda (_K143950_ _stx143951_)
                          (gx#core-apply-expander__0 _K143950_ _stx143951_))
                        _g149655_))
                ((##fx= _g149654_ 3)
                 (apply (lambda (_K143955_ _stx143956_ _method143957_)
                          (gx#core-apply-expander__%
                           _K143955_
                           _stx143956_
                           _method143957_))
                        _g149655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g149655_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self143925_ _stx143926_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx143926_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self143778_ _stx143779_)
        (let* ((_self143780143786_ _self143778_)
               (_E143782143790_
                (lambda () (error '"No clause matching" _self143780143786_)))
               (_K143783143795_
                (lambda (_K143793_)
                  (gx#core-apply-expander__0 _K143793_ _stx143779_))))
          (if (##structure-instance-of? _self143780143786_ 'gx#core-macro::t)
              (let* ((_e143784143798_
                      (##unchecked-structure-ref
                       _self143780143786_
                       '1
                       gx#expander::t
                       '#f))
                     (_K143801_ _e143784143798_))
                (_K143783143795_ _K143801_))
              (_E143782143790_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self143631_ _stx143632_)
        (if (gx#sealed-syntax? _stx143632_)
            _stx143632_
            (let* ((_self143633143639_ _self143631_)
                   (_E143635143643_
                    (lambda ()
                      (error '"No clause matching" _self143633143639_)))
                   (_K143636143648_
                    (lambda (_K143646_)
                      (gx#core-apply-expander__0 _K143646_ _stx143632_))))
              (if (##structure-instance-of?
                   _self143633143639_
                   'gx#core-expander::t)
                  (let* ((_e143637143651_
                          (##unchecked-structure-ref
                           _self143633143639_
                           '1
                           gx#expander::t
                           '#f))
                         (_K143654_ _e143637143651_))
                    (_K143636143648_ _K143654_))
                  (_E143635143643_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self143493_ _stx143494_ _top?143495_)
        (if (_top?143495_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self143493_ _stx143494_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx143494_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self143500_ _stx143501_)
        (let ((_top?143503_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self143500_
           _stx143501_
           _top?143503_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g149657_
        (let ((_g149656_ (##length _g149657_)))
          (cond ((##fx= _g149656_ 2)
                 (apply (lambda (_self143500_ _stx143501_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self143500_
                           _stx143501_))
                        _g149657_))
                ((##fx= _g149656_ 3)
                 (apply (lambda (_self143505_ _stx143506_ _top?143507_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self143505_
                           _stx143506_
                           _top?143507_))
                        _g149657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g149657_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self143367_ _stx143368_)
        (gx#top-special-form::apply-macro-expander__%
         _self143367_
         _stx143368_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self143192_ _stx143193_)
        (let* ((_self143194143200_ _self143192_)
               (_E143196143204_
                (lambda () (error '"No clause matching" _self143194143200_)))
               (_K143197143237_
                (lambda (_id143207_)
                  (let* ((_e143208143215_ _stx143193_)
                         (_E143210143219_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e143208143215_)))
                         (_E143209143233_
                          (lambda ()
                            (if (gx#stx-pair? _e143208143215_)
                                (let ((_e143211143223_
                                       (gx#syntax-e _e143208143215_)))
                                  (let ((_hd143212143226_
                                         (##car _e143211143223_))
                                        (_tl143213143228_
                                         (##cdr _e143211143223_)))
                                    (let ((_body143231_ _tl143213143228_))
                                      (if '#t
                                          (gx#core-cons
                                           _id143207_
                                           _body143231_)
                                          (_E143210143219_)))))
                                (_E143210143219_)))))
                    (_E143209143233_)))))
          (if (##structure-instance-of?
               _self143194143200_
               'gx#rename-macro-expander::t)
              (let* ((_e143198143240_
                      (##unchecked-structure-ref
                       _self143194143200_
                       '1
                       gx#expander::t
                       '#f))
                     (_id143243_ _e143198143240_))
                (_K143197143237_ _id143243_))
              (_E143196143204_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self143018_ _stx143019_ _method143020_)
        (let* ((_self143021143029_ _self143018_)
               (_E143023143033_
                (lambda () (error '"No clause matching" _self143021143029_)))
               (_K143024143040_
                (lambda (_phi143036_ _ctx143037_ _K143038_)
                  (gx#core-apply-user-macro
                   _K143038_
                   _stx143019_
                   _ctx143037_
                   _phi143036_
                   _method143020_))))
          (if (##structure-instance-of?
               _self143021143029_
               'gx#macro-expander::t)
              (let* ((_e143025143043_
                      (##unchecked-structure-ref
                       _self143021143029_
                       '1
                       gx#expander::t
                       '#f))
                     (_K143046_ _e143025143043_)
                     (_e143026143048_
                      (##unchecked-structure-ref
                       _self143021143029_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx143051_ _e143026143048_)
                     (_e143027143053_
                      (##unchecked-structure-ref
                       _self143021143029_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi143056_ _e143027143053_))
                (_K143024143040_ _phi143056_ _ctx143051_ _K143046_))
              (_E143023143033_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self143061_ _stx143062_)
        (let ((_method143064_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self143061_
           _stx143062_
           _method143064_))))
    (define gx#core-apply-user-expander
      (lambda _g149659_
        (let ((_g149658_ (##length _g149659_)))
          (cond ((##fx= _g149658_ 2)
                 (apply (lambda (_self143061_ _stx143062_)
                          (gx#core-apply-user-expander__0
                           _self143061_
                           _stx143062_))
                        _g149659_))
                ((##fx= _g149658_ 3)
                 (apply (lambda (_self143066_ _stx143067_ _method143068_)
                          (gx#core-apply-user-expander__%
                           _self143066_
                           _stx143067_
                           _method143068_))
                        _g149659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g149659_))))))
    (define gx#core-apply-user-macro
      (lambda (_K143008_ _stx143009_ _ctx143010_ _phi143011_ _method143012_)
        (let ((_mark143014_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx143010_
                _phi143011_
                _stx143009_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K143008_
               (gx#stx-apply-mark _stx143009_ _mark143014_)
               _method143012_)
              _mark143014_))
           gx#current-expander-marks
           (cons _mark143014_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx142860_ _phi142861_ _ctx142862_)
        (let _lp142864_ ((_bind142866_
                          (gx#core-resolve-identifier__%
                           _stx142860_
                           _phi142861_
                           _ctx142862_)))
          (if (##structure-direct-instance-of?
               _bind142866_
               'gx#import-binding::t)
              (_lp142864_
               (##unchecked-structure-ref
                _bind142866_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind142866_
                   'gx#alias-binding::t)
                  (_lp142864_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind142866_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi142861_
                    _ctx142862_))
                  _bind142866_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx142871_)
        (let* ((_phi142873_ (gx#current-expander-phi))
               (_ctx142875_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142871_ _phi142873_ _ctx142875_))))
    (define gx#resolve-identifier__1
      (lambda (_stx142877_ _phi142878_)
        (let ((_ctx142880_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142877_ _phi142878_ _ctx142880_))))
    (define gx#resolve-identifier
      (lambda _g149661_
        (let ((_g149660_ (##length _g149661_)))
          (cond ((##fx= _g149660_ 1)
                 (apply (lambda (_stx142871_)
                          (gx#resolve-identifier__0 _stx142871_))
                        _g149661_))
                ((##fx= _g149660_ 2)
                 (apply (lambda (_stx142877_ _phi142878_)
                          (gx#resolve-identifier__1 _stx142877_ _phi142878_))
                        _g149661_))
                ((##fx= _g149660_ 3)
                 (apply (lambda (_stx142882_ _phi142883_ _ctx142884_)
                          (gx#resolve-identifier__%
                           _stx142882_
                           _phi142883_
                           _ctx142884_))
                        _g149661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g149661_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx142818_ _val142819_ _rebind?142820_ _phi142821_ _ctx142822_)
        (let ((_rebind?142824_
               (if (not _rebind?142820_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?142820_) _rebind?142820_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx142818_)
           _val142819_
           _rebind?142824_
           _phi142821_
           _ctx142822_))))
    (define gx#bind-identifier!__0
      (lambda (_stx142829_ _val142830_)
        (let* ((_rebind?142832_ '#f)
               (_phi142834_ (gx#current-expander-phi))
               (_ctx142836_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142829_
           _val142830_
           _rebind?142832_
           _phi142834_
           _ctx142836_))))
    (define gx#bind-identifier!__1
      (lambda (_stx142838_ _val142839_ _rebind?142840_)
        (let* ((_phi142842_ (gx#current-expander-phi))
               (_ctx142844_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142838_
           _val142839_
           _rebind?142840_
           _phi142842_
           _ctx142844_))))
    (define gx#bind-identifier!__2
      (lambda (_stx142846_ _val142847_ _rebind?142848_ _phi142849_)
        (let ((_ctx142851_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142846_
           _val142847_
           _rebind?142848_
           _phi142849_
           _ctx142851_))))
    (define gx#bind-identifier!
      (lambda _g149663_
        (let ((_g149662_ (##length _g149663_)))
          (cond ((##fx= _g149662_ 2)
                 (apply (lambda (_stx142829_ _val142830_)
                          (gx#bind-identifier!__0 _stx142829_ _val142830_))
                        _g149663_))
                ((##fx= _g149662_ 3)
                 (apply (lambda (_stx142838_ _val142839_ _rebind?142840_)
                          (gx#bind-identifier!__1
                           _stx142838_
                           _val142839_
                           _rebind?142840_))
                        _g149663_))
                ((##fx= _g149662_ 4)
                 (apply (lambda (_stx142846_
                                 _val142847_
                                 _rebind?142848_
                                 _phi142849_)
                          (gx#bind-identifier!__2
                           _stx142846_
                           _val142847_
                           _rebind?142848_
                           _phi142849_))
                        _g149663_))
                ((##fx= _g149662_ 5)
                 (apply (lambda (_stx142853_
                                 _val142854_
                                 _rebind?142855_
                                 _phi142856_
                                 _ctx142857_)
                          (gx#bind-identifier!__%
                           _stx142853_
                           _val142854_
                           _rebind?142855_
                           _phi142856_
                           _ctx142857_))
                        _g149663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g149663_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx142790_ _phi142791_ _ctx142792_)
        (let _lp142794_ ((_e142796_ _stx142790_)
                         (_marks142797_ (gx#current-expander-marks)))
          (if (symbol? _e142796_)
              (gx#core-resolve-binding
               _e142796_
               _phi142791_
               _phi142791_
               _ctx142792_
               (reverse _marks142797_))
              (if (gx#identifier-quote? _e142796_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e142796_ '1 gx#AST::t '#f)
                   _phi142791_
                   '0
                   (##unchecked-structure-ref
                    _e142796_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e142796_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e142796_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e142796_ '1 gx#AST::t '#f)
                       _phi142791_
                       _phi142791_
                       _ctx142792_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e142796_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks142797_))
                      (if (##structure-direct-instance-of?
                           _e142796_
                           'gx#syntax-wrap::t)
                          (_lp142794_
                           (##unchecked-structure-ref
                            _e142796_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e142796_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks142797_))
                          (if (##structure-instance-of?
                               _e142796_
                               'gerbil#AST::t)
                              (_lp142794_
                               (##unchecked-structure-ref
                                _e142796_
                                '1
                                gx#AST::t
                                '#f)
                               _marks142797_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx142790_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx142802_)
        (let* ((_phi142804_ (gx#current-expander-phi))
               (_ctx142806_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142802_
           _phi142804_
           _ctx142806_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx142808_ _phi142809_)
        (let ((_ctx142811_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142808_
           _phi142809_
           _ctx142811_))))
    (define gx#core-resolve-identifier
      (lambda _g149665_
        (let ((_g149664_ (##length _g149665_)))
          (cond ((##fx= _g149664_ 1)
                 (apply (lambda (_stx142802_)
                          (gx#core-resolve-identifier__0 _stx142802_))
                        _g149665_))
                ((##fx= _g149664_ 2)
                 (apply (lambda (_stx142808_ _phi142809_)
                          (gx#core-resolve-identifier__1
                           _stx142808_
                           _phi142809_))
                        _g149665_))
                ((##fx= _g149664_ 3)
                 (apply (lambda (_stx142813_ _phi142814_ _ctx142815_)
                          (gx#core-resolve-identifier__%
                           _stx142813_
                           _phi142814_
                           _ctx142815_))
                        _g149665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g149665_))))))
    (define gx#core-resolve-binding
      (lambda (_id142703_
               _phi142704_
               _src-phi142705_
               _ctx142706_
               _marks142707_)
        (letrec ((_resolve142709_
                  (lambda (_ctx142777_ _src-phi142778_ _key142779_)
                    (let _lp142781_ ((_ctx142783_
                                      (gx#core-context-shift
                                       _ctx142777_
                                       _phi142704_))
                                     (_dphi142784_
                                      (fx- _phi142704_ _src-phi142778_)))
                      (let ((_$e142786_
                             (gx#core-context-resolve
                              _ctx142783_
                              _key142779_)))
                        (if _$e142786_
                            (values _$e142786_)
                            (if (fxzero? _dphi142784_)
                                '#f
                                (if (fxpositive? _dphi142784_)
                                    (_lp142781_
                                     (gx#core-context-shift _ctx142783_ '-1)
                                     (fx- _dphi142784_ '1))
                                    (_lp142781_
                                     (gx#core-context-shift _ctx142783_ '1)
                                     (fx+ _dphi142784_ '1))))))))))
          (let _lp142711_ ((_ctx142713_ _ctx142706_)
                           (_src-phi142714_ _src-phi142705_)
                           (_rest142715_ _marks142707_))
            (let* ((_rest142716142724_ _rest142715_)
                   (_else142718142732_
                    (lambda ()
                      (_resolve142709_
                       _ctx142713_
                       _src-phi142714_
                       _id142703_)))
                   (_K142720142765_
                    (lambda (_rest142735_ _hd142736_)
                      (let* ((_hd142737142743_ _hd142736_)
                             (_E142739142747_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd142737142743_)))
                             (_K142740142757_
                              (lambda (_subst142750_)
                                (let ((_$e142754_
                                       (let ((_key142752_
                                              (if _subst142750_
                                                  (table-ref
                                                   _subst142750_
                                                   _id142703_
                                                   '#f)
                                                  '#f)))
                                         (if _key142752_
                                             (_resolve142709_
                                              _ctx142713_
                                              _src-phi142714_
                                              _key142752_)
                                             '#f))))
                                  (if _$e142754_
                                      _$e142754_
                                      (_lp142711_
                                       (##unchecked-structure-ref
                                        _hd142736_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd142736_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest142735_))))))
                        (if (##structure-instance-of?
                             _hd142737142743_
                             'gx#expander-mark::t)
                            (let* ((_e142741142760_
                                    (##unchecked-structure-ref
                                     _hd142737142743_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst142763_ _e142741142760_))
                              (_K142740142757_ _subst142763_))
                            (_E142739142747_))))))
              (if (##pair? _rest142716142724_)
                  (let ((_hd142721142768_ (##car _rest142716142724_))
                        (_tl142722142770_ (##cdr _rest142716142724_)))
                    (let* ((_hd142773_ _hd142721142768_)
                           (_rest142775_ _tl142722142770_))
                      (_K142720142765_ _rest142775_ _hd142773_)))
                  (_else142718142732_)))))))
    (define gx#core-bind!__%
      (lambda (_key142579_ _val142580_ _rebind?142581_ _phi142582_ _ctx142583_)
        (letrec ((_update-binding142585_
                  (lambda (_xval142656_)
                    (if (or (_rebind?142581_
                             _ctx142583_
                             _xval142656_
                             _val142580_)
                            (and (##structure-direct-instance-of?
                                  _xval142656_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval142656_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val142580_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val142580_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval142656_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val142580_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val142580_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval142656_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val142580_
                        (if (and (##structure-direct-instance-of?
                                  _val142580_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val142580_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval142656_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val142580_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval142656_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval142656_
                            (if (and (##structure-direct-instance-of?
                                      _val142580_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval142656_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key142579_
                                 (cons (##unchecked-structure-ref
                                        _val142580_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val142580_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval142656_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval142656_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval142656_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval142656_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key142579_
                                 _val142580_
                                 _xval142656_))))))
                 (_gensubst142586_
                  (lambda (_subst142651_ _id142652_)
                    (let ((_eid142654_
                           (gensym (if (uninterned-symbol? _id142652_)
                                       '%
                                       _id142652_))))
                      (table-set! _subst142651_ _id142652_ _eid142654_)
                      _eid142654_)))
                 (_subst!142587_
                  (lambda (_key142589_)
                    (let* ((_key142590142598_ _key142589_)
                           (_else142592142606_ (lambda () _key142589_))
                           (_K142594142639_
                            (lambda (_mark142609_ _id142610_)
                              (let* ((_mark142611142617_ _mark142609_)
                                     (_E142613142621_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark142611142617_)))
                                     (_K142614142631_
                                      (lambda (_subst142624_)
                                        (if (not _subst142624_)
                                            (let ((_subst142626_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark142609_
                                               _subst142626_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst142586_
                                               _subst142626_
                                               _id142610_))
                                            (let ((_$e142628_
                                                   (table-ref
                                                    _subst142624_
                                                    _id142610_
                                                    '#f)))
                                              (if _$e142628_
                                                  (values _$e142628_)
                                                  (_gensubst142586_
                                                   _subst142624_
                                                   _id142610_)))))))
                                (if (##structure-instance-of?
                                     _mark142611142617_
                                     'gx#expander-mark::t)
                                    (let* ((_e142615142634_
                                            (##unchecked-structure-ref
                                             _mark142611142617_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst142637_ _e142615142634_))
                                      (_K142614142631_ _subst142637_))
                                    (_E142613142621_))))))
                      (if (##pair? _key142590142598_)
                          (let ((_hd142595142642_ (##car _key142590142598_))
                                (_tl142596142644_ (##cdr _key142590142598_)))
                            (let* ((_id142647_ _hd142595142642_)
                                   (_mark142649_ _tl142596142644_))
                              (_K142594142639_ _mark142649_ _id142647_)))
                          (_else142592142606_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx142583_ _phi142582_)
           (_subst!142587_ _key142579_)
           _val142580_
           _update-binding142585_))))
    (define gx#core-bind!__0
      (lambda (_key142673_ _val142674_)
        (let* ((_rebind?142676_ false)
               (_phi142678_ (gx#current-expander-phi))
               (_ctx142680_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142673_
           _val142674_
           _rebind?142676_
           _phi142678_
           _ctx142680_))))
    (define gx#core-bind!__1
      (lambda (_key142682_ _val142683_ _rebind?142684_)
        (let* ((_phi142686_ (gx#current-expander-phi))
               (_ctx142688_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142682_
           _val142683_
           _rebind?142684_
           _phi142686_
           _ctx142688_))))
    (define gx#core-bind!__2
      (lambda (_key142690_ _val142691_ _rebind?142692_ _phi142693_)
        (let ((_ctx142695_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142690_
           _val142691_
           _rebind?142692_
           _phi142693_
           _ctx142695_))))
    (define gx#core-bind!
      (lambda _g149667_
        (let ((_g149666_ (##length _g149667_)))
          (cond ((##fx= _g149666_ 2)
                 (apply (lambda (_key142673_ _val142674_)
                          (gx#core-bind!__0 _key142673_ _val142674_))
                        _g149667_))
                ((##fx= _g149666_ 3)
                 (apply (lambda (_key142682_ _val142683_ _rebind?142684_)
                          (gx#core-bind!__1
                           _key142682_
                           _val142683_
                           _rebind?142684_))
                        _g149667_))
                ((##fx= _g149666_ 4)
                 (apply (lambda (_key142690_
                                 _val142691_
                                 _rebind?142692_
                                 _phi142693_)
                          (gx#core-bind!__2
                           _key142690_
                           _val142691_
                           _rebind?142692_
                           _phi142693_))
                        _g149667_))
                ((##fx= _g149666_ 5)
                 (apply (lambda (_key142697_
                                 _val142698_
                                 _rebind?142699_
                                 _phi142700_
                                 _ctx142701_)
                          (gx#core-bind!__%
                           _key142697_
                           _val142698_
                           _rebind?142699_
                           _phi142700_
                           _ctx142701_))
                        _g149667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g149667_))))))
    (define gx#core-identifier-key
      (lambda (_stx142513_)
        (if (symbol? _stx142513_)
            (let* ((_g142514142522_ (gx#current-expander-marks))
                   (_else142516142530_ (lambda () _stx142513_))
                   (_K142518142535_
                    (lambda (_hd142533_) (cons _stx142513_ _hd142533_))))
              (if (##pair? _g142514142522_)
                  (let* ((_hd142519142538_ (##car _g142514142522_))
                         (_hd142541_ _hd142519142538_))
                    (_K142518142535_ _hd142541_))
                  (_else142516142530_)))
            (if (gx#identifier? _stx142513_)
                (let* ((_id142543_ (gx#syntax-local-unwrap _stx142513_))
                       (_eid142545_ (gx#stx-e _id142543_))
                       (_marks142547_ (gx#stx-identifier-marks* _id142543_)))
                  (let* ((_marks142549142557_ _marks142547_)
                         (_else142551142565_ (lambda () _eid142545_))
                         (_K142553142570_
                          (lambda (_hd142568_) (cons _eid142545_ _hd142568_))))
                    (if (##pair? _marks142549142557_)
                        (let* ((_hd142554142573_ (##car _marks142549142557_))
                               (_hd142576_ _hd142554142573_))
                          (_K142553142570_ _hd142576_))
                        (_else142551142565_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx142513_)))))
    (define gx#core-context-shift
      (lambda (_ctx142458_ _phi142459_)
        (letrec ((_make-phi142461_
                  (lambda (_super142511_)
                    (let ((__obj149638
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj149638
                       (gensym 'phi)
                       _super142511_)
                      __obj149638)))
                 (_make-phi/up142462_
                  (lambda (_ctx142506_ _super142507_)
                    (let ((_ctx+1142509_ (_make-phi142461_ _super142507_)))
                      (##unchecked-structure-set!
                       _ctx142506_
                       _ctx+1142509_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1142509_
                       _ctx142506_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1142509_)))
                 (_make-phi/down142463_
                  (lambda (_ctx142501_ _super142502_)
                    (let ((_ctx-1142504_ (_make-phi142461_ _super142502_)))
                      (##unchecked-structure-set!
                       _ctx-1142504_
                       _ctx142501_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx142501_
                       _ctx-1142504_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1142504_)))
                 (_shift142464_
                  (lambda (_ctx142485_
                           _delta142486_
                           _make-delta-context142487_
                           _phi142488_
                           _K142489_)
                    (let ((_$e142491_
                           (##unchecked-structure-ref
                            _ctx142485_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e142491_
                          ((lambda (_super142494_)
                             (let* ((_super142496_
                                     (_K142489_ _super142494_ _delta142486_))
                                    (_ctx+d142498_
                                     (_make-delta-context142487_
                                      _ctx142485_
                                      _super142496_)))
                               (_K142489_
                                _ctx+d142498_
                                (fx- _phi142488_ _delta142486_))))
                           _$e142491_)
                          (error '"Bad context" _ctx142485_))))))
          (let _K142466_ ((_ctx142468_ _ctx142458_) (_phi142469_ _phi142459_))
            (if (fxzero? _phi142469_)
                _ctx142468_
                (if (fx> (##vector-length _ctx142468_) '3)
                    (if (fxpositive? _phi142469_)
                        (let ((_$e142471_
                               (##unchecked-structure-ref
                                _ctx142468_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e142471_
                              ((lambda (_g142473142475_)
                                 (_K142466_
                                  _g142473142475_
                                  (fx- _phi142469_ '1)))
                               _$e142471_)
                              (_shift142464_
                               _ctx142468_
                               '1
                               _make-phi/up142462_
                               _phi142469_
                               _K142466_)))
                        (let ((_$e142478_
                               (##unchecked-structure-ref
                                _ctx142468_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e142478_
                              ((lambda (_g142480142482_)
                                 (_K142466_
                                  _g142480142482_
                                  (fx+ _phi142469_ '1)))
                               _$e142478_)
                              (_shift142464_
                               _ctx142468_
                               '-1
                               _make-phi/down142463_
                               _phi142469_
                               _K142466_))))
                    _ctx142468_))))))
    (define gx#core-context-get
      (lambda (_ctx142455_ _key142456_)
        (table-ref
         (##unchecked-structure-ref _ctx142455_ '2 gx#expander-context::t '#f)
         _key142456_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx142451_ _key142452_ _val142453_)
        (table-set!
         (##unchecked-structure-ref _ctx142451_ '2 gx#expander-context::t '#f)
         _key142452_
         _val142453_)))
    (define gx#core-context-resolve
      (lambda (_ctx142438_ _key142439_)
        (let _lp142441_ ((_ctx142443_ _ctx142438_))
          (let ((_$e142445_ (gx#core-context-get _ctx142443_ _key142439_)))
            (if _$e142445_
                (values _$e142445_)
                (let ((_$e142448_
                       (if (fx> (##vector-length _ctx142443_) '3)
                           (##unchecked-structure-ref
                            _ctx142443_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e142448_ (_lp142441_ _$e142448_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx142428_ _key142429_ _val142430_ _rebind142431_)
        (let ((_$e142433_ (gx#core-context-get _ctx142428_ _key142429_)))
          (if _$e142433_
              ((lambda (_xval142436_)
                 (gx#core-context-put!
                  _ctx142428_
                  _key142429_
                  (_rebind142431_ _xval142436_)))
               _$e142433_)
              (gx#core-context-put! _ctx142428_ _key142429_ _val142430_)))))
    (define gx#core-context-top__%
      (lambda (_ctx142406_ _stop?142407_)
        (let _lp142409_ ((_ctx142411_ _ctx142406_))
          (if (_stop?142407_ _ctx142411_)
              _ctx142411_
              (if (##structure-instance-of? _ctx142411_ 'gx#context-phi::t)
                  (_lp142409_
                   (##unchecked-structure-ref
                    _ctx142411_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx142417_ (gx#current-expander-context))
               (_stop?142419_ gx#top-context?))
          (gx#core-context-top__% _ctx142417_ _stop?142419_))))
    (define gx#core-context-top__1
      (lambda (_ctx142421_)
        (let ((_stop?142423_ gx#top-context?))
          (gx#core-context-top__% _ctx142421_ _stop?142423_))))
    (define gx#core-context-top
      (lambda _g149669_
        (let ((_g149668_ (##length _g149669_)))
          (cond ((##fx= _g149668_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g149669_))
                ((##fx= _g149668_ 1)
                 (apply (lambda (_ctx142421_)
                          (gx#core-context-top__1 _ctx142421_))
                        _g149669_))
                ((##fx= _g149668_ 2)
                 (apply (lambda (_ctx142425_ _stop?142426_)
                          (gx#core-context-top__% _ctx142425_ _stop?142426_))
                        _g149669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g149669_))))))
    (define gx#core-context-root__%
      (lambda (_ctx142391_)
        (let _lp142393_ ((_ctx142395_ _ctx142391_))
          (if (##structure-instance-of? _ctx142395_ 'gx#context-phi::t)
              (_lp142393_
               (##unchecked-structure-ref
                _ctx142395_
                '3
                gx#phi-context::t
                '#f))
              _ctx142395_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx142401_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx142401_))))
    (define gx#core-context-root
      (lambda _g149671_
        (let ((_g149670_ (##length _g149671_)))
          (cond ((##fx= _g149670_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g149671_))
                ((##fx= _g149670_ 1)
                 (apply (lambda (_ctx142403_)
                          (gx#core-context-root__% _ctx142403_))
                        _g149671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g149671_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx142372_ . __142369142373_)
        (let ((_$e142376_ (gx#current-expander-allow-rebind?)))
          (if _$e142376_
              _$e142376_
              (if (##structure-instance-of? _ctx142372_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx142372_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx142372_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx142383_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx142383_))))
    (define gx#core-context-rebind?
      (lambda _g149673_
        (let ((_g149672_ (##length _g149673_)))
          (cond ((##fx= _g149672_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g149673_))
                ((##fx= _g149672_ 1)
                 (apply (lambda (_ctx142385_)
                          (gx#core-context-rebind?__% _ctx142385_))
                        _g149673_))
                ((##fx>= _g149672_ 1)
                 (apply gx#core-context-rebind?__% _g149673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g149673_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx142355_)
        (let ((_$e142357_ (gx#core-context-top__1 _ctx142355_)))
          (if _$e142357_
              ((lambda (_ctx142360_)
                 (if (##structure-instance-of?
                      _ctx142360_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx142360_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e142357_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx142366_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx142366_))))
    (define gx#core-context-namespace
      (lambda _g149675_
        (let ((_g149674_ (##length _g149675_)))
          (cond ((##fx= _g149674_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g149675_))
                ((##fx= _g149674_ 1)
                 (apply (lambda (_ctx142368_)
                          (gx#core-context-namespace__% _ctx142368_))
                        _g149675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g149675_))))))
    (define gx#expander-binding?__%
      (lambda (_bind142341_ _is?142342_)
        (if (##structure-direct-instance-of?
             _bind142341_
             'gx#syntax-binding::t)
            (_is?142342_
             (##unchecked-structure-ref
              _bind142341_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind142347_)
        (let ((_is?142349_ gx#expander?))
          (gx#expander-binding?__% _bind142347_ _is?142349_))))
    (define gx#expander-binding?
      (lambda _g149677_
        (let ((_g149676_ (##length _g149677_)))
          (cond ((##fx= _g149676_ 1)
                 (apply (lambda (_bind142347_)
                          (gx#expander-binding?__0 _bind142347_))
                        _g149677_))
                ((##fx= _g149676_ 2)
                 (apply (lambda (_bind142351_ _is?142352_)
                          (gx#expander-binding?__% _bind142351_ _is?142352_))
                        _g149677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g149677_))))))
    (define gx#core-expander-binding?
      (lambda (_bind142338_)
        (gx#expander-binding?__% _bind142338_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind142336_)
        (gx#expander-binding?__% _bind142336_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind142330_)
        (letrec ((_direct-special-form?142332_
                  (lambda (_obj142334_)
                    (##structure-direct-instance-of?
                     _obj142334_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind142330_
           _direct-special-form?142332_))))
    (define gx#special-form-binding?
      (lambda (_bind142328_)
        (gx#expander-binding?__% _bind142328_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind142319_)
        (letrec ((_feature?142321_
                  (lambda (_e142323_)
                    (let ((_$e142325_
                           (##structure-instance-of?
                            _e142323_
                            'gx#feature-expander::t)))
                      (if _$e142325_
                          _$e142325_
                          (##structure-instance-of?
                           _e142323_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind142319_ _feature?142321_))))
    (define gx#private-feature-binding?
      (lambda (_bind142317_)
        (gx#expander-binding?__% _bind142317_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id142304_ _bound?142305_)
        (if (gx#identifier? _id142304_)
            (_bound?142305_ (gx#resolve-identifier__0 _id142304_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id142310_)
        (let ((_bound?142312_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id142310_ _bound?142312_))))
    (define gx#core-bound-identifier?
      (lambda _g149679_
        (let ((_g149678_ (##length _g149679_)))
          (cond ((##fx= _g149678_ 1)
                 (apply (lambda (_id142310_)
                          (gx#core-bound-identifier?__0 _id142310_))
                        _g149679_))
                ((##fx= _g149678_ 2)
                 (apply (lambda (_id142314_ _bound?142315_)
                          (gx#core-bound-identifier?__%
                           _id142314_
                           _bound?142315_))
                        _g149679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g149679_))))))
    (define gx#core-identifier=?
      (lambda (_x142294_ _y142295_)
        (letrec ((_y=?142297_
                  (lambda (_xid142301_)
                    ((if (list? _y142295_) memq eq?) _xid142301_ _y142295_))))
          (let ((_bind142299_ (gx#resolve-identifier__0 _x142294_)))
            (if (##structure-instance-of? _bind142299_ 'gx#binding::t)
                (_y=?142297_
                 (##unchecked-structure-ref _bind142299_ '1 gx#binding::t '#f))
                (_y=?142297_ (gx#stx-e _x142294_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e142292_)
        (if (interned-symbol? _e142292_)
            (string-index (symbol->string _e142292_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx142247_ _src142248_ _ctx142249_ _marks142250_)
        (if (##structure? _stx142247_)
            (let ((_$e142252_ (gx#sealed-syntax-unwrap _stx142247_)))
              (if _$e142252_
                  (values _$e142252_)
                  (if (gx#identifier? _stx142247_)
                      (let ((_id142255_
                             (gx#stx-unwrap__% _stx142247_ _marks142250_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id142255_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e142257_
                                (##unchecked-structure-ref
                                 _id142255_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e142257_ _$e142257_ _src142248_))
                         _ctx142249_
                         (##unchecked-structure-ref
                          _id142255_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx142247_)
                       (let ((_$e142260_ (gx#stx-source _stx142247_)))
                         (if _$e142260_ _$e142260_ _src142248_))
                       _ctx142249_
                       (reverse _marks142250_)))))
            (##structure
             gx#syntax-quote::t
             _stx142247_
             _src142248_
             _ctx142249_
             (reverse _marks142250_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx142266_)
        (let* ((_src142268_ '#f)
               (_ctx142270_ (gx#current-expander-context))
               (_marks142272_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142266_
           _src142268_
           _ctx142270_
           _marks142272_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx142274_ _src142275_)
        (let* ((_ctx142277_ (gx#current-expander-context))
               (_marks142279_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142274_
           _src142275_
           _ctx142277_
           _marks142279_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx142281_ _src142282_ _ctx142283_)
        (let ((_marks142285_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142281_
           _src142282_
           _ctx142283_
           _marks142285_))))
    (define gx#core-quote-syntax
      (lambda _g149681_
        (let ((_g149680_ (##length _g149681_)))
          (cond ((##fx= _g149680_ 1)
                 (apply (lambda (_stx142266_)
                          (gx#core-quote-syntax__0 _stx142266_))
                        _g149681_))
                ((##fx= _g149680_ 2)
                 (apply (lambda (_stx142274_ _src142275_)
                          (gx#core-quote-syntax__1 _stx142274_ _src142275_))
                        _g149681_))
                ((##fx= _g149680_ 3)
                 (apply (lambda (_stx142281_ _src142282_ _ctx142283_)
                          (gx#core-quote-syntax__2
                           _stx142281_
                           _src142282_
                           _ctx142283_))
                        _g149681_))
                ((##fx= _g149680_ 4)
                 (apply (lambda (_stx142287_
                                 _src142288_
                                 _ctx142289_
                                 _marks142290_)
                          (gx#core-quote-syntax__%
                           _stx142287_
                           _src142288_
                           _ctx142289_
                           _marks142290_))
                        _g149681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g149681_))))))
    (define gx#core-cons
      (lambda (_hd142243_ _tl142244_)
        (cons (gx#core-quote-syntax__0 _hd142243_) _tl142244_)))
    (define gx#core-list
      (lambda (_hd142240_ . _rest142241_)
        (cons (gx#core-quote-syntax__0 _hd142240_) _rest142241_)))
    (define gx#core-cons*
      (lambda (_hd142237_ . _rest142238_)
        (apply cons* (gx#core-quote-syntax__0 _hd142237_) _rest142238_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path142211_ _rel142212_)
        (let ((_path142224_ (gx#stx-e _stx-path142211_))
              (_reldir142225_
               (let _lp142214_ ((_relsrc142216_
                                 (let ((_$e142221_
                                        (gx#stx-source _stx-path142211_)))
                                   (if _$e142221_ _$e142221_ _rel142212_))))
                 (if (##structure-instance-of? _relsrc142216_ 'gerbil#AST::t)
                     (_lp142214_
                      (let ((_$e142218_ (gx#stx-source _relsrc142216_)))
                        (if _$e142218_ _$e142218_ (gx#stx-e _relsrc142216_))))
                     (if (source-location-path? _relsrc142216_)
                         (path-directory (source-location-path _relsrc142216_))
                         (if (string? _relsrc142216_)
                             (path-directory _relsrc142216_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path142224_ (path-normalize _reldir142225_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path142230_)
        (let ((_rel142232_ '#f))
          (gx#core-resolve-path__% _stx-path142230_ _rel142232_))))
    (define gx#core-resolve-path
      (lambda _g149683_
        (let ((_g149682_ (##length _g149683_)))
          (cond ((##fx= _g149682_ 1)
                 (apply (lambda (_stx-path142230_)
                          (gx#core-resolve-path__0 _stx-path142230_))
                        _g149683_))
                ((##fx= _g149682_ 2)
                 (apply (lambda (_stx-path142234_ _rel142235_)
                          (gx#core-resolve-path__%
                           _stx-path142234_
                           _rel142235_))
                        _g149683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g149683_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr142167_ _ctx142168_)
        (let* ((_repr142169142176_ _repr142167_)
               (_E142171142180_
                (lambda () (error '"No clause matching" _repr142169142176_)))
               (_K142172142188_
                (lambda (_subs142183_ _phi142184_)
                  (let ((_subst142186_
                         (if (not (null? _subs142183_))
                             (list->table _subs142183_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst142186_
                     _ctx142168_
                     _phi142184_
                     '#f)))))
          (if (##pair? _repr142169142176_)
              (let ((_hd142173142191_ (##car _repr142169142176_))
                    (_tl142174142193_ (##cdr _repr142169142176_)))
                (let* ((_phi142196_ _hd142173142191_)
                       (_subs142198_ _tl142174142193_))
                  (_K142172142188_ _subs142198_ _phi142196_)))
              (_E142171142180_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr142203_)
        (let ((_ctx142205_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr142203_ _ctx142205_))))
    (define gx#core-deserialize-mark
      (lambda _g149685_
        (let ((_g149684_ (##length _g149685_)))
          (cond ((##fx= _g149684_ 1)
                 (apply (lambda (_repr142203_)
                          (gx#core-deserialize-mark__0 _repr142203_))
                        _g149685_))
                ((##fx= _g149684_ 2)
                 (apply (lambda (_repr142207_ _ctx142208_)
                          (gx#core-deserialize-mark__%
                           _repr142207_
                           _ctx142208_))
                        _g149685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g149685_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx142164_)
        (gx#stx-rewrap _stx142164_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx142162_)
        (gx#stx-unwrap__% _stx142162_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx142132_)
        (let* ((_g142133142141_ (gx#current-expander-marks))
               (_else142135142149_ (lambda () _stx142132_))
               (_K142137142154_
                (lambda (_hd142152_)
                  (gx#stx-apply-mark _stx142132_ _hd142152_))))
          (if (##pair? _g142133142141_)
              (let* ((_hd142138142157_ (##car _g142133142141_))
                     (_hd142160_ _hd142138142157_))
                (_K142137142154_ _hd142160_))
              (_else142135142149_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx142117_ _E142118_)
        (let ((_bind142120_ (gx#resolve-identifier__0 _stx142117_)))
          (if (##structure-direct-instance-of?
               _bind142120_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind142120_
               '4
               gx#syntax-binding::t
               '#f)
              (_E142118_ _stx142117_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx142125_)
        (let ((_E142127_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx142125_ _E142127_))))
    (define gx#syntax-local-e
      (lambda _g149687_
        (let ((_g149686_ (##length _g149687_)))
          (cond ((##fx= _g149686_ 1)
                 (apply (lambda (_stx142125_)
                          (gx#syntax-local-e__0 _stx142125_))
                        _g149687_))
                ((##fx= _g149686_ 2)
                 (apply (lambda (_stx142129_ _E142130_)
                          (gx#syntax-local-e__% _stx142129_ _E142130_))
                        _g149687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g149687_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx142101_ _E142102_)
        (let ((_e142104_ (gx#syntax-local-e__% _stx142101_ _E142102_)))
          (if (##structure-instance-of? _e142104_ 'gx#expander::t)
              (##structure-ref _e142104_ '1 gx#expander::t '#f)
              _e142104_))))
    (define gx#syntax-local-value__0
      (lambda (_stx142109_)
        (let ((_E142111_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx142109_ _E142111_))))
    (define gx#syntax-local-value
      (lambda _g149689_
        (let ((_g149688_ (##length _g149689_)))
          (cond ((##fx= _g149688_ 1)
                 (apply (lambda (_stx142109_)
                          (gx#syntax-local-value__0 _stx142109_))
                        _g149689_))
                ((##fx= _g149688_ 2)
                 (apply (lambda (_stx142113_ _E142114_)
                          (gx#syntax-local-value__% _stx142113_ _E142114_))
                        _g149689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g149689_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx142098_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx142098_)))))
