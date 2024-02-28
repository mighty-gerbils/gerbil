(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1709159707)
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
      (lambda _$args84744_
        (apply make-instance gx#expander-context::t _$args84744_)))
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
      (lambda _$args84741_
        (apply make-instance gx#root-context::t _$args84741_)))
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
      (lambda _$args84738_
        (apply make-instance gx#phi-context::t _$args84738_)))
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
      (lambda _$args84735_
        (apply make-instance gx#top-context::t _$args84735_)))
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
      (lambda _$args84732_
        (apply make-instance gx#module-context::t _$args84732_)))
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
      (lambda _$args84729_
        (apply make-instance gx#prelude-context::t _$args84729_)))
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
      (lambda _$args84726_
        (apply make-instance gx#local-context::t _$args84726_)))
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
      (lambda (_self84710_ _id84711_ _super84712_)
        (if (##fx< '3 (##structure-length _self84710_))
            (begin
              (##unchecked-structure-set!
               _self84710_
               _id84711_
               '1
               (##structure-type _self84710_)
               '#f)
              (##unchecked-structure-set!
               _self84710_
               (make-hash-table-eq)
               '2
               (##structure-type _self84710_)
               '#f)
              (##unchecked-structure-set!
               _self84710_
               _super84712_
               '3
               (##structure-type _self84710_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84710_
                   '3
                   (##vector-length _self84710_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84717_ _id84718_)
        (let ((_super84720_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84717_ _id84718_ _super84720_))))
    (define gx#phi-context:::init!
      (lambda _g84787_
        (let ((_g84786_ (##length _g84787_)))
          (cond ((##fx= _g84786_ 2)
                 (apply (lambda (_self84717_ _id84718_)
                          (gx#phi-context:::init!__0 _self84717_ _id84718_))
                        _g84787_))
                ((##fx= _g84786_ 3)
                 (apply (lambda (_self84722_ _id84723_ _super84724_)
                          (gx#phi-context:::init!__%
                           _self84722_
                           _id84723_
                           _super84724_))
                        _g84787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84787_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self84574_ _super84575_)
        (if (##fx< '3 (##structure-length _self84574_))
            (begin
              (##unchecked-structure-set!
               _self84574_
               (gensym 'L)
               '1
               (##structure-type _self84574_)
               '#f)
              (##unchecked-structure-set!
               _self84574_
               (make-hash-table-eq)
               '2
               (##structure-type _self84574_)
               '#f)
              (##unchecked-structure-set!
               _self84574_
               _super84575_
               '3
               (##structure-type _self84574_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84574_
                   '3
                   (##vector-length _self84574_)))))
    (define gx#local-context:::init!__0
      (lambda (_self84580_)
        (let ((_super84582_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self84580_ _super84582_))))
    (define gx#local-context:::init!
      (lambda _g84789_
        (let ((_g84788_ (##length _g84789_)))
          (cond ((##fx= _g84788_ 1)
                 (apply (lambda (_self84580_)
                          (gx#local-context:::init!__0 _self84580_))
                        _g84789_))
                ((##fx= _g84788_ 2)
                 (apply (lambda (_self84584_ _super84585_)
                          (gx#local-context:::init!__%
                           _self84584_
                           _super84585_))
                        _g84789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84789_))))))
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
      (lambda _$args84448_ (apply make-instance gx#binding::t _$args84448_)))
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
      (lambda _$args84445_
        (apply make-instance gx#runtime-binding::t _$args84445_)))
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
      (lambda _$args84442_
        (apply make-instance gx#local-binding::t _$args84442_)))
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
      (lambda _$args84439_
        (apply make-instance gx#top-binding::t _$args84439_)))
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
      (lambda _$args84436_
        (apply make-instance gx#module-binding::t _$args84436_)))
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
      (lambda _$args84433_
        (apply make-instance gx#extern-binding::t _$args84433_)))
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
      (lambda _$args84430_
        (apply make-instance gx#syntax-binding::t _$args84430_)))
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
      (lambda _$args84427_
        (apply make-instance gx#import-binding::t _$args84427_)))
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
      (lambda _$args84424_
        (apply make-instance gx#alias-binding::t _$args84424_)))
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
      (lambda _$args84421_ (apply make-instance gx#expander::t _$args84421_)))
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
      (lambda _$args84418_
        (apply make-instance gx#core-expander::t _$args84418_)))
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
      (lambda _$args84415_
        (apply make-instance gx#expression-form::t _$args84415_)))
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
      (lambda _$args84412_
        (apply make-instance gx#special-form::t _$args84412_)))
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
      (lambda _$args84409_
        (apply make-instance gx#definition-form::t _$args84409_)))
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
      (lambda _$args84406_
        (apply make-instance gx#top-special-form::t _$args84406_)))
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
      (lambda _$args84403_
        (apply make-instance gx#module-special-form::t _$args84403_)))
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
      (lambda _$args84400_
        (apply make-instance gx#feature-expander::t _$args84400_)))
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
      (lambda _$args84397_
        (apply make-instance gx#private-feature-expander::t _$args84397_)))
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
      (lambda _$args84394_
        (apply make-instance gx#reserved-expander::t _$args84394_)))
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
      (lambda _$args84391_
        (apply make-instance gx#macro-expander::t _$args84391_)))
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
      (lambda _$args84388_
        (apply make-instance gx#rename-macro-expander::t _$args84388_)))
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
      (lambda _$args84385_
        (apply make-instance gx#user-expander::t _$args84385_)))
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
      (lambda _$args84382_
        (apply make-instance gx#expander-mark::t _$args84382_)))
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
      (lambda (_ctx84367_ _message84368_ _stx84369_ . _details84370_)
        (let ((_ctx84380_
               (let ((_$e84372_ _ctx84367_))
                 (if _$e84372_
                     _$e84372_
                     (let ((_$e84375_ (gx#core-context-top__0)))
                       (if _$e84375_
                           ((lambda (_ctx84378_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx84378_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e84375_)
                           '#f))))))
          (raise (make-syntax-error
                  _message84368_
                  (cons _stx84369_ _details84370_)
                  _ctx84380_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx84354_ _expression?84355_)
        (gx#eval-syntax* (gx#core-expand__% _stx84354_ _expression?84355_))))
    (define gx#eval-syntax__0
      (lambda (_stx84360_)
        (let ((_expression?84362_ '#f))
          (gx#eval-syntax__% _stx84360_ _expression?84362_))))
    (define gx#eval-syntax
      (lambda _g84791_
        (let ((_g84790_ (##length _g84791_)))
          (cond ((##fx= _g84790_ 1)
                 (apply (lambda (_stx84360_) (gx#eval-syntax__0 _stx84360_))
                        _g84791_))
                ((##fx= _g84790_ 2)
                 (apply (lambda (_stx84364_ _expression?84365_)
                          (gx#eval-syntax__% _stx84364_ _expression?84365_))
                        _g84791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84791_))))))
    (define gx#eval-syntax*
      (lambda (_stx84351_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx84351_))))
    (define gx#core-expand__%
      (lambda (_stx84338_ _expression?84339_)
        (if _expression?84339_
            (gx#core-expand-expression _stx84338_)
            (gx#core-expand-top _stx84338_))))
    (define gx#core-expand__0
      (lambda (_stx84344_)
        (let ((_expression?84346_ '#f))
          (gx#core-expand__% _stx84344_ _expression?84346_))))
    (define gx#core-expand
      (lambda _g84793_
        (let ((_g84792_ (##length _g84793_)))
          (cond ((##fx= _g84792_ 1)
                 (apply (lambda (_stx84344_) (gx#core-expand__0 _stx84344_))
                        _g84793_))
                ((##fx= _g84792_ 2)
                 (apply (lambda (_stx84348_ _expression?84349_)
                          (gx#core-expand__% _stx84348_ _expression?84349_))
                        _g84793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84793_))))))
    (define gx#core-expand-top
      (lambda (_stx84305_)
        (let* ((_stx84307_ (gx#core-expand*__0 _stx84305_))
               (_e8430884315_ _stx84307_)
               (_E8431084319_
                (lambda () (gx#core-expand-expression _stx84307_)))
               (_E8430984333_
                (lambda ()
                  (if (gx#stx-pair? _e8430884315_)
                      (let ((_e8431184323_ (gx#syntax-e _e8430884315_)))
                        (let ((_hd8431284326_ (##car _e8431184323_))
                              (_tl8431384328_ (##cdr _e8431184323_)))
                          (let ((_form84331_ _hd8431284326_))
                            (if (gx#core-bound-identifier?__0 _form84331_)
                                _stx84307_
                                (_E8431084319_)))))
                      (_E8431084319_)))))
          (_E8430984333_))))
    (define gx#core-expand-expression
      (lambda (_stx84252_)
        (letrec ((_sealed-expression?84254_
                  (lambda (_hd84275_)
                    (if (gx#sealed-syntax? _hd84275_)
                        (let* ((_e8427684283_ _hd84275_)
                               (_E8427884287_ (lambda () '#f))
                               (_E8427784301_
                                (lambda ()
                                  (if (gx#stx-pair? _e8427684283_)
                                      (let ((_e8427984291_
                                             (gx#syntax-e _e8427684283_)))
                                        (let ((_hd8428084294_
                                               (##car _e8427984291_))
                                              (_tl8428184296_
                                               (##cdr _e8427984291_)))
                                          (let ((_form84299_ _hd8428084294_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form84299_
                                                 gx#expression-form-binding?)
                                                (_E8427884287_)))))
                                      (_E8427884287_)))))
                          (_E8427784301_))
                        '#f)))
                 (_illegal-expression84255_
                  (lambda (_hd84273_ . _g84794_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx84252_
                     _hd84273_)))
                 (_expand-e84256_
                  (lambda (_form84268_ _hd84269_)
                    (let ((_bind84271_
                           (if (##structure-instance-of?
                                _form84268_
                                'gx#binding::t)
                               _form84268_
                               (gx#resolve-identifier__0 _form84268_))))
                      (if (gx#core-expander-binding? _bind84271_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind84271_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd84269_
                            (gx#stx-source _stx84252_)))
                          (if (##structure-direct-instance-of?
                               _bind84271_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind84271_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd84269_
                                 (gx#stx-source _stx84252_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx84252_
                               _form84268_)))))))
          (let ((_hd84258_ (gx#core-expand-head _stx84252_)))
            (if (_sealed-expression?84254_ _hd84258_)
                _hd84258_
                (if (gx#stx-pair? _hd84258_)
                    (let* ((_form84260_ (gx#stx-car _hd84258_))
                           (_bind84262_
                            (if (gx#identifier? _form84260_)
                                (gx#resolve-identifier__0 _form84260_)
                                '#f)))
                      (if (or (not _bind84262_)
                              (not (gx#core-expander-binding? _bind84262_)))
                          (_expand-e84256_ '%%app (cons '%%app _hd84258_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind84262_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd84258_
                               _illegal-expression84255_)
                              (if (gx#expression-form-binding? _bind84262_)
                                  (_expand-e84256_ _bind84262_ _hd84258_)
                                  (if (gx#direct-special-form-binding?
                                       _bind84262_)
                                      (gx#core-expand-expression
                                       (_expand-e84256_ _bind84262_ _hd84258_))
                                      (_illegal-expression84255_
                                       _hd84258_))))))
                    (if (gx#core-bound-identifier?__0 _hd84258_)
                        (_illegal-expression84255_ _hd84258_)
                        (if (gx#identifier? _hd84258_)
                            (_expand-e84256_
                             '%%ref
                             (cons '%%ref (cons _hd84258_ '())))
                            (if (gx#stx-datum? _hd84258_)
                                (_expand-e84256_
                                 '%#quote
                                 (cons '%#quote (cons _hd84258_ '())))
                                (_illegal-expression84255_ _hd84258_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx84247_)
        (call-with-parameters
         (lambda ()
           (let ((_stx84250_ (gx#core-expand-expression _stx84247_)))
             (values _stx84250_ (gx#eval-syntax* _stx84250_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx84228_ _stop?84229_)
        (let _lp84231_ ((_stx84233_ _stx84228_))
          (if (_stop?84229_ _stx84233_)
              _stx84233_
              (let ((_rstx84235_ (gx#core-expand1 _stx84233_)))
                (if (eq? _stx84233_ _rstx84235_)
                    _stx84233_
                    (_lp84231_ _rstx84235_)))))))
    (define gx#core-expand*__0
      (lambda (_stx84240_)
        (let ((_stop?84242_ false))
          (gx#core-expand*__% _stx84240_ _stop?84242_))))
    (define gx#core-expand*
      (lambda _g84796_
        (let ((_g84795_ (##length _g84796_)))
          (cond ((##fx= _g84795_ 1)
                 (apply (lambda (_stx84240_) (gx#core-expand*__0 _stx84240_))
                        _g84796_))
                ((##fx= _g84795_ 2)
                 (apply (lambda (_stx84244_ _stop?84245_)
                          (gx#core-expand*__% _stx84244_ _stop?84245_))
                        _g84796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84796_))))))
    (define gx#core-expand1
      (lambda (_stx84184_)
        (letrec ((_step84186_
                  (lambda (_hd84223_)
                    (let ((_bind84225_ (gx#resolve-identifier__0 _hd84223_)))
                      (if (##structure-instance-of?
                           _bind84225_
                           'gx#runtime-binding::t)
                          _stx84184_
                          (if (##structure-direct-instance-of?
                               _bind84225_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind84225_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx84184_)
                              (if (not _bind84225_)
                                  _stx84184_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx84184_))))))))
          (let* ((_e8418784195_ _stx84184_)
                 (_E8419384199_ (lambda () _stx84184_))
                 (_E8418984205_
                  (lambda ()
                    (let ((_hd84203_ _e8418784195_))
                      (if (gx#identifier? _hd84203_)
                          (_step84186_ _hd84203_)
                          (_E8419384199_)))))
                 (_E8418884219_
                  (lambda ()
                    (if (gx#stx-pair? _e8418784195_)
                        (let ((_e8419084209_ (gx#syntax-e _e8418784195_)))
                          (let ((_hd8419184212_ (##car _e8419084209_))
                                (_tl8419284214_ (##cdr _e8419084209_)))
                            (let ((_hd84217_ _hd8419184212_))
                              (if (gx#identifier? _hd84217_)
                                  (_step84186_ _hd84217_)
                                  (_E8418984205_)))))
                        (_E8418984205_)))))
            (_E8418884219_)))))
    (define gx#core-expand-head
      (lambda (_stx84150_)
        (letrec ((_stop?84152_
                  (lambda (_stx84154_)
                    (let* ((_e8415584162_ _stx84154_)
                           (_E8415784166_ (lambda () '#f))
                           (_E8415684180_
                            (lambda ()
                              (if (gx#stx-pair? _e8415584162_)
                                  (let ((_e8415884170_
                                         (gx#syntax-e _e8415584162_)))
                                    (let ((_hd8415984173_
                                           (##car _e8415884170_))
                                          (_tl8416084175_
                                           (##cdr _e8415884170_)))
                                      (let ((_hd84178_ _hd8415984173_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd84178_)
                                            (_E8415784166_)))))
                                  (_E8415784166_)))))
                      (_E8415684180_)))))
          (gx#core-expand*__% _stx84150_ _stop?84152_))))
    (define gx#core-expand-block__%
      (lambda (_stx83956_
               _expand-special83957_
               _begin-form83958_
               _expand-e83959_)
        (letrec ((_expand-splice83961_
                  (lambda (_hd84124_ _body84125_ _rest84126_ _r84127_)
                    (if (gx#stx-list? _body84125_)
                        (_K83965_
                         (gx#stx-foldr cons _rest84126_ _body84125_)
                         _r84127_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83956_
                         _hd84124_))))
                 (_expand-cond-expand83962_
                  (lambda (_hd84120_ _rest84121_ _r84122_)
                    (_K83965_
                     (cons (gx#core-expand-cond-expand% _hd84120_) _rest84121_)
                     _r84122_)))
                 (_expand-include83963_
                  (lambda (_hd84069_ _rest84070_ _r84071_)
                    (let* ((_e8407284082_ _hd84069_)
                           (_E8407484086_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8407284082_)))
                           (_E8407384116_
                            (lambda ()
                              (if (gx#stx-pair? _e8407284082_)
                                  (let ((_e8407584090_
                                         (gx#syntax-e _e8407284082_)))
                                    (let ((_hd8407684093_
                                           (##car _e8407584090_))
                                          (_tl8407784095_
                                           (##cdr _e8407584090_)))
                                      (if (gx#stx-pair? _tl8407784095_)
                                          (let ((_e8407884098_
                                                 (gx#syntax-e _tl8407784095_)))
                                            (let ((_hd8407984101_
                                                   (##car _e8407884098_))
                                                  (_tl8408084103_
                                                   (##cdr _e8407884098_)))
                                              (let ((_path84106_
                                                     _hd8407984101_))
                                                (if (gx#stx-null?
                                                     _tl8408084103_)
                                                    (if (gx#stx-string?
                                                         _path84106_)
                                                        (let* ((_rpath84108_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path84106_
                         (gx#stx-source _hd84069_)))
                       (_block84110_
                        (gx#core-expand-include%__% _hd84069_ _rpath84108_))
                       (_rbody84113_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block84110_
                            _expand-special83957_
                            '#f
                            _expand-e83959_))
                         gx#current-expander-path
                         (cons _rpath84108_ (gx#current-expander-path)))))
                  (_K83965_ _rest84070_ (foldr1 cons _r84071_ _rbody84113_)))
                (_E8407484086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8407484086_)))))
                                          (_E8407484086_))))
                                  (_E8407484086_)))))
                      (_E8407384116_))))
                 (_expand-expression83964_
                  (lambda (_hd84065_ _rest84066_ _r84067_)
                    (_K83965_
                     _rest84066_
                     (cons (_expand-e83959_ _hd84065_) _r84067_))))
                 (_K83965_
                  (lambda (_rest83995_ _r83996_)
                    (let* ((_e8399784004_ _rest83995_)
                           (_E8399984008_
                            (lambda ()
                              (if _begin-form83958_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83958_
                                    (reverse _r83996_))
                                   (gx#stx-source _stx83956_))
                                  _r83996_)))
                           (_E8399884061_
                            (lambda ()
                              (if (gx#stx-pair? _e8399784004_)
                                  (let ((_e8400084012_
                                         (gx#syntax-e _e8399784004_)))
                                    (let ((_hd8400184015_
                                           (##car _e8400084012_))
                                          (_tl8400284017_
                                           (##cdr _e8400084012_)))
                                      (let* ((_hd84020_ _hd8400184015_)
                                             (_rest84022_ _tl8400284017_))
                                        (if '#t
                                            (let* ((_hd84024_
                                                    (gx#core-expand-head
                                                     _hd84020_))
                                                   (_e8402584032_ _hd84024_)
                                                   (_E8402784036_
                                                    (lambda ()
                                                      (_expand-expression83964_
                                                       _hd84024_
                                                       _rest84022_
                                                       _r83996_)))
                                                   (_E8402684057_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8402584032_)
                                                          (let ((_e8402884040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8402584032_)))
                    (let ((_hd8402984043_ (##car _e8402884040_))
                          (_tl8403084045_ (##cdr _e8402884040_)))
                      (let* ((_form84048_ _hd8402984043_)
                             (_body84050_ _tl8403084045_))
                        (if '#t
                            (let ((_bind84052_
                                   (if (gx#identifier? _form84048_)
                                       (gx#resolve-identifier__0 _form84048_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind84052_)
                                  (let ((_$e84054_
                                         (##unchecked-structure-ref
                                          _bind84052_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e84054_)
                                        (_expand-splice83961_
                                         _hd84024_
                                         _body84050_
                                         _rest84022_
                                         _r83996_)
                                        (if (eq? '%#cond-expand _$e84054_)
                                            (_expand-cond-expand83962_
                                             _hd84024_
                                             _rest84022_
                                             _r83996_)
                                            (if (eq? '%#include _$e84054_)
                                                (_expand-include83963_
                                                 _hd84024_
                                                 _rest84022_
                                                 _r83996_)
                                                (_expand-special83957_
                                                 _hd84024_
                                                 _K83965_
                                                 _rest84022_
                                                 _r83996_)))))
                                  (_expand-expression83964_
                                   _hd84024_
                                   _rest84022_
                                   _r83996_)))
                            (_E8402784036_)))))
                  (_E8402784036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8402684057_))
                                            (_E8399984008_)))))
                                  (_E8399984008_)))))
                      (_E8399884061_)))))
          (let* ((_e8396683973_ _stx83956_)
                 (_E8396883977_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8396683973_)))
                 (_E8396783991_
                  (lambda ()
                    (if (gx#stx-pair? _e8396683973_)
                        (let ((_e8396983981_ (gx#syntax-e _e8396683973_)))
                          (let ((_hd8397083984_ (##car _e8396983981_))
                                (_tl8397183986_ (##cdr _e8396983981_)))
                            (let ((_body83989_ _tl8397183986_))
                              (if (gx#stx-list? _body83989_)
                                  (_K83965_ _body83989_ '())
                                  (_E8396883977_)))))
                        (_E8396883977_)))))
            (_E8396783991_)))))
    (define gx#core-expand-block__0
      (lambda (_stx84132_ _expand-special84133_)
        (let* ((_begin-form84135_ '%#begin)
               (_expand-e84137_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84132_
           _expand-special84133_
           _begin-form84135_
           _expand-e84137_))))
    (define gx#core-expand-block__1
      (lambda (_stx84139_ _expand-special84140_ _begin-form84141_)
        (let ((_expand-e84143_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84139_
           _expand-special84140_
           _begin-form84141_
           _expand-e84143_))))
    (define gx#core-expand-block
      (lambda _g84798_
        (let ((_g84797_ (##length _g84798_)))
          (cond ((##fx= _g84797_ 2)
                 (apply (lambda (_stx84132_ _expand-special84133_)
                          (gx#core-expand-block__0
                           _stx84132_
                           _expand-special84133_))
                        _g84798_))
                ((##fx= _g84797_ 3)
                 (apply (lambda (_stx84139_
                                 _expand-special84140_
                                 _begin-form84141_)
                          (gx#core-expand-block__1
                           _stx84139_
                           _expand-special84140_
                           _begin-form84141_))
                        _g84798_))
                ((##fx= _g84797_ 4)
                 (apply (lambda (_stx84145_
                                 _expand-special84146_
                                 _begin-form84147_
                                 _expand-e84148_)
                          (gx#core-expand-block__%
                           _stx84145_
                           _expand-special84146_
                           _begin-form84147_
                           _expand-e84148_))
                        _g84798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84798_))))))
    (define gx#core-expand-block*
      (lambda (_stx83904_ _expand-special83905_)
        (let* ((_g8390683917_
                (gx#core-expand-block__1 _stx83904_ _expand-special83905_ '#f))
               (_E8391083921_
                (lambda () (error '"No clause matching" _g8390683917_))))
          (let ((_K8391583952_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83904_)))
                (_K8391283938_ (lambda (_expr83936_) _expr83936_))
                (_K8391183927_
                 (lambda (_body83925_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83925_))
                    (gx#stx-source _stx83904_)))))
            (let ((_try-match8390883948_
                   (lambda ()
                     (if (##pair? _g8390683917_)
                         (let ((_tl8391483943_ (##cdr _g8390683917_))
                               (_hd8391383941_ (##car _g8390683917_)))
                           (if (##null? _tl8391483943_)
                               (let ((_expr83946_ _hd8391383941_))
                                 (_K8391283938_ _expr83946_))
                               (let ((_body83930_ _g8390683917_))
                                 (_K8391183927_ _body83930_))))
                         (let ((_body83930_ _g8390683917_))
                           (_K8391183927_ _body83930_))))))
              (if (##null? _g8390683917_)
                  (_K8391583952_)
                  (_try-match8390883948_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83732_)
        (letrec ((_satisfied?83734_
                  (lambda (_condition83832_)
                    (let* ((_e8383383848_ _condition83832_)
                           (_E8384383852_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8383383848_)))
                           (_E8383683871_
                            (lambda ()
                              (if (gx#stx-pair? _e8383383848_)
                                  (let ((_e8384483856_
                                         (gx#syntax-e _e8383383848_)))
                                    (let ((_hd8384583859_
                                           (##car _e8384483856_))
                                          (_tl8384683861_
                                           (##cdr _e8384483856_)))
                                      (let* ((_combinator83864_ _hd8384583859_)
                                             (_body83866_ _tl8384683861_))
                                        (if (gx#stx-list? _body83866_)
                                            (let ((_$e83868_
                                                   (gx#stx-e
                                                    _combinator83864_)))
                                              (if (eq? 'not _$e83868_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83734_
                                                        _body83866_))
                                                  (if (eq? 'and _$e83868_)
                                                      (gx#stx-andmap
                                                       _satisfied?83734_
                                                       _body83866_)
                                                      (if (eq? 'or _$e83868_)
                                                          (gx#stx-ormap
                                                           _satisfied?83734_
                                                           _body83866_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83868_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83866_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83732_
                       _combinator83864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8384383852_)))))
                                  (_E8384383852_))))
                           (_E8383583894_
                            (lambda ()
                              (if (gx#stx-pair? _e8383383848_)
                                  (let ((_e8383783875_
                                         (gx#syntax-e _e8383383848_)))
                                    (let ((_hd8383883878_
                                           (##car _e8383783875_))
                                          (_tl8383983880_
                                           (##cdr _e8383783875_)))
                                      (if (and (gx#identifier? _hd8383883878_)
                                               (gx#core-identifier=?
                                                _hd8383883878_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8383983880_)
                                              (let ((_e8384083883_
                                                     (gx#syntax-e
                                                      _tl8383983880_)))
                                                (let ((_hd8384183886_
                                                       (##car _e8384083883_))
                                                      (_tl8384283888_
                                                       (##cdr _e8384083883_)))
                                                  (let ((_expr83891_
                                                         _hd8384183886_))
                                                    (if (gx#stx-null?
                                                         _tl8384283888_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83891_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8383683871_))
                (_E8383683871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8383683871_))
                                          (_E8383683871_))))
                                  (_E8383683871_))))
                           (_E8383483900_
                            (lambda ()
                              (let ((_id83898_ _e8383383848_))
                                (if (gx#identifier? _id83898_)
                                    (gx#core-bound-identifier?__%
                                     _id83898_
                                     gx#feature-binding?)
                                    (_E8383583894_))))))
                      (_E8383483900_))))
                 (_loop83735_
                  (lambda (_rest83765_)
                    (let* ((_e8376683774_ _rest83765_)
                           (_E8377283778_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8376683774_)))
                           (_E8376883782_
                            (lambda ()
                              (if (gx#stx-null? _e8376683774_)
                                  (if '#t '() (_E8377283778_))
                                  (_E8377283778_))))
                           (_E8376783828_
                            (lambda ()
                              (if (gx#stx-pair? _e8376683774_)
                                  (let ((_e8376983786_
                                         (gx#syntax-e _e8376683774_)))
                                    (let ((_hd8377083789_
                                           (##car _e8376983786_))
                                          (_tl8377183791_
                                           (##cdr _e8376983786_)))
                                      (let* ((_hd83794_ _hd8377083789_)
                                             (_rest83796_ _tl8377183791_))
                                        (if '#t
                                            (let* ((_e8379783804_ _hd83794_)
                                                   (_E8379983808_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8379783804_)))
                                                   (_E8379883824_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8379783804_)
                                                          (let ((_e8380083812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8379783804_)))
                    (let ((_hd8380183815_ (##car _e8380083812_))
                          (_tl8380283817_ (##cdr _e8380083812_)))
                      (let* ((_condition83820_ _hd8380183815_)
                             (_body83822_ _tl8380283817_))
                        (if '#t
                            (if (gx#stx-eq? _condition83820_ 'else)
                                (if (gx#stx-null? _rest83796_)
                                    _body83822_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83732_
                                     _hd83794_))
                                (if (_satisfied?83734_ _condition83820_)
                                    _body83822_
                                    (_loop83735_ _rest83796_)))
                            (_E8379983808_)))))
                  (_E8379983808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8379883824_))
                                            (_E8376883782_)))))
                                  (_E8376883782_)))))
                      (_E8376783828_)))))
          (let* ((_e8373683743_ _stx83732_)
                 (_E8373883747_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8373683743_)))
                 (_E8373783761_
                  (lambda ()
                    (if (gx#stx-pair? _e8373683743_)
                        (let ((_e8373983751_ (gx#syntax-e _e8373683743_)))
                          (let ((_hd8374083754_ (##car _e8373983751_))
                                (_tl8374183756_ (##cdr _e8373983751_)))
                            (let ((_clauses83759_ _tl8374183756_))
                              (if (gx#stx-list? _clauses83759_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83735_ _clauses83759_))
                                  (_E8373883747_)))))
                        (_E8373883747_)))))
            (_E8373783761_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83675_ _rpath83676_)
        (let* ((_e8367783687_ _stx83675_)
               (_E8367983691_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8367783687_)))
               (_E8367883718_
                (lambda ()
                  (if (gx#stx-pair? _e8367783687_)
                      (let ((_e8368083695_ (gx#syntax-e _e8367783687_)))
                        (let ((_hd8368183698_ (##car _e8368083695_))
                              (_tl8368283700_ (##cdr _e8368083695_)))
                          (if (gx#stx-pair? _tl8368283700_)
                              (let ((_e8368383703_
                                     (gx#syntax-e _tl8368283700_)))
                                (let ((_hd8368483706_ (##car _e8368383703_))
                                      (_tl8368583708_ (##cdr _e8368383703_)))
                                  (let ((_path83711_ _hd8368483706_))
                                    (if (gx#stx-null? _tl8368583708_)
                                        (if (gx#stx-string? _path83711_)
                                            (let ((_rpath83716_
                                                   (let ((_$e83713_
                                                          _rpath83676_))
                                                     (if _$e83713_
                                                         _$e83713_
                                                         (gx#core-resolve-path__%
                                                          _path83711_
                                                          (gx#stx-source
                                                           _stx83675_))))))
                                              (if (member _rpath83716_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83675_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83716_))
                                                    (gx#stx-source
                                                     _stx83675_)))))
                                            (_E8367983691_))
                                        (_E8367983691_)))))
                              (_E8367983691_))))
                      (_E8367983691_)))))
          (_E8367883718_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83725_)
        (let ((_rpath83727_ '#f))
          (gx#core-expand-include%__% _stx83725_ _rpath83727_))))
    (define gx#core-expand-include%
      (lambda _g84800_
        (let ((_g84799_ (##length _g84800_)))
          (cond ((##fx= _g84799_ 1)
                 (apply (lambda (_stx83725_)
                          (gx#core-expand-include%__0 _stx83725_))
                        _g84800_))
                ((##fx= _g84799_ 2)
                 (apply (lambda (_stx83729_ _rpath83730_)
                          (gx#core-expand-include%__% _stx83729_ _rpath83730_))
                        _g84800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84800_))))))
    (define gx#core-apply-expander__%
      (lambda (_K83644_ _stx83645_ _method83646_)
        (if (procedure? _K83644_)
            (let ((_$e83648_ (gx#stx-source _stx83645_)))
              (if _$e83648_
                  ((lambda (_g8365083652_)
                     (gx#stx-wrap-source (_K83644_ _stx83645_) _g8365083652_))
                   _$e83648_)
                  (_K83644_ _stx83645_)))
            (let ((_$e83655_ (bound-method-ref _K83644_ _method83646_)))
              (if _$e83655_
                  ((lambda (_g8365783659_)
                     (gx#core-apply-expander__%
                      _g8365783659_
                      _stx83645_
                      _method83646_))
                   _$e83655_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx83645_
                   _method83646_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83665_ _stx83666_)
        (let ((_method83668_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83665_ _stx83666_ _method83668_))))
    (define gx#core-apply-expander
      (lambda _g84802_
        (let ((_g84801_ (##length _g84802_)))
          (cond ((##fx= _g84801_ 2)
                 (apply (lambda (_K83665_ _stx83666_)
                          (gx#core-apply-expander__0 _K83665_ _stx83666_))
                        _g84802_))
                ((##fx= _g84801_ 3)
                 (apply (lambda (_K83670_ _stx83671_ _method83672_)
                          (gx#core-apply-expander__%
                           _K83670_
                           _stx83671_
                           _method83672_))
                        _g84802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84802_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self83640_ _stx83641_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx83641_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self83493_ _stx83494_)
        (let* ((_self8349583501_ _self83493_)
               (_E8349783505_
                (lambda () (error '"No clause matching" _self8349583501_)))
               (_K8349883510_
                (lambda (_K83508_)
                  (gx#core-apply-expander__0 _K83508_ _stx83494_))))
          (if (##structure-instance-of? _self8349583501_ 'gx#core-macro::t)
              (let* ((_e8349983513_
                      (##unchecked-structure-ref
                       _self8349583501_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83516_ _e8349983513_))
                (_K8349883510_ _K83516_))
              (_E8349783505_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self83346_ _stx83347_)
        (if (gx#sealed-syntax? _stx83347_)
            _stx83347_
            (let* ((_self8334883354_ _self83346_)
                   (_E8335083358_
                    (lambda () (error '"No clause matching" _self8334883354_)))
                   (_K8335183363_
                    (lambda (_K83361_)
                      (gx#core-apply-expander__0 _K83361_ _stx83347_))))
              (if (##structure-instance-of?
                   _self8334883354_
                   'gx#core-expander::t)
                  (let* ((_e8335283366_
                          (##unchecked-structure-ref
                           _self8334883354_
                           '1
                           gx#expander::t
                           '#f))
                         (_K83369_ _e8335283366_))
                    (_K8335183363_ _K83369_))
                  (_E8335083358_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self83208_ _stx83209_ _top?83210_)
        (if (_top?83210_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self83208_ _stx83209_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx83209_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self83215_ _stx83216_)
        (let ((_top?83218_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self83215_
           _stx83216_
           _top?83218_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84804_
        (let ((_g84803_ (##length _g84804_)))
          (cond ((##fx= _g84803_ 2)
                 (apply (lambda (_self83215_ _stx83216_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self83215_
                           _stx83216_))
                        _g84804_))
                ((##fx= _g84803_ 3)
                 (apply (lambda (_self83220_ _stx83221_ _top?83222_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self83220_
                           _stx83221_
                           _top?83222_))
                        _g84804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84804_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self83082_ _stx83083_)
        (gx#top-special-form::apply-macro-expander__%
         _self83082_
         _stx83083_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82907_ _stx82908_)
        (let* ((_self8290982915_ _self82907_)
               (_E8291182919_
                (lambda () (error '"No clause matching" _self8290982915_)))
               (_K8291282952_
                (lambda (_id82922_)
                  (let* ((_e8292382930_ _stx82908_)
                         (_E8292582934_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8292382930_)))
                         (_E8292482948_
                          (lambda ()
                            (if (gx#stx-pair? _e8292382930_)
                                (let ((_e8292682938_
                                       (gx#syntax-e _e8292382930_)))
                                  (let ((_hd8292782941_ (##car _e8292682938_))
                                        (_tl8292882943_ (##cdr _e8292682938_)))
                                    (let ((_body82946_ _tl8292882943_))
                                      (if '#t
                                          (gx#core-cons _id82922_ _body82946_)
                                          (_E8292582934_)))))
                                (_E8292582934_)))))
                    (_E8292482948_)))))
          (if (##structure-instance-of?
               _self8290982915_
               'gx#rename-macro-expander::t)
              (let* ((_e8291382955_
                      (##unchecked-structure-ref
                       _self8290982915_
                       '1
                       gx#expander::t
                       '#f))
                     (_id82958_ _e8291382955_))
                (_K8291282952_ _id82958_))
              (_E8291182919_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82733_ _stx82734_ _method82735_)
        (let* ((_self8273682744_ _self82733_)
               (_E8273882748_
                (lambda () (error '"No clause matching" _self8273682744_)))
               (_K8273982755_
                (lambda (_phi82751_ _ctx82752_ _K82753_)
                  (gx#core-apply-user-macro
                   _K82753_
                   _stx82734_
                   _ctx82752_
                   _phi82751_
                   _method82735_))))
          (if (##structure-instance-of? _self8273682744_ 'gx#macro-expander::t)
              (let* ((_e8274082758_
                      (##unchecked-structure-ref
                       _self8273682744_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82761_ _e8274082758_)
                     (_e8274182763_
                      (##unchecked-structure-ref
                       _self8273682744_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx82766_ _e8274182763_)
                     (_e8274282768_
                      (##unchecked-structure-ref
                       _self8273682744_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi82771_ _e8274282768_))
                (_K8273982755_ _phi82771_ _ctx82766_ _K82761_))
              (_E8273882748_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82776_ _stx82777_)
        (let ((_method82779_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82776_
           _stx82777_
           _method82779_))))
    (define gx#core-apply-user-expander
      (lambda _g84806_
        (let ((_g84805_ (##length _g84806_)))
          (cond ((##fx= _g84805_ 2)
                 (apply (lambda (_self82776_ _stx82777_)
                          (gx#core-apply-user-expander__0
                           _self82776_
                           _stx82777_))
                        _g84806_))
                ((##fx= _g84805_ 3)
                 (apply (lambda (_self82781_ _stx82782_ _method82783_)
                          (gx#core-apply-user-expander__%
                           _self82781_
                           _stx82782_
                           _method82783_))
                        _g84806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84806_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82723_ _stx82724_ _ctx82725_ _phi82726_ _method82727_)
        (let ((_mark82729_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82725_
                _phi82726_
                _stx82724_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82723_
               (gx#stx-apply-mark _stx82724_ _mark82729_)
               _method82727_)
              _mark82729_))
           gx#current-expander-marks
           (cons _mark82729_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx82575_ _phi82576_ _ctx82577_)
        (let _lp82579_ ((_bind82581_
                         (gx#core-resolve-identifier__%
                          _stx82575_
                          _phi82576_
                          _ctx82577_)))
          (if (##structure-direct-instance-of?
               _bind82581_
               'gx#import-binding::t)
              (_lp82579_
               (##unchecked-structure-ref
                _bind82581_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind82581_
                   'gx#alias-binding::t)
                  (_lp82579_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind82581_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi82576_
                    _ctx82577_))
                  _bind82581_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx82586_)
        (let* ((_phi82588_ (gx#current-expander-phi))
               (_ctx82590_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82586_ _phi82588_ _ctx82590_))))
    (define gx#resolve-identifier__1
      (lambda (_stx82592_ _phi82593_)
        (let ((_ctx82595_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82592_ _phi82593_ _ctx82595_))))
    (define gx#resolve-identifier
      (lambda _g84808_
        (let ((_g84807_ (##length _g84808_)))
          (cond ((##fx= _g84807_ 1)
                 (apply (lambda (_stx82586_)
                          (gx#resolve-identifier__0 _stx82586_))
                        _g84808_))
                ((##fx= _g84807_ 2)
                 (apply (lambda (_stx82592_ _phi82593_)
                          (gx#resolve-identifier__1 _stx82592_ _phi82593_))
                        _g84808_))
                ((##fx= _g84807_ 3)
                 (apply (lambda (_stx82597_ _phi82598_ _ctx82599_)
                          (gx#resolve-identifier__%
                           _stx82597_
                           _phi82598_
                           _ctx82599_))
                        _g84808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84808_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx82533_ _val82534_ _rebind?82535_ _phi82536_ _ctx82537_)
        (let ((_rebind?82539_
               (if (not _rebind?82535_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?82535_) _rebind?82535_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx82533_)
           _val82534_
           _rebind?82539_
           _phi82536_
           _ctx82537_))))
    (define gx#bind-identifier!__0
      (lambda (_stx82544_ _val82545_)
        (let* ((_rebind?82547_ '#f)
               (_phi82549_ (gx#current-expander-phi))
               (_ctx82551_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82544_
           _val82545_
           _rebind?82547_
           _phi82549_
           _ctx82551_))))
    (define gx#bind-identifier!__1
      (lambda (_stx82553_ _val82554_ _rebind?82555_)
        (let* ((_phi82557_ (gx#current-expander-phi))
               (_ctx82559_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82553_
           _val82554_
           _rebind?82555_
           _phi82557_
           _ctx82559_))))
    (define gx#bind-identifier!__2
      (lambda (_stx82561_ _val82562_ _rebind?82563_ _phi82564_)
        (let ((_ctx82566_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82561_
           _val82562_
           _rebind?82563_
           _phi82564_
           _ctx82566_))))
    (define gx#bind-identifier!
      (lambda _g84810_
        (let ((_g84809_ (##length _g84810_)))
          (cond ((##fx= _g84809_ 2)
                 (apply (lambda (_stx82544_ _val82545_)
                          (gx#bind-identifier!__0 _stx82544_ _val82545_))
                        _g84810_))
                ((##fx= _g84809_ 3)
                 (apply (lambda (_stx82553_ _val82554_ _rebind?82555_)
                          (gx#bind-identifier!__1
                           _stx82553_
                           _val82554_
                           _rebind?82555_))
                        _g84810_))
                ((##fx= _g84809_ 4)
                 (apply (lambda (_stx82561_
                                 _val82562_
                                 _rebind?82563_
                                 _phi82564_)
                          (gx#bind-identifier!__2
                           _stx82561_
                           _val82562_
                           _rebind?82563_
                           _phi82564_))
                        _g84810_))
                ((##fx= _g84809_ 5)
                 (apply (lambda (_stx82568_
                                 _val82569_
                                 _rebind?82570_
                                 _phi82571_
                                 _ctx82572_)
                          (gx#bind-identifier!__%
                           _stx82568_
                           _val82569_
                           _rebind?82570_
                           _phi82571_
                           _ctx82572_))
                        _g84810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84810_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx82505_ _phi82506_ _ctx82507_)
        (let _lp82509_ ((_e82511_ _stx82505_)
                        (_marks82512_ (gx#current-expander-marks)))
          (if (symbol? _e82511_)
              (gx#core-resolve-binding
               _e82511_
               _phi82506_
               _phi82506_
               _ctx82507_
               (reverse _marks82512_))
              (if (gx#identifier-quote? _e82511_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e82511_ '1 gx#AST::t '#f)
                   _phi82506_
                   '0
                   (##unchecked-structure-ref
                    _e82511_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e82511_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e82511_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e82511_ '1 gx#AST::t '#f)
                       _phi82506_
                       _phi82506_
                       _ctx82507_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82511_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82512_))
                      (if (##structure-direct-instance-of?
                           _e82511_
                           'gx#syntax-wrap::t)
                          (_lp82509_
                           (##unchecked-structure-ref
                            _e82511_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e82511_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks82512_))
                          (if (##structure-instance-of?
                               _e82511_
                               'gerbil#AST::t)
                              (_lp82509_
                               (##unchecked-structure-ref
                                _e82511_
                                '1
                                gx#AST::t
                                '#f)
                               _marks82512_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx82505_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx82517_)
        (let* ((_phi82519_ (gx#current-expander-phi))
               (_ctx82521_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82517_ _phi82519_ _ctx82521_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx82523_ _phi82524_)
        (let ((_ctx82526_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82523_ _phi82524_ _ctx82526_))))
    (define gx#core-resolve-identifier
      (lambda _g84812_
        (let ((_g84811_ (##length _g84812_)))
          (cond ((##fx= _g84811_ 1)
                 (apply (lambda (_stx82517_)
                          (gx#core-resolve-identifier__0 _stx82517_))
                        _g84812_))
                ((##fx= _g84811_ 2)
                 (apply (lambda (_stx82523_ _phi82524_)
                          (gx#core-resolve-identifier__1
                           _stx82523_
                           _phi82524_))
                        _g84812_))
                ((##fx= _g84811_ 3)
                 (apply (lambda (_stx82528_ _phi82529_ _ctx82530_)
                          (gx#core-resolve-identifier__%
                           _stx82528_
                           _phi82529_
                           _ctx82530_))
                        _g84812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84812_))))))
    (define gx#core-resolve-binding
      (lambda (_id82418_ _phi82419_ _src-phi82420_ _ctx82421_ _marks82422_)
        (letrec ((_resolve82424_
                  (lambda (_ctx82492_ _src-phi82493_ _key82494_)
                    (let _lp82496_ ((_ctx82498_
                                     (gx#core-context-shift
                                      _ctx82492_
                                      _phi82419_))
                                    (_dphi82499_
                                     (fx- _phi82419_ _src-phi82493_)))
                      (let ((_$e82501_
                             (gx#core-context-resolve _ctx82498_ _key82494_)))
                        (if _$e82501_
                            (values _$e82501_)
                            (if (fxzero? _dphi82499_)
                                '#f
                                (if (fxpositive? _dphi82499_)
                                    (_lp82496_
                                     (gx#core-context-shift _ctx82498_ '-1)
                                     (fx- _dphi82499_ '1))
                                    (_lp82496_
                                     (gx#core-context-shift _ctx82498_ '1)
                                     (fx+ _dphi82499_ '1))))))))))
          (let _lp82426_ ((_ctx82428_ _ctx82421_)
                          (_src-phi82429_ _src-phi82420_)
                          (_rest82430_ _marks82422_))
            (let* ((_rest8243182439_ _rest82430_)
                   (_else8243382447_
                    (lambda ()
                      (_resolve82424_ _ctx82428_ _src-phi82429_ _id82418_)))
                   (_K8243582480_
                    (lambda (_rest82450_ _hd82451_)
                      (let* ((_hd8245282458_ _hd82451_)
                             (_E8245482462_
                              (lambda ()
                                (error '"No clause matching" _hd8245282458_)))
                             (_K8245582472_
                              (lambda (_subst82465_)
                                (let ((_$e82469_
                                       (let ((_key82467_
                                              (if _subst82465_
                                                  (hash-get
                                                   _subst82465_
                                                   _id82418_)
                                                  '#f)))
                                         (if _key82467_
                                             (_resolve82424_
                                              _ctx82428_
                                              _src-phi82429_
                                              _key82467_)
                                             '#f))))
                                  (if _$e82469_
                                      _$e82469_
                                      (_lp82426_
                                       (##unchecked-structure-ref
                                        _hd82451_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd82451_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest82450_))))))
                        (if (##structure-instance-of?
                             _hd8245282458_
                             'gx#expander-mark::t)
                            (let* ((_e8245682475_
                                    (##unchecked-structure-ref
                                     _hd8245282458_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst82478_ _e8245682475_))
                              (_K8245582472_ _subst82478_))
                            (_E8245482462_))))))
              (if (##pair? _rest8243182439_)
                  (let ((_hd8243682483_ (##car _rest8243182439_))
                        (_tl8243782485_ (##cdr _rest8243182439_)))
                    (let* ((_hd82488_ _hd8243682483_)
                           (_rest82490_ _tl8243782485_))
                      (_K8243582480_ _rest82490_ _hd82488_)))
                  (_else8243382447_)))))))
    (define gx#core-bind!__%
      (lambda (_key82294_ _val82295_ _rebind?82296_ _phi82297_ _ctx82298_)
        (letrec ((_update-binding82300_
                  (lambda (_xval82371_)
                    (if (or (_rebind?82296_ _ctx82298_ _xval82371_ _val82295_)
                            (and (##structure-direct-instance-of?
                                  _xval82371_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval82371_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val82295_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val82295_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval82371_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val82295_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val82295_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval82371_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val82295_
                        (if (and (##structure-direct-instance-of?
                                  _val82295_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val82295_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval82371_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val82295_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval82371_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval82371_
                            (if (and (##structure-direct-instance-of?
                                      _val82295_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval82371_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key82294_
                                 (cons (##unchecked-structure-ref
                                        _val82295_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val82295_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval82371_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval82371_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval82371_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval82371_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key82294_
                                 _val82295_
                                 _xval82371_))))))
                 (_gensubst82301_
                  (lambda (_subst82366_ _id82367_)
                    (let ((_eid82369_
                           (gensym (if (uninterned-symbol? _id82367_)
                                       '%
                                       _id82367_))))
                      (hash-put! _subst82366_ _id82367_ _eid82369_)
                      _eid82369_)))
                 (_subst!82302_
                  (lambda (_key82304_)
                    (let* ((_key8230582313_ _key82304_)
                           (_else8230782321_ (lambda () _key82304_))
                           (_K8230982354_
                            (lambda (_mark82324_ _id82325_)
                              (let* ((_mark8232682332_ _mark82324_)
                                     (_E8232882336_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8232682332_)))
                                     (_K8232982346_
                                      (lambda (_subst82339_)
                                        (if (not _subst82339_)
                                            (let ((_subst82341_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark82324_
                                               _subst82341_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst82301_
                                               _subst82341_
                                               _id82325_))
                                            (let ((_$e82343_
                                                   (hash-get
                                                    _subst82339_
                                                    _id82325_)))
                                              (if _$e82343_
                                                  (values _$e82343_)
                                                  (_gensubst82301_
                                                   _subst82339_
                                                   _id82325_)))))))
                                (if (##structure-instance-of?
                                     _mark8232682332_
                                     'gx#expander-mark::t)
                                    (let* ((_e8233082349_
                                            (##unchecked-structure-ref
                                             _mark8232682332_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst82352_ _e8233082349_))
                                      (_K8232982346_ _subst82352_))
                                    (_E8232882336_))))))
                      (if (##pair? _key8230582313_)
                          (let ((_hd8231082357_ (##car _key8230582313_))
                                (_tl8231182359_ (##cdr _key8230582313_)))
                            (let* ((_id82362_ _hd8231082357_)
                                   (_mark82364_ _tl8231182359_))
                              (_K8230982354_ _mark82364_ _id82362_)))
                          (_else8230782321_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx82298_ _phi82297_)
           (_subst!82302_ _key82294_)
           _val82295_
           _update-binding82300_))))
    (define gx#core-bind!__0
      (lambda (_key82388_ _val82389_)
        (let* ((_rebind?82391_ false)
               (_phi82393_ (gx#current-expander-phi))
               (_ctx82395_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82388_
           _val82389_
           _rebind?82391_
           _phi82393_
           _ctx82395_))))
    (define gx#core-bind!__1
      (lambda (_key82397_ _val82398_ _rebind?82399_)
        (let* ((_phi82401_ (gx#current-expander-phi))
               (_ctx82403_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82397_
           _val82398_
           _rebind?82399_
           _phi82401_
           _ctx82403_))))
    (define gx#core-bind!__2
      (lambda (_key82405_ _val82406_ _rebind?82407_ _phi82408_)
        (let ((_ctx82410_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82405_
           _val82406_
           _rebind?82407_
           _phi82408_
           _ctx82410_))))
    (define gx#core-bind!
      (lambda _g84814_
        (let ((_g84813_ (##length _g84814_)))
          (cond ((##fx= _g84813_ 2)
                 (apply (lambda (_key82388_ _val82389_)
                          (gx#core-bind!__0 _key82388_ _val82389_))
                        _g84814_))
                ((##fx= _g84813_ 3)
                 (apply (lambda (_key82397_ _val82398_ _rebind?82399_)
                          (gx#core-bind!__1
                           _key82397_
                           _val82398_
                           _rebind?82399_))
                        _g84814_))
                ((##fx= _g84813_ 4)
                 (apply (lambda (_key82405_
                                 _val82406_
                                 _rebind?82407_
                                 _phi82408_)
                          (gx#core-bind!__2
                           _key82405_
                           _val82406_
                           _rebind?82407_
                           _phi82408_))
                        _g84814_))
                ((##fx= _g84813_ 5)
                 (apply (lambda (_key82412_
                                 _val82413_
                                 _rebind?82414_
                                 _phi82415_
                                 _ctx82416_)
                          (gx#core-bind!__%
                           _key82412_
                           _val82413_
                           _rebind?82414_
                           _phi82415_
                           _ctx82416_))
                        _g84814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84814_))))))
    (define gx#core-identifier-key
      (lambda (_stx82228_)
        (if (symbol? _stx82228_)
            (let* ((_g8222982237_ (gx#current-expander-marks))
                   (_else8223182245_ (lambda () _stx82228_))
                   (_K8223382250_
                    (lambda (_hd82248_) (cons _stx82228_ _hd82248_))))
              (if (##pair? _g8222982237_)
                  (let* ((_hd8223482253_ (##car _g8222982237_))
                         (_hd82256_ _hd8223482253_))
                    (_K8223382250_ _hd82256_))
                  (_else8223182245_)))
            (if (gx#identifier? _stx82228_)
                (let* ((_id82258_ (gx#syntax-local-unwrap _stx82228_))
                       (_eid82260_ (gx#stx-e _id82258_))
                       (_marks82262_ (gx#stx-identifier-marks* _id82258_)))
                  (let* ((_marks8226482272_ _marks82262_)
                         (_else8226682280_ (lambda () _eid82260_))
                         (_K8226882285_
                          (lambda (_hd82283_) (cons _eid82260_ _hd82283_))))
                    (if (##pair? _marks8226482272_)
                        (let* ((_hd8226982288_ (##car _marks8226482272_))
                               (_hd82291_ _hd8226982288_))
                          (_K8226882285_ _hd82291_))
                        (_else8226682280_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx82228_)))))
    (define gx#core-context-shift
      (lambda (_ctx82173_ _phi82174_)
        (letrec ((_make-phi82176_
                  (lambda (_super82226_)
                    (let ((__obj84785
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84785
                       (gensym 'phi)
                       _super82226_)
                      __obj84785)))
                 (_make-phi/up82177_
                  (lambda (_ctx82221_ _super82222_)
                    (let ((_ctx+182224_ (_make-phi82176_ _super82222_)))
                      (##unchecked-structure-set!
                       _ctx82221_
                       _ctx+182224_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+182224_
                       _ctx82221_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+182224_)))
                 (_make-phi/down82178_
                  (lambda (_ctx82216_ _super82217_)
                    (let ((_ctx-182219_ (_make-phi82176_ _super82217_)))
                      (##unchecked-structure-set!
                       _ctx-182219_
                       _ctx82216_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx82216_
                       _ctx-182219_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-182219_)))
                 (_shift82179_
                  (lambda (_ctx82200_
                           _delta82201_
                           _make-delta-context82202_
                           _phi82203_
                           _K82204_)
                    (let ((_$e82206_
                           (##unchecked-structure-ref
                            _ctx82200_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e82206_
                          ((lambda (_super82209_)
                             (let* ((_super82211_
                                     (_K82204_ _super82209_ _delta82201_))
                                    (_ctx+d82213_
                                     (_make-delta-context82202_
                                      _ctx82200_
                                      _super82211_)))
                               (_K82204_
                                _ctx+d82213_
                                (fx- _phi82203_ _delta82201_))))
                           _$e82206_)
                          (error '"Bad context" _ctx82200_))))))
          (let _K82181_ ((_ctx82183_ _ctx82173_) (_phi82184_ _phi82174_))
            (if (fxzero? _phi82184_)
                _ctx82183_
                (if (fx> (##vector-length _ctx82183_) '3)
                    (if (fxpositive? _phi82184_)
                        (let ((_$e82186_
                               (##unchecked-structure-ref
                                _ctx82183_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e82186_
                              ((lambda (_g8218882190_)
                                 (_K82181_ _g8218882190_ (fx- _phi82184_ '1)))
                               _$e82186_)
                              (_shift82179_
                               _ctx82183_
                               '1
                               _make-phi/up82177_
                               _phi82184_
                               _K82181_)))
                        (let ((_$e82193_
                               (##unchecked-structure-ref
                                _ctx82183_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e82193_
                              ((lambda (_g8219582197_)
                                 (_K82181_ _g8219582197_ (fx+ _phi82184_ '1)))
                               _$e82193_)
                              (_shift82179_
                               _ctx82183_
                               '-1
                               _make-phi/down82178_
                               _phi82184_
                               _K82181_))))
                    _ctx82183_))))))
    (define gx#core-context-get
      (lambda (_ctx82170_ _key82171_)
        (hash-get
         (##unchecked-structure-ref _ctx82170_ '2 gx#expander-context::t '#f)
         _key82171_)))
    (define gx#core-context-put!
      (lambda (_ctx82166_ _key82167_ _val82168_)
        (hash-put!
         (##unchecked-structure-ref _ctx82166_ '2 gx#expander-context::t '#f)
         _key82167_
         _val82168_)))
    (define gx#core-context-resolve
      (lambda (_ctx82153_ _key82154_)
        (let _lp82156_ ((_ctx82158_ _ctx82153_))
          (let ((_$e82160_ (gx#core-context-get _ctx82158_ _key82154_)))
            (if _$e82160_
                (values _$e82160_)
                (let ((_$e82163_
                       (if (fx> (##vector-length _ctx82158_) '3)
                           (##unchecked-structure-ref
                            _ctx82158_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e82163_ (_lp82156_ _$e82163_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx82143_ _key82144_ _val82145_ _rebind82146_)
        (let ((_$e82148_ (gx#core-context-get _ctx82143_ _key82144_)))
          (if _$e82148_
              ((lambda (_xval82151_)
                 (gx#core-context-put!
                  _ctx82143_
                  _key82144_
                  (_rebind82146_ _xval82151_)))
               _$e82148_)
              (gx#core-context-put! _ctx82143_ _key82144_ _val82145_)))))
    (define gx#core-context-top__%
      (lambda (_ctx82121_ _stop?82122_)
        (let _lp82124_ ((_ctx82126_ _ctx82121_))
          (if (_stop?82122_ _ctx82126_)
              _ctx82126_
              (if (##structure-instance-of? _ctx82126_ 'gx#context-phi::t)
                  (_lp82124_
                   (##unchecked-structure-ref
                    _ctx82126_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx82132_ (gx#current-expander-context))
               (_stop?82134_ gx#top-context?))
          (gx#core-context-top__% _ctx82132_ _stop?82134_))))
    (define gx#core-context-top__1
      (lambda (_ctx82136_)
        (let ((_stop?82138_ gx#top-context?))
          (gx#core-context-top__% _ctx82136_ _stop?82138_))))
    (define gx#core-context-top
      (lambda _g84816_
        (let ((_g84815_ (##length _g84816_)))
          (cond ((##fx= _g84815_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84816_))
                ((##fx= _g84815_ 1)
                 (apply (lambda (_ctx82136_)
                          (gx#core-context-top__1 _ctx82136_))
                        _g84816_))
                ((##fx= _g84815_ 2)
                 (apply (lambda (_ctx82140_ _stop?82141_)
                          (gx#core-context-top__% _ctx82140_ _stop?82141_))
                        _g84816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84816_))))))
    (define gx#core-context-root__%
      (lambda (_ctx82106_)
        (let _lp82108_ ((_ctx82110_ _ctx82106_))
          (if (##structure-instance-of? _ctx82110_ 'gx#context-phi::t)
              (_lp82108_
               (##unchecked-structure-ref _ctx82110_ '3 gx#phi-context::t '#f))
              _ctx82110_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx82116_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx82116_))))
    (define gx#core-context-root
      (lambda _g84818_
        (let ((_g84817_ (##length _g84818_)))
          (cond ((##fx= _g84817_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84818_))
                ((##fx= _g84817_ 1)
                 (apply (lambda (_ctx82118_)
                          (gx#core-context-root__% _ctx82118_))
                        _g84818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84818_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx82087_ . __8208482088_)
        (let ((_$e82091_ (gx#current-expander-allow-rebind?)))
          (if _$e82091_
              _$e82091_
              (if (##structure-instance-of? _ctx82087_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx82087_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx82087_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx82098_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx82098_))))
    (define gx#core-context-rebind?
      (lambda _g84820_
        (let ((_g84819_ (##length _g84820_)))
          (cond ((##fx= _g84819_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84820_))
                ((##fx= _g84819_ 1)
                 (apply (lambda (_ctx82100_)
                          (gx#core-context-rebind?__% _ctx82100_))
                        _g84820_))
                ((##fx>= _g84819_ 1)
                 (apply gx#core-context-rebind?__% _g84820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84820_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx82070_)
        (let ((_$e82072_ (gx#core-context-top__1 _ctx82070_)))
          (if _$e82072_
              ((lambda (_ctx82075_)
                 (if (##structure-instance-of?
                      _ctx82075_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx82075_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e82072_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx82081_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx82081_))))
    (define gx#core-context-namespace
      (lambda _g84822_
        (let ((_g84821_ (##length _g84822_)))
          (cond ((##fx= _g84821_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84822_))
                ((##fx= _g84821_ 1)
                 (apply (lambda (_ctx82083_)
                          (gx#core-context-namespace__% _ctx82083_))
                        _g84822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84822_))))))
    (define gx#expander-binding?__%
      (lambda (_bind82056_ _is?82057_)
        (if (##structure-direct-instance-of? _bind82056_ 'gx#syntax-binding::t)
            (_is?82057_
             (##unchecked-structure-ref
              _bind82056_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind82062_)
        (let ((_is?82064_ gx#expander?))
          (gx#expander-binding?__% _bind82062_ _is?82064_))))
    (define gx#expander-binding?
      (lambda _g84824_
        (let ((_g84823_ (##length _g84824_)))
          (cond ((##fx= _g84823_ 1)
                 (apply (lambda (_bind82062_)
                          (gx#expander-binding?__0 _bind82062_))
                        _g84824_))
                ((##fx= _g84823_ 2)
                 (apply (lambda (_bind82066_ _is?82067_)
                          (gx#expander-binding?__% _bind82066_ _is?82067_))
                        _g84824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84824_))))))
    (define gx#core-expander-binding?
      (lambda (_bind82053_)
        (gx#expander-binding?__% _bind82053_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind82051_)
        (gx#expander-binding?__% _bind82051_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind82045_)
        (letrec ((_direct-special-form?82047_
                  (lambda (_obj82049_)
                    (##structure-direct-instance-of?
                     _obj82049_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind82045_ _direct-special-form?82047_))))
    (define gx#special-form-binding?
      (lambda (_bind82043_)
        (gx#expander-binding?__% _bind82043_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind82034_)
        (letrec ((_feature?82036_
                  (lambda (_e82038_)
                    (let ((_$e82040_
                           (##structure-instance-of?
                            _e82038_
                            'gx#feature-expander::t)))
                      (if _$e82040_
                          _$e82040_
                          (##structure-instance-of?
                           _e82038_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind82034_ _feature?82036_))))
    (define gx#private-feature-binding?
      (lambda (_bind82032_)
        (gx#expander-binding?__% _bind82032_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id82019_ _bound?82020_)
        (if (gx#identifier? _id82019_)
            (_bound?82020_ (gx#resolve-identifier__0 _id82019_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id82025_)
        (let ((_bound?82027_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id82025_ _bound?82027_))))
    (define gx#core-bound-identifier?
      (lambda _g84826_
        (let ((_g84825_ (##length _g84826_)))
          (cond ((##fx= _g84825_ 1)
                 (apply (lambda (_id82025_)
                          (gx#core-bound-identifier?__0 _id82025_))
                        _g84826_))
                ((##fx= _g84825_ 2)
                 (apply (lambda (_id82029_ _bound?82030_)
                          (gx#core-bound-identifier?__%
                           _id82029_
                           _bound?82030_))
                        _g84826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84826_))))))
    (define gx#core-identifier=?
      (lambda (_x82009_ _y82010_)
        (letrec ((_y=?82012_
                  (lambda (_xid82016_)
                    ((if (list? _y82010_) memq eq?) _xid82016_ _y82010_))))
          (let ((_bind82014_ (gx#resolve-identifier__0 _x82009_)))
            (if (##structure-instance-of? _bind82014_ 'gx#binding::t)
                (_y=?82012_
                 (##unchecked-structure-ref _bind82014_ '1 gx#binding::t '#f))
                (_y=?82012_ (gx#stx-e _x82009_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e82007_)
        (if (interned-symbol? _e82007_)
            (string-index__0 (symbol->string _e82007_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81962_ _src81963_ _ctx81964_ _marks81965_)
        (if (##structure? _stx81962_)
            (let ((_$e81967_ (gx#sealed-syntax-unwrap _stx81962_)))
              (if _$e81967_
                  (values _$e81967_)
                  (if (gx#identifier? _stx81962_)
                      (let ((_id81970_
                             (gx#stx-unwrap__% _stx81962_ _marks81965_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81970_ '1 gx#AST::t '#f)
                         (let ((_$e81972_
                                (##unchecked-structure-ref
                                 _id81970_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e81972_ _$e81972_ _src81963_))
                         _ctx81964_
                         (##unchecked-structure-ref
                          _id81970_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81962_)
                       (let ((_$e81975_ (gx#stx-source _stx81962_)))
                         (if _$e81975_ _$e81975_ _src81963_))
                       _ctx81964_
                       (reverse _marks81965_)))))
            (##structure
             gx#syntax-quote::t
             _stx81962_
             _src81963_
             _ctx81964_
             (reverse _marks81965_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81981_)
        (let* ((_src81983_ '#f)
               (_ctx81985_ (gx#current-expander-context))
               (_marks81987_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81981_
           _src81983_
           _ctx81985_
           _marks81987_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81989_ _src81990_)
        (let* ((_ctx81992_ (gx#current-expander-context))
               (_marks81994_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81989_
           _src81990_
           _ctx81992_
           _marks81994_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81996_ _src81997_ _ctx81998_)
        (let ((_marks82000_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81996_
           _src81997_
           _ctx81998_
           _marks82000_))))
    (define gx#core-quote-syntax
      (lambda _g84828_
        (let ((_g84827_ (##length _g84828_)))
          (cond ((##fx= _g84827_ 1)
                 (apply (lambda (_stx81981_)
                          (gx#core-quote-syntax__0 _stx81981_))
                        _g84828_))
                ((##fx= _g84827_ 2)
                 (apply (lambda (_stx81989_ _src81990_)
                          (gx#core-quote-syntax__1 _stx81989_ _src81990_))
                        _g84828_))
                ((##fx= _g84827_ 3)
                 (apply (lambda (_stx81996_ _src81997_ _ctx81998_)
                          (gx#core-quote-syntax__2
                           _stx81996_
                           _src81997_
                           _ctx81998_))
                        _g84828_))
                ((##fx= _g84827_ 4)
                 (apply (lambda (_stx82002_ _src82003_ _ctx82004_ _marks82005_)
                          (gx#core-quote-syntax__%
                           _stx82002_
                           _src82003_
                           _ctx82004_
                           _marks82005_))
                        _g84828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84828_))))))
    (define gx#core-cons
      (lambda (_hd81958_ _tl81959_)
        (cons (gx#core-quote-syntax__0 _hd81958_) _tl81959_)))
    (define gx#core-list
      (lambda (_hd81955_ . _rest81956_)
        (cons (gx#core-quote-syntax__0 _hd81955_) _rest81956_)))
    (define gx#core-cons*
      (lambda (_hd81952_ . _rest81953_)
        (apply cons* (gx#core-quote-syntax__0 _hd81952_) _rest81953_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81926_ _rel81927_)
        (let ((_path81939_ (gx#stx-e _stx-path81926_))
              (_reldir81940_
               (let _lp81929_ ((_relsrc81931_
                                (let ((_$e81936_
                                       (gx#stx-source _stx-path81926_)))
                                  (if _$e81936_ _$e81936_ _rel81927_))))
                 (if (##structure-instance-of? _relsrc81931_ 'gerbil#AST::t)
                     (_lp81929_
                      (let ((_$e81933_ (gx#stx-source _relsrc81931_)))
                        (if _$e81933_ _$e81933_ (gx#stx-e _relsrc81931_))))
                     (if (source-location-path? _relsrc81931_)
                         (path-directory (source-location-path _relsrc81931_))
                         (if (string? _relsrc81931_)
                             (path-directory _relsrc81931_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81939_ (path-normalize _reldir81940_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81945_)
        (let ((_rel81947_ '#f))
          (gx#core-resolve-path__% _stx-path81945_ _rel81947_))))
    (define gx#core-resolve-path
      (lambda _g84830_
        (let ((_g84829_ (##length _g84830_)))
          (cond ((##fx= _g84829_ 1)
                 (apply (lambda (_stx-path81945_)
                          (gx#core-resolve-path__0 _stx-path81945_))
                        _g84830_))
                ((##fx= _g84829_ 2)
                 (apply (lambda (_stx-path81949_ _rel81950_)
                          (gx#core-resolve-path__% _stx-path81949_ _rel81950_))
                        _g84830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84830_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81882_ _ctx81883_)
        (let* ((_repr8188481891_ _repr81882_)
               (_E8188681895_
                (lambda () (error '"No clause matching" _repr8188481891_)))
               (_K8188781903_
                (lambda (_subs81898_ _phi81899_)
                  (let ((_subst81901_
                         (if (not (null? _subs81898_))
                             (list->hash-table-eq _subs81898_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81901_
                     _ctx81883_
                     _phi81899_
                     '#f)))))
          (if (##pair? _repr8188481891_)
              (let ((_hd8188881906_ (##car _repr8188481891_))
                    (_tl8188981908_ (##cdr _repr8188481891_)))
                (let* ((_phi81911_ _hd8188881906_)
                       (_subs81913_ _tl8188981908_))
                  (_K8188781903_ _subs81913_ _phi81911_)))
              (_E8188681895_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81918_)
        (let ((_ctx81920_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81918_ _ctx81920_))))
    (define gx#core-deserialize-mark
      (lambda _g84832_
        (let ((_g84831_ (##length _g84832_)))
          (cond ((##fx= _g84831_ 1)
                 (apply (lambda (_repr81918_)
                          (gx#core-deserialize-mark__0 _repr81918_))
                        _g84832_))
                ((##fx= _g84831_ 2)
                 (apply (lambda (_repr81922_ _ctx81923_)
                          (gx#core-deserialize-mark__% _repr81922_ _ctx81923_))
                        _g84832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84832_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81879_)
        (gx#stx-rewrap _stx81879_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81877_)
        (gx#stx-unwrap__% _stx81877_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81847_)
        (let* ((_g8184881856_ (gx#current-expander-marks))
               (_else8185081864_ (lambda () _stx81847_))
               (_K8185281869_
                (lambda (_hd81867_) (gx#stx-apply-mark _stx81847_ _hd81867_))))
          (if (##pair? _g8184881856_)
              (let* ((_hd8185381872_ (##car _g8184881856_))
                     (_hd81875_ _hd8185381872_))
                (_K8185281869_ _hd81875_))
              (_else8185081864_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81832_ _E81833_)
        (let ((_bind81835_ (gx#resolve-identifier__0 _stx81832_)))
          (if (##structure-direct-instance-of?
               _bind81835_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind81835_
               '4
               gx#syntax-binding::t
               '#f)
              (_E81833_ _stx81832_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81840_)
        (let ((_E81842_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81840_ _E81842_))))
    (define gx#syntax-local-e
      (lambda _g84834_
        (let ((_g84833_ (##length _g84834_)))
          (cond ((##fx= _g84833_ 1)
                 (apply (lambda (_stx81840_) (gx#syntax-local-e__0 _stx81840_))
                        _g84834_))
                ((##fx= _g84833_ 2)
                 (apply (lambda (_stx81844_ _E81845_)
                          (gx#syntax-local-e__% _stx81844_ _E81845_))
                        _g84834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84834_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81816_ _E81817_)
        (let ((_e81819_ (gx#syntax-local-e__% _stx81816_ _E81817_)))
          (if (##structure-instance-of? _e81819_ 'gx#expander::t)
              (##structure-ref _e81819_ '1 gx#expander::t '#f)
              _e81819_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81824_)
        (let ((_E81826_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81824_ _E81826_))))
    (define gx#syntax-local-value
      (lambda _g84836_
        (let ((_g84835_ (##length _g84836_)))
          (cond ((##fx= _g84835_ 1)
                 (apply (lambda (_stx81824_)
                          (gx#syntax-local-value__0 _stx81824_))
                        _g84836_))
                ((##fx= _g84835_ 2)
                 (apply (lambda (_stx81828_ _E81829_)
                          (gx#syntax-local-value__% _stx81828_ _E81829_))
                        _g84836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84836_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81813_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81813_)))))
