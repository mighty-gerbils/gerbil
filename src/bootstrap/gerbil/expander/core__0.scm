(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708168069)
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
      (lambda _$args152881_
        (apply make-instance gx#expander-context::t _$args152881_)))
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
      (lambda _$args152878_
        (apply make-instance gx#root-context::t _$args152878_)))
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
      (lambda _$args152875_
        (apply make-instance gx#phi-context::t _$args152875_)))
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
      (lambda _$args152872_
        (apply make-instance gx#top-context::t _$args152872_)))
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
      (lambda _$args152869_
        (apply make-instance gx#module-context::t _$args152869_)))
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
      (lambda _$args152866_
        (apply make-instance gx#prelude-context::t _$args152866_)))
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
      (lambda _$args152863_
        (apply make-instance gx#local-context::t _$args152863_)))
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
      (lambda (_self152847_ _id152848_ _super152849_)
        (if (##fx< '3 (##structure-length _self152847_))
            (begin
              (##unchecked-structure-set!
               _self152847_
               _id152848_
               '1
               (##structure-type _self152847_)
               '#f)
              (##unchecked-structure-set!
               _self152847_
               (make-table 'test: eq?)
               '2
               (##structure-type _self152847_)
               '#f)
              (##unchecked-structure-set!
               _self152847_
               _super152849_
               '3
               (##structure-type _self152847_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self152847_
                   '3
                   (##vector-length _self152847_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self152854_ _id152855_)
        (let ((_super152857_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self152854_ _id152855_ _super152857_))))
    (define gx#phi-context:::init!
      (lambda _g157492_
        (let ((_g157491_ (##length _g157492_)))
          (cond ((##fx= _g157491_ 2)
                 (apply (lambda (_self152854_ _id152855_)
                          (gx#phi-context:::init!__0 _self152854_ _id152855_))
                        _g157492_))
                ((##fx= _g157491_ 3)
                 (apply (lambda (_self152859_ _id152860_ _super152861_)
                          (gx#phi-context:::init!__%
                           _self152859_
                           _id152860_
                           _super152861_))
                        _g157492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g157492_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self152711_ _super152712_)
        (if (##fx< '3 (##structure-length _self152711_))
            (begin
              (##unchecked-structure-set!
               _self152711_
               (gensym 'L)
               '1
               (##structure-type _self152711_)
               '#f)
              (##unchecked-structure-set!
               _self152711_
               (make-table 'test: eq?)
               '2
               (##structure-type _self152711_)
               '#f)
              (##unchecked-structure-set!
               _self152711_
               _super152712_
               '3
               (##structure-type _self152711_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self152711_
                   '3
                   (##vector-length _self152711_)))))
    (define gx#local-context:::init!__0
      (lambda (_self152717_)
        (let ((_super152719_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self152717_ _super152719_))))
    (define gx#local-context:::init!
      (lambda _g157494_
        (let ((_g157493_ (##length _g157494_)))
          (cond ((##fx= _g157493_ 1)
                 (apply (lambda (_self152717_)
                          (gx#local-context:::init!__0 _self152717_))
                        _g157494_))
                ((##fx= _g157493_ 2)
                 (apply (lambda (_self152721_ _super152722_)
                          (gx#local-context:::init!__%
                           _self152721_
                           _super152722_))
                        _g157494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g157494_))))))
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
      (lambda _$args152585_ (apply make-instance gx#binding::t _$args152585_)))
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
      (lambda _$args152582_
        (apply make-instance gx#runtime-binding::t _$args152582_)))
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
      (lambda _$args152579_
        (apply make-instance gx#local-binding::t _$args152579_)))
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
      (lambda _$args152576_
        (apply make-instance gx#top-binding::t _$args152576_)))
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
      (lambda _$args152573_
        (apply make-instance gx#module-binding::t _$args152573_)))
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
      (lambda _$args152570_
        (apply make-instance gx#extern-binding::t _$args152570_)))
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
      (lambda _$args152567_
        (apply make-instance gx#syntax-binding::t _$args152567_)))
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
      (lambda _$args152564_
        (apply make-instance gx#import-binding::t _$args152564_)))
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
      (lambda _$args152561_
        (apply make-instance gx#alias-binding::t _$args152561_)))
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
      (lambda _$args152558_
        (apply make-instance gx#expander::t _$args152558_)))
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
      (lambda _$args152555_
        (apply make-instance gx#core-expander::t _$args152555_)))
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
      (lambda _$args152552_
        (apply make-instance gx#expression-form::t _$args152552_)))
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
      (lambda _$args152549_
        (apply make-instance gx#special-form::t _$args152549_)))
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
      (lambda _$args152546_
        (apply make-instance gx#definition-form::t _$args152546_)))
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
      (lambda _$args152543_
        (apply make-instance gx#top-special-form::t _$args152543_)))
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
      (lambda _$args152540_
        (apply make-instance gx#module-special-form::t _$args152540_)))
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
      (lambda _$args152537_
        (apply make-instance gx#feature-expander::t _$args152537_)))
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
      (lambda _$args152534_
        (apply make-instance gx#private-feature-expander::t _$args152534_)))
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
      (lambda _$args152531_
        (apply make-instance gx#reserved-expander::t _$args152531_)))
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
      (lambda _$args152528_
        (apply make-instance gx#macro-expander::t _$args152528_)))
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
      (lambda _$args152525_
        (apply make-instance gx#rename-macro-expander::t _$args152525_)))
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
      (lambda _$args152522_
        (apply make-instance gx#user-expander::t _$args152522_)))
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
      (lambda _$args152519_
        (apply make-instance gx#expander-mark::t _$args152519_)))
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
      (lambda (_ctx152504_ _message152505_ _stx152506_ . _details152507_)
        (let ((_ctx152517_
               (let ((_$e152509_ _ctx152504_))
                 (if _$e152509_
                     _$e152509_
                     (let ((_$e152512_ (gx#core-context-top__0)))
                       (if _$e152512_
                           ((lambda (_ctx152515_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx152515_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e152512_)
                           '#f))))))
          (raise (make-syntax-error
                  _message152505_
                  (cons _stx152506_ _details152507_)
                  _ctx152517_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx152491_ _expression?152492_)
        (gx#eval-syntax* (gx#core-expand__% _stx152491_ _expression?152492_))))
    (define gx#eval-syntax__0
      (lambda (_stx152497_)
        (let ((_expression?152499_ '#f))
          (gx#eval-syntax__% _stx152497_ _expression?152499_))))
    (define gx#eval-syntax
      (lambda _g157496_
        (let ((_g157495_ (##length _g157496_)))
          (cond ((##fx= _g157495_ 1)
                 (apply (lambda (_stx152497_) (gx#eval-syntax__0 _stx152497_))
                        _g157496_))
                ((##fx= _g157495_ 2)
                 (apply (lambda (_stx152501_ _expression?152502_)
                          (gx#eval-syntax__% _stx152501_ _expression?152502_))
                        _g157496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g157496_))))))
    (define gx#eval-syntax*
      (lambda (_stx152488_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx152488_))))
    (define gx#core-expand__%
      (lambda (_stx152475_ _expression?152476_)
        (if _expression?152476_
            (gx#core-expand-expression _stx152475_)
            (gx#core-expand-top _stx152475_))))
    (define gx#core-expand__0
      (lambda (_stx152481_)
        (let ((_expression?152483_ '#f))
          (gx#core-expand__% _stx152481_ _expression?152483_))))
    (define gx#core-expand
      (lambda _g157498_
        (let ((_g157497_ (##length _g157498_)))
          (cond ((##fx= _g157497_ 1)
                 (apply (lambda (_stx152481_) (gx#core-expand__0 _stx152481_))
                        _g157498_))
                ((##fx= _g157497_ 2)
                 (apply (lambda (_stx152485_ _expression?152486_)
                          (gx#core-expand__% _stx152485_ _expression?152486_))
                        _g157498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g157498_))))))
    (define gx#core-expand-top
      (lambda (_stx152442_)
        (let* ((_stx152444_ (gx#core-expand*__0 _stx152442_))
               (_e152445152452_ _stx152444_)
               (_E152447152456_
                (lambda () (gx#core-expand-expression _stx152444_)))
               (_E152446152470_
                (lambda ()
                  (if (gx#stx-pair? _e152445152452_)
                      (let ((_e152448152460_ (gx#syntax-e _e152445152452_)))
                        (let ((_hd152449152463_ (##car _e152448152460_))
                              (_tl152450152465_ (##cdr _e152448152460_)))
                          (let ((_form152468_ _hd152449152463_))
                            (if (gx#core-bound-identifier?__0 _form152468_)
                                _stx152444_
                                (_E152447152456_)))))
                      (_E152447152456_)))))
          (_E152446152470_))))
    (define gx#core-expand-expression
      (lambda (_stx152389_)
        (letrec ((_sealed-expression?152391_
                  (lambda (_hd152412_)
                    (if (gx#sealed-syntax? _hd152412_)
                        (let* ((_e152413152420_ _hd152412_)
                               (_E152415152424_ (lambda () '#f))
                               (_E152414152438_
                                (lambda ()
                                  (if (gx#stx-pair? _e152413152420_)
                                      (let ((_e152416152428_
                                             (gx#syntax-e _e152413152420_)))
                                        (let ((_hd152417152431_
                                               (##car _e152416152428_))
                                              (_tl152418152433_
                                               (##cdr _e152416152428_)))
                                          (let ((_form152436_
                                                 _hd152417152431_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form152436_
                                                 gx#expression-form-binding?)
                                                (_E152415152424_)))))
                                      (_E152415152424_)))))
                          (_E152414152438_))
                        '#f)))
                 (_illegal-expression152392_
                  (lambda (_hd152410_ . _g157499_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx152389_
                     _hd152410_)))
                 (_expand-e152393_
                  (lambda (_form152405_ _hd152406_)
                    (let ((_bind152408_
                           (if (##structure-instance-of?
                                _form152405_
                                'gx#binding::t)
                               _form152405_
                               (gx#resolve-identifier__0 _form152405_))))
                      (if (gx#core-expander-binding? _bind152408_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind152408_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd152406_
                            (gx#stx-source _stx152389_)))
                          (if (##structure-direct-instance-of?
                               _bind152408_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind152408_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd152406_
                                 (gx#stx-source _stx152389_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx152389_
                               _form152405_)))))))
          (let ((_hd152395_ (gx#core-expand-head _stx152389_)))
            (if (_sealed-expression?152391_ _hd152395_)
                _hd152395_
                (if (gx#stx-pair? _hd152395_)
                    (let* ((_form152397_ (gx#stx-car _hd152395_))
                           (_bind152399_
                            (if (gx#identifier? _form152397_)
                                (gx#resolve-identifier__0 _form152397_)
                                '#f)))
                      (if (or (not _bind152399_)
                              (not (gx#core-expander-binding? _bind152399_)))
                          (_expand-e152393_ '%%app (cons '%%app _hd152395_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind152399_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd152395_
                               _illegal-expression152392_)
                              (if (gx#expression-form-binding? _bind152399_)
                                  (_expand-e152393_ _bind152399_ _hd152395_)
                                  (if (gx#direct-special-form-binding?
                                       _bind152399_)
                                      (gx#core-expand-expression
                                       (_expand-e152393_
                                        _bind152399_
                                        _hd152395_))
                                      (_illegal-expression152392_
                                       _hd152395_))))))
                    (if (gx#core-bound-identifier?__0 _hd152395_)
                        (_illegal-expression152392_ _hd152395_)
                        (if (gx#identifier? _hd152395_)
                            (_expand-e152393_
                             '%%ref
                             (cons '%%ref (cons _hd152395_ '())))
                            (if (gx#stx-datum? _hd152395_)
                                (_expand-e152393_
                                 '%#quote
                                 (cons '%#quote (cons _hd152395_ '())))
                                (_illegal-expression152392_
                                 _hd152395_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx152384_)
        (call-with-parameters
         (lambda ()
           (let ((_stx152387_ (gx#core-expand-expression _stx152384_)))
             (values _stx152387_ (gx#eval-syntax* _stx152387_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx152365_ _stop?152366_)
        (let _lp152368_ ((_stx152370_ _stx152365_))
          (if (_stop?152366_ _stx152370_)
              _stx152370_
              (let ((_rstx152372_ (gx#core-expand1 _stx152370_)))
                (if (eq? _stx152370_ _rstx152372_)
                    _stx152370_
                    (_lp152368_ _rstx152372_)))))))
    (define gx#core-expand*__0
      (lambda (_stx152377_)
        (let ((_stop?152379_ false))
          (gx#core-expand*__% _stx152377_ _stop?152379_))))
    (define gx#core-expand*
      (lambda _g157501_
        (let ((_g157500_ (##length _g157501_)))
          (cond ((##fx= _g157500_ 1)
                 (apply (lambda (_stx152377_) (gx#core-expand*__0 _stx152377_))
                        _g157501_))
                ((##fx= _g157500_ 2)
                 (apply (lambda (_stx152381_ _stop?152382_)
                          (gx#core-expand*__% _stx152381_ _stop?152382_))
                        _g157501_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g157501_))))))
    (define gx#core-expand1
      (lambda (_stx152321_)
        (letrec ((_step152323_
                  (lambda (_hd152360_)
                    (let ((_bind152362_ (gx#resolve-identifier__0 _hd152360_)))
                      (if (##structure-instance-of?
                           _bind152362_
                           'gx#runtime-binding::t)
                          _stx152321_
                          (if (##structure-direct-instance-of?
                               _bind152362_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind152362_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx152321_)
                              (if (not _bind152362_)
                                  _stx152321_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx152321_))))))))
          (let* ((_e152324152332_ _stx152321_)
                 (_E152330152336_ (lambda () _stx152321_))
                 (_E152326152342_
                  (lambda ()
                    (let ((_hd152340_ _e152324152332_))
                      (if (gx#identifier? _hd152340_)
                          (_step152323_ _hd152340_)
                          (_E152330152336_)))))
                 (_E152325152356_
                  (lambda ()
                    (if (gx#stx-pair? _e152324152332_)
                        (let ((_e152327152346_ (gx#syntax-e _e152324152332_)))
                          (let ((_hd152328152349_ (##car _e152327152346_))
                                (_tl152329152351_ (##cdr _e152327152346_)))
                            (let ((_hd152354_ _hd152328152349_))
                              (if (gx#identifier? _hd152354_)
                                  (_step152323_ _hd152354_)
                                  (_E152326152342_)))))
                        (_E152326152342_)))))
            (_E152325152356_)))))
    (define gx#core-expand-head
      (lambda (_stx152287_)
        (letrec ((_stop?152289_
                  (lambda (_stx152291_)
                    (let* ((_e152292152299_ _stx152291_)
                           (_E152294152303_ (lambda () '#f))
                           (_E152293152317_
                            (lambda ()
                              (if (gx#stx-pair? _e152292152299_)
                                  (let ((_e152295152307_
                                         (gx#syntax-e _e152292152299_)))
                                    (let ((_hd152296152310_
                                           (##car _e152295152307_))
                                          (_tl152297152312_
                                           (##cdr _e152295152307_)))
                                      (let ((_hd152315_ _hd152296152310_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd152315_)
                                            (_E152294152303_)))))
                                  (_E152294152303_)))))
                      (_E152293152317_)))))
          (gx#core-expand*__% _stx152287_ _stop?152289_))))
    (define gx#core-expand-block__%
      (lambda (_stx152093_
               _expand-special152094_
               _begin-form152095_
               _expand-e152096_)
        (letrec ((_expand-splice152098_
                  (lambda (_hd152261_ _body152262_ _rest152263_ _r152264_)
                    (if (gx#stx-list? _body152262_)
                        (_K152102_
                         (gx#stx-foldr cons _rest152263_ _body152262_)
                         _r152264_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx152093_
                         _hd152261_))))
                 (_expand-cond-expand152099_
                  (lambda (_hd152257_ _rest152258_ _r152259_)
                    (_K152102_
                     (cons (gx#core-expand-cond-expand% _hd152257_)
                           _rest152258_)
                     _r152259_)))
                 (_expand-include152100_
                  (lambda (_hd152206_ _rest152207_ _r152208_)
                    (let* ((_e152209152219_ _hd152206_)
                           (_E152211152223_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152209152219_)))
                           (_E152210152253_
                            (lambda ()
                              (if (gx#stx-pair? _e152209152219_)
                                  (let ((_e152212152227_
                                         (gx#syntax-e _e152209152219_)))
                                    (let ((_hd152213152230_
                                           (##car _e152212152227_))
                                          (_tl152214152232_
                                           (##cdr _e152212152227_)))
                                      (if (gx#stx-pair? _tl152214152232_)
                                          (let ((_e152215152235_
                                                 (gx#syntax-e
                                                  _tl152214152232_)))
                                            (let ((_hd152216152238_
                                                   (##car _e152215152235_))
                                                  (_tl152217152240_
                                                   (##cdr _e152215152235_)))
                                              (let ((_path152243_
                                                     _hd152216152238_))
                                                (if (gx#stx-null?
                                                     _tl152217152240_)
                                                    (if (gx#stx-string?
                                                         _path152243_)
                                                        (let* ((_rpath152245_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path152243_
                         (gx#stx-source _hd152206_)))
                       (_block152247_
                        (gx#core-expand-include%__% _hd152206_ _rpath152245_))
                       (_rbody152250_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block152247_
                            _expand-special152094_
                            '#f
                            _expand-e152096_))
                         gx#current-expander-path
                         (cons _rpath152245_ (gx#current-expander-path)))))
                  (_K152102_
                   _rest152207_
                   (foldr1 cons _r152208_ _rbody152250_)))
                (_E152211152223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152211152223_)))))
                                          (_E152211152223_))))
                                  (_E152211152223_)))))
                      (_E152210152253_))))
                 (_expand-expression152101_
                  (lambda (_hd152202_ _rest152203_ _r152204_)
                    (_K152102_
                     _rest152203_
                     (cons (_expand-e152096_ _hd152202_) _r152204_))))
                 (_K152102_
                  (lambda (_rest152132_ _r152133_)
                    (let* ((_e152134152141_ _rest152132_)
                           (_E152136152145_
                            (lambda ()
                              (if _begin-form152095_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form152095_
                                    (reverse _r152133_))
                                   (gx#stx-source _stx152093_))
                                  _r152133_)))
                           (_E152135152198_
                            (lambda ()
                              (if (gx#stx-pair? _e152134152141_)
                                  (let ((_e152137152149_
                                         (gx#syntax-e _e152134152141_)))
                                    (let ((_hd152138152152_
                                           (##car _e152137152149_))
                                          (_tl152139152154_
                                           (##cdr _e152137152149_)))
                                      (let* ((_hd152157_ _hd152138152152_)
                                             (_rest152159_ _tl152139152154_))
                                        (if '#t
                                            (let* ((_hd152161_
                                                    (gx#core-expand-head
                                                     _hd152157_))
                                                   (_e152162152169_ _hd152161_)
                                                   (_E152164152173_
                                                    (lambda ()
                                                      (_expand-expression152101_
                                                       _hd152161_
                                                       _rest152159_
                                                       _r152133_)))
                                                   (_E152163152194_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e152162152169_)
                                                          (let ((_e152165152177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e152162152169_)))
                    (let ((_hd152166152180_ (##car _e152165152177_))
                          (_tl152167152182_ (##cdr _e152165152177_)))
                      (let* ((_form152185_ _hd152166152180_)
                             (_body152187_ _tl152167152182_))
                        (if '#t
                            (let ((_bind152189_
                                   (if (gx#identifier? _form152185_)
                                       (gx#resolve-identifier__0 _form152185_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind152189_)
                                  (let ((_$e152191_
                                         (##unchecked-structure-ref
                                          _bind152189_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e152191_)
                                        (_expand-splice152098_
                                         _hd152161_
                                         _body152187_
                                         _rest152159_
                                         _r152133_)
                                        (if (eq? '%#cond-expand _$e152191_)
                                            (_expand-cond-expand152099_
                                             _hd152161_
                                             _rest152159_
                                             _r152133_)
                                            (if (eq? '%#include _$e152191_)
                                                (_expand-include152100_
                                                 _hd152161_
                                                 _rest152159_
                                                 _r152133_)
                                                (_expand-special152094_
                                                 _hd152161_
                                                 _K152102_
                                                 _rest152159_
                                                 _r152133_)))))
                                  (_expand-expression152101_
                                   _hd152161_
                                   _rest152159_
                                   _r152133_)))
                            (_E152164152173_)))))
                  (_E152164152173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152163152194_))
                                            (_E152136152145_)))))
                                  (_E152136152145_)))))
                      (_E152135152198_)))))
          (let* ((_e152103152110_ _stx152093_)
                 (_E152105152114_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152103152110_)))
                 (_E152104152128_
                  (lambda ()
                    (if (gx#stx-pair? _e152103152110_)
                        (let ((_e152106152118_ (gx#syntax-e _e152103152110_)))
                          (let ((_hd152107152121_ (##car _e152106152118_))
                                (_tl152108152123_ (##cdr _e152106152118_)))
                            (let ((_body152126_ _tl152108152123_))
                              (if (gx#stx-list? _body152126_)
                                  (_K152102_ _body152126_ '())
                                  (_E152105152114_)))))
                        (_E152105152114_)))))
            (_E152104152128_)))))
    (define gx#core-expand-block__0
      (lambda (_stx152269_ _expand-special152270_)
        (let* ((_begin-form152272_ '%#begin)
               (_expand-e152274_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx152269_
           _expand-special152270_
           _begin-form152272_
           _expand-e152274_))))
    (define gx#core-expand-block__1
      (lambda (_stx152276_ _expand-special152277_ _begin-form152278_)
        (let ((_expand-e152280_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx152276_
           _expand-special152277_
           _begin-form152278_
           _expand-e152280_))))
    (define gx#core-expand-block
      (lambda _g157503_
        (let ((_g157502_ (##length _g157503_)))
          (cond ((##fx= _g157502_ 2)
                 (apply (lambda (_stx152269_ _expand-special152270_)
                          (gx#core-expand-block__0
                           _stx152269_
                           _expand-special152270_))
                        _g157503_))
                ((##fx= _g157502_ 3)
                 (apply (lambda (_stx152276_
                                 _expand-special152277_
                                 _begin-form152278_)
                          (gx#core-expand-block__1
                           _stx152276_
                           _expand-special152277_
                           _begin-form152278_))
                        _g157503_))
                ((##fx= _g157502_ 4)
                 (apply (lambda (_stx152282_
                                 _expand-special152283_
                                 _begin-form152284_
                                 _expand-e152285_)
                          (gx#core-expand-block__%
                           _stx152282_
                           _expand-special152283_
                           _begin-form152284_
                           _expand-e152285_))
                        _g157503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g157503_))))))
    (define gx#core-expand-block*
      (lambda (_stx152041_ _expand-special152042_)
        (let* ((_g152043152054_
                (gx#core-expand-block__1
                 _stx152041_
                 _expand-special152042_
                 '#f))
               (_E152047152058_
                (lambda () (error '"No clause matching" _g152043152054_))))
          (let ((_K152052152089_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx152041_)))
                (_K152049152075_ (lambda (_expr152073_) _expr152073_))
                (_K152048152064_
                 (lambda (_body152062_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body152062_))
                    (gx#stx-source _stx152041_)))))
            (let ((_try-match152045152085_
                   (lambda ()
                     (if (##pair? _g152043152054_)
                         (let ((_tl152051152080_ (##cdr _g152043152054_))
                               (_hd152050152078_ (##car _g152043152054_)))
                           (if (##null? _tl152051152080_)
                               (let ((_expr152083_ _hd152050152078_))
                                 (_K152049152075_ _expr152083_))
                               (let ((_body152067_ _g152043152054_))
                                 (_K152048152064_ _body152067_))))
                         (let ((_body152067_ _g152043152054_))
                           (_K152048152064_ _body152067_))))))
              (if (##null? _g152043152054_)
                  (_K152052152089_)
                  (_try-match152045152085_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx151869_)
        (letrec ((_satisfied?151871_
                  (lambda (_condition151969_)
                    (let* ((_e151970151985_ _condition151969_)
                           (_E151980151989_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e151970151985_)))
                           (_E151973152008_
                            (lambda ()
                              (if (gx#stx-pair? _e151970151985_)
                                  (let ((_e151981151993_
                                         (gx#syntax-e _e151970151985_)))
                                    (let ((_hd151982151996_
                                           (##car _e151981151993_))
                                          (_tl151983151998_
                                           (##cdr _e151981151993_)))
                                      (let* ((_combinator152001_
                                              _hd151982151996_)
                                             (_body152003_ _tl151983151998_))
                                        (if (gx#stx-list? _body152003_)
                                            (let ((_$e152005_
                                                   (gx#stx-e
                                                    _combinator152001_)))
                                              (if (eq? 'not _$e152005_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?151871_
                                                        _body152003_))
                                                  (if (eq? 'and _$e152005_)
                                                      (gx#stx-andmap
                                                       _satisfied?151871_
                                                       _body152003_)
                                                      (if (eq? 'or _$e152005_)
                                                          (gx#stx-ormap
                                                           _satisfied?151871_
                                                           _body152003_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e152005_)
                      (gx#stx-andmap gx#core-resolve-identifier _body152003_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx151869_
                       _combinator152001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E151980151989_)))))
                                  (_E151980151989_))))
                           (_E151972152031_
                            (lambda ()
                              (if (gx#stx-pair? _e151970151985_)
                                  (let ((_e151974152012_
                                         (gx#syntax-e _e151970151985_)))
                                    (let ((_hd151975152015_
                                           (##car _e151974152012_))
                                          (_tl151976152017_
                                           (##cdr _e151974152012_)))
                                      (if (and (gx#identifier?
                                                _hd151975152015_)
                                               (gx#core-identifier=?
                                                _hd151975152015_
                                                'unquote))
                                          (if (gx#stx-pair? _tl151976152017_)
                                              (let ((_e151977152020_
                                                     (gx#syntax-e
                                                      _tl151976152017_)))
                                                (let ((_hd151978152023_
                                                       (##car _e151977152020_))
                                                      (_tl151979152025_
                                                       (##cdr _e151977152020_)))
                                                  (let ((_expr152028_
                                                         _hd151978152023_))
                                                    (if (gx#stx-null?
                                                         _tl151979152025_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr152028_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E151973152008_))
                (_E151973152008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E151973152008_))
                                          (_E151973152008_))))
                                  (_E151973152008_))))
                           (_E151971152037_
                            (lambda ()
                              (let ((_id152035_ _e151970151985_))
                                (if (gx#identifier? _id152035_)
                                    (gx#core-bound-identifier?__%
                                     _id152035_
                                     gx#feature-binding?)
                                    (_E151972152031_))))))
                      (_E151971152037_))))
                 (_loop151872_
                  (lambda (_rest151902_)
                    (let* ((_e151903151911_ _rest151902_)
                           (_E151909151915_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e151903151911_)))
                           (_E151905151919_
                            (lambda ()
                              (if (gx#stx-null? _e151903151911_)
                                  (if '#t '() (_E151909151915_))
                                  (_E151909151915_))))
                           (_E151904151965_
                            (lambda ()
                              (if (gx#stx-pair? _e151903151911_)
                                  (let ((_e151906151923_
                                         (gx#syntax-e _e151903151911_)))
                                    (let ((_hd151907151926_
                                           (##car _e151906151923_))
                                          (_tl151908151928_
                                           (##cdr _e151906151923_)))
                                      (let* ((_hd151931_ _hd151907151926_)
                                             (_rest151933_ _tl151908151928_))
                                        (if '#t
                                            (let* ((_e151934151941_ _hd151931_)
                                                   (_E151936151945_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e151934151941_)))
                                                   (_E151935151961_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e151934151941_)
                                                          (let ((_e151937151949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e151934151941_)))
                    (let ((_hd151938151952_ (##car _e151937151949_))
                          (_tl151939151954_ (##cdr _e151937151949_)))
                      (let* ((_condition151957_ _hd151938151952_)
                             (_body151959_ _tl151939151954_))
                        (if '#t
                            (if (gx#stx-eq? _condition151957_ 'else)
                                (if (gx#stx-null? _rest151933_)
                                    _body151959_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx151869_
                                     _hd151931_))
                                (if (_satisfied?151871_ _condition151957_)
                                    _body151959_
                                    (_loop151872_ _rest151933_)))
                            (_E151936151945_)))))
                  (_E151936151945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E151935151961_))
                                            (_E151905151919_)))))
                                  (_E151905151919_)))))
                      (_E151904151965_)))))
          (let* ((_e151873151880_ _stx151869_)
                 (_E151875151884_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151873151880_)))
                 (_E151874151898_
                  (lambda ()
                    (if (gx#stx-pair? _e151873151880_)
                        (let ((_e151876151888_ (gx#syntax-e _e151873151880_)))
                          (let ((_hd151877151891_ (##car _e151876151888_))
                                (_tl151878151893_ (##cdr _e151876151888_)))
                            (let ((_clauses151896_ _tl151878151893_))
                              (if (gx#stx-list? _clauses151896_)
                                  (gx#core-cons
                                   'begin
                                   (_loop151872_ _clauses151896_))
                                  (_E151875151884_)))))
                        (_E151875151884_)))))
            (_E151874151898_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx151812_ _rpath151813_)
        (let* ((_e151814151824_ _stx151812_)
               (_E151816151828_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151814151824_)))
               (_E151815151855_
                (lambda ()
                  (if (gx#stx-pair? _e151814151824_)
                      (let ((_e151817151832_ (gx#syntax-e _e151814151824_)))
                        (let ((_hd151818151835_ (##car _e151817151832_))
                              (_tl151819151837_ (##cdr _e151817151832_)))
                          (if (gx#stx-pair? _tl151819151837_)
                              (let ((_e151820151840_
                                     (gx#syntax-e _tl151819151837_)))
                                (let ((_hd151821151843_
                                       (##car _e151820151840_))
                                      (_tl151822151845_
                                       (##cdr _e151820151840_)))
                                  (let ((_path151848_ _hd151821151843_))
                                    (if (gx#stx-null? _tl151822151845_)
                                        (if (gx#stx-string? _path151848_)
                                            (let ((_rpath151853_
                                                   (let ((_$e151850_
                                                          _rpath151813_))
                                                     (if _$e151850_
                                                         _$e151850_
                                                         (gx#core-resolve-path__%
                                                          _path151848_
                                                          (gx#stx-source
                                                           _stx151812_))))))
                                              (if (member _rpath151853_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx151812_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath151853_))
                                                    (gx#stx-source
                                                     _stx151812_)))))
                                            (_E151816151828_))
                                        (_E151816151828_)))))
                              (_E151816151828_))))
                      (_E151816151828_)))))
          (_E151815151855_))))
    (define gx#core-expand-include%__0
      (lambda (_stx151862_)
        (let ((_rpath151864_ '#f))
          (gx#core-expand-include%__% _stx151862_ _rpath151864_))))
    (define gx#core-expand-include%
      (lambda _g157505_
        (let ((_g157504_ (##length _g157505_)))
          (cond ((##fx= _g157504_ 1)
                 (apply (lambda (_stx151862_)
                          (gx#core-expand-include%__0 _stx151862_))
                        _g157505_))
                ((##fx= _g157504_ 2)
                 (apply (lambda (_stx151866_ _rpath151867_)
                          (gx#core-expand-include%__%
                           _stx151866_
                           _rpath151867_))
                        _g157505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g157505_))))))
    (define gx#core-apply-expander__%
      (lambda (_K151781_ _stx151782_ _method151783_)
        (if (procedure? _K151781_)
            (let ((_$e151785_ (gx#stx-source _stx151782_)))
              (if _$e151785_
                  ((lambda (_g151787151789_)
                     (gx#stx-wrap-source
                      (_K151781_ _stx151782_)
                      _g151787151789_))
                   _$e151785_)
                  (_K151781_ _stx151782_)))
            (let ((_$e151792_ (bound-method-ref _K151781_ _method151783_)))
              (if _$e151792_
                  ((lambda (_g151794151796_)
                     (gx#core-apply-expander__%
                      _g151794151796_
                      _stx151782_
                      _method151783_))
                   _$e151792_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx151782_
                   _method151783_))))))
    (define gx#core-apply-expander__0
      (lambda (_K151802_ _stx151803_)
        (let ((_method151805_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K151802_ _stx151803_ _method151805_))))
    (define gx#core-apply-expander
      (lambda _g157507_
        (let ((_g157506_ (##length _g157507_)))
          (cond ((##fx= _g157506_ 2)
                 (apply (lambda (_K151802_ _stx151803_)
                          (gx#core-apply-expander__0 _K151802_ _stx151803_))
                        _g157507_))
                ((##fx= _g157506_ 3)
                 (apply (lambda (_K151807_ _stx151808_ _method151809_)
                          (gx#core-apply-expander__%
                           _K151807_
                           _stx151808_
                           _method151809_))
                        _g157507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g157507_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self151777_ _stx151778_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx151778_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self151630_ _stx151631_)
        (let* ((_self151632151638_ _self151630_)
               (_E151634151642_
                (lambda () (error '"No clause matching" _self151632151638_)))
               (_K151635151647_
                (lambda (_K151645_)
                  (gx#core-apply-expander__0 _K151645_ _stx151631_))))
          (if (##structure-instance-of? _self151632151638_ 'gx#core-macro::t)
              (let* ((_e151636151650_
                      (##unchecked-structure-ref
                       _self151632151638_
                       '1
                       gx#expander::t
                       '#f))
                     (_K151653_ _e151636151650_))
                (_K151635151647_ _K151653_))
              (_E151634151642_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self151483_ _stx151484_)
        (if (gx#sealed-syntax? _stx151484_)
            _stx151484_
            (let* ((_self151485151491_ _self151483_)
                   (_E151487151495_
                    (lambda ()
                      (error '"No clause matching" _self151485151491_)))
                   (_K151488151500_
                    (lambda (_K151498_)
                      (gx#core-apply-expander__0 _K151498_ _stx151484_))))
              (if (##structure-instance-of?
                   _self151485151491_
                   'gx#core-expander::t)
                  (let* ((_e151489151503_
                          (##unchecked-structure-ref
                           _self151485151491_
                           '1
                           gx#expander::t
                           '#f))
                         (_K151506_ _e151489151503_))
                    (_K151488151500_ _K151506_))
                  (_E151487151495_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self151345_ _stx151346_ _top?151347_)
        (if (_top?151347_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self151345_ _stx151346_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx151346_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self151352_ _stx151353_)
        (let ((_top?151355_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self151352_
           _stx151353_
           _top?151355_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g157509_
        (let ((_g157508_ (##length _g157509_)))
          (cond ((##fx= _g157508_ 2)
                 (apply (lambda (_self151352_ _stx151353_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self151352_
                           _stx151353_))
                        _g157509_))
                ((##fx= _g157508_ 3)
                 (apply (lambda (_self151357_ _stx151358_ _top?151359_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self151357_
                           _stx151358_
                           _top?151359_))
                        _g157509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g157509_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self151219_ _stx151220_)
        (gx#top-special-form::apply-macro-expander__%
         _self151219_
         _stx151220_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self151044_ _stx151045_)
        (let* ((_self151046151052_ _self151044_)
               (_E151048151056_
                (lambda () (error '"No clause matching" _self151046151052_)))
               (_K151049151089_
                (lambda (_id151059_)
                  (let* ((_e151060151067_ _stx151045_)
                         (_E151062151071_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e151060151067_)))
                         (_E151061151085_
                          (lambda ()
                            (if (gx#stx-pair? _e151060151067_)
                                (let ((_e151063151075_
                                       (gx#syntax-e _e151060151067_)))
                                  (let ((_hd151064151078_
                                         (##car _e151063151075_))
                                        (_tl151065151080_
                                         (##cdr _e151063151075_)))
                                    (let ((_body151083_ _tl151065151080_))
                                      (if '#t
                                          (gx#core-cons
                                           _id151059_
                                           _body151083_)
                                          (_E151062151071_)))))
                                (_E151062151071_)))))
                    (_E151061151085_)))))
          (if (##structure-instance-of?
               _self151046151052_
               'gx#rename-macro-expander::t)
              (let* ((_e151050151092_
                      (##unchecked-structure-ref
                       _self151046151052_
                       '1
                       gx#expander::t
                       '#f))
                     (_id151095_ _e151050151092_))
                (_K151049151089_ _id151095_))
              (_E151048151056_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self150870_ _stx150871_ _method150872_)
        (let* ((_self150873150881_ _self150870_)
               (_E150875150885_
                (lambda () (error '"No clause matching" _self150873150881_)))
               (_K150876150892_
                (lambda (_phi150888_ _ctx150889_ _K150890_)
                  (gx#core-apply-user-macro
                   _K150890_
                   _stx150871_
                   _ctx150889_
                   _phi150888_
                   _method150872_))))
          (if (##structure-instance-of?
               _self150873150881_
               'gx#macro-expander::t)
              (let* ((_e150877150895_
                      (##unchecked-structure-ref
                       _self150873150881_
                       '1
                       gx#expander::t
                       '#f))
                     (_K150898_ _e150877150895_)
                     (_e150878150900_
                      (##unchecked-structure-ref
                       _self150873150881_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx150903_ _e150878150900_)
                     (_e150879150905_
                      (##unchecked-structure-ref
                       _self150873150881_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi150908_ _e150879150905_))
                (_K150876150892_ _phi150908_ _ctx150903_ _K150898_))
              (_E150875150885_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self150913_ _stx150914_)
        (let ((_method150916_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self150913_
           _stx150914_
           _method150916_))))
    (define gx#core-apply-user-expander
      (lambda _g157511_
        (let ((_g157510_ (##length _g157511_)))
          (cond ((##fx= _g157510_ 2)
                 (apply (lambda (_self150913_ _stx150914_)
                          (gx#core-apply-user-expander__0
                           _self150913_
                           _stx150914_))
                        _g157511_))
                ((##fx= _g157510_ 3)
                 (apply (lambda (_self150918_ _stx150919_ _method150920_)
                          (gx#core-apply-user-expander__%
                           _self150918_
                           _stx150919_
                           _method150920_))
                        _g157511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g157511_))))))
    (define gx#core-apply-user-macro
      (lambda (_K150860_ _stx150861_ _ctx150862_ _phi150863_ _method150864_)
        (let ((_mark150866_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx150862_
                _phi150863_
                _stx150861_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K150860_
               (gx#stx-apply-mark _stx150861_ _mark150866_)
               _method150864_)
              _mark150866_))
           gx#current-expander-marks
           (cons _mark150866_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx150712_ _phi150713_ _ctx150714_)
        (let _lp150716_ ((_bind150718_
                          (gx#core-resolve-identifier__%
                           _stx150712_
                           _phi150713_
                           _ctx150714_)))
          (if (##structure-direct-instance-of?
               _bind150718_
               'gx#import-binding::t)
              (_lp150716_
               (##unchecked-structure-ref
                _bind150718_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind150718_
                   'gx#alias-binding::t)
                  (_lp150716_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind150718_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi150713_
                    _ctx150714_))
                  _bind150718_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx150723_)
        (let* ((_phi150725_ (gx#current-expander-phi))
               (_ctx150727_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx150723_ _phi150725_ _ctx150727_))))
    (define gx#resolve-identifier__1
      (lambda (_stx150729_ _phi150730_)
        (let ((_ctx150732_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx150729_ _phi150730_ _ctx150732_))))
    (define gx#resolve-identifier
      (lambda _g157513_
        (let ((_g157512_ (##length _g157513_)))
          (cond ((##fx= _g157512_ 1)
                 (apply (lambda (_stx150723_)
                          (gx#resolve-identifier__0 _stx150723_))
                        _g157513_))
                ((##fx= _g157512_ 2)
                 (apply (lambda (_stx150729_ _phi150730_)
                          (gx#resolve-identifier__1 _stx150729_ _phi150730_))
                        _g157513_))
                ((##fx= _g157512_ 3)
                 (apply (lambda (_stx150734_ _phi150735_ _ctx150736_)
                          (gx#resolve-identifier__%
                           _stx150734_
                           _phi150735_
                           _ctx150736_))
                        _g157513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g157513_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx150670_ _val150671_ _rebind?150672_ _phi150673_ _ctx150674_)
        (let ((_rebind?150676_
               (if (not _rebind?150672_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?150672_) _rebind?150672_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx150670_)
           _val150671_
           _rebind?150676_
           _phi150673_
           _ctx150674_))))
    (define gx#bind-identifier!__0
      (lambda (_stx150681_ _val150682_)
        (let* ((_rebind?150684_ '#f)
               (_phi150686_ (gx#current-expander-phi))
               (_ctx150688_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx150681_
           _val150682_
           _rebind?150684_
           _phi150686_
           _ctx150688_))))
    (define gx#bind-identifier!__1
      (lambda (_stx150690_ _val150691_ _rebind?150692_)
        (let* ((_phi150694_ (gx#current-expander-phi))
               (_ctx150696_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx150690_
           _val150691_
           _rebind?150692_
           _phi150694_
           _ctx150696_))))
    (define gx#bind-identifier!__2
      (lambda (_stx150698_ _val150699_ _rebind?150700_ _phi150701_)
        (let ((_ctx150703_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx150698_
           _val150699_
           _rebind?150700_
           _phi150701_
           _ctx150703_))))
    (define gx#bind-identifier!
      (lambda _g157515_
        (let ((_g157514_ (##length _g157515_)))
          (cond ((##fx= _g157514_ 2)
                 (apply (lambda (_stx150681_ _val150682_)
                          (gx#bind-identifier!__0 _stx150681_ _val150682_))
                        _g157515_))
                ((##fx= _g157514_ 3)
                 (apply (lambda (_stx150690_ _val150691_ _rebind?150692_)
                          (gx#bind-identifier!__1
                           _stx150690_
                           _val150691_
                           _rebind?150692_))
                        _g157515_))
                ((##fx= _g157514_ 4)
                 (apply (lambda (_stx150698_
                                 _val150699_
                                 _rebind?150700_
                                 _phi150701_)
                          (gx#bind-identifier!__2
                           _stx150698_
                           _val150699_
                           _rebind?150700_
                           _phi150701_))
                        _g157515_))
                ((##fx= _g157514_ 5)
                 (apply (lambda (_stx150705_
                                 _val150706_
                                 _rebind?150707_
                                 _phi150708_
                                 _ctx150709_)
                          (gx#bind-identifier!__%
                           _stx150705_
                           _val150706_
                           _rebind?150707_
                           _phi150708_
                           _ctx150709_))
                        _g157515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g157515_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx150642_ _phi150643_ _ctx150644_)
        (let _lp150646_ ((_e150648_ _stx150642_)
                         (_marks150649_ (gx#current-expander-marks)))
          (if (symbol? _e150648_)
              (gx#core-resolve-binding
               _e150648_
               _phi150643_
               _phi150643_
               _ctx150644_
               (reverse _marks150649_))
              (if (gx#identifier-quote? _e150648_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e150648_ '1 gx#AST::t '#f)
                   _phi150643_
                   '0
                   (##unchecked-structure-ref
                    _e150648_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e150648_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e150648_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e150648_ '1 gx#AST::t '#f)
                       _phi150643_
                       _phi150643_
                       _ctx150644_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e150648_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks150649_))
                      (if (##structure-direct-instance-of?
                           _e150648_
                           'gx#syntax-wrap::t)
                          (_lp150646_
                           (##unchecked-structure-ref
                            _e150648_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e150648_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks150649_))
                          (if (##structure-instance-of?
                               _e150648_
                               'gerbil#AST::t)
                              (_lp150646_
                               (##unchecked-structure-ref
                                _e150648_
                                '1
                                gx#AST::t
                                '#f)
                               _marks150649_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx150642_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx150654_)
        (let* ((_phi150656_ (gx#current-expander-phi))
               (_ctx150658_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx150654_
           _phi150656_
           _ctx150658_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx150660_ _phi150661_)
        (let ((_ctx150663_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx150660_
           _phi150661_
           _ctx150663_))))
    (define gx#core-resolve-identifier
      (lambda _g157517_
        (let ((_g157516_ (##length _g157517_)))
          (cond ((##fx= _g157516_ 1)
                 (apply (lambda (_stx150654_)
                          (gx#core-resolve-identifier__0 _stx150654_))
                        _g157517_))
                ((##fx= _g157516_ 2)
                 (apply (lambda (_stx150660_ _phi150661_)
                          (gx#core-resolve-identifier__1
                           _stx150660_
                           _phi150661_))
                        _g157517_))
                ((##fx= _g157516_ 3)
                 (apply (lambda (_stx150665_ _phi150666_ _ctx150667_)
                          (gx#core-resolve-identifier__%
                           _stx150665_
                           _phi150666_
                           _ctx150667_))
                        _g157517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g157517_))))))
    (define gx#core-resolve-binding
      (lambda (_id150555_
               _phi150556_
               _src-phi150557_
               _ctx150558_
               _marks150559_)
        (letrec ((_resolve150561_
                  (lambda (_ctx150629_ _src-phi150630_ _key150631_)
                    (let _lp150633_ ((_ctx150635_
                                      (gx#core-context-shift
                                       _ctx150629_
                                       _phi150556_))
                                     (_dphi150636_
                                      (fx- _phi150556_ _src-phi150630_)))
                      (let ((_$e150638_
                             (gx#core-context-resolve
                              _ctx150635_
                              _key150631_)))
                        (if _$e150638_
                            (values _$e150638_)
                            (if (fxzero? _dphi150636_)
                                '#f
                                (if (fxpositive? _dphi150636_)
                                    (_lp150633_
                                     (gx#core-context-shift _ctx150635_ '-1)
                                     (fx- _dphi150636_ '1))
                                    (_lp150633_
                                     (gx#core-context-shift _ctx150635_ '1)
                                     (fx+ _dphi150636_ '1))))))))))
          (let _lp150563_ ((_ctx150565_ _ctx150558_)
                           (_src-phi150566_ _src-phi150557_)
                           (_rest150567_ _marks150559_))
            (let* ((_rest150568150576_ _rest150567_)
                   (_else150570150584_
                    (lambda ()
                      (_resolve150561_
                       _ctx150565_
                       _src-phi150566_
                       _id150555_)))
                   (_K150572150617_
                    (lambda (_rest150587_ _hd150588_)
                      (let* ((_hd150589150595_ _hd150588_)
                             (_E150591150599_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd150589150595_)))
                             (_K150592150609_
                              (lambda (_subst150602_)
                                (let ((_$e150606_
                                       (let ((_key150604_
                                              (if _subst150602_
                                                  (table-ref
                                                   _subst150602_
                                                   _id150555_
                                                   '#f)
                                                  '#f)))
                                         (if _key150604_
                                             (_resolve150561_
                                              _ctx150565_
                                              _src-phi150566_
                                              _key150604_)
                                             '#f))))
                                  (if _$e150606_
                                      _$e150606_
                                      (_lp150563_
                                       (##unchecked-structure-ref
                                        _hd150588_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd150588_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest150587_))))))
                        (if (##structure-instance-of?
                             _hd150589150595_
                             'gx#expander-mark::t)
                            (let* ((_e150593150612_
                                    (##unchecked-structure-ref
                                     _hd150589150595_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst150615_ _e150593150612_))
                              (_K150592150609_ _subst150615_))
                            (_E150591150599_))))))
              (if (##pair? _rest150568150576_)
                  (let ((_hd150573150620_ (##car _rest150568150576_))
                        (_tl150574150622_ (##cdr _rest150568150576_)))
                    (let* ((_hd150625_ _hd150573150620_)
                           (_rest150627_ _tl150574150622_))
                      (_K150572150617_ _rest150627_ _hd150625_)))
                  (_else150570150584_)))))))
    (define gx#core-bind!__%
      (lambda (_key150431_ _val150432_ _rebind?150433_ _phi150434_ _ctx150435_)
        (letrec ((_update-binding150437_
                  (lambda (_xval150508_)
                    (if (or (_rebind?150433_
                             _ctx150435_
                             _xval150508_
                             _val150432_)
                            (and (##structure-direct-instance-of?
                                  _xval150508_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval150508_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val150432_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val150432_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval150508_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val150432_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val150432_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval150508_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val150432_
                        (if (and (##structure-direct-instance-of?
                                  _val150432_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val150432_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval150508_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val150432_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval150508_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval150508_
                            (if (and (##structure-direct-instance-of?
                                      _val150432_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval150508_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key150431_
                                 (cons (##unchecked-structure-ref
                                        _val150432_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val150432_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval150508_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval150508_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval150508_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval150508_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key150431_
                                 _val150432_
                                 _xval150508_))))))
                 (_gensubst150438_
                  (lambda (_subst150503_ _id150504_)
                    (let ((_eid150506_
                           (gensym (if (uninterned-symbol? _id150504_)
                                       '%
                                       _id150504_))))
                      (table-set! _subst150503_ _id150504_ _eid150506_)
                      _eid150506_)))
                 (_subst!150439_
                  (lambda (_key150441_)
                    (let* ((_key150442150450_ _key150441_)
                           (_else150444150458_ (lambda () _key150441_))
                           (_K150446150491_
                            (lambda (_mark150461_ _id150462_)
                              (let* ((_mark150463150469_ _mark150461_)
                                     (_E150465150473_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark150463150469_)))
                                     (_K150466150483_
                                      (lambda (_subst150476_)
                                        (if (not _subst150476_)
                                            (let ((_subst150478_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark150461_
                                               _subst150478_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst150438_
                                               _subst150478_
                                               _id150462_))
                                            (let ((_$e150480_
                                                   (table-ref
                                                    _subst150476_
                                                    _id150462_
                                                    '#f)))
                                              (if _$e150480_
                                                  (values _$e150480_)
                                                  (_gensubst150438_
                                                   _subst150476_
                                                   _id150462_)))))))
                                (if (##structure-instance-of?
                                     _mark150463150469_
                                     'gx#expander-mark::t)
                                    (let* ((_e150467150486_
                                            (##unchecked-structure-ref
                                             _mark150463150469_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst150489_ _e150467150486_))
                                      (_K150466150483_ _subst150489_))
                                    (_E150465150473_))))))
                      (if (##pair? _key150442150450_)
                          (let ((_hd150447150494_ (##car _key150442150450_))
                                (_tl150448150496_ (##cdr _key150442150450_)))
                            (let* ((_id150499_ _hd150447150494_)
                                   (_mark150501_ _tl150448150496_))
                              (_K150446150491_ _mark150501_ _id150499_)))
                          (_else150444150458_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx150435_ _phi150434_)
           (_subst!150439_ _key150431_)
           _val150432_
           _update-binding150437_))))
    (define gx#core-bind!__0
      (lambda (_key150525_ _val150526_)
        (let* ((_rebind?150528_ false)
               (_phi150530_ (gx#current-expander-phi))
               (_ctx150532_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key150525_
           _val150526_
           _rebind?150528_
           _phi150530_
           _ctx150532_))))
    (define gx#core-bind!__1
      (lambda (_key150534_ _val150535_ _rebind?150536_)
        (let* ((_phi150538_ (gx#current-expander-phi))
               (_ctx150540_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key150534_
           _val150535_
           _rebind?150536_
           _phi150538_
           _ctx150540_))))
    (define gx#core-bind!__2
      (lambda (_key150542_ _val150543_ _rebind?150544_ _phi150545_)
        (let ((_ctx150547_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key150542_
           _val150543_
           _rebind?150544_
           _phi150545_
           _ctx150547_))))
    (define gx#core-bind!
      (lambda _g157519_
        (let ((_g157518_ (##length _g157519_)))
          (cond ((##fx= _g157518_ 2)
                 (apply (lambda (_key150525_ _val150526_)
                          (gx#core-bind!__0 _key150525_ _val150526_))
                        _g157519_))
                ((##fx= _g157518_ 3)
                 (apply (lambda (_key150534_ _val150535_ _rebind?150536_)
                          (gx#core-bind!__1
                           _key150534_
                           _val150535_
                           _rebind?150536_))
                        _g157519_))
                ((##fx= _g157518_ 4)
                 (apply (lambda (_key150542_
                                 _val150543_
                                 _rebind?150544_
                                 _phi150545_)
                          (gx#core-bind!__2
                           _key150542_
                           _val150543_
                           _rebind?150544_
                           _phi150545_))
                        _g157519_))
                ((##fx= _g157518_ 5)
                 (apply (lambda (_key150549_
                                 _val150550_
                                 _rebind?150551_
                                 _phi150552_
                                 _ctx150553_)
                          (gx#core-bind!__%
                           _key150549_
                           _val150550_
                           _rebind?150551_
                           _phi150552_
                           _ctx150553_))
                        _g157519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g157519_))))))
    (define gx#core-identifier-key
      (lambda (_stx150365_)
        (if (symbol? _stx150365_)
            (let* ((_g150366150374_ (gx#current-expander-marks))
                   (_else150368150382_ (lambda () _stx150365_))
                   (_K150370150387_
                    (lambda (_hd150385_) (cons _stx150365_ _hd150385_))))
              (if (##pair? _g150366150374_)
                  (let* ((_hd150371150390_ (##car _g150366150374_))
                         (_hd150393_ _hd150371150390_))
                    (_K150370150387_ _hd150393_))
                  (_else150368150382_)))
            (if (gx#identifier? _stx150365_)
                (let* ((_id150395_ (gx#syntax-local-unwrap _stx150365_))
                       (_eid150397_ (gx#stx-e _id150395_))
                       (_marks150399_ (gx#stx-identifier-marks* _id150395_)))
                  (let* ((_marks150401150409_ _marks150399_)
                         (_else150403150417_ (lambda () _eid150397_))
                         (_K150405150422_
                          (lambda (_hd150420_) (cons _eid150397_ _hd150420_))))
                    (if (##pair? _marks150401150409_)
                        (let* ((_hd150406150425_ (##car _marks150401150409_))
                               (_hd150428_ _hd150406150425_))
                          (_K150405150422_ _hd150428_))
                        (_else150403150417_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx150365_)))))
    (define gx#core-context-shift
      (lambda (_ctx150310_ _phi150311_)
        (letrec ((_make-phi150313_
                  (lambda (_super150363_)
                    (let ((__obj157490
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj157490
                       (gensym 'phi)
                       _super150363_)
                      __obj157490)))
                 (_make-phi/up150314_
                  (lambda (_ctx150358_ _super150359_)
                    (let ((_ctx+1150361_ (_make-phi150313_ _super150359_)))
                      (##unchecked-structure-set!
                       _ctx150358_
                       _ctx+1150361_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1150361_
                       _ctx150358_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1150361_)))
                 (_make-phi/down150315_
                  (lambda (_ctx150353_ _super150354_)
                    (let ((_ctx-1150356_ (_make-phi150313_ _super150354_)))
                      (##unchecked-structure-set!
                       _ctx-1150356_
                       _ctx150353_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx150353_
                       _ctx-1150356_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1150356_)))
                 (_shift150316_
                  (lambda (_ctx150337_
                           _delta150338_
                           _make-delta-context150339_
                           _phi150340_
                           _K150341_)
                    (let ((_$e150343_
                           (##unchecked-structure-ref
                            _ctx150337_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e150343_
                          ((lambda (_super150346_)
                             (let* ((_super150348_
                                     (_K150341_ _super150346_ _delta150338_))
                                    (_ctx+d150350_
                                     (_make-delta-context150339_
                                      _ctx150337_
                                      _super150348_)))
                               (_K150341_
                                _ctx+d150350_
                                (fx- _phi150340_ _delta150338_))))
                           _$e150343_)
                          (error '"Bad context" _ctx150337_))))))
          (let _K150318_ ((_ctx150320_ _ctx150310_) (_phi150321_ _phi150311_))
            (if (fxzero? _phi150321_)
                _ctx150320_
                (if (fx> (##vector-length _ctx150320_) '3)
                    (if (fxpositive? _phi150321_)
                        (let ((_$e150323_
                               (##unchecked-structure-ref
                                _ctx150320_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e150323_
                              ((lambda (_g150325150327_)
                                 (_K150318_
                                  _g150325150327_
                                  (fx- _phi150321_ '1)))
                               _$e150323_)
                              (_shift150316_
                               _ctx150320_
                               '1
                               _make-phi/up150314_
                               _phi150321_
                               _K150318_)))
                        (let ((_$e150330_
                               (##unchecked-structure-ref
                                _ctx150320_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e150330_
                              ((lambda (_g150332150334_)
                                 (_K150318_
                                  _g150332150334_
                                  (fx+ _phi150321_ '1)))
                               _$e150330_)
                              (_shift150316_
                               _ctx150320_
                               '-1
                               _make-phi/down150315_
                               _phi150321_
                               _K150318_))))
                    _ctx150320_))))))
    (define gx#core-context-get
      (lambda (_ctx150307_ _key150308_)
        (table-ref
         (##unchecked-structure-ref _ctx150307_ '2 gx#expander-context::t '#f)
         _key150308_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx150303_ _key150304_ _val150305_)
        (table-set!
         (##unchecked-structure-ref _ctx150303_ '2 gx#expander-context::t '#f)
         _key150304_
         _val150305_)))
    (define gx#core-context-resolve
      (lambda (_ctx150290_ _key150291_)
        (let _lp150293_ ((_ctx150295_ _ctx150290_))
          (let ((_$e150297_ (gx#core-context-get _ctx150295_ _key150291_)))
            (if _$e150297_
                (values _$e150297_)
                (let ((_$e150300_
                       (if (fx> (##vector-length _ctx150295_) '3)
                           (##unchecked-structure-ref
                            _ctx150295_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e150300_ (_lp150293_ _$e150300_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx150280_ _key150281_ _val150282_ _rebind150283_)
        (let ((_$e150285_ (gx#core-context-get _ctx150280_ _key150281_)))
          (if _$e150285_
              ((lambda (_xval150288_)
                 (gx#core-context-put!
                  _ctx150280_
                  _key150281_
                  (_rebind150283_ _xval150288_)))
               _$e150285_)
              (gx#core-context-put! _ctx150280_ _key150281_ _val150282_)))))
    (define gx#core-context-top__%
      (lambda (_ctx150258_ _stop?150259_)
        (let _lp150261_ ((_ctx150263_ _ctx150258_))
          (if (_stop?150259_ _ctx150263_)
              _ctx150263_
              (if (##structure-instance-of? _ctx150263_ 'gx#context-phi::t)
                  (_lp150261_
                   (##unchecked-structure-ref
                    _ctx150263_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx150269_ (gx#current-expander-context))
               (_stop?150271_ gx#top-context?))
          (gx#core-context-top__% _ctx150269_ _stop?150271_))))
    (define gx#core-context-top__1
      (lambda (_ctx150273_)
        (let ((_stop?150275_ gx#top-context?))
          (gx#core-context-top__% _ctx150273_ _stop?150275_))))
    (define gx#core-context-top
      (lambda _g157521_
        (let ((_g157520_ (##length _g157521_)))
          (cond ((##fx= _g157520_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g157521_))
                ((##fx= _g157520_ 1)
                 (apply (lambda (_ctx150273_)
                          (gx#core-context-top__1 _ctx150273_))
                        _g157521_))
                ((##fx= _g157520_ 2)
                 (apply (lambda (_ctx150277_ _stop?150278_)
                          (gx#core-context-top__% _ctx150277_ _stop?150278_))
                        _g157521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g157521_))))))
    (define gx#core-context-root__%
      (lambda (_ctx150243_)
        (let _lp150245_ ((_ctx150247_ _ctx150243_))
          (if (##structure-instance-of? _ctx150247_ 'gx#context-phi::t)
              (_lp150245_
               (##unchecked-structure-ref
                _ctx150247_
                '3
                gx#phi-context::t
                '#f))
              _ctx150247_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx150253_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx150253_))))
    (define gx#core-context-root
      (lambda _g157523_
        (let ((_g157522_ (##length _g157523_)))
          (cond ((##fx= _g157522_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g157523_))
                ((##fx= _g157522_ 1)
                 (apply (lambda (_ctx150255_)
                          (gx#core-context-root__% _ctx150255_))
                        _g157523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g157523_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx150224_ . __150221150225_)
        (let ((_$e150228_ (gx#current-expander-allow-rebind?)))
          (if _$e150228_
              _$e150228_
              (if (##structure-instance-of? _ctx150224_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx150224_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx150224_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx150235_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx150235_))))
    (define gx#core-context-rebind?
      (lambda _g157525_
        (let ((_g157524_ (##length _g157525_)))
          (cond ((##fx= _g157524_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g157525_))
                ((##fx= _g157524_ 1)
                 (apply (lambda (_ctx150237_)
                          (gx#core-context-rebind?__% _ctx150237_))
                        _g157525_))
                ((##fx>= _g157524_ 1)
                 (apply gx#core-context-rebind?__% _g157525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g157525_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx150207_)
        (let ((_$e150209_ (gx#core-context-top__1 _ctx150207_)))
          (if _$e150209_
              ((lambda (_ctx150212_)
                 (if (##structure-instance-of?
                      _ctx150212_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx150212_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e150209_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx150218_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx150218_))))
    (define gx#core-context-namespace
      (lambda _g157527_
        (let ((_g157526_ (##length _g157527_)))
          (cond ((##fx= _g157526_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g157527_))
                ((##fx= _g157526_ 1)
                 (apply (lambda (_ctx150220_)
                          (gx#core-context-namespace__% _ctx150220_))
                        _g157527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g157527_))))))
    (define gx#expander-binding?__%
      (lambda (_bind150193_ _is?150194_)
        (if (##structure-direct-instance-of?
             _bind150193_
             'gx#syntax-binding::t)
            (_is?150194_
             (##unchecked-structure-ref
              _bind150193_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind150199_)
        (let ((_is?150201_ gx#expander?))
          (gx#expander-binding?__% _bind150199_ _is?150201_))))
    (define gx#expander-binding?
      (lambda _g157529_
        (let ((_g157528_ (##length _g157529_)))
          (cond ((##fx= _g157528_ 1)
                 (apply (lambda (_bind150199_)
                          (gx#expander-binding?__0 _bind150199_))
                        _g157529_))
                ((##fx= _g157528_ 2)
                 (apply (lambda (_bind150203_ _is?150204_)
                          (gx#expander-binding?__% _bind150203_ _is?150204_))
                        _g157529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g157529_))))))
    (define gx#core-expander-binding?
      (lambda (_bind150190_)
        (gx#expander-binding?__% _bind150190_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind150188_)
        (gx#expander-binding?__% _bind150188_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind150182_)
        (letrec ((_direct-special-form?150184_
                  (lambda (_obj150186_)
                    (##structure-direct-instance-of?
                     _obj150186_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind150182_
           _direct-special-form?150184_))))
    (define gx#special-form-binding?
      (lambda (_bind150180_)
        (gx#expander-binding?__% _bind150180_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind150171_)
        (letrec ((_feature?150173_
                  (lambda (_e150175_)
                    (let ((_$e150177_
                           (##structure-instance-of?
                            _e150175_
                            'gx#feature-expander::t)))
                      (if _$e150177_
                          _$e150177_
                          (##structure-instance-of?
                           _e150175_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind150171_ _feature?150173_))))
    (define gx#private-feature-binding?
      (lambda (_bind150169_)
        (gx#expander-binding?__% _bind150169_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id150156_ _bound?150157_)
        (if (gx#identifier? _id150156_)
            (_bound?150157_ (gx#resolve-identifier__0 _id150156_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id150162_)
        (let ((_bound?150164_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id150162_ _bound?150164_))))
    (define gx#core-bound-identifier?
      (lambda _g157531_
        (let ((_g157530_ (##length _g157531_)))
          (cond ((##fx= _g157530_ 1)
                 (apply (lambda (_id150162_)
                          (gx#core-bound-identifier?__0 _id150162_))
                        _g157531_))
                ((##fx= _g157530_ 2)
                 (apply (lambda (_id150166_ _bound?150167_)
                          (gx#core-bound-identifier?__%
                           _id150166_
                           _bound?150167_))
                        _g157531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g157531_))))))
    (define gx#core-identifier=?
      (lambda (_x150146_ _y150147_)
        (letrec ((_y=?150149_
                  (lambda (_xid150153_)
                    ((if (list? _y150147_) memq eq?) _xid150153_ _y150147_))))
          (let ((_bind150151_ (gx#resolve-identifier__0 _x150146_)))
            (if (##structure-instance-of? _bind150151_ 'gx#binding::t)
                (_y=?150149_
                 (##unchecked-structure-ref _bind150151_ '1 gx#binding::t '#f))
                (_y=?150149_ (gx#stx-e _x150146_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e150144_)
        (if (interned-symbol? _e150144_)
            (string-index (symbol->string _e150144_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx150099_ _src150100_ _ctx150101_ _marks150102_)
        (if (##structure? _stx150099_)
            (let ((_$e150104_ (gx#sealed-syntax-unwrap _stx150099_)))
              (if _$e150104_
                  (values _$e150104_)
                  (if (gx#identifier? _stx150099_)
                      (let ((_id150107_
                             (gx#stx-unwrap__% _stx150099_ _marks150102_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id150107_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e150109_
                                (##unchecked-structure-ref
                                 _id150107_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e150109_ _$e150109_ _src150100_))
                         _ctx150101_
                         (##unchecked-structure-ref
                          _id150107_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx150099_)
                       (let ((_$e150112_ (gx#stx-source _stx150099_)))
                         (if _$e150112_ _$e150112_ _src150100_))
                       _ctx150101_
                       (reverse _marks150102_)))))
            (##structure
             gx#syntax-quote::t
             _stx150099_
             _src150100_
             _ctx150101_
             (reverse _marks150102_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx150118_)
        (let* ((_src150120_ '#f)
               (_ctx150122_ (gx#current-expander-context))
               (_marks150124_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx150118_
           _src150120_
           _ctx150122_
           _marks150124_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx150126_ _src150127_)
        (let* ((_ctx150129_ (gx#current-expander-context))
               (_marks150131_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx150126_
           _src150127_
           _ctx150129_
           _marks150131_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx150133_ _src150134_ _ctx150135_)
        (let ((_marks150137_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx150133_
           _src150134_
           _ctx150135_
           _marks150137_))))
    (define gx#core-quote-syntax
      (lambda _g157533_
        (let ((_g157532_ (##length _g157533_)))
          (cond ((##fx= _g157532_ 1)
                 (apply (lambda (_stx150118_)
                          (gx#core-quote-syntax__0 _stx150118_))
                        _g157533_))
                ((##fx= _g157532_ 2)
                 (apply (lambda (_stx150126_ _src150127_)
                          (gx#core-quote-syntax__1 _stx150126_ _src150127_))
                        _g157533_))
                ((##fx= _g157532_ 3)
                 (apply (lambda (_stx150133_ _src150134_ _ctx150135_)
                          (gx#core-quote-syntax__2
                           _stx150133_
                           _src150134_
                           _ctx150135_))
                        _g157533_))
                ((##fx= _g157532_ 4)
                 (apply (lambda (_stx150139_
                                 _src150140_
                                 _ctx150141_
                                 _marks150142_)
                          (gx#core-quote-syntax__%
                           _stx150139_
                           _src150140_
                           _ctx150141_
                           _marks150142_))
                        _g157533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g157533_))))))
    (define gx#core-cons
      (lambda (_hd150095_ _tl150096_)
        (cons (gx#core-quote-syntax__0 _hd150095_) _tl150096_)))
    (define gx#core-list
      (lambda (_hd150092_ . _rest150093_)
        (cons (gx#core-quote-syntax__0 _hd150092_) _rest150093_)))
    (define gx#core-cons*
      (lambda (_hd150089_ . _rest150090_)
        (apply cons* (gx#core-quote-syntax__0 _hd150089_) _rest150090_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path150063_ _rel150064_)
        (let ((_path150076_ (gx#stx-e _stx-path150063_))
              (_reldir150077_
               (let _lp150066_ ((_relsrc150068_
                                 (let ((_$e150073_
                                        (gx#stx-source _stx-path150063_)))
                                   (if _$e150073_ _$e150073_ _rel150064_))))
                 (if (##structure-instance-of? _relsrc150068_ 'gerbil#AST::t)
                     (_lp150066_
                      (let ((_$e150070_ (gx#stx-source _relsrc150068_)))
                        (if _$e150070_ _$e150070_ (gx#stx-e _relsrc150068_))))
                     (if (source-location-path? _relsrc150068_)
                         (path-directory (source-location-path _relsrc150068_))
                         (if (string? _relsrc150068_)
                             (path-directory _relsrc150068_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path150076_ (path-normalize _reldir150077_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path150082_)
        (let ((_rel150084_ '#f))
          (gx#core-resolve-path__% _stx-path150082_ _rel150084_))))
    (define gx#core-resolve-path
      (lambda _g157535_
        (let ((_g157534_ (##length _g157535_)))
          (cond ((##fx= _g157534_ 1)
                 (apply (lambda (_stx-path150082_)
                          (gx#core-resolve-path__0 _stx-path150082_))
                        _g157535_))
                ((##fx= _g157534_ 2)
                 (apply (lambda (_stx-path150086_ _rel150087_)
                          (gx#core-resolve-path__%
                           _stx-path150086_
                           _rel150087_))
                        _g157535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g157535_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr150019_ _ctx150020_)
        (let* ((_repr150021150028_ _repr150019_)
               (_E150023150032_
                (lambda () (error '"No clause matching" _repr150021150028_)))
               (_K150024150040_
                (lambda (_subs150035_ _phi150036_)
                  (let ((_subst150038_
                         (if (not (null? _subs150035_))
                             (list->table _subs150035_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst150038_
                     _ctx150020_
                     _phi150036_
                     '#f)))))
          (if (##pair? _repr150021150028_)
              (let ((_hd150025150043_ (##car _repr150021150028_))
                    (_tl150026150045_ (##cdr _repr150021150028_)))
                (let* ((_phi150048_ _hd150025150043_)
                       (_subs150050_ _tl150026150045_))
                  (_K150024150040_ _subs150050_ _phi150048_)))
              (_E150023150032_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr150055_)
        (let ((_ctx150057_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr150055_ _ctx150057_))))
    (define gx#core-deserialize-mark
      (lambda _g157537_
        (let ((_g157536_ (##length _g157537_)))
          (cond ((##fx= _g157536_ 1)
                 (apply (lambda (_repr150055_)
                          (gx#core-deserialize-mark__0 _repr150055_))
                        _g157537_))
                ((##fx= _g157536_ 2)
                 (apply (lambda (_repr150059_ _ctx150060_)
                          (gx#core-deserialize-mark__%
                           _repr150059_
                           _ctx150060_))
                        _g157537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g157537_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx150016_)
        (gx#stx-rewrap _stx150016_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx150014_)
        (gx#stx-unwrap__% _stx150014_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx149984_)
        (let* ((_g149985149993_ (gx#current-expander-marks))
               (_else149987150001_ (lambda () _stx149984_))
               (_K149989150006_
                (lambda (_hd150004_)
                  (gx#stx-apply-mark _stx149984_ _hd150004_))))
          (if (##pair? _g149985149993_)
              (let* ((_hd149990150009_ (##car _g149985149993_))
                     (_hd150012_ _hd149990150009_))
                (_K149989150006_ _hd150012_))
              (_else149987150001_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx149969_ _E149970_)
        (let ((_bind149972_ (gx#resolve-identifier__0 _stx149969_)))
          (if (##structure-direct-instance-of?
               _bind149972_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind149972_
               '4
               gx#syntax-binding::t
               '#f)
              (_E149970_ _stx149969_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx149977_)
        (let ((_E149979_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx149977_ _E149979_))))
    (define gx#syntax-local-e
      (lambda _g157539_
        (let ((_g157538_ (##length _g157539_)))
          (cond ((##fx= _g157538_ 1)
                 (apply (lambda (_stx149977_)
                          (gx#syntax-local-e__0 _stx149977_))
                        _g157539_))
                ((##fx= _g157538_ 2)
                 (apply (lambda (_stx149981_ _E149982_)
                          (gx#syntax-local-e__% _stx149981_ _E149982_))
                        _g157539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g157539_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx149953_ _E149954_)
        (let ((_e149956_ (gx#syntax-local-e__% _stx149953_ _E149954_)))
          (if (##structure-instance-of? _e149956_ 'gx#expander::t)
              (##structure-ref _e149956_ '1 gx#expander::t '#f)
              _e149956_))))
    (define gx#syntax-local-value__0
      (lambda (_stx149961_)
        (let ((_E149963_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx149961_ _E149963_))))
    (define gx#syntax-local-value
      (lambda _g157541_
        (let ((_g157540_ (##length _g157541_)))
          (cond ((##fx= _g157540_ 1)
                 (apply (lambda (_stx149961_)
                          (gx#syntax-local-value__0 _stx149961_))
                        _g157541_))
                ((##fx= _g157540_ 2)
                 (apply (lambda (_stx149965_ _E149966_)
                          (gx#syntax-local-value__% _stx149965_ _E149966_))
                        _g157541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g157541_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx149950_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx149950_)))))
