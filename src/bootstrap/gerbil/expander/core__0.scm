(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707674931)
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
      (lambda _$args144796_
        (apply make-instance gx#expander-context::t _$args144796_)))
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
      (lambda _$args144793_
        (apply make-instance gx#root-context::t _$args144793_)))
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
      (lambda _$args144790_
        (apply make-instance gx#phi-context::t _$args144790_)))
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
      (lambda _$args144787_
        (apply make-instance gx#top-context::t _$args144787_)))
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
      (lambda _$args144784_
        (apply make-instance gx#module-context::t _$args144784_)))
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
      (lambda _$args144781_
        (apply make-instance gx#prelude-context::t _$args144781_)))
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
      (lambda _$args144778_
        (apply make-instance gx#local-context::t _$args144778_)))
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
      (lambda (_self144762_ _id144763_ _super144764_)
        (if (##fx< '3 (##structure-length _self144762_))
            (begin
              (##unchecked-structure-set!
               _self144762_
               _id144763_
               '1
               (##structure-type _self144762_)
               '#f)
              (##unchecked-structure-set!
               _self144762_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144762_)
               '#f)
              (##unchecked-structure-set!
               _self144762_
               _super144764_
               '3
               (##structure-type _self144762_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144762_
                   '3
                   (##vector-length _self144762_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self144769_ _id144770_)
        (let ((_super144772_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self144769_ _id144770_ _super144772_))))
    (define gx#phi-context:::init!
      (lambda _g149407_
        (let ((_g149406_ (##length _g149407_)))
          (cond ((##fx= _g149406_ 2)
                 (apply (lambda (_self144769_ _id144770_)
                          (gx#phi-context:::init!__0 _self144769_ _id144770_))
                        _g149407_))
                ((##fx= _g149406_ 3)
                 (apply (lambda (_self144774_ _id144775_ _super144776_)
                          (gx#phi-context:::init!__%
                           _self144774_
                           _id144775_
                           _super144776_))
                        _g149407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g149407_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self144626_ _super144627_)
        (if (##fx< '3 (##structure-length _self144626_))
            (begin
              (##unchecked-structure-set!
               _self144626_
               (gensym 'L)
               '1
               (##structure-type _self144626_)
               '#f)
              (##unchecked-structure-set!
               _self144626_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144626_)
               '#f)
              (##unchecked-structure-set!
               _self144626_
               _super144627_
               '3
               (##structure-type _self144626_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144626_
                   '3
                   (##vector-length _self144626_)))))
    (define gx#local-context:::init!__0
      (lambda (_self144632_)
        (let ((_super144634_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self144632_ _super144634_))))
    (define gx#local-context:::init!
      (lambda _g149409_
        (let ((_g149408_ (##length _g149409_)))
          (cond ((##fx= _g149408_ 1)
                 (apply (lambda (_self144632_)
                          (gx#local-context:::init!__0 _self144632_))
                        _g149409_))
                ((##fx= _g149408_ 2)
                 (apply (lambda (_self144636_ _super144637_)
                          (gx#local-context:::init!__%
                           _self144636_
                           _super144637_))
                        _g149409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g149409_))))))
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
      (lambda _$args144500_ (apply make-instance gx#binding::t _$args144500_)))
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
      (lambda _$args144497_
        (apply make-instance gx#runtime-binding::t _$args144497_)))
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
      (lambda _$args144494_
        (apply make-instance gx#local-binding::t _$args144494_)))
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
      (lambda _$args144491_
        (apply make-instance gx#top-binding::t _$args144491_)))
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
      (lambda _$args144488_
        (apply make-instance gx#module-binding::t _$args144488_)))
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
      (lambda _$args144485_
        (apply make-instance gx#extern-binding::t _$args144485_)))
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
      (lambda _$args144482_
        (apply make-instance gx#syntax-binding::t _$args144482_)))
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
      (lambda _$args144479_
        (apply make-instance gx#import-binding::t _$args144479_)))
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
      (lambda _$args144476_
        (apply make-instance gx#alias-binding::t _$args144476_)))
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
      (lambda _$args144473_
        (apply make-instance gx#expander::t _$args144473_)))
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
      (lambda _$args144470_
        (apply make-instance gx#core-expander::t _$args144470_)))
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
      (lambda _$args144467_
        (apply make-instance gx#expression-form::t _$args144467_)))
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
      (lambda _$args144464_
        (apply make-instance gx#special-form::t _$args144464_)))
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
      (lambda _$args144461_
        (apply make-instance gx#definition-form::t _$args144461_)))
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
      (lambda _$args144458_
        (apply make-instance gx#top-special-form::t _$args144458_)))
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
      (lambda _$args144455_
        (apply make-instance gx#module-special-form::t _$args144455_)))
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
      (lambda _$args144452_
        (apply make-instance gx#feature-expander::t _$args144452_)))
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
      (lambda _$args144449_
        (apply make-instance gx#private-feature-expander::t _$args144449_)))
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
      (lambda _$args144446_
        (apply make-instance gx#reserved-expander::t _$args144446_)))
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
      (lambda _$args144443_
        (apply make-instance gx#macro-expander::t _$args144443_)))
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
      (lambda _$args144440_
        (apply make-instance gx#rename-macro-expander::t _$args144440_)))
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
      (lambda _$args144437_
        (apply make-instance gx#user-expander::t _$args144437_)))
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
      (lambda _$args144434_
        (apply make-instance gx#expander-mark::t _$args144434_)))
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
      (lambda (_ctx144419_ _message144420_ _stx144421_ . _details144422_)
        (let ((_ctx144432_
               (let ((_$e144424_ _ctx144419_))
                 (if _$e144424_
                     _$e144424_
                     (let ((_$e144427_ (gx#core-context-top__0)))
                       (if _$e144427_
                           ((lambda (_ctx144430_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx144430_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e144427_)
                           '#f))))))
          (raise (make-syntax-error
                  _message144420_
                  (cons _stx144421_ _details144422_)
                  _ctx144432_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx144406_ _expression?144407_)
        (gx#eval-syntax* (gx#core-expand__% _stx144406_ _expression?144407_))))
    (define gx#eval-syntax__0
      (lambda (_stx144412_)
        (let ((_expression?144414_ '#f))
          (gx#eval-syntax__% _stx144412_ _expression?144414_))))
    (define gx#eval-syntax
      (lambda _g149411_
        (let ((_g149410_ (##length _g149411_)))
          (cond ((##fx= _g149410_ 1)
                 (apply (lambda (_stx144412_) (gx#eval-syntax__0 _stx144412_))
                        _g149411_))
                ((##fx= _g149410_ 2)
                 (apply (lambda (_stx144416_ _expression?144417_)
                          (gx#eval-syntax__% _stx144416_ _expression?144417_))
                        _g149411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g149411_))))))
    (define gx#eval-syntax*
      (lambda (_stx144403_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx144403_))))
    (define gx#core-expand__%
      (lambda (_stx144390_ _expression?144391_)
        (if _expression?144391_
            (gx#core-expand-expression _stx144390_)
            (gx#core-expand-top _stx144390_))))
    (define gx#core-expand__0
      (lambda (_stx144396_)
        (let ((_expression?144398_ '#f))
          (gx#core-expand__% _stx144396_ _expression?144398_))))
    (define gx#core-expand
      (lambda _g149413_
        (let ((_g149412_ (##length _g149413_)))
          (cond ((##fx= _g149412_ 1)
                 (apply (lambda (_stx144396_) (gx#core-expand__0 _stx144396_))
                        _g149413_))
                ((##fx= _g149412_ 2)
                 (apply (lambda (_stx144400_ _expression?144401_)
                          (gx#core-expand__% _stx144400_ _expression?144401_))
                        _g149413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g149413_))))))
    (define gx#core-expand-top
      (lambda (_stx144357_)
        (let* ((_stx144359_ (gx#core-expand*__0 _stx144357_))
               (_e144360144367_ _stx144359_)
               (_E144362144371_
                (lambda () (gx#core-expand-expression _stx144359_)))
               (_E144361144385_
                (lambda ()
                  (if (gx#stx-pair? _e144360144367_)
                      (let ((_e144363144375_ (gx#syntax-e _e144360144367_)))
                        (let ((_hd144364144378_ (##car _e144363144375_))
                              (_tl144365144380_ (##cdr _e144363144375_)))
                          (let ((_form144383_ _hd144364144378_))
                            (if (gx#core-bound-identifier?__0 _form144383_)
                                _stx144359_
                                (_E144362144371_)))))
                      (_E144362144371_)))))
          (_E144361144385_))))
    (define gx#core-expand-expression
      (lambda (_stx144304_)
        (letrec ((_sealed-expression?144306_
                  (lambda (_hd144327_)
                    (if (gx#sealed-syntax? _hd144327_)
                        (let* ((_e144328144335_ _hd144327_)
                               (_E144330144339_ (lambda () '#f))
                               (_E144329144353_
                                (lambda ()
                                  (if (gx#stx-pair? _e144328144335_)
                                      (let ((_e144331144343_
                                             (gx#syntax-e _e144328144335_)))
                                        (let ((_hd144332144346_
                                               (##car _e144331144343_))
                                              (_tl144333144348_
                                               (##cdr _e144331144343_)))
                                          (let ((_form144351_
                                                 _hd144332144346_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form144351_
                                                 gx#expression-form-binding?)
                                                (_E144330144339_)))))
                                      (_E144330144339_)))))
                          (_E144329144353_))
                        '#f)))
                 (_illegal-expression144307_
                  (lambda (_hd144325_ . _g149414_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx144304_
                     _hd144325_)))
                 (_expand-e144308_
                  (lambda (_form144320_ _hd144321_)
                    (let ((_bind144323_
                           (if (##structure-instance-of?
                                _form144320_
                                'gx#binding::t)
                               _form144320_
                               (gx#resolve-identifier__0 _form144320_))))
                      (if (gx#core-expander-binding? _bind144323_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind144323_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd144321_
                            (gx#stx-source _stx144304_)))
                          (if (##structure-direct-instance-of?
                               _bind144323_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind144323_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd144321_
                                 (gx#stx-source _stx144304_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx144304_
                               _form144320_)))))))
          (let ((_hd144310_ (gx#core-expand-head _stx144304_)))
            (if (_sealed-expression?144306_ _hd144310_)
                _hd144310_
                (if (gx#stx-pair? _hd144310_)
                    (let* ((_form144312_ (gx#stx-car _hd144310_))
                           (_bind144314_
                            (if (gx#identifier? _form144312_)
                                (gx#resolve-identifier__0 _form144312_)
                                '#f)))
                      (if (or (not _bind144314_)
                              (not (gx#core-expander-binding? _bind144314_)))
                          (_expand-e144308_ '%%app (cons '%%app _hd144310_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind144314_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd144310_
                               _illegal-expression144307_)
                              (if (gx#expression-form-binding? _bind144314_)
                                  (_expand-e144308_ _bind144314_ _hd144310_)
                                  (if (gx#direct-special-form-binding?
                                       _bind144314_)
                                      (gx#core-expand-expression
                                       (_expand-e144308_
                                        _bind144314_
                                        _hd144310_))
                                      (_illegal-expression144307_
                                       _hd144310_))))))
                    (if (gx#core-bound-identifier?__0 _hd144310_)
                        (_illegal-expression144307_ _hd144310_)
                        (if (gx#identifier? _hd144310_)
                            (_expand-e144308_
                             '%%ref
                             (cons '%%ref (cons _hd144310_ '())))
                            (if (gx#stx-datum? _hd144310_)
                                (_expand-e144308_
                                 '%#quote
                                 (cons '%#quote (cons _hd144310_ '())))
                                (_illegal-expression144307_
                                 _hd144310_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx144299_)
        (call-with-parameters
         (lambda ()
           (let ((_stx144302_ (gx#core-expand-expression _stx144299_)))
             (values _stx144302_ (gx#eval-syntax* _stx144302_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx144280_ _stop?144281_)
        (let _lp144283_ ((_stx144285_ _stx144280_))
          (if (_stop?144281_ _stx144285_)
              _stx144285_
              (let ((_rstx144287_ (gx#core-expand1 _stx144285_)))
                (if (eq? _stx144285_ _rstx144287_)
                    _stx144285_
                    (_lp144283_ _rstx144287_)))))))
    (define gx#core-expand*__0
      (lambda (_stx144292_)
        (let ((_stop?144294_ false))
          (gx#core-expand*__% _stx144292_ _stop?144294_))))
    (define gx#core-expand*
      (lambda _g149416_
        (let ((_g149415_ (##length _g149416_)))
          (cond ((##fx= _g149415_ 1)
                 (apply (lambda (_stx144292_) (gx#core-expand*__0 _stx144292_))
                        _g149416_))
                ((##fx= _g149415_ 2)
                 (apply (lambda (_stx144296_ _stop?144297_)
                          (gx#core-expand*__% _stx144296_ _stop?144297_))
                        _g149416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g149416_))))))
    (define gx#core-expand1
      (lambda (_stx144236_)
        (letrec ((_step144238_
                  (lambda (_hd144275_)
                    (let ((_bind144277_ (gx#resolve-identifier__0 _hd144275_)))
                      (if (##structure-instance-of?
                           _bind144277_
                           'gx#runtime-binding::t)
                          _stx144236_
                          (if (##structure-direct-instance-of?
                               _bind144277_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind144277_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx144236_)
                              (if (not _bind144277_)
                                  _stx144236_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx144236_))))))))
          (let* ((_e144239144247_ _stx144236_)
                 (_E144245144251_ (lambda () _stx144236_))
                 (_E144241144257_
                  (lambda ()
                    (let ((_hd144255_ _e144239144247_))
                      (if (gx#identifier? _hd144255_)
                          (_step144238_ _hd144255_)
                          (_E144245144251_)))))
                 (_E144240144271_
                  (lambda ()
                    (if (gx#stx-pair? _e144239144247_)
                        (let ((_e144242144261_ (gx#syntax-e _e144239144247_)))
                          (let ((_hd144243144264_ (##car _e144242144261_))
                                (_tl144244144266_ (##cdr _e144242144261_)))
                            (let ((_hd144269_ _hd144243144264_))
                              (if (gx#identifier? _hd144269_)
                                  (_step144238_ _hd144269_)
                                  (_E144241144257_)))))
                        (_E144241144257_)))))
            (_E144240144271_)))))
    (define gx#core-expand-head
      (lambda (_stx144202_)
        (letrec ((_stop?144204_
                  (lambda (_stx144206_)
                    (let* ((_e144207144214_ _stx144206_)
                           (_E144209144218_ (lambda () '#f))
                           (_E144208144232_
                            (lambda ()
                              (if (gx#stx-pair? _e144207144214_)
                                  (let ((_e144210144222_
                                         (gx#syntax-e _e144207144214_)))
                                    (let ((_hd144211144225_
                                           (##car _e144210144222_))
                                          (_tl144212144227_
                                           (##cdr _e144210144222_)))
                                      (let ((_hd144230_ _hd144211144225_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd144230_)
                                            (_E144209144218_)))))
                                  (_E144209144218_)))))
                      (_E144208144232_)))))
          (gx#core-expand*__% _stx144202_ _stop?144204_))))
    (define gx#core-expand-block__%
      (lambda (_stx144008_
               _expand-special144009_
               _begin-form144010_
               _expand-e144011_)
        (letrec ((_expand-splice144013_
                  (lambda (_hd144176_ _body144177_ _rest144178_ _r144179_)
                    (if (gx#stx-list? _body144177_)
                        (_K144017_
                         (gx#stx-foldr cons _rest144178_ _body144177_)
                         _r144179_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx144008_
                         _hd144176_))))
                 (_expand-cond-expand144014_
                  (lambda (_hd144172_ _rest144173_ _r144174_)
                    (_K144017_
                     (cons (gx#core-expand-cond-expand% _hd144172_)
                           _rest144173_)
                     _r144174_)))
                 (_expand-include144015_
                  (lambda (_hd144121_ _rest144122_ _r144123_)
                    (let* ((_e144124144134_ _hd144121_)
                           (_E144126144138_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144124144134_)))
                           (_E144125144168_
                            (lambda ()
                              (if (gx#stx-pair? _e144124144134_)
                                  (let ((_e144127144142_
                                         (gx#syntax-e _e144124144134_)))
                                    (let ((_hd144128144145_
                                           (##car _e144127144142_))
                                          (_tl144129144147_
                                           (##cdr _e144127144142_)))
                                      (if (gx#stx-pair? _tl144129144147_)
                                          (let ((_e144130144150_
                                                 (gx#syntax-e
                                                  _tl144129144147_)))
                                            (let ((_hd144131144153_
                                                   (##car _e144130144150_))
                                                  (_tl144132144155_
                                                   (##cdr _e144130144150_)))
                                              (let ((_path144158_
                                                     _hd144131144153_))
                                                (if (gx#stx-null?
                                                     _tl144132144155_)
                                                    (if (gx#stx-string?
                                                         _path144158_)
                                                        (let* ((_rpath144160_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path144158_
                         (gx#stx-source _hd144121_)))
                       (_block144162_
                        (gx#core-expand-include%__% _hd144121_ _rpath144160_))
                       (_rbody144165_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block144162_
                            _expand-special144009_
                            '#f
                            _expand-e144011_))
                         gx#current-expander-path
                         (cons _rpath144160_ (gx#current-expander-path)))))
                  (_K144017_
                   _rest144122_
                   (foldr1 cons _r144123_ _rbody144165_)))
                (_E144126144138_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E144126144138_)))))
                                          (_E144126144138_))))
                                  (_E144126144138_)))))
                      (_E144125144168_))))
                 (_expand-expression144016_
                  (lambda (_hd144117_ _rest144118_ _r144119_)
                    (_K144017_
                     _rest144118_
                     (cons (_expand-e144011_ _hd144117_) _r144119_))))
                 (_K144017_
                  (lambda (_rest144047_ _r144048_)
                    (let* ((_e144049144056_ _rest144047_)
                           (_E144051144060_
                            (lambda ()
                              (if _begin-form144010_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form144010_
                                    (reverse _r144048_))
                                   (gx#stx-source _stx144008_))
                                  _r144048_)))
                           (_E144050144113_
                            (lambda ()
                              (if (gx#stx-pair? _e144049144056_)
                                  (let ((_e144052144064_
                                         (gx#syntax-e _e144049144056_)))
                                    (let ((_hd144053144067_
                                           (##car _e144052144064_))
                                          (_tl144054144069_
                                           (##cdr _e144052144064_)))
                                      (let* ((_hd144072_ _hd144053144067_)
                                             (_rest144074_ _tl144054144069_))
                                        (if '#t
                                            (let* ((_hd144076_
                                                    (gx#core-expand-head
                                                     _hd144072_))
                                                   (_e144077144084_ _hd144076_)
                                                   (_E144079144088_
                                                    (lambda ()
                                                      (_expand-expression144016_
                                                       _hd144076_
                                                       _rest144074_
                                                       _r144048_)))
                                                   (_E144078144109_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e144077144084_)
                                                          (let ((_e144080144092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e144077144084_)))
                    (let ((_hd144081144095_ (##car _e144080144092_))
                          (_tl144082144097_ (##cdr _e144080144092_)))
                      (let* ((_form144100_ _hd144081144095_)
                             (_body144102_ _tl144082144097_))
                        (if '#t
                            (let ((_bind144104_
                                   (if (gx#identifier? _form144100_)
                                       (gx#resolve-identifier__0 _form144100_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind144104_)
                                  (let ((_$e144106_
                                         (##unchecked-structure-ref
                                          _bind144104_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e144106_)
                                        (_expand-splice144013_
                                         _hd144076_
                                         _body144102_
                                         _rest144074_
                                         _r144048_)
                                        (if (eq? '%#cond-expand _$e144106_)
                                            (_expand-cond-expand144014_
                                             _hd144076_
                                             _rest144074_
                                             _r144048_)
                                            (if (eq? '%#include _$e144106_)
                                                (_expand-include144015_
                                                 _hd144076_
                                                 _rest144074_
                                                 _r144048_)
                                                (_expand-special144009_
                                                 _hd144076_
                                                 _K144017_
                                                 _rest144074_
                                                 _r144048_)))))
                                  (_expand-expression144016_
                                   _hd144076_
                                   _rest144074_
                                   _r144048_)))
                            (_E144079144088_)))))
                  (_E144079144088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144078144109_))
                                            (_E144051144060_)))))
                                  (_E144051144060_)))))
                      (_E144050144113_)))))
          (let* ((_e144018144025_ _stx144008_)
                 (_E144020144029_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e144018144025_)))
                 (_E144019144043_
                  (lambda ()
                    (if (gx#stx-pair? _e144018144025_)
                        (let ((_e144021144033_ (gx#syntax-e _e144018144025_)))
                          (let ((_hd144022144036_ (##car _e144021144033_))
                                (_tl144023144038_ (##cdr _e144021144033_)))
                            (let ((_body144041_ _tl144023144038_))
                              (if (gx#stx-list? _body144041_)
                                  (_K144017_ _body144041_ '())
                                  (_E144020144029_)))))
                        (_E144020144029_)))))
            (_E144019144043_)))))
    (define gx#core-expand-block__0
      (lambda (_stx144184_ _expand-special144185_)
        (let* ((_begin-form144187_ '%#begin)
               (_expand-e144189_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144184_
           _expand-special144185_
           _begin-form144187_
           _expand-e144189_))))
    (define gx#core-expand-block__1
      (lambda (_stx144191_ _expand-special144192_ _begin-form144193_)
        (let ((_expand-e144195_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144191_
           _expand-special144192_
           _begin-form144193_
           _expand-e144195_))))
    (define gx#core-expand-block
      (lambda _g149418_
        (let ((_g149417_ (##length _g149418_)))
          (cond ((##fx= _g149417_ 2)
                 (apply (lambda (_stx144184_ _expand-special144185_)
                          (gx#core-expand-block__0
                           _stx144184_
                           _expand-special144185_))
                        _g149418_))
                ((##fx= _g149417_ 3)
                 (apply (lambda (_stx144191_
                                 _expand-special144192_
                                 _begin-form144193_)
                          (gx#core-expand-block__1
                           _stx144191_
                           _expand-special144192_
                           _begin-form144193_))
                        _g149418_))
                ((##fx= _g149417_ 4)
                 (apply (lambda (_stx144197_
                                 _expand-special144198_
                                 _begin-form144199_
                                 _expand-e144200_)
                          (gx#core-expand-block__%
                           _stx144197_
                           _expand-special144198_
                           _begin-form144199_
                           _expand-e144200_))
                        _g149418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g149418_))))))
    (define gx#core-expand-block*
      (lambda (_stx143956_ _expand-special143957_)
        (let* ((_g143958143969_
                (gx#core-expand-block__1
                 _stx143956_
                 _expand-special143957_
                 '#f))
               (_E143962143973_
                (lambda () (error '"No clause matching" _g143958143969_))))
          (let ((_K143967144004_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx143956_)))
                (_K143964143990_ (lambda (_expr143988_) _expr143988_))
                (_K143963143979_
                 (lambda (_body143977_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body143977_))
                    (gx#stx-source _stx143956_)))))
            (let ((_try-match143960144000_
                   (lambda ()
                     (if (##pair? _g143958143969_)
                         (let ((_tl143966143995_ (##cdr _g143958143969_))
                               (_hd143965143993_ (##car _g143958143969_)))
                           (if (##null? _tl143966143995_)
                               (let ((_expr143998_ _hd143965143993_))
                                 (_K143964143990_ _expr143998_))
                               (let ((_body143982_ _g143958143969_))
                                 (_K143963143979_ _body143982_))))
                         (let ((_body143982_ _g143958143969_))
                           (_K143963143979_ _body143982_))))))
              (if (##null? _g143958143969_)
                  (_K143967144004_)
                  (_try-match143960144000_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx143784_)
        (letrec ((_satisfied?143786_
                  (lambda (_condition143884_)
                    (let* ((_e143885143900_ _condition143884_)
                           (_E143895143904_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143885143900_)))
                           (_E143888143923_
                            (lambda ()
                              (if (gx#stx-pair? _e143885143900_)
                                  (let ((_e143896143908_
                                         (gx#syntax-e _e143885143900_)))
                                    (let ((_hd143897143911_
                                           (##car _e143896143908_))
                                          (_tl143898143913_
                                           (##cdr _e143896143908_)))
                                      (let* ((_combinator143916_
                                              _hd143897143911_)
                                             (_body143918_ _tl143898143913_))
                                        (if (gx#stx-list? _body143918_)
                                            (let ((_$e143920_
                                                   (gx#stx-e
                                                    _combinator143916_)))
                                              (if (eq? 'not _$e143920_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?143786_
                                                        _body143918_))
                                                  (if (eq? 'and _$e143920_)
                                                      (gx#stx-andmap
                                                       _satisfied?143786_
                                                       _body143918_)
                                                      (if (eq? 'or _$e143920_)
                                                          (gx#stx-ormap
                                                           _satisfied?143786_
                                                           _body143918_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e143920_)
                      (gx#stx-andmap gx#core-resolve-identifier _body143918_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx143784_
                       _combinator143916_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E143895143904_)))))
                                  (_E143895143904_))))
                           (_E143887143946_
                            (lambda ()
                              (if (gx#stx-pair? _e143885143900_)
                                  (let ((_e143889143927_
                                         (gx#syntax-e _e143885143900_)))
                                    (let ((_hd143890143930_
                                           (##car _e143889143927_))
                                          (_tl143891143932_
                                           (##cdr _e143889143927_)))
                                      (if (and (gx#identifier?
                                                _hd143890143930_)
                                               (gx#core-identifier=?
                                                _hd143890143930_
                                                'unquote))
                                          (if (gx#stx-pair? _tl143891143932_)
                                              (let ((_e143892143935_
                                                     (gx#syntax-e
                                                      _tl143891143932_)))
                                                (let ((_hd143893143938_
                                                       (##car _e143892143935_))
                                                      (_tl143894143940_
                                                       (##cdr _e143892143935_)))
                                                  (let ((_expr143943_
                                                         _hd143893143938_))
                                                    (if (gx#stx-null?
                                                         _tl143894143940_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr143943_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E143888143923_))
                (_E143888143923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143888143923_))
                                          (_E143888143923_))))
                                  (_E143888143923_))))
                           (_E143886143952_
                            (lambda ()
                              (let ((_id143950_ _e143885143900_))
                                (if (gx#identifier? _id143950_)
                                    (gx#core-bound-identifier?__%
                                     _id143950_
                                     gx#feature-binding?)
                                    (_E143887143946_))))))
                      (_E143886143952_))))
                 (_loop143787_
                  (lambda (_rest143817_)
                    (let* ((_e143818143826_ _rest143817_)
                           (_E143824143830_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143818143826_)))
                           (_E143820143834_
                            (lambda ()
                              (if (gx#stx-null? _e143818143826_)
                                  (if '#t '() (_E143824143830_))
                                  (_E143824143830_))))
                           (_E143819143880_
                            (lambda ()
                              (if (gx#stx-pair? _e143818143826_)
                                  (let ((_e143821143838_
                                         (gx#syntax-e _e143818143826_)))
                                    (let ((_hd143822143841_
                                           (##car _e143821143838_))
                                          (_tl143823143843_
                                           (##cdr _e143821143838_)))
                                      (let* ((_hd143846_ _hd143822143841_)
                                             (_rest143848_ _tl143823143843_))
                                        (if '#t
                                            (let* ((_e143849143856_ _hd143846_)
                                                   (_E143851143860_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e143849143856_)))
                                                   (_E143850143876_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e143849143856_)
                                                          (let ((_e143852143864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e143849143856_)))
                    (let ((_hd143853143867_ (##car _e143852143864_))
                          (_tl143854143869_ (##cdr _e143852143864_)))
                      (let* ((_condition143872_ _hd143853143867_)
                             (_body143874_ _tl143854143869_))
                        (if '#t
                            (if (gx#stx-eq? _condition143872_ 'else)
                                (if (gx#stx-null? _rest143848_)
                                    _body143874_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx143784_
                                     _hd143846_))
                                (if (_satisfied?143786_ _condition143872_)
                                    _body143874_
                                    (_loop143787_ _rest143848_)))
                            (_E143851143860_)))))
                  (_E143851143860_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143850143876_))
                                            (_E143820143834_)))))
                                  (_E143820143834_)))))
                      (_E143819143880_)))))
          (let* ((_e143788143795_ _stx143784_)
                 (_E143790143799_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e143788143795_)))
                 (_E143789143813_
                  (lambda ()
                    (if (gx#stx-pair? _e143788143795_)
                        (let ((_e143791143803_ (gx#syntax-e _e143788143795_)))
                          (let ((_hd143792143806_ (##car _e143791143803_))
                                (_tl143793143808_ (##cdr _e143791143803_)))
                            (let ((_clauses143811_ _tl143793143808_))
                              (if (gx#stx-list? _clauses143811_)
                                  (gx#core-cons
                                   'begin
                                   (_loop143787_ _clauses143811_))
                                  (_E143790143799_)))))
                        (_E143790143799_)))))
            (_E143789143813_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx143727_ _rpath143728_)
        (let* ((_e143729143739_ _stx143727_)
               (_E143731143743_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e143729143739_)))
               (_E143730143770_
                (lambda ()
                  (if (gx#stx-pair? _e143729143739_)
                      (let ((_e143732143747_ (gx#syntax-e _e143729143739_)))
                        (let ((_hd143733143750_ (##car _e143732143747_))
                              (_tl143734143752_ (##cdr _e143732143747_)))
                          (if (gx#stx-pair? _tl143734143752_)
                              (let ((_e143735143755_
                                     (gx#syntax-e _tl143734143752_)))
                                (let ((_hd143736143758_
                                       (##car _e143735143755_))
                                      (_tl143737143760_
                                       (##cdr _e143735143755_)))
                                  (let ((_path143763_ _hd143736143758_))
                                    (if (gx#stx-null? _tl143737143760_)
                                        (if (gx#stx-string? _path143763_)
                                            (let ((_rpath143768_
                                                   (let ((_$e143765_
                                                          _rpath143728_))
                                                     (if _$e143765_
                                                         _$e143765_
                                                         (gx#core-resolve-path__%
                                                          _path143763_
                                                          (gx#stx-source
                                                           _stx143727_))))))
                                              (if (member _rpath143768_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx143727_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath143768_))
                                                    (gx#stx-source
                                                     _stx143727_)))))
                                            (_E143731143743_))
                                        (_E143731143743_)))))
                              (_E143731143743_))))
                      (_E143731143743_)))))
          (_E143730143770_))))
    (define gx#core-expand-include%__0
      (lambda (_stx143777_)
        (let ((_rpath143779_ '#f))
          (gx#core-expand-include%__% _stx143777_ _rpath143779_))))
    (define gx#core-expand-include%
      (lambda _g149420_
        (let ((_g149419_ (##length _g149420_)))
          (cond ((##fx= _g149419_ 1)
                 (apply (lambda (_stx143777_)
                          (gx#core-expand-include%__0 _stx143777_))
                        _g149420_))
                ((##fx= _g149419_ 2)
                 (apply (lambda (_stx143781_ _rpath143782_)
                          (gx#core-expand-include%__%
                           _stx143781_
                           _rpath143782_))
                        _g149420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g149420_))))))
    (define gx#core-apply-expander__%
      (lambda (_K143696_ _stx143697_ _method143698_)
        (if (procedure? _K143696_)
            (let ((_$e143700_ (gx#stx-source _stx143697_)))
              (if _$e143700_
                  ((lambda (_g143702143704_)
                     (gx#stx-wrap-source
                      (_K143696_ _stx143697_)
                      _g143702143704_))
                   _$e143700_)
                  (_K143696_ _stx143697_)))
            (let ((_$e143707_ (bound-method-ref _K143696_ _method143698_)))
              (if _$e143707_
                  ((lambda (_g143709143711_)
                     (gx#core-apply-expander__%
                      _g143709143711_
                      _stx143697_
                      _method143698_))
                   _$e143707_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx143697_
                   _method143698_))))))
    (define gx#core-apply-expander__0
      (lambda (_K143717_ _stx143718_)
        (let ((_method143720_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K143717_ _stx143718_ _method143720_))))
    (define gx#core-apply-expander
      (lambda _g149422_
        (let ((_g149421_ (##length _g149422_)))
          (cond ((##fx= _g149421_ 2)
                 (apply (lambda (_K143717_ _stx143718_)
                          (gx#core-apply-expander__0 _K143717_ _stx143718_))
                        _g149422_))
                ((##fx= _g149421_ 3)
                 (apply (lambda (_K143722_ _stx143723_ _method143724_)
                          (gx#core-apply-expander__%
                           _K143722_
                           _stx143723_
                           _method143724_))
                        _g149422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g149422_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self143692_ _stx143693_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx143693_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self143545_ _stx143546_)
        (let* ((_self143547143553_ _self143545_)
               (_E143549143557_
                (lambda () (error '"No clause matching" _self143547143553_)))
               (_K143550143562_
                (lambda (_K143560_)
                  (gx#core-apply-expander__0 _K143560_ _stx143546_))))
          (if (##structure-instance-of? _self143547143553_ 'gx#core-macro::t)
              (let* ((_e143551143565_
                      (##unchecked-structure-ref
                       _self143547143553_
                       '1
                       gx#expander::t
                       '#f))
                     (_K143568_ _e143551143565_))
                (_K143550143562_ _K143568_))
              (_E143549143557_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self143398_ _stx143399_)
        (if (gx#sealed-syntax? _stx143399_)
            _stx143399_
            (let* ((_self143400143406_ _self143398_)
                   (_E143402143410_
                    (lambda ()
                      (error '"No clause matching" _self143400143406_)))
                   (_K143403143415_
                    (lambda (_K143413_)
                      (gx#core-apply-expander__0 _K143413_ _stx143399_))))
              (if (##structure-instance-of?
                   _self143400143406_
                   'gx#core-expander::t)
                  (let* ((_e143404143418_
                          (##unchecked-structure-ref
                           _self143400143406_
                           '1
                           gx#expander::t
                           '#f))
                         (_K143421_ _e143404143418_))
                    (_K143403143415_ _K143421_))
                  (_E143402143410_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self143260_ _stx143261_ _top?143262_)
        (if (_top?143262_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self143260_ _stx143261_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx143261_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self143267_ _stx143268_)
        (let ((_top?143270_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self143267_
           _stx143268_
           _top?143270_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g149424_
        (let ((_g149423_ (##length _g149424_)))
          (cond ((##fx= _g149423_ 2)
                 (apply (lambda (_self143267_ _stx143268_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self143267_
                           _stx143268_))
                        _g149424_))
                ((##fx= _g149423_ 3)
                 (apply (lambda (_self143272_ _stx143273_ _top?143274_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self143272_
                           _stx143273_
                           _top?143274_))
                        _g149424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g149424_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self143134_ _stx143135_)
        (gx#top-special-form::apply-macro-expander__%
         _self143134_
         _stx143135_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self142959_ _stx142960_)
        (let* ((_self142961142967_ _self142959_)
               (_E142963142971_
                (lambda () (error '"No clause matching" _self142961142967_)))
               (_K142964143004_
                (lambda (_id142974_)
                  (let* ((_e142975142982_ _stx142960_)
                         (_E142977142986_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e142975142982_)))
                         (_E142976143000_
                          (lambda ()
                            (if (gx#stx-pair? _e142975142982_)
                                (let ((_e142978142990_
                                       (gx#syntax-e _e142975142982_)))
                                  (let ((_hd142979142993_
                                         (##car _e142978142990_))
                                        (_tl142980142995_
                                         (##cdr _e142978142990_)))
                                    (let ((_body142998_ _tl142980142995_))
                                      (if '#t
                                          (gx#core-cons
                                           _id142974_
                                           _body142998_)
                                          (_E142977142986_)))))
                                (_E142977142986_)))))
                    (_E142976143000_)))))
          (if (##structure-instance-of?
               _self142961142967_
               'gx#rename-macro-expander::t)
              (let* ((_e142965143007_
                      (##unchecked-structure-ref
                       _self142961142967_
                       '1
                       gx#expander::t
                       '#f))
                     (_id143010_ _e142965143007_))
                (_K142964143004_ _id143010_))
              (_E142963142971_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self142785_ _stx142786_ _method142787_)
        (let* ((_self142788142796_ _self142785_)
               (_E142790142800_
                (lambda () (error '"No clause matching" _self142788142796_)))
               (_K142791142807_
                (lambda (_phi142803_ _ctx142804_ _K142805_)
                  (gx#core-apply-user-macro
                   _K142805_
                   _stx142786_
                   _ctx142804_
                   _phi142803_
                   _method142787_))))
          (if (##structure-instance-of?
               _self142788142796_
               'gx#macro-expander::t)
              (let* ((_e142792142810_
                      (##unchecked-structure-ref
                       _self142788142796_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142813_ _e142792142810_)
                     (_e142793142815_
                      (##unchecked-structure-ref
                       _self142788142796_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx142818_ _e142793142815_)
                     (_e142794142820_
                      (##unchecked-structure-ref
                       _self142788142796_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi142823_ _e142794142820_))
                (_K142791142807_ _phi142823_ _ctx142818_ _K142813_))
              (_E142790142800_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self142828_ _stx142829_)
        (let ((_method142831_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self142828_
           _stx142829_
           _method142831_))))
    (define gx#core-apply-user-expander
      (lambda _g149426_
        (let ((_g149425_ (##length _g149426_)))
          (cond ((##fx= _g149425_ 2)
                 (apply (lambda (_self142828_ _stx142829_)
                          (gx#core-apply-user-expander__0
                           _self142828_
                           _stx142829_))
                        _g149426_))
                ((##fx= _g149425_ 3)
                 (apply (lambda (_self142833_ _stx142834_ _method142835_)
                          (gx#core-apply-user-expander__%
                           _self142833_
                           _stx142834_
                           _method142835_))
                        _g149426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g149426_))))))
    (define gx#core-apply-user-macro
      (lambda (_K142775_ _stx142776_ _ctx142777_ _phi142778_ _method142779_)
        (let ((_mark142781_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx142777_
                _phi142778_
                _stx142776_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K142775_
               (gx#stx-apply-mark _stx142776_ _mark142781_)
               _method142779_)
              _mark142781_))
           gx#current-expander-marks
           (cons _mark142781_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx142627_ _phi142628_ _ctx142629_)
        (let _lp142631_ ((_bind142633_
                          (gx#core-resolve-identifier__%
                           _stx142627_
                           _phi142628_
                           _ctx142629_)))
          (if (##structure-direct-instance-of?
               _bind142633_
               'gx#import-binding::t)
              (_lp142631_
               (##unchecked-structure-ref
                _bind142633_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind142633_
                   'gx#alias-binding::t)
                  (_lp142631_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind142633_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi142628_
                    _ctx142629_))
                  _bind142633_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx142638_)
        (let* ((_phi142640_ (gx#current-expander-phi))
               (_ctx142642_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142638_ _phi142640_ _ctx142642_))))
    (define gx#resolve-identifier__1
      (lambda (_stx142644_ _phi142645_)
        (let ((_ctx142647_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142644_ _phi142645_ _ctx142647_))))
    (define gx#resolve-identifier
      (lambda _g149428_
        (let ((_g149427_ (##length _g149428_)))
          (cond ((##fx= _g149427_ 1)
                 (apply (lambda (_stx142638_)
                          (gx#resolve-identifier__0 _stx142638_))
                        _g149428_))
                ((##fx= _g149427_ 2)
                 (apply (lambda (_stx142644_ _phi142645_)
                          (gx#resolve-identifier__1 _stx142644_ _phi142645_))
                        _g149428_))
                ((##fx= _g149427_ 3)
                 (apply (lambda (_stx142649_ _phi142650_ _ctx142651_)
                          (gx#resolve-identifier__%
                           _stx142649_
                           _phi142650_
                           _ctx142651_))
                        _g149428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g149428_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx142585_ _val142586_ _rebind?142587_ _phi142588_ _ctx142589_)
        (let ((_rebind?142591_
               (if (not _rebind?142587_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?142587_) _rebind?142587_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx142585_)
           _val142586_
           _rebind?142591_
           _phi142588_
           _ctx142589_))))
    (define gx#bind-identifier!__0
      (lambda (_stx142596_ _val142597_)
        (let* ((_rebind?142599_ '#f)
               (_phi142601_ (gx#current-expander-phi))
               (_ctx142603_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142596_
           _val142597_
           _rebind?142599_
           _phi142601_
           _ctx142603_))))
    (define gx#bind-identifier!__1
      (lambda (_stx142605_ _val142606_ _rebind?142607_)
        (let* ((_phi142609_ (gx#current-expander-phi))
               (_ctx142611_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142605_
           _val142606_
           _rebind?142607_
           _phi142609_
           _ctx142611_))))
    (define gx#bind-identifier!__2
      (lambda (_stx142613_ _val142614_ _rebind?142615_ _phi142616_)
        (let ((_ctx142618_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142613_
           _val142614_
           _rebind?142615_
           _phi142616_
           _ctx142618_))))
    (define gx#bind-identifier!
      (lambda _g149430_
        (let ((_g149429_ (##length _g149430_)))
          (cond ((##fx= _g149429_ 2)
                 (apply (lambda (_stx142596_ _val142597_)
                          (gx#bind-identifier!__0 _stx142596_ _val142597_))
                        _g149430_))
                ((##fx= _g149429_ 3)
                 (apply (lambda (_stx142605_ _val142606_ _rebind?142607_)
                          (gx#bind-identifier!__1
                           _stx142605_
                           _val142606_
                           _rebind?142607_))
                        _g149430_))
                ((##fx= _g149429_ 4)
                 (apply (lambda (_stx142613_
                                 _val142614_
                                 _rebind?142615_
                                 _phi142616_)
                          (gx#bind-identifier!__2
                           _stx142613_
                           _val142614_
                           _rebind?142615_
                           _phi142616_))
                        _g149430_))
                ((##fx= _g149429_ 5)
                 (apply (lambda (_stx142620_
                                 _val142621_
                                 _rebind?142622_
                                 _phi142623_
                                 _ctx142624_)
                          (gx#bind-identifier!__%
                           _stx142620_
                           _val142621_
                           _rebind?142622_
                           _phi142623_
                           _ctx142624_))
                        _g149430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g149430_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx142557_ _phi142558_ _ctx142559_)
        (let _lp142561_ ((_e142563_ _stx142557_)
                         (_marks142564_ (gx#current-expander-marks)))
          (if (symbol? _e142563_)
              (gx#core-resolve-binding
               _e142563_
               _phi142558_
               _phi142558_
               _ctx142559_
               (reverse _marks142564_))
              (if (gx#identifier-quote? _e142563_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e142563_ '1 gx#AST::t '#f)
                   _phi142558_
                   '0
                   (##unchecked-structure-ref
                    _e142563_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e142563_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e142563_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e142563_ '1 gx#AST::t '#f)
                       _phi142558_
                       _phi142558_
                       _ctx142559_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e142563_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks142564_))
                      (if (##structure-direct-instance-of?
                           _e142563_
                           'gx#syntax-wrap::t)
                          (_lp142561_
                           (##unchecked-structure-ref
                            _e142563_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e142563_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks142564_))
                          (if (##structure-instance-of?
                               _e142563_
                               'gerbil#AST::t)
                              (_lp142561_
                               (##unchecked-structure-ref
                                _e142563_
                                '1
                                gx#AST::t
                                '#f)
                               _marks142564_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx142557_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx142569_)
        (let* ((_phi142571_ (gx#current-expander-phi))
               (_ctx142573_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142569_
           _phi142571_
           _ctx142573_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx142575_ _phi142576_)
        (let ((_ctx142578_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142575_
           _phi142576_
           _ctx142578_))))
    (define gx#core-resolve-identifier
      (lambda _g149432_
        (let ((_g149431_ (##length _g149432_)))
          (cond ((##fx= _g149431_ 1)
                 (apply (lambda (_stx142569_)
                          (gx#core-resolve-identifier__0 _stx142569_))
                        _g149432_))
                ((##fx= _g149431_ 2)
                 (apply (lambda (_stx142575_ _phi142576_)
                          (gx#core-resolve-identifier__1
                           _stx142575_
                           _phi142576_))
                        _g149432_))
                ((##fx= _g149431_ 3)
                 (apply (lambda (_stx142580_ _phi142581_ _ctx142582_)
                          (gx#core-resolve-identifier__%
                           _stx142580_
                           _phi142581_
                           _ctx142582_))
                        _g149432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g149432_))))))
    (define gx#core-resolve-binding
      (lambda (_id142470_
               _phi142471_
               _src-phi142472_
               _ctx142473_
               _marks142474_)
        (letrec ((_resolve142476_
                  (lambda (_ctx142544_ _src-phi142545_ _key142546_)
                    (let _lp142548_ ((_ctx142550_
                                      (gx#core-context-shift
                                       _ctx142544_
                                       _phi142471_))
                                     (_dphi142551_
                                      (fx- _phi142471_ _src-phi142545_)))
                      (let ((_$e142553_
                             (gx#core-context-resolve
                              _ctx142550_
                              _key142546_)))
                        (if _$e142553_
                            (values _$e142553_)
                            (if (fxzero? _dphi142551_)
                                '#f
                                (if (fxpositive? _dphi142551_)
                                    (_lp142548_
                                     (gx#core-context-shift _ctx142550_ '-1)
                                     (fx- _dphi142551_ '1))
                                    (_lp142548_
                                     (gx#core-context-shift _ctx142550_ '1)
                                     (fx+ _dphi142551_ '1))))))))))
          (let _lp142478_ ((_ctx142480_ _ctx142473_)
                           (_src-phi142481_ _src-phi142472_)
                           (_rest142482_ _marks142474_))
            (let* ((_rest142483142491_ _rest142482_)
                   (_else142485142499_
                    (lambda ()
                      (_resolve142476_
                       _ctx142480_
                       _src-phi142481_
                       _id142470_)))
                   (_K142487142532_
                    (lambda (_rest142502_ _hd142503_)
                      (let* ((_hd142504142510_ _hd142503_)
                             (_E142506142514_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd142504142510_)))
                             (_K142507142524_
                              (lambda (_subst142517_)
                                (let ((_$e142521_
                                       (let ((_key142519_
                                              (if _subst142517_
                                                  (table-ref
                                                   _subst142517_
                                                   _id142470_
                                                   '#f)
                                                  '#f)))
                                         (if _key142519_
                                             (_resolve142476_
                                              _ctx142480_
                                              _src-phi142481_
                                              _key142519_)
                                             '#f))))
                                  (if _$e142521_
                                      _$e142521_
                                      (_lp142478_
                                       (##unchecked-structure-ref
                                        _hd142503_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd142503_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest142502_))))))
                        (if (##structure-instance-of?
                             _hd142504142510_
                             'gx#expander-mark::t)
                            (let* ((_e142508142527_
                                    (##unchecked-structure-ref
                                     _hd142504142510_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst142530_ _e142508142527_))
                              (_K142507142524_ _subst142530_))
                            (_E142506142514_))))))
              (if (##pair? _rest142483142491_)
                  (let ((_hd142488142535_ (##car _rest142483142491_))
                        (_tl142489142537_ (##cdr _rest142483142491_)))
                    (let* ((_hd142540_ _hd142488142535_)
                           (_rest142542_ _tl142489142537_))
                      (_K142487142532_ _rest142542_ _hd142540_)))
                  (_else142485142499_)))))))
    (define gx#core-bind!__%
      (lambda (_key142346_ _val142347_ _rebind?142348_ _phi142349_ _ctx142350_)
        (letrec ((_update-binding142352_
                  (lambda (_xval142423_)
                    (if (or (_rebind?142348_
                             _ctx142350_
                             _xval142423_
                             _val142347_)
                            (and (##structure-direct-instance-of?
                                  _xval142423_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval142423_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val142347_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val142347_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval142423_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val142347_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val142347_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval142423_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val142347_
                        (if (and (##structure-direct-instance-of?
                                  _val142347_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val142347_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval142423_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val142347_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval142423_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval142423_
                            (if (and (##structure-direct-instance-of?
                                      _val142347_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval142423_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key142346_
                                 (cons (##unchecked-structure-ref
                                        _val142347_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val142347_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval142423_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval142423_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval142423_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval142423_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key142346_
                                 _val142347_
                                 _xval142423_))))))
                 (_gensubst142353_
                  (lambda (_subst142418_ _id142419_)
                    (let ((_eid142421_
                           (gensym (if (uninterned-symbol? _id142419_)
                                       '%
                                       _id142419_))))
                      (table-set! _subst142418_ _id142419_ _eid142421_)
                      _eid142421_)))
                 (_subst!142354_
                  (lambda (_key142356_)
                    (let* ((_key142357142365_ _key142356_)
                           (_else142359142373_ (lambda () _key142356_))
                           (_K142361142406_
                            (lambda (_mark142376_ _id142377_)
                              (let* ((_mark142378142384_ _mark142376_)
                                     (_E142380142388_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark142378142384_)))
                                     (_K142381142398_
                                      (lambda (_subst142391_)
                                        (if (not _subst142391_)
                                            (let ((_subst142393_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark142376_
                                               _subst142393_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst142353_
                                               _subst142393_
                                               _id142377_))
                                            (let ((_$e142395_
                                                   (table-ref
                                                    _subst142391_
                                                    _id142377_
                                                    '#f)))
                                              (if _$e142395_
                                                  (values _$e142395_)
                                                  (_gensubst142353_
                                                   _subst142391_
                                                   _id142377_)))))))
                                (if (##structure-instance-of?
                                     _mark142378142384_
                                     'gx#expander-mark::t)
                                    (let* ((_e142382142401_
                                            (##unchecked-structure-ref
                                             _mark142378142384_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst142404_ _e142382142401_))
                                      (_K142381142398_ _subst142404_))
                                    (_E142380142388_))))))
                      (if (##pair? _key142357142365_)
                          (let ((_hd142362142409_ (##car _key142357142365_))
                                (_tl142363142411_ (##cdr _key142357142365_)))
                            (let* ((_id142414_ _hd142362142409_)
                                   (_mark142416_ _tl142363142411_))
                              (_K142361142406_ _mark142416_ _id142414_)))
                          (_else142359142373_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx142350_ _phi142349_)
           (_subst!142354_ _key142346_)
           _val142347_
           _update-binding142352_))))
    (define gx#core-bind!__0
      (lambda (_key142440_ _val142441_)
        (let* ((_rebind?142443_ false)
               (_phi142445_ (gx#current-expander-phi))
               (_ctx142447_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142440_
           _val142441_
           _rebind?142443_
           _phi142445_
           _ctx142447_))))
    (define gx#core-bind!__1
      (lambda (_key142449_ _val142450_ _rebind?142451_)
        (let* ((_phi142453_ (gx#current-expander-phi))
               (_ctx142455_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142449_
           _val142450_
           _rebind?142451_
           _phi142453_
           _ctx142455_))))
    (define gx#core-bind!__2
      (lambda (_key142457_ _val142458_ _rebind?142459_ _phi142460_)
        (let ((_ctx142462_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142457_
           _val142458_
           _rebind?142459_
           _phi142460_
           _ctx142462_))))
    (define gx#core-bind!
      (lambda _g149434_
        (let ((_g149433_ (##length _g149434_)))
          (cond ((##fx= _g149433_ 2)
                 (apply (lambda (_key142440_ _val142441_)
                          (gx#core-bind!__0 _key142440_ _val142441_))
                        _g149434_))
                ((##fx= _g149433_ 3)
                 (apply (lambda (_key142449_ _val142450_ _rebind?142451_)
                          (gx#core-bind!__1
                           _key142449_
                           _val142450_
                           _rebind?142451_))
                        _g149434_))
                ((##fx= _g149433_ 4)
                 (apply (lambda (_key142457_
                                 _val142458_
                                 _rebind?142459_
                                 _phi142460_)
                          (gx#core-bind!__2
                           _key142457_
                           _val142458_
                           _rebind?142459_
                           _phi142460_))
                        _g149434_))
                ((##fx= _g149433_ 5)
                 (apply (lambda (_key142464_
                                 _val142465_
                                 _rebind?142466_
                                 _phi142467_
                                 _ctx142468_)
                          (gx#core-bind!__%
                           _key142464_
                           _val142465_
                           _rebind?142466_
                           _phi142467_
                           _ctx142468_))
                        _g149434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g149434_))))))
    (define gx#core-identifier-key
      (lambda (_stx142280_)
        (if (symbol? _stx142280_)
            (let* ((_g142281142289_ (gx#current-expander-marks))
                   (_else142283142297_ (lambda () _stx142280_))
                   (_K142285142302_
                    (lambda (_hd142300_) (cons _stx142280_ _hd142300_))))
              (if (##pair? _g142281142289_)
                  (let* ((_hd142286142305_ (##car _g142281142289_))
                         (_hd142308_ _hd142286142305_))
                    (_K142285142302_ _hd142308_))
                  (_else142283142297_)))
            (if (gx#identifier? _stx142280_)
                (let* ((_id142310_ (gx#syntax-local-unwrap _stx142280_))
                       (_eid142312_ (gx#stx-e _id142310_))
                       (_marks142314_ (gx#stx-identifier-marks* _id142310_)))
                  (let* ((_marks142316142324_ _marks142314_)
                         (_else142318142332_ (lambda () _eid142312_))
                         (_K142320142337_
                          (lambda (_hd142335_) (cons _eid142312_ _hd142335_))))
                    (if (##pair? _marks142316142324_)
                        (let* ((_hd142321142340_ (##car _marks142316142324_))
                               (_hd142343_ _hd142321142340_))
                          (_K142320142337_ _hd142343_))
                        (_else142318142332_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx142280_)))))
    (define gx#core-context-shift
      (lambda (_ctx142225_ _phi142226_)
        (letrec ((_make-phi142228_
                  (lambda (_super142278_)
                    (let ((__obj149405
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj149405
                       (gensym 'phi)
                       _super142278_)
                      __obj149405)))
                 (_make-phi/up142229_
                  (lambda (_ctx142273_ _super142274_)
                    (let ((_ctx+1142276_ (_make-phi142228_ _super142274_)))
                      (##unchecked-structure-set!
                       _ctx142273_
                       _ctx+1142276_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1142276_
                       _ctx142273_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1142276_)))
                 (_make-phi/down142230_
                  (lambda (_ctx142268_ _super142269_)
                    (let ((_ctx-1142271_ (_make-phi142228_ _super142269_)))
                      (##unchecked-structure-set!
                       _ctx-1142271_
                       _ctx142268_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx142268_
                       _ctx-1142271_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1142271_)))
                 (_shift142231_
                  (lambda (_ctx142252_
                           _delta142253_
                           _make-delta-context142254_
                           _phi142255_
                           _K142256_)
                    (let ((_$e142258_
                           (##unchecked-structure-ref
                            _ctx142252_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e142258_
                          ((lambda (_super142261_)
                             (let* ((_super142263_
                                     (_K142256_ _super142261_ _delta142253_))
                                    (_ctx+d142265_
                                     (_make-delta-context142254_
                                      _ctx142252_
                                      _super142263_)))
                               (_K142256_
                                _ctx+d142265_
                                (fx- _phi142255_ _delta142253_))))
                           _$e142258_)
                          (error '"Bad context" _ctx142252_))))))
          (let _K142233_ ((_ctx142235_ _ctx142225_) (_phi142236_ _phi142226_))
            (if (fxzero? _phi142236_)
                _ctx142235_
                (if (fx> (##vector-length _ctx142235_) '3)
                    (if (fxpositive? _phi142236_)
                        (let ((_$e142238_
                               (##unchecked-structure-ref
                                _ctx142235_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e142238_
                              ((lambda (_g142240142242_)
                                 (_K142233_
                                  _g142240142242_
                                  (fx- _phi142236_ '1)))
                               _$e142238_)
                              (_shift142231_
                               _ctx142235_
                               '1
                               _make-phi/up142229_
                               _phi142236_
                               _K142233_)))
                        (let ((_$e142245_
                               (##unchecked-structure-ref
                                _ctx142235_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e142245_
                              ((lambda (_g142247142249_)
                                 (_K142233_
                                  _g142247142249_
                                  (fx+ _phi142236_ '1)))
                               _$e142245_)
                              (_shift142231_
                               _ctx142235_
                               '-1
                               _make-phi/down142230_
                               _phi142236_
                               _K142233_))))
                    _ctx142235_))))))
    (define gx#core-context-get
      (lambda (_ctx142222_ _key142223_)
        (table-ref
         (##unchecked-structure-ref _ctx142222_ '2 gx#expander-context::t '#f)
         _key142223_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx142218_ _key142219_ _val142220_)
        (table-set!
         (##unchecked-structure-ref _ctx142218_ '2 gx#expander-context::t '#f)
         _key142219_
         _val142220_)))
    (define gx#core-context-resolve
      (lambda (_ctx142205_ _key142206_)
        (let _lp142208_ ((_ctx142210_ _ctx142205_))
          (let ((_$e142212_ (gx#core-context-get _ctx142210_ _key142206_)))
            (if _$e142212_
                (values _$e142212_)
                (let ((_$e142215_
                       (if (fx> (##vector-length _ctx142210_) '3)
                           (##unchecked-structure-ref
                            _ctx142210_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e142215_ (_lp142208_ _$e142215_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx142195_ _key142196_ _val142197_ _rebind142198_)
        (let ((_$e142200_ (gx#core-context-get _ctx142195_ _key142196_)))
          (if _$e142200_
              ((lambda (_xval142203_)
                 (gx#core-context-put!
                  _ctx142195_
                  _key142196_
                  (_rebind142198_ _xval142203_)))
               _$e142200_)
              (gx#core-context-put! _ctx142195_ _key142196_ _val142197_)))))
    (define gx#core-context-top__%
      (lambda (_ctx142173_ _stop?142174_)
        (let _lp142176_ ((_ctx142178_ _ctx142173_))
          (if (_stop?142174_ _ctx142178_)
              _ctx142178_
              (if (##structure-instance-of? _ctx142178_ 'gx#context-phi::t)
                  (_lp142176_
                   (##unchecked-structure-ref
                    _ctx142178_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx142184_ (gx#current-expander-context))
               (_stop?142186_ gx#top-context?))
          (gx#core-context-top__% _ctx142184_ _stop?142186_))))
    (define gx#core-context-top__1
      (lambda (_ctx142188_)
        (let ((_stop?142190_ gx#top-context?))
          (gx#core-context-top__% _ctx142188_ _stop?142190_))))
    (define gx#core-context-top
      (lambda _g149436_
        (let ((_g149435_ (##length _g149436_)))
          (cond ((##fx= _g149435_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g149436_))
                ((##fx= _g149435_ 1)
                 (apply (lambda (_ctx142188_)
                          (gx#core-context-top__1 _ctx142188_))
                        _g149436_))
                ((##fx= _g149435_ 2)
                 (apply (lambda (_ctx142192_ _stop?142193_)
                          (gx#core-context-top__% _ctx142192_ _stop?142193_))
                        _g149436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g149436_))))))
    (define gx#core-context-root__%
      (lambda (_ctx142158_)
        (let _lp142160_ ((_ctx142162_ _ctx142158_))
          (if (##structure-instance-of? _ctx142162_ 'gx#context-phi::t)
              (_lp142160_
               (##unchecked-structure-ref
                _ctx142162_
                '3
                gx#phi-context::t
                '#f))
              _ctx142162_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx142168_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx142168_))))
    (define gx#core-context-root
      (lambda _g149438_
        (let ((_g149437_ (##length _g149438_)))
          (cond ((##fx= _g149437_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g149438_))
                ((##fx= _g149437_ 1)
                 (apply (lambda (_ctx142170_)
                          (gx#core-context-root__% _ctx142170_))
                        _g149438_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g149438_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx142139_ . __142136142140_)
        (let ((_$e142143_ (gx#current-expander-allow-rebind?)))
          (if _$e142143_
              _$e142143_
              (if (##structure-instance-of? _ctx142139_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx142139_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx142139_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx142150_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx142150_))))
    (define gx#core-context-rebind?
      (lambda _g149440_
        (let ((_g149439_ (##length _g149440_)))
          (cond ((##fx= _g149439_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g149440_))
                ((##fx= _g149439_ 1)
                 (apply (lambda (_ctx142152_)
                          (gx#core-context-rebind?__% _ctx142152_))
                        _g149440_))
                ((##fx>= _g149439_ 1)
                 (apply gx#core-context-rebind?__% _g149440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g149440_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx142122_)
        (let ((_$e142124_ (gx#core-context-top__1 _ctx142122_)))
          (if _$e142124_
              ((lambda (_ctx142127_)
                 (if (##structure-instance-of?
                      _ctx142127_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx142127_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e142124_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx142133_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx142133_))))
    (define gx#core-context-namespace
      (lambda _g149442_
        (let ((_g149441_ (##length _g149442_)))
          (cond ((##fx= _g149441_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g149442_))
                ((##fx= _g149441_ 1)
                 (apply (lambda (_ctx142135_)
                          (gx#core-context-namespace__% _ctx142135_))
                        _g149442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g149442_))))))
    (define gx#expander-binding?__%
      (lambda (_bind142108_ _is?142109_)
        (if (##structure-direct-instance-of?
             _bind142108_
             'gx#syntax-binding::t)
            (_is?142109_
             (##unchecked-structure-ref
              _bind142108_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind142114_)
        (let ((_is?142116_ gx#expander?))
          (gx#expander-binding?__% _bind142114_ _is?142116_))))
    (define gx#expander-binding?
      (lambda _g149444_
        (let ((_g149443_ (##length _g149444_)))
          (cond ((##fx= _g149443_ 1)
                 (apply (lambda (_bind142114_)
                          (gx#expander-binding?__0 _bind142114_))
                        _g149444_))
                ((##fx= _g149443_ 2)
                 (apply (lambda (_bind142118_ _is?142119_)
                          (gx#expander-binding?__% _bind142118_ _is?142119_))
                        _g149444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g149444_))))))
    (define gx#core-expander-binding?
      (lambda (_bind142105_)
        (gx#expander-binding?__% _bind142105_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind142103_)
        (gx#expander-binding?__% _bind142103_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind142097_)
        (letrec ((_direct-special-form?142099_
                  (lambda (_obj142101_)
                    (##structure-direct-instance-of?
                     _obj142101_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind142097_
           _direct-special-form?142099_))))
    (define gx#special-form-binding?
      (lambda (_bind142095_)
        (gx#expander-binding?__% _bind142095_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind142086_)
        (letrec ((_feature?142088_
                  (lambda (_e142090_)
                    (let ((_$e142092_
                           (##structure-instance-of?
                            _e142090_
                            'gx#feature-expander::t)))
                      (if _$e142092_
                          _$e142092_
                          (##structure-instance-of?
                           _e142090_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind142086_ _feature?142088_))))
    (define gx#private-feature-binding?
      (lambda (_bind142084_)
        (gx#expander-binding?__% _bind142084_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id142071_ _bound?142072_)
        (if (gx#identifier? _id142071_)
            (_bound?142072_ (gx#resolve-identifier__0 _id142071_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id142077_)
        (let ((_bound?142079_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id142077_ _bound?142079_))))
    (define gx#core-bound-identifier?
      (lambda _g149446_
        (let ((_g149445_ (##length _g149446_)))
          (cond ((##fx= _g149445_ 1)
                 (apply (lambda (_id142077_)
                          (gx#core-bound-identifier?__0 _id142077_))
                        _g149446_))
                ((##fx= _g149445_ 2)
                 (apply (lambda (_id142081_ _bound?142082_)
                          (gx#core-bound-identifier?__%
                           _id142081_
                           _bound?142082_))
                        _g149446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g149446_))))))
    (define gx#core-identifier=?
      (lambda (_x142061_ _y142062_)
        (letrec ((_y=?142064_
                  (lambda (_xid142068_)
                    ((if (list? _y142062_) memq eq?) _xid142068_ _y142062_))))
          (let ((_bind142066_ (gx#resolve-identifier__0 _x142061_)))
            (if (##structure-instance-of? _bind142066_ 'gx#binding::t)
                (_y=?142064_
                 (##unchecked-structure-ref _bind142066_ '1 gx#binding::t '#f))
                (_y=?142064_ (gx#stx-e _x142061_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e142059_)
        (if (interned-symbol? _e142059_)
            (string-index (symbol->string _e142059_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx142014_ _src142015_ _ctx142016_ _marks142017_)
        (if (##structure? _stx142014_)
            (let ((_$e142019_ (gx#sealed-syntax-unwrap _stx142014_)))
              (if _$e142019_
                  (values _$e142019_)
                  (if (gx#identifier? _stx142014_)
                      (let ((_id142022_
                             (gx#stx-unwrap__% _stx142014_ _marks142017_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id142022_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e142024_
                                (##unchecked-structure-ref
                                 _id142022_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e142024_ _$e142024_ _src142015_))
                         _ctx142016_
                         (##unchecked-structure-ref
                          _id142022_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx142014_)
                       (let ((_$e142027_ (gx#stx-source _stx142014_)))
                         (if _$e142027_ _$e142027_ _src142015_))
                       _ctx142016_
                       (reverse _marks142017_)))))
            (##structure
             gx#syntax-quote::t
             _stx142014_
             _src142015_
             _ctx142016_
             (reverse _marks142017_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx142033_)
        (let* ((_src142035_ '#f)
               (_ctx142037_ (gx#current-expander-context))
               (_marks142039_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142033_
           _src142035_
           _ctx142037_
           _marks142039_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx142041_ _src142042_)
        (let* ((_ctx142044_ (gx#current-expander-context))
               (_marks142046_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142041_
           _src142042_
           _ctx142044_
           _marks142046_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx142048_ _src142049_ _ctx142050_)
        (let ((_marks142052_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142048_
           _src142049_
           _ctx142050_
           _marks142052_))))
    (define gx#core-quote-syntax
      (lambda _g149448_
        (let ((_g149447_ (##length _g149448_)))
          (cond ((##fx= _g149447_ 1)
                 (apply (lambda (_stx142033_)
                          (gx#core-quote-syntax__0 _stx142033_))
                        _g149448_))
                ((##fx= _g149447_ 2)
                 (apply (lambda (_stx142041_ _src142042_)
                          (gx#core-quote-syntax__1 _stx142041_ _src142042_))
                        _g149448_))
                ((##fx= _g149447_ 3)
                 (apply (lambda (_stx142048_ _src142049_ _ctx142050_)
                          (gx#core-quote-syntax__2
                           _stx142048_
                           _src142049_
                           _ctx142050_))
                        _g149448_))
                ((##fx= _g149447_ 4)
                 (apply (lambda (_stx142054_
                                 _src142055_
                                 _ctx142056_
                                 _marks142057_)
                          (gx#core-quote-syntax__%
                           _stx142054_
                           _src142055_
                           _ctx142056_
                           _marks142057_))
                        _g149448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g149448_))))))
    (define gx#core-cons
      (lambda (_hd142010_ _tl142011_)
        (cons (gx#core-quote-syntax__0 _hd142010_) _tl142011_)))
    (define gx#core-list
      (lambda (_hd142007_ . _rest142008_)
        (cons (gx#core-quote-syntax__0 _hd142007_) _rest142008_)))
    (define gx#core-cons*
      (lambda (_hd142004_ . _rest142005_)
        (apply cons* (gx#core-quote-syntax__0 _hd142004_) _rest142005_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path141978_ _rel141979_)
        (let ((_path141991_ (gx#stx-e _stx-path141978_))
              (_reldir141992_
               (let _lp141981_ ((_relsrc141983_
                                 (let ((_$e141988_
                                        (gx#stx-source _stx-path141978_)))
                                   (if _$e141988_ _$e141988_ _rel141979_))))
                 (if (##structure-instance-of? _relsrc141983_ 'gerbil#AST::t)
                     (_lp141981_
                      (let ((_$e141985_ (gx#stx-source _relsrc141983_)))
                        (if _$e141985_ _$e141985_ (gx#stx-e _relsrc141983_))))
                     (if (source-location-path? _relsrc141983_)
                         (path-directory (source-location-path _relsrc141983_))
                         (if (string? _relsrc141983_)
                             (path-directory _relsrc141983_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path141991_ (path-normalize _reldir141992_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path141997_)
        (let ((_rel141999_ '#f))
          (gx#core-resolve-path__% _stx-path141997_ _rel141999_))))
    (define gx#core-resolve-path
      (lambda _g149450_
        (let ((_g149449_ (##length _g149450_)))
          (cond ((##fx= _g149449_ 1)
                 (apply (lambda (_stx-path141997_)
                          (gx#core-resolve-path__0 _stx-path141997_))
                        _g149450_))
                ((##fx= _g149449_ 2)
                 (apply (lambda (_stx-path142001_ _rel142002_)
                          (gx#core-resolve-path__%
                           _stx-path142001_
                           _rel142002_))
                        _g149450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g149450_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr141934_ _ctx141935_)
        (let* ((_repr141936141943_ _repr141934_)
               (_E141938141947_
                (lambda () (error '"No clause matching" _repr141936141943_)))
               (_K141939141955_
                (lambda (_subs141950_ _phi141951_)
                  (let ((_subst141953_
                         (if (not (null? _subs141950_))
                             (list->table _subs141950_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst141953_
                     _ctx141935_
                     _phi141951_
                     '#f)))))
          (if (##pair? _repr141936141943_)
              (let ((_hd141940141958_ (##car _repr141936141943_))
                    (_tl141941141960_ (##cdr _repr141936141943_)))
                (let* ((_phi141963_ _hd141940141958_)
                       (_subs141965_ _tl141941141960_))
                  (_K141939141955_ _subs141965_ _phi141963_)))
              (_E141938141947_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr141970_)
        (let ((_ctx141972_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr141970_ _ctx141972_))))
    (define gx#core-deserialize-mark
      (lambda _g149452_
        (let ((_g149451_ (##length _g149452_)))
          (cond ((##fx= _g149451_ 1)
                 (apply (lambda (_repr141970_)
                          (gx#core-deserialize-mark__0 _repr141970_))
                        _g149452_))
                ((##fx= _g149451_ 2)
                 (apply (lambda (_repr141974_ _ctx141975_)
                          (gx#core-deserialize-mark__%
                           _repr141974_
                           _ctx141975_))
                        _g149452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g149452_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx141931_)
        (gx#stx-rewrap _stx141931_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx141929_)
        (gx#stx-unwrap__% _stx141929_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx141899_)
        (let* ((_g141900141908_ (gx#current-expander-marks))
               (_else141902141916_ (lambda () _stx141899_))
               (_K141904141921_
                (lambda (_hd141919_)
                  (gx#stx-apply-mark _stx141899_ _hd141919_))))
          (if (##pair? _g141900141908_)
              (let* ((_hd141905141924_ (##car _g141900141908_))
                     (_hd141927_ _hd141905141924_))
                (_K141904141921_ _hd141927_))
              (_else141902141916_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx141884_ _E141885_)
        (let ((_bind141887_ (gx#resolve-identifier__0 _stx141884_)))
          (if (##structure-direct-instance-of?
               _bind141887_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind141887_
               '4
               gx#syntax-binding::t
               '#f)
              (_E141885_ _stx141884_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx141892_)
        (let ((_E141894_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx141892_ _E141894_))))
    (define gx#syntax-local-e
      (lambda _g149454_
        (let ((_g149453_ (##length _g149454_)))
          (cond ((##fx= _g149453_ 1)
                 (apply (lambda (_stx141892_)
                          (gx#syntax-local-e__0 _stx141892_))
                        _g149454_))
                ((##fx= _g149453_ 2)
                 (apply (lambda (_stx141896_ _E141897_)
                          (gx#syntax-local-e__% _stx141896_ _E141897_))
                        _g149454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g149454_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx141868_ _E141869_)
        (let ((_e141871_ (gx#syntax-local-e__% _stx141868_ _E141869_)))
          (if (##structure-instance-of? _e141871_ 'gx#expander::t)
              (##structure-ref _e141871_ '1 gx#expander::t '#f)
              _e141871_))))
    (define gx#syntax-local-value__0
      (lambda (_stx141876_)
        (let ((_E141878_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx141876_ _E141878_))))
    (define gx#syntax-local-value
      (lambda _g149456_
        (let ((_g149455_ (##length _g149456_)))
          (cond ((##fx= _g149455_ 1)
                 (apply (lambda (_stx141876_)
                          (gx#syntax-local-value__0 _stx141876_))
                        _g149456_))
                ((##fx= _g149455_ 2)
                 (apply (lambda (_stx141880_ _E141881_)
                          (gx#syntax-local-value__% _stx141880_ _E141881_))
                        _g149456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g149456_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx141865_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx141865_)))))
