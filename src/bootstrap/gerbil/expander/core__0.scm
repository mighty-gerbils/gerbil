(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707738032)
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
      (lambda _$args144805_
        (apply make-instance gx#expander-context::t _$args144805_)))
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
      (lambda _$args144802_
        (apply make-instance gx#root-context::t _$args144802_)))
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
      (lambda _$args144799_
        (apply make-instance gx#phi-context::t _$args144799_)))
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
      (lambda _$args144796_
        (apply make-instance gx#top-context::t _$args144796_)))
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
      (lambda _$args144793_
        (apply make-instance gx#module-context::t _$args144793_)))
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
      (lambda _$args144790_
        (apply make-instance gx#prelude-context::t _$args144790_)))
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
      (lambda _$args144787_
        (apply make-instance gx#local-context::t _$args144787_)))
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
      (lambda (_self144771_ _id144772_ _super144773_)
        (if (##fx< '3 (##structure-length _self144771_))
            (begin
              (##unchecked-structure-set!
               _self144771_
               _id144772_
               '1
               (##structure-type _self144771_)
               '#f)
              (##unchecked-structure-set!
               _self144771_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144771_)
               '#f)
              (##unchecked-structure-set!
               _self144771_
               _super144773_
               '3
               (##structure-type _self144771_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144771_
                   '3
                   (##vector-length _self144771_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self144778_ _id144779_)
        (let ((_super144781_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self144778_ _id144779_ _super144781_))))
    (define gx#phi-context:::init!
      (lambda _g149416_
        (let ((_g149415_ (##length _g149416_)))
          (cond ((##fx= _g149415_ 2)
                 (apply (lambda (_self144778_ _id144779_)
                          (gx#phi-context:::init!__0 _self144778_ _id144779_))
                        _g149416_))
                ((##fx= _g149415_ 3)
                 (apply (lambda (_self144783_ _id144784_ _super144785_)
                          (gx#phi-context:::init!__%
                           _self144783_
                           _id144784_
                           _super144785_))
                        _g149416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g149416_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self144635_ _super144636_)
        (if (##fx< '3 (##structure-length _self144635_))
            (begin
              (##unchecked-structure-set!
               _self144635_
               (gensym 'L)
               '1
               (##structure-type _self144635_)
               '#f)
              (##unchecked-structure-set!
               _self144635_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144635_)
               '#f)
              (##unchecked-structure-set!
               _self144635_
               _super144636_
               '3
               (##structure-type _self144635_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144635_
                   '3
                   (##vector-length _self144635_)))))
    (define gx#local-context:::init!__0
      (lambda (_self144641_)
        (let ((_super144643_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self144641_ _super144643_))))
    (define gx#local-context:::init!
      (lambda _g149418_
        (let ((_g149417_ (##length _g149418_)))
          (cond ((##fx= _g149417_ 1)
                 (apply (lambda (_self144641_)
                          (gx#local-context:::init!__0 _self144641_))
                        _g149418_))
                ((##fx= _g149417_ 2)
                 (apply (lambda (_self144645_ _super144646_)
                          (gx#local-context:::init!__%
                           _self144645_
                           _super144646_))
                        _g149418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g149418_))))))
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
      (lambda _$args144509_ (apply make-instance gx#binding::t _$args144509_)))
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
      (lambda _$args144506_
        (apply make-instance gx#runtime-binding::t _$args144506_)))
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
      (lambda _$args144503_
        (apply make-instance gx#local-binding::t _$args144503_)))
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
      (lambda _$args144500_
        (apply make-instance gx#top-binding::t _$args144500_)))
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
      (lambda _$args144497_
        (apply make-instance gx#module-binding::t _$args144497_)))
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
      (lambda _$args144494_
        (apply make-instance gx#extern-binding::t _$args144494_)))
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
      (lambda _$args144491_
        (apply make-instance gx#syntax-binding::t _$args144491_)))
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
      (lambda _$args144488_
        (apply make-instance gx#import-binding::t _$args144488_)))
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
      (lambda _$args144485_
        (apply make-instance gx#alias-binding::t _$args144485_)))
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
      (lambda _$args144482_
        (apply make-instance gx#expander::t _$args144482_)))
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
      (lambda _$args144479_
        (apply make-instance gx#core-expander::t _$args144479_)))
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
      (lambda _$args144476_
        (apply make-instance gx#expression-form::t _$args144476_)))
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
      (lambda _$args144473_
        (apply make-instance gx#special-form::t _$args144473_)))
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
      (lambda _$args144470_
        (apply make-instance gx#definition-form::t _$args144470_)))
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
      (lambda _$args144467_
        (apply make-instance gx#top-special-form::t _$args144467_)))
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
      (lambda _$args144464_
        (apply make-instance gx#module-special-form::t _$args144464_)))
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
      (lambda _$args144461_
        (apply make-instance gx#feature-expander::t _$args144461_)))
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
      (lambda _$args144458_
        (apply make-instance gx#private-feature-expander::t _$args144458_)))
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
      (lambda _$args144455_
        (apply make-instance gx#reserved-expander::t _$args144455_)))
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
      (lambda _$args144452_
        (apply make-instance gx#macro-expander::t _$args144452_)))
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
      (lambda _$args144449_
        (apply make-instance gx#rename-macro-expander::t _$args144449_)))
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
      (lambda _$args144446_
        (apply make-instance gx#user-expander::t _$args144446_)))
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
      (lambda _$args144443_
        (apply make-instance gx#expander-mark::t _$args144443_)))
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
      (lambda (_ctx144428_ _message144429_ _stx144430_ . _details144431_)
        (let ((_ctx144441_
               (let ((_$e144433_ _ctx144428_))
                 (if _$e144433_
                     _$e144433_
                     (let ((_$e144436_ (gx#core-context-top__0)))
                       (if _$e144436_
                           ((lambda (_ctx144439_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx144439_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e144436_)
                           '#f))))))
          (raise (make-syntax-error
                  _message144429_
                  (cons _stx144430_ _details144431_)
                  _ctx144441_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx144415_ _expression?144416_)
        (gx#eval-syntax* (gx#core-expand__% _stx144415_ _expression?144416_))))
    (define gx#eval-syntax__0
      (lambda (_stx144421_)
        (let ((_expression?144423_ '#f))
          (gx#eval-syntax__% _stx144421_ _expression?144423_))))
    (define gx#eval-syntax
      (lambda _g149420_
        (let ((_g149419_ (##length _g149420_)))
          (cond ((##fx= _g149419_ 1)
                 (apply (lambda (_stx144421_) (gx#eval-syntax__0 _stx144421_))
                        _g149420_))
                ((##fx= _g149419_ 2)
                 (apply (lambda (_stx144425_ _expression?144426_)
                          (gx#eval-syntax__% _stx144425_ _expression?144426_))
                        _g149420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g149420_))))))
    (define gx#eval-syntax*
      (lambda (_stx144412_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx144412_))))
    (define gx#core-expand__%
      (lambda (_stx144399_ _expression?144400_)
        (if _expression?144400_
            (gx#core-expand-expression _stx144399_)
            (gx#core-expand-top _stx144399_))))
    (define gx#core-expand__0
      (lambda (_stx144405_)
        (let ((_expression?144407_ '#f))
          (gx#core-expand__% _stx144405_ _expression?144407_))))
    (define gx#core-expand
      (lambda _g149422_
        (let ((_g149421_ (##length _g149422_)))
          (cond ((##fx= _g149421_ 1)
                 (apply (lambda (_stx144405_) (gx#core-expand__0 _stx144405_))
                        _g149422_))
                ((##fx= _g149421_ 2)
                 (apply (lambda (_stx144409_ _expression?144410_)
                          (gx#core-expand__% _stx144409_ _expression?144410_))
                        _g149422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g149422_))))))
    (define gx#core-expand-top
      (lambda (_stx144366_)
        (let* ((_stx144368_ (gx#core-expand*__0 _stx144366_))
               (_e144369144376_ _stx144368_)
               (_E144371144380_
                (lambda () (gx#core-expand-expression _stx144368_)))
               (_E144370144394_
                (lambda ()
                  (if (gx#stx-pair? _e144369144376_)
                      (let ((_e144372144384_ (gx#syntax-e _e144369144376_)))
                        (let ((_hd144373144387_ (##car _e144372144384_))
                              (_tl144374144389_ (##cdr _e144372144384_)))
                          (let ((_form144392_ _hd144373144387_))
                            (if (gx#core-bound-identifier?__0 _form144392_)
                                _stx144368_
                                (_E144371144380_)))))
                      (_E144371144380_)))))
          (_E144370144394_))))
    (define gx#core-expand-expression
      (lambda (_stx144313_)
        (letrec ((_sealed-expression?144315_
                  (lambda (_hd144336_)
                    (if (gx#sealed-syntax? _hd144336_)
                        (let* ((_e144337144344_ _hd144336_)
                               (_E144339144348_ (lambda () '#f))
                               (_E144338144362_
                                (lambda ()
                                  (if (gx#stx-pair? _e144337144344_)
                                      (let ((_e144340144352_
                                             (gx#syntax-e _e144337144344_)))
                                        (let ((_hd144341144355_
                                               (##car _e144340144352_))
                                              (_tl144342144357_
                                               (##cdr _e144340144352_)))
                                          (let ((_form144360_
                                                 _hd144341144355_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form144360_
                                                 gx#expression-form-binding?)
                                                (_E144339144348_)))))
                                      (_E144339144348_)))))
                          (_E144338144362_))
                        '#f)))
                 (_illegal-expression144316_
                  (lambda (_hd144334_ . _g149423_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx144313_
                     _hd144334_)))
                 (_expand-e144317_
                  (lambda (_form144329_ _hd144330_)
                    (let ((_bind144332_
                           (if (##structure-instance-of?
                                _form144329_
                                'gx#binding::t)
                               _form144329_
                               (gx#resolve-identifier__0 _form144329_))))
                      (if (gx#core-expander-binding? _bind144332_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind144332_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd144330_
                            (gx#stx-source _stx144313_)))
                          (if (##structure-direct-instance-of?
                               _bind144332_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind144332_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd144330_
                                 (gx#stx-source _stx144313_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx144313_
                               _form144329_)))))))
          (let ((_hd144319_ (gx#core-expand-head _stx144313_)))
            (if (_sealed-expression?144315_ _hd144319_)
                _hd144319_
                (if (gx#stx-pair? _hd144319_)
                    (let* ((_form144321_ (gx#stx-car _hd144319_))
                           (_bind144323_
                            (if (gx#identifier? _form144321_)
                                (gx#resolve-identifier__0 _form144321_)
                                '#f)))
                      (if (or (not _bind144323_)
                              (not (gx#core-expander-binding? _bind144323_)))
                          (_expand-e144317_ '%%app (cons '%%app _hd144319_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind144323_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd144319_
                               _illegal-expression144316_)
                              (if (gx#expression-form-binding? _bind144323_)
                                  (_expand-e144317_ _bind144323_ _hd144319_)
                                  (if (gx#direct-special-form-binding?
                                       _bind144323_)
                                      (gx#core-expand-expression
                                       (_expand-e144317_
                                        _bind144323_
                                        _hd144319_))
                                      (_illegal-expression144316_
                                       _hd144319_))))))
                    (if (gx#core-bound-identifier?__0 _hd144319_)
                        (_illegal-expression144316_ _hd144319_)
                        (if (gx#identifier? _hd144319_)
                            (_expand-e144317_
                             '%%ref
                             (cons '%%ref (cons _hd144319_ '())))
                            (if (gx#stx-datum? _hd144319_)
                                (_expand-e144317_
                                 '%#quote
                                 (cons '%#quote (cons _hd144319_ '())))
                                (_illegal-expression144316_
                                 _hd144319_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx144308_)
        (call-with-parameters
         (lambda ()
           (let ((_stx144311_ (gx#core-expand-expression _stx144308_)))
             (values _stx144311_ (gx#eval-syntax* _stx144311_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx144289_ _stop?144290_)
        (let _lp144292_ ((_stx144294_ _stx144289_))
          (if (_stop?144290_ _stx144294_)
              _stx144294_
              (let ((_rstx144296_ (gx#core-expand1 _stx144294_)))
                (if (eq? _stx144294_ _rstx144296_)
                    _stx144294_
                    (_lp144292_ _rstx144296_)))))))
    (define gx#core-expand*__0
      (lambda (_stx144301_)
        (let ((_stop?144303_ false))
          (gx#core-expand*__% _stx144301_ _stop?144303_))))
    (define gx#core-expand*
      (lambda _g149425_
        (let ((_g149424_ (##length _g149425_)))
          (cond ((##fx= _g149424_ 1)
                 (apply (lambda (_stx144301_) (gx#core-expand*__0 _stx144301_))
                        _g149425_))
                ((##fx= _g149424_ 2)
                 (apply (lambda (_stx144305_ _stop?144306_)
                          (gx#core-expand*__% _stx144305_ _stop?144306_))
                        _g149425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g149425_))))))
    (define gx#core-expand1
      (lambda (_stx144245_)
        (letrec ((_step144247_
                  (lambda (_hd144284_)
                    (let ((_bind144286_ (gx#resolve-identifier__0 _hd144284_)))
                      (if (##structure-instance-of?
                           _bind144286_
                           'gx#runtime-binding::t)
                          _stx144245_
                          (if (##structure-direct-instance-of?
                               _bind144286_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind144286_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx144245_)
                              (if (not _bind144286_)
                                  _stx144245_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx144245_))))))))
          (let* ((_e144248144256_ _stx144245_)
                 (_E144254144260_ (lambda () _stx144245_))
                 (_E144250144266_
                  (lambda ()
                    (let ((_hd144264_ _e144248144256_))
                      (if (gx#identifier? _hd144264_)
                          (_step144247_ _hd144264_)
                          (_E144254144260_)))))
                 (_E144249144280_
                  (lambda ()
                    (if (gx#stx-pair? _e144248144256_)
                        (let ((_e144251144270_ (gx#syntax-e _e144248144256_)))
                          (let ((_hd144252144273_ (##car _e144251144270_))
                                (_tl144253144275_ (##cdr _e144251144270_)))
                            (let ((_hd144278_ _hd144252144273_))
                              (if (gx#identifier? _hd144278_)
                                  (_step144247_ _hd144278_)
                                  (_E144250144266_)))))
                        (_E144250144266_)))))
            (_E144249144280_)))))
    (define gx#core-expand-head
      (lambda (_stx144211_)
        (letrec ((_stop?144213_
                  (lambda (_stx144215_)
                    (let* ((_e144216144223_ _stx144215_)
                           (_E144218144227_ (lambda () '#f))
                           (_E144217144241_
                            (lambda ()
                              (if (gx#stx-pair? _e144216144223_)
                                  (let ((_e144219144231_
                                         (gx#syntax-e _e144216144223_)))
                                    (let ((_hd144220144234_
                                           (##car _e144219144231_))
                                          (_tl144221144236_
                                           (##cdr _e144219144231_)))
                                      (let ((_hd144239_ _hd144220144234_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd144239_)
                                            (_E144218144227_)))))
                                  (_E144218144227_)))))
                      (_E144217144241_)))))
          (gx#core-expand*__% _stx144211_ _stop?144213_))))
    (define gx#core-expand-block__%
      (lambda (_stx144017_
               _expand-special144018_
               _begin-form144019_
               _expand-e144020_)
        (letrec ((_expand-splice144022_
                  (lambda (_hd144185_ _body144186_ _rest144187_ _r144188_)
                    (if (gx#stx-list? _body144186_)
                        (_K144026_
                         (gx#stx-foldr cons _rest144187_ _body144186_)
                         _r144188_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx144017_
                         _hd144185_))))
                 (_expand-cond-expand144023_
                  (lambda (_hd144181_ _rest144182_ _r144183_)
                    (_K144026_
                     (cons (gx#core-expand-cond-expand% _hd144181_)
                           _rest144182_)
                     _r144183_)))
                 (_expand-include144024_
                  (lambda (_hd144130_ _rest144131_ _r144132_)
                    (let* ((_e144133144143_ _hd144130_)
                           (_E144135144147_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144133144143_)))
                           (_E144134144177_
                            (lambda ()
                              (if (gx#stx-pair? _e144133144143_)
                                  (let ((_e144136144151_
                                         (gx#syntax-e _e144133144143_)))
                                    (let ((_hd144137144154_
                                           (##car _e144136144151_))
                                          (_tl144138144156_
                                           (##cdr _e144136144151_)))
                                      (if (gx#stx-pair? _tl144138144156_)
                                          (let ((_e144139144159_
                                                 (gx#syntax-e
                                                  _tl144138144156_)))
                                            (let ((_hd144140144162_
                                                   (##car _e144139144159_))
                                                  (_tl144141144164_
                                                   (##cdr _e144139144159_)))
                                              (let ((_path144167_
                                                     _hd144140144162_))
                                                (if (gx#stx-null?
                                                     _tl144141144164_)
                                                    (if (gx#stx-string?
                                                         _path144167_)
                                                        (let* ((_rpath144169_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path144167_
                         (gx#stx-source _hd144130_)))
                       (_block144171_
                        (gx#core-expand-include%__% _hd144130_ _rpath144169_))
                       (_rbody144174_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block144171_
                            _expand-special144018_
                            '#f
                            _expand-e144020_))
                         gx#current-expander-path
                         (cons _rpath144169_ (gx#current-expander-path)))))
                  (_K144026_
                   _rest144131_
                   (foldr1 cons _r144132_ _rbody144174_)))
                (_E144135144147_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E144135144147_)))))
                                          (_E144135144147_))))
                                  (_E144135144147_)))))
                      (_E144134144177_))))
                 (_expand-expression144025_
                  (lambda (_hd144126_ _rest144127_ _r144128_)
                    (_K144026_
                     _rest144127_
                     (cons (_expand-e144020_ _hd144126_) _r144128_))))
                 (_K144026_
                  (lambda (_rest144056_ _r144057_)
                    (let* ((_e144058144065_ _rest144056_)
                           (_E144060144069_
                            (lambda ()
                              (if _begin-form144019_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form144019_
                                    (reverse _r144057_))
                                   (gx#stx-source _stx144017_))
                                  _r144057_)))
                           (_E144059144122_
                            (lambda ()
                              (if (gx#stx-pair? _e144058144065_)
                                  (let ((_e144061144073_
                                         (gx#syntax-e _e144058144065_)))
                                    (let ((_hd144062144076_
                                           (##car _e144061144073_))
                                          (_tl144063144078_
                                           (##cdr _e144061144073_)))
                                      (let* ((_hd144081_ _hd144062144076_)
                                             (_rest144083_ _tl144063144078_))
                                        (if '#t
                                            (let* ((_hd144085_
                                                    (gx#core-expand-head
                                                     _hd144081_))
                                                   (_e144086144093_ _hd144085_)
                                                   (_E144088144097_
                                                    (lambda ()
                                                      (_expand-expression144025_
                                                       _hd144085_
                                                       _rest144083_
                                                       _r144057_)))
                                                   (_E144087144118_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e144086144093_)
                                                          (let ((_e144089144101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e144086144093_)))
                    (let ((_hd144090144104_ (##car _e144089144101_))
                          (_tl144091144106_ (##cdr _e144089144101_)))
                      (let* ((_form144109_ _hd144090144104_)
                             (_body144111_ _tl144091144106_))
                        (if '#t
                            (let ((_bind144113_
                                   (if (gx#identifier? _form144109_)
                                       (gx#resolve-identifier__0 _form144109_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind144113_)
                                  (let ((_$e144115_
                                         (##unchecked-structure-ref
                                          _bind144113_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e144115_)
                                        (_expand-splice144022_
                                         _hd144085_
                                         _body144111_
                                         _rest144083_
                                         _r144057_)
                                        (if (eq? '%#cond-expand _$e144115_)
                                            (_expand-cond-expand144023_
                                             _hd144085_
                                             _rest144083_
                                             _r144057_)
                                            (if (eq? '%#include _$e144115_)
                                                (_expand-include144024_
                                                 _hd144085_
                                                 _rest144083_
                                                 _r144057_)
                                                (_expand-special144018_
                                                 _hd144085_
                                                 _K144026_
                                                 _rest144083_
                                                 _r144057_)))))
                                  (_expand-expression144025_
                                   _hd144085_
                                   _rest144083_
                                   _r144057_)))
                            (_E144088144097_)))))
                  (_E144088144097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144087144118_))
                                            (_E144060144069_)))))
                                  (_E144060144069_)))))
                      (_E144059144122_)))))
          (let* ((_e144027144034_ _stx144017_)
                 (_E144029144038_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e144027144034_)))
                 (_E144028144052_
                  (lambda ()
                    (if (gx#stx-pair? _e144027144034_)
                        (let ((_e144030144042_ (gx#syntax-e _e144027144034_)))
                          (let ((_hd144031144045_ (##car _e144030144042_))
                                (_tl144032144047_ (##cdr _e144030144042_)))
                            (let ((_body144050_ _tl144032144047_))
                              (if (gx#stx-list? _body144050_)
                                  (_K144026_ _body144050_ '())
                                  (_E144029144038_)))))
                        (_E144029144038_)))))
            (_E144028144052_)))))
    (define gx#core-expand-block__0
      (lambda (_stx144193_ _expand-special144194_)
        (let* ((_begin-form144196_ '%#begin)
               (_expand-e144198_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144193_
           _expand-special144194_
           _begin-form144196_
           _expand-e144198_))))
    (define gx#core-expand-block__1
      (lambda (_stx144200_ _expand-special144201_ _begin-form144202_)
        (let ((_expand-e144204_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144200_
           _expand-special144201_
           _begin-form144202_
           _expand-e144204_))))
    (define gx#core-expand-block
      (lambda _g149427_
        (let ((_g149426_ (##length _g149427_)))
          (cond ((##fx= _g149426_ 2)
                 (apply (lambda (_stx144193_ _expand-special144194_)
                          (gx#core-expand-block__0
                           _stx144193_
                           _expand-special144194_))
                        _g149427_))
                ((##fx= _g149426_ 3)
                 (apply (lambda (_stx144200_
                                 _expand-special144201_
                                 _begin-form144202_)
                          (gx#core-expand-block__1
                           _stx144200_
                           _expand-special144201_
                           _begin-form144202_))
                        _g149427_))
                ((##fx= _g149426_ 4)
                 (apply (lambda (_stx144206_
                                 _expand-special144207_
                                 _begin-form144208_
                                 _expand-e144209_)
                          (gx#core-expand-block__%
                           _stx144206_
                           _expand-special144207_
                           _begin-form144208_
                           _expand-e144209_))
                        _g149427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g149427_))))))
    (define gx#core-expand-block*
      (lambda (_stx143965_ _expand-special143966_)
        (let* ((_g143967143978_
                (gx#core-expand-block__1
                 _stx143965_
                 _expand-special143966_
                 '#f))
               (_E143971143982_
                (lambda () (error '"No clause matching" _g143967143978_))))
          (let ((_K143976144013_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx143965_)))
                (_K143973143999_ (lambda (_expr143997_) _expr143997_))
                (_K143972143988_
                 (lambda (_body143986_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body143986_))
                    (gx#stx-source _stx143965_)))))
            (let ((_try-match143969144009_
                   (lambda ()
                     (if (##pair? _g143967143978_)
                         (let ((_tl143975144004_ (##cdr _g143967143978_))
                               (_hd143974144002_ (##car _g143967143978_)))
                           (if (##null? _tl143975144004_)
                               (let ((_expr144007_ _hd143974144002_))
                                 (_K143973143999_ _expr144007_))
                               (let ((_body143991_ _g143967143978_))
                                 (_K143972143988_ _body143991_))))
                         (let ((_body143991_ _g143967143978_))
                           (_K143972143988_ _body143991_))))))
              (if (##null? _g143967143978_)
                  (_K143976144013_)
                  (_try-match143969144009_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx143793_)
        (letrec ((_satisfied?143795_
                  (lambda (_condition143893_)
                    (let* ((_e143894143909_ _condition143893_)
                           (_E143904143913_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143894143909_)))
                           (_E143897143932_
                            (lambda ()
                              (if (gx#stx-pair? _e143894143909_)
                                  (let ((_e143905143917_
                                         (gx#syntax-e _e143894143909_)))
                                    (let ((_hd143906143920_
                                           (##car _e143905143917_))
                                          (_tl143907143922_
                                           (##cdr _e143905143917_)))
                                      (let* ((_combinator143925_
                                              _hd143906143920_)
                                             (_body143927_ _tl143907143922_))
                                        (if (gx#stx-list? _body143927_)
                                            (let ((_$e143929_
                                                   (gx#stx-e
                                                    _combinator143925_)))
                                              (if (eq? 'not _$e143929_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?143795_
                                                        _body143927_))
                                                  (if (eq? 'and _$e143929_)
                                                      (gx#stx-andmap
                                                       _satisfied?143795_
                                                       _body143927_)
                                                      (if (eq? 'or _$e143929_)
                                                          (gx#stx-ormap
                                                           _satisfied?143795_
                                                           _body143927_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e143929_)
                      (gx#stx-andmap gx#core-resolve-identifier _body143927_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx143793_
                       _combinator143925_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E143904143913_)))))
                                  (_E143904143913_))))
                           (_E143896143955_
                            (lambda ()
                              (if (gx#stx-pair? _e143894143909_)
                                  (let ((_e143898143936_
                                         (gx#syntax-e _e143894143909_)))
                                    (let ((_hd143899143939_
                                           (##car _e143898143936_))
                                          (_tl143900143941_
                                           (##cdr _e143898143936_)))
                                      (if (and (gx#identifier?
                                                _hd143899143939_)
                                               (gx#core-identifier=?
                                                _hd143899143939_
                                                'unquote))
                                          (if (gx#stx-pair? _tl143900143941_)
                                              (let ((_e143901143944_
                                                     (gx#syntax-e
                                                      _tl143900143941_)))
                                                (let ((_hd143902143947_
                                                       (##car _e143901143944_))
                                                      (_tl143903143949_
                                                       (##cdr _e143901143944_)))
                                                  (let ((_expr143952_
                                                         _hd143902143947_))
                                                    (if (gx#stx-null?
                                                         _tl143903143949_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr143952_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E143897143932_))
                (_E143897143932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143897143932_))
                                          (_E143897143932_))))
                                  (_E143897143932_))))
                           (_E143895143961_
                            (lambda ()
                              (let ((_id143959_ _e143894143909_))
                                (if (gx#identifier? _id143959_)
                                    (gx#core-bound-identifier?__%
                                     _id143959_
                                     gx#feature-binding?)
                                    (_E143896143955_))))))
                      (_E143895143961_))))
                 (_loop143796_
                  (lambda (_rest143826_)
                    (let* ((_e143827143835_ _rest143826_)
                           (_E143833143839_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143827143835_)))
                           (_E143829143843_
                            (lambda ()
                              (if (gx#stx-null? _e143827143835_)
                                  (if '#t '() (_E143833143839_))
                                  (_E143833143839_))))
                           (_E143828143889_
                            (lambda ()
                              (if (gx#stx-pair? _e143827143835_)
                                  (let ((_e143830143847_
                                         (gx#syntax-e _e143827143835_)))
                                    (let ((_hd143831143850_
                                           (##car _e143830143847_))
                                          (_tl143832143852_
                                           (##cdr _e143830143847_)))
                                      (let* ((_hd143855_ _hd143831143850_)
                                             (_rest143857_ _tl143832143852_))
                                        (if '#t
                                            (let* ((_e143858143865_ _hd143855_)
                                                   (_E143860143869_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e143858143865_)))
                                                   (_E143859143885_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e143858143865_)
                                                          (let ((_e143861143873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e143858143865_)))
                    (let ((_hd143862143876_ (##car _e143861143873_))
                          (_tl143863143878_ (##cdr _e143861143873_)))
                      (let* ((_condition143881_ _hd143862143876_)
                             (_body143883_ _tl143863143878_))
                        (if '#t
                            (if (gx#stx-eq? _condition143881_ 'else)
                                (if (gx#stx-null? _rest143857_)
                                    _body143883_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx143793_
                                     _hd143855_))
                                (if (_satisfied?143795_ _condition143881_)
                                    _body143883_
                                    (_loop143796_ _rest143857_)))
                            (_E143860143869_)))))
                  (_E143860143869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143859143885_))
                                            (_E143829143843_)))))
                                  (_E143829143843_)))))
                      (_E143828143889_)))))
          (let* ((_e143797143804_ _stx143793_)
                 (_E143799143808_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e143797143804_)))
                 (_E143798143822_
                  (lambda ()
                    (if (gx#stx-pair? _e143797143804_)
                        (let ((_e143800143812_ (gx#syntax-e _e143797143804_)))
                          (let ((_hd143801143815_ (##car _e143800143812_))
                                (_tl143802143817_ (##cdr _e143800143812_)))
                            (let ((_clauses143820_ _tl143802143817_))
                              (if (gx#stx-list? _clauses143820_)
                                  (gx#core-cons
                                   'begin
                                   (_loop143796_ _clauses143820_))
                                  (_E143799143808_)))))
                        (_E143799143808_)))))
            (_E143798143822_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx143736_ _rpath143737_)
        (let* ((_e143738143748_ _stx143736_)
               (_E143740143752_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e143738143748_)))
               (_E143739143779_
                (lambda ()
                  (if (gx#stx-pair? _e143738143748_)
                      (let ((_e143741143756_ (gx#syntax-e _e143738143748_)))
                        (let ((_hd143742143759_ (##car _e143741143756_))
                              (_tl143743143761_ (##cdr _e143741143756_)))
                          (if (gx#stx-pair? _tl143743143761_)
                              (let ((_e143744143764_
                                     (gx#syntax-e _tl143743143761_)))
                                (let ((_hd143745143767_
                                       (##car _e143744143764_))
                                      (_tl143746143769_
                                       (##cdr _e143744143764_)))
                                  (let ((_path143772_ _hd143745143767_))
                                    (if (gx#stx-null? _tl143746143769_)
                                        (if (gx#stx-string? _path143772_)
                                            (let ((_rpath143777_
                                                   (let ((_$e143774_
                                                          _rpath143737_))
                                                     (if _$e143774_
                                                         _$e143774_
                                                         (gx#core-resolve-path__%
                                                          _path143772_
                                                          (gx#stx-source
                                                           _stx143736_))))))
                                              (if (member _rpath143777_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx143736_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath143777_))
                                                    (gx#stx-source
                                                     _stx143736_)))))
                                            (_E143740143752_))
                                        (_E143740143752_)))))
                              (_E143740143752_))))
                      (_E143740143752_)))))
          (_E143739143779_))))
    (define gx#core-expand-include%__0
      (lambda (_stx143786_)
        (let ((_rpath143788_ '#f))
          (gx#core-expand-include%__% _stx143786_ _rpath143788_))))
    (define gx#core-expand-include%
      (lambda _g149429_
        (let ((_g149428_ (##length _g149429_)))
          (cond ((##fx= _g149428_ 1)
                 (apply (lambda (_stx143786_)
                          (gx#core-expand-include%__0 _stx143786_))
                        _g149429_))
                ((##fx= _g149428_ 2)
                 (apply (lambda (_stx143790_ _rpath143791_)
                          (gx#core-expand-include%__%
                           _stx143790_
                           _rpath143791_))
                        _g149429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g149429_))))))
    (define gx#core-apply-expander__%
      (lambda (_K143705_ _stx143706_ _method143707_)
        (if (procedure? _K143705_)
            (let ((_$e143709_ (gx#stx-source _stx143706_)))
              (if _$e143709_
                  ((lambda (_g143711143713_)
                     (gx#stx-wrap-source
                      (_K143705_ _stx143706_)
                      _g143711143713_))
                   _$e143709_)
                  (_K143705_ _stx143706_)))
            (let ((_$e143716_ (bound-method-ref _K143705_ _method143707_)))
              (if _$e143716_
                  ((lambda (_g143718143720_)
                     (gx#core-apply-expander__%
                      _g143718143720_
                      _stx143706_
                      _method143707_))
                   _$e143716_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx143706_
                   _method143707_))))))
    (define gx#core-apply-expander__0
      (lambda (_K143726_ _stx143727_)
        (let ((_method143729_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K143726_ _stx143727_ _method143729_))))
    (define gx#core-apply-expander
      (lambda _g149431_
        (let ((_g149430_ (##length _g149431_)))
          (cond ((##fx= _g149430_ 2)
                 (apply (lambda (_K143726_ _stx143727_)
                          (gx#core-apply-expander__0 _K143726_ _stx143727_))
                        _g149431_))
                ((##fx= _g149430_ 3)
                 (apply (lambda (_K143731_ _stx143732_ _method143733_)
                          (gx#core-apply-expander__%
                           _K143731_
                           _stx143732_
                           _method143733_))
                        _g149431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g149431_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self143701_ _stx143702_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx143702_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self143554_ _stx143555_)
        (let* ((_self143556143562_ _self143554_)
               (_E143558143566_
                (lambda () (error '"No clause matching" _self143556143562_)))
               (_K143559143571_
                (lambda (_K143569_)
                  (gx#core-apply-expander__0 _K143569_ _stx143555_))))
          (if (##structure-instance-of? _self143556143562_ 'gx#core-macro::t)
              (let* ((_e143560143574_
                      (##unchecked-structure-ref
                       _self143556143562_
                       '1
                       gx#expander::t
                       '#f))
                     (_K143577_ _e143560143574_))
                (_K143559143571_ _K143577_))
              (_E143558143566_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self143407_ _stx143408_)
        (if (gx#sealed-syntax? _stx143408_)
            _stx143408_
            (let* ((_self143409143415_ _self143407_)
                   (_E143411143419_
                    (lambda ()
                      (error '"No clause matching" _self143409143415_)))
                   (_K143412143424_
                    (lambda (_K143422_)
                      (gx#core-apply-expander__0 _K143422_ _stx143408_))))
              (if (##structure-instance-of?
                   _self143409143415_
                   'gx#core-expander::t)
                  (let* ((_e143413143427_
                          (##unchecked-structure-ref
                           _self143409143415_
                           '1
                           gx#expander::t
                           '#f))
                         (_K143430_ _e143413143427_))
                    (_K143412143424_ _K143430_))
                  (_E143411143419_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self143269_ _stx143270_ _top?143271_)
        (if (_top?143271_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self143269_ _stx143270_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx143270_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self143276_ _stx143277_)
        (let ((_top?143279_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self143276_
           _stx143277_
           _top?143279_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g149433_
        (let ((_g149432_ (##length _g149433_)))
          (cond ((##fx= _g149432_ 2)
                 (apply (lambda (_self143276_ _stx143277_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self143276_
                           _stx143277_))
                        _g149433_))
                ((##fx= _g149432_ 3)
                 (apply (lambda (_self143281_ _stx143282_ _top?143283_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self143281_
                           _stx143282_
                           _top?143283_))
                        _g149433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g149433_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self143143_ _stx143144_)
        (gx#top-special-form::apply-macro-expander__%
         _self143143_
         _stx143144_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self142968_ _stx142969_)
        (let* ((_self142970142976_ _self142968_)
               (_E142972142980_
                (lambda () (error '"No clause matching" _self142970142976_)))
               (_K142973143013_
                (lambda (_id142983_)
                  (let* ((_e142984142991_ _stx142969_)
                         (_E142986142995_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e142984142991_)))
                         (_E142985143009_
                          (lambda ()
                            (if (gx#stx-pair? _e142984142991_)
                                (let ((_e142987142999_
                                       (gx#syntax-e _e142984142991_)))
                                  (let ((_hd142988143002_
                                         (##car _e142987142999_))
                                        (_tl142989143004_
                                         (##cdr _e142987142999_)))
                                    (let ((_body143007_ _tl142989143004_))
                                      (if '#t
                                          (gx#core-cons
                                           _id142983_
                                           _body143007_)
                                          (_E142986142995_)))))
                                (_E142986142995_)))))
                    (_E142985143009_)))))
          (if (##structure-instance-of?
               _self142970142976_
               'gx#rename-macro-expander::t)
              (let* ((_e142974143016_
                      (##unchecked-structure-ref
                       _self142970142976_
                       '1
                       gx#expander::t
                       '#f))
                     (_id143019_ _e142974143016_))
                (_K142973143013_ _id143019_))
              (_E142972142980_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self142794_ _stx142795_ _method142796_)
        (let* ((_self142797142805_ _self142794_)
               (_E142799142809_
                (lambda () (error '"No clause matching" _self142797142805_)))
               (_K142800142816_
                (lambda (_phi142812_ _ctx142813_ _K142814_)
                  (gx#core-apply-user-macro
                   _K142814_
                   _stx142795_
                   _ctx142813_
                   _phi142812_
                   _method142796_))))
          (if (##structure-instance-of?
               _self142797142805_
               'gx#macro-expander::t)
              (let* ((_e142801142819_
                      (##unchecked-structure-ref
                       _self142797142805_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142822_ _e142801142819_)
                     (_e142802142824_
                      (##unchecked-structure-ref
                       _self142797142805_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx142827_ _e142802142824_)
                     (_e142803142829_
                      (##unchecked-structure-ref
                       _self142797142805_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi142832_ _e142803142829_))
                (_K142800142816_ _phi142832_ _ctx142827_ _K142822_))
              (_E142799142809_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self142837_ _stx142838_)
        (let ((_method142840_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self142837_
           _stx142838_
           _method142840_))))
    (define gx#core-apply-user-expander
      (lambda _g149435_
        (let ((_g149434_ (##length _g149435_)))
          (cond ((##fx= _g149434_ 2)
                 (apply (lambda (_self142837_ _stx142838_)
                          (gx#core-apply-user-expander__0
                           _self142837_
                           _stx142838_))
                        _g149435_))
                ((##fx= _g149434_ 3)
                 (apply (lambda (_self142842_ _stx142843_ _method142844_)
                          (gx#core-apply-user-expander__%
                           _self142842_
                           _stx142843_
                           _method142844_))
                        _g149435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g149435_))))))
    (define gx#core-apply-user-macro
      (lambda (_K142784_ _stx142785_ _ctx142786_ _phi142787_ _method142788_)
        (let ((_mark142790_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx142786_
                _phi142787_
                _stx142785_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K142784_
               (gx#stx-apply-mark _stx142785_ _mark142790_)
               _method142788_)
              _mark142790_))
           gx#current-expander-marks
           (cons _mark142790_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx142636_ _phi142637_ _ctx142638_)
        (let _lp142640_ ((_bind142642_
                          (gx#core-resolve-identifier__%
                           _stx142636_
                           _phi142637_
                           _ctx142638_)))
          (if (##structure-direct-instance-of?
               _bind142642_
               'gx#import-binding::t)
              (_lp142640_
               (##unchecked-structure-ref
                _bind142642_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind142642_
                   'gx#alias-binding::t)
                  (_lp142640_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind142642_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi142637_
                    _ctx142638_))
                  _bind142642_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx142647_)
        (let* ((_phi142649_ (gx#current-expander-phi))
               (_ctx142651_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142647_ _phi142649_ _ctx142651_))))
    (define gx#resolve-identifier__1
      (lambda (_stx142653_ _phi142654_)
        (let ((_ctx142656_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142653_ _phi142654_ _ctx142656_))))
    (define gx#resolve-identifier
      (lambda _g149437_
        (let ((_g149436_ (##length _g149437_)))
          (cond ((##fx= _g149436_ 1)
                 (apply (lambda (_stx142647_)
                          (gx#resolve-identifier__0 _stx142647_))
                        _g149437_))
                ((##fx= _g149436_ 2)
                 (apply (lambda (_stx142653_ _phi142654_)
                          (gx#resolve-identifier__1 _stx142653_ _phi142654_))
                        _g149437_))
                ((##fx= _g149436_ 3)
                 (apply (lambda (_stx142658_ _phi142659_ _ctx142660_)
                          (gx#resolve-identifier__%
                           _stx142658_
                           _phi142659_
                           _ctx142660_))
                        _g149437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g149437_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx142594_ _val142595_ _rebind?142596_ _phi142597_ _ctx142598_)
        (let ((_rebind?142600_
               (if (not _rebind?142596_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?142596_) _rebind?142596_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx142594_)
           _val142595_
           _rebind?142600_
           _phi142597_
           _ctx142598_))))
    (define gx#bind-identifier!__0
      (lambda (_stx142605_ _val142606_)
        (let* ((_rebind?142608_ '#f)
               (_phi142610_ (gx#current-expander-phi))
               (_ctx142612_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142605_
           _val142606_
           _rebind?142608_
           _phi142610_
           _ctx142612_))))
    (define gx#bind-identifier!__1
      (lambda (_stx142614_ _val142615_ _rebind?142616_)
        (let* ((_phi142618_ (gx#current-expander-phi))
               (_ctx142620_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142614_
           _val142615_
           _rebind?142616_
           _phi142618_
           _ctx142620_))))
    (define gx#bind-identifier!__2
      (lambda (_stx142622_ _val142623_ _rebind?142624_ _phi142625_)
        (let ((_ctx142627_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142622_
           _val142623_
           _rebind?142624_
           _phi142625_
           _ctx142627_))))
    (define gx#bind-identifier!
      (lambda _g149439_
        (let ((_g149438_ (##length _g149439_)))
          (cond ((##fx= _g149438_ 2)
                 (apply (lambda (_stx142605_ _val142606_)
                          (gx#bind-identifier!__0 _stx142605_ _val142606_))
                        _g149439_))
                ((##fx= _g149438_ 3)
                 (apply (lambda (_stx142614_ _val142615_ _rebind?142616_)
                          (gx#bind-identifier!__1
                           _stx142614_
                           _val142615_
                           _rebind?142616_))
                        _g149439_))
                ((##fx= _g149438_ 4)
                 (apply (lambda (_stx142622_
                                 _val142623_
                                 _rebind?142624_
                                 _phi142625_)
                          (gx#bind-identifier!__2
                           _stx142622_
                           _val142623_
                           _rebind?142624_
                           _phi142625_))
                        _g149439_))
                ((##fx= _g149438_ 5)
                 (apply (lambda (_stx142629_
                                 _val142630_
                                 _rebind?142631_
                                 _phi142632_
                                 _ctx142633_)
                          (gx#bind-identifier!__%
                           _stx142629_
                           _val142630_
                           _rebind?142631_
                           _phi142632_
                           _ctx142633_))
                        _g149439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g149439_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx142566_ _phi142567_ _ctx142568_)
        (let _lp142570_ ((_e142572_ _stx142566_)
                         (_marks142573_ (gx#current-expander-marks)))
          (if (symbol? _e142572_)
              (gx#core-resolve-binding
               _e142572_
               _phi142567_
               _phi142567_
               _ctx142568_
               (reverse _marks142573_))
              (if (gx#identifier-quote? _e142572_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e142572_ '1 gx#AST::t '#f)
                   _phi142567_
                   '0
                   (##unchecked-structure-ref
                    _e142572_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e142572_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e142572_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e142572_ '1 gx#AST::t '#f)
                       _phi142567_
                       _phi142567_
                       _ctx142568_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e142572_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks142573_))
                      (if (##structure-direct-instance-of?
                           _e142572_
                           'gx#syntax-wrap::t)
                          (_lp142570_
                           (##unchecked-structure-ref
                            _e142572_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e142572_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks142573_))
                          (if (##structure-instance-of?
                               _e142572_
                               'gerbil#AST::t)
                              (_lp142570_
                               (##unchecked-structure-ref
                                _e142572_
                                '1
                                gx#AST::t
                                '#f)
                               _marks142573_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx142566_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx142578_)
        (let* ((_phi142580_ (gx#current-expander-phi))
               (_ctx142582_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142578_
           _phi142580_
           _ctx142582_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx142584_ _phi142585_)
        (let ((_ctx142587_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142584_
           _phi142585_
           _ctx142587_))))
    (define gx#core-resolve-identifier
      (lambda _g149441_
        (let ((_g149440_ (##length _g149441_)))
          (cond ((##fx= _g149440_ 1)
                 (apply (lambda (_stx142578_)
                          (gx#core-resolve-identifier__0 _stx142578_))
                        _g149441_))
                ((##fx= _g149440_ 2)
                 (apply (lambda (_stx142584_ _phi142585_)
                          (gx#core-resolve-identifier__1
                           _stx142584_
                           _phi142585_))
                        _g149441_))
                ((##fx= _g149440_ 3)
                 (apply (lambda (_stx142589_ _phi142590_ _ctx142591_)
                          (gx#core-resolve-identifier__%
                           _stx142589_
                           _phi142590_
                           _ctx142591_))
                        _g149441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g149441_))))))
    (define gx#core-resolve-binding
      (lambda (_id142479_
               _phi142480_
               _src-phi142481_
               _ctx142482_
               _marks142483_)
        (letrec ((_resolve142485_
                  (lambda (_ctx142553_ _src-phi142554_ _key142555_)
                    (let _lp142557_ ((_ctx142559_
                                      (gx#core-context-shift
                                       _ctx142553_
                                       _phi142480_))
                                     (_dphi142560_
                                      (fx- _phi142480_ _src-phi142554_)))
                      (let ((_$e142562_
                             (gx#core-context-resolve
                              _ctx142559_
                              _key142555_)))
                        (if _$e142562_
                            (values _$e142562_)
                            (if (fxzero? _dphi142560_)
                                '#f
                                (if (fxpositive? _dphi142560_)
                                    (_lp142557_
                                     (gx#core-context-shift _ctx142559_ '-1)
                                     (fx- _dphi142560_ '1))
                                    (_lp142557_
                                     (gx#core-context-shift _ctx142559_ '1)
                                     (fx+ _dphi142560_ '1))))))))))
          (let _lp142487_ ((_ctx142489_ _ctx142482_)
                           (_src-phi142490_ _src-phi142481_)
                           (_rest142491_ _marks142483_))
            (let* ((_rest142492142500_ _rest142491_)
                   (_else142494142508_
                    (lambda ()
                      (_resolve142485_
                       _ctx142489_
                       _src-phi142490_
                       _id142479_)))
                   (_K142496142541_
                    (lambda (_rest142511_ _hd142512_)
                      (let* ((_hd142513142519_ _hd142512_)
                             (_E142515142523_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd142513142519_)))
                             (_K142516142533_
                              (lambda (_subst142526_)
                                (let ((_$e142530_
                                       (let ((_key142528_
                                              (if _subst142526_
                                                  (table-ref
                                                   _subst142526_
                                                   _id142479_
                                                   '#f)
                                                  '#f)))
                                         (if _key142528_
                                             (_resolve142485_
                                              _ctx142489_
                                              _src-phi142490_
                                              _key142528_)
                                             '#f))))
                                  (if _$e142530_
                                      _$e142530_
                                      (_lp142487_
                                       (##unchecked-structure-ref
                                        _hd142512_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd142512_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest142511_))))))
                        (if (##structure-instance-of?
                             _hd142513142519_
                             'gx#expander-mark::t)
                            (let* ((_e142517142536_
                                    (##unchecked-structure-ref
                                     _hd142513142519_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst142539_ _e142517142536_))
                              (_K142516142533_ _subst142539_))
                            (_E142515142523_))))))
              (if (##pair? _rest142492142500_)
                  (let ((_hd142497142544_ (##car _rest142492142500_))
                        (_tl142498142546_ (##cdr _rest142492142500_)))
                    (let* ((_hd142549_ _hd142497142544_)
                           (_rest142551_ _tl142498142546_))
                      (_K142496142541_ _rest142551_ _hd142549_)))
                  (_else142494142508_)))))))
    (define gx#core-bind!__%
      (lambda (_key142355_ _val142356_ _rebind?142357_ _phi142358_ _ctx142359_)
        (letrec ((_update-binding142361_
                  (lambda (_xval142432_)
                    (if (or (_rebind?142357_
                             _ctx142359_
                             _xval142432_
                             _val142356_)
                            (and (##structure-direct-instance-of?
                                  _xval142432_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval142432_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val142356_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val142356_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval142432_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val142356_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val142356_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval142432_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val142356_
                        (if (and (##structure-direct-instance-of?
                                  _val142356_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val142356_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval142432_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val142356_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval142432_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval142432_
                            (if (and (##structure-direct-instance-of?
                                      _val142356_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval142432_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key142355_
                                 (cons (##unchecked-structure-ref
                                        _val142356_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val142356_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval142432_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval142432_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval142432_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval142432_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key142355_
                                 _val142356_
                                 _xval142432_))))))
                 (_gensubst142362_
                  (lambda (_subst142427_ _id142428_)
                    (let ((_eid142430_
                           (gensym (if (uninterned-symbol? _id142428_)
                                       '%
                                       _id142428_))))
                      (table-set! _subst142427_ _id142428_ _eid142430_)
                      _eid142430_)))
                 (_subst!142363_
                  (lambda (_key142365_)
                    (let* ((_key142366142374_ _key142365_)
                           (_else142368142382_ (lambda () _key142365_))
                           (_K142370142415_
                            (lambda (_mark142385_ _id142386_)
                              (let* ((_mark142387142393_ _mark142385_)
                                     (_E142389142397_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark142387142393_)))
                                     (_K142390142407_
                                      (lambda (_subst142400_)
                                        (if (not _subst142400_)
                                            (let ((_subst142402_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark142385_
                                               _subst142402_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst142362_
                                               _subst142402_
                                               _id142386_))
                                            (let ((_$e142404_
                                                   (table-ref
                                                    _subst142400_
                                                    _id142386_
                                                    '#f)))
                                              (if _$e142404_
                                                  (values _$e142404_)
                                                  (_gensubst142362_
                                                   _subst142400_
                                                   _id142386_)))))))
                                (if (##structure-instance-of?
                                     _mark142387142393_
                                     'gx#expander-mark::t)
                                    (let* ((_e142391142410_
                                            (##unchecked-structure-ref
                                             _mark142387142393_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst142413_ _e142391142410_))
                                      (_K142390142407_ _subst142413_))
                                    (_E142389142397_))))))
                      (if (##pair? _key142366142374_)
                          (let ((_hd142371142418_ (##car _key142366142374_))
                                (_tl142372142420_ (##cdr _key142366142374_)))
                            (let* ((_id142423_ _hd142371142418_)
                                   (_mark142425_ _tl142372142420_))
                              (_K142370142415_ _mark142425_ _id142423_)))
                          (_else142368142382_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx142359_ _phi142358_)
           (_subst!142363_ _key142355_)
           _val142356_
           _update-binding142361_))))
    (define gx#core-bind!__0
      (lambda (_key142449_ _val142450_)
        (let* ((_rebind?142452_ false)
               (_phi142454_ (gx#current-expander-phi))
               (_ctx142456_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142449_
           _val142450_
           _rebind?142452_
           _phi142454_
           _ctx142456_))))
    (define gx#core-bind!__1
      (lambda (_key142458_ _val142459_ _rebind?142460_)
        (let* ((_phi142462_ (gx#current-expander-phi))
               (_ctx142464_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142458_
           _val142459_
           _rebind?142460_
           _phi142462_
           _ctx142464_))))
    (define gx#core-bind!__2
      (lambda (_key142466_ _val142467_ _rebind?142468_ _phi142469_)
        (let ((_ctx142471_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142466_
           _val142467_
           _rebind?142468_
           _phi142469_
           _ctx142471_))))
    (define gx#core-bind!
      (lambda _g149443_
        (let ((_g149442_ (##length _g149443_)))
          (cond ((##fx= _g149442_ 2)
                 (apply (lambda (_key142449_ _val142450_)
                          (gx#core-bind!__0 _key142449_ _val142450_))
                        _g149443_))
                ((##fx= _g149442_ 3)
                 (apply (lambda (_key142458_ _val142459_ _rebind?142460_)
                          (gx#core-bind!__1
                           _key142458_
                           _val142459_
                           _rebind?142460_))
                        _g149443_))
                ((##fx= _g149442_ 4)
                 (apply (lambda (_key142466_
                                 _val142467_
                                 _rebind?142468_
                                 _phi142469_)
                          (gx#core-bind!__2
                           _key142466_
                           _val142467_
                           _rebind?142468_
                           _phi142469_))
                        _g149443_))
                ((##fx= _g149442_ 5)
                 (apply (lambda (_key142473_
                                 _val142474_
                                 _rebind?142475_
                                 _phi142476_
                                 _ctx142477_)
                          (gx#core-bind!__%
                           _key142473_
                           _val142474_
                           _rebind?142475_
                           _phi142476_
                           _ctx142477_))
                        _g149443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g149443_))))))
    (define gx#core-identifier-key
      (lambda (_stx142289_)
        (if (symbol? _stx142289_)
            (let* ((_g142290142298_ (gx#current-expander-marks))
                   (_else142292142306_ (lambda () _stx142289_))
                   (_K142294142311_
                    (lambda (_hd142309_) (cons _stx142289_ _hd142309_))))
              (if (##pair? _g142290142298_)
                  (let* ((_hd142295142314_ (##car _g142290142298_))
                         (_hd142317_ _hd142295142314_))
                    (_K142294142311_ _hd142317_))
                  (_else142292142306_)))
            (if (gx#identifier? _stx142289_)
                (let* ((_id142319_ (gx#syntax-local-unwrap _stx142289_))
                       (_eid142321_ (gx#stx-e _id142319_))
                       (_marks142323_ (gx#stx-identifier-marks* _id142319_)))
                  (let* ((_marks142325142333_ _marks142323_)
                         (_else142327142341_ (lambda () _eid142321_))
                         (_K142329142346_
                          (lambda (_hd142344_) (cons _eid142321_ _hd142344_))))
                    (if (##pair? _marks142325142333_)
                        (let* ((_hd142330142349_ (##car _marks142325142333_))
                               (_hd142352_ _hd142330142349_))
                          (_K142329142346_ _hd142352_))
                        (_else142327142341_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx142289_)))))
    (define gx#core-context-shift
      (lambda (_ctx142234_ _phi142235_)
        (letrec ((_make-phi142237_
                  (lambda (_super142287_)
                    (let ((__obj149414
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj149414
                       (gensym 'phi)
                       _super142287_)
                      __obj149414)))
                 (_make-phi/up142238_
                  (lambda (_ctx142282_ _super142283_)
                    (let ((_ctx+1142285_ (_make-phi142237_ _super142283_)))
                      (##unchecked-structure-set!
                       _ctx142282_
                       _ctx+1142285_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1142285_
                       _ctx142282_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1142285_)))
                 (_make-phi/down142239_
                  (lambda (_ctx142277_ _super142278_)
                    (let ((_ctx-1142280_ (_make-phi142237_ _super142278_)))
                      (##unchecked-structure-set!
                       _ctx-1142280_
                       _ctx142277_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx142277_
                       _ctx-1142280_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1142280_)))
                 (_shift142240_
                  (lambda (_ctx142261_
                           _delta142262_
                           _make-delta-context142263_
                           _phi142264_
                           _K142265_)
                    (let ((_$e142267_
                           (##unchecked-structure-ref
                            _ctx142261_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e142267_
                          ((lambda (_super142270_)
                             (let* ((_super142272_
                                     (_K142265_ _super142270_ _delta142262_))
                                    (_ctx+d142274_
                                     (_make-delta-context142263_
                                      _ctx142261_
                                      _super142272_)))
                               (_K142265_
                                _ctx+d142274_
                                (fx- _phi142264_ _delta142262_))))
                           _$e142267_)
                          (error '"Bad context" _ctx142261_))))))
          (let _K142242_ ((_ctx142244_ _ctx142234_) (_phi142245_ _phi142235_))
            (if (fxzero? _phi142245_)
                _ctx142244_
                (if (fx> (##vector-length _ctx142244_) '3)
                    (if (fxpositive? _phi142245_)
                        (let ((_$e142247_
                               (##unchecked-structure-ref
                                _ctx142244_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e142247_
                              ((lambda (_g142249142251_)
                                 (_K142242_
                                  _g142249142251_
                                  (fx- _phi142245_ '1)))
                               _$e142247_)
                              (_shift142240_
                               _ctx142244_
                               '1
                               _make-phi/up142238_
                               _phi142245_
                               _K142242_)))
                        (let ((_$e142254_
                               (##unchecked-structure-ref
                                _ctx142244_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e142254_
                              ((lambda (_g142256142258_)
                                 (_K142242_
                                  _g142256142258_
                                  (fx+ _phi142245_ '1)))
                               _$e142254_)
                              (_shift142240_
                               _ctx142244_
                               '-1
                               _make-phi/down142239_
                               _phi142245_
                               _K142242_))))
                    _ctx142244_))))))
    (define gx#core-context-get
      (lambda (_ctx142231_ _key142232_)
        (table-ref
         (##unchecked-structure-ref _ctx142231_ '2 gx#expander-context::t '#f)
         _key142232_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx142227_ _key142228_ _val142229_)
        (table-set!
         (##unchecked-structure-ref _ctx142227_ '2 gx#expander-context::t '#f)
         _key142228_
         _val142229_)))
    (define gx#core-context-resolve
      (lambda (_ctx142214_ _key142215_)
        (let _lp142217_ ((_ctx142219_ _ctx142214_))
          (let ((_$e142221_ (gx#core-context-get _ctx142219_ _key142215_)))
            (if _$e142221_
                (values _$e142221_)
                (let ((_$e142224_
                       (if (fx> (##vector-length _ctx142219_) '3)
                           (##unchecked-structure-ref
                            _ctx142219_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e142224_ (_lp142217_ _$e142224_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx142204_ _key142205_ _val142206_ _rebind142207_)
        (let ((_$e142209_ (gx#core-context-get _ctx142204_ _key142205_)))
          (if _$e142209_
              ((lambda (_xval142212_)
                 (gx#core-context-put!
                  _ctx142204_
                  _key142205_
                  (_rebind142207_ _xval142212_)))
               _$e142209_)
              (gx#core-context-put! _ctx142204_ _key142205_ _val142206_)))))
    (define gx#core-context-top__%
      (lambda (_ctx142182_ _stop?142183_)
        (let _lp142185_ ((_ctx142187_ _ctx142182_))
          (if (_stop?142183_ _ctx142187_)
              _ctx142187_
              (if (##structure-instance-of? _ctx142187_ 'gx#context-phi::t)
                  (_lp142185_
                   (##unchecked-structure-ref
                    _ctx142187_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx142193_ (gx#current-expander-context))
               (_stop?142195_ gx#top-context?))
          (gx#core-context-top__% _ctx142193_ _stop?142195_))))
    (define gx#core-context-top__1
      (lambda (_ctx142197_)
        (let ((_stop?142199_ gx#top-context?))
          (gx#core-context-top__% _ctx142197_ _stop?142199_))))
    (define gx#core-context-top
      (lambda _g149445_
        (let ((_g149444_ (##length _g149445_)))
          (cond ((##fx= _g149444_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g149445_))
                ((##fx= _g149444_ 1)
                 (apply (lambda (_ctx142197_)
                          (gx#core-context-top__1 _ctx142197_))
                        _g149445_))
                ((##fx= _g149444_ 2)
                 (apply (lambda (_ctx142201_ _stop?142202_)
                          (gx#core-context-top__% _ctx142201_ _stop?142202_))
                        _g149445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g149445_))))))
    (define gx#core-context-root__%
      (lambda (_ctx142167_)
        (let _lp142169_ ((_ctx142171_ _ctx142167_))
          (if (##structure-instance-of? _ctx142171_ 'gx#context-phi::t)
              (_lp142169_
               (##unchecked-structure-ref
                _ctx142171_
                '3
                gx#phi-context::t
                '#f))
              _ctx142171_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx142177_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx142177_))))
    (define gx#core-context-root
      (lambda _g149447_
        (let ((_g149446_ (##length _g149447_)))
          (cond ((##fx= _g149446_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g149447_))
                ((##fx= _g149446_ 1)
                 (apply (lambda (_ctx142179_)
                          (gx#core-context-root__% _ctx142179_))
                        _g149447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g149447_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx142148_ . __142145142149_)
        (let ((_$e142152_ (gx#current-expander-allow-rebind?)))
          (if _$e142152_
              _$e142152_
              (if (##structure-instance-of? _ctx142148_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx142148_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx142148_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx142159_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx142159_))))
    (define gx#core-context-rebind?
      (lambda _g149449_
        (let ((_g149448_ (##length _g149449_)))
          (cond ((##fx= _g149448_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g149449_))
                ((##fx= _g149448_ 1)
                 (apply (lambda (_ctx142161_)
                          (gx#core-context-rebind?__% _ctx142161_))
                        _g149449_))
                ((##fx>= _g149448_ 1)
                 (apply gx#core-context-rebind?__% _g149449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g149449_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx142131_)
        (let ((_$e142133_ (gx#core-context-top__1 _ctx142131_)))
          (if _$e142133_
              ((lambda (_ctx142136_)
                 (if (##structure-instance-of?
                      _ctx142136_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx142136_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e142133_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx142142_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx142142_))))
    (define gx#core-context-namespace
      (lambda _g149451_
        (let ((_g149450_ (##length _g149451_)))
          (cond ((##fx= _g149450_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g149451_))
                ((##fx= _g149450_ 1)
                 (apply (lambda (_ctx142144_)
                          (gx#core-context-namespace__% _ctx142144_))
                        _g149451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g149451_))))))
    (define gx#expander-binding?__%
      (lambda (_bind142117_ _is?142118_)
        (if (##structure-direct-instance-of?
             _bind142117_
             'gx#syntax-binding::t)
            (_is?142118_
             (##unchecked-structure-ref
              _bind142117_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind142123_)
        (let ((_is?142125_ gx#expander?))
          (gx#expander-binding?__% _bind142123_ _is?142125_))))
    (define gx#expander-binding?
      (lambda _g149453_
        (let ((_g149452_ (##length _g149453_)))
          (cond ((##fx= _g149452_ 1)
                 (apply (lambda (_bind142123_)
                          (gx#expander-binding?__0 _bind142123_))
                        _g149453_))
                ((##fx= _g149452_ 2)
                 (apply (lambda (_bind142127_ _is?142128_)
                          (gx#expander-binding?__% _bind142127_ _is?142128_))
                        _g149453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g149453_))))))
    (define gx#core-expander-binding?
      (lambda (_bind142114_)
        (gx#expander-binding?__% _bind142114_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind142112_)
        (gx#expander-binding?__% _bind142112_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind142106_)
        (letrec ((_direct-special-form?142108_
                  (lambda (_obj142110_)
                    (##structure-direct-instance-of?
                     _obj142110_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind142106_
           _direct-special-form?142108_))))
    (define gx#special-form-binding?
      (lambda (_bind142104_)
        (gx#expander-binding?__% _bind142104_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind142095_)
        (letrec ((_feature?142097_
                  (lambda (_e142099_)
                    (let ((_$e142101_
                           (##structure-instance-of?
                            _e142099_
                            'gx#feature-expander::t)))
                      (if _$e142101_
                          _$e142101_
                          (##structure-instance-of?
                           _e142099_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind142095_ _feature?142097_))))
    (define gx#private-feature-binding?
      (lambda (_bind142093_)
        (gx#expander-binding?__% _bind142093_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id142080_ _bound?142081_)
        (if (gx#identifier? _id142080_)
            (_bound?142081_ (gx#resolve-identifier__0 _id142080_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id142086_)
        (let ((_bound?142088_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id142086_ _bound?142088_))))
    (define gx#core-bound-identifier?
      (lambda _g149455_
        (let ((_g149454_ (##length _g149455_)))
          (cond ((##fx= _g149454_ 1)
                 (apply (lambda (_id142086_)
                          (gx#core-bound-identifier?__0 _id142086_))
                        _g149455_))
                ((##fx= _g149454_ 2)
                 (apply (lambda (_id142090_ _bound?142091_)
                          (gx#core-bound-identifier?__%
                           _id142090_
                           _bound?142091_))
                        _g149455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g149455_))))))
    (define gx#core-identifier=?
      (lambda (_x142070_ _y142071_)
        (letrec ((_y=?142073_
                  (lambda (_xid142077_)
                    ((if (list? _y142071_) memq eq?) _xid142077_ _y142071_))))
          (let ((_bind142075_ (gx#resolve-identifier__0 _x142070_)))
            (if (##structure-instance-of? _bind142075_ 'gx#binding::t)
                (_y=?142073_
                 (##unchecked-structure-ref _bind142075_ '1 gx#binding::t '#f))
                (_y=?142073_ (gx#stx-e _x142070_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e142068_)
        (if (interned-symbol? _e142068_)
            (string-index (symbol->string _e142068_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx142023_ _src142024_ _ctx142025_ _marks142026_)
        (if (##structure? _stx142023_)
            (let ((_$e142028_ (gx#sealed-syntax-unwrap _stx142023_)))
              (if _$e142028_
                  (values _$e142028_)
                  (if (gx#identifier? _stx142023_)
                      (let ((_id142031_
                             (gx#stx-unwrap__% _stx142023_ _marks142026_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id142031_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e142033_
                                (##unchecked-structure-ref
                                 _id142031_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e142033_ _$e142033_ _src142024_))
                         _ctx142025_
                         (##unchecked-structure-ref
                          _id142031_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx142023_)
                       (let ((_$e142036_ (gx#stx-source _stx142023_)))
                         (if _$e142036_ _$e142036_ _src142024_))
                       _ctx142025_
                       (reverse _marks142026_)))))
            (##structure
             gx#syntax-quote::t
             _stx142023_
             _src142024_
             _ctx142025_
             (reverse _marks142026_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx142042_)
        (let* ((_src142044_ '#f)
               (_ctx142046_ (gx#current-expander-context))
               (_marks142048_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142042_
           _src142044_
           _ctx142046_
           _marks142048_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx142050_ _src142051_)
        (let* ((_ctx142053_ (gx#current-expander-context))
               (_marks142055_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142050_
           _src142051_
           _ctx142053_
           _marks142055_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx142057_ _src142058_ _ctx142059_)
        (let ((_marks142061_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142057_
           _src142058_
           _ctx142059_
           _marks142061_))))
    (define gx#core-quote-syntax
      (lambda _g149457_
        (let ((_g149456_ (##length _g149457_)))
          (cond ((##fx= _g149456_ 1)
                 (apply (lambda (_stx142042_)
                          (gx#core-quote-syntax__0 _stx142042_))
                        _g149457_))
                ((##fx= _g149456_ 2)
                 (apply (lambda (_stx142050_ _src142051_)
                          (gx#core-quote-syntax__1 _stx142050_ _src142051_))
                        _g149457_))
                ((##fx= _g149456_ 3)
                 (apply (lambda (_stx142057_ _src142058_ _ctx142059_)
                          (gx#core-quote-syntax__2
                           _stx142057_
                           _src142058_
                           _ctx142059_))
                        _g149457_))
                ((##fx= _g149456_ 4)
                 (apply (lambda (_stx142063_
                                 _src142064_
                                 _ctx142065_
                                 _marks142066_)
                          (gx#core-quote-syntax__%
                           _stx142063_
                           _src142064_
                           _ctx142065_
                           _marks142066_))
                        _g149457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g149457_))))))
    (define gx#core-cons
      (lambda (_hd142019_ _tl142020_)
        (cons (gx#core-quote-syntax__0 _hd142019_) _tl142020_)))
    (define gx#core-list
      (lambda (_hd142016_ . _rest142017_)
        (cons (gx#core-quote-syntax__0 _hd142016_) _rest142017_)))
    (define gx#core-cons*
      (lambda (_hd142013_ . _rest142014_)
        (apply cons* (gx#core-quote-syntax__0 _hd142013_) _rest142014_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path141987_ _rel141988_)
        (let ((_path142000_ (gx#stx-e _stx-path141987_))
              (_reldir142001_
               (let _lp141990_ ((_relsrc141992_
                                 (let ((_$e141997_
                                        (gx#stx-source _stx-path141987_)))
                                   (if _$e141997_ _$e141997_ _rel141988_))))
                 (if (##structure-instance-of? _relsrc141992_ 'gerbil#AST::t)
                     (_lp141990_
                      (let ((_$e141994_ (gx#stx-source _relsrc141992_)))
                        (if _$e141994_ _$e141994_ (gx#stx-e _relsrc141992_))))
                     (if (source-location-path? _relsrc141992_)
                         (path-directory (source-location-path _relsrc141992_))
                         (if (string? _relsrc141992_)
                             (path-directory _relsrc141992_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path142000_ (path-normalize _reldir142001_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path142006_)
        (let ((_rel142008_ '#f))
          (gx#core-resolve-path__% _stx-path142006_ _rel142008_))))
    (define gx#core-resolve-path
      (lambda _g149459_
        (let ((_g149458_ (##length _g149459_)))
          (cond ((##fx= _g149458_ 1)
                 (apply (lambda (_stx-path142006_)
                          (gx#core-resolve-path__0 _stx-path142006_))
                        _g149459_))
                ((##fx= _g149458_ 2)
                 (apply (lambda (_stx-path142010_ _rel142011_)
                          (gx#core-resolve-path__%
                           _stx-path142010_
                           _rel142011_))
                        _g149459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g149459_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr141943_ _ctx141944_)
        (let* ((_repr141945141952_ _repr141943_)
               (_E141947141956_
                (lambda () (error '"No clause matching" _repr141945141952_)))
               (_K141948141964_
                (lambda (_subs141959_ _phi141960_)
                  (let ((_subst141962_
                         (if (not (null? _subs141959_))
                             (list->table _subs141959_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst141962_
                     _ctx141944_
                     _phi141960_
                     '#f)))))
          (if (##pair? _repr141945141952_)
              (let ((_hd141949141967_ (##car _repr141945141952_))
                    (_tl141950141969_ (##cdr _repr141945141952_)))
                (let* ((_phi141972_ _hd141949141967_)
                       (_subs141974_ _tl141950141969_))
                  (_K141948141964_ _subs141974_ _phi141972_)))
              (_E141947141956_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr141979_)
        (let ((_ctx141981_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr141979_ _ctx141981_))))
    (define gx#core-deserialize-mark
      (lambda _g149461_
        (let ((_g149460_ (##length _g149461_)))
          (cond ((##fx= _g149460_ 1)
                 (apply (lambda (_repr141979_)
                          (gx#core-deserialize-mark__0 _repr141979_))
                        _g149461_))
                ((##fx= _g149460_ 2)
                 (apply (lambda (_repr141983_ _ctx141984_)
                          (gx#core-deserialize-mark__%
                           _repr141983_
                           _ctx141984_))
                        _g149461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g149461_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx141940_)
        (gx#stx-rewrap _stx141940_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx141938_)
        (gx#stx-unwrap__% _stx141938_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx141908_)
        (let* ((_g141909141917_ (gx#current-expander-marks))
               (_else141911141925_ (lambda () _stx141908_))
               (_K141913141930_
                (lambda (_hd141928_)
                  (gx#stx-apply-mark _stx141908_ _hd141928_))))
          (if (##pair? _g141909141917_)
              (let* ((_hd141914141933_ (##car _g141909141917_))
                     (_hd141936_ _hd141914141933_))
                (_K141913141930_ _hd141936_))
              (_else141911141925_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx141893_ _E141894_)
        (let ((_bind141896_ (gx#resolve-identifier__0 _stx141893_)))
          (if (##structure-direct-instance-of?
               _bind141896_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind141896_
               '4
               gx#syntax-binding::t
               '#f)
              (_E141894_ _stx141893_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx141901_)
        (let ((_E141903_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx141901_ _E141903_))))
    (define gx#syntax-local-e
      (lambda _g149463_
        (let ((_g149462_ (##length _g149463_)))
          (cond ((##fx= _g149462_ 1)
                 (apply (lambda (_stx141901_)
                          (gx#syntax-local-e__0 _stx141901_))
                        _g149463_))
                ((##fx= _g149462_ 2)
                 (apply (lambda (_stx141905_ _E141906_)
                          (gx#syntax-local-e__% _stx141905_ _E141906_))
                        _g149463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g149463_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx141877_ _E141878_)
        (let ((_e141880_ (gx#syntax-local-e__% _stx141877_ _E141878_)))
          (if (##structure-instance-of? _e141880_ 'gx#expander::t)
              (##structure-ref _e141880_ '1 gx#expander::t '#f)
              _e141880_))))
    (define gx#syntax-local-value__0
      (lambda (_stx141885_)
        (let ((_E141887_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx141885_ _E141887_))))
    (define gx#syntax-local-value
      (lambda _g149465_
        (let ((_g149464_ (##length _g149465_)))
          (cond ((##fx= _g149464_ 1)
                 (apply (lambda (_stx141885_)
                          (gx#syntax-local-value__0 _stx141885_))
                        _g149465_))
                ((##fx= _g149464_ 2)
                 (apply (lambda (_stx141889_ _E141890_)
                          (gx#syntax-local-value__% _stx141889_ _E141890_))
                        _g149465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g149465_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx141874_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx141874_)))))
