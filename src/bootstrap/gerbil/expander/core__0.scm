(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707742540)
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
      (lambda _$args144804_
        (apply make-instance gx#expander-context::t _$args144804_)))
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
      (lambda _$args144801_
        (apply make-instance gx#root-context::t _$args144801_)))
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
      (lambda _$args144798_
        (apply make-instance gx#phi-context::t _$args144798_)))
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
      (lambda _$args144795_
        (apply make-instance gx#top-context::t _$args144795_)))
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
      (lambda _$args144792_
        (apply make-instance gx#module-context::t _$args144792_)))
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
      (lambda _$args144789_
        (apply make-instance gx#prelude-context::t _$args144789_)))
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
      (lambda _$args144786_
        (apply make-instance gx#local-context::t _$args144786_)))
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
      (lambda (_self144770_ _id144771_ _super144772_)
        (if (##fx< '3 (##structure-length _self144770_))
            (begin
              (##unchecked-structure-set!
               _self144770_
               _id144771_
               '1
               (##structure-type _self144770_)
               '#f)
              (##unchecked-structure-set!
               _self144770_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144770_)
               '#f)
              (##unchecked-structure-set!
               _self144770_
               _super144772_
               '3
               (##structure-type _self144770_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144770_
                   '3
                   (##vector-length _self144770_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self144777_ _id144778_)
        (let ((_super144780_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self144777_ _id144778_ _super144780_))))
    (define gx#phi-context:::init!
      (lambda _g149415_
        (let ((_g149414_ (##length _g149415_)))
          (cond ((##fx= _g149414_ 2)
                 (apply (lambda (_self144777_ _id144778_)
                          (gx#phi-context:::init!__0 _self144777_ _id144778_))
                        _g149415_))
                ((##fx= _g149414_ 3)
                 (apply (lambda (_self144782_ _id144783_ _super144784_)
                          (gx#phi-context:::init!__%
                           _self144782_
                           _id144783_
                           _super144784_))
                        _g149415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g149415_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self144634_ _super144635_)
        (if (##fx< '3 (##structure-length _self144634_))
            (begin
              (##unchecked-structure-set!
               _self144634_
               (gensym 'L)
               '1
               (##structure-type _self144634_)
               '#f)
              (##unchecked-structure-set!
               _self144634_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144634_)
               '#f)
              (##unchecked-structure-set!
               _self144634_
               _super144635_
               '3
               (##structure-type _self144634_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144634_
                   '3
                   (##vector-length _self144634_)))))
    (define gx#local-context:::init!__0
      (lambda (_self144640_)
        (let ((_super144642_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self144640_ _super144642_))))
    (define gx#local-context:::init!
      (lambda _g149417_
        (let ((_g149416_ (##length _g149417_)))
          (cond ((##fx= _g149416_ 1)
                 (apply (lambda (_self144640_)
                          (gx#local-context:::init!__0 _self144640_))
                        _g149417_))
                ((##fx= _g149416_ 2)
                 (apply (lambda (_self144644_ _super144645_)
                          (gx#local-context:::init!__%
                           _self144644_
                           _super144645_))
                        _g149417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g149417_))))))
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
      (lambda _$args144508_ (apply make-instance gx#binding::t _$args144508_)))
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
      (lambda _$args144505_
        (apply make-instance gx#runtime-binding::t _$args144505_)))
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
      (lambda _$args144502_
        (apply make-instance gx#local-binding::t _$args144502_)))
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
      (lambda _$args144499_
        (apply make-instance gx#top-binding::t _$args144499_)))
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
      (lambda _$args144496_
        (apply make-instance gx#module-binding::t _$args144496_)))
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
      (lambda _$args144493_
        (apply make-instance gx#extern-binding::t _$args144493_)))
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
      (lambda _$args144490_
        (apply make-instance gx#syntax-binding::t _$args144490_)))
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
      (lambda _$args144487_
        (apply make-instance gx#import-binding::t _$args144487_)))
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
      (lambda _$args144484_
        (apply make-instance gx#alias-binding::t _$args144484_)))
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
      (lambda _$args144481_
        (apply make-instance gx#expander::t _$args144481_)))
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
      (lambda _$args144478_
        (apply make-instance gx#core-expander::t _$args144478_)))
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
      (lambda _$args144475_
        (apply make-instance gx#expression-form::t _$args144475_)))
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
      (lambda _$args144472_
        (apply make-instance gx#special-form::t _$args144472_)))
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
      (lambda _$args144469_
        (apply make-instance gx#definition-form::t _$args144469_)))
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
      (lambda _$args144466_
        (apply make-instance gx#top-special-form::t _$args144466_)))
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
      (lambda _$args144463_
        (apply make-instance gx#module-special-form::t _$args144463_)))
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
      (lambda _$args144460_
        (apply make-instance gx#feature-expander::t _$args144460_)))
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
      (lambda _$args144457_
        (apply make-instance gx#private-feature-expander::t _$args144457_)))
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
      (lambda _$args144454_
        (apply make-instance gx#reserved-expander::t _$args144454_)))
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
      (lambda _$args144451_
        (apply make-instance gx#macro-expander::t _$args144451_)))
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
      (lambda _$args144448_
        (apply make-instance gx#rename-macro-expander::t _$args144448_)))
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
      (lambda _$args144445_
        (apply make-instance gx#user-expander::t _$args144445_)))
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
      (lambda _$args144442_
        (apply make-instance gx#expander-mark::t _$args144442_)))
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
      (lambda (_ctx144427_ _message144428_ _stx144429_ . _details144430_)
        (let ((_ctx144440_
               (let ((_$e144432_ _ctx144427_))
                 (if _$e144432_
                     _$e144432_
                     (let ((_$e144435_ (gx#core-context-top__0)))
                       (if _$e144435_
                           ((lambda (_ctx144438_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx144438_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e144435_)
                           '#f))))))
          (raise (make-syntax-error
                  _message144428_
                  (cons _stx144429_ _details144430_)
                  _ctx144440_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx144414_ _expression?144415_)
        (gx#eval-syntax* (gx#core-expand__% _stx144414_ _expression?144415_))))
    (define gx#eval-syntax__0
      (lambda (_stx144420_)
        (let ((_expression?144422_ '#f))
          (gx#eval-syntax__% _stx144420_ _expression?144422_))))
    (define gx#eval-syntax
      (lambda _g149419_
        (let ((_g149418_ (##length _g149419_)))
          (cond ((##fx= _g149418_ 1)
                 (apply (lambda (_stx144420_) (gx#eval-syntax__0 _stx144420_))
                        _g149419_))
                ((##fx= _g149418_ 2)
                 (apply (lambda (_stx144424_ _expression?144425_)
                          (gx#eval-syntax__% _stx144424_ _expression?144425_))
                        _g149419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g149419_))))))
    (define gx#eval-syntax*
      (lambda (_stx144411_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx144411_))))
    (define gx#core-expand__%
      (lambda (_stx144398_ _expression?144399_)
        (if _expression?144399_
            (gx#core-expand-expression _stx144398_)
            (gx#core-expand-top _stx144398_))))
    (define gx#core-expand__0
      (lambda (_stx144404_)
        (let ((_expression?144406_ '#f))
          (gx#core-expand__% _stx144404_ _expression?144406_))))
    (define gx#core-expand
      (lambda _g149421_
        (let ((_g149420_ (##length _g149421_)))
          (cond ((##fx= _g149420_ 1)
                 (apply (lambda (_stx144404_) (gx#core-expand__0 _stx144404_))
                        _g149421_))
                ((##fx= _g149420_ 2)
                 (apply (lambda (_stx144408_ _expression?144409_)
                          (gx#core-expand__% _stx144408_ _expression?144409_))
                        _g149421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g149421_))))))
    (define gx#core-expand-top
      (lambda (_stx144365_)
        (let* ((_stx144367_ (gx#core-expand*__0 _stx144365_))
               (_e144368144375_ _stx144367_)
               (_E144370144379_
                (lambda () (gx#core-expand-expression _stx144367_)))
               (_E144369144393_
                (lambda ()
                  (if (gx#stx-pair? _e144368144375_)
                      (let ((_e144371144383_ (gx#syntax-e _e144368144375_)))
                        (let ((_hd144372144386_ (##car _e144371144383_))
                              (_tl144373144388_ (##cdr _e144371144383_)))
                          (let ((_form144391_ _hd144372144386_))
                            (if (gx#core-bound-identifier?__0 _form144391_)
                                _stx144367_
                                (_E144370144379_)))))
                      (_E144370144379_)))))
          (_E144369144393_))))
    (define gx#core-expand-expression
      (lambda (_stx144312_)
        (letrec ((_sealed-expression?144314_
                  (lambda (_hd144335_)
                    (if (gx#sealed-syntax? _hd144335_)
                        (let* ((_e144336144343_ _hd144335_)
                               (_E144338144347_ (lambda () '#f))
                               (_E144337144361_
                                (lambda ()
                                  (if (gx#stx-pair? _e144336144343_)
                                      (let ((_e144339144351_
                                             (gx#syntax-e _e144336144343_)))
                                        (let ((_hd144340144354_
                                               (##car _e144339144351_))
                                              (_tl144341144356_
                                               (##cdr _e144339144351_)))
                                          (let ((_form144359_
                                                 _hd144340144354_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form144359_
                                                 gx#expression-form-binding?)
                                                (_E144338144347_)))))
                                      (_E144338144347_)))))
                          (_E144337144361_))
                        '#f)))
                 (_illegal-expression144315_
                  (lambda (_hd144333_ . _g149422_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx144312_
                     _hd144333_)))
                 (_expand-e144316_
                  (lambda (_form144328_ _hd144329_)
                    (let ((_bind144331_
                           (if (##structure-instance-of?
                                _form144328_
                                'gx#binding::t)
                               _form144328_
                               (gx#resolve-identifier__0 _form144328_))))
                      (if (gx#core-expander-binding? _bind144331_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind144331_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd144329_
                            (gx#stx-source _stx144312_)))
                          (if (##structure-direct-instance-of?
                               _bind144331_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind144331_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd144329_
                                 (gx#stx-source _stx144312_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx144312_
                               _form144328_)))))))
          (let ((_hd144318_ (gx#core-expand-head _stx144312_)))
            (if (_sealed-expression?144314_ _hd144318_)
                _hd144318_
                (if (gx#stx-pair? _hd144318_)
                    (let* ((_form144320_ (gx#stx-car _hd144318_))
                           (_bind144322_
                            (if (gx#identifier? _form144320_)
                                (gx#resolve-identifier__0 _form144320_)
                                '#f)))
                      (if (or (not _bind144322_)
                              (not (gx#core-expander-binding? _bind144322_)))
                          (_expand-e144316_ '%%app (cons '%%app _hd144318_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind144322_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd144318_
                               _illegal-expression144315_)
                              (if (gx#expression-form-binding? _bind144322_)
                                  (_expand-e144316_ _bind144322_ _hd144318_)
                                  (if (gx#direct-special-form-binding?
                                       _bind144322_)
                                      (gx#core-expand-expression
                                       (_expand-e144316_
                                        _bind144322_
                                        _hd144318_))
                                      (_illegal-expression144315_
                                       _hd144318_))))))
                    (if (gx#core-bound-identifier?__0 _hd144318_)
                        (_illegal-expression144315_ _hd144318_)
                        (if (gx#identifier? _hd144318_)
                            (_expand-e144316_
                             '%%ref
                             (cons '%%ref (cons _hd144318_ '())))
                            (if (gx#stx-datum? _hd144318_)
                                (_expand-e144316_
                                 '%#quote
                                 (cons '%#quote (cons _hd144318_ '())))
                                (_illegal-expression144315_
                                 _hd144318_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx144307_)
        (call-with-parameters
         (lambda ()
           (let ((_stx144310_ (gx#core-expand-expression _stx144307_)))
             (values _stx144310_ (gx#eval-syntax* _stx144310_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx144288_ _stop?144289_)
        (let _lp144291_ ((_stx144293_ _stx144288_))
          (if (_stop?144289_ _stx144293_)
              _stx144293_
              (let ((_rstx144295_ (gx#core-expand1 _stx144293_)))
                (if (eq? _stx144293_ _rstx144295_)
                    _stx144293_
                    (_lp144291_ _rstx144295_)))))))
    (define gx#core-expand*__0
      (lambda (_stx144300_)
        (let ((_stop?144302_ false))
          (gx#core-expand*__% _stx144300_ _stop?144302_))))
    (define gx#core-expand*
      (lambda _g149424_
        (let ((_g149423_ (##length _g149424_)))
          (cond ((##fx= _g149423_ 1)
                 (apply (lambda (_stx144300_) (gx#core-expand*__0 _stx144300_))
                        _g149424_))
                ((##fx= _g149423_ 2)
                 (apply (lambda (_stx144304_ _stop?144305_)
                          (gx#core-expand*__% _stx144304_ _stop?144305_))
                        _g149424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g149424_))))))
    (define gx#core-expand1
      (lambda (_stx144244_)
        (letrec ((_step144246_
                  (lambda (_hd144283_)
                    (let ((_bind144285_ (gx#resolve-identifier__0 _hd144283_)))
                      (if (##structure-instance-of?
                           _bind144285_
                           'gx#runtime-binding::t)
                          _stx144244_
                          (if (##structure-direct-instance-of?
                               _bind144285_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind144285_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx144244_)
                              (if (not _bind144285_)
                                  _stx144244_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx144244_))))))))
          (let* ((_e144247144255_ _stx144244_)
                 (_E144253144259_ (lambda () _stx144244_))
                 (_E144249144265_
                  (lambda ()
                    (let ((_hd144263_ _e144247144255_))
                      (if (gx#identifier? _hd144263_)
                          (_step144246_ _hd144263_)
                          (_E144253144259_)))))
                 (_E144248144279_
                  (lambda ()
                    (if (gx#stx-pair? _e144247144255_)
                        (let ((_e144250144269_ (gx#syntax-e _e144247144255_)))
                          (let ((_hd144251144272_ (##car _e144250144269_))
                                (_tl144252144274_ (##cdr _e144250144269_)))
                            (let ((_hd144277_ _hd144251144272_))
                              (if (gx#identifier? _hd144277_)
                                  (_step144246_ _hd144277_)
                                  (_E144249144265_)))))
                        (_E144249144265_)))))
            (_E144248144279_)))))
    (define gx#core-expand-head
      (lambda (_stx144210_)
        (letrec ((_stop?144212_
                  (lambda (_stx144214_)
                    (let* ((_e144215144222_ _stx144214_)
                           (_E144217144226_ (lambda () '#f))
                           (_E144216144240_
                            (lambda ()
                              (if (gx#stx-pair? _e144215144222_)
                                  (let ((_e144218144230_
                                         (gx#syntax-e _e144215144222_)))
                                    (let ((_hd144219144233_
                                           (##car _e144218144230_))
                                          (_tl144220144235_
                                           (##cdr _e144218144230_)))
                                      (let ((_hd144238_ _hd144219144233_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd144238_)
                                            (_E144217144226_)))))
                                  (_E144217144226_)))))
                      (_E144216144240_)))))
          (gx#core-expand*__% _stx144210_ _stop?144212_))))
    (define gx#core-expand-block__%
      (lambda (_stx144016_
               _expand-special144017_
               _begin-form144018_
               _expand-e144019_)
        (letrec ((_expand-splice144021_
                  (lambda (_hd144184_ _body144185_ _rest144186_ _r144187_)
                    (if (gx#stx-list? _body144185_)
                        (_K144025_
                         (gx#stx-foldr cons _rest144186_ _body144185_)
                         _r144187_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx144016_
                         _hd144184_))))
                 (_expand-cond-expand144022_
                  (lambda (_hd144180_ _rest144181_ _r144182_)
                    (_K144025_
                     (cons (gx#core-expand-cond-expand% _hd144180_)
                           _rest144181_)
                     _r144182_)))
                 (_expand-include144023_
                  (lambda (_hd144129_ _rest144130_ _r144131_)
                    (let* ((_e144132144142_ _hd144129_)
                           (_E144134144146_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144132144142_)))
                           (_E144133144176_
                            (lambda ()
                              (if (gx#stx-pair? _e144132144142_)
                                  (let ((_e144135144150_
                                         (gx#syntax-e _e144132144142_)))
                                    (let ((_hd144136144153_
                                           (##car _e144135144150_))
                                          (_tl144137144155_
                                           (##cdr _e144135144150_)))
                                      (if (gx#stx-pair? _tl144137144155_)
                                          (let ((_e144138144158_
                                                 (gx#syntax-e
                                                  _tl144137144155_)))
                                            (let ((_hd144139144161_
                                                   (##car _e144138144158_))
                                                  (_tl144140144163_
                                                   (##cdr _e144138144158_)))
                                              (let ((_path144166_
                                                     _hd144139144161_))
                                                (if (gx#stx-null?
                                                     _tl144140144163_)
                                                    (if (gx#stx-string?
                                                         _path144166_)
                                                        (let* ((_rpath144168_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path144166_
                         (gx#stx-source _hd144129_)))
                       (_block144170_
                        (gx#core-expand-include%__% _hd144129_ _rpath144168_))
                       (_rbody144173_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block144170_
                            _expand-special144017_
                            '#f
                            _expand-e144019_))
                         gx#current-expander-path
                         (cons _rpath144168_ (gx#current-expander-path)))))
                  (_K144025_
                   _rest144130_
                   (foldr1 cons _r144131_ _rbody144173_)))
                (_E144134144146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E144134144146_)))))
                                          (_E144134144146_))))
                                  (_E144134144146_)))))
                      (_E144133144176_))))
                 (_expand-expression144024_
                  (lambda (_hd144125_ _rest144126_ _r144127_)
                    (_K144025_
                     _rest144126_
                     (cons (_expand-e144019_ _hd144125_) _r144127_))))
                 (_K144025_
                  (lambda (_rest144055_ _r144056_)
                    (let* ((_e144057144064_ _rest144055_)
                           (_E144059144068_
                            (lambda ()
                              (if _begin-form144018_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form144018_
                                    (reverse _r144056_))
                                   (gx#stx-source _stx144016_))
                                  _r144056_)))
                           (_E144058144121_
                            (lambda ()
                              (if (gx#stx-pair? _e144057144064_)
                                  (let ((_e144060144072_
                                         (gx#syntax-e _e144057144064_)))
                                    (let ((_hd144061144075_
                                           (##car _e144060144072_))
                                          (_tl144062144077_
                                           (##cdr _e144060144072_)))
                                      (let* ((_hd144080_ _hd144061144075_)
                                             (_rest144082_ _tl144062144077_))
                                        (if '#t
                                            (let* ((_hd144084_
                                                    (gx#core-expand-head
                                                     _hd144080_))
                                                   (_e144085144092_ _hd144084_)
                                                   (_E144087144096_
                                                    (lambda ()
                                                      (_expand-expression144024_
                                                       _hd144084_
                                                       _rest144082_
                                                       _r144056_)))
                                                   (_E144086144117_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e144085144092_)
                                                          (let ((_e144088144100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e144085144092_)))
                    (let ((_hd144089144103_ (##car _e144088144100_))
                          (_tl144090144105_ (##cdr _e144088144100_)))
                      (let* ((_form144108_ _hd144089144103_)
                             (_body144110_ _tl144090144105_))
                        (if '#t
                            (let ((_bind144112_
                                   (if (gx#identifier? _form144108_)
                                       (gx#resolve-identifier__0 _form144108_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind144112_)
                                  (let ((_$e144114_
                                         (##unchecked-structure-ref
                                          _bind144112_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e144114_)
                                        (_expand-splice144021_
                                         _hd144084_
                                         _body144110_
                                         _rest144082_
                                         _r144056_)
                                        (if (eq? '%#cond-expand _$e144114_)
                                            (_expand-cond-expand144022_
                                             _hd144084_
                                             _rest144082_
                                             _r144056_)
                                            (if (eq? '%#include _$e144114_)
                                                (_expand-include144023_
                                                 _hd144084_
                                                 _rest144082_
                                                 _r144056_)
                                                (_expand-special144017_
                                                 _hd144084_
                                                 _K144025_
                                                 _rest144082_
                                                 _r144056_)))))
                                  (_expand-expression144024_
                                   _hd144084_
                                   _rest144082_
                                   _r144056_)))
                            (_E144087144096_)))))
                  (_E144087144096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144086144117_))
                                            (_E144059144068_)))))
                                  (_E144059144068_)))))
                      (_E144058144121_)))))
          (let* ((_e144026144033_ _stx144016_)
                 (_E144028144037_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e144026144033_)))
                 (_E144027144051_
                  (lambda ()
                    (if (gx#stx-pair? _e144026144033_)
                        (let ((_e144029144041_ (gx#syntax-e _e144026144033_)))
                          (let ((_hd144030144044_ (##car _e144029144041_))
                                (_tl144031144046_ (##cdr _e144029144041_)))
                            (let ((_body144049_ _tl144031144046_))
                              (if (gx#stx-list? _body144049_)
                                  (_K144025_ _body144049_ '())
                                  (_E144028144037_)))))
                        (_E144028144037_)))))
            (_E144027144051_)))))
    (define gx#core-expand-block__0
      (lambda (_stx144192_ _expand-special144193_)
        (let* ((_begin-form144195_ '%#begin)
               (_expand-e144197_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144192_
           _expand-special144193_
           _begin-form144195_
           _expand-e144197_))))
    (define gx#core-expand-block__1
      (lambda (_stx144199_ _expand-special144200_ _begin-form144201_)
        (let ((_expand-e144203_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144199_
           _expand-special144200_
           _begin-form144201_
           _expand-e144203_))))
    (define gx#core-expand-block
      (lambda _g149426_
        (let ((_g149425_ (##length _g149426_)))
          (cond ((##fx= _g149425_ 2)
                 (apply (lambda (_stx144192_ _expand-special144193_)
                          (gx#core-expand-block__0
                           _stx144192_
                           _expand-special144193_))
                        _g149426_))
                ((##fx= _g149425_ 3)
                 (apply (lambda (_stx144199_
                                 _expand-special144200_
                                 _begin-form144201_)
                          (gx#core-expand-block__1
                           _stx144199_
                           _expand-special144200_
                           _begin-form144201_))
                        _g149426_))
                ((##fx= _g149425_ 4)
                 (apply (lambda (_stx144205_
                                 _expand-special144206_
                                 _begin-form144207_
                                 _expand-e144208_)
                          (gx#core-expand-block__%
                           _stx144205_
                           _expand-special144206_
                           _begin-form144207_
                           _expand-e144208_))
                        _g149426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g149426_))))))
    (define gx#core-expand-block*
      (lambda (_stx143964_ _expand-special143965_)
        (let* ((_g143966143977_
                (gx#core-expand-block__1
                 _stx143964_
                 _expand-special143965_
                 '#f))
               (_E143970143981_
                (lambda () (error '"No clause matching" _g143966143977_))))
          (let ((_K143975144012_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx143964_)))
                (_K143972143998_ (lambda (_expr143996_) _expr143996_))
                (_K143971143987_
                 (lambda (_body143985_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body143985_))
                    (gx#stx-source _stx143964_)))))
            (let ((_try-match143968144008_
                   (lambda ()
                     (if (##pair? _g143966143977_)
                         (let ((_tl143974144003_ (##cdr _g143966143977_))
                               (_hd143973144001_ (##car _g143966143977_)))
                           (if (##null? _tl143974144003_)
                               (let ((_expr144006_ _hd143973144001_))
                                 (_K143972143998_ _expr144006_))
                               (let ((_body143990_ _g143966143977_))
                                 (_K143971143987_ _body143990_))))
                         (let ((_body143990_ _g143966143977_))
                           (_K143971143987_ _body143990_))))))
              (if (##null? _g143966143977_)
                  (_K143975144012_)
                  (_try-match143968144008_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx143792_)
        (letrec ((_satisfied?143794_
                  (lambda (_condition143892_)
                    (let* ((_e143893143908_ _condition143892_)
                           (_E143903143912_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143893143908_)))
                           (_E143896143931_
                            (lambda ()
                              (if (gx#stx-pair? _e143893143908_)
                                  (let ((_e143904143916_
                                         (gx#syntax-e _e143893143908_)))
                                    (let ((_hd143905143919_
                                           (##car _e143904143916_))
                                          (_tl143906143921_
                                           (##cdr _e143904143916_)))
                                      (let* ((_combinator143924_
                                              _hd143905143919_)
                                             (_body143926_ _tl143906143921_))
                                        (if (gx#stx-list? _body143926_)
                                            (let ((_$e143928_
                                                   (gx#stx-e
                                                    _combinator143924_)))
                                              (if (eq? 'not _$e143928_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?143794_
                                                        _body143926_))
                                                  (if (eq? 'and _$e143928_)
                                                      (gx#stx-andmap
                                                       _satisfied?143794_
                                                       _body143926_)
                                                      (if (eq? 'or _$e143928_)
                                                          (gx#stx-ormap
                                                           _satisfied?143794_
                                                           _body143926_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e143928_)
                      (gx#stx-andmap gx#core-resolve-identifier _body143926_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx143792_
                       _combinator143924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E143903143912_)))))
                                  (_E143903143912_))))
                           (_E143895143954_
                            (lambda ()
                              (if (gx#stx-pair? _e143893143908_)
                                  (let ((_e143897143935_
                                         (gx#syntax-e _e143893143908_)))
                                    (let ((_hd143898143938_
                                           (##car _e143897143935_))
                                          (_tl143899143940_
                                           (##cdr _e143897143935_)))
                                      (if (and (gx#identifier?
                                                _hd143898143938_)
                                               (gx#core-identifier=?
                                                _hd143898143938_
                                                'unquote))
                                          (if (gx#stx-pair? _tl143899143940_)
                                              (let ((_e143900143943_
                                                     (gx#syntax-e
                                                      _tl143899143940_)))
                                                (let ((_hd143901143946_
                                                       (##car _e143900143943_))
                                                      (_tl143902143948_
                                                       (##cdr _e143900143943_)))
                                                  (let ((_expr143951_
                                                         _hd143901143946_))
                                                    (if (gx#stx-null?
                                                         _tl143902143948_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr143951_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E143896143931_))
                (_E143896143931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143896143931_))
                                          (_E143896143931_))))
                                  (_E143896143931_))))
                           (_E143894143960_
                            (lambda ()
                              (let ((_id143958_ _e143893143908_))
                                (if (gx#identifier? _id143958_)
                                    (gx#core-bound-identifier?__%
                                     _id143958_
                                     gx#feature-binding?)
                                    (_E143895143954_))))))
                      (_E143894143960_))))
                 (_loop143795_
                  (lambda (_rest143825_)
                    (let* ((_e143826143834_ _rest143825_)
                           (_E143832143838_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143826143834_)))
                           (_E143828143842_
                            (lambda ()
                              (if (gx#stx-null? _e143826143834_)
                                  (if '#t '() (_E143832143838_))
                                  (_E143832143838_))))
                           (_E143827143888_
                            (lambda ()
                              (if (gx#stx-pair? _e143826143834_)
                                  (let ((_e143829143846_
                                         (gx#syntax-e _e143826143834_)))
                                    (let ((_hd143830143849_
                                           (##car _e143829143846_))
                                          (_tl143831143851_
                                           (##cdr _e143829143846_)))
                                      (let* ((_hd143854_ _hd143830143849_)
                                             (_rest143856_ _tl143831143851_))
                                        (if '#t
                                            (let* ((_e143857143864_ _hd143854_)
                                                   (_E143859143868_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e143857143864_)))
                                                   (_E143858143884_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e143857143864_)
                                                          (let ((_e143860143872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e143857143864_)))
                    (let ((_hd143861143875_ (##car _e143860143872_))
                          (_tl143862143877_ (##cdr _e143860143872_)))
                      (let* ((_condition143880_ _hd143861143875_)
                             (_body143882_ _tl143862143877_))
                        (if '#t
                            (if (gx#stx-eq? _condition143880_ 'else)
                                (if (gx#stx-null? _rest143856_)
                                    _body143882_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx143792_
                                     _hd143854_))
                                (if (_satisfied?143794_ _condition143880_)
                                    _body143882_
                                    (_loop143795_ _rest143856_)))
                            (_E143859143868_)))))
                  (_E143859143868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143858143884_))
                                            (_E143828143842_)))))
                                  (_E143828143842_)))))
                      (_E143827143888_)))))
          (let* ((_e143796143803_ _stx143792_)
                 (_E143798143807_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e143796143803_)))
                 (_E143797143821_
                  (lambda ()
                    (if (gx#stx-pair? _e143796143803_)
                        (let ((_e143799143811_ (gx#syntax-e _e143796143803_)))
                          (let ((_hd143800143814_ (##car _e143799143811_))
                                (_tl143801143816_ (##cdr _e143799143811_)))
                            (let ((_clauses143819_ _tl143801143816_))
                              (if (gx#stx-list? _clauses143819_)
                                  (gx#core-cons
                                   'begin
                                   (_loop143795_ _clauses143819_))
                                  (_E143798143807_)))))
                        (_E143798143807_)))))
            (_E143797143821_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx143735_ _rpath143736_)
        (let* ((_e143737143747_ _stx143735_)
               (_E143739143751_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e143737143747_)))
               (_E143738143778_
                (lambda ()
                  (if (gx#stx-pair? _e143737143747_)
                      (let ((_e143740143755_ (gx#syntax-e _e143737143747_)))
                        (let ((_hd143741143758_ (##car _e143740143755_))
                              (_tl143742143760_ (##cdr _e143740143755_)))
                          (if (gx#stx-pair? _tl143742143760_)
                              (let ((_e143743143763_
                                     (gx#syntax-e _tl143742143760_)))
                                (let ((_hd143744143766_
                                       (##car _e143743143763_))
                                      (_tl143745143768_
                                       (##cdr _e143743143763_)))
                                  (let ((_path143771_ _hd143744143766_))
                                    (if (gx#stx-null? _tl143745143768_)
                                        (if (gx#stx-string? _path143771_)
                                            (let ((_rpath143776_
                                                   (let ((_$e143773_
                                                          _rpath143736_))
                                                     (if _$e143773_
                                                         _$e143773_
                                                         (gx#core-resolve-path__%
                                                          _path143771_
                                                          (gx#stx-source
                                                           _stx143735_))))))
                                              (if (member _rpath143776_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx143735_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath143776_))
                                                    (gx#stx-source
                                                     _stx143735_)))))
                                            (_E143739143751_))
                                        (_E143739143751_)))))
                              (_E143739143751_))))
                      (_E143739143751_)))))
          (_E143738143778_))))
    (define gx#core-expand-include%__0
      (lambda (_stx143785_)
        (let ((_rpath143787_ '#f))
          (gx#core-expand-include%__% _stx143785_ _rpath143787_))))
    (define gx#core-expand-include%
      (lambda _g149428_
        (let ((_g149427_ (##length _g149428_)))
          (cond ((##fx= _g149427_ 1)
                 (apply (lambda (_stx143785_)
                          (gx#core-expand-include%__0 _stx143785_))
                        _g149428_))
                ((##fx= _g149427_ 2)
                 (apply (lambda (_stx143789_ _rpath143790_)
                          (gx#core-expand-include%__%
                           _stx143789_
                           _rpath143790_))
                        _g149428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g149428_))))))
    (define gx#core-apply-expander__%
      (lambda (_K143704_ _stx143705_ _method143706_)
        (if (procedure? _K143704_)
            (let ((_$e143708_ (gx#stx-source _stx143705_)))
              (if _$e143708_
                  ((lambda (_g143710143712_)
                     (gx#stx-wrap-source
                      (_K143704_ _stx143705_)
                      _g143710143712_))
                   _$e143708_)
                  (_K143704_ _stx143705_)))
            (let ((_$e143715_ (bound-method-ref _K143704_ _method143706_)))
              (if _$e143715_
                  ((lambda (_g143717143719_)
                     (gx#core-apply-expander__%
                      _g143717143719_
                      _stx143705_
                      _method143706_))
                   _$e143715_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx143705_
                   _method143706_))))))
    (define gx#core-apply-expander__0
      (lambda (_K143725_ _stx143726_)
        (let ((_method143728_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K143725_ _stx143726_ _method143728_))))
    (define gx#core-apply-expander
      (lambda _g149430_
        (let ((_g149429_ (##length _g149430_)))
          (cond ((##fx= _g149429_ 2)
                 (apply (lambda (_K143725_ _stx143726_)
                          (gx#core-apply-expander__0 _K143725_ _stx143726_))
                        _g149430_))
                ((##fx= _g149429_ 3)
                 (apply (lambda (_K143730_ _stx143731_ _method143732_)
                          (gx#core-apply-expander__%
                           _K143730_
                           _stx143731_
                           _method143732_))
                        _g149430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g149430_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self143700_ _stx143701_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx143701_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self143553_ _stx143554_)
        (let* ((_self143555143561_ _self143553_)
               (_E143557143565_
                (lambda () (error '"No clause matching" _self143555143561_)))
               (_K143558143570_
                (lambda (_K143568_)
                  (gx#core-apply-expander__0 _K143568_ _stx143554_))))
          (if (##structure-instance-of? _self143555143561_ 'gx#core-macro::t)
              (let* ((_e143559143573_
                      (##unchecked-structure-ref
                       _self143555143561_
                       '1
                       gx#expander::t
                       '#f))
                     (_K143576_ _e143559143573_))
                (_K143558143570_ _K143576_))
              (_E143557143565_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self143406_ _stx143407_)
        (if (gx#sealed-syntax? _stx143407_)
            _stx143407_
            (let* ((_self143408143414_ _self143406_)
                   (_E143410143418_
                    (lambda ()
                      (error '"No clause matching" _self143408143414_)))
                   (_K143411143423_
                    (lambda (_K143421_)
                      (gx#core-apply-expander__0 _K143421_ _stx143407_))))
              (if (##structure-instance-of?
                   _self143408143414_
                   'gx#core-expander::t)
                  (let* ((_e143412143426_
                          (##unchecked-structure-ref
                           _self143408143414_
                           '1
                           gx#expander::t
                           '#f))
                         (_K143429_ _e143412143426_))
                    (_K143411143423_ _K143429_))
                  (_E143410143418_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self143268_ _stx143269_ _top?143270_)
        (if (_top?143270_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self143268_ _stx143269_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx143269_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self143275_ _stx143276_)
        (let ((_top?143278_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self143275_
           _stx143276_
           _top?143278_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g149432_
        (let ((_g149431_ (##length _g149432_)))
          (cond ((##fx= _g149431_ 2)
                 (apply (lambda (_self143275_ _stx143276_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self143275_
                           _stx143276_))
                        _g149432_))
                ((##fx= _g149431_ 3)
                 (apply (lambda (_self143280_ _stx143281_ _top?143282_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self143280_
                           _stx143281_
                           _top?143282_))
                        _g149432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g149432_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self143142_ _stx143143_)
        (gx#top-special-form::apply-macro-expander__%
         _self143142_
         _stx143143_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self142967_ _stx142968_)
        (let* ((_self142969142975_ _self142967_)
               (_E142971142979_
                (lambda () (error '"No clause matching" _self142969142975_)))
               (_K142972143012_
                (lambda (_id142982_)
                  (let* ((_e142983142990_ _stx142968_)
                         (_E142985142994_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e142983142990_)))
                         (_E142984143008_
                          (lambda ()
                            (if (gx#stx-pair? _e142983142990_)
                                (let ((_e142986142998_
                                       (gx#syntax-e _e142983142990_)))
                                  (let ((_hd142987143001_
                                         (##car _e142986142998_))
                                        (_tl142988143003_
                                         (##cdr _e142986142998_)))
                                    (let ((_body143006_ _tl142988143003_))
                                      (if '#t
                                          (gx#core-cons
                                           _id142982_
                                           _body143006_)
                                          (_E142985142994_)))))
                                (_E142985142994_)))))
                    (_E142984143008_)))))
          (if (##structure-instance-of?
               _self142969142975_
               'gx#rename-macro-expander::t)
              (let* ((_e142973143015_
                      (##unchecked-structure-ref
                       _self142969142975_
                       '1
                       gx#expander::t
                       '#f))
                     (_id143018_ _e142973143015_))
                (_K142972143012_ _id143018_))
              (_E142971142979_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self142793_ _stx142794_ _method142795_)
        (let* ((_self142796142804_ _self142793_)
               (_E142798142808_
                (lambda () (error '"No clause matching" _self142796142804_)))
               (_K142799142815_
                (lambda (_phi142811_ _ctx142812_ _K142813_)
                  (gx#core-apply-user-macro
                   _K142813_
                   _stx142794_
                   _ctx142812_
                   _phi142811_
                   _method142795_))))
          (if (##structure-instance-of?
               _self142796142804_
               'gx#macro-expander::t)
              (let* ((_e142800142818_
                      (##unchecked-structure-ref
                       _self142796142804_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142821_ _e142800142818_)
                     (_e142801142823_
                      (##unchecked-structure-ref
                       _self142796142804_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx142826_ _e142801142823_)
                     (_e142802142828_
                      (##unchecked-structure-ref
                       _self142796142804_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi142831_ _e142802142828_))
                (_K142799142815_ _phi142831_ _ctx142826_ _K142821_))
              (_E142798142808_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self142836_ _stx142837_)
        (let ((_method142839_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self142836_
           _stx142837_
           _method142839_))))
    (define gx#core-apply-user-expander
      (lambda _g149434_
        (let ((_g149433_ (##length _g149434_)))
          (cond ((##fx= _g149433_ 2)
                 (apply (lambda (_self142836_ _stx142837_)
                          (gx#core-apply-user-expander__0
                           _self142836_
                           _stx142837_))
                        _g149434_))
                ((##fx= _g149433_ 3)
                 (apply (lambda (_self142841_ _stx142842_ _method142843_)
                          (gx#core-apply-user-expander__%
                           _self142841_
                           _stx142842_
                           _method142843_))
                        _g149434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g149434_))))))
    (define gx#core-apply-user-macro
      (lambda (_K142783_ _stx142784_ _ctx142785_ _phi142786_ _method142787_)
        (let ((_mark142789_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx142785_
                _phi142786_
                _stx142784_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K142783_
               (gx#stx-apply-mark _stx142784_ _mark142789_)
               _method142787_)
              _mark142789_))
           gx#current-expander-marks
           (cons _mark142789_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx142635_ _phi142636_ _ctx142637_)
        (let _lp142639_ ((_bind142641_
                          (gx#core-resolve-identifier__%
                           _stx142635_
                           _phi142636_
                           _ctx142637_)))
          (if (##structure-direct-instance-of?
               _bind142641_
               'gx#import-binding::t)
              (_lp142639_
               (##unchecked-structure-ref
                _bind142641_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind142641_
                   'gx#alias-binding::t)
                  (_lp142639_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind142641_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi142636_
                    _ctx142637_))
                  _bind142641_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx142646_)
        (let* ((_phi142648_ (gx#current-expander-phi))
               (_ctx142650_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142646_ _phi142648_ _ctx142650_))))
    (define gx#resolve-identifier__1
      (lambda (_stx142652_ _phi142653_)
        (let ((_ctx142655_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142652_ _phi142653_ _ctx142655_))))
    (define gx#resolve-identifier
      (lambda _g149436_
        (let ((_g149435_ (##length _g149436_)))
          (cond ((##fx= _g149435_ 1)
                 (apply (lambda (_stx142646_)
                          (gx#resolve-identifier__0 _stx142646_))
                        _g149436_))
                ((##fx= _g149435_ 2)
                 (apply (lambda (_stx142652_ _phi142653_)
                          (gx#resolve-identifier__1 _stx142652_ _phi142653_))
                        _g149436_))
                ((##fx= _g149435_ 3)
                 (apply (lambda (_stx142657_ _phi142658_ _ctx142659_)
                          (gx#resolve-identifier__%
                           _stx142657_
                           _phi142658_
                           _ctx142659_))
                        _g149436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g149436_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx142593_ _val142594_ _rebind?142595_ _phi142596_ _ctx142597_)
        (let ((_rebind?142599_
               (if (not _rebind?142595_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?142595_) _rebind?142595_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx142593_)
           _val142594_
           _rebind?142599_
           _phi142596_
           _ctx142597_))))
    (define gx#bind-identifier!__0
      (lambda (_stx142604_ _val142605_)
        (let* ((_rebind?142607_ '#f)
               (_phi142609_ (gx#current-expander-phi))
               (_ctx142611_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142604_
           _val142605_
           _rebind?142607_
           _phi142609_
           _ctx142611_))))
    (define gx#bind-identifier!__1
      (lambda (_stx142613_ _val142614_ _rebind?142615_)
        (let* ((_phi142617_ (gx#current-expander-phi))
               (_ctx142619_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142613_
           _val142614_
           _rebind?142615_
           _phi142617_
           _ctx142619_))))
    (define gx#bind-identifier!__2
      (lambda (_stx142621_ _val142622_ _rebind?142623_ _phi142624_)
        (let ((_ctx142626_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142621_
           _val142622_
           _rebind?142623_
           _phi142624_
           _ctx142626_))))
    (define gx#bind-identifier!
      (lambda _g149438_
        (let ((_g149437_ (##length _g149438_)))
          (cond ((##fx= _g149437_ 2)
                 (apply (lambda (_stx142604_ _val142605_)
                          (gx#bind-identifier!__0 _stx142604_ _val142605_))
                        _g149438_))
                ((##fx= _g149437_ 3)
                 (apply (lambda (_stx142613_ _val142614_ _rebind?142615_)
                          (gx#bind-identifier!__1
                           _stx142613_
                           _val142614_
                           _rebind?142615_))
                        _g149438_))
                ((##fx= _g149437_ 4)
                 (apply (lambda (_stx142621_
                                 _val142622_
                                 _rebind?142623_
                                 _phi142624_)
                          (gx#bind-identifier!__2
                           _stx142621_
                           _val142622_
                           _rebind?142623_
                           _phi142624_))
                        _g149438_))
                ((##fx= _g149437_ 5)
                 (apply (lambda (_stx142628_
                                 _val142629_
                                 _rebind?142630_
                                 _phi142631_
                                 _ctx142632_)
                          (gx#bind-identifier!__%
                           _stx142628_
                           _val142629_
                           _rebind?142630_
                           _phi142631_
                           _ctx142632_))
                        _g149438_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g149438_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx142565_ _phi142566_ _ctx142567_)
        (let _lp142569_ ((_e142571_ _stx142565_)
                         (_marks142572_ (gx#current-expander-marks)))
          (if (symbol? _e142571_)
              (gx#core-resolve-binding
               _e142571_
               _phi142566_
               _phi142566_
               _ctx142567_
               (reverse _marks142572_))
              (if (gx#identifier-quote? _e142571_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e142571_ '1 gx#AST::t '#f)
                   _phi142566_
                   '0
                   (##unchecked-structure-ref
                    _e142571_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e142571_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e142571_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e142571_ '1 gx#AST::t '#f)
                       _phi142566_
                       _phi142566_
                       _ctx142567_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e142571_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks142572_))
                      (if (##structure-direct-instance-of?
                           _e142571_
                           'gx#syntax-wrap::t)
                          (_lp142569_
                           (##unchecked-structure-ref
                            _e142571_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e142571_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks142572_))
                          (if (##structure-instance-of?
                               _e142571_
                               'gerbil#AST::t)
                              (_lp142569_
                               (##unchecked-structure-ref
                                _e142571_
                                '1
                                gx#AST::t
                                '#f)
                               _marks142572_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx142565_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx142577_)
        (let* ((_phi142579_ (gx#current-expander-phi))
               (_ctx142581_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142577_
           _phi142579_
           _ctx142581_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx142583_ _phi142584_)
        (let ((_ctx142586_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142583_
           _phi142584_
           _ctx142586_))))
    (define gx#core-resolve-identifier
      (lambda _g149440_
        (let ((_g149439_ (##length _g149440_)))
          (cond ((##fx= _g149439_ 1)
                 (apply (lambda (_stx142577_)
                          (gx#core-resolve-identifier__0 _stx142577_))
                        _g149440_))
                ((##fx= _g149439_ 2)
                 (apply (lambda (_stx142583_ _phi142584_)
                          (gx#core-resolve-identifier__1
                           _stx142583_
                           _phi142584_))
                        _g149440_))
                ((##fx= _g149439_ 3)
                 (apply (lambda (_stx142588_ _phi142589_ _ctx142590_)
                          (gx#core-resolve-identifier__%
                           _stx142588_
                           _phi142589_
                           _ctx142590_))
                        _g149440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g149440_))))))
    (define gx#core-resolve-binding
      (lambda (_id142478_
               _phi142479_
               _src-phi142480_
               _ctx142481_
               _marks142482_)
        (letrec ((_resolve142484_
                  (lambda (_ctx142552_ _src-phi142553_ _key142554_)
                    (let _lp142556_ ((_ctx142558_
                                      (gx#core-context-shift
                                       _ctx142552_
                                       _phi142479_))
                                     (_dphi142559_
                                      (fx- _phi142479_ _src-phi142553_)))
                      (let ((_$e142561_
                             (gx#core-context-resolve
                              _ctx142558_
                              _key142554_)))
                        (if _$e142561_
                            (values _$e142561_)
                            (if (fxzero? _dphi142559_)
                                '#f
                                (if (fxpositive? _dphi142559_)
                                    (_lp142556_
                                     (gx#core-context-shift _ctx142558_ '-1)
                                     (fx- _dphi142559_ '1))
                                    (_lp142556_
                                     (gx#core-context-shift _ctx142558_ '1)
                                     (fx+ _dphi142559_ '1))))))))))
          (let _lp142486_ ((_ctx142488_ _ctx142481_)
                           (_src-phi142489_ _src-phi142480_)
                           (_rest142490_ _marks142482_))
            (let* ((_rest142491142499_ _rest142490_)
                   (_else142493142507_
                    (lambda ()
                      (_resolve142484_
                       _ctx142488_
                       _src-phi142489_
                       _id142478_)))
                   (_K142495142540_
                    (lambda (_rest142510_ _hd142511_)
                      (let* ((_hd142512142518_ _hd142511_)
                             (_E142514142522_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd142512142518_)))
                             (_K142515142532_
                              (lambda (_subst142525_)
                                (let ((_$e142529_
                                       (let ((_key142527_
                                              (if _subst142525_
                                                  (table-ref
                                                   _subst142525_
                                                   _id142478_
                                                   '#f)
                                                  '#f)))
                                         (if _key142527_
                                             (_resolve142484_
                                              _ctx142488_
                                              _src-phi142489_
                                              _key142527_)
                                             '#f))))
                                  (if _$e142529_
                                      _$e142529_
                                      (_lp142486_
                                       (##unchecked-structure-ref
                                        _hd142511_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd142511_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest142510_))))))
                        (if (##structure-instance-of?
                             _hd142512142518_
                             'gx#expander-mark::t)
                            (let* ((_e142516142535_
                                    (##unchecked-structure-ref
                                     _hd142512142518_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst142538_ _e142516142535_))
                              (_K142515142532_ _subst142538_))
                            (_E142514142522_))))))
              (if (##pair? _rest142491142499_)
                  (let ((_hd142496142543_ (##car _rest142491142499_))
                        (_tl142497142545_ (##cdr _rest142491142499_)))
                    (let* ((_hd142548_ _hd142496142543_)
                           (_rest142550_ _tl142497142545_))
                      (_K142495142540_ _rest142550_ _hd142548_)))
                  (_else142493142507_)))))))
    (define gx#core-bind!__%
      (lambda (_key142354_ _val142355_ _rebind?142356_ _phi142357_ _ctx142358_)
        (letrec ((_update-binding142360_
                  (lambda (_xval142431_)
                    (if (or (_rebind?142356_
                             _ctx142358_
                             _xval142431_
                             _val142355_)
                            (and (##structure-direct-instance-of?
                                  _xval142431_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval142431_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val142355_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val142355_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval142431_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val142355_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val142355_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval142431_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val142355_
                        (if (and (##structure-direct-instance-of?
                                  _val142355_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val142355_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval142431_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val142355_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval142431_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval142431_
                            (if (and (##structure-direct-instance-of?
                                      _val142355_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval142431_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key142354_
                                 (cons (##unchecked-structure-ref
                                        _val142355_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val142355_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval142431_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval142431_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval142431_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval142431_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key142354_
                                 _val142355_
                                 _xval142431_))))))
                 (_gensubst142361_
                  (lambda (_subst142426_ _id142427_)
                    (let ((_eid142429_
                           (gensym (if (uninterned-symbol? _id142427_)
                                       '%
                                       _id142427_))))
                      (table-set! _subst142426_ _id142427_ _eid142429_)
                      _eid142429_)))
                 (_subst!142362_
                  (lambda (_key142364_)
                    (let* ((_key142365142373_ _key142364_)
                           (_else142367142381_ (lambda () _key142364_))
                           (_K142369142414_
                            (lambda (_mark142384_ _id142385_)
                              (let* ((_mark142386142392_ _mark142384_)
                                     (_E142388142396_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark142386142392_)))
                                     (_K142389142406_
                                      (lambda (_subst142399_)
                                        (if (not _subst142399_)
                                            (let ((_subst142401_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark142384_
                                               _subst142401_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst142361_
                                               _subst142401_
                                               _id142385_))
                                            (let ((_$e142403_
                                                   (table-ref
                                                    _subst142399_
                                                    _id142385_
                                                    '#f)))
                                              (if _$e142403_
                                                  (values _$e142403_)
                                                  (_gensubst142361_
                                                   _subst142399_
                                                   _id142385_)))))))
                                (if (##structure-instance-of?
                                     _mark142386142392_
                                     'gx#expander-mark::t)
                                    (let* ((_e142390142409_
                                            (##unchecked-structure-ref
                                             _mark142386142392_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst142412_ _e142390142409_))
                                      (_K142389142406_ _subst142412_))
                                    (_E142388142396_))))))
                      (if (##pair? _key142365142373_)
                          (let ((_hd142370142417_ (##car _key142365142373_))
                                (_tl142371142419_ (##cdr _key142365142373_)))
                            (let* ((_id142422_ _hd142370142417_)
                                   (_mark142424_ _tl142371142419_))
                              (_K142369142414_ _mark142424_ _id142422_)))
                          (_else142367142381_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx142358_ _phi142357_)
           (_subst!142362_ _key142354_)
           _val142355_
           _update-binding142360_))))
    (define gx#core-bind!__0
      (lambda (_key142448_ _val142449_)
        (let* ((_rebind?142451_ false)
               (_phi142453_ (gx#current-expander-phi))
               (_ctx142455_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142448_
           _val142449_
           _rebind?142451_
           _phi142453_
           _ctx142455_))))
    (define gx#core-bind!__1
      (lambda (_key142457_ _val142458_ _rebind?142459_)
        (let* ((_phi142461_ (gx#current-expander-phi))
               (_ctx142463_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142457_
           _val142458_
           _rebind?142459_
           _phi142461_
           _ctx142463_))))
    (define gx#core-bind!__2
      (lambda (_key142465_ _val142466_ _rebind?142467_ _phi142468_)
        (let ((_ctx142470_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142465_
           _val142466_
           _rebind?142467_
           _phi142468_
           _ctx142470_))))
    (define gx#core-bind!
      (lambda _g149442_
        (let ((_g149441_ (##length _g149442_)))
          (cond ((##fx= _g149441_ 2)
                 (apply (lambda (_key142448_ _val142449_)
                          (gx#core-bind!__0 _key142448_ _val142449_))
                        _g149442_))
                ((##fx= _g149441_ 3)
                 (apply (lambda (_key142457_ _val142458_ _rebind?142459_)
                          (gx#core-bind!__1
                           _key142457_
                           _val142458_
                           _rebind?142459_))
                        _g149442_))
                ((##fx= _g149441_ 4)
                 (apply (lambda (_key142465_
                                 _val142466_
                                 _rebind?142467_
                                 _phi142468_)
                          (gx#core-bind!__2
                           _key142465_
                           _val142466_
                           _rebind?142467_
                           _phi142468_))
                        _g149442_))
                ((##fx= _g149441_ 5)
                 (apply (lambda (_key142472_
                                 _val142473_
                                 _rebind?142474_
                                 _phi142475_
                                 _ctx142476_)
                          (gx#core-bind!__%
                           _key142472_
                           _val142473_
                           _rebind?142474_
                           _phi142475_
                           _ctx142476_))
                        _g149442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g149442_))))))
    (define gx#core-identifier-key
      (lambda (_stx142288_)
        (if (symbol? _stx142288_)
            (let* ((_g142289142297_ (gx#current-expander-marks))
                   (_else142291142305_ (lambda () _stx142288_))
                   (_K142293142310_
                    (lambda (_hd142308_) (cons _stx142288_ _hd142308_))))
              (if (##pair? _g142289142297_)
                  (let* ((_hd142294142313_ (##car _g142289142297_))
                         (_hd142316_ _hd142294142313_))
                    (_K142293142310_ _hd142316_))
                  (_else142291142305_)))
            (if (gx#identifier? _stx142288_)
                (let* ((_id142318_ (gx#syntax-local-unwrap _stx142288_))
                       (_eid142320_ (gx#stx-e _id142318_))
                       (_marks142322_ (gx#stx-identifier-marks* _id142318_)))
                  (let* ((_marks142324142332_ _marks142322_)
                         (_else142326142340_ (lambda () _eid142320_))
                         (_K142328142345_
                          (lambda (_hd142343_) (cons _eid142320_ _hd142343_))))
                    (if (##pair? _marks142324142332_)
                        (let* ((_hd142329142348_ (##car _marks142324142332_))
                               (_hd142351_ _hd142329142348_))
                          (_K142328142345_ _hd142351_))
                        (_else142326142340_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx142288_)))))
    (define gx#core-context-shift
      (lambda (_ctx142233_ _phi142234_)
        (letrec ((_make-phi142236_
                  (lambda (_super142286_)
                    (let ((__obj149413
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj149413
                       (gensym 'phi)
                       _super142286_)
                      __obj149413)))
                 (_make-phi/up142237_
                  (lambda (_ctx142281_ _super142282_)
                    (let ((_ctx+1142284_ (_make-phi142236_ _super142282_)))
                      (##unchecked-structure-set!
                       _ctx142281_
                       _ctx+1142284_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1142284_
                       _ctx142281_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1142284_)))
                 (_make-phi/down142238_
                  (lambda (_ctx142276_ _super142277_)
                    (let ((_ctx-1142279_ (_make-phi142236_ _super142277_)))
                      (##unchecked-structure-set!
                       _ctx-1142279_
                       _ctx142276_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx142276_
                       _ctx-1142279_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1142279_)))
                 (_shift142239_
                  (lambda (_ctx142260_
                           _delta142261_
                           _make-delta-context142262_
                           _phi142263_
                           _K142264_)
                    (let ((_$e142266_
                           (##unchecked-structure-ref
                            _ctx142260_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e142266_
                          ((lambda (_super142269_)
                             (let* ((_super142271_
                                     (_K142264_ _super142269_ _delta142261_))
                                    (_ctx+d142273_
                                     (_make-delta-context142262_
                                      _ctx142260_
                                      _super142271_)))
                               (_K142264_
                                _ctx+d142273_
                                (fx- _phi142263_ _delta142261_))))
                           _$e142266_)
                          (error '"Bad context" _ctx142260_))))))
          (let _K142241_ ((_ctx142243_ _ctx142233_) (_phi142244_ _phi142234_))
            (if (fxzero? _phi142244_)
                _ctx142243_
                (if (fx> (##vector-length _ctx142243_) '3)
                    (if (fxpositive? _phi142244_)
                        (let ((_$e142246_
                               (##unchecked-structure-ref
                                _ctx142243_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e142246_
                              ((lambda (_g142248142250_)
                                 (_K142241_
                                  _g142248142250_
                                  (fx- _phi142244_ '1)))
                               _$e142246_)
                              (_shift142239_
                               _ctx142243_
                               '1
                               _make-phi/up142237_
                               _phi142244_
                               _K142241_)))
                        (let ((_$e142253_
                               (##unchecked-structure-ref
                                _ctx142243_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e142253_
                              ((lambda (_g142255142257_)
                                 (_K142241_
                                  _g142255142257_
                                  (fx+ _phi142244_ '1)))
                               _$e142253_)
                              (_shift142239_
                               _ctx142243_
                               '-1
                               _make-phi/down142238_
                               _phi142244_
                               _K142241_))))
                    _ctx142243_))))))
    (define gx#core-context-get
      (lambda (_ctx142230_ _key142231_)
        (table-ref
         (##unchecked-structure-ref _ctx142230_ '2 gx#expander-context::t '#f)
         _key142231_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx142226_ _key142227_ _val142228_)
        (table-set!
         (##unchecked-structure-ref _ctx142226_ '2 gx#expander-context::t '#f)
         _key142227_
         _val142228_)))
    (define gx#core-context-resolve
      (lambda (_ctx142213_ _key142214_)
        (let _lp142216_ ((_ctx142218_ _ctx142213_))
          (let ((_$e142220_ (gx#core-context-get _ctx142218_ _key142214_)))
            (if _$e142220_
                (values _$e142220_)
                (let ((_$e142223_
                       (if (fx> (##vector-length _ctx142218_) '3)
                           (##unchecked-structure-ref
                            _ctx142218_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e142223_ (_lp142216_ _$e142223_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx142203_ _key142204_ _val142205_ _rebind142206_)
        (let ((_$e142208_ (gx#core-context-get _ctx142203_ _key142204_)))
          (if _$e142208_
              ((lambda (_xval142211_)
                 (gx#core-context-put!
                  _ctx142203_
                  _key142204_
                  (_rebind142206_ _xval142211_)))
               _$e142208_)
              (gx#core-context-put! _ctx142203_ _key142204_ _val142205_)))))
    (define gx#core-context-top__%
      (lambda (_ctx142181_ _stop?142182_)
        (let _lp142184_ ((_ctx142186_ _ctx142181_))
          (if (_stop?142182_ _ctx142186_)
              _ctx142186_
              (if (##structure-instance-of? _ctx142186_ 'gx#context-phi::t)
                  (_lp142184_
                   (##unchecked-structure-ref
                    _ctx142186_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx142192_ (gx#current-expander-context))
               (_stop?142194_ gx#top-context?))
          (gx#core-context-top__% _ctx142192_ _stop?142194_))))
    (define gx#core-context-top__1
      (lambda (_ctx142196_)
        (let ((_stop?142198_ gx#top-context?))
          (gx#core-context-top__% _ctx142196_ _stop?142198_))))
    (define gx#core-context-top
      (lambda _g149444_
        (let ((_g149443_ (##length _g149444_)))
          (cond ((##fx= _g149443_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g149444_))
                ((##fx= _g149443_ 1)
                 (apply (lambda (_ctx142196_)
                          (gx#core-context-top__1 _ctx142196_))
                        _g149444_))
                ((##fx= _g149443_ 2)
                 (apply (lambda (_ctx142200_ _stop?142201_)
                          (gx#core-context-top__% _ctx142200_ _stop?142201_))
                        _g149444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g149444_))))))
    (define gx#core-context-root__%
      (lambda (_ctx142166_)
        (let _lp142168_ ((_ctx142170_ _ctx142166_))
          (if (##structure-instance-of? _ctx142170_ 'gx#context-phi::t)
              (_lp142168_
               (##unchecked-structure-ref
                _ctx142170_
                '3
                gx#phi-context::t
                '#f))
              _ctx142170_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx142176_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx142176_))))
    (define gx#core-context-root
      (lambda _g149446_
        (let ((_g149445_ (##length _g149446_)))
          (cond ((##fx= _g149445_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g149446_))
                ((##fx= _g149445_ 1)
                 (apply (lambda (_ctx142178_)
                          (gx#core-context-root__% _ctx142178_))
                        _g149446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g149446_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx142147_ . __142144142148_)
        (let ((_$e142151_ (gx#current-expander-allow-rebind?)))
          (if _$e142151_
              _$e142151_
              (if (##structure-instance-of? _ctx142147_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx142147_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx142147_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx142158_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx142158_))))
    (define gx#core-context-rebind?
      (lambda _g149448_
        (let ((_g149447_ (##length _g149448_)))
          (cond ((##fx= _g149447_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g149448_))
                ((##fx= _g149447_ 1)
                 (apply (lambda (_ctx142160_)
                          (gx#core-context-rebind?__% _ctx142160_))
                        _g149448_))
                ((##fx>= _g149447_ 1)
                 (apply gx#core-context-rebind?__% _g149448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g149448_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx142130_)
        (let ((_$e142132_ (gx#core-context-top__1 _ctx142130_)))
          (if _$e142132_
              ((lambda (_ctx142135_)
                 (if (##structure-instance-of?
                      _ctx142135_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx142135_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e142132_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx142141_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx142141_))))
    (define gx#core-context-namespace
      (lambda _g149450_
        (let ((_g149449_ (##length _g149450_)))
          (cond ((##fx= _g149449_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g149450_))
                ((##fx= _g149449_ 1)
                 (apply (lambda (_ctx142143_)
                          (gx#core-context-namespace__% _ctx142143_))
                        _g149450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g149450_))))))
    (define gx#expander-binding?__%
      (lambda (_bind142116_ _is?142117_)
        (if (##structure-direct-instance-of?
             _bind142116_
             'gx#syntax-binding::t)
            (_is?142117_
             (##unchecked-structure-ref
              _bind142116_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind142122_)
        (let ((_is?142124_ gx#expander?))
          (gx#expander-binding?__% _bind142122_ _is?142124_))))
    (define gx#expander-binding?
      (lambda _g149452_
        (let ((_g149451_ (##length _g149452_)))
          (cond ((##fx= _g149451_ 1)
                 (apply (lambda (_bind142122_)
                          (gx#expander-binding?__0 _bind142122_))
                        _g149452_))
                ((##fx= _g149451_ 2)
                 (apply (lambda (_bind142126_ _is?142127_)
                          (gx#expander-binding?__% _bind142126_ _is?142127_))
                        _g149452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g149452_))))))
    (define gx#core-expander-binding?
      (lambda (_bind142113_)
        (gx#expander-binding?__% _bind142113_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind142111_)
        (gx#expander-binding?__% _bind142111_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind142105_)
        (letrec ((_direct-special-form?142107_
                  (lambda (_obj142109_)
                    (##structure-direct-instance-of?
                     _obj142109_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind142105_
           _direct-special-form?142107_))))
    (define gx#special-form-binding?
      (lambda (_bind142103_)
        (gx#expander-binding?__% _bind142103_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind142094_)
        (letrec ((_feature?142096_
                  (lambda (_e142098_)
                    (let ((_$e142100_
                           (##structure-instance-of?
                            _e142098_
                            'gx#feature-expander::t)))
                      (if _$e142100_
                          _$e142100_
                          (##structure-instance-of?
                           _e142098_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind142094_ _feature?142096_))))
    (define gx#private-feature-binding?
      (lambda (_bind142092_)
        (gx#expander-binding?__% _bind142092_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id142079_ _bound?142080_)
        (if (gx#identifier? _id142079_)
            (_bound?142080_ (gx#resolve-identifier__0 _id142079_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id142085_)
        (let ((_bound?142087_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id142085_ _bound?142087_))))
    (define gx#core-bound-identifier?
      (lambda _g149454_
        (let ((_g149453_ (##length _g149454_)))
          (cond ((##fx= _g149453_ 1)
                 (apply (lambda (_id142085_)
                          (gx#core-bound-identifier?__0 _id142085_))
                        _g149454_))
                ((##fx= _g149453_ 2)
                 (apply (lambda (_id142089_ _bound?142090_)
                          (gx#core-bound-identifier?__%
                           _id142089_
                           _bound?142090_))
                        _g149454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g149454_))))))
    (define gx#core-identifier=?
      (lambda (_x142069_ _y142070_)
        (letrec ((_y=?142072_
                  (lambda (_xid142076_)
                    ((if (list? _y142070_) memq eq?) _xid142076_ _y142070_))))
          (let ((_bind142074_ (gx#resolve-identifier__0 _x142069_)))
            (if (##structure-instance-of? _bind142074_ 'gx#binding::t)
                (_y=?142072_
                 (##unchecked-structure-ref _bind142074_ '1 gx#binding::t '#f))
                (_y=?142072_ (gx#stx-e _x142069_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e142067_)
        (if (interned-symbol? _e142067_)
            (string-index (symbol->string _e142067_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx142022_ _src142023_ _ctx142024_ _marks142025_)
        (if (##structure? _stx142022_)
            (let ((_$e142027_ (gx#sealed-syntax-unwrap _stx142022_)))
              (if _$e142027_
                  (values _$e142027_)
                  (if (gx#identifier? _stx142022_)
                      (let ((_id142030_
                             (gx#stx-unwrap__% _stx142022_ _marks142025_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id142030_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e142032_
                                (##unchecked-structure-ref
                                 _id142030_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e142032_ _$e142032_ _src142023_))
                         _ctx142024_
                         (##unchecked-structure-ref
                          _id142030_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx142022_)
                       (let ((_$e142035_ (gx#stx-source _stx142022_)))
                         (if _$e142035_ _$e142035_ _src142023_))
                       _ctx142024_
                       (reverse _marks142025_)))))
            (##structure
             gx#syntax-quote::t
             _stx142022_
             _src142023_
             _ctx142024_
             (reverse _marks142025_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx142041_)
        (let* ((_src142043_ '#f)
               (_ctx142045_ (gx#current-expander-context))
               (_marks142047_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142041_
           _src142043_
           _ctx142045_
           _marks142047_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx142049_ _src142050_)
        (let* ((_ctx142052_ (gx#current-expander-context))
               (_marks142054_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142049_
           _src142050_
           _ctx142052_
           _marks142054_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx142056_ _src142057_ _ctx142058_)
        (let ((_marks142060_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142056_
           _src142057_
           _ctx142058_
           _marks142060_))))
    (define gx#core-quote-syntax
      (lambda _g149456_
        (let ((_g149455_ (##length _g149456_)))
          (cond ((##fx= _g149455_ 1)
                 (apply (lambda (_stx142041_)
                          (gx#core-quote-syntax__0 _stx142041_))
                        _g149456_))
                ((##fx= _g149455_ 2)
                 (apply (lambda (_stx142049_ _src142050_)
                          (gx#core-quote-syntax__1 _stx142049_ _src142050_))
                        _g149456_))
                ((##fx= _g149455_ 3)
                 (apply (lambda (_stx142056_ _src142057_ _ctx142058_)
                          (gx#core-quote-syntax__2
                           _stx142056_
                           _src142057_
                           _ctx142058_))
                        _g149456_))
                ((##fx= _g149455_ 4)
                 (apply (lambda (_stx142062_
                                 _src142063_
                                 _ctx142064_
                                 _marks142065_)
                          (gx#core-quote-syntax__%
                           _stx142062_
                           _src142063_
                           _ctx142064_
                           _marks142065_))
                        _g149456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g149456_))))))
    (define gx#core-cons
      (lambda (_hd142018_ _tl142019_)
        (cons (gx#core-quote-syntax__0 _hd142018_) _tl142019_)))
    (define gx#core-list
      (lambda (_hd142015_ . _rest142016_)
        (cons (gx#core-quote-syntax__0 _hd142015_) _rest142016_)))
    (define gx#core-cons*
      (lambda (_hd142012_ . _rest142013_)
        (apply cons* (gx#core-quote-syntax__0 _hd142012_) _rest142013_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path141986_ _rel141987_)
        (let ((_path141999_ (gx#stx-e _stx-path141986_))
              (_reldir142000_
               (let _lp141989_ ((_relsrc141991_
                                 (let ((_$e141996_
                                        (gx#stx-source _stx-path141986_)))
                                   (if _$e141996_ _$e141996_ _rel141987_))))
                 (if (##structure-instance-of? _relsrc141991_ 'gerbil#AST::t)
                     (_lp141989_
                      (let ((_$e141993_ (gx#stx-source _relsrc141991_)))
                        (if _$e141993_ _$e141993_ (gx#stx-e _relsrc141991_))))
                     (if (source-location-path? _relsrc141991_)
                         (path-directory (source-location-path _relsrc141991_))
                         (if (string? _relsrc141991_)
                             (path-directory _relsrc141991_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path141999_ (path-normalize _reldir142000_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path142005_)
        (let ((_rel142007_ '#f))
          (gx#core-resolve-path__% _stx-path142005_ _rel142007_))))
    (define gx#core-resolve-path
      (lambda _g149458_
        (let ((_g149457_ (##length _g149458_)))
          (cond ((##fx= _g149457_ 1)
                 (apply (lambda (_stx-path142005_)
                          (gx#core-resolve-path__0 _stx-path142005_))
                        _g149458_))
                ((##fx= _g149457_ 2)
                 (apply (lambda (_stx-path142009_ _rel142010_)
                          (gx#core-resolve-path__%
                           _stx-path142009_
                           _rel142010_))
                        _g149458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g149458_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr141942_ _ctx141943_)
        (let* ((_repr141944141951_ _repr141942_)
               (_E141946141955_
                (lambda () (error '"No clause matching" _repr141944141951_)))
               (_K141947141963_
                (lambda (_subs141958_ _phi141959_)
                  (let ((_subst141961_
                         (if (not (null? _subs141958_))
                             (list->table _subs141958_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst141961_
                     _ctx141943_
                     _phi141959_
                     '#f)))))
          (if (##pair? _repr141944141951_)
              (let ((_hd141948141966_ (##car _repr141944141951_))
                    (_tl141949141968_ (##cdr _repr141944141951_)))
                (let* ((_phi141971_ _hd141948141966_)
                       (_subs141973_ _tl141949141968_))
                  (_K141947141963_ _subs141973_ _phi141971_)))
              (_E141946141955_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr141978_)
        (let ((_ctx141980_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr141978_ _ctx141980_))))
    (define gx#core-deserialize-mark
      (lambda _g149460_
        (let ((_g149459_ (##length _g149460_)))
          (cond ((##fx= _g149459_ 1)
                 (apply (lambda (_repr141978_)
                          (gx#core-deserialize-mark__0 _repr141978_))
                        _g149460_))
                ((##fx= _g149459_ 2)
                 (apply (lambda (_repr141982_ _ctx141983_)
                          (gx#core-deserialize-mark__%
                           _repr141982_
                           _ctx141983_))
                        _g149460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g149460_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx141939_)
        (gx#stx-rewrap _stx141939_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx141937_)
        (gx#stx-unwrap__% _stx141937_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx141907_)
        (let* ((_g141908141916_ (gx#current-expander-marks))
               (_else141910141924_ (lambda () _stx141907_))
               (_K141912141929_
                (lambda (_hd141927_)
                  (gx#stx-apply-mark _stx141907_ _hd141927_))))
          (if (##pair? _g141908141916_)
              (let* ((_hd141913141932_ (##car _g141908141916_))
                     (_hd141935_ _hd141913141932_))
                (_K141912141929_ _hd141935_))
              (_else141910141924_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx141892_ _E141893_)
        (let ((_bind141895_ (gx#resolve-identifier__0 _stx141892_)))
          (if (##structure-direct-instance-of?
               _bind141895_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind141895_
               '4
               gx#syntax-binding::t
               '#f)
              (_E141893_ _stx141892_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx141900_)
        (let ((_E141902_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx141900_ _E141902_))))
    (define gx#syntax-local-e
      (lambda _g149462_
        (let ((_g149461_ (##length _g149462_)))
          (cond ((##fx= _g149461_ 1)
                 (apply (lambda (_stx141900_)
                          (gx#syntax-local-e__0 _stx141900_))
                        _g149462_))
                ((##fx= _g149461_ 2)
                 (apply (lambda (_stx141904_ _E141905_)
                          (gx#syntax-local-e__% _stx141904_ _E141905_))
                        _g149462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g149462_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx141876_ _E141877_)
        (let ((_e141879_ (gx#syntax-local-e__% _stx141876_ _E141877_)))
          (if (##structure-instance-of? _e141879_ 'gx#expander::t)
              (##structure-ref _e141879_ '1 gx#expander::t '#f)
              _e141879_))))
    (define gx#syntax-local-value__0
      (lambda (_stx141884_)
        (let ((_E141886_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx141884_ _E141886_))))
    (define gx#syntax-local-value
      (lambda _g149464_
        (let ((_g149463_ (##length _g149464_)))
          (cond ((##fx= _g149463_ 1)
                 (apply (lambda (_stx141884_)
                          (gx#syntax-local-value__0 _stx141884_))
                        _g149464_))
                ((##fx= _g149463_ 2)
                 (apply (lambda (_stx141888_ _E141889_)
                          (gx#syntax-local-value__% _stx141888_ _E141889_))
                        _g149464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g149464_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx141873_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx141873_)))))
