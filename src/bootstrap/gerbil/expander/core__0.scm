(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1709127356)
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
      (lambda _$args84742_
        (apply make-instance gx#expander-context::t _$args84742_)))
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
      (lambda _$args84739_
        (apply make-instance gx#root-context::t _$args84739_)))
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
      (lambda _$args84736_
        (apply make-instance gx#phi-context::t _$args84736_)))
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
      (lambda _$args84733_
        (apply make-instance gx#top-context::t _$args84733_)))
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
      (lambda _$args84730_
        (apply make-instance gx#module-context::t _$args84730_)))
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
      (lambda _$args84727_
        (apply make-instance gx#prelude-context::t _$args84727_)))
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
      (lambda _$args84724_
        (apply make-instance gx#local-context::t _$args84724_)))
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
      (lambda (_self84708_ _id84709_ _super84710_)
        (if (##fx< '3 (##structure-length _self84708_))
            (begin
              (##unchecked-structure-set!
               _self84708_
               _id84709_
               '1
               (##structure-type _self84708_)
               '#f)
              (##unchecked-structure-set!
               _self84708_
               (make-hash-table-eq)
               '2
               (##structure-type _self84708_)
               '#f)
              (##unchecked-structure-set!
               _self84708_
               _super84710_
               '3
               (##structure-type _self84708_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84708_
                   '3
                   (##vector-length _self84708_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84715_ _id84716_)
        (let ((_super84718_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84715_ _id84716_ _super84718_))))
    (define gx#phi-context:::init!
      (lambda _g84785_
        (let ((_g84784_ (##length _g84785_)))
          (cond ((##fx= _g84784_ 2)
                 (apply (lambda (_self84715_ _id84716_)
                          (gx#phi-context:::init!__0 _self84715_ _id84716_))
                        _g84785_))
                ((##fx= _g84784_ 3)
                 (apply (lambda (_self84720_ _id84721_ _super84722_)
                          (gx#phi-context:::init!__%
                           _self84720_
                           _id84721_
                           _super84722_))
                        _g84785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84785_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self84572_ _super84573_)
        (if (##fx< '3 (##structure-length _self84572_))
            (begin
              (##unchecked-structure-set!
               _self84572_
               (gensym 'L)
               '1
               (##structure-type _self84572_)
               '#f)
              (##unchecked-structure-set!
               _self84572_
               (make-hash-table-eq)
               '2
               (##structure-type _self84572_)
               '#f)
              (##unchecked-structure-set!
               _self84572_
               _super84573_
               '3
               (##structure-type _self84572_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84572_
                   '3
                   (##vector-length _self84572_)))))
    (define gx#local-context:::init!__0
      (lambda (_self84578_)
        (let ((_super84580_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self84578_ _super84580_))))
    (define gx#local-context:::init!
      (lambda _g84787_
        (let ((_g84786_ (##length _g84787_)))
          (cond ((##fx= _g84786_ 1)
                 (apply (lambda (_self84578_)
                          (gx#local-context:::init!__0 _self84578_))
                        _g84787_))
                ((##fx= _g84786_ 2)
                 (apply (lambda (_self84582_ _super84583_)
                          (gx#local-context:::init!__%
                           _self84582_
                           _super84583_))
                        _g84787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84787_))))))
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
      (lambda _$args84446_ (apply make-instance gx#binding::t _$args84446_)))
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
      (lambda _$args84443_
        (apply make-instance gx#runtime-binding::t _$args84443_)))
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
      (lambda _$args84440_
        (apply make-instance gx#local-binding::t _$args84440_)))
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
      (lambda _$args84437_
        (apply make-instance gx#top-binding::t _$args84437_)))
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
      (lambda _$args84434_
        (apply make-instance gx#module-binding::t _$args84434_)))
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
      (lambda _$args84431_
        (apply make-instance gx#extern-binding::t _$args84431_)))
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
      (lambda _$args84428_
        (apply make-instance gx#syntax-binding::t _$args84428_)))
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
      (lambda _$args84425_
        (apply make-instance gx#import-binding::t _$args84425_)))
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
      (lambda _$args84422_
        (apply make-instance gx#alias-binding::t _$args84422_)))
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
      (lambda _$args84419_ (apply make-instance gx#expander::t _$args84419_)))
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
      (lambda _$args84416_
        (apply make-instance gx#core-expander::t _$args84416_)))
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
      (lambda _$args84413_
        (apply make-instance gx#expression-form::t _$args84413_)))
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
      (lambda _$args84410_
        (apply make-instance gx#special-form::t _$args84410_)))
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
      (lambda _$args84407_
        (apply make-instance gx#definition-form::t _$args84407_)))
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
      (lambda _$args84404_
        (apply make-instance gx#top-special-form::t _$args84404_)))
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
      (lambda _$args84401_
        (apply make-instance gx#module-special-form::t _$args84401_)))
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
      (lambda _$args84398_
        (apply make-instance gx#feature-expander::t _$args84398_)))
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
      (lambda _$args84395_
        (apply make-instance gx#private-feature-expander::t _$args84395_)))
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
      (lambda _$args84392_
        (apply make-instance gx#reserved-expander::t _$args84392_)))
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
      (lambda _$args84389_
        (apply make-instance gx#macro-expander::t _$args84389_)))
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
      (lambda _$args84386_
        (apply make-instance gx#rename-macro-expander::t _$args84386_)))
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
      (lambda _$args84383_
        (apply make-instance gx#user-expander::t _$args84383_)))
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
      (lambda _$args84380_
        (apply make-instance gx#expander-mark::t _$args84380_)))
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
      (lambda (_ctx84365_ _message84366_ _stx84367_ . _details84368_)
        (let ((_ctx84378_
               (let ((_$e84370_ _ctx84365_))
                 (if _$e84370_
                     _$e84370_
                     (let ((_$e84373_ (gx#core-context-top__0)))
                       (if _$e84373_
                           ((lambda (_ctx84376_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx84376_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e84373_)
                           '#f))))))
          (raise (make-syntax-error
                  _message84366_
                  (cons _stx84367_ _details84368_)
                  _ctx84378_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx84352_ _expression?84353_)
        (gx#eval-syntax* (gx#core-expand__% _stx84352_ _expression?84353_))))
    (define gx#eval-syntax__0
      (lambda (_stx84358_)
        (let ((_expression?84360_ '#f))
          (gx#eval-syntax__% _stx84358_ _expression?84360_))))
    (define gx#eval-syntax
      (lambda _g84789_
        (let ((_g84788_ (##length _g84789_)))
          (cond ((##fx= _g84788_ 1)
                 (apply (lambda (_stx84358_) (gx#eval-syntax__0 _stx84358_))
                        _g84789_))
                ((##fx= _g84788_ 2)
                 (apply (lambda (_stx84362_ _expression?84363_)
                          (gx#eval-syntax__% _stx84362_ _expression?84363_))
                        _g84789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84789_))))))
    (define gx#eval-syntax*
      (lambda (_stx84349_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx84349_))))
    (define gx#core-expand__%
      (lambda (_stx84336_ _expression?84337_)
        (if _expression?84337_
            (gx#core-expand-expression _stx84336_)
            (gx#core-expand-top _stx84336_))))
    (define gx#core-expand__0
      (lambda (_stx84342_)
        (let ((_expression?84344_ '#f))
          (gx#core-expand__% _stx84342_ _expression?84344_))))
    (define gx#core-expand
      (lambda _g84791_
        (let ((_g84790_ (##length _g84791_)))
          (cond ((##fx= _g84790_ 1)
                 (apply (lambda (_stx84342_) (gx#core-expand__0 _stx84342_))
                        _g84791_))
                ((##fx= _g84790_ 2)
                 (apply (lambda (_stx84346_ _expression?84347_)
                          (gx#core-expand__% _stx84346_ _expression?84347_))
                        _g84791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84791_))))))
    (define gx#core-expand-top
      (lambda (_stx84303_)
        (let* ((_stx84305_ (gx#core-expand*__0 _stx84303_))
               (_e8430684313_ _stx84305_)
               (_E8430884317_
                (lambda () (gx#core-expand-expression _stx84305_)))
               (_E8430784331_
                (lambda ()
                  (if (gx#stx-pair? _e8430684313_)
                      (let ((_e8430984321_ (gx#syntax-e _e8430684313_)))
                        (let ((_hd8431084324_ (##car _e8430984321_))
                              (_tl8431184326_ (##cdr _e8430984321_)))
                          (let ((_form84329_ _hd8431084324_))
                            (if (gx#core-bound-identifier?__0 _form84329_)
                                _stx84305_
                                (_E8430884317_)))))
                      (_E8430884317_)))))
          (_E8430784331_))))
    (define gx#core-expand-expression
      (lambda (_stx84250_)
        (letrec ((_sealed-expression?84252_
                  (lambda (_hd84273_)
                    (if (gx#sealed-syntax? _hd84273_)
                        (let* ((_e8427484281_ _hd84273_)
                               (_E8427684285_ (lambda () '#f))
                               (_E8427584299_
                                (lambda ()
                                  (if (gx#stx-pair? _e8427484281_)
                                      (let ((_e8427784289_
                                             (gx#syntax-e _e8427484281_)))
                                        (let ((_hd8427884292_
                                               (##car _e8427784289_))
                                              (_tl8427984294_
                                               (##cdr _e8427784289_)))
                                          (let ((_form84297_ _hd8427884292_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form84297_
                                                 gx#expression-form-binding?)
                                                (_E8427684285_)))))
                                      (_E8427684285_)))))
                          (_E8427584299_))
                        '#f)))
                 (_illegal-expression84253_
                  (lambda (_hd84271_ . _g84792_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx84250_
                     _hd84271_)))
                 (_expand-e84254_
                  (lambda (_form84266_ _hd84267_)
                    (let ((_bind84269_
                           (if (##structure-instance-of?
                                _form84266_
                                'gx#binding::t)
                               _form84266_
                               (gx#resolve-identifier__0 _form84266_))))
                      (if (gx#core-expander-binding? _bind84269_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind84269_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd84267_
                            (gx#stx-source _stx84250_)))
                          (if (##structure-direct-instance-of?
                               _bind84269_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind84269_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd84267_
                                 (gx#stx-source _stx84250_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx84250_
                               _form84266_)))))))
          (let ((_hd84256_ (gx#core-expand-head _stx84250_)))
            (if (_sealed-expression?84252_ _hd84256_)
                _hd84256_
                (if (gx#stx-pair? _hd84256_)
                    (let* ((_form84258_ (gx#stx-car _hd84256_))
                           (_bind84260_
                            (if (gx#identifier? _form84258_)
                                (gx#resolve-identifier__0 _form84258_)
                                '#f)))
                      (if (or (not _bind84260_)
                              (not (gx#core-expander-binding? _bind84260_)))
                          (_expand-e84254_ '%%app (cons '%%app _hd84256_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind84260_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd84256_
                               _illegal-expression84253_)
                              (if (gx#expression-form-binding? _bind84260_)
                                  (_expand-e84254_ _bind84260_ _hd84256_)
                                  (if (gx#direct-special-form-binding?
                                       _bind84260_)
                                      (gx#core-expand-expression
                                       (_expand-e84254_ _bind84260_ _hd84256_))
                                      (_illegal-expression84253_
                                       _hd84256_))))))
                    (if (gx#core-bound-identifier?__0 _hd84256_)
                        (_illegal-expression84253_ _hd84256_)
                        (if (gx#identifier? _hd84256_)
                            (_expand-e84254_
                             '%%ref
                             (cons '%%ref (cons _hd84256_ '())))
                            (if (gx#stx-datum? _hd84256_)
                                (_expand-e84254_
                                 '%#quote
                                 (cons '%#quote (cons _hd84256_ '())))
                                (_illegal-expression84253_ _hd84256_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx84245_)
        (call-with-parameters
         (lambda ()
           (let ((_stx84248_ (gx#core-expand-expression _stx84245_)))
             (values _stx84248_ (gx#eval-syntax* _stx84248_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx84226_ _stop?84227_)
        (let _lp84229_ ((_stx84231_ _stx84226_))
          (if (_stop?84227_ _stx84231_)
              _stx84231_
              (let ((_rstx84233_ (gx#core-expand1 _stx84231_)))
                (if (eq? _stx84231_ _rstx84233_)
                    _stx84231_
                    (_lp84229_ _rstx84233_)))))))
    (define gx#core-expand*__0
      (lambda (_stx84238_)
        (let ((_stop?84240_ false))
          (gx#core-expand*__% _stx84238_ _stop?84240_))))
    (define gx#core-expand*
      (lambda _g84794_
        (let ((_g84793_ (##length _g84794_)))
          (cond ((##fx= _g84793_ 1)
                 (apply (lambda (_stx84238_) (gx#core-expand*__0 _stx84238_))
                        _g84794_))
                ((##fx= _g84793_ 2)
                 (apply (lambda (_stx84242_ _stop?84243_)
                          (gx#core-expand*__% _stx84242_ _stop?84243_))
                        _g84794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84794_))))))
    (define gx#core-expand1
      (lambda (_stx84182_)
        (letrec ((_step84184_
                  (lambda (_hd84221_)
                    (let ((_bind84223_ (gx#resolve-identifier__0 _hd84221_)))
                      (if (##structure-instance-of?
                           _bind84223_
                           'gx#runtime-binding::t)
                          _stx84182_
                          (if (##structure-direct-instance-of?
                               _bind84223_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind84223_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx84182_)
                              (if (not _bind84223_)
                                  _stx84182_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx84182_))))))))
          (let* ((_e8418584193_ _stx84182_)
                 (_E8419184197_ (lambda () _stx84182_))
                 (_E8418784203_
                  (lambda ()
                    (let ((_hd84201_ _e8418584193_))
                      (if (gx#identifier? _hd84201_)
                          (_step84184_ _hd84201_)
                          (_E8419184197_)))))
                 (_E8418684217_
                  (lambda ()
                    (if (gx#stx-pair? _e8418584193_)
                        (let ((_e8418884207_ (gx#syntax-e _e8418584193_)))
                          (let ((_hd8418984210_ (##car _e8418884207_))
                                (_tl8419084212_ (##cdr _e8418884207_)))
                            (let ((_hd84215_ _hd8418984210_))
                              (if (gx#identifier? _hd84215_)
                                  (_step84184_ _hd84215_)
                                  (_E8418784203_)))))
                        (_E8418784203_)))))
            (_E8418684217_)))))
    (define gx#core-expand-head
      (lambda (_stx84148_)
        (letrec ((_stop?84150_
                  (lambda (_stx84152_)
                    (let* ((_e8415384160_ _stx84152_)
                           (_E8415584164_ (lambda () '#f))
                           (_E8415484178_
                            (lambda ()
                              (if (gx#stx-pair? _e8415384160_)
                                  (let ((_e8415684168_
                                         (gx#syntax-e _e8415384160_)))
                                    (let ((_hd8415784171_
                                           (##car _e8415684168_))
                                          (_tl8415884173_
                                           (##cdr _e8415684168_)))
                                      (let ((_hd84176_ _hd8415784171_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd84176_)
                                            (_E8415584164_)))))
                                  (_E8415584164_)))))
                      (_E8415484178_)))))
          (gx#core-expand*__% _stx84148_ _stop?84150_))))
    (define gx#core-expand-block__%
      (lambda (_stx83954_
               _expand-special83955_
               _begin-form83956_
               _expand-e83957_)
        (letrec ((_expand-splice83959_
                  (lambda (_hd84122_ _body84123_ _rest84124_ _r84125_)
                    (if (gx#stx-list? _body84123_)
                        (_K83963_
                         (gx#stx-foldr cons _rest84124_ _body84123_)
                         _r84125_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83954_
                         _hd84122_))))
                 (_expand-cond-expand83960_
                  (lambda (_hd84118_ _rest84119_ _r84120_)
                    (_K83963_
                     (cons (gx#core-expand-cond-expand% _hd84118_) _rest84119_)
                     _r84120_)))
                 (_expand-include83961_
                  (lambda (_hd84067_ _rest84068_ _r84069_)
                    (let* ((_e8407084080_ _hd84067_)
                           (_E8407284084_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8407084080_)))
                           (_E8407184114_
                            (lambda ()
                              (if (gx#stx-pair? _e8407084080_)
                                  (let ((_e8407384088_
                                         (gx#syntax-e _e8407084080_)))
                                    (let ((_hd8407484091_
                                           (##car _e8407384088_))
                                          (_tl8407584093_
                                           (##cdr _e8407384088_)))
                                      (if (gx#stx-pair? _tl8407584093_)
                                          (let ((_e8407684096_
                                                 (gx#syntax-e _tl8407584093_)))
                                            (let ((_hd8407784099_
                                                   (##car _e8407684096_))
                                                  (_tl8407884101_
                                                   (##cdr _e8407684096_)))
                                              (let ((_path84104_
                                                     _hd8407784099_))
                                                (if (gx#stx-null?
                                                     _tl8407884101_)
                                                    (if (gx#stx-string?
                                                         _path84104_)
                                                        (let* ((_rpath84106_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path84104_
                         (gx#stx-source _hd84067_)))
                       (_block84108_
                        (gx#core-expand-include%__% _hd84067_ _rpath84106_))
                       (_rbody84111_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block84108_
                            _expand-special83955_
                            '#f
                            _expand-e83957_))
                         gx#current-expander-path
                         (cons _rpath84106_ (gx#current-expander-path)))))
                  (_K83963_ _rest84068_ (foldr1 cons _r84069_ _rbody84111_)))
                (_E8407284084_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8407284084_)))))
                                          (_E8407284084_))))
                                  (_E8407284084_)))))
                      (_E8407184114_))))
                 (_expand-expression83962_
                  (lambda (_hd84063_ _rest84064_ _r84065_)
                    (_K83963_
                     _rest84064_
                     (cons (_expand-e83957_ _hd84063_) _r84065_))))
                 (_K83963_
                  (lambda (_rest83993_ _r83994_)
                    (let* ((_e8399584002_ _rest83993_)
                           (_E8399784006_
                            (lambda ()
                              (if _begin-form83956_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83956_
                                    (reverse _r83994_))
                                   (gx#stx-source _stx83954_))
                                  _r83994_)))
                           (_E8399684059_
                            (lambda ()
                              (if (gx#stx-pair? _e8399584002_)
                                  (let ((_e8399884010_
                                         (gx#syntax-e _e8399584002_)))
                                    (let ((_hd8399984013_
                                           (##car _e8399884010_))
                                          (_tl8400084015_
                                           (##cdr _e8399884010_)))
                                      (let* ((_hd84018_ _hd8399984013_)
                                             (_rest84020_ _tl8400084015_))
                                        (if '#t
                                            (let* ((_hd84022_
                                                    (gx#core-expand-head
                                                     _hd84018_))
                                                   (_e8402384030_ _hd84022_)
                                                   (_E8402584034_
                                                    (lambda ()
                                                      (_expand-expression83962_
                                                       _hd84022_
                                                       _rest84020_
                                                       _r83994_)))
                                                   (_E8402484055_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8402384030_)
                                                          (let ((_e8402684038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8402384030_)))
                    (let ((_hd8402784041_ (##car _e8402684038_))
                          (_tl8402884043_ (##cdr _e8402684038_)))
                      (let* ((_form84046_ _hd8402784041_)
                             (_body84048_ _tl8402884043_))
                        (if '#t
                            (let ((_bind84050_
                                   (if (gx#identifier? _form84046_)
                                       (gx#resolve-identifier__0 _form84046_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind84050_)
                                  (let ((_$e84052_
                                         (##unchecked-structure-ref
                                          _bind84050_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e84052_)
                                        (_expand-splice83959_
                                         _hd84022_
                                         _body84048_
                                         _rest84020_
                                         _r83994_)
                                        (if (eq? '%#cond-expand _$e84052_)
                                            (_expand-cond-expand83960_
                                             _hd84022_
                                             _rest84020_
                                             _r83994_)
                                            (if (eq? '%#include _$e84052_)
                                                (_expand-include83961_
                                                 _hd84022_
                                                 _rest84020_
                                                 _r83994_)
                                                (_expand-special83955_
                                                 _hd84022_
                                                 _K83963_
                                                 _rest84020_
                                                 _r83994_)))))
                                  (_expand-expression83962_
                                   _hd84022_
                                   _rest84020_
                                   _r83994_)))
                            (_E8402584034_)))))
                  (_E8402584034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8402484055_))
                                            (_E8399784006_)))))
                                  (_E8399784006_)))))
                      (_E8399684059_)))))
          (let* ((_e8396483971_ _stx83954_)
                 (_E8396683975_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8396483971_)))
                 (_E8396583989_
                  (lambda ()
                    (if (gx#stx-pair? _e8396483971_)
                        (let ((_e8396783979_ (gx#syntax-e _e8396483971_)))
                          (let ((_hd8396883982_ (##car _e8396783979_))
                                (_tl8396983984_ (##cdr _e8396783979_)))
                            (let ((_body83987_ _tl8396983984_))
                              (if (gx#stx-list? _body83987_)
                                  (_K83963_ _body83987_ '())
                                  (_E8396683975_)))))
                        (_E8396683975_)))))
            (_E8396583989_)))))
    (define gx#core-expand-block__0
      (lambda (_stx84130_ _expand-special84131_)
        (let* ((_begin-form84133_ '%#begin)
               (_expand-e84135_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84130_
           _expand-special84131_
           _begin-form84133_
           _expand-e84135_))))
    (define gx#core-expand-block__1
      (lambda (_stx84137_ _expand-special84138_ _begin-form84139_)
        (let ((_expand-e84141_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84137_
           _expand-special84138_
           _begin-form84139_
           _expand-e84141_))))
    (define gx#core-expand-block
      (lambda _g84796_
        (let ((_g84795_ (##length _g84796_)))
          (cond ((##fx= _g84795_ 2)
                 (apply (lambda (_stx84130_ _expand-special84131_)
                          (gx#core-expand-block__0
                           _stx84130_
                           _expand-special84131_))
                        _g84796_))
                ((##fx= _g84795_ 3)
                 (apply (lambda (_stx84137_
                                 _expand-special84138_
                                 _begin-form84139_)
                          (gx#core-expand-block__1
                           _stx84137_
                           _expand-special84138_
                           _begin-form84139_))
                        _g84796_))
                ((##fx= _g84795_ 4)
                 (apply (lambda (_stx84143_
                                 _expand-special84144_
                                 _begin-form84145_
                                 _expand-e84146_)
                          (gx#core-expand-block__%
                           _stx84143_
                           _expand-special84144_
                           _begin-form84145_
                           _expand-e84146_))
                        _g84796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84796_))))))
    (define gx#core-expand-block*
      (lambda (_stx83902_ _expand-special83903_)
        (let* ((_g8390483915_
                (gx#core-expand-block__1 _stx83902_ _expand-special83903_ '#f))
               (_E8390883919_
                (lambda () (error '"No clause matching" _g8390483915_))))
          (let ((_K8391383950_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83902_)))
                (_K8391083936_ (lambda (_expr83934_) _expr83934_))
                (_K8390983925_
                 (lambda (_body83923_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83923_))
                    (gx#stx-source _stx83902_)))))
            (let ((_try-match8390683946_
                   (lambda ()
                     (if (##pair? _g8390483915_)
                         (let ((_tl8391283941_ (##cdr _g8390483915_))
                               (_hd8391183939_ (##car _g8390483915_)))
                           (if (##null? _tl8391283941_)
                               (let ((_expr83944_ _hd8391183939_))
                                 (_K8391083936_ _expr83944_))
                               (let ((_body83928_ _g8390483915_))
                                 (_K8390983925_ _body83928_))))
                         (let ((_body83928_ _g8390483915_))
                           (_K8390983925_ _body83928_))))))
              (if (##null? _g8390483915_)
                  (_K8391383950_)
                  (_try-match8390683946_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83730_)
        (letrec ((_satisfied?83732_
                  (lambda (_condition83830_)
                    (let* ((_e8383183846_ _condition83830_)
                           (_E8384183850_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8383183846_)))
                           (_E8383483869_
                            (lambda ()
                              (if (gx#stx-pair? _e8383183846_)
                                  (let ((_e8384283854_
                                         (gx#syntax-e _e8383183846_)))
                                    (let ((_hd8384383857_
                                           (##car _e8384283854_))
                                          (_tl8384483859_
                                           (##cdr _e8384283854_)))
                                      (let* ((_combinator83862_ _hd8384383857_)
                                             (_body83864_ _tl8384483859_))
                                        (if (gx#stx-list? _body83864_)
                                            (let ((_$e83866_
                                                   (gx#stx-e
                                                    _combinator83862_)))
                                              (if (eq? 'not _$e83866_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83732_
                                                        _body83864_))
                                                  (if (eq? 'and _$e83866_)
                                                      (gx#stx-andmap
                                                       _satisfied?83732_
                                                       _body83864_)
                                                      (if (eq? 'or _$e83866_)
                                                          (gx#stx-ormap
                                                           _satisfied?83732_
                                                           _body83864_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83866_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83864_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83730_
                       _combinator83862_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8384183850_)))))
                                  (_E8384183850_))))
                           (_E8383383892_
                            (lambda ()
                              (if (gx#stx-pair? _e8383183846_)
                                  (let ((_e8383583873_
                                         (gx#syntax-e _e8383183846_)))
                                    (let ((_hd8383683876_
                                           (##car _e8383583873_))
                                          (_tl8383783878_
                                           (##cdr _e8383583873_)))
                                      (if (and (gx#identifier? _hd8383683876_)
                                               (gx#core-identifier=?
                                                _hd8383683876_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8383783878_)
                                              (let ((_e8383883881_
                                                     (gx#syntax-e
                                                      _tl8383783878_)))
                                                (let ((_hd8383983884_
                                                       (##car _e8383883881_))
                                                      (_tl8384083886_
                                                       (##cdr _e8383883881_)))
                                                  (let ((_expr83889_
                                                         _hd8383983884_))
                                                    (if (gx#stx-null?
                                                         _tl8384083886_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83889_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8383483869_))
                (_E8383483869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8383483869_))
                                          (_E8383483869_))))
                                  (_E8383483869_))))
                           (_E8383283898_
                            (lambda ()
                              (let ((_id83896_ _e8383183846_))
                                (if (gx#identifier? _id83896_)
                                    (gx#core-bound-identifier?__%
                                     _id83896_
                                     gx#feature-binding?)
                                    (_E8383383892_))))))
                      (_E8383283898_))))
                 (_loop83733_
                  (lambda (_rest83763_)
                    (let* ((_e8376483772_ _rest83763_)
                           (_E8377083776_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8376483772_)))
                           (_E8376683780_
                            (lambda ()
                              (if (gx#stx-null? _e8376483772_)
                                  (if '#t '() (_E8377083776_))
                                  (_E8377083776_))))
                           (_E8376583826_
                            (lambda ()
                              (if (gx#stx-pair? _e8376483772_)
                                  (let ((_e8376783784_
                                         (gx#syntax-e _e8376483772_)))
                                    (let ((_hd8376883787_
                                           (##car _e8376783784_))
                                          (_tl8376983789_
                                           (##cdr _e8376783784_)))
                                      (let* ((_hd83792_ _hd8376883787_)
                                             (_rest83794_ _tl8376983789_))
                                        (if '#t
                                            (let* ((_e8379583802_ _hd83792_)
                                                   (_E8379783806_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8379583802_)))
                                                   (_E8379683822_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8379583802_)
                                                          (let ((_e8379883810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8379583802_)))
                    (let ((_hd8379983813_ (##car _e8379883810_))
                          (_tl8380083815_ (##cdr _e8379883810_)))
                      (let* ((_condition83818_ _hd8379983813_)
                             (_body83820_ _tl8380083815_))
                        (if '#t
                            (if (gx#stx-eq? _condition83818_ 'else)
                                (if (gx#stx-null? _rest83794_)
                                    _body83820_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83730_
                                     _hd83792_))
                                (if (_satisfied?83732_ _condition83818_)
                                    _body83820_
                                    (_loop83733_ _rest83794_)))
                            (_E8379783806_)))))
                  (_E8379783806_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8379683822_))
                                            (_E8376683780_)))))
                                  (_E8376683780_)))))
                      (_E8376583826_)))))
          (let* ((_e8373483741_ _stx83730_)
                 (_E8373683745_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8373483741_)))
                 (_E8373583759_
                  (lambda ()
                    (if (gx#stx-pair? _e8373483741_)
                        (let ((_e8373783749_ (gx#syntax-e _e8373483741_)))
                          (let ((_hd8373883752_ (##car _e8373783749_))
                                (_tl8373983754_ (##cdr _e8373783749_)))
                            (let ((_clauses83757_ _tl8373983754_))
                              (if (gx#stx-list? _clauses83757_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83733_ _clauses83757_))
                                  (_E8373683745_)))))
                        (_E8373683745_)))))
            (_E8373583759_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83673_ _rpath83674_)
        (let* ((_e8367583685_ _stx83673_)
               (_E8367783689_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8367583685_)))
               (_E8367683716_
                (lambda ()
                  (if (gx#stx-pair? _e8367583685_)
                      (let ((_e8367883693_ (gx#syntax-e _e8367583685_)))
                        (let ((_hd8367983696_ (##car _e8367883693_))
                              (_tl8368083698_ (##cdr _e8367883693_)))
                          (if (gx#stx-pair? _tl8368083698_)
                              (let ((_e8368183701_
                                     (gx#syntax-e _tl8368083698_)))
                                (let ((_hd8368283704_ (##car _e8368183701_))
                                      (_tl8368383706_ (##cdr _e8368183701_)))
                                  (let ((_path83709_ _hd8368283704_))
                                    (if (gx#stx-null? _tl8368383706_)
                                        (if (gx#stx-string? _path83709_)
                                            (let ((_rpath83714_
                                                   (let ((_$e83711_
                                                          _rpath83674_))
                                                     (if _$e83711_
                                                         _$e83711_
                                                         (gx#core-resolve-path__%
                                                          _path83709_
                                                          (gx#stx-source
                                                           _stx83673_))))))
                                              (if (member _rpath83714_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83673_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83714_))
                                                    (gx#stx-source
                                                     _stx83673_)))))
                                            (_E8367783689_))
                                        (_E8367783689_)))))
                              (_E8367783689_))))
                      (_E8367783689_)))))
          (_E8367683716_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83723_)
        (let ((_rpath83725_ '#f))
          (gx#core-expand-include%__% _stx83723_ _rpath83725_))))
    (define gx#core-expand-include%
      (lambda _g84798_
        (let ((_g84797_ (##length _g84798_)))
          (cond ((##fx= _g84797_ 1)
                 (apply (lambda (_stx83723_)
                          (gx#core-expand-include%__0 _stx83723_))
                        _g84798_))
                ((##fx= _g84797_ 2)
                 (apply (lambda (_stx83727_ _rpath83728_)
                          (gx#core-expand-include%__% _stx83727_ _rpath83728_))
                        _g84798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84798_))))))
    (define gx#core-apply-expander__%
      (lambda (_K83642_ _stx83643_ _method83644_)
        (if (procedure? _K83642_)
            (let ((_$e83646_ (gx#stx-source _stx83643_)))
              (if _$e83646_
                  ((lambda (_g8364883650_)
                     (gx#stx-wrap-source (_K83642_ _stx83643_) _g8364883650_))
                   _$e83646_)
                  (_K83642_ _stx83643_)))
            (let ((_$e83653_ (bound-method-ref _K83642_ _method83644_)))
              (if _$e83653_
                  ((lambda (_g8365583657_)
                     (gx#core-apply-expander__%
                      _g8365583657_
                      _stx83643_
                      _method83644_))
                   _$e83653_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx83643_
                   _method83644_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83663_ _stx83664_)
        (let ((_method83666_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83663_ _stx83664_ _method83666_))))
    (define gx#core-apply-expander
      (lambda _g84800_
        (let ((_g84799_ (##length _g84800_)))
          (cond ((##fx= _g84799_ 2)
                 (apply (lambda (_K83663_ _stx83664_)
                          (gx#core-apply-expander__0 _K83663_ _stx83664_))
                        _g84800_))
                ((##fx= _g84799_ 3)
                 (apply (lambda (_K83668_ _stx83669_ _method83670_)
                          (gx#core-apply-expander__%
                           _K83668_
                           _stx83669_
                           _method83670_))
                        _g84800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84800_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self83638_ _stx83639_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx83639_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self83491_ _stx83492_)
        (let* ((_self8349383499_ _self83491_)
               (_E8349583503_
                (lambda () (error '"No clause matching" _self8349383499_)))
               (_K8349683508_
                (lambda (_K83506_)
                  (gx#core-apply-expander__0 _K83506_ _stx83492_))))
          (if (##structure-instance-of? _self8349383499_ 'gx#core-macro::t)
              (let* ((_e8349783511_
                      (##unchecked-structure-ref
                       _self8349383499_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83514_ _e8349783511_))
                (_K8349683508_ _K83514_))
              (_E8349583503_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self83344_ _stx83345_)
        (if (gx#sealed-syntax? _stx83345_)
            _stx83345_
            (let* ((_self8334683352_ _self83344_)
                   (_E8334883356_
                    (lambda () (error '"No clause matching" _self8334683352_)))
                   (_K8334983361_
                    (lambda (_K83359_)
                      (gx#core-apply-expander__0 _K83359_ _stx83345_))))
              (if (##structure-instance-of?
                   _self8334683352_
                   'gx#core-expander::t)
                  (let* ((_e8335083364_
                          (##unchecked-structure-ref
                           _self8334683352_
                           '1
                           gx#expander::t
                           '#f))
                         (_K83367_ _e8335083364_))
                    (_K8334983361_ _K83367_))
                  (_E8334883356_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self83206_ _stx83207_ _top?83208_)
        (if (_top?83208_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self83206_ _stx83207_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx83207_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self83213_ _stx83214_)
        (let ((_top?83216_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self83213_
           _stx83214_
           _top?83216_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84802_
        (let ((_g84801_ (##length _g84802_)))
          (cond ((##fx= _g84801_ 2)
                 (apply (lambda (_self83213_ _stx83214_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self83213_
                           _stx83214_))
                        _g84802_))
                ((##fx= _g84801_ 3)
                 (apply (lambda (_self83218_ _stx83219_ _top?83220_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self83218_
                           _stx83219_
                           _top?83220_))
                        _g84802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84802_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self83080_ _stx83081_)
        (gx#top-special-form::apply-macro-expander__%
         _self83080_
         _stx83081_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82905_ _stx82906_)
        (let* ((_self8290782913_ _self82905_)
               (_E8290982917_
                (lambda () (error '"No clause matching" _self8290782913_)))
               (_K8291082950_
                (lambda (_id82920_)
                  (let* ((_e8292182928_ _stx82906_)
                         (_E8292382932_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8292182928_)))
                         (_E8292282946_
                          (lambda ()
                            (if (gx#stx-pair? _e8292182928_)
                                (let ((_e8292482936_
                                       (gx#syntax-e _e8292182928_)))
                                  (let ((_hd8292582939_ (##car _e8292482936_))
                                        (_tl8292682941_ (##cdr _e8292482936_)))
                                    (let ((_body82944_ _tl8292682941_))
                                      (if '#t
                                          (gx#core-cons _id82920_ _body82944_)
                                          (_E8292382932_)))))
                                (_E8292382932_)))))
                    (_E8292282946_)))))
          (if (##structure-instance-of?
               _self8290782913_
               'gx#rename-macro-expander::t)
              (let* ((_e8291182953_
                      (##unchecked-structure-ref
                       _self8290782913_
                       '1
                       gx#expander::t
                       '#f))
                     (_id82956_ _e8291182953_))
                (_K8291082950_ _id82956_))
              (_E8290982917_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82731_ _stx82732_ _method82733_)
        (let* ((_self8273482742_ _self82731_)
               (_E8273682746_
                (lambda () (error '"No clause matching" _self8273482742_)))
               (_K8273782753_
                (lambda (_phi82749_ _ctx82750_ _K82751_)
                  (gx#core-apply-user-macro
                   _K82751_
                   _stx82732_
                   _ctx82750_
                   _phi82749_
                   _method82733_))))
          (if (##structure-instance-of? _self8273482742_ 'gx#macro-expander::t)
              (let* ((_e8273882756_
                      (##unchecked-structure-ref
                       _self8273482742_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82759_ _e8273882756_)
                     (_e8273982761_
                      (##unchecked-structure-ref
                       _self8273482742_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx82764_ _e8273982761_)
                     (_e8274082766_
                      (##unchecked-structure-ref
                       _self8273482742_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi82769_ _e8274082766_))
                (_K8273782753_ _phi82769_ _ctx82764_ _K82759_))
              (_E8273682746_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82774_ _stx82775_)
        (let ((_method82777_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82774_
           _stx82775_
           _method82777_))))
    (define gx#core-apply-user-expander
      (lambda _g84804_
        (let ((_g84803_ (##length _g84804_)))
          (cond ((##fx= _g84803_ 2)
                 (apply (lambda (_self82774_ _stx82775_)
                          (gx#core-apply-user-expander__0
                           _self82774_
                           _stx82775_))
                        _g84804_))
                ((##fx= _g84803_ 3)
                 (apply (lambda (_self82779_ _stx82780_ _method82781_)
                          (gx#core-apply-user-expander__%
                           _self82779_
                           _stx82780_
                           _method82781_))
                        _g84804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84804_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82721_ _stx82722_ _ctx82723_ _phi82724_ _method82725_)
        (let ((_mark82727_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82723_
                _phi82724_
                _stx82722_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82721_
               (gx#stx-apply-mark _stx82722_ _mark82727_)
               _method82725_)
              _mark82727_))
           gx#current-expander-marks
           (cons _mark82727_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx82573_ _phi82574_ _ctx82575_)
        (let _lp82577_ ((_bind82579_
                         (gx#core-resolve-identifier__%
                          _stx82573_
                          _phi82574_
                          _ctx82575_)))
          (if (##structure-direct-instance-of?
               _bind82579_
               'gx#import-binding::t)
              (_lp82577_
               (##unchecked-structure-ref
                _bind82579_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind82579_
                   'gx#alias-binding::t)
                  (_lp82577_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind82579_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi82574_
                    _ctx82575_))
                  _bind82579_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx82584_)
        (let* ((_phi82586_ (gx#current-expander-phi))
               (_ctx82588_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82584_ _phi82586_ _ctx82588_))))
    (define gx#resolve-identifier__1
      (lambda (_stx82590_ _phi82591_)
        (let ((_ctx82593_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82590_ _phi82591_ _ctx82593_))))
    (define gx#resolve-identifier
      (lambda _g84806_
        (let ((_g84805_ (##length _g84806_)))
          (cond ((##fx= _g84805_ 1)
                 (apply (lambda (_stx82584_)
                          (gx#resolve-identifier__0 _stx82584_))
                        _g84806_))
                ((##fx= _g84805_ 2)
                 (apply (lambda (_stx82590_ _phi82591_)
                          (gx#resolve-identifier__1 _stx82590_ _phi82591_))
                        _g84806_))
                ((##fx= _g84805_ 3)
                 (apply (lambda (_stx82595_ _phi82596_ _ctx82597_)
                          (gx#resolve-identifier__%
                           _stx82595_
                           _phi82596_
                           _ctx82597_))
                        _g84806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84806_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx82531_ _val82532_ _rebind?82533_ _phi82534_ _ctx82535_)
        (let ((_rebind?82537_
               (if (not _rebind?82533_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?82533_) _rebind?82533_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx82531_)
           _val82532_
           _rebind?82537_
           _phi82534_
           _ctx82535_))))
    (define gx#bind-identifier!__0
      (lambda (_stx82542_ _val82543_)
        (let* ((_rebind?82545_ '#f)
               (_phi82547_ (gx#current-expander-phi))
               (_ctx82549_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82542_
           _val82543_
           _rebind?82545_
           _phi82547_
           _ctx82549_))))
    (define gx#bind-identifier!__1
      (lambda (_stx82551_ _val82552_ _rebind?82553_)
        (let* ((_phi82555_ (gx#current-expander-phi))
               (_ctx82557_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82551_
           _val82552_
           _rebind?82553_
           _phi82555_
           _ctx82557_))))
    (define gx#bind-identifier!__2
      (lambda (_stx82559_ _val82560_ _rebind?82561_ _phi82562_)
        (let ((_ctx82564_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82559_
           _val82560_
           _rebind?82561_
           _phi82562_
           _ctx82564_))))
    (define gx#bind-identifier!
      (lambda _g84808_
        (let ((_g84807_ (##length _g84808_)))
          (cond ((##fx= _g84807_ 2)
                 (apply (lambda (_stx82542_ _val82543_)
                          (gx#bind-identifier!__0 _stx82542_ _val82543_))
                        _g84808_))
                ((##fx= _g84807_ 3)
                 (apply (lambda (_stx82551_ _val82552_ _rebind?82553_)
                          (gx#bind-identifier!__1
                           _stx82551_
                           _val82552_
                           _rebind?82553_))
                        _g84808_))
                ((##fx= _g84807_ 4)
                 (apply (lambda (_stx82559_
                                 _val82560_
                                 _rebind?82561_
                                 _phi82562_)
                          (gx#bind-identifier!__2
                           _stx82559_
                           _val82560_
                           _rebind?82561_
                           _phi82562_))
                        _g84808_))
                ((##fx= _g84807_ 5)
                 (apply (lambda (_stx82566_
                                 _val82567_
                                 _rebind?82568_
                                 _phi82569_
                                 _ctx82570_)
                          (gx#bind-identifier!__%
                           _stx82566_
                           _val82567_
                           _rebind?82568_
                           _phi82569_
                           _ctx82570_))
                        _g84808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84808_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx82503_ _phi82504_ _ctx82505_)
        (let _lp82507_ ((_e82509_ _stx82503_)
                        (_marks82510_ (gx#current-expander-marks)))
          (if (symbol? _e82509_)
              (gx#core-resolve-binding
               _e82509_
               _phi82504_
               _phi82504_
               _ctx82505_
               (reverse _marks82510_))
              (if (gx#identifier-quote? _e82509_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e82509_ '1 gx#AST::t '#f)
                   _phi82504_
                   '0
                   (##unchecked-structure-ref
                    _e82509_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e82509_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e82509_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e82509_ '1 gx#AST::t '#f)
                       _phi82504_
                       _phi82504_
                       _ctx82505_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82509_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82510_))
                      (if (##structure-direct-instance-of?
                           _e82509_
                           'gx#syntax-wrap::t)
                          (_lp82507_
                           (##unchecked-structure-ref
                            _e82509_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e82509_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks82510_))
                          (if (##structure-instance-of?
                               _e82509_
                               'gerbil#AST::t)
                              (_lp82507_
                               (##unchecked-structure-ref
                                _e82509_
                                '1
                                gx#AST::t
                                '#f)
                               _marks82510_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx82503_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx82515_)
        (let* ((_phi82517_ (gx#current-expander-phi))
               (_ctx82519_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82515_ _phi82517_ _ctx82519_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx82521_ _phi82522_)
        (let ((_ctx82524_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82521_ _phi82522_ _ctx82524_))))
    (define gx#core-resolve-identifier
      (lambda _g84810_
        (let ((_g84809_ (##length _g84810_)))
          (cond ((##fx= _g84809_ 1)
                 (apply (lambda (_stx82515_)
                          (gx#core-resolve-identifier__0 _stx82515_))
                        _g84810_))
                ((##fx= _g84809_ 2)
                 (apply (lambda (_stx82521_ _phi82522_)
                          (gx#core-resolve-identifier__1
                           _stx82521_
                           _phi82522_))
                        _g84810_))
                ((##fx= _g84809_ 3)
                 (apply (lambda (_stx82526_ _phi82527_ _ctx82528_)
                          (gx#core-resolve-identifier__%
                           _stx82526_
                           _phi82527_
                           _ctx82528_))
                        _g84810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84810_))))))
    (define gx#core-resolve-binding
      (lambda (_id82416_ _phi82417_ _src-phi82418_ _ctx82419_ _marks82420_)
        (letrec ((_resolve82422_
                  (lambda (_ctx82490_ _src-phi82491_ _key82492_)
                    (let _lp82494_ ((_ctx82496_
                                     (gx#core-context-shift
                                      _ctx82490_
                                      _phi82417_))
                                    (_dphi82497_
                                     (fx- _phi82417_ _src-phi82491_)))
                      (let ((_$e82499_
                             (gx#core-context-resolve _ctx82496_ _key82492_)))
                        (if _$e82499_
                            (values _$e82499_)
                            (if (fxzero? _dphi82497_)
                                '#f
                                (if (fxpositive? _dphi82497_)
                                    (_lp82494_
                                     (gx#core-context-shift _ctx82496_ '-1)
                                     (fx- _dphi82497_ '1))
                                    (_lp82494_
                                     (gx#core-context-shift _ctx82496_ '1)
                                     (fx+ _dphi82497_ '1))))))))))
          (let _lp82424_ ((_ctx82426_ _ctx82419_)
                          (_src-phi82427_ _src-phi82418_)
                          (_rest82428_ _marks82420_))
            (let* ((_rest8242982437_ _rest82428_)
                   (_else8243182445_
                    (lambda ()
                      (_resolve82422_ _ctx82426_ _src-phi82427_ _id82416_)))
                   (_K8243382478_
                    (lambda (_rest82448_ _hd82449_)
                      (let* ((_hd8245082456_ _hd82449_)
                             (_E8245282460_
                              (lambda ()
                                (error '"No clause matching" _hd8245082456_)))
                             (_K8245382470_
                              (lambda (_subst82463_)
                                (let ((_$e82467_
                                       (let ((_key82465_
                                              (if _subst82463_
                                                  (hash-get
                                                   _subst82463_
                                                   _id82416_)
                                                  '#f)))
                                         (if _key82465_
                                             (_resolve82422_
                                              _ctx82426_
                                              _src-phi82427_
                                              _key82465_)
                                             '#f))))
                                  (if _$e82467_
                                      _$e82467_
                                      (_lp82424_
                                       (##unchecked-structure-ref
                                        _hd82449_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd82449_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest82448_))))))
                        (if (##structure-instance-of?
                             _hd8245082456_
                             'gx#expander-mark::t)
                            (let* ((_e8245482473_
                                    (##unchecked-structure-ref
                                     _hd8245082456_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst82476_ _e8245482473_))
                              (_K8245382470_ _subst82476_))
                            (_E8245282460_))))))
              (if (##pair? _rest8242982437_)
                  (let ((_hd8243482481_ (##car _rest8242982437_))
                        (_tl8243582483_ (##cdr _rest8242982437_)))
                    (let* ((_hd82486_ _hd8243482481_)
                           (_rest82488_ _tl8243582483_))
                      (_K8243382478_ _rest82488_ _hd82486_)))
                  (_else8243182445_)))))))
    (define gx#core-bind!__%
      (lambda (_key82292_ _val82293_ _rebind?82294_ _phi82295_ _ctx82296_)
        (letrec ((_update-binding82298_
                  (lambda (_xval82369_)
                    (if (or (_rebind?82294_ _ctx82296_ _xval82369_ _val82293_)
                            (and (##structure-direct-instance-of?
                                  _xval82369_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval82369_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val82293_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val82293_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval82369_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val82293_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val82293_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval82369_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val82293_
                        (if (and (##structure-direct-instance-of?
                                  _val82293_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val82293_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval82369_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val82293_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval82369_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval82369_
                            (if (and (##structure-direct-instance-of?
                                      _val82293_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval82369_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key82292_
                                 (cons (##unchecked-structure-ref
                                        _val82293_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val82293_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval82369_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval82369_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval82369_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval82369_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key82292_
                                 _val82293_
                                 _xval82369_))))))
                 (_gensubst82299_
                  (lambda (_subst82364_ _id82365_)
                    (let ((_eid82367_
                           (gensym (if (uninterned-symbol? _id82365_)
                                       '%
                                       _id82365_))))
                      (hash-put! _subst82364_ _id82365_ _eid82367_)
                      _eid82367_)))
                 (_subst!82300_
                  (lambda (_key82302_)
                    (let* ((_key8230382311_ _key82302_)
                           (_else8230582319_ (lambda () _key82302_))
                           (_K8230782352_
                            (lambda (_mark82322_ _id82323_)
                              (let* ((_mark8232482330_ _mark82322_)
                                     (_E8232682334_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8232482330_)))
                                     (_K8232782344_
                                      (lambda (_subst82337_)
                                        (if (not _subst82337_)
                                            (let ((_subst82339_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark82322_
                                               _subst82339_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst82299_
                                               _subst82339_
                                               _id82323_))
                                            (let ((_$e82341_
                                                   (hash-get
                                                    _subst82337_
                                                    _id82323_)))
                                              (if _$e82341_
                                                  (values _$e82341_)
                                                  (_gensubst82299_
                                                   _subst82337_
                                                   _id82323_)))))))
                                (if (##structure-instance-of?
                                     _mark8232482330_
                                     'gx#expander-mark::t)
                                    (let* ((_e8232882347_
                                            (##unchecked-structure-ref
                                             _mark8232482330_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst82350_ _e8232882347_))
                                      (_K8232782344_ _subst82350_))
                                    (_E8232682334_))))))
                      (if (##pair? _key8230382311_)
                          (let ((_hd8230882355_ (##car _key8230382311_))
                                (_tl8230982357_ (##cdr _key8230382311_)))
                            (let* ((_id82360_ _hd8230882355_)
                                   (_mark82362_ _tl8230982357_))
                              (_K8230782352_ _mark82362_ _id82360_)))
                          (_else8230582319_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx82296_ _phi82295_)
           (_subst!82300_ _key82292_)
           _val82293_
           _update-binding82298_))))
    (define gx#core-bind!__0
      (lambda (_key82386_ _val82387_)
        (let* ((_rebind?82389_ false)
               (_phi82391_ (gx#current-expander-phi))
               (_ctx82393_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82386_
           _val82387_
           _rebind?82389_
           _phi82391_
           _ctx82393_))))
    (define gx#core-bind!__1
      (lambda (_key82395_ _val82396_ _rebind?82397_)
        (let* ((_phi82399_ (gx#current-expander-phi))
               (_ctx82401_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82395_
           _val82396_
           _rebind?82397_
           _phi82399_
           _ctx82401_))))
    (define gx#core-bind!__2
      (lambda (_key82403_ _val82404_ _rebind?82405_ _phi82406_)
        (let ((_ctx82408_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82403_
           _val82404_
           _rebind?82405_
           _phi82406_
           _ctx82408_))))
    (define gx#core-bind!
      (lambda _g84812_
        (let ((_g84811_ (##length _g84812_)))
          (cond ((##fx= _g84811_ 2)
                 (apply (lambda (_key82386_ _val82387_)
                          (gx#core-bind!__0 _key82386_ _val82387_))
                        _g84812_))
                ((##fx= _g84811_ 3)
                 (apply (lambda (_key82395_ _val82396_ _rebind?82397_)
                          (gx#core-bind!__1
                           _key82395_
                           _val82396_
                           _rebind?82397_))
                        _g84812_))
                ((##fx= _g84811_ 4)
                 (apply (lambda (_key82403_
                                 _val82404_
                                 _rebind?82405_
                                 _phi82406_)
                          (gx#core-bind!__2
                           _key82403_
                           _val82404_
                           _rebind?82405_
                           _phi82406_))
                        _g84812_))
                ((##fx= _g84811_ 5)
                 (apply (lambda (_key82410_
                                 _val82411_
                                 _rebind?82412_
                                 _phi82413_
                                 _ctx82414_)
                          (gx#core-bind!__%
                           _key82410_
                           _val82411_
                           _rebind?82412_
                           _phi82413_
                           _ctx82414_))
                        _g84812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84812_))))))
    (define gx#core-identifier-key
      (lambda (_stx82226_)
        (if (symbol? _stx82226_)
            (let* ((_g8222782235_ (gx#current-expander-marks))
                   (_else8222982243_ (lambda () _stx82226_))
                   (_K8223182248_
                    (lambda (_hd82246_) (cons _stx82226_ _hd82246_))))
              (if (##pair? _g8222782235_)
                  (let* ((_hd8223282251_ (##car _g8222782235_))
                         (_hd82254_ _hd8223282251_))
                    (_K8223182248_ _hd82254_))
                  (_else8222982243_)))
            (if (gx#identifier? _stx82226_)
                (let* ((_id82256_ (gx#syntax-local-unwrap _stx82226_))
                       (_eid82258_ (gx#stx-e _id82256_))
                       (_marks82260_ (gx#stx-identifier-marks* _id82256_)))
                  (let* ((_marks8226282270_ _marks82260_)
                         (_else8226482278_ (lambda () _eid82258_))
                         (_K8226682283_
                          (lambda (_hd82281_) (cons _eid82258_ _hd82281_))))
                    (if (##pair? _marks8226282270_)
                        (let* ((_hd8226782286_ (##car _marks8226282270_))
                               (_hd82289_ _hd8226782286_))
                          (_K8226682283_ _hd82289_))
                        (_else8226482278_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx82226_)))))
    (define gx#core-context-shift
      (lambda (_ctx82171_ _phi82172_)
        (letrec ((_make-phi82174_
                  (lambda (_super82224_)
                    (let ((__obj84783
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84783
                       (gensym 'phi)
                       _super82224_)
                      __obj84783)))
                 (_make-phi/up82175_
                  (lambda (_ctx82219_ _super82220_)
                    (let ((_ctx+182222_ (_make-phi82174_ _super82220_)))
                      (##unchecked-structure-set!
                       _ctx82219_
                       _ctx+182222_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+182222_
                       _ctx82219_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+182222_)))
                 (_make-phi/down82176_
                  (lambda (_ctx82214_ _super82215_)
                    (let ((_ctx-182217_ (_make-phi82174_ _super82215_)))
                      (##unchecked-structure-set!
                       _ctx-182217_
                       _ctx82214_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx82214_
                       _ctx-182217_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-182217_)))
                 (_shift82177_
                  (lambda (_ctx82198_
                           _delta82199_
                           _make-delta-context82200_
                           _phi82201_
                           _K82202_)
                    (let ((_$e82204_
                           (##unchecked-structure-ref
                            _ctx82198_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e82204_
                          ((lambda (_super82207_)
                             (let* ((_super82209_
                                     (_K82202_ _super82207_ _delta82199_))
                                    (_ctx+d82211_
                                     (_make-delta-context82200_
                                      _ctx82198_
                                      _super82209_)))
                               (_K82202_
                                _ctx+d82211_
                                (fx- _phi82201_ _delta82199_))))
                           _$e82204_)
                          (error '"Bad context" _ctx82198_))))))
          (let _K82179_ ((_ctx82181_ _ctx82171_) (_phi82182_ _phi82172_))
            (if (fxzero? _phi82182_)
                _ctx82181_
                (if (fx> (##vector-length _ctx82181_) '3)
                    (if (fxpositive? _phi82182_)
                        (let ((_$e82184_
                               (##unchecked-structure-ref
                                _ctx82181_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e82184_
                              ((lambda (_g8218682188_)
                                 (_K82179_ _g8218682188_ (fx- _phi82182_ '1)))
                               _$e82184_)
                              (_shift82177_
                               _ctx82181_
                               '1
                               _make-phi/up82175_
                               _phi82182_
                               _K82179_)))
                        (let ((_$e82191_
                               (##unchecked-structure-ref
                                _ctx82181_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e82191_
                              ((lambda (_g8219382195_)
                                 (_K82179_ _g8219382195_ (fx+ _phi82182_ '1)))
                               _$e82191_)
                              (_shift82177_
                               _ctx82181_
                               '-1
                               _make-phi/down82176_
                               _phi82182_
                               _K82179_))))
                    _ctx82181_))))))
    (define gx#core-context-get
      (lambda (_ctx82168_ _key82169_)
        (hash-get
         (##unchecked-structure-ref _ctx82168_ '2 gx#expander-context::t '#f)
         _key82169_)))
    (define gx#core-context-put!
      (lambda (_ctx82164_ _key82165_ _val82166_)
        (hash-put!
         (##unchecked-structure-ref _ctx82164_ '2 gx#expander-context::t '#f)
         _key82165_
         _val82166_)))
    (define gx#core-context-resolve
      (lambda (_ctx82151_ _key82152_)
        (let _lp82154_ ((_ctx82156_ _ctx82151_))
          (let ((_$e82158_ (gx#core-context-get _ctx82156_ _key82152_)))
            (if _$e82158_
                (values _$e82158_)
                (let ((_$e82161_
                       (if (fx> (##vector-length _ctx82156_) '3)
                           (##unchecked-structure-ref
                            _ctx82156_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e82161_ (_lp82154_ _$e82161_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx82141_ _key82142_ _val82143_ _rebind82144_)
        (let ((_$e82146_ (gx#core-context-get _ctx82141_ _key82142_)))
          (if _$e82146_
              ((lambda (_xval82149_)
                 (gx#core-context-put!
                  _ctx82141_
                  _key82142_
                  (_rebind82144_ _xval82149_)))
               _$e82146_)
              (gx#core-context-put! _ctx82141_ _key82142_ _val82143_)))))
    (define gx#core-context-top__%
      (lambda (_ctx82119_ _stop?82120_)
        (let _lp82122_ ((_ctx82124_ _ctx82119_))
          (if (_stop?82120_ _ctx82124_)
              _ctx82124_
              (if (##structure-instance-of? _ctx82124_ 'gx#context-phi::t)
                  (_lp82122_
                   (##unchecked-structure-ref
                    _ctx82124_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx82130_ (gx#current-expander-context))
               (_stop?82132_ gx#top-context?))
          (gx#core-context-top__% _ctx82130_ _stop?82132_))))
    (define gx#core-context-top__1
      (lambda (_ctx82134_)
        (let ((_stop?82136_ gx#top-context?))
          (gx#core-context-top__% _ctx82134_ _stop?82136_))))
    (define gx#core-context-top
      (lambda _g84814_
        (let ((_g84813_ (##length _g84814_)))
          (cond ((##fx= _g84813_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84814_))
                ((##fx= _g84813_ 1)
                 (apply (lambda (_ctx82134_)
                          (gx#core-context-top__1 _ctx82134_))
                        _g84814_))
                ((##fx= _g84813_ 2)
                 (apply (lambda (_ctx82138_ _stop?82139_)
                          (gx#core-context-top__% _ctx82138_ _stop?82139_))
                        _g84814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84814_))))))
    (define gx#core-context-root__%
      (lambda (_ctx82104_)
        (let _lp82106_ ((_ctx82108_ _ctx82104_))
          (if (##structure-instance-of? _ctx82108_ 'gx#context-phi::t)
              (_lp82106_
               (##unchecked-structure-ref _ctx82108_ '3 gx#phi-context::t '#f))
              _ctx82108_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx82114_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx82114_))))
    (define gx#core-context-root
      (lambda _g84816_
        (let ((_g84815_ (##length _g84816_)))
          (cond ((##fx= _g84815_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84816_))
                ((##fx= _g84815_ 1)
                 (apply (lambda (_ctx82116_)
                          (gx#core-context-root__% _ctx82116_))
                        _g84816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84816_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx82085_ . __8208282086_)
        (let ((_$e82089_ (gx#current-expander-allow-rebind?)))
          (if _$e82089_
              _$e82089_
              (if (##structure-instance-of? _ctx82085_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx82085_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx82085_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx82096_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx82096_))))
    (define gx#core-context-rebind?
      (lambda _g84818_
        (let ((_g84817_ (##length _g84818_)))
          (cond ((##fx= _g84817_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84818_))
                ((##fx= _g84817_ 1)
                 (apply (lambda (_ctx82098_)
                          (gx#core-context-rebind?__% _ctx82098_))
                        _g84818_))
                ((##fx>= _g84817_ 1)
                 (apply gx#core-context-rebind?__% _g84818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84818_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx82068_)
        (let ((_$e82070_ (gx#core-context-top__1 _ctx82068_)))
          (if _$e82070_
              ((lambda (_ctx82073_)
                 (if (##structure-instance-of?
                      _ctx82073_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx82073_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e82070_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx82079_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx82079_))))
    (define gx#core-context-namespace
      (lambda _g84820_
        (let ((_g84819_ (##length _g84820_)))
          (cond ((##fx= _g84819_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84820_))
                ((##fx= _g84819_ 1)
                 (apply (lambda (_ctx82081_)
                          (gx#core-context-namespace__% _ctx82081_))
                        _g84820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84820_))))))
    (define gx#expander-binding?__%
      (lambda (_bind82054_ _is?82055_)
        (if (##structure-direct-instance-of? _bind82054_ 'gx#syntax-binding::t)
            (_is?82055_
             (##unchecked-structure-ref
              _bind82054_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind82060_)
        (let ((_is?82062_ gx#expander?))
          (gx#expander-binding?__% _bind82060_ _is?82062_))))
    (define gx#expander-binding?
      (lambda _g84822_
        (let ((_g84821_ (##length _g84822_)))
          (cond ((##fx= _g84821_ 1)
                 (apply (lambda (_bind82060_)
                          (gx#expander-binding?__0 _bind82060_))
                        _g84822_))
                ((##fx= _g84821_ 2)
                 (apply (lambda (_bind82064_ _is?82065_)
                          (gx#expander-binding?__% _bind82064_ _is?82065_))
                        _g84822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84822_))))))
    (define gx#core-expander-binding?
      (lambda (_bind82051_)
        (gx#expander-binding?__% _bind82051_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind82049_)
        (gx#expander-binding?__% _bind82049_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind82043_)
        (letrec ((_direct-special-form?82045_
                  (lambda (_obj82047_)
                    (##structure-direct-instance-of?
                     _obj82047_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind82043_ _direct-special-form?82045_))))
    (define gx#special-form-binding?
      (lambda (_bind82041_)
        (gx#expander-binding?__% _bind82041_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind82032_)
        (letrec ((_feature?82034_
                  (lambda (_e82036_)
                    (let ((_$e82038_
                           (##structure-instance-of?
                            _e82036_
                            'gx#feature-expander::t)))
                      (if _$e82038_
                          _$e82038_
                          (##structure-instance-of?
                           _e82036_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind82032_ _feature?82034_))))
    (define gx#private-feature-binding?
      (lambda (_bind82030_)
        (gx#expander-binding?__% _bind82030_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id82017_ _bound?82018_)
        (if (gx#identifier? _id82017_)
            (_bound?82018_ (gx#resolve-identifier__0 _id82017_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id82023_)
        (let ((_bound?82025_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id82023_ _bound?82025_))))
    (define gx#core-bound-identifier?
      (lambda _g84824_
        (let ((_g84823_ (##length _g84824_)))
          (cond ((##fx= _g84823_ 1)
                 (apply (lambda (_id82023_)
                          (gx#core-bound-identifier?__0 _id82023_))
                        _g84824_))
                ((##fx= _g84823_ 2)
                 (apply (lambda (_id82027_ _bound?82028_)
                          (gx#core-bound-identifier?__%
                           _id82027_
                           _bound?82028_))
                        _g84824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84824_))))))
    (define gx#core-identifier=?
      (lambda (_x82007_ _y82008_)
        (letrec ((_y=?82010_
                  (lambda (_xid82014_)
                    ((if (list? _y82008_) memq eq?) _xid82014_ _y82008_))))
          (let ((_bind82012_ (gx#resolve-identifier__0 _x82007_)))
            (if (##structure-instance-of? _bind82012_ 'gx#binding::t)
                (_y=?82010_
                 (##unchecked-structure-ref _bind82012_ '1 gx#binding::t '#f))
                (_y=?82010_ (gx#stx-e _x82007_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e82005_)
        (if (interned-symbol? _e82005_)
            (string-index__0 (symbol->string _e82005_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81960_ _src81961_ _ctx81962_ _marks81963_)
        (if (##structure? _stx81960_)
            (let ((_$e81965_ (gx#sealed-syntax-unwrap _stx81960_)))
              (if _$e81965_
                  (values _$e81965_)
                  (if (gx#identifier? _stx81960_)
                      (let ((_id81968_
                             (gx#stx-unwrap__% _stx81960_ _marks81963_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81968_ '1 gx#AST::t '#f)
                         (let ((_$e81970_
                                (##unchecked-structure-ref
                                 _id81968_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e81970_ _$e81970_ _src81961_))
                         _ctx81962_
                         (##unchecked-structure-ref
                          _id81968_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81960_)
                       (let ((_$e81973_ (gx#stx-source _stx81960_)))
                         (if _$e81973_ _$e81973_ _src81961_))
                       _ctx81962_
                       (reverse _marks81963_)))))
            (##structure
             gx#syntax-quote::t
             _stx81960_
             _src81961_
             _ctx81962_
             (reverse _marks81963_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81979_)
        (let* ((_src81981_ '#f)
               (_ctx81983_ (gx#current-expander-context))
               (_marks81985_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81979_
           _src81981_
           _ctx81983_
           _marks81985_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81987_ _src81988_)
        (let* ((_ctx81990_ (gx#current-expander-context))
               (_marks81992_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81987_
           _src81988_
           _ctx81990_
           _marks81992_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81994_ _src81995_ _ctx81996_)
        (let ((_marks81998_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81994_
           _src81995_
           _ctx81996_
           _marks81998_))))
    (define gx#core-quote-syntax
      (lambda _g84826_
        (let ((_g84825_ (##length _g84826_)))
          (cond ((##fx= _g84825_ 1)
                 (apply (lambda (_stx81979_)
                          (gx#core-quote-syntax__0 _stx81979_))
                        _g84826_))
                ((##fx= _g84825_ 2)
                 (apply (lambda (_stx81987_ _src81988_)
                          (gx#core-quote-syntax__1 _stx81987_ _src81988_))
                        _g84826_))
                ((##fx= _g84825_ 3)
                 (apply (lambda (_stx81994_ _src81995_ _ctx81996_)
                          (gx#core-quote-syntax__2
                           _stx81994_
                           _src81995_
                           _ctx81996_))
                        _g84826_))
                ((##fx= _g84825_ 4)
                 (apply (lambda (_stx82000_ _src82001_ _ctx82002_ _marks82003_)
                          (gx#core-quote-syntax__%
                           _stx82000_
                           _src82001_
                           _ctx82002_
                           _marks82003_))
                        _g84826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84826_))))))
    (define gx#core-cons
      (lambda (_hd81956_ _tl81957_)
        (cons (gx#core-quote-syntax__0 _hd81956_) _tl81957_)))
    (define gx#core-list
      (lambda (_hd81953_ . _rest81954_)
        (cons (gx#core-quote-syntax__0 _hd81953_) _rest81954_)))
    (define gx#core-cons*
      (lambda (_hd81950_ . _rest81951_)
        (apply cons* (gx#core-quote-syntax__0 _hd81950_) _rest81951_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81924_ _rel81925_)
        (let ((_path81937_ (gx#stx-e _stx-path81924_))
              (_reldir81938_
               (let _lp81927_ ((_relsrc81929_
                                (let ((_$e81934_
                                       (gx#stx-source _stx-path81924_)))
                                  (if _$e81934_ _$e81934_ _rel81925_))))
                 (if (##structure-instance-of? _relsrc81929_ 'gerbil#AST::t)
                     (_lp81927_
                      (let ((_$e81931_ (gx#stx-source _relsrc81929_)))
                        (if _$e81931_ _$e81931_ (gx#stx-e _relsrc81929_))))
                     (if (source-location-path? _relsrc81929_)
                         (path-directory (source-location-path _relsrc81929_))
                         (if (string? _relsrc81929_)
                             (path-directory _relsrc81929_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81937_ (path-normalize _reldir81938_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81943_)
        (let ((_rel81945_ '#f))
          (gx#core-resolve-path__% _stx-path81943_ _rel81945_))))
    (define gx#core-resolve-path
      (lambda _g84828_
        (let ((_g84827_ (##length _g84828_)))
          (cond ((##fx= _g84827_ 1)
                 (apply (lambda (_stx-path81943_)
                          (gx#core-resolve-path__0 _stx-path81943_))
                        _g84828_))
                ((##fx= _g84827_ 2)
                 (apply (lambda (_stx-path81947_ _rel81948_)
                          (gx#core-resolve-path__% _stx-path81947_ _rel81948_))
                        _g84828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84828_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81880_ _ctx81881_)
        (let* ((_repr8188281889_ _repr81880_)
               (_E8188481893_
                (lambda () (error '"No clause matching" _repr8188281889_)))
               (_K8188581901_
                (lambda (_subs81896_ _phi81897_)
                  (let ((_subst81899_
                         (if (not (null? _subs81896_))
                             (list->hash-table-eq _subs81896_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81899_
                     _ctx81881_
                     _phi81897_
                     '#f)))))
          (if (##pair? _repr8188281889_)
              (let ((_hd8188681904_ (##car _repr8188281889_))
                    (_tl8188781906_ (##cdr _repr8188281889_)))
                (let* ((_phi81909_ _hd8188681904_)
                       (_subs81911_ _tl8188781906_))
                  (_K8188581901_ _subs81911_ _phi81909_)))
              (_E8188481893_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81916_)
        (let ((_ctx81918_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81916_ _ctx81918_))))
    (define gx#core-deserialize-mark
      (lambda _g84830_
        (let ((_g84829_ (##length _g84830_)))
          (cond ((##fx= _g84829_ 1)
                 (apply (lambda (_repr81916_)
                          (gx#core-deserialize-mark__0 _repr81916_))
                        _g84830_))
                ((##fx= _g84829_ 2)
                 (apply (lambda (_repr81920_ _ctx81921_)
                          (gx#core-deserialize-mark__% _repr81920_ _ctx81921_))
                        _g84830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84830_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81877_)
        (gx#stx-rewrap _stx81877_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81875_)
        (gx#stx-unwrap__% _stx81875_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81845_)
        (let* ((_g8184681854_ (gx#current-expander-marks))
               (_else8184881862_ (lambda () _stx81845_))
               (_K8185081867_
                (lambda (_hd81865_) (gx#stx-apply-mark _stx81845_ _hd81865_))))
          (if (##pair? _g8184681854_)
              (let* ((_hd8185181870_ (##car _g8184681854_))
                     (_hd81873_ _hd8185181870_))
                (_K8185081867_ _hd81873_))
              (_else8184881862_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81830_ _E81831_)
        (let ((_bind81833_ (gx#resolve-identifier__0 _stx81830_)))
          (if (##structure-direct-instance-of?
               _bind81833_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind81833_
               '4
               gx#syntax-binding::t
               '#f)
              (_E81831_ _stx81830_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81838_)
        (let ((_E81840_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81838_ _E81840_))))
    (define gx#syntax-local-e
      (lambda _g84832_
        (let ((_g84831_ (##length _g84832_)))
          (cond ((##fx= _g84831_ 1)
                 (apply (lambda (_stx81838_) (gx#syntax-local-e__0 _stx81838_))
                        _g84832_))
                ((##fx= _g84831_ 2)
                 (apply (lambda (_stx81842_ _E81843_)
                          (gx#syntax-local-e__% _stx81842_ _E81843_))
                        _g84832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84832_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81814_ _E81815_)
        (let ((_e81817_ (gx#syntax-local-e__% _stx81814_ _E81815_)))
          (if (##structure-instance-of? _e81817_ 'gx#expander::t)
              (##structure-ref _e81817_ '1 gx#expander::t '#f)
              _e81817_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81822_)
        (let ((_E81824_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81822_ _E81824_))))
    (define gx#syntax-local-value
      (lambda _g84834_
        (let ((_g84833_ (##length _g84834_)))
          (cond ((##fx= _g84833_ 1)
                 (apply (lambda (_stx81822_)
                          (gx#syntax-local-value__0 _stx81822_))
                        _g84834_))
                ((##fx= _g84833_ 2)
                 (apply (lambda (_stx81826_ _E81827_)
                          (gx#syntax-local-value__% _stx81826_ _E81827_))
                        _g84834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84834_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81811_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81811_)))))
